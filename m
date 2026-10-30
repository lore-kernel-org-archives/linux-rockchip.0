Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C49460A260A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 06:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GY+r91XU;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=Fm1KqGWl
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=5sV8zUQHxqiqa8398Ec/YFWPphwTskz93fh7+hWgQzs=; b=GY+r91XUv4yfXtXs8OpH+9uk6I
	kvVpKNoWQ0qra9a+apdfdwy59BeveconG8z4ekGrtc62VsCBrr/8Cn6hbMkAFQF7pXvwbgvaOqyuf
	eUclzyRSinmPBEifPFOac8IqeOxfREdYXuVpoeEstc9LGkrb7KUBQ+XU8IdOvnvk3qSZ5FHU/7Lj3
	NXTBkwvhH6DRyj9ZYP0cVmrHfhkvlu2t3+q+czIlrD2yLlaEtzA5ji/7m0yklKKsqVFbcd2ZaPNVb
	sZJOut5/JGV5pn34Gbu+1ZM7+4FB8Jt918m2+Cdio2UDoj8yyPLd2uyBAMXk4fpQhEKRJv1w8AMFz
	WqdGnD4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgQu-0000000AvQ3-3Ryt;
	Fri, 30 Oct 2026 06:49:48 +0000
Received: from mail-m822136198.xmail.ntesmail.com ([8.221.36.198])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMgQl-0000000AvDk-2f40;
	Fri, 30 Oct 2026 06:49:42 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52e796933;
	Fri, 30 Oct 2026 14:49:31 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Robert Foss <rfoss@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Dave Jones <s.dave.jones@gmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Damon Ding <damon.ding@rock-chips.com>
Subject: [PATCH v4 3/6] drm/bridge: analogix_dp: Add support for RK3568
Date: Fri, 30 Oct 2026 14:49:02 +0800
Message-Id: <20261030064905.2248999-4-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261030064905.2248999-1-damon.ding@rock-chips.com>
References: <20261030064905.2248999-1-damon.ding@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa18b921e2003a8kunme14bef997940c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQ0IYQ1ZNHkgZShkeQ0
	sYGExWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSEpKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Fm1KqGWluv5KCKlbJrxdOt5Op5MhL5IaYsAMBGb41c4GB9/0jg6Yo9q//rup4zak5YzBDQsIB7aKSMTHN7fes0w6OL6led9OMrCCxK3xg/0MHo9mbgCzHIupCjIZ4OZRs+/aF46vteIxDc6OoWSgCAwMjPEc6TQdpnemfX9l+KI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=tCtH0nSoUz9rfFDR40EGktb2UZ4joiDlZGZt7iSx0Yo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_234940_735499_0CB04FF0 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RK3568 SoC integrates an eDP transmitter based on the Analogix
DisplayPort core.  Like RK3288 and RK3399, its main link consists of
4 physical lanes running at 1.62/2.7 Gbps per lane.

Add a new RK3568_EDP device type and let it share the link rate and
lane count limits of the RK3288/RK3399 variants.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 1 +
 include/drm/bridge/analogix_dp.h                   | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 6df6963740d2..8bb4c48aa3b4 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1319,6 +1319,7 @@ static int analogix_dp_dt_parse_pdata(struct analogix_dp_device *dp)
 	switch (dp->plat_data->dev_type) {
 	case RK3288_DP:
 	case RK3399_EDP:
+	case RK3568_EDP:
 		/*
 		 * Like Rk3288 DisplayPort TRM indicate that "Main link
 		 * containing 4 physical lanes of 2.7/1.62 Gbps/lane".
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 6033137b651e..e05ff4bd689c 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -16,6 +16,7 @@ enum analogix_dp_devtype {
 	EXYNOS_DP,
 	RK3288_DP,
 	RK3399_EDP,
+	RK3568_EDP,
 	RK3576_EDP,
 	RK3588_EDP,
 };
@@ -25,6 +26,7 @@ static inline bool analogix_dp_is_rockchip(enum analogix_dp_devtype type)
 	switch (type) {
 	case RK3288_DP:
 	case RK3399_EDP:
+	case RK3568_EDP:
 	case RK3576_EDP:
 	case RK3588_EDP:
 		return true;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
