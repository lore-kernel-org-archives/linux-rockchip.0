Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1ABC1C12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:01:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D3A9761361
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:01:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D3A9761361
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZiHswSHQpm5H5XR2Q4eQcSUBORD4C20dzR3bUcXc+0=; b=kudox1403lAcSB
	3egkH/PbMsqMCOWMXCwyHtnpZXcvgNRSRtC/AmpeTmRlUN4W4q3hRRiOBJSD1QUdbDJ4C4vxeZ4FO
	be7s8HHDIy8wWKYAzSgVzy8EX8r5gIJz/cBxllnpXxA0v4pMg533ENgM/iJJit+fO2ZNbWJAdQeca
	Btg0mbtQtrYg3mQ/Tg3VysX+nhBmrC8BdAXKq12Mo9xANvSdhhlwAysyt46I1p/0P9u7nr6qoMqXJ
	PPbv8Nkg4ODpHrtgl3Y3poR4lxzHGAxjt5MkqMJkKR/hBl9JIuvR5Jz2z5R2XtC67JjUpuVyjUH5C
	aiHeRq8Q/GykrQ1Iz1hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3nsQ-00G6El-HI; Wed, 14 Jul 2021 23:01:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3kqy-00EgnX-Fd; Wed, 14 Jul 2021 19:47:34 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 42FDE613F7;
 Wed, 14 Jul 2021 19:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626292051;
 bh=q+2vRJqt2FSElcn8LV2TzQt53MFf5QBddk+3QQKGOjA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=C0QB8Et9WdwCTjNBMw1CmbtIynGrmDd5BB5uJawYud4UVlaRlJFDtUVDItaZCPvB5
 8BLWNIfvLO5/nZpGcXOZcu1Fbcn2FXq4bOCgKqkGbEaGXQdghAZc/a/90cgR9BCVgy
 OJQjupPFsfx+BhgutKjPF5xAf6Eh2A21bVqCEuaKrHyjOKSZDFYf0PoG2UFs2pgNSd
 gB8LovW0pg94f2SsTez1Iw6DVBeZkuJMFyEaBYrahBXiMwEVlCVRLLkKToZMjhUcwe
 DWJN35wmAc0Im8Ki8YQ0LCptxGGfs7vHzU+LowM61wp8vIJT4MZ2EII0B3M5XX6uwS
 j6+u4gkvwuE1A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 05/28] ARM: dts: rockchip: Fix power-controller
 node names for rk3288
Date: Wed, 14 Jul 2021 15:47:00 -0400
Message-Id: <20210714194723.55677-5-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714194723.55677-1-sashal@kernel.org>
References: <20210714194723.55677-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_124732_671471_8FE45E28 
X-CRM114-Status: UNSURE (   9.57  )
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

[ Upstream commit 970cdc53cb1afa73602028c103dbfb6a230080be ]

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20210417112952.8516-4-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3288.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 8abf0990c691..9adb58930c08 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -745,7 +745,7 @@ power: power-controller {
 			 *	*_HDMI		HDMI
 			 *	*_MIPI_*	MIPI
 			 */
-			pd_vio@RK3288_PD_VIO {
+			power-domain@RK3288_PD_VIO {
 				reg = <RK3288_PD_VIO>;
 				clocks = <&cru ACLK_IEP>,
 					 <&cru ACLK_ISP>,
@@ -787,7 +787,7 @@ pd_vio@RK3288_PD_VIO {
 			 * Note: The following 3 are HEVC(H.265) clocks,
 			 * and on the ACLK_HEVC_NIU (NOC).
 			 */
-			pd_hevc@RK3288_PD_HEVC {
+			power-domain@RK3288_PD_HEVC {
 				reg = <RK3288_PD_HEVC>;
 				clocks = <&cru ACLK_HEVC>,
 					 <&cru SCLK_HEVC_CABAC>,
@@ -801,7 +801,7 @@ pd_hevc@RK3288_PD_HEVC {
 			 * (video endecoder & decoder) clocks that on the
 			 * ACLK_VCODEC_NIU and HCLK_VCODEC_NIU (NOC).
 			 */
-			pd_video@RK3288_PD_VIDEO {
+			power-domain@RK3288_PD_VIDEO {
 				reg = <RK3288_PD_VIDEO>;
 				clocks = <&cru ACLK_VCODEC>,
 					 <&cru HCLK_VCODEC>;
@@ -812,7 +812,7 @@ pd_video@RK3288_PD_VIDEO {
 			 * Note: ACLK_GPU is the GPU clock,
 			 * and on the ACLK_GPU_NIU (NOC).
 			 */
-			pd_gpu@RK3288_PD_GPU {
+			power-domain@RK3288_PD_GPU {
 				reg = <RK3288_PD_GPU>;
 				clocks = <&cru ACLK_GPU>;
 				pm_qos = <&qos_gpu_r>,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
