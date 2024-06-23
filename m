Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34495C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 05:35:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Subject:References:In-Reply-To:Message-ID:Date:CC:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7XyOi0zOD0wzNao9tQASF+q6Rg5o664WReU7lYDz1fA=; b=wOLBeCWZvnAg4ct4DVe5EvFjqA
	8YI8ij9Cl7fWTxpQknWDhXxzkVKJxblpk3kJ0PEJ/9NDT4DNbOPH39uFKN8M0ucy0kdp7ShAx+Cn2
	f//NlsDCEVkLTlcIBIFyP1ZFsdULVu7ffn7xKzE7LXILvJ/AmfDMsLnQ3JbYKXYo0hYsonqPSPfgt
	ZZHWQ6pQixXJzCzQbdQ5AJ9kxoauGTfSLFpWY57/ea1t3sADRLnghdL3/Dkpmo7mO4YWybgMItKRG
	yNIPdkZ+TymA1BkfNjgGr15KIePxCfe7XuAI0fBIWrxvmXZebD2B2fjdcf2P70eWeGUmD9eleyeEB
	HAUYoj5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLFsN-0000000DO5K-2sjE;
	Sun, 23 Jun 2024 05:34:55 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLFsK-0000000DO4H-1MLD
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 05:34:54 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a6fe81a5838so73549066b.3
        for <linux-rockchip@lists.infradead.org>; Sat, 22 Jun 2024 22:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1719120889; x=1719725689; darn=lists.infradead.org;
        h=mime-version:subject:user-agent:references:in-reply-to:message-id
         :date:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QkGdLSZ9u7dEW6nuYMek5+HcSlNPf1RzElpH3hhpcbc=;
        b=DI3/HDbzvVODGu60JbDgzjpvYJ7wOx0Lhomhh7f8MQv3LAFcwFpW7mKmougV0BwBQf
         JtTgKeptSZg2d5ix2vppyO8nZVGDYT9dIGhFYSYn1a53GqxW++0mWUnaEnmWcV7ZvBjf
         Oc1xc/rmBepcgvOeOLF5b5zBYuz54K7cBfK+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719120889; x=1719725689;
        h=mime-version:subject:user-agent:references:in-reply-to:message-id
         :date:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QkGdLSZ9u7dEW6nuYMek5+HcSlNPf1RzElpH3hhpcbc=;
        b=Nh8p5l+WCOz8e8A1OtFF8uCPCae42IsKZ93sh5BBaStv32AgnPw6aq3Ger6DSaPBt6
         s0D4cxL/ICVaYnuKFR3wT5GnEc5srC/UKilS877SUcmz52sWEhTsNtUqEDODbEecgXPU
         sM83y+DxEHQV6ceYHhy/zdGFxGK9pfcYwUuHhXtBSOSTxclvfi7ZJs1D1cXRw19c2beK
         Zl2gAZr5IuU6zDgUdlRmykZ2FNlhmPSTCQmD+LfOAxW5oTZVhTDWW/wb1ES7L48sUrDl
         +voeq16fj/M6iC+YGkaNG+kj1vO+YZYU4kFBAf/175B2Q0TlRB+txQWo5wlXUbjIdqrq
         8yXg==
X-Forwarded-Encrypted: i=1; AJvYcCUwak85OG/1/XlTnPMdtF5cYbpaD1DhAiSfKXe9pkkjPeGzwJQYWP07sVR5m5c0789YhqlrF7BeJx4CKV+y7Mv02ruESEdVe90nL7s4kqZOL7RD
X-Gm-Message-State: AOJu0Yx3snjG68xkPh2FxBVSh0Y++OPN5RQGHTz2yTS0AhEmnw2occNB
	b3TfnHmOvGIgsadQmcccCQfHeyKas3z5+y9nQzsh27ekc82RmNW2FsSAr3Qp6g==
X-Google-Smtp-Source: AGHT+IHIdK+dCnhdZWyrVWNnKJihHVRJbaCyti/YDfGpviNzy62DFJUdIAJDshq7fiw+ahJV051GiQ==
X-Received: by 2002:a17:906:5fcb:b0:a6f:4c90:7952 with SMTP id a640c23a62f3a-a7245b81173mr71630166b.36.1719120889434;
        Sat, 22 Jun 2024 22:34:49 -0700 (PDT)
Received: from [192.168.178.38] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a724a2fdd0fsm33220166b.32.2024.06.22.22.34.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 22 Jun 2024 22:34:48 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Jacobe Zang <jacobe.zang@wesion.com>, =?UTF-8?B?T25kxZllaiBKaXJtYW4=?= <megi@xff.cz>
CC: <kvalo@kernel.org>, <duoming@zju.edu.cn>, <bhelgaas@google.com>, <minipli@grsecurity.net>, <linux-wireless@vger.kernel.org>, <brcm80211@lists.linux.dev>, <brcm80211-dev-list.pdl@broadcom.com>, <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <heiko@sntech.de>, Nick Xie <nick@khadas.com>, <efectn@protonmail.com>, <jagan@edgeble.ai>, <dsimic@manjaro.org>, <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Date: Sun, 23 Jun 2024 07:34:48 +0200
Message-ID: <190439700c0.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <TYZPR03MB700154AE39D44B8D166344BF80CB2@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240620020015.4021696-1-jacobe.zang@wesion.com>
 <20240620020015.4021696-4-jacobe.zang@wesion.com>
 <fro2xcwsnvbxmpszny6g2p36z4zwoq4kegmpvww4twxir5piez@a3c2nbwitmab>
 <TYZPR03MB700154AE39D44B8D166344BF80CB2@TYZPR03MB7001.apcprd03.prod.outlook.com>
User-Agent: AquaMail/1.51.3 (build: 105103473)
Subject: Re: [PATCH v1 3/3] net: wireless: brcmfmac: Add support for AP6275P
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_223452_700179_8E40BDD0 
X-CRM114-Status: GOOD (  13.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3410886463972555418=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3410886463972555418==
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="000000000000f7f9fb061b880566"

--000000000000f7f9fb061b880566
Content-Type: text/plain; format=flowed; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On June 23, 2024 4:21:46 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:

>> Any reason to strip info about origin of the patch, my SoB and
>> present this work as your own?
>
> Sincerely express my apology to Ondrej. It's really my mistake. After 
> getting your permission if I could submit the patches. I jsut think if the 
> author and submitter is not the same person is strange so I changed it. 
> Next tiem I will avoid this mistake. Apologize again.
>
>
>> I sincerely hope this is just a rookie mistake so please carefully read
> the URL below:
>
>> https://www.kernel.org/doc/html/latest/process/submitting-patches.html
>
> Thanks for the guidance Arend. After reading the document I realized what a 
> stupid mistake I made.
>
> BTW I have another question, except the SoB of the real author, should I 
> also post the original link in commit message?

Not really necessary. You may if you think that it's useful. Always add 
your SoB and keep SoB tags present untouched.

Regards,
Arend




--000000000000f7f9fb061b880566
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIIQdwYJKoZIhvcNAQcCoIIQaDCCEGQCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0BBwGg
gg3OMIIFDTCCA/WgAwIBAgIQeEqpED+lv77edQixNJMdADANBgkqhkiG9w0BAQsFADBMMSAwHgYD
VQQLExdHbG9iYWxTaWduIFJvb3QgQ0EgLSBSMzETMBEGA1UEChMKR2xvYmFsU2lnbjETMBEGA1UE
AxMKR2xvYmFsU2lnbjAeFw0yMDA5MTYwMDAwMDBaFw0yODA5MTYwMDAwMDBaMFsxCzAJBgNVBAYT
AkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQDEyhHbG9iYWxTaWduIEdDQyBS
MyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
vbCmXCcsbZ/a0fRIQMBxp4gJnnyeneFYpEtNydrZZ+GeKSMdHiDgXD1UnRSIudKo+moQ6YlCOu4t
rVWO/EiXfYnK7zeop26ry1RpKtogB7/O115zultAz64ydQYLe+a1e/czkALg3sgTcOOcFZTXk38e
aqsXsipoX1vsNurqPtnC27TWsA7pk4uKXscFjkeUE8JZu9BDKaswZygxBOPBQBwrA5+20Wxlk6k1
e6EKaaNaNZUy30q3ArEf30ZDpXyfCtiXnupjSK8WU2cK4qsEtj09JS4+mhi0CTCrCnXAzum3tgcH
cHRg0prcSzzEUDQWoFxyuqwiwhHu3sPQNmFOMwIDAQABo4IB2jCCAdYwDgYDVR0PAQH/BAQDAgGG
MGAGA1UdJQRZMFcGCCsGAQUFBwMCBggrBgEFBQcDBAYKKwYBBAGCNxQCAgYKKwYBBAGCNwoDBAYJ
KwYBBAGCNxUGBgorBgEEAYI3CgMMBggrBgEFBQcDBwYIKwYBBQUHAxEwEgYDVR0TAQH/BAgwBgEB
/wIBADAdBgNVHQ4EFgQUljPR5lgXWzR1ioFWZNW+SN6hj88wHwYDVR0jBBgwFoAUj/BLf6guRSSu
TVD6Y5qL3uLdG7wwegYIKwYBBQUHAQEEbjBsMC0GCCsGAQUFBzABhiFodHRwOi8vb2NzcC5nbG9i
YWxzaWduLmNvbS9yb290cjMwOwYIKwYBBQUHMAKGL2h0dHA6Ly9zZWN1cmUuZ2xvYmFsc2lnbi5j
b20vY2FjZXJ0L3Jvb3QtcjMuY3J0MDYGA1UdHwQvMC0wK6ApoCeGJWh0dHA6Ly9jcmwuZ2xvYmFs
c2lnbi5jb20vcm9vdC1yMy5jcmwwWgYDVR0gBFMwUTALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgEo
CjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAN
BgkqhkiG9w0BAQsFAAOCAQEAdAXk/XCnDeAOd9nNEUvWPxblOQ/5o/q6OIeTYvoEvUUi2qHUOtbf
jBGdTptFsXXe4RgjVF9b6DuizgYfy+cILmvi5hfk3Iq8MAZsgtW+A/otQsJvK2wRatLE61RbzkX8
9/OXEZ1zT7t/q2RiJqzpvV8NChxIj+P7WTtepPm9AIj0Keue+gS2qvzAZAY34ZZeRHgA7g5O4TPJ
/oTd+4rgiU++wLDlcZYd/slFkaT3xg4qWDepEMjT4T1qFOQIL+ijUArYS4owpPg9NISTKa1qqKWJ
jFoyms0d0GwOniIIbBvhI2MJ7BSY9MYtWVT5jJO3tsVHwj4cp92CSFuGwunFMzCCA18wggJHoAMC
AQICCwQAAAAAASFYUwiiMA0GCSqGSIb3DQEBCwUAMEwxIDAeBgNVBAsTF0dsb2JhbFNpZ24gUm9v
dCBDQSAtIFIzMRMwEQYDVQQKEwpHbG9iYWxTaWduMRMwEQYDVQQDEwpHbG9iYWxTaWduMB4XDTA5
MDMxODEwMDAwMFoXDTI5MDMxODEwMDAwMFowTDEgMB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENB
IC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24xEzARBgNVBAMTCkdsb2JhbFNpZ24wggEiMA0GCSqG
SIb3DQEBAQUAA4IBDwAwggEKAoIBAQDMJXaQeQZ4Ihb1wIO2hMoonv0FdhHFrYhy/EYCQ8eyip0E
XyTLLkvhYIJG4VKrDIFHcGzdZNHr9SyjD4I9DCuul9e2FIYQebs7E4B3jAjhSdJqYi8fXvqWaN+J
J5U4nwbXPsnLJlkNc96wyOkmDoMVxu9bi9IEYMpJpij2aTv2y8gokeWdimFXN6x0FNx04Druci8u
nPvQu7/1PQDhBjPogiuuU6Y6FnOM3UEOIDrAtKeh6bJPkC4yYOlXy7kEkmho5TgmYHWyn3f/kRTv
riBJ/K1AFUjRAjFhGV64l++td7dkmnq/X8ET75ti+w1s4FRpFqkD2m7pg5NxdsZphYIXAgMBAAGj
QjBAMA4GA1UdDwEB/wQEAwIBBjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBSP8Et/qC5FJK5N
UPpjmove4t0bvDANBgkqhkiG9w0BAQsFAAOCAQEAS0DbwFCq/sgM7/eWVEVJu5YACUGssxOGhigH
M8pr5nS5ugAtrqQK0/Xx8Q+Kv3NnSoPHRHt44K9ubG8DKY4zOUXDjuS5V2yq/BKW7FPGLeQkbLmU
Y/vcU2hnVj6DuM81IcPJaP7O2sJTqsyQiunwXUaMld16WCgaLx3ezQA3QY/tRG3XUyiXfvNnBB4V
14qWtNPeTCekTBtzc3b0F5nCH3oO4y0IrQocLP88q1UOD5F+NuvDV0m+4S4tfGCLw0FREyOdzvcy
a5QBqJnnLDMfOjsl0oZAzjsshnjJYS8Uuu7bVW/fhO4FCU29KNhyztNiUGUe65KXgzHZs7XKR1g/
XzCCBVYwggQ+oAMCAQICDE79bW6SMzVJMuOi1zANBgkqhkiG9w0BAQsFADBbMQswCQYDVQQGEwJC
RTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMg
UGVyc29uYWxTaWduIDIgQ0EgMjAyMDAeFw0yMjA5MTAxMTQzMjNaFw0yNTA5MTAxMTQzMjNaMIGV
MQswCQYDVQQGEwJJTjESMBAGA1UECBMJS2FybmF0YWthMRIwEAYDVQQHEwlCYW5nYWxvcmUxFjAU
BgNVBAoTDUJyb2FkY29tIEluYy4xGTAXBgNVBAMTEEFyZW5kIFZhbiBTcHJpZWwxKzApBgkqhkiG
9w0BCQEWHGFyZW5kLnZhbnNwcmllbEBicm9hZGNvbS5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IB
DwAwggEKAoIBAQDxOB8Yu89pZLsG9Ic8ZY3uGibuv+NRsij+E70OMJQIwugrByyNq5xgH0BI22vJ
LT7VKCB6YJC88ewEFfYi3EKW/sn6RL16ImUM40beDmQ12WBquJRoxVNyoByNalmTOBNYR95ZQZJw
1nrzaoJtK0XIsv0dNCUcLlAc+jHkngD+I0ptVuWoMO1BcJexqJf5iX2M1CdC8PXTh9g4FIQnG2mc
2Gzj3QNJRLsZu1TLyOyBBIr/BE7UiY3RabgRzknBGAPmzhS+fmyM8OtM5BYBsFBrSUFtZZO2p/tf
Nbc24J2zf2peoZ8MK+7WQqummYlOnz+FyDkA9EybeNMcS5C+xi/PAgMBAAGjggHdMIIB2TAOBgNV
HQ8BAf8EBAMCBaAwgaMGCCsGAQUFBwEBBIGWMIGTME4GCCsGAQUFBzAChkJodHRwOi8vc2VjdXJl
Lmdsb2JhbHNpZ24uY29tL2NhY2VydC9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcnQwQQYI
KwYBBQUHMAGGNWh0dHA6Ly9vY3NwLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjNwZXJzb25hbHNpZ24y
Y2EyMDIwME0GA1UdIARGMEQwQgYKKwYBBAGgMgEoCjA0MDIGCCsGAQUFBwIBFiZodHRwczovL3d3
dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzAJBgNVHRMEAjAAMEkGA1UdHwRCMEAwPqA8oDqG
OGh0dHA6Ly9jcmwuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAuY3Js
MCcGA1UdEQQgMB6BHGFyZW5kLnZhbnNwcmllbEBicm9hZGNvbS5jb20wEwYDVR0lBAwwCgYIKwYB
BQUHAwQwHwYDVR0jBBgwFoAUljPR5lgXWzR1ioFWZNW+SN6hj88wHQYDVR0OBBYEFIikAXd8CEtv
ZbDflDRnf3tuStPuMA0GCSqGSIb3DQEBCwUAA4IBAQCdS5XCYx6k2GGZui9DlFsFm75khkqAU7rT
zBX04sJU1+B1wtgmWTVIzW7ugdtDZ4gzaV0S9xRhpDErjJaltxPbCylb1DEsLj+AIvBR34caW6ZG
sQk444t0HPb29HnWYj+OllIGMbdJWr0/P95ZrKk2bP24ub3ZP/8SyzrohfIba9WZKMq6g2nTLZE3
BtkeSGJx/8dy0h8YmRn+adOrxKXHxhSL8BNn8wsmIZyYWe6fRcBtO3Ks2DOLyHCdkoFlN8x9VUQF
N2ulEgqCbRKkx+qNirW86eF138lr1gRxzclu/38ko//MmkAYR/+hP3WnBll7zbpIt0jc9wyFkSqH
p8a1MYICbTCCAmkCAQEwazBbMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1z
YTExMC8GA1UEAxMoR2xvYmFsU2lnbiBHQ0MgUjMgUGVyc29uYWxTaWduIDIgQ0EgMjAyMAIMTv1t
bpIzNUky46LXMA0GCWCGSAFlAwQCAQUAoIHUMC8GCSqGSIb3DQEJBDEiBCBGi8hU7JaXZ+44ZoQU
OVBaB8Q+bnFInDc354wmh205TzAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJ
BTEPFw0yNDA2MjMwNTM0NDlaMGkGCSqGSIb3DQEJDzFcMFowCwYJYIZIAWUDBAEqMAsGCWCGSAFl
AwQBFjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEKMAsGCSqGSIb3DQEBBzAL
BglghkgBZQMEAgEwDQYJKoZIhvcNAQEBBQAEggEABSZTquadWtGVE3yyAc3Jf2IH7jhhtcrjHTwh
rnsrfiLBFK06CNYEP/wORCvyuv7Ro8Lg3ETGf8hs8mLzs+ed49FwGYjyy7raVf20Gd51k0RkVQjK
0gbuFtCmBnXFCR3NQRXGAszvVNhK/Q6hRg1hdrXneluNNmLjjk1g4rWh0NHypkdCKMDgVTWPji+4
VcaEPd8WDMLD5CSoK3b/txwnrOkBLpdvB6no9TuN+zKiDjtcGOneR7W5UU7JuMQPH/DhogjkKGRe
cxTlba8qEQOluF3VjvAgANEAUqWirROfplIxH4kiwrD5zIepcuaAPHbx3DnCsN2Myayk7VH4iNup
SQ==
--000000000000f7f9fb061b880566--


--===============3410886463972555418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3410886463972555418==--

