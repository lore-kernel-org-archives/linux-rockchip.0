Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AE61C25B79
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 May 2024 07:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wWLi/q+hbKwg6pBDnT+XigcA5lBxb5fR+l+qWaqLMY4=; b=Dx7whtaSNycC6z
	8SGheEKtmvxme3QSRpuescNWhMSOePrSWZF9kBf3wRaFR5/30s13jmeSshfganpnbQJTV5q/Lm/8V
	usnohsgITNeN7jaad18GjCL1Nttoc6CpwyZVO0wN8RciuDleTANQn9ziH/tfVin1nvnK0c/sEqYlP
	mzD6AB3gXm8/8YxfD6xhwByv6QbvkAt1WmkUpFbIABRRVaYwVbC/d7sjC8xHXy1Qz0cIoTgvNurJc
	5E4FlvGPaXJ3XQfIItt/WDVaetTptAieDwTkQlD09fuhiCJj9KGWoPjqdMWg430VcKFURbcktEdFs
	X2nPdFz1uWKlx8vCbVXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8bAu-0000000BZY8-0kGm;
	Sun, 19 May 2024 07:41:44 +0000
Received: from out-180.mta1.migadu.com ([95.215.58.180])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8bAn-0000000BZUz-0Zoq
	for linux-rockchip@lists.infradead.org;
	Sun, 19 May 2024 07:41:38 +0000
X-Envelope-To: val@packett.cool
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1716104492;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MnNP0xmGDxanAFfueiOaEkQQkHaHD1N0yNfpZxYHu7g=;
	b=vOygvmCDYinXST/hlK0BHdTlaBBRBua3v5DJoizXW0DvbnBy+6JMwYe825c+hN/C6EIrAU
	lkjsD5+VqDB/koqTW6oERNexd+smn06YnvgtrM5wvxYggFd7+xL6Ak0o4sp581Y0A+qLFC
	YC+cT7kry3X8lXNhqpcJIMQU7TPmmli3kg7+COe9BrF4izNbNK5e3DkMJ4to3GDm9dxAvC
	MRKyDzxMaLzmIQyQTc/2BrxrlbdFK4mtByEPvUI7aWyl3E+LyJbnjVDHk7nPH9P3UU7mOD
	0jFX8VnkCjcaBqEns5klYd7p348AoA/D2O6NYnNylrPRyhDUmcnKd0PRjRnpEg==
X-Envelope-To: stable@vger.kernel.org
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
	stable@vger.kernel.org,
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
Subject: [PATCH 2/2] drm/rockchip: vop: enable VOP_FEATURE_INTERNAL_RGB on RK3066
Date: Sun, 19 May 2024 04:31:32 -0300
Message-ID: <20240519074019.10424-2-val@packett.cool>
In-Reply-To: <20240519074019.10424-1-val@packett.cool>
References: <20240519074019.10424-1-val@packett.cool>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240519_004137_344795_83D1DE3C 
X-CRM114-Status: UNSURE (   6.87  )
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

Signed-off-by: Val Packett <val@packett.cool>
Cc: stable@vger.kernel.org
---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
index 9bcb40a64..e2c6ba26f 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop_reg.c
@@ -515,6 +515,7 @@ static const struct vop_data rk3066_vop = {
 	.output = &rk3066_output,
 	.win = rk3066_vop_win_data,
 	.win_size = ARRAY_SIZE(rk3066_vop_win_data),
+	.feature = VOP_FEATURE_INTERNAL_RGB,
 	.max_output = { 1920, 1080 },
 };
 
-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
