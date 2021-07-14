Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DCBC12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 21:35:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 69798613AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 21:35:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 69798613AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awFqIKUw+6mGko3zGjZoV/HcdW+3/drZ7ZevZnaqXOU=; b=hIg6XAIRMgYaU8
	Iwmd76cKCWMFQF8OtYYUZAUIYIVoOP67xb3g6ZarHjuCH7w6sGbtoarlD9rUxt/U0UNYGI/ycFIo7
	8S5H70vQpi841dt20dU2rmq5Me3sDhijohxOCGCQwqSE+nc58aU3jIJv15NovkKye6SY5i3p5Fbdw
	C4fp2KuY0bMenTROZ4c9W5epC2QUZVsnoJns1BZiZMI+pdn2G+k4uE3jKumYJ/Ql2qee9jxgCgPlc
	klZA+V+2cJPyeGKStGqkwZ48k393a9Hvg3+/YYN8lN9x97mVhMYlNoInD+WxAD0LVSH8biq6Bw4Td
	Cu/XECtapIcKBIzOfiIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3mXC-00FTdr-6W; Wed, 14 Jul 2021 21:35:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3kmt-00EeXu-PU; Wed, 14 Jul 2021 19:43:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 834BA613D9;
 Wed, 14 Jul 2021 19:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626291799;
 bh=KZ7qtIBvJQCUHMJ7yqOjOv/AUPX2tA0r9ajKz661kdY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pRFojhmdtcm3zy3ioSejE9AFz2lIjL7zvr1BoIJeikmEn0mCA6Qxw5oN4nkxSCtjG
 L09LJAjWx1tr2tXS5h+EwCDG3rM2WEyOvj+Pjtk7VKSwV3mAHgJOQ+Rq7cS8JTixW6
 ovBkbyZCqquKaEKZHHr2cXqPW0VQ9imyzUeNGbTAxgEM5QHMRzQ6Px/d5/WxOvNY8V
 GmD9hzIxr+87eoueLNQM0Kd/JhWFkoM/5omTPe3BqYkAmS8wDSR9HLB6lrgJz5HXen
 GtrAPrIyMDgQeLEDb0Zohb6b+G9bf+aWkdMF2QGduk9IrlBiwWOfu1N+Sk/XWpeiKg
 lCbBq+D82JRrA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 09/88] ARM: dts: rockchip: Fix power-controller
 node names for rk3188
Date: Wed, 14 Jul 2021 15:41:44 -0400
Message-Id: <20210714194303.54028-9-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714194303.54028-1-sashal@kernel.org>
References: <20210714194303.54028-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_124319_862928_7C53859A 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
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

From: Elaine Zhang <zhangqing@rock-chips.com>

[ Upstream commit d3bcbcd396175ac26aa54919c0b31c7d2878fc24 ]

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20210417112952.8516-3-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3188.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index 2c08ae60e4a1..b6bde9d12c2b 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -699,7 +699,7 @@ power: power-controller {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		pd_vio@RK3188_PD_VIO {
+		power-domain@RK3188_PD_VIO {
 			reg = <RK3188_PD_VIO>;
 			clocks = <&cru ACLK_LCDC0>,
 				 <&cru ACLK_LCDC1>,
@@ -721,7 +721,7 @@ pd_vio@RK3188_PD_VIO {
 				 <&qos_rga>;
 		};
 
-		pd_video@RK3188_PD_VIDEO {
+		power-domain@RK3188_PD_VIDEO {
 			reg = <RK3188_PD_VIDEO>;
 			clocks = <&cru ACLK_VDPU>,
 				 <&cru ACLK_VEPU>,
@@ -730,7 +730,7 @@ pd_video@RK3188_PD_VIDEO {
 			pm_qos = <&qos_vpu>;
 		};
 
-		pd_gpu@RK3188_PD_GPU {
+		power-domain@RK3188_PD_GPU {
 			reg = <RK3188_PD_GPU>;
 			clocks = <&cru ACLK_GPU>;
 			pm_qos = <&qos_gpu>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
