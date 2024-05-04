Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 712B3C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 May 2024 17:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTFqzNeFxqo/OR7U/40OqycxzbhZ/JBaH7tt7hp4IDg=; b=oAIu8POEWYDupd
	8ze042To+15tjjfl+Vp6//YcSo6KSyyLLnwucvLTtGA798y3BBiQlKbFbucWBClF/lR53vGSmeNza
	RPLVna3JX6Biz46XsKviwknaXcjGRKeCJK6O2c9llR8kHwF949bjg57zhO2WUVpDSwKsbM/n2oLTe
	jwTCIMxTabYSZOuguWvl5+e7yWmsxnDZMUGJUW5ZyHqUzLxnIzG0boxWWCt3imRt1EtFcsqSvhmvE
	kYEeKlkYUv+WPntacT3Lb2cHEB6NQx37D5uKkUK/E5E4XWbbI8mkuH/QTZ7FCUIO0jYkA0mn1gipo
	5sHYG5WnEoTkkUw0O1Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3J4M-00000002Xu9-2c8A;
	Sat, 04 May 2024 17:21:06 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3J4K-00000002Xte-1bRt
	for linux-rockchip@lists.infradead.org;
	Sat, 04 May 2024 17:21:06 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1ec92e355bfso6513825ad.3
        for <linux-rockchip@lists.infradead.org>; Sat, 04 May 2024 10:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714843262; x=1715448062; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9laX2V+CVuA7h00Ylv6RDCBuojEdnvBgJODYE51PhlU=;
        b=vUEXDxtgXR/Z+m/LvmVt3sz+gtEDVxjKoWJ+WBocZBH5EbLUC6fMFZoFbHJRZQZGkX
         plT2FdGFbjW7rxJVcR7Vnph/r1N+rFLNRvTye75DuBOmzz8GuXJA2O93fTpcTf+qfDuy
         Lsz5B8b/YSnEh6maA7w6IFRAdOht1IBXnSxRZFixfx9stK1hXTWgL+/bVVHnxywjkVko
         Wo+2GGfrfBGKligI0FT5qB7/24SH6ZACv0Jr7+BouA1SSMiZZNyoTv4kVE6m3i/IfpuU
         GP6jYXZH37Pr/rNnIgye26pWgFczgf31Ng76+t6EYHs0f9WTvK0YIBJgsYGv8Pzs7YOj
         V6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714843262; x=1715448062;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9laX2V+CVuA7h00Ylv6RDCBuojEdnvBgJODYE51PhlU=;
        b=UesjsMgESGrGr6WwNBWpqyvSk57oTiqep8UfpZbDPZmKS/dFqzkHA1U4QLTiHifP7K
         H1iT6wc3lea8b/pIqlE9mgQpsceO7QEntVMJ30CJfrLkphmBuoChZRAXd02mg0vPVP8e
         eC1RjugdAPHh8nm0xlwafqnKSIFZSIpmbEGTRbndPyTSgttqFQvkSs62TgfAE+2n2rOT
         MZOMFEquQiEekKwXlR2WFlHG/svMjFsEZc6Lyvd4MBtCF7q/K3aS49sde2wIKP52gLcf
         HSrKd4nUNg3Q0FWP//IJ7zrPWuHqaIO5m3YF1NEuiw5ADlO4PyQY5xh/iYaPVErwvAbr
         AaiA==
X-Forwarded-Encrypted: i=1; AJvYcCV+jYRiGPzez1CkextawrCujd+/jO6bevPnybdhvJiAfuZ+bHl9RbA5tId+otyyQ5f2DjZ+lOK4YafxHgQqSjRD1Dt7LcjeTBG2guW7yxZe42Lf
X-Gm-Message-State: AOJu0Yzu/tzMZJXO0GbOX77U84lcs25aYNIglV7DHKs614SAtdKv8XPP
	pZXAlQCRkJf1pg29hKGu8s+LmtsYABRLkN6lutHWVAOOTx9lLS1xlO6mDY1wNA==
X-Google-Smtp-Source: AGHT+IFyjaSOMKjB8qp6aX4zhqJKBtMXCWvr3PoileGxES65eHv6nsequF71TgXi/KdDGzd92JvURA==
X-Received: by 2002:a17:902:d2c6:b0:1eb:b50e:3577 with SMTP id n6-20020a170902d2c600b001ebb50e3577mr7317773plc.56.1714843262260;
        Sat, 04 May 2024 10:21:02 -0700 (PDT)
Received: from thinkpad ([220.158.156.237])
        by smtp.gmail.com with ESMTPSA id p9-20020a170902780900b001ea90148816sm5356597pll.253.2024.05.04.10.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 May 2024 10:21:01 -0700 (PDT)
Date: Sat, 4 May 2024 22:50:54 +0530
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
Subject: Re: [PATCH v2 10/14] PCI: dw-rockchip: Add explicit
 rockchip,rk3588-pcie compatible
Message-ID: <20240504172054.GG4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-10-a0f5ee2a77b6@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240430-rockchip-pcie-ep-v1-v2-10-a0f5ee2a77b6@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_102104_467228_199AA219 
X-CRM114-Status: GOOD (  17.70  )
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

T24gVHVlLCBBcHIgMzAsIDIwMjQgYXQgMDI6MDE6MDdQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBUaGUgcm9ja2NoaXAtZHctcGNpZS55YW1sIGRldmljZSB0cmVlIGJpbmRpbmcgYWxy
ZWFkeSBkZWZpbmVzCj4gcm9ja2NoaXAscmszNTg4LXBjaWUgYXMgYSBzdXBwb3J0ZWQgY29tcGF0
aWJsZSBzdHJpbmcuCj4gCj4gQWRkIGFuIGV4cGxpY2l0IHJvY2tjaGlwLHJrMzU4OC1wY2llIGVu
dHJ5IHRvIG1ha2UgaXQgZWFzaWVyIHRvIGZpbmQgdGhlCj4gZHJpdmVyIHRoYXQgaW1wbGVtZW50
cyB0aGlzIGNvbXBhdGlibGUgc3RyaW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pa2xhcyBDYXNz
ZWwgPGNhc3NlbEBrZXJuZWwub3JnPgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCA0ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tj
aGlwLmMKPiBpbmRleCBmOTg1NTM5ZmIwMGEuLmYzOGQyNjdlNGU2NCAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiArKysgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBAQCAtNDAwLDYgKzQw
MCwxMCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCByb2NrY2hpcF9wY2llX29m
X21hdGNoW10gPSB7Cj4gIAkJLmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LXBjaWUiLAo+
ICAJCS5kYXRhID0gJnJvY2tjaGlwX3BjaWVfcmNfb2ZfZGF0YSwKPiAgCX0sCj4gKwl7Cj4gKwkJ
LmNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LXBjaWUiLAo+ICsJCS5kYXRhID0gJnJvY2tj
aGlwX3BjaWVfcmNfb2ZfZGF0YSwKClRoaXMgaXMgbm90IHJlcXVpcmVkLiBJbiBmYWN0LCBpdCBp
cyBlbmNvdXJhZ2VkIHRvIGp1c3QgdXNlIGZhbGxiYWNrIGNvbXBhdGlibGUKaW4gRFQgYW5kIG5v
dCBhZGQgbmV3IGVudHJpZXMgaW4gZHJpdmVyLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
