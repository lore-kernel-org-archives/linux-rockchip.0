Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 167C2F3381E
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Mar 2026 09:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLE7DG1BXCqRCNpLEeEVc4NsSB2iGXL+dK38A1RiYB4=; b=NDe83s4Dv8h1fm
	rO7AcfNEydyDh5p55lkxzdCQvnrHfljHiLczPZm+5fX6uz38Dt7XxnyiewSnLxeyqQz8Y0CmlM+I9
	H5U2L5BZdImtcX4CLkhV3tUwX88FDT7gLorTYn42oOS1g80bW0bxcvvrgXKXEwdfi/vubPqYt/a7h
	WLUmmiyXmEH+lVQVe7unegq4EIY5eFtK6Ek3zJii/nyg1DB80VrNc9etmOIjvAXBzdTquiJKEajPg
	0gqSY4NfUoFcqckqbifZnLgqXBlMkO3519crBb/alzdWLlQl7hjYvereCMVA2rsw6eob1OJ8wmtoo
	tRpmD3RhfYVT9ZSpXlRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2QQ1-00000005oAk-3uyW;
	Tue, 17 Mar 2026 09:08:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2QPy-00000005o8W-1KiJ;
	Tue, 17 Mar 2026 09:08:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=RmR20+HOUCm1UbnC886tHfKXPT4oDC9ABYMrrw1uIq8=; b=BPlZNlmf8H+uMknFzE+4Zff0JT
	Y8N3+8qOYbsakjtr/tiiTCLhNzOmODl6A2NYgXv8fBWBnSvfeQQ7SxU2dxLeVYcfFlUSiXl5hZ4tK
	J/e5sd4mZ/SPZ70TInHUSjMOfh4/i75M5PooA47ni4mw1OCOErIsCM+dceJvGjEBGlA36SYEjYaPa
	ohP7sNXfpayYHXBM4ydFCVnBBUfTxlwq5d5OHu+G+Of5WfKUZHmMBJVlp7VaYcHGyD73/ftzv66hK
	nU7mgrGF5l6d5192A7rJw0/BQo+WqaO+0MsrD7y8C4CsEW/vYQU4ZhFrdtXGyGkQRpr/9I2pA2bZG
	merpDMig==;
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: arm@kernel.org, soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [GIT PULL] Rockchip dts64 changes for 7.1 #1
Date: Tue, 17 Mar 2026 10:08:48 +0100
Message-ID: <2031768.PYKUYFuaPT@phil>
In-Reply-To: <20260317-impetuous-attentive-penguin-43a503@quoll>
References: <13966995.uLZWGnKmhe@phil>
 <20260317-impetuous-attentive-penguin-43a503@quoll>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260317_020850_363701_510C1D4A 
X-CRM114-Status: GOOD (  15.61  )
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

QW0gRGllbnN0YWcsIDE3LiBNw6RyeiAyMDI2LCAwOTo0ODozMCBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6Cj4gT24gU2F0LCBNYXIgMTQs
IDIwMjYgYXQgMDc6NDU6MzRQTSArMDEwMCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiBIaSBz
b2MgbWFpbnRhaW5lcnMsCj4gPiAKPiA+IHBsZWFzZSBmaW5kIGJlbG93IFJvY2tjaGlwIERUIGNo
YW5nZXMgZm9yIHRoZSBtZXJnZS13aW5kb3cgZm9yIDcuMSAuCj4gPiAKPiA+IFNvIGZhciBvbmx5
IGFybTY0IGNoYW5nZXMgOi0pCj4gPiAKPiA+IAo+ID4gUGxlYXNlIHB1bGwuCj4gPiBUaGFua3MK
PiA+IEhlaWtvCj4gPiAKPiA+IAo+ID4gVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1p
dCA2ZGUyM2Y4MWE1ZTA4YmU4ZmJmNWU4ZDdlOWZlYmM3MmE1YjVmMjdmOgo+ID4gCj4gPiAgIExp
bnV4IDcuMC1yYzEgKDIwMjYtMDItMjIgMTM6MTg6NTkgLTA4MDApCj4gPiAKPiA+IGFyZSBhdmFp
bGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0Ogo+ID4gCj4gPiAgIGh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L21taW5kL2xpbnV4LXJvY2tjaGlwLmdp
dCB0YWdzL3Y3LjEtcm9ja2NoaXAtZHRzNjQtMQo+IAo+IE5leHQgYW5hbHlzaXMgcmVwb3J0czoK
PiAKPiBEYXlzIGluIGxpbnV4LW5leHQ6Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQo+ICAxIHwgKyAoMSkKPiAgMiB8Cj4gIDMgfAo+ICA0IHwgKyAoMSkKPiAKPiBQ
bGVhc2Uga2VlcCBjaGFuZ2VzIGluIG5leHQgZm9yIGF0IGxlYXN0IGZldyByZWxlYXNlcywgaW4g
Y2FzZSBvZgo+IGRldmVsb3BtZW50IHB1bGxzLiBBbGxvdyBjb21tdW5pdHkgdG8gYWN0dWFsbHkg
dGVzdCB5b3VyIGNvZGUgYmVmb3JlIHlvdQo+IHNlbmQgaXQgdG8gdXBzdHJlYW0gbWFpbnRhaW5l
ci4gV2UgYXJlIGVhcmx5IGluIHRoZSBjeWNsZSwgc28gdGhlcmUgaXMKPiBubyBuZWVkIHRvIHJ1
c2ggY2hhbmdlcyB3aGljaCB3ZXJlIGFsbW9zdCBub3QgaW4gbmV4dC4KCm9rYXksIHdpbGwgYWRh
cHQgdG8gdGhlIGZhc3RlciBwYWNpbmcgb2YgUFJzIGdldHRpbmcgbG9va2VkIGF0LgoKSW4gdGhl
IHBhc3QgSSB3YXMgdHJ5aW5nIHRvIG1ha2UgQXJuZCdzIGxpZmUgZWFzaWVyIChub3Qgc3VyZSBp
ZiB0aGF0CmhlbHBlZCBvciBub3QpIHdpdGggdGhlIFBSIGF2YWlsYWJsZSwgc28gdGhhdCBoZSBj
b3VsZCBnZXQgdG8gdGhlbSB3aGVuCmhlIGhhZCB0aW1lLgoKCkhlaWtvCgoKCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
