Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F0AC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:33:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D9AE261166
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:33:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D9AE261166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qLOA1iAhYGR4GKKWlMmOkw1rFyMV6SBbP9ZF/t7czOE=; b=NDU/eOWtocKPIuaHnGhrb1PiAI
	gCzNGiuCG7q8hFHDvj6HT535s/jGTOGiKiNhziYzczlpgZQjArsir81RvmF8W/xggA/KfV9od2rN/
	SL/fwB2dZOnEnjZ2afLGapKmtnuMRLeq3+Y3GeGTv0xW6OqKY6KauDcl6hnmufB7UFzhzZVRfB6gj
	roWL4MzsOMY+buOVnqvPBtVwCop2dVqlxxBaJy2InHtYn7PBLb5CmBY5/NcaqudKjC7rVjIno/itS
	p7FuDmWlP13RrXKqrGfcZ3isBSViWJ7EMCPZvxdAi+OBgo0SOJW9FzeFnBTxt1laiAYFT+BPE3Ia0
	vh/vb2RA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXJun-001Mol-70; Fri, 16 Apr 2021 08:33:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJTN-001HJk-8v; Fri, 16 Apr 2021 08:05:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=loIVksKZEL5F0wKKCjoxiHiwkxUopdNbbRXrt2wSAqM=; b=zJZTmO+9IsVlUxdVUDOt6S85yO
 trdFQi0CAzTkPT+C0PQfmK0ZtPFdzb7dl25WHzhLEKbG11/JQwFBqTi3na330GAtBfYX87t9LgEzv
 K7v2TGbGcgX0u29S0ZvWQ4L5k+gsGvmumHNwCfUkZm59kpWO7Z/ZSuBV/oYIuqw/+wx3GT9o+qFJy
 BoFjqynae7Ofd6AowVVolOR2z1xLtrqeLLdHIXgQYF02QNyIEVr3x7V+oKv6w99zFTVRpimBmtlTo
 Xt771js5Kz9ocmf8xIGbM9/0mMQZORIsIj1ajPimk64D1MBp6eM6n3DLOvIgjJfkG3UoVRovpHc8D
 MxotARZQ==;
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJTK-009Apb-Oc; Fri, 16 Apr 2021 08:05:04 +0000
Received: by mail-ej1-x629.google.com with SMTP id sd23so32172140ejb.12;
 Fri, 16 Apr 2021 01:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=loIVksKZEL5F0wKKCjoxiHiwkxUopdNbbRXrt2wSAqM=;
 b=AOc5l5Dp1zlGt43dbbcFR3FZ95PVy5Jr8jjiUpOGQaK7jjvKES7dwc98iJCKlcfzn3
 b4L6WZ5ktHY3U21nMwax3oBpvMUX53GGS2uRVvE2BGR4LWXNXFi4gQn5ujgaW+9mIl2M
 UUy7GYPIiq+6esTv0zynG8tVPnmNr+l8oy8iDM9i1swZj9KaxlTVyTfNToBEuZxaPENt
 AavoZllHwQh1c6HGhzFRV81jEpb5q4GJfcuUrNgeAu/ATwT57Eu2cYpxgb4MtUeNKX+z
 BRJy9rZkqSFE/Dm8EyEYS0t+4dr+eYvI4ZG7SK9mSDvOBI0Z+c1xxEMWfafJOX7p73Vj
 J+Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=loIVksKZEL5F0wKKCjoxiHiwkxUopdNbbRXrt2wSAqM=;
 b=Imc7KFM/Y3HNTmXaNeJX0Rvbq62DHsGgPHkbOs9LN2Khzfp91EJD7FCMOAFayO5OvU
 +uLW62eb2ge9iL/f2PL+wxhdXyDW4KraJjZFABjPVZxQFFEYfxjZWShc+8MzbuVMBRBT
 gIavXhYGzW7/EKdvYPI5B/WjQCeKtq7ss6sGVYHMoMZwZPb8tY+1xDVjFt4oMiM9TS+V
 26E64ql9iIWOOQqz9n1oYkEfVa0h5lwllc3dbBzJBZlQpE6rJmFVTRTUQaaseTRv5y4l
 f5wWfqHP7ezJg+BRvzJQ8Ujvoixpjo1NhARvCKbNkFLMH8EEYQ3OfF6i4ck8ooFXNCOQ
 jRvA==
X-Gm-Message-State: AOAM533L2PTHseWO+jZeRMZ60Gsf2Ai6BgXBouoayZRQouwi7zJUCv9l
 ilOS3ek68HingrYUCTn7pvg=
X-Google-Smtp-Source: ABdhPJzrYgal1KeTeKfOtrV3DEtIf/7GBICCi+eIL8caD9x5fqzMvMvb4sSG+7/e7hTuyfknpxCqqg==
X-Received: by 2002:a17:906:4119:: with SMTP id
 j25mr7210531ejk.459.1618560301126; 
 Fri, 16 Apr 2021 01:05:01 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.04.55
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:05:00 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 03/15] ARM: dts: rockchip: Fix power-controller node names
 for rk3288
Date: Fri, 16 Apr 2021 10:03:30 +0200
Message-Id: <20210416080342.18614-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010502_817963_FAFCDD7D 
X-CRM114-Status: GOOD (  12.64  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Elaine Zhang <zhangqing@rock-chips.com>

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index ea7416c31..6f4d7929e 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -769,7 +769,7 @@
 			 *	*_HDMI		HDMI
 			 *	*_MIPI_*	MIPI
 			 */
-			pd_vio@RK3288_PD_VIO {
+			power-domain@RK3288_PD_VIO {
 				reg = <RK3288_PD_VIO>;
 				clocks = <&cru ACLK_IEP>,
 					 <&cru ACLK_ISP>,
@@ -811,7 +811,7 @@
 			 * Note: The following 3 are HEVC(H.265) clocks,
 			 * and on the ACLK_HEVC_NIU (NOC).
 			 */
-			pd_hevc@RK3288_PD_HEVC {
+			power-domain@RK3288_PD_HEVC {
 				reg = <RK3288_PD_HEVC>;
 				clocks = <&cru ACLK_HEVC>,
 					 <&cru SCLK_HEVC_CABAC>,
@@ -825,7 +825,7 @@
 			 * (video endecoder & decoder) clocks that on the
 			 * ACLK_VCODEC_NIU and HCLK_VCODEC_NIU (NOC).
 			 */
-			pd_video@RK3288_PD_VIDEO {
+			power-domain@RK3288_PD_VIDEO {
 				reg = <RK3288_PD_VIDEO>;
 				clocks = <&cru ACLK_VCODEC>,
 					 <&cru HCLK_VCODEC>;
@@ -836,7 +836,7 @@
 			 * Note: ACLK_GPU is the GPU clock,
 			 * and on the ACLK_GPU_NIU (NOC).
 			 */
-			pd_gpu@RK3288_PD_GPU {
+			power-domain@RK3288_PD_GPU {
 				reg = <RK3288_PD_GPU>;
 				clocks = <&cru ACLK_GPU>;
 				pm_qos = <&qos_gpu_r>,
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
