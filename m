Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47AE2CD5BB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 May 2026 20:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hxkpsDmG9s/UY6YNoer+8fvc+B8/hO9Y3rxOQcE+JC0=; b=lrCKZF+dsg88oZ
	5KhWK0Ize3Gj1Iki62wsbUDAOK2wcp7OVSUdBCB9qMprTjCNKkGgkuA6Ownxf1nIlePCMYbHvcKcd
	MTAe+DHw3/UiV8bPeiMVlhzwhmqEjUAoDXSGZ5084Tp6WgdvZBSUb3Z3PzAjORTFGUhfYglwDksOS
	2Un98GZygmgoQywZYglOFhgXEk6r6WXlK7jwtZXtwu6K4brbhHa8goCWve8yW1EHCXuQObzu9sk4u
	IeOuOxAlEx6hvIdricqbda1aqbTJZQRb5DtIwg+FoA4rsNgmheX30s+eY8nFVuQIo8YZrdDbjaM0v
	czI6Eda0rPoM7qGzTQNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRcKV-00000000Smi-1uo1;
	Mon, 25 May 2026 20:55:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRcKS-00000000Slm-2PmY
	for linux-rockchip@lists.infradead.org;
	Mon, 25 May 2026 20:55:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xryexlahrodjfyHGFiLzNy4TNoT6+1ZUHKzJpXj+s8g=; b=g/KgF4urScPdkul43AgBJJA3kQ
	a0YeSLIS/quWTGXvPwRLDSUpK12AjfBChS7p8CWcQlSpmE2G2UvId2iw6k7aWVjuFbEwLpfPnZ0WN
	wm+eRvJxUCU1rptmTQX6RD5yUxoROlcvuxMjJODm3b0zO0F7sieQmcOdL2NrUhzniipEMTKQOHcBK
	SMbU/zLiVLZb8/SW43R45gX4O1RJED9GKhAxSxKgF4hTbTA7dEJWxaVtEhz75/9YCuEsk3B0p67H/
	EO8ZFk6+Fp84XK1czfqzqfc30z/dAL2BkufFVbUaUScOjfGq/tFYh9qf/fvnXyPzFfUGIE5yG2Qwv
	lhXZxiGw==;
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Cc: linux-amarula@amarulasolutions.com, michael@amarulasolutions.com,
 dario.binacchi@amarulasolutions.com,
 Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Axelera AI metis-sbc
Date: Mon, 25 May 2026 22:54:14 +0200
Message-ID: <4976330.xgJ6IN8ObU@phil>
In-Reply-To: <20260522174918.61523-4-patrick.barsanti@amarulasolutions.com>
References: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
 <20260522174918.61523-4-patrick.barsanti@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_135517_168257_2F434D40 
X-CRM114-Status: GOOD (  10.36  )
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

SGksCgpBbSBGcmVpdGFnLCAyMi4gTWFpIDIwMjYsIDE5OjQ5OjE4IE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgUGF0cmljayBCYXJzYW50aToKClsuLi5dCgo+ICsJcGNpZTIw
X2F2ZGQwdjg1OiBwY2llMjAtYXZkZDB2ODUgewoKUmVndWxhdG9yIG5vZGVzIHNob3VsZCBzdGFy
dCB3aXRoICJyZWd1bGF0b3ItIiwgc28KCiAgICBwY2llMjBfYXZkZDB2ODU6IHJlZ3VsYXRvci1w
Y2llMjAtYXZkZDB2ODUKCnNhbWUgZm9yIGFsbCBvdGhlcnMuCgoKPiArCQljb21wYXRpYmxlID0g
InJlZ3VsYXRvci1maXhlZCI7Cj4gKwkJcmVndWxhdG9yLWFsd2F5cy1vbjsKPiArCQlyZWd1bGF0
b3ItYm9vdC1vbjsKPiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw4NTAwMDA+Owo+ICsJ
CXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDg1MDAwMD47Cj4gKwkJcmVndWxhdG9yLW5hbWUg
PSAicGNpZTIwX2F2ZGQwdjg1IjsKPiArCQl2aW4tc3VwcGx5ID0gPCZ2ZGRhXzB2ODVfczA+Owo+
ICsJfTsKCgoKPiArJmNwdV9iMCB7Cj4gKwljcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2JpZzBfczA+
Owo+ICsJbWVtLXN1cHBseSA9IDwmdmRkX2NwdV9iaWcwX3MwPjsKPiArfTsKClRoZXJlIGlzIG5v
IG1lbS1zdXBwbHkgaW4gdGhlIG1haW5saW5lIGJpbmlkbmcsIGFuZCBpdCdzIHRoZSBzYW1lCnJl
Z3VsYXRvcnMgYW55d2F5LiBBZ2Fpbiwgc2FtZSBmb3IgYWxsIGNwdSBub2Rlcy4KCllvdSBzaG91
bGQgYmUgYWJsZSB0byBydW4gc29tZXRoaW5nIGxpa2UKCiAgbWFrZSBBUkNIPWFybTY0IC4uLi4g
Q0hFQ0tfRFRCUz15IHJvY2tjaGlwL3JrMzU4OC1tZXRpcy1zYmMuZHRiCgp0byBmaW5kIGFsbCB0
aGUgYmluZGluZyBwcm9ibGVtcy4KCgo+ICsmZ21hYzAgewo+ICsJY2xvY2tfaW5fb3V0ID0gIm91
dHB1dCI7Cj4gKwlwaHktaGFuZGxlID0gPCZyZ21paV9waHkwPjsKPiArCS8qIFVzZSByZ21paS1y
eGlkIG1vZGUgdG8gZGlzYWJsZSByeCBkZWxheSBpbnNpZGUgU29jICovCgpubyBuZWVkIGZvciB0
aGF0IGNvbW1lbnQKCj4gKwlwaHktbW9kZSA9ICJyZ21paS1yeGlkIjsKPiArCXBpbmN0cmwtMCA9
IDwmZ21hYzBfbWlpbQo+ICsJCSAgICAgJmdtYWMwX3R4X2J1czIKPiArCQkgICAgICZnbWFjMF9y
eF9idXMyCj4gKwkJICAgICAmZ21hYzBfcmdtaWlfY2xrCj4gKwkJICAgICAmZ21hYzBfcmdtaWlf
YnVzPjsKCnBsZWFzZSBhZGQgYSBwaW5jdHJsIGVudHJ5IChzZXR0aW5nIHRvIEdQSU8pIGZvciB0
aGF0IHJlc2V0LXBpbgpUaG91Z2ggLi4uIGlzIHRoYXQgdGhlIHBoeS1yZXNldCAuLi4gdGhpcyBz
aG91bGQgYmUgaWRlYWxseQpkZXNjcmliZWQgdGhlIHBoeSBub2RlIHdpdGggaXRzIHJlc2V0LWdw
aW9zIHByb3BlcnR5LgoKPiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwl0eF9kZWxh
eSA9IDwweDQ0PjsKPiArCXNucHMscmVzZXQtZ3BpbyA9IDwmZ3BpbzQgUktfUEIzIEdQSU9fQUNU
SVZFX0xPVz47IC8qIEdNQUMwX1JTVF9OICovCj4gKwlzbnBzLHJlc2V0LWFjdGl2ZS1sb3c7Cj4g
KwkvKiBSZXNldCB0aW1lIGlzIDIwbXMsIDEwMG1zIGZvciBydGw4MjExZiAqLwo+ICsJc25wcyxy
ZXNldC1kZWxheXMtdXMgPSA8MCAyMDAwMCAxMDAwMDA+Owo+ICsJc3RhdHVzID0gIm9rYXkiOwo+
ICt9Owo+ICsKCgpUaGF0J3MgaG93IGZhciBJIGdvdCB0b2RheSA6LSkKCgpIZWlrbwoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
