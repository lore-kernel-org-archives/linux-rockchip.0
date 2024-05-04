Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9292EC4345F
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 May 2024 17:34:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FwL9yiImBduFhn7flBsFGyP0W/3U9OPIaXEaoOMxrg=; b=GQEYyvv5mbt3Y6
	1rC0ujFcMQpvLzseEdBdbfRQ7n7w6PHe5c1Rkl7RG0tpfnfc5UXEHKqQe9MMDzRXEPlHGICN6mOSP
	Ldl0h7jBtjvXQlHZ42ZAlceKicclqlpoKrPlk3tHASxAhk5eGDbhtlVaXjoMWJDa6kFx6oMdMf3D9
	aYPBvy9hxvS5cjzCo+M2w72vZgndA3EygJpwWyrIld8qqK3z2duBDC5NfyFI1i182j5rccJPM6sXM
	xXGuS2GyGnm1hMfy+cXwDP6upzrQlW/f9tRRdhlqkCu5L9QqF3dDrwBce8FL3CFxds24r4b4+gLwF
	uHOc2a2oHzoqkdNulQIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3JHM-00000002Yx9-33gP;
	Sat, 04 May 2024 17:34:32 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3JHJ-00000002YwX-1bEo
	for linux-rockchip@lists.infradead.org;
	Sat, 04 May 2024 17:34:30 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-5ad2da2196aso532126eaf.2
        for <linux-rockchip@lists.infradead.org>; Sat, 04 May 2024 10:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714844067; x=1715448867; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lF9hGa2Fe1Mvyb7TMDOS1Nsom143EnG0rlaw7MDvQXo=;
        b=ryADl1kj0qilnB1uWvSBCOSNgvo4I1b4SddYlJ3X7C+iK2Lf9zuXv4iNaS7H6wvODe
         M+GdAmyRVll6oN84f0qJEigYFZ1Vo1OkTCR8whiuOcpUEg86sx0x7ibDb0Wvk32D7i6x
         T6gGY4I8irXc8EZYvJDoJsK9s61xUbi449YUQxsJlxMgQzOCpzgKH7zKu7KAso3kTgT0
         GAlQ75BEb2p+PVW+HCG402wM3ngVa3RNTdxPSe1orBWGV/aRTDDo2UZTKnWSqe+vBbTW
         tlMGf0D8C6PeaVK/vZKeebN00ifxOGuomUs4E0fYQiotKz3oYaunNbxeKTc8k5VjIHrA
         wgsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714844067; x=1715448867;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lF9hGa2Fe1Mvyb7TMDOS1Nsom143EnG0rlaw7MDvQXo=;
        b=eMbLf2Eq3NusUxuV4XErvDZsgTl/FgwBgoiviaCuvHzVZpxaMw8N8jAgcnu587BHvO
         S3t1WfRnN1yMaBbfVQz6HJuQCSDWbSSXsDcPlJbV0r/4zUhkKdEfKjQPv9JKssstocoN
         L9vLvAz7msjnhmiGpOmOhKEcTHh27/41zWmxHDLPVoqUtT+NQwOu0lMXKJd/Ft++bXwT
         hwwRp/rwMdCvTD+2ISJNYAo+UJLWUUGS0h9vvkqyNLMnp/j7JXOg1RWRw2ghdTxRlMoq
         YQ8F1ceMlB10b9sHZ9CqM0DCS8ZAwW5YZkgin9C6beEr/Dlv8b1neya1ob3TO+b1APpm
         r8aw==
X-Forwarded-Encrypted: i=1; AJvYcCVWdQlERt4NOErUUjD4FkaCfJqYAv8I/g8sEzr3hCdd23HQv3rPg/iNpsF9mPlac9YeSgBC8UF+E66p5GwuURIe+bd1PVf92wU0v45kD+nRBrkC
X-Gm-Message-State: AOJu0Yx3lzHU2v8OukjVYN8o+E2EmoClrJm3nFNGyU/bg9ckY56XYzWJ
	A+7i/s7V9Q3oHB7JXNZ5E15qnx1Y4azOPDG+d745j8Psu0W183cmF4ESsFYdyg==
X-Google-Smtp-Source: AGHT+IGtCliIpa2MVbSI04PDWYwtgRMCuPn2T1Pi/UZAfpS5rQ03K3VFFKpFTdeHLmmbH2XLRGtNrA==
X-Received: by 2002:a05:6358:5290:b0:17b:b559:2ba3 with SMTP id g16-20020a056358529000b0017bb5592ba3mr7033372rwa.11.1714844066742;
        Sat, 04 May 2024 10:34:26 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id j1-20020a634a41000000b006204acd1e0esm1658107pgl.10.2024.05.04.10.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:34:26 -0700 (PDT)
Date: Sat, 4 May 2024 23:04:20 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 13/14] arm64: dts: rockchip: Add PCIe endpoint mode
 support
Message-ID: <20240504173420.GJ4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-13-a0f5ee2a77b6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-13-a0f5ee2a77b6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_103429_454999_B9D007EB 
X-CRM114-Status: GOOD (  16.51  )
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

T24gVHVlLCBBcHIgMzAsIDIwMjQgYXQgMDI6MDE6MTBQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBBZGQgYSBkZXZpY2UgdHJlZSBub2RlIHJlcHJlc2VudGluZyBQQ0llIGVuZHBvaW50
IG1vZGUuCj4gCj4gVGhlIGNvbnRyb2xsZXIgY2FuIGVpdGhlciBiZSBjb25maWd1cmVkIHRvIHJ1
biBpbiBSb290IENvbXBsZXggb3IgRW5kcG9pbnQKPiBub2RlLgo+IAo+IElmIGEgdXNlciB3YW50
cyB0byBydW4gdGhlIGNvbnRyb2xsZXIgaW4gZW5kcG9pbnQgbW9kZSwgdGhlIHVzZXIgaGFzIHRv
Cj4gZGlzYWJsZSB0aGUgcGNpZTN4NCBub2RlIGFuZCBlbmFibGUgdGhlIHBjaWUzeDRfZXAgbm9k
ZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4K
PiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODguZHRzaSB8IDM1ICsr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzNSBpbnNl
cnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC5kdHNpCj4g
aW5kZXggNTUxOWMxNDMwY2I3Li4wOWEwNmU4YzQzYjcgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODguZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LmR0c2kKPiBAQCAtMTM2LDYgKzEzNiw0MSBAQCBwY2llM3g0X2lu
dGM6IGxlZ2FjeS1pbnRlcnJ1cHQtY29udHJvbGxlciB7Cj4gIAkJfTsKPiAgCX07Cj4gIAo+ICsJ
cGNpZTN4NF9lcDogcGNpZS1lcEBmZTE1MDAwMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxyazM1ODgtcGNpZS1lcCI7Cj4gKwkJY2xvY2tzID0gPCZjcnUgQUNMS19QQ0lFXzRMX01TVFI+
LCA8JmNydSBBQ0xLX1BDSUVfNExfU0xWPiwKPiArCQkJIDwmY3J1IEFDTEtfUENJRV80TF9EQkk+
LCA8JmNydSBQQ0xLX1BDSUVfNEw+LAo+ICsJCQkgPCZjcnUgQ0xLX1BDSUVfQVVYMD4sIDwmY3J1
IENMS19QQ0lFNExfUElQRT47Cj4gKwkJY2xvY2stbmFtZXMgPSAiYWNsa19tc3QiLCAiYWNsa19z
bHYiLAo+ICsJCQkgICAgICAiYWNsa19kYmkiLCAicGNsayIsCj4gKwkJCSAgICAgICJhdXgiLCAi
cGlwZSI7Cj4gKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDI2MyBJUlFfVFlQRV9MRVZFTF9ISUdI
IDA+LAo+ICsJCQkgICAgIDxHSUNfU1BJIDI2MiBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+ICsJ
CQkgICAgIDxHSUNfU1BJIDI2MSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+ICsJCQkgICAgIDxH
SUNfU1BJIDI2MCBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+ICsJCQkgICAgIDxHSUNfU1BJIDI1
OSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+ICsJCQkgICAgIDxHSUNfU1BJIDI3MSBJUlFfVFlQ
RV9MRVZFTF9ISUdIIDA+LAo+ICsJCQkgICAgIDxHSUNfU1BJIDI3MiBJUlFfVFlQRV9MRVZFTF9I
SUdIIDA+LAo+ICsJCQkgICAgIDxHSUNfU1BJIDI2OSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+LAo+
ICsJCQkgICAgIDxHSUNfU1BJIDI3MCBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+Owo+ICsJCWludGVy
cnVwdC1uYW1lcyA9ICJzeXMiLCAicG1jIiwgIm1zZyIsICJsZWdhY3kiLCAiZXJyIiwKPiArCQkJ
CSAgImRtYTAiLCAiZG1hMSIsICJkbWEyIiwgImRtYTMiOwo+ICsJCW1heC1saW5rLXNwZWVkID0g
PDM+Owo+ICsJCW51bS1sYW5lcyA9IDw0PjsKPiArCQlwaHlzID0gPCZwY2llMzBwaHk+Owo+ICsJ
CXBoeS1uYW1lcyA9ICJwY2llLXBoeSI7Cj4gKwkJcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUksz
NTg4X1BEX1BDSUU+Owo+ICsJCXJlZyA9IDwweGEgMHg0MDAwMDAwMCAweDAgMHgwMDEwMDAwMD4s
Cj4gKwkJICAgICAgPDB4YSAweDQwMTAwMDAwIDB4MCAweDAwMTAwMDAwPiwKPiArCQkgICAgICA8
MHgwIDB4ZmUxNTAwMDAgMHgwIDB4MDAwMTAwMDA+LAo+ICsJCSAgICAgIDwweDkgMHgwMDAwMDAw
MCAweDAgMHg0MDAwMDAwMD4sCj4gKwkJICAgICAgPDB4YSAweDQwMzAwMDAwIDB4MCAweDAwMTAw
MDAwPjsKPiArCQlyZWctbmFtZXMgPSAiZGJpIiwgImRiaTIiLCAiYXBiIiwgImFkZHJfc3BhY2Ui
LCAiYXR1IjsKCklzbid0IGl0IGNvbW1vbiB0byBkZWZpbmUgJ3JlZycgcHJvcGVydHkganVzdCBi
ZWxvdyAnY29tcGF0aWJsZSc/CgotIE1hbmkKCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p
4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
