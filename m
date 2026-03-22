Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92EA2FC72C5
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Mar 2026 14:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VHlTx4hKdn0/d/8SMesYWgGGp6L1E28Nxaje/tOAnrc=; b=0BjhT0vadx7p5m
	vGfgpG8Yx+7Rqa+gXqUh/NWXLN11DmW3uMYhV1qkZCSTiydFWl1cpXEaxtDf63qvPgtpAqdEDmq2i
	On3OJJnZ8zk+yL2JMuFDzFYC8KJbIH9rUof1kDfG5sxRlyvj08UrdSgJh8Z7cF1LD42sbaaMEh3rR
	jaludm35+jsqPqkYvHzJ/3RgV+Vvby9aXYvKfwJlUu+d2nmLOw1vTs1Glo+6tWVnfmqtOmLpS0nVm
	iKl2Mi7CBjbvQQvC93NqgVLunNcqTxPqzMeifQqZNDJoOPCKotyS/UWjBAYnF3Q0M2+SqoPT3jQws
	2u5TX9IZx562M4mDN9Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4JMp-0000000FOD4-14xJ;
	Sun, 22 Mar 2026 14:01:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4JMn-0000000FOC9-2ykz
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Mar 2026 14:01:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id BBBA660103
	for <linux-rockchip@lists.infradead.org>; Sun, 22 Mar 2026 14:01:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6840FC2BCB6
	for <linux-rockchip@lists.infradead.org>; Sun, 22 Mar 2026 14:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774188080;
	bh=QmdXwTMByXlQtXyVEuM8ZEQe80RkWuQUj8gRkLjyMOs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=lrt8fvFazEtLA06IWldGlVlmOQ9mHzsIa5lVgNVMJuSLZls+9ojaALd2yLH9TNEK8
	 Z9AFdviJ2lH+eG675obsclGgxjJPTRcR4aY9K2wcxIRO4SxtnQE2vD38hUhjmnSxNl
	 fbIkJfFr85Mi6bC+kRkjnqxWTUvDU0vDN932IWPczz0VpJZdBLSRxu5Xe42qUqrH62
	 ouH6ScH4hlVLr8Ah+of3+v7WGTtarOykMwhMNii4TFCDP1/dh7cH0Fn36QDbjgMLbj
	 tVPINM0Fdw6zw+4j9KR5Qak4ZCyu+equOiDjcaEFva7JzaVpWesAogJeJme0DmRoVn
	 6fJJI4MGAtdWA==
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2c0fa90d47bso1226833eec.0
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Mar 2026 07:01:20 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXxKW25y1nXWEgIMkqi+egV+Un+7Xtb4UhvDYLKyuek1CAohMKY/MX4EldTdYZachZ+aLoeN7ER0RjZoTivGw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzdcduII99nYcQd0wZ7Ai1Pg6BKU8kf/FVEsxq5aUwmsLaywULp
	LMsdhC5J8kowUzhMPGkC3l1Gd322FyBv/XRxAZgHXFypPfzoJjxLZuWc++1D9xp5pc+R2wizYYQ
	iQ8Fg7zMVSXuYT+dvdbSpPEOc0Rt/pQ==
X-Received: by 2002:a05:7022:125:b0:119:e569:f875 with SMTP id
 a92af1059eb24-12a72342011mr4458266c88.18.1774188079697; Sun, 22 Mar 2026
 07:01:19 -0700 (PDT)
MIME-Version: 1.0
References: <20260305-drm-rework-color-formats-v3-0-f3935f6db579@kernel.org> <20260305-drm-rework-color-formats-v3-11-f3935f6db579@kernel.org>
In-Reply-To: <20260305-drm-rework-color-formats-v3-11-f3935f6db579@kernel.org>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 22 Mar 2026 14:01:07 +0000
X-Gmail-Original-Message-ID: <CAAOTY__bMYqtVLqYin4sLs1F=-yWoYVj=W0osL_vcwdqCHVACw@mail.gmail.com>
X-Gm-Features: AaiRm51o2YPhQeYKXw9UtRNG-i4wgZe6wEfJUWBYiwwTcCwjkboilWj5OZVfgGo
Message-ID: <CAAOTY__bMYqtVLqYin4sLs1F=-yWoYVj=W0osL_vcwdqCHVACw@mail.gmail.com>
Subject: Re: [PATCH v3 11/14] drm/mediatek: dp: Convert to drm_output_color_format
To: Maxime Ripard <mripard@kernel.org>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Jani Nikula <jani.nikula@linux.intel.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Rodrigo Siqueira <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, 
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Liu Ying <victor.liu@nxp.com>, Chen-Yu Tsai <wens@kernel.org>, 
	Samuel Holland <samuel@sholland.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	=?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Jani Nikula <jani.nikula@intel.com>
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

TWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPiDmlrwgMjAyNuW5tDPmnIg15pel6YCx
5ZubIOS4iuWNiDk6MDXlr6vpgZPvvJoKPgo+IE5vdyB0aGF0IHdlIGludHJvZHVjZWQgYSBuZXcg
ZHJtX291dHB1dF9jb2xvcl9mb3JtYXQgZW51bSB0byByZXByZXNlbnQKPiB3aGF0IERSTV9DT0xP
Ul9GT1JNQVRfKiBiaXRzIHdlcmUgcmVwcmVzZW50aW5nLCB3ZSBjYW4gc3dpdGNoIHRvIHRoZSBu
ZXcKPiBlbnVtLgo+Cj4gVGhlIG1haW4gZGlmZmVyZW5jZSBpcyB0aGF0IHdoaWxlIERSTV9DT0xP
Ul9GT1JNQVRfIHdhcyBhIGJpdG1hc2ssCj4gZHJtX291dHB1dF9jb2xvcl9mb3JtYXQgaXMgYSBw
cm9wZXIgZW51bS4gSG93ZXZlciwgdGhlIGVudW0gd2FzIGRvbmUgaXMKPiBzdWNoIGEgd2F5IHRo
YW4gRFJNX0NPTE9SX0ZPUk1BVF9YID0gQklUKERSTV9PVVRQVVRfQ09MT1JfRk9STUFUX1gpIHNv
Cj4gdGhlIHRyYW5zaXRpdGlvbiBpcyBlYXNpZXIuCj4KPiBUaGUgb25seSB0aGluZyB3ZSBuZWVk
IHRvIGNvbnNpZGVyIGlzIGlmIHRoZSBvcmlnaW5hbCBjb2RlIG1lYW50IHRvIHVzZQo+IHRoYXQg
dmFsdWUgYXMgYSBiaXRtYXNrLCBpbiB3aGljaCBjYXNlIHdlIGRvIG5lZWQgdG8ga2VlcCB0aGUg
Yml0IHNoaWZ0LAo+IG9yIGFzIGEgZGlzY3JpbWluYW50IGluIHdoaWNoIGNhc2Ugd2UgZG9uJ3Qu
CgpBY2tlZC1ieTogQ2h1bi1LdWFuZyBIdSA8Y2h1bmt1YW5nLmh1QGtlcm5lbC5vcmc+Cgo+Cj4g
UmV2aWV3ZWQtYnk6IFBoaWxpcHAgWmFiZWwgPHAuemFiZWxAcGVuZ3V0cm9uaXguZGU+Cj4gQWNr
ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgo+IC0tLQo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
