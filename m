Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98FB5C02194
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 10:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=w2l8pTFmeEmGNHEgZl0pwvtuNh3M3jnQtMxgjxCS+4g=; b=nlf2oEk3exNMzE
	dtKoG/r6HKRXuDz8RvgpH7rm7VNxDjT4zZ2oxlEvAwmaL1pZBBDIp3PLb5zETFRd5UxxHOfX3w8QT
	H7UZwhDV7/0ukDnvQ8Uy04cFFbBhTrnYlazQKEfOEVgoqtrv9OgKlwTmFBYuZ7GO9vrZD9jLNAS6Q
	gXPngYpiuriRwUc9qhvO4SAiQF0oCJG4pXz2hPtp+xz4OHYWs3NpvRZkRJ8AjHWBVlhKnRmzNbwtg
	GkGtlP4LZonUh5+JMDnOvq2c0Wfila0m2RDMLWJW39c3ABeKwXJz8Se4uFlv5bTi5HhBIAE1Vd4S+
	eN5vj6F1k3cPkSFgRTCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfzEc-00000005z4a-3mv4;
	Thu, 06 Feb 2025 10:35:50 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfzDE-00000005yuc-3snw;
	Thu, 06 Feb 2025 10:34:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2138CA440A0;
	Thu,  6 Feb 2025 10:32:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1E42C4CEDD;
	Thu,  6 Feb 2025 10:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738838063;
	bh=HtJGuuBPY7GzLXY3kxC0VzXl+lpKcP1odVWAB06tJ9Q=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=Iot787BECykWp2gtP3LBBfpkGun7l00fOPAElaA5BAiQCtwwTeI+lVecYMzKwAnts
	 4mcyF+D7fWht1j+3rEu3Cj1DeyPer4iHjAMiI9YUWs+kcZZlBXtr31rsdaxfYzyLlo
	 W04h+ye22xoupObrmhPOhQ3wmdVoNLUsufgqTPam+umbVH0CCgAW87+XGI3BvdHj7B
	 6bGGqk9nn8pKjJ1FUWcQSS28fa1KRdLaD1dIgqoGtHBv8bFZMZk/H7/f1DvM+JP+ZX
	 woAuP/pEtkO6VckSw7t2BXzkqiKH0LqFV0wwy5n6jYGwhxehp1ZAZDN0bLIEDFYrQR
	 6h+Szxrv3EMNQ==
Date: Thu, 6 Feb 2025 10:34:18 +0000
From: Simon Horman <horms@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>,
	"Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Steven Price <steven.price@arm.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	stable@vger.kernel.org
Subject: Re: [PATCH netdev] net: stmmac: dwmac-rk: Provide FIFO sizes for
 DWMAC 1000
Message-ID: <20250206103418.GO554665@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Z6OjmtiZ4A8BzvsP@shell.armlinux.org.uk>
 <CAGb2v64CZWZwC7T9NNN7Re8pkCLQZEh3bcraYjcQRyVxtJgS5w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_023425_028260_32044DFD 
X-CRM114-Status: GOOD (  14.26  )
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

T24gVGh1LCBGZWIgMDYsIDIwMjUgYXQgMDE6NDA6MTdBTSArMDgwMCwgQ2hlbi1ZdSBUc2FpIHdy
b3RlOgo+IE9uIFRodSwgRmViIDYsIDIwMjUgYXQgMTozOOKAr0FNIFNpbW9uIEhvcm1hbiA8aG9y
bXNAa2VybmVsLm9yZz4gd3JvdGU6CgouLi4KCj4gPiBJIHRoaW5rIHRoZSBwb2ludCBpcyB0aGF0
IHNvbWVvbmUgbmVlZHMgdG8gZm9ybWFsbHkKPiA+IHN1Ym1pdCB0aGUgcmV2ZXJ0LiBBbmQgSSBh
c3N1bWUgaXQgc2hvdWxkIHRhcmdldCB0aGUgbmV0IHRyZWUuCj4gCj4gUnVzc2VsbCBzZW50IG9u
ZSBhIGNvdXBsZSBob3VycyBhZ28sIHNvIEkgdGhpbmsgd2UncmUgY292ZXJlZC4KPiAKCk9uIFdl
ZCwgRmViIDA1LCAyMDI1IGF0IDA1OjQ0OjU4UE0gKzAwMDAsIFJ1c3NlbGwgS2luZyAoT3JhY2xl
KSB3cm90ZToKPiBPbiBXZWQsIEZlYiAwNSwgMjAyNSBhdCAwNTozODoyNFBNICswMDAwLCBTaW1v
biBIb3JtYW4gd3JvdGU6CgouLi4KCj4gPiBJIHRoaW5rIHRoZSBwb2ludCBpcyB0aGF0IHNvbWVv
bmUgbmVlZHMgdG8gZm9ybWFsbHkKPiA+IHN1Ym1pdCB0aGUgcmV2ZXJ0LiBBbmQgSSBhc3N1bWUg
aXQgc2hvdWxkIHRhcmdldCB0aGUgbmV0IHRyZWUuCj4gCj4gRm9yIHdoYXQgSSB0aGluayBpcyB0
aGUgdGhpcmQgdGltZSB0b2RheSAoZm91cnRoIGlmIHlvdSBpbmNsdWRlIHRoZQo+IGFjdHVhbCBw
YXRjaC4uLikKPiAKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yL0UxdGZleVItMDAzWUdKLUdi
QHJtay1QQy5hcm1saW51eC5vcmcudWsKClRoYW5rcywgSSBzZWUgaXQgbm93LgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
