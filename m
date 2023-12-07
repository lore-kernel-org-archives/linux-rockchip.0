Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 679CEC10F05
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ED54v8xty/a1QW3QhiRhqCZzMgBn7VrvCHHwlD3ApE=; b=yy1lhR117VA5R9
	blsL41s1fz6728WptpKj36Lax+hqQXbeYnbJsTMnSfJ6a80CRuo8r8RKLOlocrp06DDVPAd4OkRGj
	S7rUPs6/Gsm6buEsYA8rawoRt/LB4SezH6p/pM5NNg6VIxQkpNmRJ40HkuLNMnMXjccIMLJLIPuUb
	8oZNVZLKzvfq1db2sH5ncF62neMWTkf9yxNE194HPMPpCy5bpoq/3n0NLgXJ1p4IPXfD5EDlw1mrt
	NLzmUOGB4DDKDxcX8gpNCn2aQW22TiWtsEEAKK8VO0fX2ehnZQAuOKskbGq3CFHZme91da8UwReJZ
	d01cc9Sf1eAs8Z/mtp9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGfa-00DIkO-1o;
	Thu, 07 Dec 2023 15:52:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGeX-00DHcC-38;
	Thu, 07 Dec 2023 15:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=w7D9EUNAYaIwFbZsKHAJnDVSnzuOTmlNXiHpB+WFurg=; b=qkYRxJb/mdeUm83fyoYLtzrM+2
	/rK1hbZq6hletf1jF0xkUsDTv+Tdho/ndtjPJyWTpcJIfpgnmS/VtXCXLQHayhm/iwSpknGkA6MHA
	KdmFz82oaau6jsXJH3CbNoHUBfsdMr0SamZH7Zk23Y+khcvOZ0LSGsLQ49uEXDrGZA/GHwcNMLKEk
	BH5mJ9ItCayXXLSbWL4pamD2/PcRn+SDXAnaGQhAICESe24UZkT6UAJaiNjuSsKSs8gBUfcYXWswy
	MElgLjsRSPAhM7YulZo5IsabmUgvzK1sjADssm7Y2cTyUlCdmvAVvfEuyUfT6H1bVngAvadICJkLp
	CFJOIHQw==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGeT-0062bD-0o;
	Thu, 07 Dec 2023 15:51:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 04E51CE1D04;
	Thu,  7 Dec 2023 15:50:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E58FFC433C7;
	Thu,  7 Dec 2023 15:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964257;
	bh=1gyDO0Ub+FFM7woxg35ZPgg7AJCC7fJ3SbEpd7YB97w=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=TyVW/q6VgOeUf2SuU4pGNTDUCt6fuhwDRnhu8bdEqgEqDxKmF0hUbVbCWuaYCaH5H
	 +nJs0vR2/fc9Uoj3YHm69HlPD8R6yocpwcJYS6GUQ8Vmxc7xF7zSki08PMwbTbE6dH
	 I7LN9VdNvlOwWEF8T7VuTVqQErZZY5w60QovoelprswXfv1DSCIsOMCjakB7W6WoiK
	 EFJICB3XBsEpVE4S/763hUfU+9p2VLv5L44JzW7Ddx6wnQ4a59Cvfn9CfJT+440ux9
	 PCI84HhEhL0in8omJX00DhPB03DQoueHcZZDBoaHa/PDrp4EAKO6X2mnN/4Y/qxtsw
	 VmsnWi+5he6nw==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:53 +0100
Subject: [PATCH v5 30/44] drm/rockchip: inno_hdmi: Remove useless
 colorimetry
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-30-6538e19d634d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1542; i=mripard@kernel.org;
 h=from:subject:message-id; bh=1gyDO0Ub+FFM7woxg35ZPgg7AJCC7fJ3SbEpd7YB97w=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL9uqJPm3c6et9XBKeZcx72T0cft6HVulbO1va6pST
 P537zXoKGVhEONikBVTZIkRNl8Sd2rW6042vnkwc1iZQIYwcHEKwERk6hkZjuwwyTcqnXJ/2xSP
 S2d6rim/8l7R0/97YVCU3HvVrB8uyYwMz2tDZ6s9b3wX4iu2dNu0ANHoXTY83U9+7LD0EghO/tX
 MAAA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155101_879989_DAD22E2A 
X-CRM114-Status: GOOD (  10.38  )
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

The colorimetry field of hdmi_data_info is not used anywhere so we can
get rid of it. This was the last field left in that structure so we can
get rid of it too.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 0c6c550e0ce7..c342bc8b3a23 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -27,10 +27,6 @@
 
 #include "inno_hdmi.h"
 
-struct hdmi_data_info {
-	unsigned int colorimetry;
-};
-
 struct inno_hdmi_i2c {
 	struct i2c_adapter adap;
 
@@ -56,8 +52,6 @@ struct inno_hdmi {
 	struct i2c_adapter *ddc;
 
 	unsigned int tmds_rate;
-
-	struct hdmi_data_info	hdmi_data;
 };
 
 static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
@@ -380,15 +374,6 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
 			   struct drm_display_mode *mode)
 {
 	struct drm_display_info *display = &hdmi->connector.display_info;
-	u8 vic = drm_match_cea_mode(mode);
-
-	if ((vic == 6) || (vic == 7) ||
-	    (vic == 21) || (vic == 22) ||
-	    (vic == 2) || (vic == 3) ||
-	    (vic == 17) || (vic == 18))
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_601;
-	else
-		hdmi->hdmi_data.colorimetry = HDMI_COLORIMETRY_ITU_709;
 
 	/* Mute video and audio output */
 	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
