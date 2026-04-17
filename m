Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3A7CF99C69
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 22:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1gP1pWCQQggeoulRAWhcj1nmcaC0XXSSoLGCAJy5Ilk=; b=ptn35EGnvwg/2D
	4iA2mWI/wi/Mk8OfS5y3SNS2Dr8jwpZNjNDMGlRJ+tidJcyD+3BvwqikbTVDpDpICvcn//Z0hupWe
	0lR9UbOhWmFcIR6cJFKo8dhCP2GLL8g6caSkM3/QHUReQjou2B2aKwastkVVknUTAba7rBoVxLspB
	zxnvbJfzz22brohhcmOC0ISIv/TQtk5AqtwVEcOd4JrNOyWpZQl0uwgoKsMHoWhjwWZ3QqVqWc4bW
	Lp9eBpROLhLLmLQW+PkSLV01T4jnTWNXVrgpQcSSPY6bDaK9m9OyDS2Oe/Y+fidMLXmOQMx8ehQYE
	XPgXgUWvR8hHBK94IhFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDsAE-00000004XnX-0aRv;
	Fri, 17 Apr 2026 22:59:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDsAB-00000004Xn3-1xHj;
	Fri, 17 Apr 2026 22:59:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=GHtVHx2nhBSquGSPYryXKtY4F20htfrr0aJ1VzWLVGE=; b=1d4HoLrRxJTUT549vCErRSXE70
	0tfVdMU83O5FAnRlau6P8+hP7nQ3Knk6e87RPoVtssg0Un1B3CiDi66pWPsnCY+Mr7DdQ4/rRw+hm
	VSTXWGL+G8J9BBN5jllkygiIzB++sl/LItzoLrRoJ4LkiT0jh96TDceoME1ZKseMxraK6eRl1fbDt
	4uBpjV07uxv5I5PGP8fggQII+EXNs58iIA1TF/Byrw2786NDjng+bQBBsdFQLXwO5qFNWVpsnCvPt
	xrpTaFrCnGV+Ee9MK4NEngorGHIW66HU+PDk21STzHn40EReIP0Odvn9hoGTO434b6PsFjZLMp2Mp
	RfLZXSsQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Alexey Charkov <alchark@flipper.net>
Cc: Pavel Zhovner <pavel@flipper.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Alexey Charkov <alchark@flipper.net>
Subject: Re: [PATCH RFC 2/4] clk: rockchip: pll: use round-nearest in determine_rate
Date: Sat, 18 Apr 2026 00:59:40 +0200
Message-ID: <39479281.XM6RcZxFsP@phil>
In-Reply-To: <20260417-rk3576-dclk-v1-2-26a9d0dcb2de@flipper.net>
References: <20260417-rk3576-dclk-v1-0-26a9d0dcb2de@flipper.net>
 <20260417-rk3576-dclk-v1-2-26a9d0dcb2de@flipper.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_155951_660005_D6EB8776 
X-CRM114-Status: GOOD (  12.97  )
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

SGkgQWxleGV5LAoKQW0gRnJlaXRhZywgMTcuIEFwcmlsIDIwMjYsIDE3OjExOjQ1IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQWxleGV5IENoYXJrb3Y6Cj4gcm9ja2NoaXBf
cGxsX2RldGVybWluZV9yYXRlKCkgd2Fsa3MgdGhlIHJhdGUgdGFibGUgaW4gZGVzY2VuZGluZyBv
cmRlcgo+IGFuZCBwaWNrcyB0aGUgZmlyc3QgZW50cnkgPD0gdGhlIHJlcXVlc3RlZCByYXRlLiBU
aGlzIGZsb29yLXJvdW5kaW5nCj4gaW50ZXJhY3RzIHBvb3JseSB3aXRoIGNvbnN1bWVycyB0aGF0
IHVzZSBDTEtfU0VUX1JBVEVfUEFSRU5UOiBhIGRpdmlkZXIKPiBpdGVyYXRpbmcgY2FuZGlkYXRl
cyBhc2tzIHRoZSBQTEwgZm9yIHJhdGUqZGl2LCBhbmQgYSB0aW55IHVuZGVyc2hvb3QKPiBjYXVz
ZXMgdGhlIFBMTCB0byBzbmFwIHRvIGEgbXVjaCBsb3dlciBlbnRyeS4KPiAKPiBGb3IgZXhhbXBs
ZSwgcmVxdWVzdGluZyAxOTkxLjA0IE1IeiAoMjQ4Ljg4IE1IeiAqIDgpIGNhdXNlcyB0aGUgUExM
IHRvCj4gcmV0dXJuIDE5NjggTUh6IGluc3RlYWQgb2YgMTk5MiBNSHog4oCUIGEgMjQgTUh6IHRh
YmxlIGdhcCB0aGF0IHByb2R1Y2VzCj4gYSAxLjIlIHBpeGVsIGNsb2NrIGVycm9yIHdoZW4gZGl2
aWRlZCBiYWNrIGRvd24uCj4gCj4gQ2hhbmdlIHRvIHJvdW5kLXRvLW5lYXJlc3Q6IGZvciBlYWNo
IHRhYmxlIGVudHJ5IGNvbXB1dGUgdGhlIGFic29sdXRlCj4gZGlzdGFuY2UgZnJvbSB0aGUgcmVx
dWVzdCwgYW5kIHBpY2sgdGhlIGVudHJ5IHdpdGggdGhlIHNtYWxsZXN0IGRlbHRhLgo+IFRoZSBD
Q0YncyBkaXZpZGVyIGFuZCBjb21wb3NpdGUgbG9naWMgaGFuZGxlIG92ZXIvdW5kZXJzaG9vdCBw
cmVmZXJlbmNlcwo+IHZpYSB0aGVpciBvd24gUk9VTkRfQ0xPU0VTVCBmbGFncy4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BmbGlwcGVyLm5ldD4KCmFzIFNlYmFz
dGlhbiBzYWlkLCB0aGlzIGNvdWxkIGNhdXNlIG92ZXJjbG9ja2luZyBpbiBhIG51bWJlciBvZiBh
cmVhcy4KVGhlIHJhdGUgeW91IGdldCBzaG91bGQgYWx3YXlzIGJlIGxvd2VyIG9yIGVxdWFsIHRv
IHRoZSByZXF1ZXN0ZWQgcmF0ZS4KCkFkZGl0aW9uYWxseSwgc3VjaCBhIGNvcmUgYmVoYXZpb3Vy
IGNoYW5nZSwgd291bGQgYWZmZWN0IDEzIHllYXJzIG9mClNvQ3Mgd2l0aCB1bmtub3duIHNpZGUt
ZWZmZWN0cy4KCklmIHlvdSdyZSBtaXNzaW5nIHNwZWNpZmljIGNsb2NrIHJhdGVzLCB5b3UgY2Fu
IGFsd2F5cyBhZGQgdGhlbSB0byB0aGUKbGlzdCA6LSkgLiBUaGUgdmVuZG9yLWtlcm5lbCBkb2Vz
IGhhdmUgY29kZSB0aGF0IGNhbiBjYWxjdWxhdGUgdGhlCnJhdGUgcGFyYW1zIGl0c2VsZiwgc28g
dGhpcyBjb3VsZCBnaXZlIHlvdSBhIGhpbnQgd2hlcmUgdG8gc3RhcnQuCgo9PT09PT09IGp1c3Qg
dG8gZXhwbGFpbiA9PT09PT09CgpUaG91Z2ggSSBzdGlsbCBkb24ndCB0aGluayB0aGF0IGNvZGUg
c2hvdWxkIGJlIGluIHRoZSBtYWlubGluZS1rZXJuZWwsCmFzIGEgY3VyYXRlZCBQTEwgcmF0ZXMg
YWxsb3dzIG1vcmUgY29udHJvbCwgd2hlcmUgdGhhdCBhbGdvcml0aG0KY3JlYXRlcyBwYXJhbWV0
ZXJzIHRoYXQgYXJlIHByb2dyYW1tYXRpY2FsbHkgY29ycmVjdCwgYnV0IGVzc2VudGlhbGx5CnVu
dGVzdGVkLgoKT24gdGhlIHR3byBDaHJvbWVib29rIHByb2plY3RzLCB0aGV5IGFjdHVhbGx5IG1l
YXN1cmVkIHRoaW5ncyBsaWtlCmNsb2NrIGppdHRlciwgd2hpY2ggZ290IHVzIG1vcmUgc3BlY2lm
aWMgcGFyYW1zIGZvciBzb21lIHJhdGVzLgoKCkhlaWtvCgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
