Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 761ACC55162
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 11:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OsUXQBA0SnniUr2t0ek6UzoldeudObiKOqseWDOJv8=; b=1hc2bFxPnov+FT
	4H8D2N9UiQvSZfjpx4FP7k5Iiis4J6aRQ98FxmFM2CSFTOQ3wOxVpMZOhi+nahua4asQSwNvKpVVC
	u1AmnbgLcaDXuDp7ejWYPYgtbsPelSCfOYA10iME/JjCpwppX/UovfhOqR42zZdSjc87MEG0u1cZP
	VEKANHk36HbMav14k7cmz0o62yo7HmzGJ+tGGJoV9Pu3sOJVSoegwjZ/EXFf7IEn7TAJhmjw12K4+
	9j3PcQtVuVk8fqZ7bQMg8GS7gVwxKkm6yms7NOT8wVECYzrdqEbUHQRinDLCcFFTvGZoWX0MOcqHJ
	TC5p6fIxPSFYbo2Jtc7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpP8v-0000000ANO8-2ZYQ;
	Thu, 30 Jul 2026 11:41:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpP8u-0000000ANNS-0TnY;
	Thu, 30 Jul 2026 11:41:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 32397600BC;
	Thu, 30 Jul 2026 11:41:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD8F31F000E9;
	Thu, 30 Jul 2026 11:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785411697;
	bh=1Y8PGz3vJMmVf3g3KPKLx97MsTPFyh1Ze5zLLFy1D3E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=eqHrVb4chm2WrXk/JzLSXzeLtQVgdu9ebdSEi+JIp5/CUt6ouGFo9TKj4ghriWlaG
	 Uf1WHTR+UqoQ8tWyHhdsLITg419hjDWrtP1ZmwtI3LgjX1jga6Fr8aOdYRYkwfmxhk
	 Alr7c8hbnQGfKJ5Po7UwtVQu8rtEIemR6hdVRh67H/s0tF1ictYUvZX5KxqeZASww+
	 y5bp0XZE4gbMZiRs4Z8CEnjB0eTDIfhdQ+C/dSAVlS2MFg71PTTjR4c8fut1Uy5uaK
	 GHWLXK8BZWweiQxBjTepfIzHcU0MqpbgX5GYMEg5vYQdncF673DCNQQm8hfwDoyL6y
	 eC1HvdVvJ3WvA==
Message-ID: <50a524c2-a470-4b24-9b63-41b37346fa74@kernel.org>
Date: Thu, 30 Jul 2026 13:41:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: rockchip-dwmac: Add 25M
 refout clock
To: Gavin Gao <attinagaoxu@gmail.com>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, richardcochran@gmail.com,
 nicolas.frattaroli@collabora.com, sebastian.reichel@collabora.com,
 sashal@kernel.org, alchark@gmail.com, chaoyi.chen@rock-chips.com,
 amadeus@jmu.edu.cn, rmk+kernel@armlinux.org.uk, horms@kernel.org,
 alok.a.tiwari@oracle.com, david.wu@rock-chips.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20260727021048.3375444-1-attinagaoxu@gmail.com>
 <20260727021048.3375444-2-attinagaoxu@gmail.com>
 <20260730-lucky-strict-oryx-9ce8de@quoll>
 <CAK2JjQVoaHjzf4Z=_LDVzTj0R-ey1Z4T+1OF_xYACdz1C4yReQ@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <CAK2JjQVoaHjzf4Z=_LDVzTj0R-ey1Z4T+1OF_xYACdz1C4yReQ@mail.gmail.com>
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

T24gMzAvMDcvMjAyNiAxMzozOCwgR2F2aW4gR2FvIHdyb3RlOgo+IE9uIFRodSwgSnVsIDMwLCAy
MDI2IGF0IDQ6MjfigK9QTSBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+IHdy
b3RlOgo+Pgo+PiBPbiBNb24sIEp1bCAyNywgMjAyNiBhdCAxMDoxMDo0NUFNICswODAwLCBHYXZp
biBHYW8gd3JvdGU6Cj4+PiBTb21lIFJvY2tjaGlwIEdNQUMgaW5zdGFuY2VzIGNhbiBwcm92aWRl
IGEgMjUgTUh6IHJlZmVyZW5jZSBjbG9jayBvdXRwdXQKPj4+IGZvciBhbiBleHRlcm5hbCBSR01J
SSBQSFkuCj4+Pgo+Pj4gQWRkIGEgY2xvY2sgbmFtZSBmb3IgdGhpcyAyNSBNSHogcmVmZXJlbmNl
IG91dHB1dCBzbyBTb0MgZHRzaSBmaWxlcyBjYW4KPj4+IGRlc2NyaWJlIGl0IHNlcGFyYXRlbHkg
ZnJvbSB0aGUgZXhpc3RpbmcgTUFDIHJlZmVyZW5jZSBjbG9ja3MuCj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogR2F2aW4gR2FvIDxhdHRpbmFnYW94dUBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+ICBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3JvY2tjaGlwLWR3bWFjLnlhbWwgfCAx
ICsKPj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPj4+Cj4+PiBkaWZmIC0tZ2l0
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21h
Yy55YW1sCj4+PiBpbmRleCAwYWM3YzRiNDdkNmIuLjA3NGFjMjc0ZjJlMCAxMDA2NDQKPj4+IC0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcm9ja2NoaXAtZHdtYWMu
eWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2Nr
Y2hpcC1kd21hYy55YW1sCj4+PiBAQCAtODEsNiArODEsNyBAQCBwcm9wZXJ0aWVzOgo+Pj4gICAg
ICAgICAgLSBwY2xrX21hYwo+Pj4gICAgICAgICAgLSBjbGtfbWFjX3JlZgo+Pj4gICAgICAgICAg
LSBjbGtfbWFjX3JlZm91dAo+Pj4gKyAgICAgICAgLSBjbGtfbWFjXzI1bV9yZWZvdXQKPj4KPj4g
VGhhdCdzIHRoZSBzYW1lIGFzIGNsa19tYWNfcmVmIGFuZCBjbGtfbWFjX3JlZm91dC4gY2xvY2tz
IGFyZSBub3QKPj4gb3V0cHV0cyBidXQgaW5wdXRzLCBzbyBleHBsYWluIGhvdyBkb2VzIHRoZSBk
ZXZpY2UgdGFrZSB0aHJlZSBTQU1FCj4+IGNsb2NrczogY2xrX21hY19yZWYsIGNsa19tYWNfcmVm
b3V0IGFuZCBjbGtfbWFjXzI1bV9yZWZvdXQ/Cj4+Cj4+IEJlc3QgcmVnYXJkcywKPj4gS3J6eXN6
dG9mCj4+Cj4gCj4gVGhpcyBpcyBub3QgdGhlIGV4aXN0aW5nIGNsa19tYWNfcmVmb3V0IGNsb2Nr
LiBPbiBSSzM1NzYgdGhlCj4gUkVGQ0xLTzI1TV9HTUFDWzAxXV9PVVQgY2xvY2tzIGFyZSBzZXBh
cmF0ZSAyNSBNSHogcmVmZXJlbmNlIGNsb2NrIG91dHB1dHMKClRoYXQncyB3aHkgSSBlbXBoYXNp
emVkIGhlcmUgYW5kIGluIG90aGVyIHBhdGNoIHdlIGRvIG5vdCB0YWxrIGFib3V0Cm91dHB1dHMu
IFJlYWQgdGhlIGNvbW1lbnRzLgoKPiBpbnRlbmRlZCBmb3IgUkdNSUkgUEhZcywgd2hpbGUgY2xr
X21hY19yZWZvdXQgaXMgdGhlIGV4aXN0aW5nIHJlZm91dCBjbG9jawo+IHVzZWQgYnkgdGhlIFJv
Y2tjaGlwIERXTUFDIGJpbmRpbmcgZm9yIHRoZSBSTUlJIHJlZmVyZW5jZSBvdXRwdXQgcGF0aC4K
CgoKCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
