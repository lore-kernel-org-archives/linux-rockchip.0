Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C32FC43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 10:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+7hsIeOmFzVhukexhxSfzSi0A/6d8DToB8BIaAkIMs=; b=uTGuwwuHfPsspG
	FvWbE5gNYh86KyB2xHcxEmTAE+HUn7yQ5xgZTfvQagEnIaH5sD2gWTdvKRcLfwO//q3HeXUoFr+LB
	UY9GWhLUorLz4B3nvmhe9LDtIRZe3Je2JOImlokHZNGevq++10mPJebTe89k3i7Q3RIiF/BndwfzH
	HCnjNlrHrlRF/0x0X7e6UF2yqKu5W5CjUXch0FBcQl7cMJHDhuVE+78AmI/briod0ANNeMMJLos0b
	Qk6YZwUun3yOx/supDmEb6E7+fWUc/Di+PpHNri4U2uhAe5ia7ckvetYPQHMmhsWjiLSU0IcrTb0S
	uDljAj60Arl4kU41GqjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPw1-0000000CMY6-1Mz3;
	Sat, 27 Jun 2026 10:06:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdPvy-0000000CMXC-1OUG;
	Sat, 27 Jun 2026 10:06:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=eSxG+0Qg7/F1OJdh0uQRGtMrVTwzrmRupcfCq3GTC4Y=; b=vJsYREIEKhJTKXk6PO0NetGKm1
	VYXWRdXUfNdwL15Zr6rFb4XYQmKwssoRR+CR0O1tMVVKFJ3tCByYe4j5h+RgY4WF9E1aeBT5e87Gq
	lXQXW/MNJFiDtwu+N335ivsg71NJL00mmoPHmk1sjC9DtnqG3aFmYyMdCH6nvyCC2df7x+ZoVdwEI
	LxhmZaBbWZkkWBGDHaL/dMcC6W4FPlBSmVxG2KCaG2SLI0g96Mcao18+1gQJ2QM+n1jXsrxe+q9s5
	C6YWXYQaYSCaRLnyfgDik3jPuo50VmX1RJ3hvHJ+R5qtY3nYxysdrmi/0FiFywFDf+skE9aw1mKB9
	fnfsXeGg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Hrushiraj Gandhi <hrushirajg23@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add Vicharak Vaaman2 board support
Date: Sat, 27 Jun 2026 12:06:43 +0200
Message-ID: <8106243.lvqk35OSZv@diego>
In-Reply-To: <1999863.IobQ9Gjlxr@diego>
References: <20260627094854.81564-1-hrushirajg23@gmail.com> <1999863.IobQ9Gjlxr@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_030646_372615_7C00C7C3 
X-CRM114-Status: GOOD (  19.22  )
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

QW0gU2Ftc3RhZywgMjcuIEp1bmkgMjAyNiwgMTI6MDU6MzUgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBIZWlrbyBTdMO8Ym5lcjoKPiBIaSwKPiAKPiBBbSBTYW1zdGFnLCAy
Ny4gSnVuaSAyMDI2LCAxMTo0ODo1MiBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hy
aWViIEhydXNoaXJhaiBHYW5kaGk6Cj4gPiBUaGlzIHBhdGNoIHNlcmllcyBhZGRzIGRldmljZSB0
cmVlIHN1cHBvcnQgZm9yIHRoZSBWaWNoYXJhayBWYWFtYW4yLAo+ID4gYSBzaW5nbGUtYm9hcmQg
Y29tcHV0ZXIgYmFzZWQgb24gdGhlIFJvY2tjaGlwIFJLMzU4OCBTb0MuCj4gCj4gcGxlYXNlIHVz
ZSBwcm9wZXIgdmVyc2lvbmluZyB3aGVuIHNlbmRpbmcgbmV3IHBhdGNoZXMKPiAKPiBJZiBJJ20g
cmVhZGluZyB0aGlzIGNvcnJlY3RseSwgdGhpcyBzaG91bGQgYmUKPiAKPiBbUEFUQ0ggdjMgMC8y
XSAuLi4uCgpjb3JyZWN0aW9uIC4uIHYyIDstKQoKVGhlIG90aGVyIHdhcyB0aGUgQXhvbiBib2Fy
ZC4KCj4gCj4gUGxlYXNlIGFsc28gcHJvdmlkZSBhIGNoYW5nZWxvZyBvbiB3aGF0IGNoYW5nZWQg
YmV0d2VlbiB2ZXJzaW9ucy4KPiBTZWUgYWxsIHRoZSBvdGhlciBwYXRjaHNldHMgb24gdGhlIG1h
aWxpbmdsaXN0IGZvciByZWZlcmVuY2UuCj4gCj4gSGVpa28KPiAKPiA+IFRoZSBWYWFtYW4yIGJv
YXJkIGZlYXR1cmVzIGluY2x1ZGU6Cj4gPiAtIFJLMzU4OCBTb0MKPiA+IC0gZU1NQyBzdG9yYWdl
IGFuZCBtaWNyb1NEIHN1cHBvcnQKPiA+IC0gUks4MDYgUE1JQyBhbmQgbXVsdGlwbGUgUks4NjAy
L1JLODYwMyByZWd1bGF0b3JzCj4gPiAtIFJlYWwtdGltZSBjbG9jayBhbmQgc3RhdHVzIExFRAo+
ID4gLSBVQVJUIHNlcmlhbCBjb25zb2xlIGFuZCBTQVJBREMKPiA+IAo+ID4gTm90ZTogVGhpcyBz
ZXJpZXMgd2FzIGdlbmVyYXRlZCBvbiB0b3Agb2YgdGhlIHBlbmRpbmcgVmljaGFyYWsgQXhvbgo+
ID4gYm9hcmQgc3VwcG9ydCBwYXRjaGVzICh2NykgYW5kIGluY2x1ZGVzIHRoZSBBeG9uIGVudHJ5
IGluIHRoZSBjb250ZXh0Cj4gPiBvZiB0aGUgWUFNTCBiaW5kaW5nIHBhdGNoLgo+ID4gCj4gPiBQ
YXRjaCAxIGFkZHMgdGhlIGJpbmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIFZhYW1hbjIgYm9h
cmQuCj4gPiBQYXRjaCAyIGFkZHMgdGhlIGFjdHVhbCBkZXZpY2UgdHJlZSBmaWxlIGFuZCBNYWtl
ZmlsZSBlbnRyeS4KPiA+IAo+ID4gSHJ1c2hpcmFqIEdhbmRoaSAoMik6Cj4gPiAgIGR0LWJpbmRp
bmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgVmljaGFyYWsgVmFhbWFuMgo+ID4gICBhcm02NDogZHRz
OiByb2NrY2hpcDogQWRkIFZpY2hhcmFrIFZhYW1hbjIgYm9hcmQKPiA+IAo+ID4gIC4uLi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sICAgICB8ICAgNSArCj4gPiAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKPiA+ICAuLi4v
ZHRzL3JvY2tjaGlwL3JrMzU4OC12aWNoYXJhay12YWFtYW4yLmR0cyAgfCA1NDcgKysrKysrKysr
KysrKysrKysrCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA1NTMgaW5zZXJ0aW9ucygrKQo+ID4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC12aWNo
YXJhay12YWFtYW4yLmR0cwo+ID4gCj4gPiAKPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
