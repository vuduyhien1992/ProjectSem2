<script>
    $(document).ready(function() {
        @if (!Auth::check() || Auth::user()->admin != '2')
            $('.btn_showcart').click(function() {
                $.get(window.location.origin + "/ProjectSem2/public/ajax/cart/listcart", function(
                data) {
                    $('#listCartmodal').html(data);
                    $('input[name=_token]').val($('meta[name="csrf-token"]').attr('content'));
                    $('.btn_minus').click(function(e) {
                        e.preventDefault();
                        let current = parseInt($(this).next().val());
                        if (current > 1) {
                            current--;
                            $(this).next().val(current);
                        }
                        $(this).parent().next().removeClass('d-none');
                    });
                    $('.btn_plus').click(function(e) {
                        e.preventDefault();
                        let max = parseInt($('#quantityModal').text()) ? parseInt($(
                            '#quantityModal').text()) : parseInt($(this).parent()
                            .parent().prev().val());
                        console.log(max);
                        let current = parseInt($(this).prev().val());
                        if (max > current) {
                            current++;
                            $(this).prev().val(current);
                        }
                        $(this).parent().next().removeClass('d-none');
                    });
                })
            });
        @endif
        @if (Session::has('verified'))
            let toastverify = new bootstrap.Toast($('#toastVerified'))
            toastverify.show();
        @endif
        @if (Session::has('order_mess') || Session::has('paypal_success'))
            $('#order_message').html("Order successful! We will delivery your order soon.");
            let toastorder = new bootstrap.Toast($('#toastOrder'))
            toastorder.show();
        @endif
        @if (Session::has('feedback_mess'))
            let toastfeedback = new bootstrap.Toast($('#toastFeedback'))
            toastfeedback.show();
        @endif
        const valiquan_cart = (value) => {
            let validateNum = /^\d{1,10}$/;
            let currentVl = $(this).val();
            $(this).val(validateNum.test(currentVl) ? currentVl : value);
        }
        $('.btn_modal').click(function() {
            $.get(window.location.origin + "/ProjectSem2/public/ajax/modal/show-product/" + $(this)
                .data('product'),
                function(data) {
                    let dataProduct = jQuery.parseJSON(data);
                    let listImage = "";
                    let slider_product = "";
                    dataProduct['images'].forEach(img => {
                        slider_product +=
                            `<div class="zoom slider_item" onmousemove="zoom(event)" style="background-image: url('images/products/${img}');object-fit:contain;background-repeat: no-repeat"><image src='images/products/${img}' class='img-fluid'></div>`;
                        listImage +=
                            "<div class='col-3'><div class='thumbnails-img'><img src='images/products/" +
                            img + "'></div></div>";
                    });
                    $('#moveProductDetail').attr('href', dataProduct['link']);
                    $("#productModal").html(slider_product);
                    $('#productModalThumbnails').html(listImage);
                    $('#productNameModal').html(dataProduct['name']);
                    $('input[name=max_quan]').val(dataProduct['quantity']);
                    let strStart = "";
                    for (let i = 0; i < Math.floor(dataProduct['rating']); i++) {
                        strStart += "<i class='bi bi-star-fill'></i>"
                    }

                    if (parseInt(dataProduct['rating']) % 1 !== 0) {
                        strStart += "<i class='bi bi-star-half'></i>";
                    }
                    for (let j = 0; j < 5 - Math.ceil(dataProduct['rating']); j++) {
                        strStart += "<i class='bi bi-star'></i>";
                    }
                    strStart +=
                        `<span class='ms-3 text-muted'>(${dataProduct["sold"]} solds)</span>`;
                    $('#modal_Fav').attr("data-bs-idproduct", dataProduct['id_product']);
                    if (dataProduct["favourite"]) {
                        $('#modal_Fav').html("<i class='bi bi-heart-fill text-danger'></i>")
                    } else {
                        $('#modal_Fav').html("<i class='bi bi-heart'></i>")
                    }
                    $('#ratingModal').html(strStart);
                    $('#soldModal').html(`(${dataProduct["sold"]} solds)`);
                    if (parseInt(dataProduct["sale"]) > 0) {
                        $('.hasSale').removeClass('d-none');
                        $('#priceModal').html(`${dataProduct["price"]} đ/kg`);
                        $('#saleModal').html(`${dataProduct["sale"]}% Off`);
                        $('#priceAFSModal').html(
                            `${(parseInt(dataProduct["price"])*(1-dataProduct["sale"]/100))} đ/kg`
                            )
                    } else {
                        $('.hasSale').addClass('d-none');
                        $('#priceAFSModal').html(`${dataProduct["price"]} đ/kg`);
                    };
                    $('#quantityModal').html(Math.floor(dataProduct["quantity"]));
                    $('#idModal').html(dataProduct['id_product']);
                    $('input[name=id_pro]').val(dataProduct['id_product']);
                    $('.typeModal').html(dataProduct['type']);
                    let slider = tns({
                        container: '.slider_modalproduct',
                        items: 1,
                        speed: 500,
                        autoplay: true,
                        axis: "horizontal",
                        autoplayButtonOutput: 0,
                        controls: 0,
                        navContainer: '.slider_modalnav',
                        navAsThumbnails: true
                    });
                    $("#compare_product2").click(function() {
                        if ($('#btn-compare').hasClass('d-none')) {
                            $('#btn-compare').removeClass('d-none');
                        }
                        $.get(window.location.origin +
                            "/ProjectSem2/public/ajax/add-compare/" + dataProduct[
                                'id_product'],
                            function(data) {
                                $('#messCompare').html(data);
                            })
                        const toast = new bootstrap.Toast($('#toastCompare'))
                        toast.show();
                    })
                });
        });
        $('.compare_product').click(function() {
            if ($('#btn-compare').hasClass('d-none')) {
                $('#btn-compare').removeClass('d-none');
            }
            $.get(window.location.origin + "/ProjectSem2/public/ajax/add-compare/" + $(this).data(
                'bsProduct'), function(data) {
                $('#messCompare').html(data);
            })
            const toast = new bootstrap.Toast($('#toastCompare'))
            toast.show();
        });
        $('#show_compare').click(function() {
            $.get(window.location.origin + "/ProjectSem2/public/ajax/compare/showcompare", function(
                data) {
                $('#compare_detail').html(data);
            })
        });
        $('.addFav').click(function() {
            $(this).children().toggleClass('bi-heart').toggleClass('bi-heart-fill text-danger');
            $.get(window.location.origin + '/ProjectSem2/public/ajax/add-favourite/' + $(this).data(
                'bsIdproduct'), function(data) {
                $('.countFav').html(data);
            })
        });
        $('.addToCart').click(function() {
            @if (!Auth::check() || Auth::user()->admin == '0')
                const toast = new bootstrap.Toast($('#toastAdd'))
                toast.show();
            @else
                let toastorder = new bootstrap.Toast($('#toastWarning'))
                toastorder.show();
            @endif
            $.get(window.location.origin + "/ProjectSem2/public/ajax/add-cart/" + $(this).data('bsId'),
                function(data) {
                    $('.countCart').html(data);
                });
        });
        $('.btn_minus').click(function(e) {
            e.preventDefault();
            let current = parseInt($(this).next().val());
            if (current > 1) {
                current--;
                $(this).next().val(current);
            }
        });
        $('.btn_plus').click(function(e) {
            e.preventDefault();
            let max = parseInt($('#quantityModal').text()) ? parseInt($('#quantityModal').text()) :
                parseInt($(this).parent().parent().prev().val());
            console.log(max);
            let current = parseInt($(this).prev().val());
            if (max > current) {
                current++;
                $(this).prev().val(current);
            }
        });

        $('input[name=quan]').on('focusout', function(e) {
            e.preventDefault();
            let validateNum = /^\d{1,10}$/;
            let currentVl = $(this).val();
            $(this).val(validateNum.test(currentVl) ? currentVl : 100);
        });
        $('input[name=cart_quant]').on('focusout', function(e) {
            e.preventDefault();
            let validateNum = /^\d{1,10}$/;
            let currentVl = $(this).val();
            $(this).val(validateNum.test(currentVl) ? currentVl : 100);
        });
        $('#modal_password, #modal_email').change(function() {
            if ($('#modal_password').val().length > 0 && $('#modal_email').val().length > 0) {
                $('#modal_signin').removeAttr('disabled');
            } else {
                $('#modal_signin').attr('disabled', 'disabled');
            }
        })
        $('.remove_add').click(function() {
            $.get(window.location.origin + "/ProjectSem2/public/ajax/remove_address/" + $(this).data(
                'idadd'), function(data) {
                $("#listAddress").html(data);
            });
        })
        const host = "https://vapi.vnappmob.com";
        const getProvince = host + "/api/province/";
        $.getJSON(getProvince, function(data) {
            $('#province').append("<option selected>--Choose 1 province--</option>");
            $.each(data.results, function(key, value) {
                $('#province').append(
                    `<option value='${value.province_id}'>${value.province_name}</option>`);
            });
        });
        $('#province').click(function() {
            $.getJSON(getProvince, function(data) {
                $.each(data.results, function(key, value) {
                    $('#province').append(
                        `<option value='${value.province_id}'>${value.province_name}</option>`
                        );
                });
            });
        })
        $('#province').change(function async (e) {
            e.preventDefault();

            if ($(this).val() != 79) {
                $('#shipment_fee').val(30000);
                @if (!Auth::check())
                    $('#extra_ship').removeClass('d-none');
                    let totall = parseInt($("#total").data('total')) + 30000;
                    $("input[name=shipment_fee]").val(30000);
                    $('#total').html(totall + ' đ');
                    $(".totalPay").text((totall * 0.000043).toFixed(2));
                @endif
            } else {
                @if (!Auth::check())
                    $('#extra_ship').addClass('d-none');
                    $('#total').html((parseInt($("#total").data('total')) + 20000) + " đ");
                    $(".totalPay").text(
                        ((parseInt($("#total").data('total')) + 20000) * 0.000043).toFixed(2)
                    );
                    $("input[name=shipment_fee]").val(20000);
                @endif
            }
            let getDistric = host + "/api/province/district/" + $(this).val();
            $('#district').removeAttr('disabled');
            let str = "<option selected>--Choose 1 district--</option>";
            $.getJSON(getDistric, function(data) {
                $.each(data.results, function(key, value) {
                    str +=
                        `<option value=${value.district_id}>${value.district_name}</option>`;
                })
                $('#district').html(str);
            });
        });
        $('#district').change(function(e) {
            e.preventDefault();
            $('#ward').removeAttr('disabled');
            $('#province option:selected').val($('#province option:selected').text());
            let str = '<option selected>--Choose 1 ward--</option>';
            let getWard = host + "/api/province/ward/" + $(this).val();
            $.getJSON(getWard, function(data) {
                $.each(data.results, function(key, value) {
                    str += `<option value=${value.ward_id}>${value.ward_name}</option>`;
                });
                $('#ward').html(str);
            });
        });
        $('#ward').change(function(e) {
            e.preventDefault();
            $('#province option:selected').val($('#province option:selected').text());
            $('#district option:selected').val($('#district option:selected').text());
            $('#ward option:selected').val($('#ward option:selected').text());
            if ($('input[name="nameReciever"]').val().trim().length > 0 && $(
                    'input[name="emailReciever"]').val().trim().length > 0 && $(
                    'input[name="phoneReciever"]').val().trim().length > 0 && $('#ward').val() && (($(
                        '#paypal').is(':checked') && $('#paypal_btn').data('success') == "success") ||
                    $("#cashonDelivery").is(':checked'))) {
                $('#submit_order').removeAttr('disabled');
            } else {
                $("#submit_order").attr('disabled', 'disabled');
            };
        })
        let valPass = /^(?=.*\d)(?=.*[a-z]).{8,}$/;
        let valiPhone1 = /^[0-9]{9,11}$/;
        let valiPhone = /^\(?\+84\)? ?-?[0-9]{1,3} ?-?[0-9]{3,5} ?-?[0-9]{4}( ?-?[0-9]{3})?$/;
        let valiEmail = /^[a-z0-9](\.?[a-z0-9]){5,}@gmail\.com$/;
        $('input[name=phoneReciever]').focusout(function(e) {
            e.preventDefault();
            if (!valiPhone.test($(this).val())) {
                $('#valiPhone').text("Invail Phone. Try again");
                $('#next').attr('disabled', 'disabled');
                $(this).addClass('is-invalid');
            } else {
                $(this).removeClass('is-invalid');
                $('#valiPhone').text('');
            }
        });
        $("input[name='nameReciever']").focusout(function(e) {
            e.preventDefault();
            if ($(this).val().trim().length == 0) {
                $('#valiName').text("Please add name for order");
                $('#next').attr('disabled', 'disabled');
                $(this).addClass('is-invalid');
            } else {
                $(this).removeClass('is-invalid');
                $('#valiName').text('');
            }
        });
        $('input[name=emailReciever]').focusout(function(e) {
            e.preventDefault();
            if (!valiEmail.test($(this).val())) {
                $('#valiEmail').text("Invaild Email. Try again");
                $('#next').attr('disabled', 'disabled');
                $(this).addClass('is-invalid');
            } else {
                $(this).removeClass('is-invalid');
                $('#valiEmail').text('');
            };
        });
        $('input[name="nameReciever"],input[name="phoneReciever"],input[name="emailReciever"]').on('blur',
            function(e) {
                e.preventDefault();
                if ($('input[name="nameReciever"]').val().trim().length > 0 && $(
                        'input[name="emailReciever"]').val().trim().length > 0 && $(
                        'input[name="phoneReciever"]').val().trim().length > 0) {
                    $("#sendAddress").removeAttr('disabled');
                    if ($('#ward').val()) {
                        $('#submit_order').removeAttr('disabled');
                    }
                } else {
                    $("#sendAddress").attr('disabled', 'disabled');
                    $("#submit_order").attr('disabled', 'disabled');
                };
            });
        $('#sendAddress').click(function() {
            $('#province option:selected').val($('#province option:selected').text());
            $('#district option:selected').val($('#district option:selected').text());
            $('#ward option:selected').val($('#ward option:selected').text());
        })
        $("input[name=order_method]").change(function() {
            if ((($('input[name="nameReciever"]').val().trim().length > 0 && $(
                    'input[name="emailReciever"]').val().trim().length > 0 && $(
                    'input[name="phoneReciever"]').val().trim().length > 0) || ($(
                    'input[name=select_address]:checked').val())) && (($('#paypal').is(':checked') && $(
                    '#paypal_btn').data('success') == "success") || $("#cashonDelivery").is(
                    ':checked'))) {
                $('#submit_order').removeAttr('disabled');
            } else {
                $("#submit_order").attr('disabled', 'disabled');
            };
        })
        $('input[name=register_email]').change(function() {
            if (!valiEmail.test($(this).val())) {
                $('#register_email').text("Invaild Email. Try again");
                $('#register_submit').attr('disabled', 'disabled');
                if ($(this).hasClass('is-valid')) {
                    $(this).removeClass('is-valid');
                }
                $(this).addClass('is-invalid');
            } else {
                $.get(window.location.origin + '/ProjectSem2/public/ajax/check-email/' + $(this).val(),
                    function(data) {
                        if (data == "existed") {
                            $('input[name=register_email]').addClass('is-invalid');
                            $('#register_email').text(
                                'This email has signed. Choose another one or signin');
                        } else {
                            if ($('input[name=register_email]').hasClass('is-invalid')) {
                                $('input[name=register_email]').removeClass('is-invalid');
                            }
                            $('input[name=register_email]').addClass('is-valid');
                            $('#register_email').text('');
                        }
                    });
            };
        });
        $('input[name=register_phone]').change(function() {
            if (!valiPhone.test($(this).val())) {
                if ($("#register_phone").hasClass('text-success')) {
                    $("#register_phone").removeClass('text-success');
                    $("#register_phone").addClass('text-danger');
                }
                $('#register_phone').text("Invaild Phone. EX: +84123456789");
                $('#register_submit').attr('disabled', 'disabled');
                if ($(this).hasClass('is-valid')) {
                    $(this).removeClass('is-valid');
                }
                $(this).addClass('is-invalid');
            } else {
                if ($(this).hasClass("is-invalid")) {
                    $(this).removeClass('is-invalid');
                }
                $(this).addClass('is-valid');
                $('#register_phone').text('');
            };
        });
        $('input[name=register_password]').change(function() {
            if (!valPass.test($(this).val())) {
                $('#register_password').text(
                    "Password is invalid. >= 8 characters, at least 1 normal, at least 1 number)");
                $('#register_submit').attr('disabled', 'disabled');
            } else {
                $('#register_password').text('');
            };
        });
        $('input[name=register_name], input[name=register_phone], input[name=register_email], input[name=register_password], input[name=accepted]')
            .change(function() {
                if ($('input[name=register_name]').val().length > 0 && $('input[name=register_phone]').val()
                    .length > 0 && $('input[name=register_email]').val().length > 0 && $(
                        'input[name=register_password]').val().length > 0 && $('#accepted').is(':checked')
                    ) {
                    $('#register_submit').removeAttr('disabled');
                } else {
                    $('#register_submit').attr('disabled', 'disabled');
                }
            });
        $(".modal_coupon").click(function() {
            $.get(window.location.origin + "/ProjectSem2/public/ajax/show_coupon/" + $(this).data(
                'coupon'), function(data) {
                let coupon_data = jQuery.parseJSON(data);
                $('#coupon_title_modal').html(coupon_data['title']);
                $('#max_coupon').html(coupon_data['max']);
                $('#code_coupon_modal').val(coupon_data['code']);
                $("#coupon_clipboard").click(function() {
                    navigator.clipboard.writeText($('#code_coupon_modal').val());
                    $('#coupon_clipboard').html(
                        "<i class='bi bi-clipboard-check-fill'></i>");
                })
            })
        })
        $(".manager_notificate").click(function() {
            $.get(window.location.origin + "/ProjectSem2/public/manager/ajax/check-notificate/" + $(
                this).data('order'), function(data) {
                let dataJson = jQuery.parseJSON(data);
                // console.log(dataJson);
                $('input[name=id_notificate]').val(dataJson['news']);
                $("#receiver2").html(dataJson['receiver']);
                $("#address2").html(dataJson['address']);
                $('#instruction2').html(dataJson['instruction']);
                $("#phone2").html(dataJson['phone']);
                $('#email_order2').html(dataJson['email']);
                $("#payment_method2").html(dataJson['method']);
                if (dataJson['coupon']) {
                    $("#coupon_title2").html(dataJson['coupon_title']);
                    if (dataJson['discount'] <= 100) {
                        $('#discount2').html("- " + dataJson['discount'] + "%");
                    } else {
                        $('#discount2').html("- " + dataJson['discount'] + " đ");
                    }
                }
                let list = "";
                let total = 0;
                for (let i = 0; i < dataJson['cart'].length; i++) {
                    list +=
                        `<tr><td>${i+1}</td><td><img class='icon-shape icon-xl' src='images/products/${dataJson['image'][i]}'><br>${dataJson['product'][i]}</td><td>${dataJson['cart'][i]['price']} đ</td><td>${dataJson['cart'][i]['sale']}%</td><td>${dataJson["cart"][i]['amount']}g</td></tr>`;
                    total += parseInt(dataJson['cart'][i]['sale']) > 0 ? (parseInt(dataJson[
                            'cart'][i]['price']) * (1 - parseInt(dataJson['cart'][i][
                            'sale']) / 100)) * (parseInt(dataJson['cart'][i]['amount']) /
                        1000) : parseInt(dataJson['cart'][i]['price']) * (parseInt(dataJson[
                            'cart'][i]['amount']) / 1000);
                };
                $('#listCart2').html(list);
                $("#item_subtotal2").html(total + " đ");
                $('#shipment_fee_modal2').html(dataJson['shipping_fee'] + " đ");
                if (parseInt(dataJson['discount']) > 100) {
                    total -= parseInt(dataJson['discount']);
                } else {
                    total *= (1 - parseInt(dataJson['discount']) / 100);
                }
                total += parseInt(dataJson['shipping_fee']);
                $('#total_order2').html(total + " đ");
                $("#status_order2").html(dataJson['status']);
            })
        })
        $('.check_order').click(function() {
            $.get(window.location.origin + "/ProjectSem2/public/manager/ajax/check-order/" + $(this)
                .data('order'),
                function(data) {
                    let dataJson = jQuery.parseJSON(data);
                    $('input[name=id_order]').val(dataJson['id_order']);
                    $("#receiver").html(dataJson['receiver']);
                    $("#address").html(dataJson['address']);
                    $('#instruction').html(dataJson['instruction']);
                    $("#phone").html(dataJson['phone']);
                    $('#email_order').html(dataJson['email']);
                    $("#payment_method").html(dataJson['method']);
                    if (dataJson['coupon']) {
                        $("#coupon_title").html(dataJson['coupon_title']);
                        if (dataJson['discount'] <= 100) {
                            $('#discount').html("- " + dataJson['discount'] + "%");
                        } else {
                            $('#discount').html("- " + dataJson['discount'] + " đ");
                        }
                    }
                    let list = "";
                    let total = 0;
                    for (let i = 0; i < dataJson['cart'].length; i++) {
                        list +=
                            `<tr><td>${i+1}</td><td><img class='icon-shape icon-xl' src='images/products/${dataJson['image'][i]}'></td><td>${dataJson['product'][i]}</td><td>${dataJson['cart'][i]['price']} đ</td><td>${dataJson['cart'][i]['sale']}%</td><td>${dataJson["cart"][i]['amount']}g</td></tr>`;
                        total += parseInt(dataJson['cart'][i]['sale']) > 0 ? (parseInt(dataJson[
                                'cart'][i]['price']) * (1 - parseInt(dataJson['cart'][i][
                                'sale']) / 100)) * (parseInt(dataJson['cart'][i]['amount']) /
                            1000) : parseInt(dataJson['cart'][i]['price']) * (parseInt(dataJson[
                                'cart'][i]['amount']) / 1000);
                    };
                    $('#listCart').html(list);
                    $("#item_subtotal").html(total + " đ");
                    $('#shipment_fee_modal').html(dataJson['shipping_fee'] + " đ");
                    if (parseInt(dataJson['discount']) > 100) {
                        total -= parseInt(dataJson['discount']);
                    } else {
                        total *= (1 - parseInt(dataJson['discount']) / 100);
                    }
                    total += parseInt(dataJson['shipping_fee']);
                    $('#total_order').html(total + " đ");
                    $("#status_order option[value=" + dataJson['status'] + "]").attr("selected",
                        true);
                    if (dataJson['status'] == 'unconfirmed') {
                        $("#status_order option[value='unconfirmed']").removeAttr('disabled');
                        $("#status_order option[value='transaction failed']").attr('disabled',
                            'disabled');
                        $("#status_order option[value='finished']").attr('disabled', 'disabled');
                    } else if (dataJson['status'] == "delivery") {
                        $("#status_order option[value='finished']").removeAttr('disabled');
                        $("#status_order option[value='transaction failed']").removeAttr(
                        'disabled');
                        $("#status_order option[value='unconfirmed']").attr('disabled', 'disabled');
                        $("#status_order option[value='confirmed']").attr('disabled', 'disabled');
                    } else {
                        $("#status_order option[value='unconfirmed']").attr('disabled', 'disabled');
                        $("#status_order option[value='confirmed']").removeAttr('disabled');
                        $("#status_order option[value='transaction failed']").attr('disabled',
                            'disabled');
                        $("#status_order option[value='finished']").attr('disabled', 'disabled');
                    }
                    $('#order_token').val($('meta[name="csrf-token"]').attr('content'));
                    $('#status_order').change(function() {
                        $('#save_order').removeAttr('disabled');
                    })
                })
        })
        $(".denied_order").click(function() {
            $.ajax({
                method: "POST",
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: window.location.origin + '/ProjectSem2/public/ajax/denied-order',
                data: {
                    'id_order': $(this).data('order')
                },
                success: function(data) {
                    if (data == 0) {
                        $('#show_acceptorder').css('display', 'none')
                    }
                }
            });
        })
        $(".accept_order").click(function() {
            $.ajax({
                method: "POST",
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: window.location.origin + '/ProjectSem2/public/ajax/accept-order',
                data: {
                    'id_order': $(this).data('order')
                },
                success: function(data) {
                    if (data == 0) {
                        $('#show_acceptorder').css('display', 'none')
                    }
                }
            });
        });
        $('#btn_close').click(function() {
            $('#chatbox').toggleClass('d-none');
        })
        $('.show_chat').click(function() {
            $('#chatbox').removeClass('d-none');
            $('#messages').data('chat', $(this).data('groupcode'));
            $('#messages').data('iduser', $(this).data('iduser'));
            $.ajax({
                method: "GET",
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: window.location.origin + '/ProjectSem2/public/ajax/message/show',
                data: {
                    'codegroup': $(this).data('groupcode'),
                    'id_user': $(this).data('iduser')
                },
                success: function(data) {
                    let data_mess = data.split(',');
                    // console.log(data_mess);
                    $('#messages').html(data_mess[0]);
                    $('#usr_contact').html(data_mess[0] ? data_mess[1] : '');
                    $('.list_mess').find('span').html(data_mess[2]);
                }
            })
        });
        $('.list_mess').click(function() {
            if (!$('#chatbox').hasClass('d-none')) {
                $('#chatbox').addClass('d-none');
            }
        })
        $('.button-submit').click(function() {
            let message = $(this).siblings('input[name="send_message"]');
            let chatbox = $(this).parents('.input_message').prev();
            console.log(badge_mess);
            if (message.val().length > 0) {
                $.ajax({
                    method: "POST",
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url: window.location.origin + '/ProjectSem2/public/ajax-post/message',
                    data: {
                        'send_message': message.val(),
                        'code_group': chatbox.data('chat'),
                        'connect_user': chatbox.data('iduser')
                    },
                    success: function(data) {
                        let mess_data = jQuery.parseJSON(data);
                        if (mess_data['message']) {
                            chatbox.append(`<div class="d-flex flex-row mb-4 mx-3"><div class="ms-auto">
                    <div class="text-wrap rounded-1 py-1 px-2 bg-light">
                      ${mess_data['message']}
                    </div>
                  </div>
                </div>`);
                        }
                        $('.list_mess').find('span').html(mess_data['unread_mess']);
                    }
                });
                message.val('');
            };
        });
        $('.show_listchat').click(function() {
            let nextDD = $(this).next();
            $('.chatbox').not(nextDD).removeClass('show');
        })

        function split(val) {
            return val.split(/@\s*/);
        }

        function extractLast(term) {
            return split(term).pop();
        }
        let availableTags = [];
        @if (isset($name_products))
            @foreach ($name_products as $key => $value)
                var object = new Object();
                @foreach ($value as $key2 => $value2)
                    object['{{ $key2 }}'] = "{{ $value2 }}";
                @endforeach
                availableTags.push(object);
            @endforeach
        @endif
        $("input[name=send_message]").autocomplete({
            minLength: 0,
            source: function(request, response) {
                var results, term = request.term;
                var aData = $.map(availableTags, function(value, key) {
                    return {
                        label: value.name,
                        value: value.id
                    }
                });
                if (term.indexOf("@") >= 0) {
                    term = extractLast(request.term);
                    /* If they've typed anything after the "@": */
                    if (term.length > 0) {
                        results = $.ui.autocomplete.filter(
                            aData, term);
                        /* Otherwise, tell them to start typing! */
                    } else {
                        results = ['Start typing...'];
                    }
                }
                /* Call the callback with the results: */
                response(results);
            },
            focus: function(event, ui) {
                // $('input[name=send_message]').val(ui.item.name);
                // prevent value inserted on focus
                return false;
            },
            select: function(event, ui) {
                let chatbox = $(this).parents('.input_message').prev();
                $.ajax({
                    method: "POST",
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    url: window.location.origin + '/ProjectSem2/public/ajax-post/message',
                    data: {
                        'send_link': ui.item.value,
                        'code_group': chatbox.data('chat'),
                        'connect_user': chatbox.data('iduser')
                    },
                    success: function(data) {
                        let mess_data = jQuery.parseJSON(data);
                        if (mess_data['link']) {
                            let share = `<div class='row mb-4 mx-3'><div class='col-2 '></div><div class="col-10  rounded-1 border py-1 px-2 "><div class='card my-3'><a href='${mess_data['share_link']}'>
                  <div class='row g-0'>
                    <div class='col-4'>
                      <img src='${mess_data['image']}' class='img-fluid rounded-start' >
                    </div>
                  <div class='col-8'>
                    <div class='card-body'>
                    <h5 class='card-title text-uppercase'>${mess_data['name_product']}</h5>
                    <p class="card-text">View >> </p>
                  </div></div></div></a></div></div>`;
                            chatbox.append(share);
                        };
                        $('.list_mess').find('span').html(mess_data['unread_mess']);
                    }
                });
                $("input[name=send_message]").val('');
                return false;
            }
        })
    })
</script>
