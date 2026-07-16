Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6101CC4450E
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 11:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O26sHqtX/PC5/HgBX+nR36sE7YtYGLl09U936bJy+Dg=; b=F5FmHnxy6yX3VP
	1nDEbzDdtag7GQCYLZPUa/QVDVHxiCcKnVYlVc59HnGAHLgKe0pUHMZO8UGirrf65lWuwnRTmX3pB
	1F+oQyIjHSOtmkKYIEdeBO+5FbA7Q/jZ6BfDOjhk5u8UM+lfuS3v730LuYLkdyncT+T/JSs3JNwMs
	OTk2f/2HmGEdMdSfApqDSh/WfbjOv7Xv3L5ZaoyJFqpoZVhItnv2VHp9iHF9BaThEN/QOpyKgKRu7
	JlRga9MoT6u6oP/boi+MAP2Aif+KwbAw5sKxpG2bHlDLamhw13ugQwWbUKM6WNXKKNslxcZi6sNvb
	4Oy8BMNODHREyoBxFM1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkKZI-0000000HAvL-1B5r;
	Thu, 16 Jul 2026 11:47:56 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkKZF-0000000HAuV-1xAJ
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 11:47:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1784202471;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=UAIX8vflpEyEoElDzYTggPPmyd+hUNgJkFp1xG3W/a0=;
	b=azsW49x6xxJ4w253OuFtXdI2JXffsGZyc/SNrIjZSBdXPkb0E2nmJhGc3ktcQ6BtzMW/4f
	rYUq2Zu+prASGAx+TkX5KttDyF5YM0ZbHBubImcdX4PgY0igQRpVxEQqO+aLwKrqs8hS4a
	9cV94fLvM84PGGBO0j60aXhl7hxJZ8E=
Received: from mail-yw1-f200.google.com (mail-yw1-f200.google.com
 [209.85.128.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-596-Un0CgEd9PSuXDTXnRCJseA-1; Thu, 16 Jul 2026 07:47:49 -0400
X-MC-Unique: Un0CgEd9PSuXDTXnRCJseA-1
X-Mimecast-MFC-AGG-ID: Un0CgEd9PSuXDTXnRCJseA_1784202469
Received: by mail-yw1-f200.google.com with SMTP id 00721157ae682-81e8a76a273so26816687b3.1
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 04:47:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784202468; x=1784807268;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UAIX8vflpEyEoElDzYTggPPmyd+hUNgJkFp1xG3W/a0=;
        b=IUswkKP5sT4eT6Okxs2jl8HiTM8gs5aFL7NecsMOs1zFI+vI/xGUAwSALhpFy1RjAX
         2trG5daP6lVpbA7WTszkkjQXEE+RIL4yKv0TlwjRGy5LaHujjKBx3Z/PQyP4PSQ8oAii
         SqAUOJ8F3D1ke4UGGCkGBL4j/7Lldk3M+h9IgB4NsNWZ8LXyU8eXfXCN+3y1z4TvTVRU
         PN8WxshUDznUjYkA7Tl2D7HeHke6keIHKT3zz1uY90B8et7u5s/nezV9N6CSWbdiZe8y
         uHDy5NqfDcP/Y2Y/wfipA5S9iGaIIOhoHmxmSSA19ZRKKXgjiqYrsEE04Tnc04ezZsqn
         gXZA==
X-Forwarded-Encrypted: i=1; AHgh+RpdwTP3EbYHi5EIr8hvocWMhfkk2MqPBeddARo1hd7+H9CUoG7ZOqMrGH0Z7/a7hYc2mMVq/WC+j+7X3ZW3Ow==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9zn+9gVCwITvBeiCdDYOyK1uNFBLfOfxzAFhHWXFvOFO2m6ye
	jChTGRdwK4WU7OusL0fsFYv/IEicCZGvh4KQvuJfE8rTEiBFhqAKaYQSaI3Rxqjz89Og+PEkEbH
	1XA7OqDd4J/BSTF78T3mpegxOkM2nYtf6bYUv+asikjyALSJzQ+a57XbDk7nN91owNfM1CIjhCE
	5sTis8Vw06nWgmHe60VYyD/mF9ERDd/l1lR7BvyhSzHkmF/CY7
X-Gm-Gg: AfdE7cm7DyF9/g/KcG30TJGVjYbHg2qJ/NfNXTvyENEn6PFKxXymDAA7HTuf7prM615
	8okKuzM3B8f61GU3SK7VEbXRsUnErJKYSl90nCICVaF8/XxZs32s1VNE4/DkUumrNQWkI2obZJ5
	tRTL8RMGy4nVfGkIDAAiLTZn9LP6IUxUqadWvNDkBC6Kr1C3eTExzlN0YR
X-Received: by 2002:a05:690c:6a89:b0:81e:c898:bc51 with SMTP id 00721157ae682-81ecfb77678mr53197217b3.70.1784202468577;
        Thu, 16 Jul 2026 04:47:48 -0700 (PDT)
X-Received: by 2002:a05:690c:6a89:b0:81e:c898:bc51 with SMTP id
 00721157ae682-81ecfb77678mr53196867b3.70.1784202468141; Thu, 16 Jul 2026
 04:47:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260713-drm_refcount_wiring-v2-0-d3bb61f4bd4d@redhat.com>
 <20260713-drm_refcount_wiring-v2-3-d3bb61f4bd4d@redhat.com> <hm3gW14-QtmZmT6DKePecw@nvidia.com>
In-Reply-To: <hm3gW14-QtmZmT6DKePecw@nvidia.com>
From: Albert Esteve <aesteve@redhat.com>
Date: Thu, 16 Jul 2026 13:47:37 +0200
X-Gm-Features: AUfX_mzB2JkO-VIACloxhbX7HbPpRRw8TGetupyA1jCWwziSfKUaXthnbS4hOYU
Message-ID: <CADSE00Lsr9gsW6HEFrrc6Aq+ecN5mN9Kev_mf5XKjKjAk44-GA@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] drm/panel: of_drm_find_panel() return a counted reference
To: Mikko Perttunen <mperttunen@nvidia.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Inki Dae <inki.dae@samsung.com>, Jagan Teki <jagan@amarulasolutions.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>, 
	Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>, 
	Linus Walleij <linusw@kernel.org>, Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Yannick Fertre <yannick.fertre@foss.st.com>, 
	Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
	Philippe Cornu <philippe.cornu@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Samuel Holland <samuel@sholland.org>, Jyri Sarha <jyri.sarha@iki.fi>, 
	Jingoo Han <jingoohan1@gmail.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Alison Wang <alison.wang@nxp.com>, Paul Kocialkowski <paulk@sys-base.io>, 
	Alain Volmat <alain.volmat@foss.st.com>, Raphael Gallais-Pou <rgallaispou@gmail.com>, 
	Thierry Reding <thierry.reding@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-sunxi@lists.linux.dev, linux-samsung-soc@vger.kernel.org, 
	linux-tegra@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: EDOf87fY2vxTHbI3C9hFDVS7gn8R3yOFIy2cSPIF360_1784202469
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_044753_589014_B4FD9D26 
X-CRM114-Status: GOOD (  33.76  )
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

T24gV2VkLCBKdWwgMTUsIDIwMjYgYXQgOToxNOKAr0FNIE1pa2tvIFBlcnR0dW5lbiA8bXBlcnR0
dW5lbkBudmlkaWEuY29tPiB3cm90ZToKPgo+IE9uIE1vbmRheSwgSnVseSAxMywgMjAyNiA4OjUz
4oCvUE0gQWxiZXJ0IEVzdGV2ZSB3cm90ZToKPiA+IENhbGxlcnMgb2Ygb2ZfZHJtX2ZpbmRfcGFu
ZWwoKSByZWNlaXZlIGEgcG9pbnRlciB3aXRoIG5vIHJlZmVyZW5jZQo+ID4gaGVsZCwgY3JlYXRp
bmcgYSB3aW5kb3cgd2hlcmUgdGhlIHBhbmVsIGRldmljZSBjYW4gYmUgdW5yZWdpc3RlcmVkCj4g
PiBhbmQgZnJlZWQgYmV0d2VlbiB0aGUgbG9va3VwIGFuZCBmaXJzdCB1c2UgKGUuZy4sIGRybV9w
YW5lbF9wcmVwYXJlKCkpLgo+ID4KPiA+IEZpeCB0aGUgbG9va3VwIGZ1bmN0aW9uIGJ5IGFjcXVp
cmluZyBhIHJlZmVyZW5jZSB3aXRoIGRybV9wYW5lbF9nZXQoKQo+ID4gYmVmb3JlIHJldHVybmlu
ZywgdW5kZXIgcGFuZWxfbG9jay4gQ2FsbGVycyBhcmUgbm93IHJlc3BvbnNpYmxlIGZvcgo+ID4g
Y2FsbGluZyBkcm1fcGFuZWxfcHV0KCkgd2hlbiB0aGV5IG5vIGxvbmdlciBuZWVkIHRoZSBwb2lu
dGVyLgo+ID4KPiA+IEZvciBicmlkZ2UgZHJpdmVycyB0aGF0IGltbWVkaWF0ZWx5IHdyYXAgdGhl
IHBhbmVsIGluIGEgcGFuZWxfYnJpZGdlCj4gPiAod2hpY2ggYWNxdWlyZXMgaXRzIG93biByZWZl
cmVuY2UpLCByZWxlYXNlIHRoZSBsb29rdXAgcmVmZXJlbmNlIHJpZ2h0Cj4gPiBhZnRlciB0aGUg
YnJpZGdlIGNyZWF0aW9uIGNhbGwuCj4gPgo+ID4gRm9yIGFuYWxvZ2l4LWFueDYzNDUsIHdoaWNo
IHN0b3JlcyB0aGUgcGFuZWwgZm9yIGRpcmVjdCB1c2UsIHJlbGVhc2UKPiA+IHRoZSByZWZlcmVu
Y2UgaW4gdGhlIGkyYyByZW1vdmUgcGF0aC4KPiA+Cj4gPiBGb3IgcGxhdGZvcm0gZHJpdmVycyB1
c2luZyBhbmFsb2dpeF9kcF9jb3JlIHdpdGggYSBjb21wb25lbnQgbGlmZWN5Y2xlCj4gPiAoZXh5
bm9zX2RwLCByb2NrY2hpcCBhbmFsb2dpeF9kcCksIHJlbGVhc2UgdGhlIGxvb2t1cCByZWZlcmVu
Y2UgaW4gdGhlCj4gPiBwbGF0Zm9ybSByZW1vdmUoKSBmdW5jdGlvbi4gVGhlIHBhbmVsX2JyaWRn
ZSBjcmVhdGVkIGR1cmluZyBiaW5kKCkgaG9sZHMKPiA+IGEgc2VwYXJhdGUgcmVmZXJlbmNlIHRo
YXQgZGV2bSBjbGVhbnVwIHJlbGVhc2VzIGFmdGVyIHJlbW92ZSgpIHJldHVybnMuCj4gPgo+ID4g
QWxzbyBmaXggZGV2bV9kcm1fb2ZfZ2V0X2JyaWRnZSgpIGFuZCBkcm1tX29mX2dldF9icmlkZ2Uo
KSBpbgo+ID4gYnJpZGdlL3BhbmVsLmMgaXRzZWxmOiBib3RoIGNhbGwgZHJtX29mX2ZpbmRfcGFu
ZWxfb3JfYnJpZGdlKCkgYW5kCj4gPiB0aGVuIHBhc3MgdGhlIHBhbmVsIHRvIGRldm0vZHJtbV9w
YW5lbF9icmlkZ2VfYWRkKCksIHdoaWNoIGFjcXVpcmVzCj4gPiBpdHMgb3duIHJlZmVyZW5jZSB2
aWEgZHJtX3BhbmVsX2JyaWRnZV9hZGRfdHlwZWQoKS4gVGhlIGxvb2t1cAo+ID4gcmVmZXJlbmNl
IHdhcyBuZXZlciByZWxlYXNlZDsgYWRkIGRybV9wYW5lbF9wdXQoKSBhZnRlciBlYWNoIGJyaWRn
ZQo+ID4gY3JlYXRpb24gY2FsbC4KPiA+Cj4gPiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS1v
cHVzLTQtNgo+ID4gU2lnbmVkLW9mZi1ieTogQWxiZXJ0IEVzdGV2ZSA8YWVzdGV2ZUByZWRoYXQu
Y29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dp
eC1hbng2MzQ1LmMgfCAgMyArKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3BhbmVsLmMg
ICAgICAgICAgICAgICAgICAgICB8ICA4ICsrKysrKy0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2Ry
bV9vZi5jICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMyArKy0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vZHJtX3BhbmVsLmMgICAgICAgICAgICAgICAgICAgICAgICB8IDEyICsrKysrKysrLS0t
LQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RwLmMgICAgICAgICAgICAgICAg
IHwgMTAgKysrKysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9k
cGkuYyAgICAgICAgICAgIHwgIDMgKysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL2ZzbC1kY3UvZnNs
X2RjdV9kcm1fcmdiLmMgICAgICAgICAgfCAxOCArKysrKysrKysrKysrKysrKysKPiA+ICBkcml2
ZXJzL2dwdS9kcm0vbG9naWN2Yy9sb2dpY3ZjX2ludGVyZmFjZS5jICAgICAgICB8IDEyICsrKysr
KysrKysrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9kcC1yb2NrY2hp
cC5jICAgIHwgMTEgKysrKysrKysrKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vc3RpL3N0aV9kdm8u
YyAgICAgICAgICAgICAgICAgICAgICB8ICAzICsrKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS9zdG0v
bHZkcy5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDMgKysrCj4gPiAgZHJpdmVycy9ncHUv
ZHJtL3N1bjRpL3N1bjRpX2x2ZHMuYyAgICAgICAgICAgICAgICAgfCAxMyArKysrKysrKysrKysr
Cj4gPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX3JnYi5jICAgICAgICAgICAgICAgICAg
fCAxMyArKysrKysrKysrKysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjZpX21pcGlf
ZHNpLmMgICAgICAgICAgICAgfCAgMiArKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS90ZWdyYS9kc2ku
YyAgICAgICAgICAgICAgICAgICAgICAgIHwgIDEgKwo+ID4gIGRyaXZlcnMvZ3B1L2RybS90ZWdy
YS9vdXRwdXQuYyAgICAgICAgICAgICAgICAgICAgIHwgIDMgKysrCj4gPiAgMTYgZmlsZXMgY2hh
bmdlZCwgMTExIGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gPgo+ID4gLi4uCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2RzaS5jIGIvZHJpdmVycy9ncHUvZHJt
L3RlZ3JhL2RzaS5jCj4gPiBpbmRleCA3ZjI1YzUwNjIxYzk0Li41N2EwMTZmNDc0MzRkIDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2RzaS5jCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vdGVncmEvZHNpLmMKPiA+IEBAIC0xNTE2LDYgKzE1MTYsNyBAQCBzdGF0aWMgaW50
IHRlZ3JhX2RzaV9ob3N0X2RldGFjaChzdHJ1Y3QgbWlwaV9kc2lfaG9zdCAqaG9zdCwKPiA+ICAg
ICAgIHN0cnVjdCB0ZWdyYV9vdXRwdXQgKm91dHB1dCA9ICZkc2ktPm91dHB1dDsKPiA+Cj4gPiAg
ICAgICBpZiAob3V0cHV0LT5wYW5lbCAmJiAmZGV2aWNlLT5kZXYgPT0gb3V0cHV0LT5wYW5lbC0+
ZGV2KSB7Cj4gPiArICAgICAgICAgICAgIGRybV9wYW5lbF9wdXQob3V0cHV0LT5wYW5lbCk7Cj4g
PiAgICAgICAgICAgICAgIG91dHB1dC0+cGFuZWwgPSBOVUxMOwo+ID4KPiA+ICAgICAgICAgICAg
ICAgaWYgKG91dHB1dC0+Y29ubmVjdG9yLmRldikKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vdGVncmEvb3V0cHV0LmMgYi9kcml2ZXJzL2dwdS9kcm0vdGVncmEvb3V0cHV0LmMKPiA+
IGluZGV4IDQ5ZTRmNjNhNTU1MGQuLjkwZGIzOWRiZGQzMzIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vdGVncmEvb3V0cHV0LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90ZWdy
YS9vdXRwdXQuYwo+ID4gQEAgLTE5NSw2ICsxOTUsOSBAQCBpbnQgdGVncmFfb3V0cHV0X3Byb2Jl
KHN0cnVjdCB0ZWdyYV9vdXRwdXQgKm91dHB1dCkKPiA+Cj4gPiAgdm9pZCB0ZWdyYV9vdXRwdXRf
cmVtb3ZlKHN0cnVjdCB0ZWdyYV9vdXRwdXQgKm91dHB1dCkKPiA+ICB7Cj4gPiArICAgICBpZiAo
b3V0cHV0LT5wYW5lbCkKPiA+ICsgICAgICAgICAgICAgZHJtX3BhbmVsX3B1dChvdXRwdXQtPnBh
bmVsKTsKPiA+ICsKPiA+ICAgICAgIGlmIChvdXRwdXQtPmhwZF9ncGlvKQo+ID4gICAgICAgICAg
ICAgICBmcmVlX2lycShvdXRwdXQtPmhwZF9pcnEsIG91dHB1dCk7Cj4gPgo+ID4KPgo+IHRlZ3Jh
X291dHB1dF9wcm9iZSdzIGVycm9yIGNsZWFudXAgcGF0aHMgbmVlZCB0byBiZSB1cGRhdGVkIHRv
IGNsZWFuIHVwCj4gdGhlIHJlZmNvdW50LiBBbHNvLCBpdCBjYW4gdGVjaG5pY2FsbHkgY2FsbCBk
cm1fb2ZfZmluZF9wYW5lbF9vcl9icmlkZ2UKPiBhbmQgdGhlbiBvdmVyd3JpdGUgdGhhdCB2YWx1
ZSB3aXRoIG9mX2RybV9maW5kX3BhbmVsLiBXaGlsZSB0aGVyZSdzCj4gYWxyZWFkeSBhIFdBUk5f
T04gZm9yIHRoYXQgY2FzZSwgSSB0aGluayBpdCB3b3VsZCBiZSBnb29kIHRvIGZpeCB0aGUKPiBy
ZWZjb3VudGluZyB0aGVyZSBhcyB3ZWxsIGZvciBjb25zaXN0ZW5jeS4KCkFncmVlZC4gSSByZWFs
bHkgbWlzc2VkIHRob3NlLiBJIGFtIGRvaW5nIGFub3RoZXIgZ2VuZXJhbCBjaGVjayBpbgpjYXNl
IEkgbWlzc2VkIHNpbWlsYXIgY2FzZXMuCgo+Cj4gQXMgYSBub3RlLCB0aGUgdGVncmEtZHNpIGNv
ZGUgYWxzbyB1c2VzIHRlZ3JhX291dHB1dCBhbmQgY2FuIG92ZXJ3cml0ZQo+IHRoZSBwYW5lbCBm
aWVsZCB3aXRoIGl0cyBvd24gLS0gYnV0IGluIHRob3NlIGNhc2VzIHRlZ3JhX291dHB1dCBzaG91
bGQKPiBuZXZlciBwb3B1bGF0ZSB0aGUgcGFuZWwgYW5kIHdlJ3ZlIGJlZW4gdGFsa2luZyBhYm91
dCByZW1vdmluZyB0aGF0Cj4gY29kZSBwYXRoIGFueXdheSwgc28gdGhlIGRzaSBjb2RlIGNhbiBj
b250aW51ZSB0byBhc3N1bWUgdGhhdAo+IHRlZ3JhX291dHB1dF9wcm9iZSBkb2Vzbid0IHBvcHVs
YXRlIGEgcGFuZWwuCgpUaGFua3MuIEkgd2lsbCBhZGQgYSBub3RlIGJlZm9yZSBvZl9kcm1fZmlu
ZF9wYW5lbCgpIGluIHRlZ3JhL2RzaS5jIHRvIGNsYXJpZnkuCgpCUiwKQWxiZXJ0Cgo+Cj4gQ2hl
ZXJzCj4gTWlra28KPgo+ID4gLS0KPiA+IDIuNTQuMAo+ID4KPiA+Cj4KPgo+Cj4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
