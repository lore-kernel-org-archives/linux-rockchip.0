Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 201D6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Apr 2022 10:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+6F3jDL6nAj/pm8G1kEkyAmbBYgpTFL8Ck+InPFZv4A=; b=hxUT8FPt9C8vVb
	/Wo5/Y8NEIUKN+zSA3ZoiWemJD/iyKci75qxI/mrd7TRbdqtirvBn+T/0lUJw6Z6boO9NGeg39ZYo
	7ziSdk2nvaQh1m2QPsDKA74FT6hBsrRhM6Od8Df1Y/Y52eJ7DYIcSXnvFPSimAcTcYHLDGBb2gHu5
	4Zn6mWu2gCVFcMCpD2p7URPPiA6LOsZwH6D+l28FESvexHFVrqqpS4iMFgAFqk2zIf1dsHg205CBz
	ZQBYD1sb1oDbTKJSlFDl0bZu2R3bgNxthjR4rm+tdGrLwRidR9ETLjB03rG50ZZ6iJHqC4wtt1yIX
	HhzBFmrFF1h0Bii2XJGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niD4V-0047ld-07; Sat, 23 Apr 2022 10:32:59 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niD4C-0047et-Pm; Sat, 23 Apr 2022 10:32:42 +0000
Received: by mail-lj1-x22c.google.com with SMTP id v4so228385ljd.10;
 Sat, 23 Apr 2022 03:32:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=FjHVIpwQVF2j9Z1J3pzN5aGfezd4ZG1gp/yXo52Doyk=;
 b=XFmDGucF/OcegOVH0xx/d8n/IGwkExBInzgnH2Lm7dLvoea6vEpiarJprM8axfZYn6
 xdqdozexD2dH6IbHU5LMU7IS9U+oioxj5yy6DIUWl2cXiOWkfXf0jBRUlbUac9HTVnqB
 RiOklvCNDaZGnqGSqOn6qqrJh+pq6gQJAqGVe8G1NMAPMjHTihC998Aaq06Jmcc+fcT+
 iz/U5Gi7FQk1R1FbfVjnYWzi8EXNYk8F+GlASybLnp/xB8AV28jXILYawb2+8Cn5XGAL
 kLLkAgfNwnWBTuxawnfafuToG52yusZv5V839takuTzRzaFeEZiTEDGv/G0oXano+ONU
 j+Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=FjHVIpwQVF2j9Z1J3pzN5aGfezd4ZG1gp/yXo52Doyk=;
 b=OG66h+3hankBgR3jIfNDCd6AI7ht0N2nJJPIWYgRXOyS473fnUlRrbeYFNXxqbnHde
 jo/1qxKFCpZMI2Wucb6fl7E8btOluJTDAcmMsFmqr4aOkLHlx+EdvB2CfgyumiLOmClc
 3TnTY/R/qrb55a77kfxsKdLrLyGN5FN2YipsZXCg7FdCJY6NQMtQr5p2ZNiW0phZQ5Ov
 FgvWDn9rd7d93Mazum75n8x9RGWTbaJO2QgtMftj50vWtel8ZlcxNsUCH4XGQ8wOt96k
 oeQuIwF8PN18SZ67g9SXt+saPj57kCjPO8X51RuKWhYuFYlZK+sD7TEkiJZVaB8LVTuE
 eRIg==
X-Gm-Message-State: AOAM533p1tiRwZK1o9yYL0kiXLQUqpLX8KHh0ixOTdeX9R6d59CGMPJf
 iECItR4NDHZbgUjmC3Fy9JA=
X-Google-Smtp-Source: ABdhPJypw+C0OHw2I6BBqFjoROXfn7uqBt7/o3BKuV0y5z0fzD6WCOzfmSwCSW856LNxwR99k8GuRg==
X-Received: by 2002:a05:651c:1781:b0:247:daa7:4358 with SMTP id
 bn1-20020a05651c178100b00247daa74358mr5186355ljb.477.1650709957430; 
 Sat, 23 Apr 2022 03:32:37 -0700 (PDT)
Received: from [192.168.2.145] (109-252-138-167.dynamic.spd-mgts.ru.
 [109.252.138.167]) by smtp.googlemail.com with ESMTPSA id
 m1-20020a2e7101000000b0024f081cb0absm73107ljc.83.2022.04.23.03.32.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 Apr 2022 03:32:36 -0700 (PDT)
Message-ID: <0ac35b47-720e-ae99-45d2-3f8d63868a1e@gmail.com>
Date: Sat, 23 Apr 2022 13:32:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCHv1 08/19] mmc: sdhci-of-dwcmshc: add reset call back for
 rockchip Socs
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Adrian Hunter
 <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>, kernel@collabora.com
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-9-sebastian.reichel@collabora.com>
From: Dmitry Osipenko <digetx@gmail.com>
In-Reply-To: <20220422170920.401914-9-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220423_033240_855379_6ABD20A7 
X-CRM114-Status: GOOD (  22.38  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

MjIuMDQuMjAyMiAyMDowOSwgU2ViYXN0aWFuIFJlaWNoZWwg0L/QuNGI0LXRgjoKPiBGcm9tOiBZ
aWZlbmcgWmhhbyA8eWlmZW5nLnpoYW9Acm9jay1jaGlwcy5jb20+Cj4gCj4gVGhlIHJlc2V0IGZ1
bmN0aW9uIGJ1aWxkIGluIHRoZSBTREhDSSB3aWxsIG5vdCByZXNldCB0aGUgbG9naWMKPiBjaXJj
dWl0IHJlbGF0ZWQgdG8gdGhlIHR1bmluZyBmdW5jdGlvbiwgd2hpY2ggbWF5IGNhdXNlIGRhdGEK
PiByZWFkaW5nIGVycm9ycy4gUmVzZXR0aW5nIHRoZSBjb21wbGV0ZSBTREhDSSBjb250cm9sbGVy
IHRocm91Z2gKPiB0aGUgcmVzZXQgY29udHJvbGxlciBmaXhlcyB0aGUgaXNzdWUuCj4gCj4gU2ln
bmVkLW9mZi1ieTogWWlmZW5nIFpoYW8gPHlpZmVuZy56aGFvQHJvY2stY2hpcHMuY29tPgo+IFty
ZWJhc2VdCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWlj
aGVsQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktb2YtZHdj
bXNoYy5jIHwgMjggKysrKysrKysrKysrKysrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMjcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYyBiL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2kt
b2YtZHdjbXNoYy5jCj4gaW5kZXggYmFjODc0YWIwYjMzLi5kOTVhZTZjYTEyNTYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMKPiArKysgYi9kcml2ZXJz
L21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYwo+IEBAIC0xNSw2ICsxNSw3IEBACj4gICNpbmNs
dWRlIDxsaW51eC9tb2R1bGUuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4gICNpbmNsdWRl
IDxsaW51eC9vZl9kZXZpY2UuaD4KPiArI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+Cj4gICNpbmNs
dWRlIDxsaW51eC9zaXplcy5oPgo+ICAKPiAgI2luY2x1ZGUgInNkaGNpLXBsdGZtLmgiCj4gQEAg
LTYzLDYgKzY0LDcgQEAKPiAgc3RydWN0IHJrMzU2OF9wcml2IHsKPiAgCS8qIFJvY2tjaGlwIHNw
ZWNpZmllZCBvcHRpb25hbCBjbG9ja3MgKi8KPiAgCXN0cnVjdCBjbGtfYnVsa19kYXRhIHJvY2tj
aGlwX2Nsa3NbUkszNTY4X01BWF9DTEtTXTsKPiArCXN0cnVjdCByZXNldF9jb250cm9sICpyZXNl
dDsKPiAgCXU4IHR4Y2xrX3RhcG51bTsKPiAgfTsKPiAgCj4gQEAgLTI1NSw2ICsyNTcsMjMgQEAg
c3RhdGljIHZvaWQgZHdjbXNoY19yazM1Njhfc2V0X2Nsb2NrKHN0cnVjdCBzZGhjaV9ob3N0ICpo
b3N0LCB1bnNpZ25lZCBpbnQgY2xvY2sKPiAgCXNkaGNpX3dyaXRlbChob3N0LCBleHRyYSwgRFdD
TVNIQ19FTU1DX0RMTF9TVFJCSU4pOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCByazM1eHhfc2Ro
Y2lfcmVzZXQoc3RydWN0IHNkaGNpX2hvc3QgKmhvc3QsIHU4IG1hc2spCj4gK3sKPiArCXN0cnVj
dCBzZGhjaV9wbHRmbV9ob3N0ICpwbHRmbV9ob3N0ID0gc2RoY2lfcHJpdihob3N0KTsKPiArCXN0
cnVjdCBkd2Ntc2hjX3ByaXYgKmR3Y19wcml2ID0gc2RoY2lfcGx0Zm1fcHJpdihwbHRmbV9ob3N0
KTsKPiArCXN0cnVjdCByazM1eHhfcHJpdiAqcHJpdiA9IGR3Y19wcml2LT5wcml2Owo+ICsKPiAr
CWlmIChtYXNrICYgU0RIQ0lfUkVTRVRfQUxMKSB7Cj4gKwkJaWYgKCFJU19FUlJfT1JfTlVMTChw
cml2LT5yZXNldCkpIHsKCnByaXYtPnJlc2V0IGNhbid0IGJlIGEgZXJyb3IgcHRyIHNpbmNlIHBy
b2JlIGZhaWxzIG9uIGVycm9yLgoKPiArCQkJcmVzZXRfY29udHJvbF9hc3NlcnQocHJpdi0+cmVz
ZXQpOwo+ICsJCQl1ZGVsYXkoMSk7Cj4gKwkJCXJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocHJpdi0+
cmVzZXQpOwo+ICsJCX0KPiArCX0KPiArCj4gKwlzZGhjaV9yZXNldChob3N0LCBtYXNrKTsKPiAr
fQo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBzZGhjaV9vcHMgc2RoY2lfZHdjbXNoY19vcHMg
PSB7Cj4gIAkuc2V0X2Nsb2NrCQk9IHNkaGNpX3NldF9jbG9jaywKPiAgCS5zZXRfYnVzX3dpZHRo
CQk9IHNkaGNpX3NldF9idXNfd2lkdGgsCj4gQEAgLTI2OSw3ICsyODgsNyBAQCBzdGF0aWMgY29u
c3Qgc3RydWN0IHNkaGNpX29wcyBzZGhjaV9kd2Ntc2hjX3JrMzU2OF9vcHMgPSB7Cj4gIAkuc2V0
X2J1c193aWR0aAkJPSBzZGhjaV9zZXRfYnVzX3dpZHRoLAo+ICAJLnNldF91aHNfc2lnbmFsaW5n
CT0gZHdjbXNoY19zZXRfdWhzX3NpZ25hbGluZywKPiAgCS5nZXRfbWF4X2Nsb2NrCQk9IHNkaGNp
X3BsdGZtX2Nsa19nZXRfbWF4X2Nsb2NrLAo+IC0JLnJlc2V0CQkJPSBzZGhjaV9yZXNldCwKPiAr
CS5yZXNldAkJCT0gcmszNXh4X3NkaGNpX3Jlc2V0LAo+ICAJLmFkbWFfd3JpdGVfZGVzYwk9IGR3
Y21zaGNfYWRtYV93cml0ZV9kZXNjLAo+ICB9Owo+ICAKPiBAQCAtMjkyLDYgKzMxMSwxMyBAQCBz
dGF0aWMgaW50IGR3Y21zaGNfcmszNTY4X2luaXQoc3RydWN0IHNkaGNpX2hvc3QgKmhvc3QsIHN0
cnVjdCBkd2Ntc2hjX3ByaXYgKmR3Ywo+ICAJaW50IGVycjsKPiAgCXN0cnVjdCByazM1NjhfcHJp
diAqcHJpdiA9IGR3Y19wcml2LT5wcml2Owo+ICAKPiArCXByaXYtPnJlc2V0ID0gZGV2bV9yZXNl
dF9jb250cm9sX2FycmF5X2dldF9leGNsdXNpdmUobW1jX2Rldihob3N0LT5tbWMpKTsKClRoZSBk
ZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0X2V4Y2x1c2l2ZSgpIG5ldmVyIHJldHVybnMgTlVM
TC4KClRoZSBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0X29wdGlvbmFsX2V4Y2x1c2l2ZSgo
KSBtYXkgcmV0dXJuIE5VTEwKaWYgcmVzZXQgaXMgbWlzc2luZyBpbiBEVCwgcGVyaGFwcyB0aGF0
J3Mgd2hhdCB5b3UgYWN0dWFsbHkgd2FudD8KCj4gKwlpZiAoSVNfRVJSX09SX05VTEwocHJpdi0+
cmVzZXQpKSB7Cj4gKwkJZXJyID0gUFRSX0VSUihwcml2LT5yZXNldCk7CgpOVUxMIGlzbid0IGEg
ZXJyb3IKCj4gKwkJZGV2X2VycihtbWNfZGV2KGhvc3QtPm1tYyksICJmYWlsZWQgdG8gZ2V0IHJl
c2V0IGNvbnRyb2wgJWRcbiIsIGVycik7CgpkZXZfZXJyX3Byb2JlKCk/CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
