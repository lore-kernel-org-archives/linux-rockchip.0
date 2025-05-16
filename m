Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5C78C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 May 2025 10:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MY1ysGI/gUWdNVitE1hHpD3eoSJdCIwR8O3y890O2gs=; b=C1K4Frzvjs9B4F
	GX5fFY5b6/sCW+M7ggVS3rSImWIjMNiL4FKRJmoZjv2Q/nMoRDEm87M2KdxZpZM2s2ggeaVmH71yL
	vDVPqBoYx4Sp5kUUeYs8koWpQLr08WJv7DTQOUaueBGTttEfi1oJkDPafcDbL3x22HTy1bi/jPVUm
	4FYSW6xLgR8j0fwIJNQOIkPiM7zGvACordwaS9JHe+m9xs4jPYepmeE7ubt76g1qt8tX0xnAtN90v
	SJGtTr+1VfCbJar/GhxOI4KXpgZvblhI0Hukq8oUyRNVqwxct45U6q2Iz1+qe4rw8moE1wIZ4JQsu
	8eM09Wd8VtA1XyVo2iYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFrs6-000000034bg-0vML;
	Fri, 16 May 2025 10:00:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFrq2-000000034Jg-2W80;
	Fri, 16 May 2025 09:58:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=QVfxvrCQXv1stWTNGX4NXG+vcy75UugbfRcy9FAUof4=; b=KyESI/2J9ezWNblBEXm8WCY5Vx
	N0U6K8cowUXXXmvRS21Yz3CFNQF01H2tUlXEnlpnSymSWijOPM4wuA18OBysE8g3XQMj4yFYRJTBs
	VJ6WcqCkCQK2BXggU71M67bIiMNvzg//sKECW9IUOuIFZUkbzkZWfB3XyM4iG4H+RPlX0Yw12AXFi
	VAZkVGylkbqpe+685ZOX7YOaL+MSIrvGMk95uxNPsNxtRG18D3YZ+a5Z/HFWL1yQI+BDxJmln1pl/
	Mtk/ViNcfB4w0c47ve5aE54sxZ+w9iBxM0roTDImQ4HzIYBlmWBVfBcx1S7RreM67pjt4/poXXeBG
	ZqDNxL9w==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uFrpU-00016q-Dg; Fri, 16 May 2025 11:58:12 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: long.yunjian@zte.com.cn, hjc@rock-chips.com,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 fang.yumeng@zte.com.cn, mou.yi@zte.com.cn, xu.lifeng1@zte.com.cn,
 ouyang.maochun@zte.com.cn
Subject: Re: [PATCH] drm/rockchip: Use dev_err_probe() to simplify code
Date: Fri, 16 May 2025 11:58:11 +0200
Message-ID: <2022996.jZfb76A358@diego>
In-Reply-To: <94e0951b-46e1-439b-9dbc-c2009a78b04b@kernel.org>
References: <20250515203554564-j1jBXUXR6bdiN6zARicC@zte.com.cn>
 <94e0951b-46e1-439b-9dbc-c2009a78b04b@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_025846_656670_87A2C028 
X-CRM114-Status: GOOD (  14.08  )
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

QW0gRG9ubmVyc3RhZywgMTUuIE1haSAyMDI1LCAxNzo1NDoyMCBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6Cj4gT24gMTUvMDUvMjAyNSAx
NDozNSwgbG9uZy55dW5qaWFuQHp0ZS5jb20uY24gd3JvdGU6Cj4gPiBGcm9tOiBZdW1lbmcgRmFu
ZyA8ZmFuZy55dW1lbmdAenRlLmNvbS5jbj4KPiA+IAo+ID4gSW4gdGhlIHByb2JlIHBhdGgsIGRl
dl9lcnIoKSBjYW4gYmUgcmVwbGFjZWQgd2l0aCBkZXZfZXJyX3Byb2JlKCkKPiAKPiBUaGF0J3Mg
bm90IHByb2JlIHBhdGguIEkgYW0gbm90IHN1cmUgaWYgeW91IHJlYWxseSB1bmRlcnN0YW5kIHRo
aXMgY29kZS4KCkkgdGhpbmsgdGhhdCBpcyBzb21ld2hhdCBkZWJhdGVhYmxlLgoKZHdfaGRtaV9y
b2NrY2hpcF9iaW5kKCkgaXMgcGFydCBvZiB0aGUgcm9ja2NoaXAtZHJtIGNvbXBvbmVudCBkZXZp
Y2UsCnNvIHBhcnQgb2YgaXRzIHByb2JlLXBhdGguIEFsc28gSSB0aGluayBqdXN0IHRoZSBwcmVz
ZW5jZSBvZiBFUFJPQkVfREVGRVIKd2hpY2ggY2F1c2VzIHRoZSBkZXZpY2UgdG8gcmUtdHJ5IHBy
b2JpbmcgbGF0ZXIgaXMgYSBuaWNlIGluZGljYXRvciB0aGF0IHRoZQpjb2RlIGluIHF1ZXN0aW9u
IGlzIF9hXyBwcm9iZSBwYXRoLiAoYW5kIHVzYWdlIG9mIEVQUk9CRV9ERUZFUiBpcyBhbgplc3Rh
Ymxpc2hlZCBwYXR0ZXJuIHRvIG1ha2UgdGhhdCBjb21wb25lbnQgZGV2aWNlIHJlLXRyeSBwcm9i
aW5nIGxhdGVyKQoKQW5kIHRoZSBwYXJzZV9kdCBmdW5jdGlvbiBpdHNlbGYgaXMgcGFydCBvZiB0
aGF0IHBhdGggdG9vLgoKCj4gPiB3aGljaCB3aWxsIGNoZWNrIGlmIGVycm9yIGNvZGUgaXMgLUVQ
Uk9CRV9ERUZFUiBhbmQgcHJpbnRzIHRoZQo+ID4gZXJyb3IgbmFtZS4gSXQgYWxzbyBzZXRzIHRo
ZSBkZWZlciBwcm9iZSByZWFzb24gd2hpY2ggY2FuIGJlCj4gPiBjaGVja2VkIGxhdGVyIHRocm91
Z2ggZGVidWdmcy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogWXVtZW5nIEZhbmcgPGZhbmcueXVt
ZW5nQHp0ZS5jb20uY24+Cj4gCj4gSW5jb21wbGV0ZSBjaGFpbi4KClllcCwgdGhlIHBhdGNoIG5l
ZWRzIGEgMm5kIFNpZ25lZC1vZmYtYnkgbGluZSBmcm9tCmxvbmcueXVuamlhbkB6dGUuY29tLmNu
IHBsZWFzZS4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
