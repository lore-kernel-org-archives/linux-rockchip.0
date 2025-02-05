Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13E56C02192
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Feb 2025 17:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AliJyDDoPL/1l7L9LXKPW+T2lKcmJSc7YuA+KJOinTU=; b=II8gO/LnQjDnTT
	7j8nTovtQch3zLIq6D3Gf8/Coi/3XnUbOQDJgYQWyTmbOh+1xVmRdh2q+00LE/aD8xDLoD6A999rd
	Q1i3NqBlRRo+DXRzBN41YbWLeqny1b84JNehXgYVUFMCYAI/mlxIpZaYk1UT1E/fzZ+BPNiOuC2Ci
	QepFw0K9VqhXsUY1p0EFEcjT/9WAEN6l35npYpUjgENm/xr043o1u1BZGlmWn8xy0bjR9KxGwksfa
	0Altjv0ueDc1S/n8EjHUpu/O/eMgjQI6jMJ1O7tqZomPmCBtHMHkTE7ZxniqVF68PFbly5cdYfDud
	mpWQNIyykchStWLqwCKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfjWX-00000004A00-0fIi;
	Wed, 05 Feb 2025 17:49:17 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfjSg-000000048bZ-1UQv;
	Wed, 05 Feb 2025 17:45:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=a51LPLjOt3wwZB6mg+Y3S9/fHKpsOrF0RHXl8dP5K9o=; b=YFke/Ib8EU5hGyNz5OI18D/jXb
	LgKzeb6g4CeABgLgLmj3yzRSwdQnFVfTrNyBnLB5+V6yIz8fDaBI2KMVhjMYTVO2Tc92tOL4IFXtM
	myCRnncf5o8lh85f8iYKOTArbHfFqFTA3wgxnkFM9Ws3L2Zxg8WwpPPZ66uOiIhNTkwou8AEj0yQG
	Xx7m1YTkkBfv+9n80iYQ3U+/s9B9mBadOs6h5bTqCmNqY8QA+fk9zw6p2xOkO6U0a4ctamQHzFlOM
	KxyMPIqjLiaq9/7m6gfVLlVIU/wQ3V6JLsRlheTDy89eWAL5MsvXtiHAIwcbkIpv++7MN0a7plBaA
	3XSQWG0w==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:52386)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1tfjSR-0007tq-0B;
	Wed, 05 Feb 2025 17:45:03 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.96)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1tfjSN-0002bu-08;
	Wed, 05 Feb 2025 17:44:59 +0000
Date: Wed, 5 Feb 2025 17:44:58 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Simon Horman <horms@kernel.org>
Cc: Chen-Yu Tsai <wens@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Steven Price <steven.price@arm.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	stable@vger.kernel.org
Subject: Re: [PATCH netdev] net: stmmac: dwmac-rk: Provide FIFO sizes for
 DWMAC 1000
Message-ID: <Z6OjmtiZ4A8BzvsP@shell.armlinux.org.uk>
References: <20250204161359.3335241-1-wens@kernel.org>
 <20250204134331.270d5c4e@kernel.org>
 <CAGb2v641vvtVKv8QbiEfHnMWngcKYTJZAgfH5k+G_nOvZcbC9g@mail.gmail.com>
 <20250205173824.GJ554665@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250205173824.GJ554665@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_094518_390830_BC9DFE62 
X-CRM114-Status: GOOD (  16.68  )
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

T24gV2VkLCBGZWIgMDUsIDIwMjUgYXQgMDU6Mzg6MjRQTSArMDAwMCwgU2ltb24gSG9ybWFuIHdy
b3RlOgo+IE9uIFdlZCwgRmViIDA1LCAyMDI1IGF0IDExOjQ1OjE3QU0gKzA4MDAsIENoZW4tWXUg
VHNhaSB3cm90ZToKPiA+IE9uIFdlZCwgRmViIDUsIDIwMjUgYXQgNTo0M+KAr0FNIEpha3ViIEtp
Y2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBPbiBXZWQsICA1IEZl
YiAyMDI1IDAwOjEzOjU5ICswODAwIENoZW4tWXUgVHNhaSB3cm90ZToKPiA+ID4gPiBTaW5jZSBh
IGZpeCBmb3Igc3RtbWFjIGluIGdlbmVyYWwgaGFzIGFscmVhZHkgYmVlbiBzZW50IFsxXSBhbmQg
YSByZXZlcnQKPiA+ID4gPiB3YXMgYWxzbyBwcm9wb3NlZCBbMl0sIEknbGwgcmVmcmFpbiBmcm9t
IHNlbmRpbmcgbWluZS4KPiA+ID4KPiA+ID4gTm8sIG5vLCBwbGVhc2UgZG8uIFlvdSBuZWVkIHRv
IF9zdWJtaXRfIHRoZSByZXZlcnQgbGlrZSBhIG5vcm1hbCBwYXRjaC4KPiA+ID4gV2l0aCBhbGwg
dGhlIHVzdWFsIGRldGFpbHMgaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgo+ID4gCj4gPiBNaW5lIGlz
bid0IGEgcmV2ZXJ0LCBidXQgc2ltcGx5IGRvd25ncmFkaW5nIHRoZSBlcnJvciB0byBhIHdhcm5p
bmcuCj4gPiBTby4uLiB5ZXQgYW5vdGhlciB3b3JrYXJvdW5kIGFwcHJvYWNoLgo+IAo+IEkgdGhp
bmsgdGhlIHBvaW50IGlzIHRoYXQgc29tZW9uZSBuZWVkcyB0byBmb3JtYWxseQo+IHN1Ym1pdCB0
aGUgcmV2ZXJ0LiBBbmQgSSBhc3N1bWUgaXQgc2hvdWxkIHRhcmdldCB0aGUgbmV0IHRyZWUuCgpG
b3Igd2hhdCBJIHRoaW5rIGlzIHRoZSB0aGlyZCB0aW1lIHRvZGF5IChmb3VydGggaWYgeW91IGlu
Y2x1ZGUgdGhlCmFjdHVhbCBwYXRjaC4uLikKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvRTF0
ZmV5Ui0wMDNZR0otR2JAcm1rLVBDLmFybWxpbnV4Lm9yZy51awoKLS0gClJNSydzIFBhdGNoIHN5
c3RlbTogaHR0cHM6Ly93d3cuYXJtbGludXgub3JnLnVrL2RldmVsb3Blci9wYXRjaGVzLwpGVFRQ
IGlzIGhlcmUhIDgwTWJwcyBkb3duIDEwTWJwcyB1cC4gRGVjZW50IGNvbm5lY3Rpdml0eSBhdCBs
YXN0IQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
