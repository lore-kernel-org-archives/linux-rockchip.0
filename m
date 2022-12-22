Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEEB7C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 22:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WuZ6K5Eewd/p9NLkwKTmrHgTFsjv+7v2vpvlq7jFRkU=; b=zpABygjzhBQ8sa
	ytKdW+WHw5XhiQ4t21xjjj5ZylxeFCQi266+e4m2XfOxpQKiQoSpJ9Rgoux7fSmzjKVrhgS8IwFfz
	EV5Ut5W4PzW6hjACw3BJ4CX0X8oTlfwehlICEM0rZ8EQ6hPJZeoEhY/+yIah4nD2A+pMkVY0etBJ+
	3C2iBSqFfz6u9mk5EgJ/5Cetmk+VajWspJSLtoWRXAZDdRA5WL6mZT9CzUZPL7jSjSmKBDG73DfJH
	TOJT1YVqEYbnM/7eXaxMSaZP+gfYaS2wgIUJaGvu8Lja0eRI/M3McLnsf/DYG2QZCwdLlhi0Qh3ct
	6BO8ysA4jt9bHjweG/pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8UDG-000ENb-Bg; Thu, 22 Dec 2022 22:38:54 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8UDC-000EM1-Gt
	for linux-rockchip@lists.infradead.org; Thu, 22 Dec 2022 22:38:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1671748729;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5VqO/oai3keL8dEjX/YRNHEFAUJ+v+2KFPvz+aMB4Ww=;
	b=NrOk118NASsBtx3pk55/srrWkkeukdN1SlprOmtK0ygFRxxRhA8EAPr8hjmMAJcw5tGC1z
	G+Pg0PuKwzl5kpgAJ3XAl1QAhFvznZlBcwOc7Qv3fE4aTnJUztIZ4F3ALWMVHjchvPG4uE
	Kb1OwRadxJTDafQQC2r9DuYQtvPs5Hg=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-357-fDCauTn4P7mc3p5ww65pug-1; Thu, 22 Dec 2022 17:38:48 -0500
X-MC-Unique: fDCauTn4P7mc3p5ww65pug-1
Received: by mail-wm1-f71.google.com with SMTP id i132-20020a1c3b8a000000b003d0f49bc21bso2892318wma.6
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Dec 2022 14:38:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5VqO/oai3keL8dEjX/YRNHEFAUJ+v+2KFPvz+aMB4Ww=;
        b=JsPXPkpz6hNKh0c280PkvDVKduETuF01XdhJJVaGf9HcrDKRjtVAIuEZGG2NfXlO4+
         b+KvGA0Z0LuCmMiFkk6atPlaf6/Ec5L9U6Twke4ON6zLWh5ZBmnMUi1gW57r3fa75p8K
         1YHqlpmBUqTaIfo6DnFKQbPp9qEqOU9+Z97hjygr8V2mMTRelMynuf117rE+WQe1IYSL
         XkeCJBbaUPiQUFrVLBJtPBbfnw2Zjb6oyXlYzhLshKoM4rRm2FxeJu9VfoyiBqFWRq2D
         ejCKRjPY4BA1yq+2mIAYfBlvSnByG223FPMLxvR2/0vn0VLEGpuVK80xgWPQ/Nu2Uuf8
         fujQ==
X-Gm-Message-State: AFqh2kp2VTrmHKisrulTpWiwCMb94Mm6ukKIxgjM6Pao0vDFtM7Kyajt
	tr+zwkrwX/OfLrKmYMosqLZKNSZecNPrMpSiV4b1nXGX+B0B4E4ymFykVNShD7Kn1PMsFGdQS+q
	1Oy5d/lbujoPbI4qHktNZZGq2j22E9YBi
X-Received: by 2002:a05:600c:2e44:b0:3d3:4406:8a3c with SMTP id q4-20020a05600c2e4400b003d344068a3cmr5381452wmf.32.1671748727352;
        Thu, 22 Dec 2022 14:38:47 -0800 (PST)
X-Google-Smtp-Source: AMrXdXujTp/r+Z9BJodxOP+KL4VFiH6woCgGKOUx1Gqbs/viGQvmDG3JnCj2av/xH0vD5gJtdWRlwA==
X-Received: by 2002:a05:600c:2e44:b0:3d3:4406:8a3c with SMTP id q4-20020a05600c2e4400b003d344068a3cmr5381445wmf.32.1671748727160;
        Thu, 22 Dec 2022 14:38:47 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n25-20020a7bc5d9000000b003d969a595fbsm2386239wmk.10.2022.12.22.14.38.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Dec 2022 14:38:46 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Robert Mader <robert.mader@posteo.de>,
	Peter Robinson <pbrobinson@gmail.com>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Martijn Braam <martijn@brixit.nl>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 4/4] arm64: dts: rk3399-pinephone-pro: Add internal display support
Date: Thu, 22 Dec 2022 23:38:30 +0100
Message-Id: <20221222223830.2494900-5-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221222223830.2494900-1-javierm@redhat.com>
References: <20221222223830.2494900-1-javierm@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_143850_684255_BD667D1A 
X-CRM114-Status: GOOD (  12.09  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpUaGUgcGhvbmUncyBkaXNwbGF5IGlz
IHVzaW5nIEhhbm5zdGFyIExDRCBwYW5lbCwgYW5kIEdvb2RpeCBiYXNlZAp0b3VjaHNjcmVlbi4g
U3VwcG9ydCBpdC4KClNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6PgpD
by1kZXZlbG9wZWQtYnk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5AYnJpeGl0Lm5sPgpTaWduZWQt
b2ZmLWJ5OiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5ubD4KQ28tZGV2ZWxvcGVkLWJ5
OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1PgpTaWduZWQtb2ZmLWJ5OiBLYW1p
bCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1PgpTaWduZWQtb2ZmLWJ5OiBKYXZpZXIgTWFy
dGluZXogQ2FuaWxsYXMgPGphdmllcm1AcmVkaGF0LmNvbT4KLS0tCgogLi4uL2R0cy9yb2NrY2hp
cC9yazMzOTktcGluZXBob25lLXByby5kdHMgICAgIHwgMTI0ICsrKysrKysrKysrKysrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDEyNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cwppbmRleCAwZTQ0NDJi
NTlhNTUuLmEwNDM5YTYwMzk1ZSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKQEAgLTI5LDYgKzI5LDEyIEBAIGNob3Nl
biB7CiAJCXN0ZG91dC1wYXRoID0gInNlcmlhbDI6MTUwMDAwMG44IjsKIAl9OwogCisJYmFja2xp
Z2h0OiBiYWNrbGlnaHQgeworCQljb21wYXRpYmxlID0gInB3bS1iYWNrbGlnaHQiOworCQlwd21z
ID0gPCZwd20wIDAgMTAwMDAwMCAwPjsKKwkJcHdtLWRlbGF5LXVzID0gPDEwMDAwPjsKKwl9Owor
CiAJZ3Bpby1rZXlzIHsKIAkJY29tcGF0aWJsZSA9ICJncGlvLWtleXMiOwogCQlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwpAQCAtODEsNiArODcsMzIgQEAgdmNjMXY4X2NvZGVjOiB2Y2Mxdjgt
Y29kZWMtcmVndWxhdG9yIHsKIAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47
CiAJCXZpbi1zdXBwbHkgPSA8JnZjYzN2M19zeXM+OwogCX07CisKKwkvKiBNSVBJIERTSSBwYW5l
bCAxLjh2IHN1cHBseSAqLworCXZjYzF2OF9sY2Q6IHZjYzF2OC1sY2QgeworCQljb21wYXRpYmxl
ID0gInJlZ3VsYXRvci1maXhlZCI7CisJCWVuYWJsZS1hY3RpdmUtaGlnaDsKKwkJcmVndWxhdG9y
LW5hbWUgPSAidmNjMXY4X2xjZCI7CisJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDE4MDAw
MDA+OworCQlyZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKKwkJdmluLXN1cHBs
eSA9IDwmdmNjM3YzX3N5cz47CisJCWdwaW8gPSA8JmdwaW8zIFJLX1BBNSBHUElPX0FDVElWRV9I
SUdIPjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwkJcGluY3RybC0wID0gPCZkaXNw
bGF5X3B3cmVuMT47CisJfTsKKworCS8qIE1JUEkgRFNJIHBhbmVsIDIuOHYgc3VwcGx5ICovCisJ
dmNjMnY4X2xjZDogdmNjMnY4LWxjZCB7CisJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVk
IjsKKwkJZW5hYmxlLWFjdGl2ZS1oaWdoOworCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MydjhfbGNk
IjsKKwkJcmVndWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MjgwMDAwMD47CisJCXJlZ3VsYXRvci1t
YXgtbWljcm92b2x0ID0gPDI4MDAwMDA+OworCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsK
KwkJZ3BpbyA9IDwmZ3BpbzMgUktfUEExIEdQSU9fQUNUSVZFX0hJR0g+OworCQlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOworCQlwaW5jdHJsLTAgPSA8JmRpc3BsYXlfcHdyZW4+OworCX07CiB9
OwogCiAmY3B1X2wwIHsKQEAgLTExMSw2ICsxNDMsMTEgQEAgJmVtbWNfcGh5IHsKIAlzdGF0dXMg
PSAib2theSI7CiB9OwogCismZ3B1IHsKKwltYWxpLXN1cHBseSA9IDwmdmRkX2dwdT47CisJc3Rh
dHVzID0gIm9rYXkiOworfTsKKwogJmkyYzAgewogCWNsb2NrLWZyZXF1ZW5jeSA9IDw0MDAwMDA+
OwogCWkyYy1zY2wtcmlzaW5nLXRpbWUtbnMgPSA8MTY4PjsKQEAgLTE5Myw2ICsyMzAsOSBAQCB2
Y2MzdjBfdG91Y2g6IExET19SRUcyIHsKIAkJCQlyZWd1bGF0b3ItbmFtZSA9ICJ2Y2MzdjBfdG91
Y2giOwogCQkJCXJlZ3VsYXRvci1taW4tbWljcm92b2x0ID0gPDMwMDAwMDA+OwogCQkJCXJlZ3Vs
YXRvci1tYXgtbWljcm92b2x0ID0gPDMwMDAwMDA+OworCQkJCXJlZ3VsYXRvci1zdGF0ZS1tZW0g
eworCQkJCQlyZWd1bGF0b3Itb2ZmLWluLXN1c3BlbmQ7CisJCQkJfTsKIAkJCX07CiAKIAkJCXZj
Y2ExdjhfY29kZWM6IExET19SRUczIHsKQEAgLTMyNiw2ICszNjYsMjYgQEAgb3BwMDcgewogCX07
CiB9OwogCismaTJjMyB7CisJaTJjLXNjbC1yaXNpbmctdGltZS1ucyA9IDw0NTA+OworCWkyYy1z
Y2wtZmFsbGluZy10aW1lLW5zID0gPDE1PjsKKwlzdGF0dXMgPSAib2theSI7CisKKwl0b3VjaHNj
cmVlbkAxNCB7CisJCWNvbXBhdGlibGUgPSAiZ29vZGl4LGd0OTE3cyI7CisJCXJlZyA9IDwweDE0
PjsKKwkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzM+OworCQlpbnRlcnJ1cHRzID0gPFJLX1BC
NSBJUlFfVFlQRV9FREdFX1JJU0lORz47CisJCWlycS1ncGlvcyA9IDwmZ3BpbzMgUktfUEI1IEdQ
SU9fQUNUSVZFX0hJR0g+OworCQlyZXNldC1ncGlvcyA9IDwmZ3BpbzMgUktfUEI0IEdQSU9fQUNU
SVZFX0hJR0g+OworCQlBVkREMjgtc3VwcGx5ID0gPCZ2Y2MzdjBfdG91Y2g+OworCQlWRERJTy1z
dXBwbHkgPSA8JnZjYzN2MF90b3VjaD47CisJCXRvdWNoc2NyZWVuLXNpemUteCA9IDw3MjA+Owor
CQl0b3VjaHNjcmVlbi1zaXplLXkgPSA8MTQ0MD47CisJCXBvd2Vyb2ZmLWluLXN1c3BlbmQ7CisJ
fTsKK307CisKICZpb19kb21haW5zIHsKIAlidDY1Ni1zdXBwbHkgPSA8JnZjYzF2OF9kdnA+Owog
CWF1ZGlvLXN1cHBseSA9IDwmdmNjYTF2OF9jb2RlYz47CkBAIC0zMzQsNiArMzk0LDQwIEBAICZp
b19kb21haW5zIHsKIAlzdGF0dXMgPSAib2theSI7CiB9OwogCismbWlwaV9kc2kgeworCXN0YXR1
cyA9ICJva2F5IjsKKwljbG9jay1tYXN0ZXI7CisKKwlwb3J0cyB7CisJCW1pcGlfb3V0OiBwb3J0
QDEgeworCQkJI2FkZHJlc3MtY2VsbHMgPSA8MD47CisJCQkjc2l6ZS1jZWxscyA9IDwwPjsKKwkJ
CXJlZyA9IDwxPjsKKworCQkJbWlwaV9vdXRfcGFuZWw6IGVuZHBvaW50IHsKKwkJCQlyZW1vdGUt
ZW5kcG9pbnQgPSA8Jm1pcGlfaW5fcGFuZWw+OworCQkJfTsKKwkJfTsKKwl9OworCisJcGFuZWxA
MCB7CisJCWNvbXBhdGlibGUgPSAiaGFubnN0YXIsaHNkMDYwYmh3NCI7CisJCXJlZyA9IDwwPjsK
KwkJYmFja2xpZ2h0ID0gPCZiYWNrbGlnaHQ+OworCQlyZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktf
UEQxIEdQSU9fQUNUSVZFX0xPVz47CisJCXZjYy1zdXBwbHkgPSA8JnZjYzJ2OF9sY2Q+OyAvLyAy
djgKKwkJaW92Y2Mtc3VwcGx5ID0gPCZ2Y2MxdjhfbGNkPjsgLy8gMXY4CisJCXBpbmN0cmwtbmFt
ZXMgPSAiZGVmYXVsdCI7CisJCXBpbmN0cmwtMCA9IDwmZGlzcGxheV9yc3RfbD47CisKKwkJcG9y
dCB7CisJCQltaXBpX2luX3BhbmVsOiBlbmRwb2ludCB7CisJCQkJcmVtb3RlLWVuZHBvaW50ID0g
PCZtaXBpX291dF9wYW5lbD47CisJCQl9OworCQl9OworCX07Cit9OworCiAmcG11X2lvX2RvbWFp
bnMgewogCXBtdTE4MzAtc3VwcGx5ID0gPCZ2Y2NfMXY4PjsKIAlzdGF0dXMgPSAib2theSI7CkBA
IC0zNjAsNiArNDU0LDIwIEBAIHZzZWwyX3BpbjogdnNlbDItcGluIHsKIAkJfTsKIAl9OwogCisJ
ZHNpIHsKKwkJZGlzcGxheV9yc3RfbDogZGlzcGxheS1yc3QtbCB7CisJCQlyb2NrY2hpcCxwaW5z
ID0gPDQgUktfUEQxIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX2Rvd24+OworCQl9OworCisJCWRp
c3BsYXlfcHdyZW46IGRpc3BsYXktcHdyZW4geworCQkJcm9ja2NoaXAscGlucyA9IDwzIFJLX1BB
MSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9kb3duPjsKKwkJfTsKKworCQlkaXNwbGF5X3B3cmVu
MTogZGlzcGxheS1wd3JlbjEgeworCQkJcm9ja2NoaXAscGlucyA9IDwzIFJLX1BBNSBSS19GVU5D
X0dQSU8gJnBjZmdfcHVsbF9kb3duPjsKKwkJfTsKKwl9OworCiAJc291bmQgewogCQl2Y2Mxdjhf
Y29kZWNfZW46IHZjYzF2OC1jb2RlYy1lbiB7CiAJCQlyb2NrY2hpcCxwaW5zID0gPDMgUktfUEE0
IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX2Rvd24+OwpAQCAtMzY3LDYgKzQ3NSwxMCBAQCB2Y2Mx
djhfY29kZWNfZW46IHZjYzF2OC1jb2RlYy1lbiB7CiAJfTsKIH07CiAKKyZwd20wIHsKKwlzdGF0
dXMgPSAib2theSI7Cit9OworCiAmc2RtbWMgewogCWJ1cy13aWR0aCA9IDw0PjsKIAljYXAtc2Qt
aGlnaHNwZWVkOwpAQCAtMzk2LDMgKzUwOCwxNSBAQCAmdHNhZGMgewogJnVhcnQyIHsKIAlzdGF0
dXMgPSAib2theSI7CiB9OworCismdm9wYiB7CisJc3RhdHVzID0gIm9rYXkiOworCWFzc2lnbmVk
LWNsb2NrcyA9IDwmY3J1IERDTEtfVk9QMF9ESVY+LCA8JmNydSBEQ0xLX1ZPUDA+LAorCQkJICA8
JmNydSBBQ0xLX1ZPUDA+LCA8JmNydSBIQ0xLX1ZPUDA+OworCWFzc2lnbmVkLWNsb2NrLXJhdGVz
ID0gPDA+LCA8MD4sIDw0MDAwMDAwMDA+LCA8MTAwMDAwMDAwPjsKKwlhc3NpZ25lZC1jbG9jay1w
YXJlbnRzID0gPCZjcnUgUExMX0NQTEw+LCA8JmNydSBEQ0xLX1ZPUDBfRlJBQz47Cit9OworCism
dm9wYl9tbXUgeworCXN0YXR1cyA9ICJva2F5IjsKK307Ci0tIAoyLjM4LjEKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
