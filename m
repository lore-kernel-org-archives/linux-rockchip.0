Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B934AC5DF6D
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 10:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gv7ZbCT9afROPaynWLj52Ot8QFDpt0JjQYNk0H6XTCc=; b=kQ/mzyBMxVw8pN
	tWj1bnAkEjPXycPslwOutDfCRdq5HtjhZBSaqojb/+Z4CjE9ODzVF4RUZZzGYI9LOqCHEpQ6plQpp
	omFQO16kCw5hkdxXvWjh7+fWz9eZzOiVlc/C6E27wtG+E+Uld6hYoNjRB4vxsHUQUgquAhKMzovjo
	HUbk9v84bRrZg4OMLFP5HDZnLJh7XTdZVV01pv/TUd5lrKxzdZGaH+T1+GeD3MWah3BipMqwYGhLP
	BFT4I1EAfeWbQ75StZBkEBUiL45APq/9jdCXkCEFCQs9UzDR1KuZcf1ZMIPkzPw1JImymv6NT2Cpt
	H40qQVTLVCfSrwazClmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwdDr-00000009TxO-0wi0;
	Wed, 19 Aug 2026 10:08:39 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwdDp-00000009Tws-1d4O;
	Wed, 19 Aug 2026 10:08:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A981C404B9;
	Wed, 19 Aug 2026 10:08:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17A2A1F000E9;
	Wed, 19 Aug 2026 10:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787134116;
	bh=8E1PsAOid5BC49DUgScuCeyJ/f6f5M/DlBTmbHrfJBI=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=SIpfgmPFx0wpnKMwYIN+TgBcluBvATybKJErBVXdVRHD32SBb4BS3af8Nux7rFOJI
	 ocYTzhXFo6NJ3waRrd4K01LSXw21OABan6kd9N5WacixRwZ7ahLoofvG09bN6GQsY6
	 GqwveJCdVM+OoCjs9VabP9aOR/G53j9O/3J9aPxv89JtyHCgd4AjYubML4l6TgoFa+
	 /zywxYQWPVqdnz+RWy9hcvVN8YwMurRsVnpKheCjUj0uXcbKT2ZBbfV7D21gTCqkhl
	 +Amihg67Vby4VEFRHC/9SQpSk61oi5XOmMxspaTeyzHKzlvgHC/OGYGjEsVzRlIUqX
	 87OYYlkV6NZqg==
Message-ID: <7bcef767a1e204ab879ea0b3fdc54cd0@kernel.org>
Date: Wed, 19 Aug 2026 10:08:34 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v10 04/69] drm/connector: Add drmm_connector_hdmi_init()
 with new signature
In-Reply-To: <20260731-dw-hdmi-qp-scramb-v10-4-294364b2cf15@collabora.com>
References: <20260731-dw-hdmi-qp-scramb-v10-4-294364b2cf15@collabora.com>
Cc: dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, "Algea
 Cao" <algea.cao@rock-chips.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Andy
 Yan" <andy.yan@rock-chips.com>, "Chen-Yu Tsai" <wens@kernel.org>, "Daniel
 Stone" <daniels@collabora.com>, "Dave Stevenson" <dave.stevenson@raspberrypi.com>, "David
 Airlie" <airlied@gmail.com>, "Diederik de Haas" <diederik@cknow-tech.com>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, "Liu
 Ying" <victor.liu@nxp.com>, "Luca Ceresoli" <luca.ceresoli@bootlin.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 =?utf-8?b?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Phong
 LE" <ple@baylibre.com>, "Raspberry Pi Kernel Maintenance" <kernel-list@raspberrypi.com>, "Robert
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

On Fri, 31 Jul 2026 19:19:11 +0300, Cristian Ciocaltea wrote:
> In preparation for providing HDMI 2.x source capabilities, move the
> vendor, product, supported_formats and max_bpc parameters out of the
> init function into struct drm_connector_hdmi_funcs, and add new
> supported_hdmi_ver and supported_tmds_char_rate fields there as well.
> 
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
