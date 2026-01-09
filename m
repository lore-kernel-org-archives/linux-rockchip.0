Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39378D26D75
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 16:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIjvVyjXrlMv0r+C0Y+dbt6MsTg3COX9WwgRzo43eyo=; b=fPPsJqf9C08v10
	+2Dh4+EmTMY7IP+4GpRs9H7oGDgBEcDfPoFXEUfu2hzDgSMv7zK6h6pEokiXYe6BTu7q33X3MukPI
	359u0shq2a/WCx/h1HtWlIK2qCCsTV+uw3X4O8jxoaMumdp4h97/9EIK3J6Qovr84s+U7Atibey3x
	B0Q/PDtOdfM15pBha+nbvH/HMPSDnUHWO4f48BRNW7RbOf+DgR7PDvarKg5sLuT5JfziVZ33hAEdf
	nx2GQQsKMz1XapeV3yxNf8gJguo+qovNoTkQNKGFSIIByU9lfU8CqOFzZvOFs9yVXdeXJS7XqPFG0
	sKU59ZaL4HEXlcujb1mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFaO-00000002dsv-3YHt;
	Fri, 09 Jan 2026 16:43:40 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veFaM-00000002dsX-2bWJ
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 16:43:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EF3E0444AA;
	Fri,  9 Jan 2026 16:43:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 242F0C4CEF1;
	Fri,  9 Jan 2026 16:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767977017;
	bh=XVSQk98YA/CQhCCICd/K5oyuXF4TGH9yegBP5k4UYpE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=khQCFsM8x/WxHwVNP5pMA4Fmjj4UM1Ln7X1JIesEwolZgO0OsA0bk3zPk3aLOrcMc
	 eNYzO5UfTissABbxNy975g0HecO/CEUh0qJQcjkqqReC+YaXWhzmTed4jbUcqpuX4H
	 Bo/GruPdwZly8GpQNjzbXyAt/uSA2g2Mcem0uOALxXX6NqMSxKeTw15nacyQf6OCbP
	 2GFtWLklhYpZ4FmKZ1K/TZHc54PjTqUSzex5FnmZcBYrHnHOMOIDVHSBDdrkpcSpzD
	 SnvQxocZBEfkHQAd0CUo+G1pkYWEuCWHTtsvMAoZAe+lqEgDua6GLh1CEUCYKeD+VQ
	 XJPyCauVpUdAA==
Date: Fri, 9 Jan 2026 16:43:33 +0000
From: Lee Jones <lee@kernel.org>
To: Joseph Chen <chenjh@rock-chips.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v1 2/2] mfd: rk808: Add RK801 support
Message-ID: <20260109164333.GD1808297@google.com>
References: <20251231030951.818-1-chenjh@rock-chips.com>
 <20251231030951.818-3-chenjh@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251231030951.818-3-chenjh@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_084338_679640_5406DFF3 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
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

T24gV2VkLCAzMSBEZWMgMjAyNSwgSm9zZXBoIENoZW4gd3JvdGU6Cgo+IFRoZSBSSzgwMSBhcmUg
YSBQb3dlciBNYW5hZ2VtZW50IElDIChQTUlDKSBmb3IgbXVsdGltZWRpYQo+IGFuZCBoYW5kaGVs
ZCBkZXZpY2VzLiBUaGV5IGNvbnRhaW5zIHRoZSBmb2xsb3dpbmcgY29tcG9uZW50czoKPiAKPiAt
IDQgQlVDSwo+IC0gMiBMRE8KPiAtIDEgU1dJVENICj4gCj4gU2lnbmVkLW9mZi1ieTogSm9zZXBo
IENoZW4gPGNoZW5qaEByb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZmQvS2NvbmZp
ZyAgICAgICAgICAgICAgICAgfCAgIDYgKy0KPiAgZHJpdmVycy9tZmQvcms4eHgtY29yZS5jICAg
ICAgICAgICAgfCAgODEgKysrKysrKysrKwo+ICBkcml2ZXJzL21mZC9yazh4eC1pMmMuYyAgICAg
ICAgICAgICB8ICAzMyArKystCj4gIGRyaXZlcnMvcmVndWxhdG9yL3JrODA4LXJlZ3VsYXRvci5j
IHwgMjQzICsrKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgaW5jbHVkZS9saW51eC9tZmQv
cms4MDguaCAgICAgICAgICAgfCAxMTggKysrKysrKysrKysrKysKPiAgNSBmaWxlcyBjaGFuZ2Vk
LCA0NzcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKClBsZWFzZSBzZXBhcmF0ZSBvdXQg
dGhlIE1GRCBhbmQgUmVndWxhdG9yIHBhcnRzIGludG8gdGhlaXIgb3duIHBhdGNoZXMuCgotLSAK
TGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
