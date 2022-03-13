Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6ADDC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Mar 2022 07:24:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6N9CphgoWbaG/3MiuvTmhFVkzIrUlje1eW8Xmk14QlQ=; b=c+qgdTzQUUkqrI
	gqC7jEPcTUKEIke3XnDaWdDa7ZCr87o3D8XkxwVs09B+pnINtelPnTesRF+5QOuCdNLTv44/4bvSy
	EetsOb3DR+DmXAiZevRoxE8WUJch7h77QyAiXtVygMiiPM/xWXDi3wRBcPC1AcaSe51CcT33C1NK+
	11XkvuQvEWG+HTojvqfh3Z8siJ8llFNNlvu721TMHyhjQkwJw99sh0EJMmw8iaW4mTAC2rTEkPVuo
	GTni3wiuEp9ofVQecMG2xI3UiUxBd1YLnG/EzL9Hr7vs5/Yryu5Wbgwy51Ne9xcfnJD+HmHMHB+CI
	E8olHtz5WZl/dtHdwZAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTIa6-002JoM-2e; Sun, 13 Mar 2022 07:23:58 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTIYI-002IuP-Dg; Sun, 13 Mar 2022 07:22:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=ignYGkZ8z0dnuFVGOmPQD/gQvgc6SgOoij3JctY4sG0=; b=iVRPbIcuvOHRQsFT5FD9yoH8YH
 rYqD3rc5xm1uVTttzTXpnEY8+7eQiwx3/RxZr26cUZ+Y472QFd/SIGrTRCr1G+JW0QUGGpwB08qBA
 4fUA0AC/P1lccndYFLHotDk28lOltKlWGk2Crp68I2Hu0uoUvn4BB9ZPWz3ipM9rjHXvdj+7nx1HT
 ZOJlo79hCD+4IJx3b60Jj3GqufW5gLMdxtMWgFPMrGISXByJWXyN5/Czil7OW/XTzMLCuflWi3rGz
 L9HyymZXSsOzO2LUcgWZINdJ2GY3GA9YcNs1FD0svjHNN8l58nKWztJHCcyXLPP4wKqjehP8rwVkn
 GuxmGgaw==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTIYE-000S2K-7v; Sun, 13 Mar 2022 07:22:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id DFF53B80C69;
 Sun, 13 Mar 2022 07:21:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9BF4C36AFC;
 Sun, 13 Mar 2022 07:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647156114;
 bh=M+Id+Ovf8EaaNtIXMyS24+TqOoq0GiGfi9Io1e4U+WM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Bgg87vSfhSxWvEHt9U3ZzRWUlaONiw3MtEon+Q4JK35OlGz27uwWzoqvxzNIW0Xmu
 RLDrCW9F4FB9zyuyj9V2PvlLEC9zpyOVr6bKRyYSAPCchUC/e+Yc+jxZFEyMs8aMYv
 LJQn3c4yoDHpgxD4IPpuRolzp2MSIoODUNaTVuGK7sFEr4TEiZLy08rjkHpqSUDkyF
 oaNZiKz2vIvmX3wefz+xpGCfyQasRrqYwsoWB4U8c78LSjll/wtQsWBeYFrmqQEwo2
 fHMpZpe/CS2hBJ+wEMsVq6bNSPAvRhKWnDRGiu+XbTQ9ME+dM9H4qhS8NWKIfLK2+H
 /Lpy3Sp0C4jNQ==
Received: from mchehab by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1nTIY4-0012xw-K7; Sun, 13 Mar 2022 08:21:52 +0100
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: 
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Chen-Yu Tsai <wens@csie.org>,
 Dmitry Osipenko <digetx@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Maxime Ripard <mripard@kernel.org>, Ming Qian <ming.qian@nxp.com>,
 Robert Foss <robert.foss@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
Subject: [PATCH v3 38/39] media: platform: move some manufacturer entries
Date: Sun, 13 Mar 2022 08:21:47 +0100
Message-Id: <66a60f305d6c353f281e437612a2e564adf8900a.1647155572.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1647155572.git.mchehab@kernel.org>
References: <cover.1647155572.git.mchehab@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220313_072202_515486_91C644C5 
X-CRM114-Status: GOOD (  15.33  )
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

As there are 4 manufacturer's directories with multiple sources
(qcom, rockchip, sti and sunxi), move the sources from
platform/Kconfig to their specific Konfig files.

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Reviewed-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
---

To avoid mailbombing on a large number of people, only mailing lists were C/C on the cover.
See [PATCH v3 00/39] at: https://lore.kernel.org/all/cover.1647155572.git.mchehab@kernel.org/

 drivers/media/platform/Kconfig          | 13 +++----------
 drivers/media/platform/qcom/Kconfig     |  3 +++
 drivers/media/platform/rockchip/Kconfig |  3 +++
 drivers/media/platform/sti/Kconfig      |  5 +++++
 drivers/media/platform/sunxi/Kconfig    |  2 ++
 5 files changed, 16 insertions(+), 10 deletions(-)
 create mode 100644 drivers/media/platform/qcom/Kconfig
 create mode 100644 drivers/media/platform/rockchip/Kconfig
 create mode 100644 drivers/media/platform/sti/Kconfig

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index b7c60969c974..e3316fa37a8f 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -77,23 +77,16 @@ source "drivers/media/platform/mtk-vpu/Kconfig"
 source "drivers/media/platform/nxp/Kconfig"
 source "drivers/media/platform/omap/Kconfig"
 source "drivers/media/platform/omap3isp/Kconfig"
-source "drivers/media/platform/qcom/camss/Kconfig"
-source "drivers/media/platform/qcom/venus/Kconfig"
+source "drivers/media/platform/qcom/Kconfig"
 source "drivers/media/platform/renesas/Kconfig"
-source "drivers/media/platform/rockchip/rga/Kconfig"
-source "drivers/media/platform/rockchip/rkisp1/Kconfig"
+source "drivers/media/platform/rockchip/Kconfig"
 source "drivers/media/platform/s3c-camif/Kconfig"
 source "drivers/media/platform/s5p-g2d/Kconfig"
 source "drivers/media/platform/s5p-jpeg/Kconfig"
 source "drivers/media/platform/s5p-mfc/Kconfig"
-source "drivers/media/platform/sti/bdisp/Kconfig"
-source "drivers/media/platform/sti/c8sectpfe/Kconfig"
-source "drivers/media/platform/sti/delta/Kconfig"
-source "drivers/media/platform/sti/hva/Kconfig"
+source "drivers/media/platform/sti/Kconfig"
 source "drivers/media/platform/stm32/Kconfig"
 source "drivers/media/platform/sunxi/Kconfig"
-source "drivers/media/platform/sunxi/sun8i-di/Kconfig"
-source "drivers/media/platform/sunxi/sun8i-rotate/Kconfig"
 source "drivers/media/platform/tegra/vde/Kconfig"
 source "drivers/media/platform/ti-vpe/Kconfig"
 source "drivers/media/platform/via/Kconfig"
diff --git a/drivers/media/platform/qcom/Kconfig b/drivers/media/platform/qcom/Kconfig
new file mode 100644
index 000000000000..aa2428f641d3
--- /dev/null
+++ b/drivers/media/platform/qcom/Kconfig
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+source "drivers/media/platform/qcom/camss/Kconfig"
+source "drivers/media/platform/qcom/venus/Kconfig"
diff --git a/drivers/media/platform/rockchip/Kconfig b/drivers/media/platform/rockchip/Kconfig
new file mode 100644
index 000000000000..c7ba06388780
--- /dev/null
+++ b/drivers/media/platform/rockchip/Kconfig
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0
+source "drivers/media/platform/rockchip/rga/Kconfig"
+source "drivers/media/platform/rockchip/rkisp1/Kconfig"
diff --git a/drivers/media/platform/sti/Kconfig b/drivers/media/platform/sti/Kconfig
new file mode 100644
index 000000000000..9fb5e78a92cf
--- /dev/null
+++ b/drivers/media/platform/sti/Kconfig
@@ -0,0 +1,5 @@
+# SPDX-License-Identifier: GPL-2.0-only
+source "drivers/media/platform/sti/bdisp/Kconfig"
+source "drivers/media/platform/sti/c8sectpfe/Kconfig"
+source "drivers/media/platform/sti/delta/Kconfig"
+source "drivers/media/platform/sti/hva/Kconfig"
diff --git a/drivers/media/platform/sunxi/Kconfig b/drivers/media/platform/sunxi/Kconfig
index 7151cc249afa..a10032215b08 100644
--- a/drivers/media/platform/sunxi/Kconfig
+++ b/drivers/media/platform/sunxi/Kconfig
@@ -2,3 +2,5 @@
 
 source "drivers/media/platform/sunxi/sun4i-csi/Kconfig"
 source "drivers/media/platform/sunxi/sun6i-csi/Kconfig"
+source "drivers/media/platform/sunxi/sun8i-di/Kconfig"
+source "drivers/media/platform/sunxi/sun8i-rotate/Kconfig"
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
