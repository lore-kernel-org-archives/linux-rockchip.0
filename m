Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70A13C5DF88
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 09:54:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KrRugpB5cK2nnRnIO8ZcCBFNNMLLEBpN2/fx5OoIMg=; b=2hLvWiq0PFsnzR
	MDHZ4Q6QfGJQxbfBE6uS1AzIhUnQsUS2CNKLV/TWXua0c3oOqGTmK54WJmST1UIiZDXRARqzwYB2P
	eNO1xMQGUhjDvbjYC28D78JimULnJ923Oyrzrgaf47iAtV/HsFssw7bnwUMsCEYoGIKverFL32NyD
	sTVO8muKVIPsgX1vIoXxoo7k50sM1A+flOx/6V56jM/8eND9EoFCP9CVpFFQmj/3cglar4k9xjdLP
	+hl7ilwVYrGxfPYKm55pUm2oR6L+RUjzjL0t3XwjE0wOHdfuVHV2f8/KtmvIrm3IUhQVE0KQ8OzVN
	pwQwvrkTiTMZmw6iqCMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwczf-00000009SU2-15Yw;
	Wed, 19 Aug 2026 09:53:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwczd-00000009STd-3e1Z;
	Wed, 19 Aug 2026 09:53:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8F1DD4036F;
	Wed, 19 Aug 2026 09:53:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC1DB1F00A3A;
	Wed, 19 Aug 2026 09:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787133237;
	bh=bsPdTqWQt9EZk/eeiAqslxNuDLvoJkFFPkauf4L5tk0=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=c2hhq5OkjEM2LNDasG7lPfDRbVfEJif6bxj67WGTbBdHTiadFvQQXoA2fQ0neQT6T
	 4i5qwwO0M9gG5noky+pLzjJ93ar/MwHRTZ0J2iGINErNFH1lQr0HSSY+MMCU4b5+W5
	 X12t7N33ycJ8qV3O5EhF9sN5cOPySXovsWtlKicQBWqFuFCaEsqRoxhjGzdcnvY6gq
	 CGsVIjkg/lmiPfMXBLXuJfYj9oKu/2dLY2SS0uUuCVXOVzUETXpzCusGzY25FuSk2+
	 3r17g6OhrO1AYrp0AqLmj0qDB1TiEtpINzpHbzc/ZNy0GMIKj7fi3mnIw4iE4NsQ7Q
	 TFhoDui7dzr+Q==
Message-ID: <f969e994fa74d4e376c6c8f4a705c7ef@kernel.org>
Date: Wed, 19 Aug 2026 09:53:54 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v10 06/69] drm/probe-helper: Introduce .force_ctx()
 connector callback
In-Reply-To: <20260731-dw-hdmi-qp-scramb-v10-6-294364b2cf15@collabora.com>
References: <20260731-dw-hdmi-qp-scramb-v10-6-294364b2cf15@collabora.com>
Cc: dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, "Algea
 Cao" <algea.cao@rock-chips.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Andy
 Yan" <andy.yan@rock-chips.com>, "Chen-Yu Tsai" <wens@kernel.org>, "Daniel
 Stone" <daniels@collabora.com>, "Dave Stevenson" <dave.stevenson@raspberrypi.com>, "David
 Airlie" <airlied@gmail.com>, =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, "Jonas Karlman" <jonas@kwiboo.se>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Liu Ying" <victor.liu@nxp.com>, "Luca
 Ceresoli" <luca.ceresoli@bootlin.com>, "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime
 Ripard" <mripard@kernel.org>, =?utf-8?b?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Phong LE" <ple@baylibre.com>, "Raspberry
 Pi Kernel Maintenance" <kernel-list@raspberrypi.com>, "Robert Foss" <rfoss@kernel.org>, "Samuel
 Holland" <samuel@sholland.org>, "Sandy Huang" <hjc@rock-chips.com>, "Simona
 Vetter" <simona@ffwll.ch>, "Thomas Zimmermann" <tzimmermann@suse.de>
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

On Fri, 31 Jul 2026 19:19:13 +0300, Cristian Ciocaltea wrote:
> The .force() connector callback is invoked by
> drm_helper_probe_single_connector_modes() while the modeset acquire
> context it created is live, but the hook signature provides no way to
> pass it down, e.g. to support implementations needing to lock further
> objects.
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
