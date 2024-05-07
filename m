Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C354DC10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 13:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mOxn8Iez0s3YvI0U6VfKLv0ESdK048K/725xtZ8qM1Y=; b=MFyK58/AxKk9uP
	b7XQzYU+yhEG7UJ+IrirG6KCDWGrl7y0KKH8EId0y8l9BiiRuEsuWbnHc9fPxJdvETXyDP9Me37GP
	xmlTE2InsxfHPEq3hc0AxJKIXgOK7nuhjB+S60YyYF5QYuFTHyskHhTs57c1lqmr35ILcXTVsg2JH
	MSsydxuuF5b5gME1KAMn8s5UfFNzkVffsJFqPWj12XhPUWt3I1/Q3z9L138e5SeCAnJCGFZBNcmaQ
	MTxXGO5JNtHjxxt/wuzNgnRlw8SLcUL8hcerOS9BrNbcw/YIOLxrU4JbPvkbt3+ysxRUZE85FH4pQ
	V5tiAUMErVudJkP6tTsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KXF-0000000B5aj-1u01;
	Tue, 07 May 2024 13:07:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4KXC-0000000B5YQ-0qvs
	for linux-rockchip@lists.infradead.org;
	Tue, 07 May 2024 13:07:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A753F61764
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:07:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 329ABC4DDE0
	for <linux-rockchip@lists.infradead.org>; Tue,  7 May 2024 13:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715087225;
	bh=j+wghIRtU8XRBH9LfF5TF5xcsTvdGeZIbDN38hCooeQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Eypp4xRINrHZA63eREhh7B6svDPcuXYUGCAIfefcr/dYVbpy1jpmCPc4Y/fapRZfX
	 fnWUjdhhsvbNDOz1jh6xO8IxTJJK/pG9EMEGEWvOF1LusthULEUKCu7hJiQ/G5AKkY
	 f9LRFsApDbqAxCNP/wdjUjgwb6CtqWihlWFGOCZlDGYyYKoxYhlUFy1dUqP9e+SRfI
	 i3KC3i5bLMPY2yG35jboDohUcjbZvGuE6MQJVN9ffr3IUKmGpD72ritmlGp+vccDVQ
	 NpdoTlTDo7J8nb4+58sRz27gBnEaziRhm0WoPJSGX9cNLNH/oKakILgN3LB1WesRRc
	 3mFT6F4CBLKoA==
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-de45dba157cso2508432276.3
        for <linux-rockchip@lists.infradead.org>; Tue, 07 May 2024 06:07:05 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV4cuDj2VzkxWrtyFpAZSv5pAB9NiYxLNl/u0jBaImfCCf/WWA/qnlKl0DYgrLpSjELaUibdCLRGqmnkdKsBqBzUBYdmT/Mz81pnku6R4c+Fdsk
X-Gm-Message-State: AOJu0YxoCTRF4KNhgaVw6jH+64yGlCWaf6zNRPyTNdGkVV+9reEy6HK/
	KmcKNFEyjGEqrLuOyJQjXSvrFnoynypdEVA0uHdq6/9X+zJDLiyck7Z7P2jSkNH3R1PnBiGrVqL
	WJFhE00x0rNJQSl6Vok9uXEqiwcqqyPxa0b05gw==
X-Google-Smtp-Source: AGHT+IHdyD26pVJBgrb9c4Ow6dW/EnHwHak0Zk5si1N+G/I8HPhJ47kGZx/tFd/LtFMXYIPi3VN1ol1LI2O6iJHNVs4=
X-Received: by 2002:a5b:c42:0:b0:dcd:13ba:cdd6 with SMTP id
 d2-20020a5b0c42000000b00dcd13bacdd6mr11816255ybr.47.1715087224457; Tue, 07
 May 2024 06:07:04 -0700 (PDT)
MIME-Version: 1.0
References: <20240503151129.3901815-1-l.stach@pengutronix.de> <20240503151129.3901815-10-l.stach@pengutronix.de>
In-Reply-To: <20240503151129.3901815-10-l.stach@pengutronix.de>
From: Robert Foss <rfoss@kernel.org>
Date: Tue, 7 May 2024 15:06:53 +0200
X-Gmail-Original-Message-ID: <CAN6tsi6HJDg3dWF=FGJNoONths7GWQrUmDtbW=Z4fVzi2CegOQ@mail.gmail.com>
Message-ID: <CAN6tsi6HJDg3dWF=FGJNoONths7GWQrUmDtbW=Z4fVzi2CegOQ@mail.gmail.com>
Subject: Re: [PATCH 09/14] drm/bridge: analogix_dp: remove PLL lock check from analogix_dp_config_video
To: Lucas Stach <l.stach@pengutronix.de>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, 
	Jingoo Han <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>, 
	Seung-Woo Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, kernel@pengutronix.de, 
	patchwork-lst@pengutronix.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_060706_407653_30DEFBA5 
X-CRM114-Status: GOOD (  15.40  )
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

T24gRnJpLCBNYXkgMywgMjAyNCBhdCA1OjEz4oCvUE0gTHVjYXMgU3RhY2ggPGwuc3RhY2hAcGVu
Z3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gVGhpcyBjaGVjayBpcyB3YXkgdG9vIGxhdGUgaW4gdGhl
IERQIGVuYWJsZSBmbG93LiBUaGUgUExMIG11c3QgYmUgbG9ja2VkCj4gbXVjaCBlYXJsaWVyLCBi
ZWZvcmUgYW55IGxpbmsgdHJhaW5pbmcgY2FuIGhhcHBlbi4gSWYgdGhlIFBMTCBpcyB1bmxvY2tl
ZAo+IGF0IHRoYXQgcG9pbnQgaW4gdGltZSB0aGVyZSBpcyBzb21ldGhpbmcgc2VyaW91c2x5IHdy
b25nIGluIHRoZSBlbmFibGUgZmxvdy4KPgo+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIFN0YWNoIDxs
LnN0YWNoQHBlbmd1dHJvbml4LmRlPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2Fu
YWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYyB8IDUgLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDUg
ZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFs
b2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4
L2FuYWxvZ2l4X2RwX2NvcmUuYwo+IGluZGV4IGZkYjJjMmEyYjY5YS4uYjRhNDczMTFjZmU4IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBf
Y29yZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9k
cF9jb3JlLmMKPiBAQCAtNzIwLDExICs3MjAsNiBAQCBzdGF0aWMgaW50IGFuYWxvZ2l4X2RwX2Nv
bmZpZ192aWRlbyhzdHJ1Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCkKPgo+ICAgICAgICAgYW5h
bG9naXhfZHBfc2V0X3ZpZGVvX2NvbG9yX2Zvcm1hdChkcCk7Cj4KPiAtICAgICAgIGlmIChhbmFs
b2dpeF9kcF9nZXRfcGxsX2xvY2tfc3RhdHVzKGRwKSA9PSBQTExfVU5MT0NLRUQpIHsKPiAtICAg
ICAgICAgICAgICAgZGV2X2VycihkcC0+ZGV2LCAiUExMIGlzIG5vdCBsb2NrZWQgeWV0LlxuIik7
Cj4gLSAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+IC0gICAgICAgfQo+IC0KPiAgICAg
ICAgIGZvciAoOzspIHsKPiAgICAgICAgICAgICAgICAgdGltZW91dF9sb29wKys7Cj4gICAgICAg
ICAgICAgICAgIGlmIChhbmFsb2dpeF9kcF9pc19zbGF2ZV92aWRlb19zdHJlYW1fY2xvY2tfb24o
ZHApID09IDApCj4gLS0KPiAyLjM5LjIKPgoKUmV2aWV3ZWQtYnk6IFJvYmV0IEZvc3MgPHJmb3Nz
QGtlcm5lbC5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
