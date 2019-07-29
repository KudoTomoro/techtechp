function confirm_inquiry_mail() {
    var company 		  = document.getElementById("company").value;
    var name    		  = document.getElementById("name").value;
    var tel     		  = document.getElementById("tel").value.replace(/\D/g, '');
    var mail    		  = document.getElementById("mail").value;
    var confirmation_mail = document.getElementById("confirmation_mail").value;
    var subject           = document.getElementById("subject").value;
    var message           = document.getElementById("message").value;
    if (name == "" || tel == "" || mail == "" || confirmation_mail == "" || subject == "" || message == ""){
        window.alert("入力されていない項目があります。");
    }else if(mail != confirmation_mail){
        window.alert("メールアドレスをもう一度ご確認ください");
    }else if(tel.charAt(0) != "0" || !(tel.length == 10 || tel.length == 11) ){
        window.alert("電話番号をもう一度ご確認のください");
    }
    else{
        if( window.confirm("会社名 : " + company + "\n名前 : "+ name + "\n電話番号 : "+ tel + "\nメールアドレス : "+ mail +
            "\n件名 : "+ subject + "\n本文 : "+ message )
        ) {
            document.getElementById("submit").click();
            window.confirm("この度はお問い合わせいただきありがとうございました。\n担当者より、2,3営業日以内にご返信させていただきます。\n\nなお、万が一返信が届かない場合は、大変お手数ですが再度お問い合わせいただきますようお願い申し上げます。\n\n株式会社techtec\n問い合わせ窓口担当")
        }
    }
}

function recaptcha(response) {
    if(response !== ""){
        document.getElementById("confirmation_button").disabled = "";
    }
}
