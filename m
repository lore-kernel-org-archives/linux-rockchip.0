Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1DC7C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 08:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eH/iL11u3/4tAhr1X2ovKj2k5b2pINPv9UK3L8qyGdY=; b=wXkcVEPNCyrcIx
	SDH2Hl6O0AdNdt7/5FtrJDI04RTREDcMIniMYtWO7WBssu9Yom42Lt+44QKi96fDCEFNcS09e6+QG
	BEF9vK6VJSsFD8IEN+uoSqQxQbvExVVoa81c3844j+l0tKA+XrntwH0nPTClTFK1hLfB2b1A+zkvo
	dbUDwQiMty52bYBUJE/W7GCFuAnA2jOkVSIR0PkEsirx4xCXluw6npBH8aHbJxXl0graSuoWhCghv
	wlSA0xt8DHrzJQLDEyyYYAA4K0XC6ytbVjc6ILeG1JmT6wYZm0zPyg4o13O70HkRLy1I4KnEJWsNa
	/MgW/nIn3gG+C9vgecvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTgA9-004WOC-4W; Mon, 14 Mar 2022 08:34:45 +0000
Received: from desiato.infradead.org ([90.155.92.199])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTfpN-004LzU-Os; Mon, 14 Mar 2022 08:13:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=WbwHLtOVPxxt4PzEi6yirn5dWE0GkpvJqOFr5yuJhTI=; b=VZdg/C3nflqDDivtbigAZ9uyOO
 GbAurwTuzEBbscQlY2tBue9UYMphAMQU4u+zEr5RrZ4lhbNTRIOFyqEZmklbyGe6s/tILkX9Ugfd0
 hFmpagelmkX52AyeDSSNyM3l0nOO9DX9d2KGgiGAOx45eg7hsHEADyyyCEZhC/xs38/qAmSi1kfaX
 9o/qqhBE74OOiVmtJ36E6JHXlchhobQSU86O8OR2IFEOmimt1mosa68T3/OSjXsJgHQ5bP++/uL3N
 YLpP5g3+aYtpNqY/Fj3tGJRJ3WRAfPwTbIPQDgVIVvUeoV1ld6SsAqU0wLA1dBJxIKA4dsrc6T7i5
 +aH2hykw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTfYq-000kSb-Pk; Mon, 14 Mar 2022 07:56:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7949F61211;
 Mon, 14 Mar 2022 07:56:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19E7BC36AFD;
 Mon, 14 Mar 2022 07:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1647244562;
 bh=q3oaScT2EmtXSaRkzmR6NjuVY1KCMcgFf9MDlddpwi0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kgUxgcyA0L4EzWgUW+0GZdu7zjJndYSGtySAhri+wyitNI2zSCTSi66GQp68sx/Ro
 aOb/LslsPI3rZuirNjLOiUk38BdfqGfXLJfh59A1+YiuBFRV1QXajbvRG0XgyFs+t4
 q2Bv+kA9wXW4xAxzLcF+G99yGTiHMUW+/1jl3G8FtikcXXnBl4kzRIgKeekVcB8FgW
 2ZMShfRfFxh3IbM9/e6NLiKjW+OK4H5rhC4e0bLZkAPEk4bs/Yao6fMlN1xAXBkgTs
 fW+6UaPALpkCxlwCFrpPdImt+cCEVp88s6NIL+VlfcVH7V6DzCXPyBDR92IZrbaZAX
 8x4rzJKgfJnKw==
Received: from mchehab by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1nTfYd-001kWd-RZ; Mon, 14 Mar 2022 08:55:59 +0100
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
Subject: [PATCH 38/64] media: platform: move some manufacturer entries
Date: Mon, 14 Mar 2022 08:55:30 +0100
Message-Id: <0ba67acab6a8757cb0d2588881d5a0907b0bb178.1647242579.git.mchehab@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <cover.1647242578.git.mchehab@kernel.org>
References: <cover.1647242578.git.mchehab@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_075613_107955_3617C142 
X-CRM114-Status: GOOD (  15.84  )
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
See [PATCH 00/64] at: https://lore.kernel.org/all/cover.1647242578.git.mchehab@kernel.org/

 drivers/media/platform/Kconfig          | 13 +++----------
 drivers/media/platform/qcom/Kconfig     |  4 ++++
 drivers/media/platform/rockchip/Kconfig |  3 +++
 drivers/media/platform/sti/Kconfig      |  5 +++++
 drivers/media/platform/sunxi/Kconfig    |  2 ++
 5 files changed, 17 insertions(+), 10 deletions(-)
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
index 000000000000..9f6c91cc95ca
--- /dev/null
+++ b/drivers/media/platform/qcom/Kconfig
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
+
+source "drivers/media/platform/qcom/camss/Kconfig"
+source "drivers/media/platform/qcom/venus/Kconfig"
diff --git a/drivers/media/platform/rockchip/Kconfig b/drivers/media/platform/rockchip/Kconfig
new file mode 100644
index 000000000000..2f97c0e0268a
--- /dev/null
+++ b/drivers/media/platform/rockchip/Kconfig
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
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
