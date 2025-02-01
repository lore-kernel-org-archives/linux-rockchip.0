Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9A82C02192
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Feb 2025 15:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1j9vgARoFYaxcsNi/5zROwHS6MaOJPKXfO2JklNWAzA=; b=2U4/ZKTqL7QOdu
	3ufhHH3wV7nMkZi4kKSbdl+8uFp1Wg1ozpsw69rK7xhzO1HdcRkWnNC083Q5tNpFhKxff8oREy6zz
	R2I7m+EKfv1foZ4vrlwr3CuVjiCxbZ56JygpM17nkBKsVMrBV6kQEqdLtTgdkyyrhXKY9H3mQseOm
	V7+maZJQMbYVfYtBIFFnbDIoayBj7DowuVg82EiV1asQ1qXHbKogd0HV5hqVr9xzZB/uTlWqe0QS4
	I325/44gMdpJE5GK9zRKOKCxOG8rRahobHMPBJzHOz+qKh5nP7elAELEUyDI5bjPPUUb6m7MIaZRH
	S7HDbffqKFTWXrFpcE0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1teFXO-0000000CoVF-1mQV;
	Sat, 01 Feb 2025 15:36:02 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1teFXK-0000000CoUR-2I9O
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Feb 2025 15:35:59 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2161eb94cceso35696095ad.2
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Feb 2025 07:35:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738424157; x=1739028957; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NgK4G7cVRPxNbsx8fhvydaH8JOFZ6CJwy0WoHgTVDx8=;
        b=dOYUxIwxty2C4UWVhgkSnK9wAVG45D91XNgI2usJOlc+0GZumPXrcBMC+9XcIZmdgw
         S06IR9st3azbGUo6vgltix4g9XD55VZ9nuyDTbtndXnQX+HrYsikYnhSiFbioYzMjbQT
         G973atKsOHJIU2mb5wMRfhcz4bWIjb9NveILWyHVnWepo6pCvCRn+1HNfCUCUQFgwrs4
         sE4hchi3fvKjg2mZPPAsmBCM1KgigSsLkJ50LaKf2hRApvLc++JbWLfgD7WQMfFo+2LX
         arQFoNmUWXRML5VvCAae4RPTQ3OiqFoYIJ5XehksxpCJC+WrkIHMzff8iZ38PUmY2p+Y
         eBtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738424157; x=1739028957;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NgK4G7cVRPxNbsx8fhvydaH8JOFZ6CJwy0WoHgTVDx8=;
        b=CwNufZToVDz19+T4m0SZV4vJWCUKvl4LyS50hf0qBPGP5TyHowADzAos88xq4HtgH+
         2aLxTmXdQZDfOGUXnqCgsCJ3/og5+WttFapH1Ff/YntYhyMlbIBUiJcdL5G04u7v517z
         h9XpSwurQ/16JkRROlN7RoAC3jIghl/1K9sdLIrQYUmDvy0BXneGgLR49DtO8IMzJPy1
         lZ0KpAjlmMGFO/jOh+1uqpj3/GxrLLD8Gnha0AR9/D9HG0UTynvn9F1ORdM0JXvBzmcY
         dfgrASgsq7HlLDn4RQPZJnhlVTxGAIs3J+O2IxoiOPpCbXgk/3PdZYuH4P/Qoyxv2+7q
         fHgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwgF41kuSpMKrxPDATDy2tpCvNZvblyteULlXMT+rG6ppZ+q9cvNqdOvpHuYI+PqnMx1qge7Nqt2lFTTII5w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxQMVvNVGOPsxFMjpSThOXOZeE32MJAxzBv3khl/wW+sYY/77AD
	b9hBEXAF/2VDVC9J+uvUaSQqjxXsBwUKowQJz81ERBr1gDNfzEF8/Iwnto8YFYH7tk7FetcTOdI
	=
X-Gm-Gg: ASbGnctcqR63y8t9dsRWiQfP/Rt0Dd2+W4Wa6kQwM6p8u8F8axhGACKsMXMj6yeSVdD
	59HxuRkUZrp5Mp71wAyNG9xLu+L98eiRzbjp+wH6nnOWa+GivQ+H3I4DBjzKLKEbKmPRA07cr3p
	Jv4TuIpugPcinSfKTwKlsV2uJcL5n2CtQy1PBHUTymJu4wzx5XfxJFh9nW7xbybvS7t1ELWrTEN
	Ahz3v3Cb1e77pRCV/yvDHhmEq4GR/Cp/d1ORpGu6ULSa9IJK5RUYbhd7XY7V1KbXOLbCDg9a1fb
	BfXNE8qcsgSJajsD7Mwb3X2EhcU=
X-Google-Smtp-Source: AGHT+IGzlTHcr2GwqKspBtJB7T7HsAuTwQj90njS9oPWBHSKjkl6folIH9PdSTDNGx/ngMu4/vXRyg==
X-Received: by 2002:a05:6300:710f:b0:1ed:a565:f80e with SMTP id adf61e73a8af0-1eda566b50cmr5077054637.14.1738424157428;
        Sat, 01 Feb 2025 07:35:57 -0800 (PST)
Received: from thinkpad ([120.56.202.249])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-acec047944csm4891617a12.54.2025.02.01.07.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Feb 2025 07:35:56 -0800 (PST)
Date: Sat, 1 Feb 2025 21:05:49 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v6 7/7] arm64: dts: rockchip: Add UFS support for RK3576
 SoC
Message-ID: <20250201153549.dusrfjrxxrizmcfa@thinkpad>
References: <1737428427-32393-1-git-send-email-shawn.lin@rock-chips.com>
 <1737428427-32393-8-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1737428427-32393-8-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250201_073558_598047_EC4C01DB 
X-CRM114-Status: GOOD (  17.18  )
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

T24gVHVlLCBKYW4gMjEsIDIwMjUgYXQgMTE6MDA6MjdBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEFkZCB1ZnNoYyBub2RlIHRvIHJrMzU3Ni5kdHNpLCBzbyB0aGUgYm9hcmQgdXNpbmcgVUZT
IGNvdWxkCj4gZW5hYmxlIGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24u
bGluQHJvY2stY2hpcHMuY29tPgoKQWNrZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFu
aXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgpTbWFsbCBuaXQgYmVsb3cuCgo+IAo+IC0t
LQo+IAo+IENoYW5nZXMgaW4gdjY6Cj4gLSByZW1vdmUgY29tbWVudHMgc3VnZ2VzdGVkIGJ5IE1h
bmkKPiAKPiBDaGFuZ2VzIGluIHY1OiBOb25lCj4gQ2hhbmdlcyBpbiB2NDogTm9uZQo+IENoYW5n
ZXMgaW4gdjM6IE5vbmUKPiBDaGFuZ2VzIGluIHYyOiBOb25lCj4gCj4gIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0c2kgfCAyNCArKysrKysrKysrKysrKysrKysrKysrKysK
PiAgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTc2LmR0c2kKPiBpbmRleCA0ZGRlOTU0Li5iYjc4NmJkIDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0c2kKPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpCj4gQEAgLTEyMjEsNiArMTIy
MSwzMCBAQAo+ICAJCQl9Owo+ICAJCX07Cj4gIAo+ICsJCXVmc2hjOiB1ZnNoY0AyYTJkMDAwMCB7
Cj4gKwkJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTc2LXVmc2hjIjsKPiArCQkJcmVnID0g
PDB4MCAweDJhMmQwMDAwIDAgMHgxMDAwMD4sCj4gKwkJCSAgICAgIDwweDAgMHgyYjA0MDAwMCAw
IDB4MTAwMDA+LAo+ICsJCQkgICAgICA8MHgwIDB4MjYwMWYwMDAgMCAweDEwMDA+LAo+ICsJCQkg
ICAgICA8MHgwIDB4MjYwM2MwMDAgMCAweDEwMDA+LAo+ICsJCQkgICAgICA8MHgwIDB4MmEyZTAw
MDAgMCAweDEwMDAwPjsKClVzZSAweDAgZm9yIGNvbnNpc3RlbmN5LgoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
