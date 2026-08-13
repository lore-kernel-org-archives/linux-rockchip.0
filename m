Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12C26C5CFEB
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2026 13:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bcad056+qCg8I6e6Sx5CTsznITQTqEf94EG1SEH6yfo=; b=3IGfZgQqAktW9I
	KU8oyUepzDkdHoG3pfCIt3EcRnChghRDYm1B3iZArZ7SIXEQLkyXqi9wbwcfga86WRPuQtSuFFt2T
	vegn+sw5QuLItnKgoYWW2loSo3gniktnHcbzDEUaHEzVyZCEyAa4kidjXds6o1mvCFMtp0BkuPm7r
	q5Oxq34VlYI7A7HpREYR99u1B3VNqd6yKqCaY1iWW92n93Dt5EQcABMyniNT5quMCppOXuSuR+6ih
	jtQbSdl2xz0Cc8KVG5ZC7zFJpxYV2MjbdVoD0A3TwNvO+mHvde4SBFZ5B0EMUt4PrB9DO/An12dMe
	HVPEm0BI/Z0ixEjmkXUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuVaw-00000000lGr-1BSH;
	Thu, 13 Aug 2026 13:35:42 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuVau-00000000lFU-11sx;
	Thu, 13 Aug 2026 13:35:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A2AB1405C9;
	Thu, 13 Aug 2026 13:35:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02F7D1F00A3D;
	Thu, 13 Aug 2026 13:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786628139;
	bh=u/QNXzsOaE2suX66IMMLbQ/FeLVy8GcdhacP7ftayeM=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=P3q5vIKYkO+QFEOTZ/q9tTT8RIztZL1ripaVIZXGvUNRXzITdErUVVhW0wwHEf2Iv
	 qIqrF6DwiTxpwNPlf0CpaYgzEWUYAaAM/XX9vkEdmiZ0817ZjGhE/ROuMDi4zsikQt
	 1YMRJW96FTuG4pVqSq//uXBgsqpzaguvqEf+MWXHn2gG5K2nerfXuBwV6afKQ7vXM4
	 vSBf9YCjCDMhMCV3HmpbKOeWjCaMnP5W7cUKiw233n4ufLrZg6gAWegEWq03oZcxgh
	 1OuTn+yOMKDmzb2EElmcTABf0p+NrFplMfEaFekJC6Dfi3YIUWydkqJZG29VMfHJYm
	 iVFjgW8B7/4qw==
Message-ID: <59d73aba5b4fcaa2b645a433821ea7aa@kernel.org>
Date: Thu, 13 Aug 2026 13:35:37 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v10 20/69] drm/display: hdmi-state-helper: Add source
 TMDS rate validation
In-Reply-To: <20260731-dw-hdmi-qp-scramb-v10-20-294364b2cf15@collabora.com>
References: <20260731-dw-hdmi-qp-scramb-v10-20-294364b2cf15@collabora.com>
Cc: dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, "Algea
 Cao" <algea.cao@rock-chips.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Andy
 Yan" <andy.yan@rock-chips.com>, "Chen-Yu Tsai" <wens@kernel.org>, "Daniel
 Stone" <daniels@collabora.com>, "Dave Stevenson" <dave.stevenson@raspberrypi.com>, "David
 Airlie" <airlied@gmail.com>, "Diederik de Haas" <diederik@cknow-tech.com>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, "Liu
 Ying" <victor.liu@nxp.com>, "Luca Ceresoli" <luca.ceresoli@bootlin.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maud Spierings" <maud_spierings@hotmail.com>, "Maxime
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

On Fri, 31 Jul 2026 19:19:27 +0300, Cristian Ciocaltea wrote:
> Validate the computed TMDS character rate against
> connector->hdmi.max_tmds_char_rate, when provided by the driver/source.
> 
> This gives HDMI connectors common support for rejecting modes whose TMDS
> character rate exceeds the source supported limit, while still allowing
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
