Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22E2CC79F9E
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Sep 2026 12:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VzTDY7w10LKGGMimdJ7a6nl/KpzAjcI/5UQbqnsWhPw=; b=PJnkMsrntxj4JB
	C0HU/UD0xXACNcxB3xFTjtuUXANTH0mmBgHKFPmXZsIjpEyxi5I/MQjRc1MjznE8apUUPD/nK0M+3
	KLdIIwMd+kMrppv1xFyX7d0qbCRWuoBdI2Kku0cIKeplutD6JbdDzERm4cxYm067RhovPGu1abmUp
	HAIXHS04DdaJg4Xk+eb2q0Ky/dfQ+PWG6b2Y61K9uXeQNuNv1aCOqKOxoLEJLkGf+nPuc1+cceJ1s
	FnEGp/97+EkEFx1nxDU07RKC0HUbsHBqKkrgCgfv1AQ/60ELmDJDBgGJ1kZBDc0Hoo+YI05xrQmFJ
	aA2fvsr3rMYecevniJGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3uv1-0000000908c-0Jlk;
	Tue, 08 Sep 2026 12:27:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3uv0-00000009087-18Cu;
	Tue, 08 Sep 2026 12:27:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AF7F743BEB;
	Tue,  8 Sep 2026 12:27:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D16D21F00A3A;
	Tue,  8 Sep 2026 12:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788870437;
	bh=fzGtfk86Cjb9SfEfKKT3CvCMk5MzBMJhuuAr5zCkHDo=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=T+OZxDzmFhtwfxQUDigQV8iYgcmk1nVuS1p5I+fsWVjs6z/Foia6U8gnM+85CdD1q
	 8e3kEiGLj5EIgbAajVqBFp3BmOAhliLVBkj0EbrxHbdhYj0OvlJS0h96Wd2S+Zj9Pw
	 7jOLuBaY9BnvA7BAYgHvOcpQ/qlhcash2+du7RPJj3Ph3VhFr8SidngLg0LGPcaCmi
	 AiUiql/fUlpQrSx5KSbjx7cz3fJozZD1rnmNxtYPXWQanoXM8F7rp7I5rKC3oSnfTg
	 bPCZucNWjKUAAFXBzd2Q2OYiVjpAQTRt9a1cBETRT1WfyVUGh1JI/NJQbQA2+FmK2j
	 Duxwa0xZf8Fsw==
Message-ID: <d251e4005c5bef3e1cf1cd49abe0e1bb@kernel.org>
Date: Tue, 08 Sep 2026 12:27:14 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v11 07/74] drm/connector: Add HDMI 2.0 scrambler
 infrastructure
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-7-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-7-bc12954a0688@collabora.com>
Cc: dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, "Algea
 Cao" <algea.cao@rock-chips.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Andy
 Yan" <andy.yan@rock-chips.com>, "Chen-Yu Tsai" <wens@kernel.org>, "Daniel
 Stone" <daniels@collabora.com>, "Dave Stevenson" <dave.stevenson@raspberrypi.com>, "David
 Airlie" <airlied@gmail.com>, "Diederik de Haas" <diederik@cknow-tech.com>, "Dmitry
 Baryshkov" <lumag@kernel.org>, =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Helge
 Deller" <deller@gmx.de>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, "Liu
 Ying" <victor.liu@nxp.com>, "Luca Ceresoli" <luca.ceresoli@bootlin.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maud Spierings" <maud_spierings@hotmail.com>, "Maxime
 Ripard" <mripard@kernel.org>, =?utf-8?b?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Phong LE" <ple@baylibre.com>, "Raphael
 Gallais-Pou" <rgallaispou@gmail.com>, "Raspberry Pi Kernel Maintenance" <kernel-list@raspberrypi.com>, "Robert
 Foss" <rfoss@kernel.org>, "Samuel Holland" <samuel@sholland.org>, "Sandy
 Huang" <hjc@rock-chips.com>, "Simona Vetter" <simona@ffwll.ch>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 1 Sep 2026 21:50:31 +0300, Cristian Ciocaltea wrote:
> Add the connector-level infrastructure to support HDMI 2.0 scrambling:
> 
> - A drm_connector_hdmi_scrambler_supported() helper to report whether
>   the source supports the scrambling capability
> - A .scrambler_{enable,disable}() pair of callbacks in
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
