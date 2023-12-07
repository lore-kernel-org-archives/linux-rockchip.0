Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CAF8C10DC3
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8m0PAh2UeZdNRa8Alxs/JA2mK0+ErieNqb3fo83G4Mw=; b=DqiDVZCAN5uP/2
	fuLI6ryLNts1kht7ncDNQEo1WltkTGAu9SU+Fd4HS0g7MKwlfX4dC27r0Tcf0XfNyCx6/BvjW+Ods
	8GbjdRtDn4LAvkZ7ODbxWYjH5lRFsUjxLv08HAKaIvMD4CtYk+zwMG/edvsIlq3QJ04wBK8tP8NRV
	6R/Jxk16uohyarAznkv5WHc01muG15sRMaZvZ0owquwVeOZE4Nwb4xbGXOSbrTvqQlHFkUYNUF+f1
	Yjz2i7xn7G+dBPUALszGGKgGt+XWBdY1ntzfhtENguYDKQZ8aJdOK3viofcSDklww7oWBY2xONtSe
	iqtA826kS3Q1+9bgnD3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGfo-00DIzZ-2p;
	Thu, 07 Dec 2023 15:52:24 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGeU-00DHWS-1L;
	Thu, 07 Dec 2023 15:51:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id B07F1B826AD;
	Thu,  7 Dec 2023 15:51:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8D15C433BA;
	Thu,  7 Dec 2023 15:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964260;
	bh=xG3hS2ngUa/aofzm6kQ2kyb39tRnM/ERnWFUzHIz8Dk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hCecSIlialbxUNgslpXSkcNagMI7gQGMi+ZA0btXEZydBkbiGggQoR1himb57qsQX
	 VXzGm7GGV3K0Vg3NvVvyq5oG+KxTZG5bL/4fXdGFY1oa+854tYaTZ19vPDgNphVqBR
	 /btxmnErdxWwYm8F/dbKYV/E/a+OKlZZw+tQwpGvhkt/ZrN8W1yfj84yMHAy1MDSfS
	 sCNSAncVi677qqpjaO8RhTOrC3FIL3eB1QI09VY8e+2eDuLf3nJFl6ApFlBgMfKtT0
	 NzlgHQ0d+f+c5PPih9osuAc4KVCf9q+ffD8ZoZKAewrLGQpooYqrk1szemzECl2FZE
	 Zb2mVIHTWPkVw==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:54 +0100
Subject: [PATCH v5 31/44] drm/rockchip: inno_hdmi: Remove useless enum
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-31-6538e19d634d@kernel.org>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=968; i=mripard@kernel.org;
 h=from:subject:message-id; bh=xG3hS2ngUa/aofzm6kQ2kyb39tRnM/ERnWFUzHIz8Dk=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9s65sepT5zr4pr81a7hjseU5Cs1zXlbwo5XW/mfO
 HLSrP9+RykLgxgXg6yYIkuMsPmSuFOzXney8c2DmcPKBDKEgYtTACZiXM/IcCBm5hURnvt+U8qt
 vxycIn5zbbbTkkPbSr4f9aidfW6dRgPD/yJP/0OKn4venZafYMcYpPlnw8NQs5/PAi53Mv6okpd
 p5QIA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_075102_654446_E4693CAD 
X-CRM114-Status: UNSURE (   7.49  )
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

The CSC_* enum has no users left, so let's remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index c342bc8b3a23..f05417c6b637 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -66,15 +66,6 @@ static struct inno_hdmi *connector_to_inno_hdmi(struct drm_connector *connector)
 	return container_of(connector, struct inno_hdmi, connector);
 }
 
-enum {
-	CSC_ITU601_16_235_TO_RGB_0_255_8BIT,
-	CSC_ITU601_0_255_TO_RGB_0_255_8BIT,
-	CSC_ITU709_16_235_TO_RGB_0_255_8BIT,
-	CSC_RGB_0_255_TO_ITU601_16_235_8BIT,
-	CSC_RGB_0_255_TO_ITU709_16_235_8BIT,
-	CSC_RGB_0_255_TO_RGB_16_235_8BIT,
-};
-
 static const char coeff_csc[][24] = {
 	/*
 	 * YUV2RGB:601 SD mode(Y[16:235], UV[16:240], RGB[0:255]):

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
