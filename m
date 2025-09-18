Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2D9ACA1013
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 16:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvW9XecF+0tJzuuMFYAlvdwjJIbzQy8GozofdlOBEBA=; b=DTSP+UqWBrNCAh
	VNTIsJZ2BFTfLFyPcKN3kj6DczTc03+D7zJESjFIpq5Q88iUafvbg4eyXURFj7FjebXoZ2h65nsuA
	q2YVv9Zw6bmXBu3ikfi0aFHOXMLgaVe+3Qfu8HnUdSicfdsxpjJGKPjFsjBzuOXuLVn6hu9R/IjXW
	7STO7icOVBWp5nIuk41R7t9Z7chWtPaIAdhWiepi+F00qjAqGQQor3/71+r1HO84Amw5XytHlmb0B
	dgkyTaow5joYHdoBQs4erC9ULt6pVm3TcU4Kk/WSFsXOpzTfwyitIDlcEHpR6B5pTRETFeU8E9xnp
	bQsH5htFTkc138e83D1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzHMh-00000000b2r-2rKg;
	Thu, 18 Sep 2025 16:20:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzHMf-00000000b1f-0X5Q;
	Thu, 18 Sep 2025 16:20:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:Cc;
	bh=zMNCQB3IZJa1lenTGE4yLUo0+d2lJWLrI+MvU6M7hlo=; b=KrYRs1+0IXwH9rggfZxB6I0V6F
	VAf+xYmNBz8d+HEdykNno5v245fcT0C+kM+zRG5hz/ikTomnlz+QfmjC/QS3kh82Ns/Cm8Dcc2XkG
	BcdW/C0yUTbJd09PDkUBnNs94Uk59AofnJfc8m6KlJqO9byyHdqsv/xqN3iKGOmeHKHnaJ/AO0c00
	HsOOsKYhs+HoG9QPh3WM/5xrKTChgnc6oAcXm0Z7ntp/ekW0yj6Wrmw3afS2y/uO6n7CYjtE4meUG
	sfIAZEunYHPCiw3/TFbQZcmoibdlXCvn9ZUpaiO40k8b6JPPzt1EHFgJHwoKIKyP/4WbFoItXFUpe
	Qyi5HrRQ==;
Received: from i53875b0a.versanet.de ([83.135.91.10] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uzHMd-0001yb-F5; Thu, 18 Sep 2025 18:20:07 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ed Wildgoose <lists@wildgooses.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ed Wildgoose <lists@wildgooses.com>
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: fix dma and pinctrl defs v2
Date: Thu, 18 Sep 2025 18:20:06 +0200
Message-ID: <2424735.BjyWNHgNrj@diego>
In-Reply-To: <20250918093246.15623-1-lists@wildgooses.com>
References: <20250917114932.25994-1-lists@wildgooses.com>
 <20250918093246.15623-1-lists@wildgooses.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_092009_165029_15A9F89D 
X-CRM114-Status: GOOD (  20.13  )
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

SGkgRWQsCgpBbSBEb25uZXJzdGFnLCAxOC4gU2VwdGVtYmVyIDIwMjUsIDExOjMyOjQ0IE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRWQgV2lsZGdvb3NlOgo+IEJhc2VkIG9u
IGZlZWRiYWNrLCBJIHJld29ya2VkIHRoZXNlIHBhdGNoZXMuIEkndmUgcmUtcHJlc2VudGVkIGJv
dGggYXMKPiBJIHJlYWxpc2UgdGhhdCBvbmUgaGFkIGludmFsaWQgZm9ybWF0dGluZyAoc3BhY2Vz
IHZzIHRhYnMpIGFuZCBJJ3ZlCj4gbW92ZWQgdGhlIGRtYS1uYW1lcyBkZWZpbml0aW9uIGludG8g
dGhlIHNhbWUgYm9hcmQgbGV2ZWwgZHRzaS4gQXQgdGhpcwo+IHBvaW50IGl0IHNlZW1zIHJlYXNv
bmFibGUgdG8gYWxzbyBzcXVhc2ggdGhlIHR3byBwYXRjaGVzLCBidXQgZmVlZGJhY2sKPiBhcHBy
ZWNpYXRlZD8KPiAKPiBUaGUgZGVmYXVsdCBwaW5jdHJsIGRlZmluaXRpb25zIGZvciB0aGUgUmFk
eGEgWmVybyAzVyBkb24ndCBtYXRjaCB0aGUKPiBkYXRhc2hlZXQuIFBvc3NpYmx5IGZldyBwZW9w
bGUgZW5hYmxlIGV4dHJhIFVBUlRzIGFuZCBoZW5jZSBpdCB3YXNuJ3QKPiBub3RpY2VkPyBJIG5l
ZWRlZCBhbGwgNSBVQVJUcyBmb3IgYSBwcm9qZWN0IGFuZCB0aGUgZmlyc3QgcGF0Y2ggY29ycmVj
dHMKPiB0aGUgcGluY3RybCBkZWZzLiBXaXRob3V0IHRoaXMgcGF0Y2gsIGVuYWJsaW5nIHRoZSBl
eHRyYSBVQVJUcyBjYXVzZXMKPiBpc3N1ZXMgc3VjaCBhcyB0aGUgTU1DIGRldmljZXMgZGlzYXBw
ZWFyaW5nLCBkdWUgdG8gY29sbGlzaW9ucy4KPiAKPiBTZWNvbmQgcGF0Y2ggYWRkcyBhIGRtYS1u
YW1lcyBwcm9wZXJ0eSwgd2hpY2ggYXBwZWFycyB0byBiZSBhCj4gcHJlLXJlcXVpc2l0ZSBmb3Ig
ZW5hYmxpbmcgRE1BIG9uIHRoZSBVQVJUcy4gSSd2ZSBhcHBsaWVkIHRoaXMgdG8gdGhlCj4gYm9h
cmQgbGV2ZWwgZHRzIGFzIGZlZWRiYWNrIHN1Z2dlc3RlZCB0aGVyZSBjb3VsZCBiZSB1bmludGVu
ZGVkIHByb2JsZW1zCj4gaWYgZW5hYmxlZCBhY3Jvc3MgdGhlIGNvbXBsZXRlIHJvY2tjaGlwIGR0
c2kuCj4gCj4gSXQncyB0ZXN0ZWQgb24gbXkgWmVybyAzVyBib2FyZCBhbmQgYXBwZWFycyB0byBm
dW5jdGlvbiBjb3JyZWN0bHkgYW5kCj4gRE1BIGlzIHJlcG9ydGVkIGFzIGVuYWJsZWQuCgpob3Vz
ZWtlZXBpbmcgcmVxdWVzdHM6Ci0gcGxlYXNlIGRvbid0IGF0dGFjaCBuZXcgdmVyc2lvbnMgdG8g
YW4gb2xkIHRocmVhZCwgYnV0IGluc3RlYWQKICBzdGFydCBhIG5ldyB0aHJlYWQKLSB0aGlzIGlz
IHN1cHBvc2VkIHRvIGJlIHYyLCBzbyBwYXRjaGVzIHNob3VsZCBiZSBuYW1lZAoiW1BBVENIIHYy
IDAvMl0gLi4uIiBldGMuCgpBdCBsZWFzdCB0aGUgY292ZXItbGV0dGVyIHNob3VsZCBjb250YWlu
IGEgY2hhbmdlbG9nIHdoYXQgY2hhbmdlZApiZXR3ZWVuIHZlcnNpb25zLgoKCkhlaWtvCgoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
