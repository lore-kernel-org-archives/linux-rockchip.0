Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD3BBC2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 20:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7sdI67v+MEQ1oq6rcBgrNipxv68wp3/BB7fBRHJ4JWY=; b=w01b1wwRWcRxOu
	5ZMbH8qoVM+Z9uX6TXrrhhioLePtAgEImaMZhnGeQVPAiY3XbcSbr2o6cDANea8sXqfhNYlfv+lml
	rToM7lfW3UBIPyiDxUr1yJ7vMgy5uelWUAXwYch7Q2H81CIN7fDC+FgaQnq1h0v2lpAxiq3pFragC
	tDxrA2rOf6fnAoMetIiqYiSr15Yp4fGHYCogmiYnibvUyMnt2YCtpw8uy1DJAKsaCrMOQEXqve+wi
	6TCWZmef5N1U1cdv3Rc6WkLoYtXHbOQYwaevvf3SyaA8y+Fr4ePAP9IrEJBAx1u+hlvJcasGYb/Yr
	FS8TK0ug2YoBJplfq+Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLqVQ-00000000bkV-3enn;
	Mon, 24 Jun 2024 20:41:40 +0000
Received: from out-183.mta1.migadu.com ([95.215.58.183])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLqVN-00000000biD-0E6p
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jun 2024 20:41:38 +0000
X-Envelope-To: val@packett.cool
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1719261693;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xzQDjhOrGwD3tQUSZRV5dR0f05Nxv9TwNmLi45IeEPA=;
	b=aI5OECwnIhB55yaokMZbw0g8l+RbdY9aKqpV/dm5rtqadRfSmnAZuRJlL/hcj+5BN6ut41
	j2xAK7D94C/IFQNcKQVX9EtcK3vROwaZztlmY70JVtGdpUutud89T4/0D4VTanYMKN1CBu
	W7ruKZKF1YupCoi459CzRS2MnFGhAI1VLTx1tGlR8wlgUTR2ZuUKrTQ1XBHYCN1ExTIUbO
	/84OzWPgajgw7f9rc6Lea6uPhAZi1FPos4j0nLXMeykW/YwrA1JmX9A5gR6fq+zTpcQ/FY
	lsXDriUsd009uYuIA/h1LCN8yPTlJ9fq8pK9bsop1RZSm0Z+OEtwTP/k77IXuQ==
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: heiko@sntech.de
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: maarten.lankhorst@linux.intel.com
X-Envelope-To: mripard@kernel.org
X-Envelope-To: tzimmermann@suse.de
X-Envelope-To: airlied@gmail.com
X-Envelope-To: daniel@ffwll.ch
X-Envelope-To: dri-devel@lists.freedesktop.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
To: 
Cc: Val Packett <val@packett.cool>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] drm/rockchip: vop: Support internal display on RK3066
Date: Mon, 24 Jun 2024 17:40:47 -0300
Message-ID: <20240624204054.5524-1-val@packett.cool>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_134137_593950_8B5D9673 
X-CRM114-Status: UNSURE (   4.94  )
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

This tiny patch series makes the changes required to enable the RGB
display output on the Rockchip RK3066 SoC. Final version as discussed.

Val Packett (2):
  drm/rockchip: vop: clear DMA stop bit on RK3066
  drm/rockchip: vop: enable VOP_FEATURE_INTERNAL_RGB on RK3066

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 4 ++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 2 ++
 3 files changed, 7 insertions(+)

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
