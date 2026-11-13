Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF91606A32D
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 16:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=T2WnSVaA;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=fPoa4qQo
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZixI0hFseb2aO5YR0bQLavuuF/Q7n+4LQez5SCexf0g=; b=T2WnSVaA8Tnsi/ZyrXTu/O1B3z
	T9lCSEbkOZKLyaa/QTSoxbn1zxE8PaDfBjQ0YPLDG/Ni/3EIhmzEp2gEPGG5kf1p2rFVszqty0Hso
	9FaB2ysUcaB2Ti/en0OcKee5Aw/i/L9m7wpoIbf8DY/4QLzyupTUf0cEW3uAbYYac0ytfzonGLgLh
	JTAZ/UKzbniDs0UZYiDQKxhbP1sL/bHAytZ2MQF+u81tcehLe2WboN9nRzVkQ1/lJpIyBO0CZ1ATg
	z+MeQ139MCnRi2l+Lr5tGg9ebiIfVIdfk22+tIKuBr8uG1dGmYSXdbS+UFMtvmsNfOGI3OR+QEOK9
	pITQVrqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRuJi-0000000DaCX-1wZJ;
	Fri, 13 Nov 2026 16:39:58 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRuJ6-0000000DZdh-3feJ;
	Fri, 13 Nov 2026 16:39:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 32C5362889;
	Fri, 13 Nov 2026 16:39:20 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794587960;
	b=iYxEXoQe5sTU4ddgFhtOHqQ/7U/MRZRNPIr6jQ+6//XF5FGoRqU8oofpUO5eMwyW/S04
	 shyaDdcHOKSGMeyEa7858TkpOzhy/EVUuZNnNqEdM+AzjgsUdU8zw1gllbf9EpQfZqet2
	 LFqfpywNOqEArOYDxa/LcyhXkwek7OZdzm+Z+HCv4UHBUA3r74MgaYzuxksHHHKVbFGe2
	 fTh/b1AQ1lttgucl3+J4sBYkyHshjYohxtoYpJ/FcelY3/5M3E5nduCkdYvlbqywUVEFq
	 nTIvX5DY9TMlDdnURCSxzWhdYwCMWImy37BeDsXU8YkucIk9TmwCcOWGIW/kNvGtxQQ==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794587960;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=Sea7z+n5pZZqi+t3TzaXiTFzXOh2A7iP/dngPcAdtLM=;
	b=fJY6NbKIKv1ddX5QVw1HLClKfwqwmijGzzwoJx3rZQIUSEQbcN0yuBJpC401f8h0CGSx
	 hNVBeJxaaqA2JZ0/FfCS6LchV5RcAmsEMqdfuidR/Ka2rpo93NzkV9f6n3Qq6Q82S6u0y
	 ee5UFrPf/iQkFl2meHgZOwZaZ+YblkGRCXGQsNV4BIEm+aSozqK3+C8S+UapkOQBiP1eS
	 0jWUgS0lqAfu2aV1gncTKviy0Fl7VQ+5EFKwGCIM6dlxGKLugRx06WUp+o6y3upVNKk+U
	 xIJsmU6tfZ/Y5JwrtDCkie7OgGiOqlR9O9Y+1JrLVdHhD8lT6izLCxHwCavgqbfMSKA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 225F11F000C5;
	Fri, 13 Nov 2026 16:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794587960;
	bh=Sea7z+n5pZZqi+t3TzaXiTFzXOh2A7iP/dngPcAdtLM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=fPoa4qQo68oepnQp1FHLDbvAaFvUuotApQZj1jwTA3Uzztn5zs5eO4nliAjGfs2Yq
	 lmiTGCUkwIoN7cZ7eex1gVD2Rzp0Z8StLVXSRgeJE4nIDJPid0Xb63M6a3V3u4ogHb
	 JTi7ZXhzzOmBUKEqbNnPA2LMfkSUXvCI6P1uYZoa4H7tzGkZRmQaHxLkHOmOQcU4aw
	 fe5QhpaB9TVOVCxvPmoQ5CzRjKD6K+KHK8UJXb20EEanDtVb/4l/zB+ysZ7Kr30Ju5
	 /xp7sJv1hIEiyVVehgdoNiI49ctFC2RWu3T/Xd6Md5oZl+Vk/zWJar1ao+8tg3uZZF
	 1cj53WJSOFKUA==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id A760A499B6;
	Fri, 13 Nov 2026 16:39:18 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Fri, 13 Nov 2026 16:39:20 +0000
Subject: [PATCH v3 3/8] drm/rockchip: vop2: Fix the HDMI sync polarity on
 RK3588
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261113-vop2-fixes-v3-3-08ae37e83b5c@gmail.com>
References: <20261113-vop2-fixes-v3-0-08ae37e83b5c@gmail.com>
In-Reply-To: <20261113-vop2-fixes-v3-0-08ae37e83b5c@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andyshrk@163.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794587957; l=1551;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=y/BLNj95neZ1kNSGI9NFsr8jsXQo+g+IgIthS+l+Duk=;
 b=HFnpn0UfQaUqdoo8fKpEc9f1pAJsgldamAS3CAJLhWJBsQCR4pB44jgJOoJoSQmOT/Cfg6G8M
 gm39pCe6xRaB8NGGqHCoLfwa5TA4YEeJfxwlZL3li41h3sXUfV2JBty
X-Developer-Key: i=aiyengar1990@gmail.com; a=ed25519;
 pk=zXpRgUTrhaFe6jLyPqbBy3ccfkj04w0g2690Wv3mg+0=
X-Endpoint-Received: by B4 Relay for aiyengar1990@gmail.com/20261110 with
 auth_id=1480
X-Original-From: Arun Iyengar <aiyengar1990@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: aiyengar1990@gmail.com
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Chaoyi Chen <chaoyi.chen@rock-chips.com>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Piotr Zalewski <pZ010001011111@proton.me>, Arun Iyengar <aiyengar1990@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Arun Iyengar <aiyengar1990@gmail.com>

rk3588_get_hdmi_pol() is passed the POLFLAG bits of the mode but tests
them as DRM mode flags, so the HDMI sync polarity bits in GRF_VO1_CON0
come out wrong: +HSync/+VSync modes get one of them set and
-HSync/-VSync modes none.

The bits are set for a negative sync. Test the POLFLAG bits instead.

Fixes: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
Reviewed-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Reviewed-by: Damon Ding <damon.ding@rock-chips.com>
Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index f340aba5bfd1..3e654cb99ddf 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -1683,12 +1683,13 @@ static u32 rk3588_get_mipi_port_mux(int vp_id)
 		return 0;
 }
 
-static u32 rk3588_get_hdmi_pol(u32 flags)
+/* The sync polarity bits in GRF_VO1_CON0 are set for a negative sync */
+static u32 rk3588_get_hdmi_pol(u32 polflags)
 {
 	u32 val;
 
-	val = (flags & DRM_MODE_FLAG_NHSYNC) ? BIT(HSYNC_POSITIVE) : 0;
-	val |= (flags & DRM_MODE_FLAG_NVSYNC) ? BIT(VSYNC_POSITIVE) : 0;
+	val = (polflags & BIT(HSYNC_POSITIVE)) ? 0 : BIT(HSYNC_POSITIVE);
+	val |= (polflags & BIT(VSYNC_POSITIVE)) ? 0 : BIT(VSYNC_POSITIVE);
 
 	return val;
 }

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
