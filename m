Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7022FC47DA7
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 09:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tPhtfOB/rAgyboS6hXzSqfilXpTpJ/VqqzK/S+YRq0=; b=v6TrUIeXR90/Jk
	LyNNdcKqttUND6NBrhRqPiVYqzY8slemCDEC2eA8k2km1EmPwJ0bgPiEoQBA9G5rYUzc4WpbYtzVG
	yQlSGKLz/gnI8L25ZjsXPE9uKwGqHNLhrGyoOxOgbZQB59D8VBjbenkBW79zSNI35eaBguHH8SDuw
	IPL6OUgOomgnos862ZZS5iZ3EEsQ1FWJV0kAFa6X34/g0J/4ylC2cMYTtV/NKixtaqhJG6iXjCFHL
	pY6jHxKonaQ7d6lXBnEOWcLK/YnXV412d6AZ+oHsx+DEfmtR5jXO2tcuOLHVgGm5K4H0XLot+D+yR
	t4NcoS0J2hHsWVem6img==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2WE-00F9FQ-2E;
	Wed, 17 Jan 2024 09:47:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2WB-00F9E1-1C;
	Wed, 17 Jan 2024 09:47:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6A3F96155C;
	Wed, 17 Jan 2024 09:47:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9783C43390;
	Wed, 17 Jan 2024 09:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705484820;
	bh=T6o5+nTzLQWlEAzpAo1HwywEQgFNbp3/JkgtLKKRTzM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gqns8HzL24wK05v3NJZyOYUdP9XHN8Ll7HXad1hX/ubbc2vAs+nL+qQvNLMDunFOh
	 idsUtrw+b167co4DAI0/R5EK4ERtUQ7B+Kf+uoIoiSwuMhxZldTikpq8CBBtGkbz23
	 ubyfhdyn8+R1JJFmktDiV4JvbIzKYJnm5+c5DpEV/CBklYqXEFPMe/VDfQ50HTv4Ej
	 a9pil2vVWMBurx1shW1QBl3mOB0P5iRqAdQztAzrhys1ZpClblcccrhUYV+ewByGwE
	 5zM98WbTic129I/SY0K9YSb4/HQaK0uZTzNHC+yKd1vVer69iqgUd+kyghLxR0j9Di
	 GC77OHlcBY4vg==
From: Maxime Ripard <mripard@kernel.org>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, Alex Bee <knaerzche@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel test robot <lkp@intel.com>
In-Reply-To: <20240115092434.41695-2-knaerzche@gmail.com>
References: <20240115092434.41695-2-knaerzche@gmail.com>
Subject: Re: (subset) [PATCH] drm/rockchip: inno_hdmi: Explicitly include
 drm_atomic.h
Message-Id: <170548481754.96553.11502916321137598260.b4-ty@kernel.org>
Date: Wed, 17 Jan 2024 10:46:57 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_014731_448699_E6F88F46 
X-CRM114-Status: UNSURE (   6.38  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 15 Jan 2024 10:24:35 +0100, Alex Bee wrote:
> Commit d3e040f450ec ("drm/rockchip: inno_hdmi: Get rid of mode_set")
> started using drm_atomic_get_new_connector_state and
> drm_atomic_get_new_crtc_state which are defined in drm_atomic.h
> Building does currently only work if CONFIG_OF and CONFIG_DRM_PANEL_BRIDGE
> are enabled since this will include drm_atomic.h via drm_bridge.h (see
> drm_of.h).
> 
> [...]

Applied to drm/drm-misc (drm-misc-next).

Thanks!
Maxime


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
