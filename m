Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 950EBC56208
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 15:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=excwRgRFSt+aD56pISXSi+RzZ1B/viuBBhTlRJ5a3F0=; b=qiU+TjotjZbDFi
	PLV+LO+jrNHdX8dadSk2W+GEZlxXY+UX4ONidd2hgngWaDNpUd20jWI6RdNPoEFsaidhHx7V3qbPW
	N1LUVkfk2CsTdUO02c6R5PxR2vbdktBCQ3etu/qS1TZgKDIhAmsAGa5CVMnNSnq2vPvMmbQi5Sa29
	Y++7CSUGeYUsrmEhrX2nzvND8QCzOKAjLUpOlndNQLSuTk84vXxLoHTkkRAlQbAu8MjYzbHGUmHFo
	DHL0Ks7HjXT/rQPiRQhsgjfpccfvKnlmeANQNIncdH+P1RZoYqe72bkiv7OalQ1Q64vlt+Si9iqCs
	zOYSWgLy5/Ky6U7MSLHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0Ow-000000068rM-04te;
	Thu, 06 Aug 2026 15:52:58 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ws0Ou-000000068r0-1EkM;
	Thu, 06 Aug 2026 15:52:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 638D4416A9;
	Thu,  6 Aug 2026 15:52:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87C151F000E9;
	Thu,  6 Aug 2026 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786031574;
	bh=XPw3enwGX95RXfElNSyDCr0BeaHfU7WQp7mz5RFXKzs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fujBcfWbb/WrGIyEmwZYzP7zqQl3QbxQvW98rB9PYwQJJE155W19yVWFpYNCfoias
	 JBMnQYTKi8jWnV0d2sg6waH3TA7Y0i/Cn2z0WaVLsjsTwaDkiVQ2sELtwWEhcCBpM2
	 h1F+h2E47iil+pbDsuNa+1BqsRyPGd+QCEOEJldZ3u5jKl0QB2m44X0dhXOU3LVtxJ
	 QwC+U0ZIQeQJUl6XH8726PwjE4vnOS+x2ovZ45og3/9UQ9uj/5xek4axw2uEUBb0MG
	 4fv/dEQgWkDJZ0I6t6lBegAPB2i78qYdWdiE9IW4K2qblYFtmWs89HiB3XiPOvde5z
	 ZVwzPNdV4rftA==
Date: Thu, 6 Aug 2026 21:22:50 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v6 5/7] phy: rockchip: phy-rockchip-typec: Add DRM AUX
 bridge
Message-ID: <anSt0gsVo29rLRqd@vaman>
References: <20260804070730.68-1-kernel@airkyi.com>
 <20260804070730.68-6-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260804070730.68-6-kernel@airkyi.com>
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

On 04-08-26, 15:07, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> Using the DRM_AUX_BRIDGE helper to create the transparent DRM bridge
> device.

Acked-by: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
