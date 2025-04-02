Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49173C36014
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Apr 2025 07:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dcoXpnCFUDqvmPx0F0kNtSYpwXLlZ1G4kOXb+Hkn68=; b=YgIYR/zCn/Kn54
	2R5+RTGHiCbAHYp7G42zsO2p4+mRkRQ+nwH7vnSNVjRYk+S1W6l+uBDN09mDr7fqSDLTluNt20aDW
	Qk+S6NGTFsw72gtl4/WPlsUOscvRoj8Hc+1dukFwLyeYT7zv9h7RCka8pgn+YXSflJAjA+GmAcJTJ
	wYDqbapdI5DcL9uyDnU32ldPkDudpg9VtE7oy1l+rGgBB2kHRYenoAAohcBvZF6k1nYcz5z38RIYu
	bMz1aO96yHKnQG8wXJcKiCtYg31wYCGM9qjxyufq/+HiX0+qSC9bRDhj5H/BQWqJS0ygoVHoRSkyq
	8IsZWikvma0uukRZw0Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzsuM-00000005RZn-264s;
	Wed, 02 Apr 2025 07:53:10 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzsrp-00000005R7m-367v
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Apr 2025 07:50:35 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-224171d6826so103899805ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Apr 2025 00:50:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743580233; x=1744185033; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uNRTveRWVnz/0Xab+/KRVxCYrU4EE4wnJe0gfE8ybMI=;
        b=rkV3/Px9JpWsVnISZOjxx7bwZo4X7F1q/yq294DsczT1N78XB4xsdHPRwszlhHj56K
         fg+8cIMbq5xSBNjO4Odar67+tW2nGCoAcR+tjyfEbmLYiGXughwLvjw6LvcmPXsLOW7s
         WLu7fHUykcu9GCG9R4K91cF31MjgMpS7MqDMZA0AWHU7JnSzJLnJC0hgCnBq2ck699I9
         B/thepUhStC0HGVxbeyNeow7LA9FqbEbnMG+szt3RTS15iyj31ZajXZ2orRPub7+OxbR
         zZnc9Z9/MT6ycrK141NfhrCj+09rb9KS/+Wx/J2OQJ9iTXGGQPP0/Ku4VUQ4+VpE6yF4
         g1Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743580233; x=1744185033;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uNRTveRWVnz/0Xab+/KRVxCYrU4EE4wnJe0gfE8ybMI=;
        b=Gf9R6QAQcpIxuUID0rDyDMFQX4+fhkmqimw27Id4olXPR3DYV9qLxVLPDhgoYQ/F+2
         UuTUpimnZtntzmug9Q6hJOdRJ9vecD3baj+1GF8Ks4I+gLS4FhPgX0siTb53r1TBt5XN
         TCrjoEunsoutLT72HgmzpM7XrS1f+rF+pbfN46957r11VgAef9hmcMMHnitRMCu3ymm3
         O91EmusP35bc2iGEYUPPbL0YwHO5jdu3ynDTEpvudgEBIIA3iRrRSY6QnQ1Hcj9CvJSE
         Hq5tLaze75F6NWs56aYUN7GuGfwuVSjPIU8SjjubTB9vXc+ggiNe4mtXQyvMbHqbwNtA
         9n7w==
X-Forwarded-Encrypted: i=1; AJvYcCU5BFzYGE1aAzpv1PD0Jsipm2D+4Owo+NAhqyIZWE1qM+b+N2o9fntDS4HG6AwSV5nYkOi27uJTjKjLKN/big==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0RZPtBh68wYW+oNvZU3Qc9izUHp32znIIfTvNJX0178cjpc4g
	PwXQBUZSBvCKXk0JdKKM+QrMcM1aED5y3l6ohn7Fcclr2rHLm++LaihnnW2IPQ==
X-Gm-Gg: ASbGncvR/d9v2K83lXcXFDbtGaBAeaejMlsHbFdNoJTJNYcVkIJrMrwUjRJNOiYPBbj
	7x4Zi+ZSWeuIQ+Y/ZAGSKaBf3nh4KYWqsMRsqBkuyZlfWVTyR0qyJBJpSAyZTbczTPv4L90U6A0
	W50ryonFx8viuWYQGjBBzamStFCxbye7zQECMKCNpXamF2th/qF2g7r+bxyZuHB3b7yN4O3iHfC
	Ifd7HAJCj0J6xcPrZ5SZOskE3anEUq1LSj4F/LAmuHXOcR49cFlCQ6x4wAyeYGwRNIoK4RPtB24
	sK9bls3XS76NvVy6eozJY+pQMdfhCUzA6/PoGPZryMzwnnpq/XUlZZQC
X-Google-Smtp-Source: AGHT+IFbubLAcjIJmVW9Uzpo+2aLIIImOvMRGz22sNIc9vozaKUYwfB1hQ+2S1SCz/Ds6z7MJbmaXA==
X-Received: by 2002:a17:903:2405:b0:220:efc8:60b1 with SMTP id d9443c01a7336-2292f9e5226mr246523465ad.39.1743580233121;
        Wed, 02 Apr 2025 00:50:33 -0700 (PDT)
Received: from thinkpad ([120.56.205.103])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291eec71b2sm102550355ad.18.2025.04.02.00.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 00:50:32 -0700 (PDT)
Date: Wed, 2 Apr 2025 13:20:27 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] PCI: rockchip-ep: Mark RK3399 as intx_capable
Message-ID: <io3meoai7vhaxipgcxx3bjfmnwuudwxgwj55z4dh3m4zn5tf3l@w76fcj2mevlq>
References: <20250326200115.3804380-2-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250326200115.3804380-2-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_005033_842516_C2D46631 
X-CRM114-Status: GOOD (  17.23  )
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

T24gV2VkLCBNYXIgMjYsIDIwMjUgYXQgMDk6MDE6MTZQTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBSSzMzOTkgY2FuIHJhaXNlIElOVHggaW50ZXJydXB0cywgYXMgY2FuIGJlIHNlZW4g
YnkKPiByb2NrY2hpcF9wY2llX2VwX3NlbmRfaW50eF9pcnEoKS4KPiAKPiBUaGlzIGlzIGFsc28g
aW4gbGluZSB3aXRoIHRoZSByZWdpc3RlciBkZXNjcmlwdGlvbiBvZgo+IFBDSUVfQ0xJRU5UX0xF
R0FDWV9JTlRfQ1RSTCwgc2VjdGlvbiAiMTcuNi4zIFBDSWUgQ2xpZW50IERldGFpbCBSZWdpc3Rl
cgo+IERlc2NyaXB0aW9uIiBvZiB0aGUgUkszMzk5IFRSTS4KPiAKPiBUaHVzLCBtYXJrIFJLMzM5
OSBhcyBpbnR4X2NhcGFibGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogTmlrbGFzIENhc3NlbCA8Y2Fz
c2VsQGtlcm5lbC5vcmc+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5p
dmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoKPiAtLS0KPiAgZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
cGNpZS1yb2NrY2hpcC1lcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlw
LWVwLmMKPiBpbmRleCA4NWVhMzZkZjJmNTlhLi42MjZmNmIzMWIwZjY2IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4gKysrIGIvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiBAQCAtNjk0LDYgKzY5NCw3IEBA
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgcGNpX2VwY19mZWF0dXJlcyByb2NrY2hpcF9wY2llX2VwY19m
ZWF0dXJlcyA9IHsKPiAgCS5saW5rdXBfbm90aWZpZXIgPSB0cnVlLAo+ICAJLm1zaV9jYXBhYmxl
ID0gdHJ1ZSwKPiAgCS5tc2l4X2NhcGFibGUgPSBmYWxzZSwKPiArCS5pbnR4X2NhcGFibGUgPSB0
cnVlLAo+ICAJLmFsaWduID0gUk9DS0NISVBfUENJRV9BVF9TSVpFX0FMSUdOLAo+ICB9Owo+ICAK
PiAtLSAKPiAyLjQ5LjAKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k
4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
