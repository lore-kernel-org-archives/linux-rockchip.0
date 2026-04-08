Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E3E10F9968
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Apr 2026 19:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/HQNWiM635Zh0XOGJ0KfXL8ZbOaKVHO+qEvwTA97DI=; b=f92CPvn4+EkP6n
	m9ifXF/J84ix1snTgN8VUrnEZmOSKqG2kMg5Jn+dlVYKa0D/qK5yWs0c2S1igJozGGGoD+1xplmak
	GhVFwkVSYJoa5EGTq6d94DX33x37C4kNzrEGawsumv6FlyM5h5j1vhtM8oackBF//8p40bdCFOU5i
	6hlVyGt1z/CZ00NexNT0X1xYsf0+3B4Lwfdkw+hdy7qMHa1LuFvWqQnyxQeFh9q7twYnSZNdGr6FV
	WgRNXb4SvE/V6efn50TiVw7SKfgA3SY+SE3w/byV9vK2CGFg7GFmaknwja3R9vkqEbXfXz+UXc5jl
	ONBtx8mxiBgmY/Sh1K8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAYpX-00000009KrD-2IvE;
	Wed, 08 Apr 2026 19:44:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAYpV-00000009KqT-1lDb
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Apr 2026 19:44:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CBC70444ED
	for <linux-rockchip@lists.infradead.org>; Wed,  8 Apr 2026 19:44:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1EBEC2BC9E
	for <linux-rockchip@lists.infradead.org>; Wed,  8 Apr 2026 19:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775677488;
	bh=c5WnR933iazb0lin+oW2ATL9IN7UoHtxMl/eLZxJcb0=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=h/t7MvadYlcTmS24VXSHmX/uQwrlhTPAG3MLnhvHT91dvLf1Y2ieO9eXoZB2TXrcd
	 6GABrkaM5MR4G2jBPPXkPVUeDcpQpgVLiBiw/PBWRkDUAV+FOusvfQa8DFQ8vrOofk
	 mTrOrA1YtRCBVstexSwBr75B/IWCkwGvQ3+FSd/dZw+pTaDM2UMgkGWzNG3wSHB96d
	 N4XKgWKEeghWeFNeUWieYPSPSp5oMdyDa9hWwqIJOGSEFssdTQjmbKLkY+NLnjRGgN
	 E0isYap1tYKGjrpUD9Rp0DZUhbT33mXIupZgZFTI8g8W6/LiQbRd623SnmYa4Z/uSO
	 BX4OX5b2pOlAg==
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b8f9568e074so16248266b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Apr 2026 12:44:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXjSlSxnmi7KZQRAbrAEgnbGosO7BEukVyB8M4jGLmHsM58eiJLoXkwj3SUbmPqNNpP8I9g0uD6iGNQDGU3yw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwWX2uyfJtV3QvEPgXq/YUauuzfxpM/OSFLL7y0w/8WzvoPQEcv
	5AUgC6ktpxIN50GDkhtu1fIpbR5xkFQj5v66bvR9LLC9F1nFGW43GfRfvPFVY/JqsuwM7yJkfK+
	gC2E9mcNahDDYJBI4gRxhfwZBQwDFPQ==
X-Received: by 2002:a17:907:c20:b0:b97:a39d:ae3d with SMTP id
 a640c23a62f3a-b9d476a9b22mr36701966b.44.1775677486956; Wed, 08 Apr 2026
 12:44:46 -0700 (PDT)
MIME-Version: 1.0
References: <20260330195853.392877-1-macroalpha82@gmail.com>
 <20260330195853.392877-2-macroalpha82@gmail.com> <20260408131944.GA1901621-robh@kernel.org>
 <PH0PR19MB9973386B000D79AD04904C96B2A55BA@PH0PR19MB997338.namprd19.prod.outlook.com>
In-Reply-To: <PH0PR19MB9973386B000D79AD04904C96B2A55BA@PH0PR19MB997338.namprd19.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 8 Apr 2026 14:44:33 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLEBnF2g7p2ubkUnpc2X9+r7wx9HP-Wdzp5Cm5wj013eQ@mail.gmail.com>
X-Gm-Features: AQROBzDGxcdM9Vyw-5a18RZVzC8wwyekQwwIUeeoAHpDXWW3RAwMTQpvv5yzZ2I
Message-ID: <CAL_JsqLEBnF2g7p2ubkUnpc2X9+r7wx9HP-Wdzp5Cm5wj013eQ@mail.gmail.com>
Subject: Re: [PATCH V3 1/9] dt-bindings: iio: imu: icm42607: Add devicetree binding
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org, andy@kernel.org, 
	nuno.sa@analog.com, dlechner@baylibre.com, jic23@kernel.org, 
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, andriy.shevchenko@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_124449_478188_F16A25D1 
X-CRM114-Status: GOOD (  14.62  )
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

T24gV2VkLCBBcHIgOCwgMjAyNiBhdCA5OjMx4oCvQU0gQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdh
bkBob3RtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIEFwciAwOCwgMjAyNiBhdCAwODoxOTo0
NEFNIC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToKPiA+IE9uIE1vbiwgTWFyIDMwLCAyMDI2IGF0
IDAyOjU4OjQ1UE0gLTA1MDAsIENocmlzIE1vcmdhbiB3cm90ZToKPiA+ID4gRnJvbTogQ2hyaXMg
TW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+ID4KPiA+IFN1YmplY3Qgc3BhY2Ug
aXMgbGltaXRlZCwgc28gZG9uJ3Qgc2F5IGRldmljZXRyZWUgYmluZGluZyB0d2ljZToKPiA+Cj4g
PiBkdC1iaW5kaW5nczogaWlvOiBpbXU6IEFkZCBJbnZlbnNlbnNlIElDTTQyNjA3Cj4gPgo+ID4g
PiBBZGQgZGV2aWNldHJlZSBiaW5kaW5nIGZvciB0aGUgSW52ZW5zZW5zZSBJQ000MjYwNyBhbmQg
SW52ZW5zZW5zZQo+ID4gPiBJQ000MjYwN1AgaW5lcnRpYWwgbWVhc3VyZW1lbnQgdW5pdC4gVGhp
cyB1bml0IGlzIGEgY29tYmluZWQKPiA+ID4gYWNjZWxlcm9tZXRlciwgZ3lyb3Njb3BlLCBhbmQg
dGhlcm1vbWV0ZXIgYXZhaWxhYmxlIHZpYSBJMkMgb3IgU1BJLgo+ID4gPgo+ID4gPiBUaGlzIGRl
dmljZSBpcyBmdW5jdGlvbmFsbHkgdmVyeSBzaW1pbGFyIHRvIHRoZSBpY200MjYwMCBzZXJpZXMg
d2l0aCBhCj4gPiA+IHZlcnkgZGlmZmVyZW50IHJlZ2lzdGVyIGxheW91dC4KPiA+Cj4gPiBTaW1p
bGFyIGVub3VnaCB0byB1c2UgdGhlIHNhbWUgYmluZGluZyBzY2hlbWE/Cj4KPiBZZXMuIEkgd2Fz
IHVuZGVyIHRoZSAocG9zc2libHkgbWlzdGFrZW4pIGltcHJlc3Npb24gdGhhdCBkaWZmZXJlbnQg
ZHJpdmVycwo+IHJlcXVpcmVkIGRpZmZlcmVudCBiaW5kaW5nIHNjaGVtYXMsIGJ1dCB0aGVzZSBz
aG91bGQgYmUgc2ltaWxhciBlbm91Z2ggdG8KPiB1c2UgdGhlIHNhbWUgc2NoZW1hIGlmIGl0J3Mg
YWxsb3dlZC4KClRvdGFsIGZpbmUuIEJpbmRpbmdzIGFuZCBkcml2ZXJzIGNhbiBiZSAxOjEsIE46
MSBvciAxOk4uCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
