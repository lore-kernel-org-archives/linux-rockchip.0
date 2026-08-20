Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 034C6C5DF82
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 10:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnb50t7yXxMOJgHYAzjZ6QAoS/2oyXahGwl3Kt9/Gnc=; b=X1v57k0v6NB5j4
	dCeM1RDz0h1ZkY25H5oUqhwnkMWVkcvvfETzu/3gn8/1pAMA/Zdn/0mIn7vZhPskCMqTYAkU7H/19
	JCl8U4YxVhcyZM9f+vyF+dqoav1B6K88i2Lc+5O2adY1YE+exF2xYECgC4RacgWs6nLNWMzfbnZoZ
	0X+Ts7Tni5PR/WuZ1m0v5TrIlLZlRYUtx5dlNfZEGiO7A+owbv4mSqSHUEy+IxwzjIPmIhFNvlNT8
	/dB+JuUHtHt7iektwmO0gDI1Jox93hM1rH0NB+smOco+U8aS1Yww1WqtWS57tBJYY8DnZlXOU85Iu
	yR4V0sIUYQJsnzA84NCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwzsu-0000000BLhT-3RIV;
	Thu, 20 Aug 2026 10:20:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwzst-0000000BLh0-22h7;
	Thu, 20 Aug 2026 10:20:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id ED49A438F9;
	Thu, 20 Aug 2026 10:20:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B66C1F000E9;
	Thu, 20 Aug 2026 10:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787221230;
	bh=U3yivdMwt6Gg2HYaKSnwIc0VL2gtJGzznDItKCo5jGg=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=fHAHjyZtyyp0qu5upaGuQ2c7JO9vEOO+eBRCR3+jpa4/VLaDTgxK0cnLzG37eunvY
	 bsU4ehZseKSkvFyjDYqcUmilm6LuKtBcMS+b2ErzVjYDkd2cc/pWiuzbqFezEWlaq3
	 WrlLDWzuu+FEgLX7BDP/J6S0peGYrjf3LSjuAZyZvZvGwKbP+hE8beihfXDeRrZBDV
	 YLdwX7Jc/oWFiSMfgky+wCHSF1I7UhQSkqTvD9o+MWdKG8fQKV/FlS1JqzN6tCirqe
	 7bdfZ9T2VUTb8/4ngpUBf5YIH9EGQx7YbpKf8Z9Tb04icA2oeddNQoBAeQoKmyU4YQ
	 OqkyAem+wzjGg==
Message-ID: <689199296dc533b3088bc6f40312d066@kernel.org>
Date: Thu, 20 Aug 2026 10:20:28 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v10 69/69] drm/connector: Drop redundant max_bpc field
In-Reply-To: <20260731-dw-hdmi-qp-scramb-v10-69-294364b2cf15@collabora.com>
References: <20260731-dw-hdmi-qp-scramb-v10-69-294364b2cf15@collabora.com>
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

On Fri, 31 Jul 2026 19:20:16 +0300, Cristian Ciocaltea wrote:
> Now that all users migrated to the new drmm_connector_hdmi_init()
> signature, max_bpc is provided through struct drm_connector_hdmi_funcs,
> a reference to which is already stored in drm_connector_hdmi.
> 
> Drop the redundant connector->max_bpc field and point its users to
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
