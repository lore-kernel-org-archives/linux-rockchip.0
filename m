Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0984FCD4F54
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 May 2026 17:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4gkDAp6B7E7ksdMRY83ErYZ+ZoFknrEKRFBgjp+nKM=; b=QXjaH5uePljwoo
	v6vy9+WDKvT9BdO6u4lMnS8vNOSPP4IhVxkflV9cztFDJQpvvzFKqUtYRJvAjMmh5Qedsm6ex8JPw
	/N6jxCDDOko2YK+JXY4JSlUPvwey/mhZp3NUuYHVJLX2Btb7Wrc86P1cM+AKAj9QzJu68DoXe/TH9
	ip0DAXKGohf45XqLrZ5r1EQ7ygPleFKyz8I6Ado1cfW1Ir9B7FlXxBOQVx3KEuECNmVZYuRe5sgtm
	zE2bthmWGSuj/u+jtqPekOyntDJjuaB7CIg782PBWaATZSJlU8C/Uw0Vxl0bFeAfzZWJAwiCu0GzN
	NqqkLwBR7B6Qa/P/sabw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT1J4-000000082QE-42gU;
	Fri, 29 May 2026 17:47:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wT1J2-000000082P0-2NGt;
	Fri, 29 May 2026 17:47:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JmCG5c7ZdraaUuv5adtXfMR+L/IgQPNcJErvSgyx1bo=; b=qowQRPp+vmiLNlYsmQPNOAQ1Ec
	lVyVhrZDC21fF+NNodAjsFn5ZcLORaY/3O9HnWneNKzwlKVyzCaMqEFCD6YpXPQZaIlu/jkFjH4LU
	shW79nPyr9Vuw/7MBwOe7jTui9E+JApfeBCOZOzB/0c4IgXOM27YFzvxDtMlZzCjqKdwTDNuNkl69
	2eFDFVrKn1c0x7H1Zs+aT/uWRNeYVF0EFSVs9xxFHNH4kIJjw4llpUhFwnfvg9jGOo31b85YL9i3f
	8NX0teUlNxgLr0V+HO7co/tkX2+E9EsRUkLST/cvFeqX7TOsiiYr64h27lHtYCMwcOwp3EOh1cVgO
	yEyYoYPQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sven =?UTF-8?B?UMO8c2NoZWw=?= <s.pueschel@pengutronix.de>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Simon Xue <xxm@rock-chips.com>, kernel@pengutronix.de,
 Sven =?UTF-8?B?UMO8c2NoZWw=?= <s.pueschel@pengutronix.de>
Subject: Re: [PATCH v2] iommu/rockchip: disable fetch dte time limit
Date: Fri, 29 May 2026 19:47:27 +0200
Message-ID: <5524351.eFTFzoEnKi@phil>
In-Reply-To: <20260428-spu-iommudtefix-v2-1-f592f579e508@pengutronix.de>
References: <20260428-spu-iommudtefix-v2-1-f592f579e508@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_104736_664956_CBF90E14 
X-CRM114-Status: GOOD (  16.33  )
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

QW0gRGllbnN0YWcsIDI4LiBBcHJpbCAyMDI2LCAxODowNTozMSBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIFN2ZW4gUMO8c2NoZWw6Cj4gRnJvbTogU2ltb24gWHVlIDx4eG1A
cm9jay1jaGlwcy5jb20+Cj4gCj4gRGlzYWJsZSB0aGUgQml0IDMxIG9mIHRoZSBBVVRPX0dBVElO
RyBpb21tdSByZWdpc3RlciwgYXMgaXQgY2F1c2VzCj4gaGFuZ3VwcyB3aXRoIHRoZSBSR0EzIChS
YXN0ZXIgR3JhcGhpY3MgQWNjZWxlcmF0aW9uIDMpIHBlcmlwaGVyYWwuCj4gVGhlIFJHQTMgcmVn
aXN0ZXIgZGVzY3JpcHRpb24gb2YgdGhlIFRSTSBhbHJlYWR5IHN0YXRlcyB0aGF0IHRoZSBiaXQK
PiBtdXN0IGJlIHNldCB0byAxLiBUaGUgdmVuZG9yIGtlcm5lbCBzZXRzIHRoZSBiaXQgdW5jb25k
aXRpb25hbGx5IHRvCj4gMSB0byBmaXggVk9QIChWaWRlbyBPdXRwdXQgUHJvY2Vzc29yKSBzY3Jl
ZW4gYmxhY2sgaXNzdWVzLiBUaGlzIHBhdGNoCj4gc3F1YXNoZXMgdGhlIDIgdmVuZG9yIGtlcm5l
bCBjb21taXRzIHdpdGggdGhlIGZvbGxvd2luZyBjb21taXQgbWVzc2FnZXM6Cj4gCj4gTWFzdGVy
IGZldGNoIGRhdGEgYW5kIGNwdSB1cGRhdGUgcGFnZSB0YWJsZSBtYXkgd29yayBpbiBwYXJhbGxl
bCwgbWF5Cj4gaGF2ZSB0aGUgZm9sbG93aW5nIHByb2NlZHVyZToKPiAKPiAJbWFzdGVyICAgICAg
ICAgICAgICAgICAgY3B1Cj4gCWZldGNoIGR0ZSAgICAgICAgICAgICAgIHVwZGF0ZSBwYWdlIHRh
YmwKPiAJICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICB8Cj4gCShtYWtlIGR0ZSBpbnZh
bGlkKSAgPC0gIHphcCBpb3RsYiBlbnRyeQo+IAkgICAgICAgIHwgICAgICAgICAgICAgICAgICAg
ICAgIHwKPiAJZmV0Y2ggZHRlIGFnYWluCj4gCShtYWtlIGR0ZSBpbnZhbGlkKSAgPC0gIHphcCBp
b3RsYiBlbnRyeQo+IAkgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgIHwKPiAJZmV0Y2gg
ZHRlIGFnYWluCj4gCShtYWtlIGR0ZSBpbnZhbGlkKSAgPC0gIHphcCBpb3RsYiBlbnRyeQo+IAkg
ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgIHwKPiAJZmV0Y2ggZHRlIGFnYWluCj4gCSht
YWtlIGlvbW11IGJsb2NrKSAgPC0gIHphcCBpb3RsYiBlbnRyeQo+IAo+IE5ldyBpb21tdSB2ZXJz
aW9uIGhhcyB0aGUgYWJvdmUgYnVnLCBpZiBmZXRjaCBkdGUgY29uc2VjdXRpdmVseSBmb3VyCj4g
dGltZXMsIHRoZW4gaXQgd2lsbCBiZSBibG9ja2VkLiBGb3J0dW5hdGVseSwgd2UgY2FuIHNldCBi
aXQgMzEgb2YKPiByZWdpc3RlciBNTVVfQVVUT19HQVRJTkcgdG8gMSB0byBtYWtlIGl0IHdvcmsg
YXMgb2xkIHZlcnNpb24gd2hpY2ggZG9lcwo+IG5vdCBoYXZlIHRoaXMgaXNzdWUuCj4gCj4gVGhp
cyBpc3N1ZSBvbmx5IGFwcGVhcnMgb24gUlYxMTI2IHNvIGZhciwgc28gbWFrZSBhIHdvcmthcm91
bmQgZGVkaWNhdGVkCj4gdG8gInJvY2tjaGlwLHJ2MTEyNiIgbWFjaGluZSB0eXBlLgo+IAo+IGlv
bW11L3JvY2tjaGlwOiBmaXggdm9wIGJsb2NrZWQgYW5kIHNjcmVlbiBibGFjayBvbiBSSzM1Nlgg
YW5kIFJLMzU4OAo+IAo+IFJLMzU2OCBhbmQgUkszNTg4IGhhcyB0aGUgc2FtZSBpc3N1ZSBhcyBS
VjExMjYvUlYxMTA5IHRoYXQgY2F1c2VkIGJ5Cj4gZHRlIGZldGNoIHRpbWUgbGltaXQsIFNvIHdl
IGNhbiBzZXQgQklUKDMxKSBvZiByZWdpc3RlciAweDI0IGRlZmF1bHQKPiB0byAxIGFzIGEgd29y
a2Fyb3VuZC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4
LmRlPgoKQWNrZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgpASm9lcmc6
IGNvdWxkIHdlIGdldCB0aGlzIG1lcmdlZD8KClRoYW5rcwpIZWlrbwoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
