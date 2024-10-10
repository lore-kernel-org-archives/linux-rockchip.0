Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C748ECF07C4
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 08:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x8cJTHBFcHYdxaqIDcMpyK/Cl5/4rFM3x60gI9t8m44=; b=PTL5+qeZQP76Wa
	Xm9A0T369Xs1Y5I7hu6E88xhe6vTwhOfhyyHz5bNd3bbQkkMvxz3mro37HQKSduQwkclj4m5tRmNc
	ZlxHRHP9OfRMCaTtu+l0QBNYjS+H1Zd0WgiDeSWHVZlnZ7hQFARN3ChC62N7PDPx6xLYabWAmUiUk
	A1lluo3p6/MisTTm8MGgVd8+pKG/DNt9IRnZ5C51Q/hWuILwYj2JubOKFxHIsZTH4xYGSY2OebN4C
	2ndxhBhCj5ObpnpVT3QecIJeEreiMvuf8htJCCr9ObZWCFpa9sZ7SW2qpcsZZdpEKPBPtpdPT/Riz
	h91riPVioCjmlEAl4Q1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syoYv-0000000C0az-3eQy;
	Thu, 10 Oct 2024 08:30:21 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syoTl-0000000BzK0-3RJF
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 08:25:03 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-71df0dbee46so512657b3a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 01:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728548701; x=1729153501; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pVzMF/duhcvKBieDg2vYWDTmVx1/9zDiDzFT1Y/Jxgw=;
        b=Y+cMUvAWVo8u2fPIS2SfsVV6cCnzDJGyaoC2J/YXBuj5U6RHfsnzmt93EDnqq2OL1s
         ZIz1QOoiYieik2HS9+OI8iU0bxOes20X65GJP6c092qQR8AeG7kLYOYDDV4+qqTfEGhv
         aMVAczqXOtQtBBK6uMmDwLe93JlmWOC2p+3phrl3GPTtGiZgpGhCrTgVhgktTj7fmz/o
         ujT35K/AIxr8cIHFUGWW2g8/hxUKk4qtOpNnYXLhuggXk3+jRJ8BuNemVdZ9ek0BqIzf
         dmTfZID7pNIr+vW7M6mMEPl7FuuJ8QEXSHLdvwi3k4dxxtMrSjsRGfHg4iFB/XHuNg2+
         KPfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728548701; x=1729153501;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pVzMF/duhcvKBieDg2vYWDTmVx1/9zDiDzFT1Y/Jxgw=;
        b=kmA/1fO6sWiUJt21SsbIGm/45Om7uJBNAlZYpvVsCzEeGzjTfmXn1wQ0VzFJDNa0jD
         /LxeNyoPZMzue40l8qoArbCZETiOPzZc1Osrf0f/X4ibCTfzIpDTuiX7DV4vbrwV7qo4
         OKUToYDQZeHYzPWtF7byG0bm8W9cQeSxH/6cq2Y8pHmYiTTlZZFNzrtt4EWfcm3OpkGB
         40lvCS124bFATewfUmVWZGsXi6Fn3isqO1+Fs4qDaVcMuZeXFoHVzXNSLqdbLYCyYbtb
         6aFmw9RR3wdDTc4wb+oNQiGOti52f5q3BVFODtGW9+I0TtCKPhFNv1fj0SR7MidXowUH
         K6wQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcDcU+zpma0kVdQdsQs1IzwTwyag+yBMYdJ2mua/dsfKe+GGUUW9FPfUeIkl5TWpxSkHrV/u6gcG8ngbU5JQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx7rUwJ6iKfDV+FuK5P/dYHdYA39kwVGjQV1fp2lac3vZNVvF8o
	ovmY0Imc7YeCRVOKkeRMoTz5OfZ37j0XGbpv8udc22vPnPLK/kepO83PcJuPSQ==
X-Google-Smtp-Source: AGHT+IFzZHkwvdoVYUTrMClpey36bmT0c8R68OOWU2q2z8TBVcF9DQcAzhzfY9NVpI7L4XVQJ154Rg==
X-Received: by 2002:a05:6a20:9f0a:b0:1cf:2bb8:f38b with SMTP id adf61e73a8af0-1d8a3c4e2a7mr7301538637.38.1728548700720;
        Thu, 10 Oct 2024 01:25:00 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2ab109e4sm572704b3a.206.2024.10.10.01.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 01:25:00 -0700 (PDT)
Date: Thu, 10 Oct 2024 13:54:54 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 09/12] PCI: rockship-ep: Introduce
 rockchip_pcie_ep_stop()
Message-ID: <20241010082454.bkmqh7h3jctvtj27@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-10-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-10-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_012501_888700_FA543895 
X-CRM114-Status: GOOD (  19.53  )
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

SSB0aGluayB0aGUgc3ViamVjdCBzaG91bGQgcmVmbGVjdCBjYWxsYmFjayBpbXBsZW1lbnRhdGlv
bi4gTGlrZSwKClBDSTogcm9ja2NoaXAtZXA6IEltcGxlbWVudCBwY2lfZXBjX29wczo6c3RvcF9s
aW5rKCkgY2FsbGJhY2sKCk9uIE1vbiwgT2N0IDA3LCAyMDI0IGF0IDAxOjEyOjE1UE0gKzA5MDAs
IERhbWllbiBMZSBNb2FsIHdyb3RlOgo+IERlZmluZSB0aGUgRVBDIG9wZXJhdGlvbiAtPnN0b3Ag
Zm9yIHRoZSByb2NrY2hpcCBlbmRwb2ludCBkcml2ZXIgd2l0aAo+IHRoZSBmdW5jdGlvbiByb2Nr
Y2hpcF9wY2llX2VwX3N0b3AoKS4gVGhpcyBmdW5jdGlvbiBkaXNhYmxlcyBsaW5rCj4gdHJhaW5p
bmcgYW5kIHRoZSBjb250cm9sbGVyIGNvbmZpZ3VyYXRpb24sIGFzIHRoZSByZXZlcnNlIHRvIHdo
YXQKPiB0aGUgc3RhcnQgb3BlcmF0aW9uIGRlZmluZWQgd2l0aCByb2NrY2hpcF9wY2llX2VwX3N0
YXJ0KCkgZG9lcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBEYW1pZW4gTGUgTW9hbCA8ZGxlbW9hbEBr
ZXJuZWwub3JnPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5h
bi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jIHwgMTMgKysrKysrKysrKysrKwo+ICBkcml2ZXJz
L3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCAgICB8ICAxICsKPiAgMiBmaWxlcyBjaGFu
Z2VkLCAxNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJv
Y2tjaGlwLWVwLmMKPiBpbmRleCA5OWYyNmY0YTQ4NWIuLmE4MDFlMDQwYmNhZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYwo+ICsrKyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4gQEAgLTQ2OCw2ICs0Njgs
MTggQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2VwX3N0YXJ0KHN0cnVjdCBwY2lfZXBjICpl
cGMpCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9l
cF9zdG9wKHN0cnVjdCBwY2lfZXBjICplcGMpCj4gK3sKPiArCXN0cnVjdCByb2NrY2hpcF9wY2ll
X2VwICplcCA9IGVwY19nZXRfZHJ2ZGF0YShlcGMpOwo+ICsJc3RydWN0IHJvY2tjaGlwX3BjaWUg
KnJvY2tjaGlwID0gJmVwLT5yb2NrY2hpcDsKPiArCj4gKwkvKiBTdG9wIGxpbmsgdHJhaW5pbmcg
YW5kIGRpc2FibGUgY29uZmlndXJhdGlvbiAqLwo+ICsJcm9ja2NoaXBfcGNpZV93cml0ZShyb2Nr
Y2hpcCwKPiArCQkJICAgIFBDSUVfQ0xJRU5UX0NPTkZfRElTQUJMRSB8Cj4gKwkJCSAgICBQQ0lF
X0NMSUVOVF9MSU5LX1RSQUlOX0RJU0FCTEUsCj4gKwkJCSAgICBQQ0lFX0NMSUVOVF9DT05GSUcp
Owo+ICt9Cj4gKwo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9lcGNfZmVhdHVyZXMgcm9ja2No
aXBfcGNpZV9lcGNfZmVhdHVyZXMgPSB7Cj4gIAkubGlua3VwX25vdGlmaWVyID0gZmFsc2UsCj4g
IAkubXNpX2NhcGFibGUgPSB0cnVlLAo+IEBAIC00OTIsNiArNTA0LDcgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBwY2lfZXBjX29wcyByb2NrY2hpcF9wY2llX2VwY19vcHMgPSB7Cj4gIAkuZ2V0X21z
aQk9IHJvY2tjaGlwX3BjaWVfZXBfZ2V0X21zaSwKPiAgCS5yYWlzZV9pcnEJPSByb2NrY2hpcF9w
Y2llX2VwX3JhaXNlX2lycSwKPiAgCS5zdGFydAkJPSByb2NrY2hpcF9wY2llX2VwX3N0YXJ0LAo+
ICsJLnN0b3AJCT0gcm9ja2NoaXBfcGNpZV9lcF9zdG9wLAo+ICAJLmdldF9mZWF0dXJlcwk9IHJv
Y2tjaGlwX3BjaWVfZXBfZ2V0X2ZlYXR1cmVzLAo+ICB9Owo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmggYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAuaAo+IGluZGV4IDMwMzk4MTU2MDk1Zi4uMDI2M2YxNThlZThkIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCj4gKysr
IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmgKPiBAQCAtMzIsNiArMzIs
NyBAQAo+ICAjZGVmaW5lICAgUENJRV9DTElFTlRfQ09ORl9FTkFCTEUJICBISVdPUkRfVVBEQVRF
X0JJVCgweDAwMDEpCj4gICNkZWZpbmUgICBQQ0lFX0NMSUVOVF9DT05GX0RJU0FCTEUgICAgICAg
SElXT1JEX1VQREFURSgweDAwMDEsIDApCj4gICNkZWZpbmUgICBQQ0lFX0NMSUVOVF9MSU5LX1RS
QUlOX0VOQUJMRQkgIEhJV09SRF9VUERBVEVfQklUKDB4MDAwMikKPiArI2RlZmluZSAgIFBDSUVf
Q0xJRU5UX0xJTktfVFJBSU5fRElTQUJMRSAgSElXT1JEX1VQREFURSgweDAwMDIsIDApCj4gICNk
ZWZpbmUgICBQQ0lFX0NMSUVOVF9BUklfRU5BQkxFCSAgSElXT1JEX1VQREFURV9CSVQoMHgwMDA4
KQo+ICAjZGVmaW5lICAgUENJRV9DTElFTlRfQ09ORl9MQU5FX05VTSh4KQkgIEhJV09SRF9VUERB
VEUoMHgwMDMwLCBFTkNPREVfTEFORVMoeCkpCj4gICNkZWZpbmUgICBQQ0lFX0NMSUVOVF9NT0RF
X1JDCQkgIEhJV09SRF9VUERBVEVfQklUKDB4MDA0MCkKPiAtLSAKPiAyLjQ2LjIKPiAKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
