Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0E11C5CFDB
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 07:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IdxTvcOGwSaHbs1Rva2WGERlyABIL4JwrfvM3bohwmw=; b=o6O5VD+gMkC9hC
	MHG3A56bZjCgkBJZrUMRm2rQcfUwr4QPDj1zjvnKCnsw52dPThHf47IJtvOlsBNDJSV7lszy9r2S8
	n7tYqPLR3fLlNxYN4j0zGBYJQfx832NclkqWIPNiflGWMJc9+omsguhpV5Wf3iTIo9fN7DrO68MzO
	huMWeKNVg/lvyx20xi3IlttMiE6z4qOO/sFtaVb36b5P0ASzMWt2xmTuAFDd3mT2K9xXqdp+fasja
	EPN8mtmd+PEMwZZ1BBxSIhQ4JJMqD6+MkHJvu3twix2dh7kxlAlQ9IbuRfWQcHtH36tFaNXhRv6BY
	2Dt+pkQR7/dTKRMguVEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQLn-000000003wn-0bsJ;
	Thu, 13 Aug 2026 07:59:43 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuQLl-000000003wT-1VbV;
	Thu, 13 Aug 2026 07:59:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CB94A41321;
	Thu, 13 Aug 2026 07:59:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5DBA1F000E9;
	Thu, 13 Aug 2026 07:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786607980;
	bh=7npjrDYLepf+Rrpr2JacPvCr1RH+GeAYuRtrST2+lio=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dsszs2c6XN078uEjKUitatG95g2TWyQRaTHkmSiaXjfhMjzOG3yz/6DtQr/Gf+vIA
	 Zh6RjruRs3vkuz501yMfDZANBnQzRDXH/MKrgrEw/b2xJs3HrwMppmvkiBHhEaU3n6
	 PhrxN8jKfPj4w6oHmAKJQy9Zs+mV2eK/WCYqV5NiceYxbj7xfx8vQHAD8NGuoa317e
	 kFv3cF2sAo5pdgjE1DqQYcsOsFtLY3Pjx+1NRbNm6p5URx+2dWfQljjbemaRyuFCDX
	 ruJ0IwDZn2t5vPxLRizDNzGtHLNXX7hDP3iyZLj6fyYD/GBRowi1nNKUeDnjV5bdZi
	 /ndzfs8/CouDw==
Date: Thu, 13 Aug 2026 09:59:32 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: =?utf-8?B?5qWK5pm65oiQ?= <jason98166@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Guochun Huang <hero.huang@rock-chips.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Michael Riesch <michael.riesch@collabora.com>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: Add PHY_TYPE_DSI and
 PHY_TYPE_CSI definitions
Message-ID: <20260813-imposing-cunning-raven-fcad40@quoll>
References: <20260810-dcphy-rx-v1-v3-0-a2d25c29adfc@gmail.com>
 <20260810-dcphy-rx-v1-v3-1-a2d25c29adfc@gmail.com>
 <20260812-refreshing-rampant-gecko-b38ef9@quoll>
 <CAPwA33KM-sWkPVrP1h+swLinvrCZHzxPeS7h25KEO87Q_6WZuA@mail.gmail.com>
 <an0FMnDSWbud8hPc@venus>
 <CAPwA33+7k7HMC7ezwH+MGn64iRHT6tVNK55t6gaC0nkkqWoE4w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPwA33+7k7HMC7ezwH+MGn64iRHT6tVNK55t6gaC0nkkqWoE4w@mail.gmail.com>
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

T24gVGh1LCBBdWcgMTMsIDIwMjYgYXQgMTI6MzM6NTJQTSArMDgwMCwg5qWK5pm65oiQIHdyb3Rl
Ogo+IEhpIFNlYmFzdGlhbiwKPiAKPiBUaGFua3MgZm9yIHRoZSByZXZpZXcuCj4gCj4gPiBZb3Vy
IG5ldyBiaW5kaW5nIGlzIGxhY2tpbmcgdG9vLiBJZiB5b3Ugc2VsZWN0IDwmbWlwaWRjcGh5MCBQ
SFlfVFlQRV9DU0k+Cj4gPiB5b3UgZGVmaW5lZCB0aGUgZGlyZWN0aW9uIG9mIHRoZSBQSFksIGJ1
dCB3aWxsIGl0IG9wZXJhdGUgaW4gQy1QSFkgb3IgaW4KPiA+IEQtUEhZIG1vZGU/Cj4gCj4gWW91
IGFyZSByaWdodCwgYW5kIEkgYW0gc29ycnkgLSB0aGlzIGlzIGEgcmVncmVzc2lvbiBJIGludHJv
ZHVjZWQgaW4gdjMuCj4gCj4gdjIgYWxyZWFkeSBkZXNjcmliZWQgdGhlc2UgYXMgdHdvIHNlcGFy
YXRlIGNlbGxzOiB0aGUgZmlyc3Qgc2VsZWN0ZWQgdGhlCj4gZWxlY3RyaWNhbCBsYXllciwgYW5k
IHRoZSBzZWNvbmQgc2VsZWN0ZWQgdGhlIGRpcmVjdGlvbi4gTWljaGFlbCBSaWVzY2gKPiBzdWdn
ZXN0ZWQgdXNpbmcgdGhlIGdlbmVyaWMgUEhZX1RZUEVfRFNJL1BIWV9UWVBFX0NTSSBjb25zdGFu
dHMgZm9yIHRoZQo+IHNlY29uZCBjZWxsIGluc3RlYWQgb2YgdGhlIFJvY2tjaGlwLXByaXZhdGUg
UktfRENQSFlfRElSXyogY29uc3RhbnRzIFsxXSwKPiBhbmQgVmlub2QgS291bCBhZ3JlZWQgWzJd
Lgo+IAo+IEluIHYzLCB3aGlsZSBtYWtpbmcgdGhhdCBjaGFuZ2UsIEkgYWxzbyBtaXN0YWtlbmx5
IGNvbGxhcHNlZCB0aGUgdHdvIGNlbGxzCj4gaW50byBvbmUuIFRoYXQgaXMgd2hhdCBsb3N0IHRo
ZSBlbGVjdHJpY2FsLWxheWVyIGluZm9ybWF0aW9uIHlvdSBwb2ludGVkCj4gb3V0Lgo+IAo+IEZv
ciB2NCwgSSB3aWxsIGdvIGJhY2sgdG8gdGhlIHYyIGxheW91dCBhbmQgb25seSByZW5hbWUgdGhl
IHNlY29uZCBjZWxsLgo+IFRoaXMga2VlcHMgdGhlIHR3byBkaW1lbnNpb25zIHNlcGFyYXRlLCB3
aXRoIGVhY2ggY2VsbCBkZXNjcmliaW5nIG9uZQo+IHRoaW5nOgo+IAo+IC8qIE1JUEkgRFNJIGhv
c3QgLSB0aGUgdHJhbnNtaXR0ZXIgKi8KPiBwaHlzID0gPCZtaXBpZGNwaHkwIFBIWV9UWVBFX0RQ
SFkgUEhZX1RZUEVfRFNJPjsKPiAKPiAvKiBNSVBJIENTSS0yIGhvc3QgLSB0aGUgcmVjZWl2ZXIg
Ki8KPiBwaHlzID0gPCZtaXBpZGNwaHkwIFBIWV9UWVBFX0RQSFkgUEhZX1RZUEVfQ1NJPjsKPiAK
PiBUaGUgc2FtZSBhcHBsaWVzIHRvIEMtUEhZLCBzbyB0aGUgYmluZGluZyBjYW4gZXhwcmVzcyBh
bGwgZm91ciBjb21iaW5hdGlvbnMKPiB3aXRob3V0IGFueSBmdXJ0aGVyIGNoYW5nZXM6Cj4gCj4g
cGh5cyA9IDwmbWlwaWRjcGh5MCBQSFlfVFlQRV9DUEhZIFBIWV9UWVBFX0RTST47Cj4gcGh5cyA9
IDwmbWlwaWRjcGh5MCBQSFlfVFlQRV9DUEhZIFBIWV9UWVBFX0NTST47Cj4gCj4gVGhlIGRyaXZl
ciBhY2NlcHRzIGFsbCBmb3VyIGNvbWJpbmF0aW9ucyBhdCBwaHlfZ2V0KCkgdGltZSBhbmQgcmV0
dXJucwo+IC1FT1BOT1RTVVBQIGZyb20gcG93ZXJfb24oKSBmb3IgdGhlIEMtUEhZIGNvbWJpbmF0
aW9ucywgYXMgaXQgZGlkIGJlZm9yZQo+IHRoaXMgc2VyaWVzLiBCb2FyZHMgdGhhdCBvbmx5IHdp
cmUgdXAgdGhlIHRyYW5zbWl0dGVyIGtlZXAKPiAnI3BoeS1jZWxscyA9IDwxPicsIHNvIHRoZSBl
eGlzdGluZyBpbi10cmVlIGRldmljZSB0cmVlcyByZW1haW4gdW5hZmZlY3RlZC4KPiAKPiBCZWZv
cmUgc2VuZGluZyB2NCwgSSB3aWxsIGdvIHRocm91Z2ggdGhlIGNvZGUgYW5kIGNvbW1pdCBtZXNz
YWdlcyBhZ2FpbiwKPiBzbyB0aGF0IHRoZSByZWFzb25pbmcgYWJvdmUgaXMgY2FwdHVyZWQgaW4g
dGhlIGNvbW1pdHMgdGhlbXNlbHZlcyByYXRoZXIKPiB0aGFuIG9ubHkgaW4gdGhpcyB0aHJlYWQu
IEkgd2lsbCBhbHNvIHJlLXRlc3QgdGhlIHNlcmllcyBvbiB0aGUgYm9hcmQuCgpXaGF0IGlzIHdp
dGggdGhpcyBwcmFjdGljZSAodGhpcmQgcG9zdGluZyBJIHNlZSB0aGlzIHdlZWspIG9mIHBhc3Rp
bmcKYXMgcmVwbHkgcHJvbXB0cy90YXNrcyBmb3IgQUk/CgpBbGwgdGhpcyBpcyBqdXN0IHdyb25n
IGFwcHJvYWNoIGFuZCB5b3VyIHBhdGNoZXMgd2lsbCBiZSBpZ25vcmVkIGlmIHlvdQphY3QgYXMg
YSBwcm94eSBhbmQga2VlcCBwbGF5aW5nIHdpdGggdXMgdGhhdCB3YXkuCgpCZXN0IHJlZ2FyZHMs
CktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
