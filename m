Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24526C9831E
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 05:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XMlQ5F2kPnXB5ZpKNs5HgKZarn9BHlzvt/fa9FUiqqA=; b=pd9VIQ+T5J4h93
	TlW8a2vJcLPert4I0zKCSquW3OSar9x/jpxlrHSMs1wmiHmIRV/fcoBL218mpXhKb+Z67skkbZvCf
	DQ+rhlrkAHD3P2d2znQrG4N99c0wgV6msNSeThR8QxvgyKHCLI1kw1yos3XQtU21bRnxQ3qx2FeHP
	Y029cBqe9kUr1vbcU2HKRCy/OO49hzKzzNfXwHDDT6re+A2TFmUTdRavTt8VRYOkADoqN5aRy3qOq
	84lZ6uteIIsjdIyfHK6QEYQwuLeSPOg2fy6klkD6KQZcdZS2LX6FFx7B6NRoX8U/Blun6cpeb099j
	ri3UrSDojp0lvwGRQa6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKch-0000000EzOr-2IUJ;
	Sat, 26 Sep 2026 05:06:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKcg-0000000EzOT-167p;
	Sat, 26 Sep 2026 05:06:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DB9A360136;
	Sat, 26 Sep 2026 05:06:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EBF11F000FF;
	Sat, 26 Sep 2026 05:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790399212;
	bh=qA9qIAMmCjARz40JpTVfVIYnp5V1ZghuG0xkDAvl1gk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=dQxII6A84G7BX1W95dZr8YSk/GpL9r3wOZ0CJCl6ye1NEVUs+nFWEeU8pl4/WCzDI
	 g/HMSZOXWcJa6a8SgyVV143dtZEH/KRK76UYLioRIb+fWpLG5dD5wBj8ps/F1yaepO
	 uk5A0UjeL0hDGnT086DfmQzQJuhHk8FYMxzJsYOjFjKZnoYxFH4sqLpV4EJQIbmN88
	 yU9U/GZlnwyFWYL+mBfrSatlNKFH0DuxxsD8HoJyM0H5j0mvC4damy9VmNIlPAvufA
	 2Rb32EKwNFTvrK8Piv3gu/uR3LBgIwzhGsyP5XFR9EOtCR4ZmEe9opH5XG7s9IEO2T
	 rGBQoqJSRGL2A==
Date: Sat, 26 Sep 2026 07:06:33 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 01/11] phy: rockchip: usbdp: Drop DP HPD handling
Message-ID: <tvoejocogt3s5fle4lm2cmlattki7nuzbyl7wzrfnvyn7etqa7@ltfhc3qvjmgt>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-1-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-1-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MDRQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gRHJvcCB0aGUgSFBEIGhhbmRsaW5nIGxvZ2ljIGZyb20gdGhlIFVTQkRQIFBI
WS4gVGhlIHJlZ2lzdGVycyBpbnZvbHZlZAo+IHJlcXVpcmUgdGhlIGRpc3BsYXkgY29udHJvbGxl
ciBwb3dlciBkb21haW4gYmVpbmcgZW5hYmxlZCBhbmQgdGh1cyB0aGUKPiBIUEQgc2lnbmFsIHNo
b3VsZCBiZSBoYW5kbGVkIGJ5IHRoZSBkaXNwbGF5cG9ydCBjb250cm9sbGVyIGl0c2VsZi4KPiBB
cGFydCBmcm9tIHRoYXQgdGhlIEhQRCBoYW5kbGluZyBhcyBpdCBpcyBkb25lIGhlcmUgaXMgaW5j
b3JyZWN0IGFuZAo+IG1pc3NlcyBob3RwbHVnIGV2ZW50cyBoYXBwZW5pbmcgYWZ0ZXIgdGhlIFVT
Qi1DIGNvbm5lY3RvciAoZS5nLiB3aGVuCj4gYSBVU0ItQyB0byBIRE1JIGFkYXB0ZXIgaXMgaW52
b2x2ZWQgYW5kIHRoZSBIRE1JIGNhYmxlIGlzIHJlcGx1Z2dlZCkuCj4gCj4gUHJvcGVyIFVTQi1D
IERQIEhQRCBzdXBwb3J0IHJlcXVpcmVzIHNvbWUgcmVzdHJ1Y3R1cmluZyBvZiB0aGUgRFAKPiBj
b250cm9sbGVyIGRyaXZlciwgd2hpY2ggd2lsbCBoYXBwZW4gaW5kZXBlbmRlbnQgb2YgdGhpcyBw
YXRjaC4gVGhlCj4gbWFpbmxpbmUga2VybmVsIGRvZXMgbm90IHlldCBzdXBwb3J0IFVTQi1DIERQ
IEFsdE1vZGUgb24gUkszNTg4IGFuZAo+IFJLMzU3Niwgc28gaXQgaXMgZmluZSB0byBkcm9wIHRo
aXMgY29kZSB3aXRob3V0IGFkZGluZyB0aGUgY291bnRlcnBhcnQKPiBpbiB0aGUgRFJNIGluIGFu
IGF0b21pYyBjaGFuZ2UuCj4gCj4gVGVzdGVkLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAy
NkBnbWFpbC5jb20+ICMgT3JhbmdlIFBpIDUgUGx1cwo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlh
biBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6
IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29t
bS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
