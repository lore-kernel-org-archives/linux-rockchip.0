Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29B66C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 May 2024 17:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aLESRJZMPfcsoExLfovxYsKgCVTAURMD/JfWPlfesyE=; b=g7S2iL2HSD/5Jl
	5kc0J19Xx5+h3zTn2dBFr+N/KC4Yh3QM2Kxc+1eP0F4O5md57B0lNeeaeM1nDdxLuMUVVXJSPELb4
	p88uxYJl0ue/mtxYBHgnLvWDZyLygCk+94169M4H859SegHL01OydRVCylmv2RgF5FW16i+d4VJb/
	0ip7I7/0hX6LlZcmZVnYaowmHbGltpi8fQdmaOi5REvR3CqnQtuXqJKWMt/MkZ4KegN2yJhoZiZDF
	O3OpZ08B53f1z+geH/+bkEKudcQB/btCHUWfB9flmkFllO2ZH0QQKNSKqRvc3jo056qNNkj16FomN
	0WpcCnTNRLq/TjhA0M1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3J3G-00000002Xja-08OP;
	Sat, 04 May 2024 17:19:58 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3J3C-00000002Xj4-32nG
	for linux-rockchip@lists.infradead.org;
	Sat, 04 May 2024 17:19:56 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6f44bcbaae7so597586b3a.2
        for <linux-rockchip@lists.infradead.org>; Sat, 04 May 2024 10:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714843193; x=1715447993; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QPT0FiQAGgPquvop9IMIOlSx0gcl6L1N8v+sEDetyx8=;
        b=extcU9m4FczKJxIcGTp9DlOqtJOj4EL3zlJvuxSG3hccHcgBwUNkeRJPHTBAscNF+Q
         DEtila2nVOB0cy1RCcRRHlvY0UQ03gJBLZwt614dBRgQuHjKUCCrwvDY4upRQmLmslx9
         RoSGzmMO8awSX/lqe0Mi4Vc4KqHf/STUX91+ODZhRtz54cupBBlPLqj3snjUxkzPnYQQ
         2CxymRHUR4Z2fEPxE4xEG80e1O6D9BP5ot3DzRCrMXTjiwN6nmHERc9tkoIoeIC9glOR
         39hJBC87W/68tl3GydgSWGal4h2BsoISqvKN69ogCO3HQhSy47lbjOsOTyPd0D70abuR
         FXkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714843193; x=1715447993;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QPT0FiQAGgPquvop9IMIOlSx0gcl6L1N8v+sEDetyx8=;
        b=fZzAqlgVGELQTGszMM4GvlYIGqS9+TNtNfbuDTqbElEyGJgE+8IqGv+kj/+2frVqja
         i+GK42e7+u81f5goqMXZVMX4pjBsthRWTJkVphshZEgV31uAlDhdjGTifbQqn+G6dR7R
         A/ZpfmpzYKIjBgeHxr5GHE1Xp40UitV1Udb3C9mFvTn7oUMG9nWE7pjuxJpRT9jKpkXn
         JSYf23qfTz3phRef6iH/stJc/a9iqTgik/HKGTFKXlp+wNgup7JiZKXES7EMfrVduz0Q
         FlgZpn6urKVrY605bFHXzLio9ey4Zl2lnTURjYZ7SZ7awwQ6n2dfED/qceEXSbQqYvuS
         rywA==
X-Forwarded-Encrypted: i=1; AJvYcCVH+VfhH2qKV2N8evVaXnEHwKiVQASW2H1W1V/fUc73pgMEb8U736873BqSryYrseaDEnBengssnSoNa7zumrKMSaRA52eqOVyICwJ+aV1lcMaa
X-Gm-Message-State: AOJu0Yxnt6hnxdB1NtSujQllNlp5kBt6obtgyCNrn5s+hJryKRfMxxk7
	H/S5YvtrSti6+CFqVgqdAyRwVxazu1xVzdgfcPNJmQvFSlEnBthqn0HscXYKBg==
X-Google-Smtp-Source: AGHT+IGplHkYwzi+l22LCVcmkw49e67JxhbbLGaL/5wDHQNXDiHfmKQIXxi2afvNuzMmBKanrbZXWQ==
X-Received: by 2002:a05:6a00:3a20:b0:6ec:ebf4:3e8a with SMTP id fj32-20020a056a003a2000b006ecebf43e8amr6736256pfb.15.1714843193155;
        Sat, 04 May 2024 10:19:53 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id a5-20020aa78e85000000b006f4688c89b0sm541771pfr.120.2024.05.04.10.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:19:52 -0700 (PDT)
Date: Sat, 4 May 2024 22:49:46 +0530
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
Subject: Re: [PATCH v2 09/14] PCI: dw-rockchip: Refactor the driver to
 prepare for EP mode
Message-ID: <20240504171946.GF4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-9-a0f5ee2a77b6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-9-a0f5ee2a77b6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_101954_833326_91E2A6A0 
X-CRM114-Status: GOOD (  21.93  )
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

T24gVHVlLCBBcHIgMzAsIDIwMjQgYXQgMDI6MDE6MDZQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBUaGlzIHJlZmFjdG9ycyB0aGUgZHJpdmVyIHRvIHByZXBhcmUgZm9yIEVQIG1vZGUu
Cj4gQWRkIG9mLW1hdGNoIGRhdGEgdG8gdGhlIGV4aXN0aW5nIGNvbXBhdGlibGUsIGFuZCBleHBs
aWNpdGx5IGRlZmluZSBpdCBhcwo+IERXX1BDSUVfUkNfVFlQRS4gVGhpcyB3YXksIHdlIHdpbGwg
YmUgYWJsZSB0byBhZGQgRVAgbW9kZSBpbiBhIGZvbGxvdy11cAo+IHBhdGNoIGluIGEgbXVjaCBs
ZXNzIGludHJ1c2l2ZSB3YXksIHdoaWNoIG1ha2VzIHRoZSBmb2xsdXAtdXAgcGF0Y2hlcwo+IG11
Y2ggZWFzaWVyIHRvIHJldmlldy4KPiAKClNhbWUgY29tbWVudCBhcyBwcmV2aW91cyBwYXRjaC4K
Cj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UgaW50ZW5kZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTmlr
bGFzIENhc3NlbCA8Y2Fzc2VsQGtlcm5lbC5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDcyICsrKysrKysrKysrKysrKysrKysrKy0t
LS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNTcgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9j
a2NoaXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+
IGluZGV4IDQwMjNmZDg2MTc2Zi4uZjk4NTUzOWZiMDBhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IEBAIC01OCw2ICs1OCwxMSBAQCBz
dHJ1Y3Qgcm9ja2NoaXBfcGNpZSB7Cj4gIAlzdHJ1Y3QgZ3Bpb19kZXNjCQkqcnN0X2dwaW87Cj4g
IAlzdHJ1Y3QgcmVndWxhdG9yICAgICAgICAgICAgICAgICp2cGNpZTN2MzsKPiAgCXN0cnVjdCBp
cnFfZG9tYWluCQkqaXJxX2RvbWFpbjsKPiArCWVudW0gZHdfcGNpZV9kZXZpY2VfbW9kZQltb2Rl
Owo+ICt9Owo+ICsKPiArc3RydWN0IHJvY2tjaGlwX3BjaWVfb2ZfZGF0YSB7Cj4gKwllbnVtIGR3
X3BjaWVfZGV2aWNlX21vZGUgbW9kZTsKPiAgfTsKPiAgCj4gIHN0YXRpYyBpbnQgcm9ja2NoaXBf
cGNpZV9yZWFkbF9hcGIoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwLCB1MzIgcmVnKQo+
IEBAIC0xOTUsNyArMjAwLDYgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2hvc3RfaW5pdChz
dHJ1Y3QgZHdfcGNpZV9ycCAqcHApCj4gIAlzdHJ1Y3QgZHdfcGNpZSAqcGNpID0gdG9fZHdfcGNp
ZV9mcm9tX3BwKHBwKTsKPiAgCXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCA9IHRvX3Jv
Y2tjaGlwX3BjaWUocGNpKTsKPiAgCXN0cnVjdCBkZXZpY2UgKmRldiA9IHJvY2tjaGlwLT5wY2ku
ZGV2Owo+IC0JdTMyIHZhbCA9IEhJV09SRF9VUERBVEVfQklUKFBDSUVfTFRTU01fRU5BQkxFX0VO
SEFOQ0UpOwo+ICAJaW50IGlycSwgcmV0Owo+ICAKPiAgCWlycSA9IG9mX2lycV9nZXRfYnluYW1l
KGRldi0+b2Zfbm9kZSwgImxlZ2FjeSIpOwo+IEBAIC0yMDksMTIgKzIxMyw2IEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfcGNpZV9ob3N0X2luaXQoc3RydWN0IGR3X3BjaWVfcnAgKnBwKQo+ICAJaXJx
X3NldF9jaGFpbmVkX2hhbmRsZXJfYW5kX2RhdGEoaXJxLCByb2NrY2hpcF9wY2llX2ludHhfaGFu
ZGxlciwKPiAgCQkJCQkgcm9ja2NoaXApOwo+ICAKPiAtCS8qIExUU1NNIGVuYWJsZSBjb250cm9s
IG1vZGUgKi8KPiAtCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgdmFsLCBQQ0lF
X0NMSUVOVF9IT1RfUkVTRVRfQ1RSTCk7Cj4gLQo+IC0Jcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBi
KHJvY2tjaGlwLCBQQ0lFX0NMSUVOVF9SQ19NT0RFLAo+IC0JCQkJIFBDSUVfQ0xJRU5UX0dFTkVS
QUxfQ09OVFJPTCk7Cj4gLQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gQEAgLTI4OCwxMyArMjg2
LDQxIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfcGNpZV9vcHMgZHdfcGNpZV9vcHMgPSB7Cj4g
IAkuc3RhcnRfbGluayA9IHJvY2tjaGlwX3BjaWVfc3RhcnRfbGluaywKPiAgfTsKPiAgCj4gK3N0
YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9jb25maWd1cmVfcmMoc3RydWN0IHJvY2tjaGlwX3BjaWUg
KnJvY2tjaGlwKQo+ICt7Cj4gKwlzdHJ1Y3QgZHdfcGNpZV9ycCAqcHA7Cj4gKwl1MzIgdmFsOwo+
ICsKPiArCWlmICghSVNfRU5BQkxFRChDT05GSUdfUENJRV9ST0NLQ0hJUF9EV19IT1NUKSkKPiAr
CQlyZXR1cm4gLUVOT0RFVjsKClJpZ2h0IG5vdyB0aGlzIGRyaXZlciBpcyBvbmx5IHNlbGVjdGVk
IHVzaW5nIENPTkZJR19QQ0lFX1JPQ0tDSElQX0RXX0hPU1QuIFNvCnRoaXMgY2hlY2sgaXMgbm90
IHZhbGlkIGluIF90aGlzX3BhdGNoLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j
4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
