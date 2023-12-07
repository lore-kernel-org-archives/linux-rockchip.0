Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E29FAC10DC3
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AxSfk/3mCTS+jBiFJnyX+9ZZQAbLDvhwcdpw9qkS2Yw=; b=mioN5Ytzvmz7dH
	FCdMzAM2rLsEnGyKlATB+ii6Vqp63WALtEgyLqpkXzbeD+Wc8FtceXelug1jtuw5NwIjVQwEXlFfp
	WZgXj3rE/tyhAU/3pALOCC8JKyKlr+7pzkQauvqvjCJbCDsEtXygUgJS9C4bpGtQnSWX4LPX1xAaB
	NgIgRHOgjddxC2EGN1G4Ilp3ToBjnh8KOefd20mMH+cUUpZ/ZGHjwBJ0Mj1ZKHATs6AUxq12VaIvL
	POpbMLotJWCmm2eIyxAYn+vc1gBYzqSoFmLI0VYzPIGL3WoZdiIPv7dYaE3IDicfV8XC3G1+WCF/1
	1DloR/mtGymH8CuKrHaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGfD-00DIMB-09;
	Thu, 07 Dec 2023 15:51:47 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGe7-00DH7V-2N;
	Thu, 07 Dec 2023 15:50:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 3E6E4B826A5;
	Thu,  7 Dec 2023 15:50:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42D07C433A9;
	Thu,  7 Dec 2023 15:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964237;
	bh=qEltwP+y50CqAvCEezgIfPwElQw9C5nTiBDKdZ2XbTs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=p94VRaGNcYwy6roSQORNGHAXlnya0CpUKy4zJoOg9ydUY3Zr+Uzv+ql8/rrE1Hbvg
	 NRbkQh3nncyQpr11KzDFAvWYeoO3jr7bbSN4LVNNM3VHInk2wzCgocfohi2Z1WBag7
	 /8QaRNdXzLL9vGbzFZuxlLk0Frbj78ur4nElqWLciwTGukxHW92vORpKUG8v3fYegO
	 az4OyXvxd+oVry6IRhox7RechWOrW0rFkNwYdKVI/L1Kp7BUYoMhl6hplPts99FAIy
	 9tcubsmGdmbpOQ4szfPEst5BUaea2B9z0c6mNML+N5izNgZztCYqqs8X10v7YCpogN
	 g2iu+w5aw1p2g==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:46 +0100
Subject: [PATCH v5 23/44] drm/rockchip: inno_hdmi: Remove useless copy of
 drm_display_mode
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-23-6538e19d634d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1075; i=mripard@kernel.org;
 h=from:subject:message-id; bh=qEltwP+y50CqAvCEezgIfPwElQw9C5nTiBDKdZ2XbTs=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9tcpFkvyvP/muwz8XEhg8FhOZFL/w5r2pyYpnbng
 qdl9JMfHaUsDGJcDLJiiiwxwuZL4k7Net3JxjcPZg4rE8gQBi5OAZjIvokM/0svBt88lPrnym9m
 TVubycYh24O4z2Uc3naC8eLxb3mVl2wZ/nt2lFzbYO3yOefNTS3lrrfT5mpc4k97rJpcuY/3nO2
 0WHYA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_075039_936563_8739BDCB 
X-CRM114-Status: GOOD (  10.77  )
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

The driver maintains a copy of the adjusted mode but doesn't use it
anywhere. Remove it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index cc48cbf85f31..4f5844fc115a 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -62,7 +62,6 @@ struct inno_hdmi {
 	unsigned int tmds_rate;
 
 	struct hdmi_data_info	hdmi_data;
-	struct drm_display_mode previous_mode;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -498,9 +497,6 @@ static void inno_hdmi_encoder_mode_set(struct drm_encoder *encoder,
 	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
 
 	inno_hdmi_setup(hdmi, adj_mode);
-
-	/* Store the display mode for plugin/DPMS poweron events */
-	drm_mode_copy(&hdmi->previous_mode, adj_mode);
 }
 
 static void inno_hdmi_encoder_enable(struct drm_encoder *encoder)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
