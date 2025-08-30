Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70BD6CA0EFF
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Aug 2025 22:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:Cc:References:Message-Id
	:Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kF9yXzZeS433FLaLVkLJqWOKvNB+V38g/WnWMFGAL7o=; b=tPVJU1cy77apDb
	0jqDaxMP2+TkM+HTKN2AqLQOGQc/AjtXeoQMIvhgGISjPiwQeqVQtu4GZxOGl0w5bTv+CuwBPvP70
	5XmGngf2Z76MhpDwljdTENwo/G9U2nHPUKDMqA10cZwdypCzCIwV01YMKwT76xLTFOlBOqPHlEhtN
	XOheNGGVbpiWSaAd9yN05+rZHp7FNRs0YGbQvCj6vJ/bHq/6op0XOl6nou0hQFsOQFcWuciQKlcko
	8JHpU92yMUjThtoUZ2w72xjDfJVB0G9ylYbQvQHLvTGf3zMrGLLVGcvO+NjRJt6Fp8vzbh+R0SkNZ
	Gw6ZnaZidaoX9wGFlePw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usTzJ-00000008UKW-2W6k;
	Sat, 30 Aug 2025 22:23:57 +0000
Received: from chumsalmon.baetis.net ([2001:19f0:5:5b58:5400:5ff:fe17:97e8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usTwV-00000008U3Y-0EoA;
	Sat, 30 Aug 2025 22:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tahomasoft.com;
	s=default; t=1756592461;
	bh=7k6q+f86ghK/n5B2VunwMH6m8MBXQ8m4bSBSm/fUtbo=;
	h=From:Subject:Date:References:Cc:In-Reply-To:To:From;
	b=hwKdG4Z/bj7zMZIaxP+nL9Fm2QP6YdbTrxIg5YsgAXPLzNhhlbb1AfXosHe0tDz+b
	 p9D87AZO+rS8K6n78LaIvLa1MLTeufK+GEAFGi5fV8q8IIkpe64Lnfwml3IDpArcUH
	 Bty9g3c156i8nJAHu+8UoZp/cPWSjjIlyh9nF7UnoEtjSdS7rp6UD6c343X/6vgnSa
	 9hZbdJU4sM3GhhHvU4LGt3ysGab5TpqWvvTmnW652+JmTm3FUNw5SQlxArvHOMQzRG
	 DGdMwYPBW1IRlnjbiOC/xGYu7XcJyyVeuHQA8lXJvVMoF3LxpiEDq5zIsiUA+tqSjH
	 fZUMZ6K3P68CA==
Received: from smtpclient.apple (unknown [IPv6:2600:1000:b0ec:e674:574:f959:86e5:7770])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by chumsalmon.baetis.net (Postfix) with ESMTPSA id 547F427E468;
	Sat, 30 Aug 2025 22:21:01 +0000 (UTC)
From: Erik Beck <xunil@tahomasoft.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH 0/4] arm64: dts: rockchip: Add HINLINK H66K/H68K
Date: Sat, 30 Aug 2025 18:20:50 -0400
Message-Id: <AAEEDECA-1419-487E-B018-E0590ED532D1@tahomasoft.com>
References: <2803b3d8-332e-4ada-a28f-eeba8285b7ec@lunn.ch>
Cc: Heiko Stuebner <heiko@sntech.de>, Chukun Pan <amadeus@jmu.edu.cn>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <2803b3d8-332e-4ada-a28f-eeba8285b7ec@lunn.ch>
To: Andrew Lunn <andrew@lunn.ch>
X-Mailer: iPhone Mail (22G100)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250830_152103_293253_68A7B0B2 
X-CRM114-Status: GOOD (  13.88  )
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

Cgo+IE9uIEF1ZyAzMCwgMjAyNSwgYXQgMTc6MzAsIEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5j
aD4gd3JvdGU6Cj4gCj4g77u/Cj4+IAo+PiBBcyBJIHdvcmtlZCBvbiBteSBkdHMsIEkgZGlzY292
ZXJlZCB0aGF0IHRoZSAxR2IgZXRoZXJuZXQgcG9ydHMsIHVzaW5nIGFuCj4+IFJUTDgyMTEsIGRv
bid0IHN1cHBvcnQgcmdtaWktaWQgbW9kZTsgb25seSByZ21paS4KPj4gKGh0dHBzOi8vd3d3LnJl
YWx0ZWsuY29tL1Byb2R1Y3QvSW5kZXg/aWQ9Mzk3NiZjYXRlX2lkPTc4NikuCj4gCj4gV2hpY2gg
ZXhhY3QgUlRMODIxMSBkb2VzIHRoZSBib2FyZCB1c2U/IFlvdSBsaW5rIHRvIGluZm9ybWF0aW9u
IGZvcgo+IHRoZSBSVEw4MjExRkQoSSktQ0csIHdoaWNoIGkgYXNzdW1lIGlzIHN1cHBvcnRlZCBp
biBMaW51eCBhcyBSVEw4MjExRi4KClRoYW5rcyBBbmRyZXc7IEl0IGlzbid0IGNsZWFyIHRvIG1l
IHdoaWNoIHNwZWNpZmljIHZhcmlhdGlvbiBpdCBoYXMuIEknbGwgdGFrZSBhbm90aGVyIGxvb2sg
YXQgdGhlIGJvb3QgbG9ncyBhbmQgc2VlLiBUaGUgc2lsa3NjcmVlbiBvbiB0aGUgY2hpcHMgYXJl
IGZhaW50LCBidXQgd2lsbCBsb29rIHRoZXJlIHRvby4KPiAKPiBodHRwczovL2VsaXhpci5ib290
bGluLmNvbS9saW51eC92Ni4xNi4zL3NvdXJjZS9kcml2ZXJzL25ldC9waHkvcmVhbHRlay9yZWFs
dGVrX21haW4uYyNMNTE5Cj4gCj4gVGhpcyBpbmRpY2F0ZXMgaXQgc3VwcG9ydHMgYWxsIGZvdXIg
UkdNSUkgbW9kZXMuIEFuZCBpbiBnZW5lcmFsLCBhbGwKPiBQSFkgZHJpdmVycyBpbiBMaW51eCBm
b3IgUkdNSUkgUEhZcyBzdXBwb3J0IGFsbCBmb3VyIFJHTUlJIG1vZGVzLgo+IAo+PiBDaGFuZ2lu
ZyB0aGlzIG1ha2VzIGEgaHVnZSBkaWZmZXJlbmNlIGluIHRoZSBldGhlcm5ldCB0aHJvdWdocHV0
IHNwZWVkLiBXaXRoCj4+IHJnbWlpLWlkIG1vZGUgc3BlY2lmaWVkLCB0aHJvdWdocHV0IGlzIGFi
b3V0IDYuNSBNYnMuIENoYW5naW5nIHRoaXMgdG8gcmdtaWkKPj4gbW9kZSBpbmNyZWFzZXMgdGhy
b3VnaHB1dCB0byBhYm91dCA5NjAgTWJzLgo+IAo+IEhlcmUgaXMgc29tZSBtb3JlIGluZm9ybWF0
aW9uIGFib3V0IHRoYXQgdGhlIGZvdXIgUkdNSUkgbW9kZXMgbWVhbiwKPiBhbmQgaG93IHlvdSBz
aG91bGQgdXNlIHRoZW0gaW4gTGludXg6Cj4gCj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20v
bGludXgvdjYuMTYuMy9zb3VyY2UvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25l
dC9ldGhlcm5ldC1jb250cm9sbGVyLnlhbWwjTDI2NAo+IAo+ICAgIEFuZHJldwoKVGhhbmsgeW91
IQo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
