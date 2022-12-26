Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1535FC3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 13:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFMYlRWKt5tBXaSxnZKt26eCLg7vrlnrxK1siRdDCCI=; b=LLj64YhZF5caG0
	Z/1PSPVeYwvo4Nj0eUSWwmtUccdCGdUVv5r6Rr39fI6rssA4YbH5IEiwkmDUvI+8/mM7CCrYGIxB3
	aeT5jEV3E1+dppVBzUaf7apilW0a432ZLtxPX5sWwTq9iqpfbVs/adxZg5C7QKwnA1Z3W5TL8lWiD
	F86HPeObdEFZoLSTWfJ+aE7N5JeKJAjr3imiaKMNqBMN8wONg7GMFx4NMKdfUbHMph5dRoie9dYhm
	IWsTicSrnDVH7Wxm6luO95st81xvytC1UwgJYdOseXohwmVix8+bDwTwemcLHF5opoird6F7qi9Gs
	oTcdQBkimxaa2W+M8XGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9nrT-004MO3-DY; Mon, 26 Dec 2022 13:49:51 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9nrA-004ME5-Pq
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 13:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1672062572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gw4YKyE6m3dvm+AI9a6ZkGYjDJAM63OXGslSUuAlLo8=;
	b=bCoukQf5gUaenFoUq2U4x70Q6oWs6EMLCuMPPsVpi4KDMkZNeQpljA9aCEIedfwZ83KsjL
	C+qRT599T7kuDj9kDknU++1MdeW9U2sEb2mj+VpBGLMKa/nDCIgTNHYBrCW7TNr6WxuLaF
	PM1J7zDnTHjeax7uKEH8pESEwVLRT2A=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-490-AJacGok6OFyMMfgOaFzkCA-1; Mon, 26 Dec 2022 08:49:28 -0500
X-MC-Unique: AJacGok6OFyMMfgOaFzkCA-1
Received: by mail-wm1-f72.google.com with SMTP id k20-20020a05600c1c9400b003d9717c8b11so3664398wms.7
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 05:49:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gw4YKyE6m3dvm+AI9a6ZkGYjDJAM63OXGslSUuAlLo8=;
        b=QvCGdxTTI8NOEW7sdchoDAvyhGWfRhdLmiIcjxRieb+mxVqhpPOYk8YcHge3PAncq5
         mSnR5NOCGAFqNvrwwf/0G0FKRt/jR2oUoy01JRzAZL0yFjSrMDQNfh9cUPInrb89HprV
         ntq2Oo1YJGtYEenAIhTBa+pITq5AbBremvXXw+dohEtNz8sj3jg7Gfq/eG+5WHYqEhzI
         KTGr+tQ4F8Ijc8hlnxpA8Vfo5GkMRE6Fx+9cerYOWgWnz+nDE6gQ3LLWXT7nlYUabXZt
         yDwg2F5nLgDSvAouRKf0dSHrx+TJSEQf6rSSL0C7E6C9oi4hV5aWpQIT+TbNzjbd4Z1j
         Q41w==
X-Gm-Message-State: AFqh2krV/4gycmuaIlLawBRpdAdZRx7X3eXexGZbX/s/qQte006qNo6z
	ykxiIkhumBEbHqwiCOitJHcKrQzZOmll8iIFP4MmreZxH0gIzFkV7i5y5wv6zv4AiDlhrytJOiP
	E3An9axywbufOnfMB9D1EgWm/5SyAHUJ9
X-Received: by 2002:a7b:c7d6:0:b0:3d1:ee3a:62ae with SMTP id z22-20020a7bc7d6000000b003d1ee3a62aemr15855528wmk.8.1672062567021;
        Mon, 26 Dec 2022 05:49:27 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsSXL0Ns8UFml4pgFquWr3xql1Chfes3jlMi8ynWpv2K9/OhcnWWzORV78VW6XaRzrrIKwXrg==
X-Received: by 2002:a7b:c7d6:0:b0:3d1:ee3a:62ae with SMTP id z22-20020a7bc7d6000000b003d1ee3a62aemr15855517wmk.8.1672062566819;
        Mon, 26 Dec 2022 05:49:26 -0800 (PST)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id a18-20020adfed12000000b0027cfd9463d7sm3340947wro.110.2022.12.26.05.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 05:49:26 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Ondrej Jirman <megi@xff.cz>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Robert Mader <robert.mader@posteo.de>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Martijn Braam <martijn@brixit.nl>,
	Peter Robinson <pbrobinson@gmail.com>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 4/4] arm64: dts: rk3399-pinephone-pro: Add internal display support
Date: Mon, 26 Dec 2022 14:49:08 +0100
Message-Id: <20221226134909.2822179-5-javierm@redhat.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221226134909.2822179-1-javierm@redhat.com>
References: <20221226134909.2822179-1-javierm@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_054932_920556_179DAC49 
X-CRM114-Status: GOOD (  12.16  )
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
dGluZXogQ2FuaWxsYXMgPGphdmllcm1AcmVkaGF0LmNvbT4KLS0tCgpDaGFuZ2VzIGluIHYyOgot
IEZpeCByZWd1bGF0b3Igbm9kZSBuYW1lcyAoTWF5YSBNYXR1c3pjenlrKS4KLSBEcm9wIG5vbi1l
eGlzdGVudCAicG93ZXJvZmYtaW4tc3VzcGVuZCIgcHJvcGVydHkgKE1heWEgTWF0dXN6Y3p5ayku
Ci0gUmVtb3ZlIHVubmVjZXNzYXJ5IGNvbW1lbnRzIGluIHBhbmVsIG5vZGUgKE1heWEgTWF0dXN6
Y3p5aykuCgogLi4uL2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMgICAgIHwg
MTIzICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEyMyBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBo
b25lLXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhv
bmUtcHJvLmR0cwppbmRleCAwZTQ0NDJiNTlhNTUuLjU1MDQ4MjM2ZWVmNyAxMDA2NDQKLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMK
QEAgLTI5LDYgKzI5LDEyIEBAIGNob3NlbiB7CiAJCXN0ZG91dC1wYXRoID0gInNlcmlhbDI6MTUw
MDAwMG44IjsKIAl9OwogCisJYmFja2xpZ2h0OiBiYWNrbGlnaHQgeworCQljb21wYXRpYmxlID0g
InB3bS1iYWNrbGlnaHQiOworCQlwd21zID0gPCZwd20wIDAgMTAwMDAwMCAwPjsKKwkJcHdtLWRl
bGF5LXVzID0gPDEwMDAwPjsKKwl9OworCiAJZ3Bpby1rZXlzIHsKIAkJY29tcGF0aWJsZSA9ICJn
cGlvLWtleXMiOwogCQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwpAQCAtODEsNiArODcsMzIg
QEAgdmNjMXY4X2NvZGVjOiB2Y2MxdjgtY29kZWMtcmVndWxhdG9yIHsKIAkJcmVndWxhdG9yLW1h
eC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47CiAJCXZpbi1zdXBwbHkgPSA8JnZjYzN2M19zeXM+Owog
CX07CisKKwkvKiBNSVBJIERTSSBwYW5lbCAxLjh2IHN1cHBseSAqLworCXZjYzF2OF9sY2Q6IHZj
YzF2OC1sY2QtcmVndWxhdG9yIHsKKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwor
CQllbmFibGUtYWN0aXZlLWhpZ2g7CisJCXJlZ3VsYXRvci1uYW1lID0gInZjYzF2OF9sY2QiOwor
CQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKKwkJcmVndWxhdG9yLW1heC1t
aWNyb3ZvbHQgPSA8MTgwMDAwMD47CisJCXZpbi1zdXBwbHkgPSA8JnZjYzN2M19zeXM+OworCQln
cGlvID0gPCZncGlvMyBSS19QQTUgR1BJT19BQ1RJVkVfSElHSD47CisJCXBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7CisJCXBpbmN0cmwtMCA9IDwmZGlzcGxheV9wd3JlbjE+OworCX07CisKKwkv
KiBNSVBJIERTSSBwYW5lbCAyLjh2IHN1cHBseSAqLworCXZjYzJ2OF9sY2Q6IHZjYzJ2OC1sY2Qt
cmVndWxhdG9yIHsKKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOworCQllbmFibGUt
YWN0aXZlLWhpZ2g7CisJCXJlZ3VsYXRvci1uYW1lID0gInZjYzJ2OF9sY2QiOworCQlyZWd1bGF0
b3ItbWluLW1pY3Jvdm9sdCA9IDwyODAwMDAwPjsKKwkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8MjgwMDAwMD47CisJCXZpbi1zdXBwbHkgPSA8JnZjYzN2M19zeXM+OworCQlncGlvID0gPCZn
cGlvMyBSS19QQTEgR1BJT19BQ1RJVkVfSElHSD47CisJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVs
dCI7CisJCXBpbmN0cmwtMCA9IDwmZGlzcGxheV9wd3Jlbj47CisJfTsKIH07CiAKICZjcHVfbDAg
ewpAQCAtMTExLDYgKzE0MywxMSBAQCAmZW1tY19waHkgewogCXN0YXR1cyA9ICJva2F5IjsKIH07
CiAKKyZncHUgeworCW1hbGktc3VwcGx5ID0gPCZ2ZGRfZ3B1PjsKKwlzdGF0dXMgPSAib2theSI7
Cit9OworCiAmaTJjMCB7CiAJY2xvY2stZnJlcXVlbmN5ID0gPDQwMDAwMD47CiAJaTJjLXNjbC1y
aXNpbmctdGltZS1ucyA9IDwxNjg+OwpAQCAtMTkzLDYgKzIzMCw5IEBAIHZjYzN2MF90b3VjaDog
TERPX1JFRzIgewogCQkJCXJlZ3VsYXRvci1uYW1lID0gInZjYzN2MF90b3VjaCI7CiAJCQkJcmVn
dWxhdG9yLW1pbi1taWNyb3ZvbHQgPSA8MzAwMDAwMD47CiAJCQkJcmVndWxhdG9yLW1heC1taWNy
b3ZvbHQgPSA8MzAwMDAwMD47CisJCQkJcmVndWxhdG9yLXN0YXRlLW1lbSB7CisJCQkJCXJlZ3Vs
YXRvci1vZmYtaW4tc3VzcGVuZDsKKwkJCQl9OwogCQkJfTsKIAogCQkJdmNjYTF2OF9jb2RlYzog
TERPX1JFRzMgewpAQCAtMzI2LDYgKzM2NiwyNSBAQCBvcHAwNyB7CiAJfTsKIH07CiAKKyZpMmMz
IHsKKwlpMmMtc2NsLXJpc2luZy10aW1lLW5zID0gPDQ1MD47CisJaTJjLXNjbC1mYWxsaW5nLXRp
bWUtbnMgPSA8MTU+OworCXN0YXR1cyA9ICJva2F5IjsKKworCXRvdWNoc2NyZWVuQDE0IHsKKwkJ
Y29tcGF0aWJsZSA9ICJnb29kaXgsZ3Q5MTdzIjsKKwkJcmVnID0gPDB4MTQ+OworCQlpbnRlcnJ1
cHQtcGFyZW50ID0gPCZncGlvMz47CisJCWludGVycnVwdHMgPSA8UktfUEI1IElSUV9UWVBFX0VE
R0VfUklTSU5HPjsKKwkJaXJxLWdwaW9zID0gPCZncGlvMyBSS19QQjUgR1BJT19BQ1RJVkVfSElH
SD47CisJCXJlc2V0LWdwaW9zID0gPCZncGlvMyBSS19QQjQgR1BJT19BQ1RJVkVfSElHSD47CisJ
CUFWREQyOC1zdXBwbHkgPSA8JnZjYzN2MF90b3VjaD47CisJCVZERElPLXN1cHBseSA9IDwmdmNj
M3YwX3RvdWNoPjsKKwkJdG91Y2hzY3JlZW4tc2l6ZS14ID0gPDcyMD47CisJCXRvdWNoc2NyZWVu
LXNpemUteSA9IDwxNDQwPjsKKwl9OworfTsKKwogJmlvX2RvbWFpbnMgewogCWJ0NjU2LXN1cHBs
eSA9IDwmdmNjMXY4X2R2cD47CiAJYXVkaW8tc3VwcGx5ID0gPCZ2Y2NhMXY4X2NvZGVjPjsKQEAg
LTMzNCw2ICszOTMsNDAgQEAgJmlvX2RvbWFpbnMgewogCXN0YXR1cyA9ICJva2F5IjsKIH07CiAK
KyZtaXBpX2RzaSB7CisJc3RhdHVzID0gIm9rYXkiOworCWNsb2NrLW1hc3RlcjsKKworCXBvcnRz
IHsKKwkJbWlwaV9vdXQ6IHBvcnRAMSB7CisJCQkjYWRkcmVzcy1jZWxscyA9IDwwPjsKKwkJCSNz
aXplLWNlbGxzID0gPDA+OworCQkJcmVnID0gPDE+OworCisJCQltaXBpX291dF9wYW5lbDogZW5k
cG9pbnQgeworCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmbWlwaV9pbl9wYW5lbD47CisJCQl9Owor
CQl9OworCX07CisKKwlwYW5lbEAwIHsKKwkJY29tcGF0aWJsZSA9ICJoYW5uc3Rhcixoc2QwNjBi
aHc0IjsKKwkJcmVnID0gPDA+OworCQliYWNrbGlnaHQgPSA8JmJhY2tsaWdodD47CisJCXJlc2V0
LWdwaW9zID0gPCZncGlvNCBSS19QRDEgR1BJT19BQ1RJVkVfTE9XPjsKKwkJdmNjLXN1cHBseSA9
IDwmdmNjMnY4X2xjZD47CisJCWlvdmNjLXN1cHBseSA9IDwmdmNjMXY4X2xjZD47CisJCXBpbmN0
cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJCXBpbmN0cmwtMCA9IDwmZGlzcGxheV9yc3RfbD47CisK
KwkJcG9ydCB7CisJCQltaXBpX2luX3BhbmVsOiBlbmRwb2ludCB7CisJCQkJcmVtb3RlLWVuZHBv
aW50ID0gPCZtaXBpX291dF9wYW5lbD47CisJCQl9OworCQl9OworCX07Cit9OworCiAmcG11X2lv
X2RvbWFpbnMgewogCXBtdTE4MzAtc3VwcGx5ID0gPCZ2Y2NfMXY4PjsKIAlzdGF0dXMgPSAib2th
eSI7CkBAIC0zNjAsNiArNDUzLDIwIEBAIHZzZWwyX3BpbjogdnNlbDItcGluIHsKIAkJfTsKIAl9
OwogCisJZHNpIHsKKwkJZGlzcGxheV9yc3RfbDogZGlzcGxheS1yc3QtbCB7CisJCQlyb2NrY2hp
cCxwaW5zID0gPDQgUktfUEQxIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX2Rvd24+OworCQl9Owor
CisJCWRpc3BsYXlfcHdyZW46IGRpc3BsYXktcHdyZW4geworCQkJcm9ja2NoaXAscGlucyA9IDwz
IFJLX1BBMSBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9kb3duPjsKKwkJfTsKKworCQlkaXNwbGF5
X3B3cmVuMTogZGlzcGxheS1wd3JlbjEgeworCQkJcm9ja2NoaXAscGlucyA9IDwzIFJLX1BBNSBS
S19GVU5DX0dQSU8gJnBjZmdfcHVsbF9kb3duPjsKKwkJfTsKKwl9OworCiAJc291bmQgewogCQl2
Y2MxdjhfY29kZWNfZW46IHZjYzF2OC1jb2RlYy1lbiB7CiAJCQlyb2NrY2hpcCxwaW5zID0gPDMg
UktfUEE0IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX2Rvd24+OwpAQCAtMzY3LDYgKzQ3NCwxMCBA
QCB2Y2MxdjhfY29kZWNfZW46IHZjYzF2OC1jb2RlYy1lbiB7CiAJfTsKIH07CiAKKyZwd20wIHsK
KwlzdGF0dXMgPSAib2theSI7Cit9OworCiAmc2RtbWMgewogCWJ1cy13aWR0aCA9IDw0PjsKIAlj
YXAtc2QtaGlnaHNwZWVkOwpAQCAtMzk2LDMgKzUwNywxNSBAQCAmdHNhZGMgewogJnVhcnQyIHsK
IAlzdGF0dXMgPSAib2theSI7CiB9OworCismdm9wYiB7CisJc3RhdHVzID0gIm9rYXkiOworCWFz
c2lnbmVkLWNsb2NrcyA9IDwmY3J1IERDTEtfVk9QMF9ESVY+LCA8JmNydSBEQ0xLX1ZPUDA+LAor
CQkJICA8JmNydSBBQ0xLX1ZPUDA+LCA8JmNydSBIQ0xLX1ZPUDA+OworCWFzc2lnbmVkLWNsb2Nr
LXJhdGVzID0gPDA+LCA8MD4sIDw0MDAwMDAwMDA+LCA8MTAwMDAwMDAwPjsKKwlhc3NpZ25lZC1j
bG9jay1wYXJlbnRzID0gPCZjcnUgUExMX0NQTEw+LCA8JmNydSBEQ0xLX1ZPUDBfRlJBQz47Cit9
OworCismdm9wYl9tbXUgeworCXN0YXR1cyA9ICJva2F5IjsKK307Ci0tIAoyLjM4LjEKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
