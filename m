Return-Path: <SRS0=TfDj=NJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6937FC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:41:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D12A61042
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 12:41:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2D12A61042
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aX674k6DUO04vzmzQcOvCELC7OovrDW823gEps7Z+iM=; b=iOSnmJeOyLBBjH
	aaDptYSwyPNCLa+7QInJHW48pA6JvC2wVWerP8rpjUA2toCi2BkrQi1ZY0tS1VrRyFD29GYoB365J
	ln0fxNcVi2AVpI9/IwVVcW224P0P6psV1b/uuNKL6exssaKfwy8I5CAN2BhqCrxEk4vNQJ4lowZ0r
	l1ixkwGmg7LwB+VS9Nsga2ucd/+sg+XVgG2iIkJ/3634b1mPjRsp4bGSwAesb+S82i86zEblP7o4+
	FOeqNx3/BUdF2ZWL3q5cFZZn4+7BBbZrlSIiI5POcfQWKFkX/4bWzxUzZ8wNGrPWngPYHocUm9q1J
	qbKDE2cLEjmN1c4KiJIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGKtC-005XH2-Cu; Wed, 18 Aug 2021 12:41:50 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGKsi-005X6m-Ds; Wed, 18 Aug 2021 12:41:24 +0000
Received: by mail-wm1-x32d.google.com with SMTP id
 w21-20020a7bc1150000b02902e69ba66ce6so1700482wmi.1; 
 Wed, 18 Aug 2021 05:41:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LKHb4NbS7zSt/cAMTh5zeYF+NOqO7vbF0bCJdamG5w8=;
 b=ja/16Vr9ki6o1rA6ri6QHlVCzMftWzn+OYFQapVIpbv257k3j7V/fjkHafTOT0nGvf
 i6LABOswPGff+2sGLiMXYL+ApmjSBkeyENpajzTX60EcQBA+92QWzWvYnt8rwSuZLWmy
 qCZTc2tlCyn8x9qxTf9znRysZ0LpPAHS/wzxql08x5bEGnbAfvBq6lnIkD8LcmpQntez
 nlzC2m9JvqCuRiVd4RB3t689UDLbFPGMEZfwOJ4Q8sTmducPGwC8J2yE2c9zUT6YFxc1
 xyzoEacrxeRt2pKRV+58wzHQKK0wJkivPxWsrpGWZ7AH0CGbvpavv6t2LADyXhHzX9WQ
 8UEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LKHb4NbS7zSt/cAMTh5zeYF+NOqO7vbF0bCJdamG5w8=;
 b=K++AWfh2HYAxA/dtPhvaO73wy9X5FXZVqNfoYgz3sYJV7iyNlPRFVPOYd5JWpLbfpG
 ClpWYvFFIFPBu4atD5/5ctX5alqsj81rzfmjyrerlzz7i5jJ3SuykUFszOI0/xm2YYl9
 17rp+mU6UVzbtYTfluSniOqIlrkC5gcqs3Wi0MybUEYOsGW3TXhaCO1SzqMd6S+YAAsa
 pLsH1/TH0DtMN3DBwVETp4lNTICHnNY0NlXx0McwoEAd1B3UEAtyoJniS3FUhb/kkJ3S
 3kQFlgVcw3SCslhXDRF5RnZvQJ/vXEv3QqDtN1D7MUbgADasckf30HXlO0WYGLq2PZWX
 vbaQ==
X-Gm-Message-State: AOAM533k9ApLUmFBPPkrvq7wCseNyOOB/iCkfgi+PQOH0ROUfVlIcPwG
 J+cyo6g458lSAW3HXYN30qs=
X-Google-Smtp-Source: ABdhPJw7gq+uZcEL/myC5985B59dRsdZKI1OrUOlw2agxfZ4Cwb3rYGc90xQ/81U/eABQrJtLqfQFg==
X-Received: by 2002:a1c:440a:: with SMTP id r10mr8334657wma.8.1629290478949;
 Wed, 18 Aug 2021 05:41:18 -0700 (PDT)
Received: from localhost.localdomain (arl-84-90-178-246.netvisao.pt.
 [84.90.178.246])
 by smtp.gmail.com with ESMTPSA id a11sm5720454wrq.6.2021.08.18.05.41.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Aug 2021 05:41:18 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Emma Anholt <emma@anholt.net>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Arnd Bergmann <arnd@arndb.de>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH 1/5] drm: rockchip: remove reference to non-existing config
 DRM_RGB
Date: Wed, 18 Aug 2021 14:41:10 +0200
Message-Id: <20210818124114.28545-2-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210818124114.28545-1-lukas.bulwahn@gmail.com>
References: <20210818124114.28545-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_054120_521463_114880B0 
X-CRM114-Status: GOOD (  11.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

commit 1f0f01515172 ("drm/rockchip: Add support for Rockchip Soc RGB
output interface") accidently adds to select the non-existing config
DRM_RGB in ./drivers/gpu/drm/rockchip/Kconfig.

Luckily, ./scripts/checkkconfigsymbols.py warns on non-existing configs:

DRM_RGB
Referencing files: drivers/gpu/drm/rockchip/Kconfig

So, remove the reference to the non-existing config DRM_RGB.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
 drivers/gpu/drm/rockchip/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 558f1b58bd69..9f1ecefc3933 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -9,7 +9,6 @@ config DRM_ROCKCHIP
 	select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
 	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
 	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
-	select DRM_RGB if ROCKCHIP_RGB
 	select GENERIC_PHY if ROCKCHIP_DW_MIPI_DSI
 	select GENERIC_PHY_MIPI_DPHY if ROCKCHIP_DW_MIPI_DSI
 	select SND_SOC_HDMI_CODEC if ROCKCHIP_CDN_DP && SND_SOC
-- 
2.26.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
