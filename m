Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9651FC433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:31:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 153EF611AC
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:31:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 153EF611AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qLOA1iAhYGR4GKKWlMmOkw1rFyMV6SBbP9ZF/t7czOE=; b=p2xAtnnaz8alTQK1MHeZRAYgS6
	OskCVWfb+mbuXeVlUfSqTCHuRnja+6R2kzvAZcL0DojO7O7gTH0BfoVIPm4rm5OpD2NhaKmJWq/i9
	x1iWInKvttcrccdiSk/vPHrDxJJzV5uj/myMIsvHqrTmFudJNOKMh6lG/VexGL+FvceaMYE7uRXSe
	3BRLa/CDlcBugDcDwJx3o2g0u/2ccygVkaaimRTkDAFhmGCEZIvSQd8D0Jq2k58Wq+vcOUyXrMDAR
	JqUw79qmy1+OHF1wiN2JSIaEFiP635SffGfl44KQhy4PieHWBIdrKRgNsr7ecD6L2MZuJMKH8G83E
	hZG9zAsA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjAy-0058qn-Vt; Sat, 17 Apr 2021 11:31:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9T-0058Nx-Ax; Sat, 17 Apr 2021 11:30:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=loIVksKZEL5F0wKKCjoxiHiwkxUopdNbbRXrt2wSAqM=; b=QB1I33vz1jBvMrKv2jJKcCFOSr
 I3/L7iSS3hqb4PRSRA73O/0Yok5rgkKRHLaADdmvyr04NO48Jx/CBsTgKSe91XX5zM8W+gyNs3CTo
 9/ieI/kkfalBqoPd6TAE1O4enQRqePui/YpuJ+51ad+XFj8ojqRNBmQJpue7x3mAYvsPFhGyP3gwR
 RueKkIMwy5adGJ6ZHjJj3/fpYfx0Coyjtp1VcgnzBY3PJC99o6vwhFJkrHmH3yzWwg8FVWTHsmSpA
 2IdHuCSCdEUghS/QQNKXRBfIxV1RAUHei8/7vqBDowW1Y/dQOPov1fwlRX6qHao0/W5JLXS4XLYEY
 v3A7XZKQ==;
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9N-00A0BZ-HE; Sat, 17 Apr 2021 11:30:14 +0000
Received: by mail-ed1-x52b.google.com with SMTP id w18so35313307edc.0;
 Sat, 17 Apr 2021 04:30:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=loIVksKZEL5F0wKKCjoxiHiwkxUopdNbbRXrt2wSAqM=;
 b=Wlr2qa6/QfHxVOxXfIEZxF8uBM5rlPsBNoRnzYJ+REk7VK3Z1okoeqnYeuJsL5CRZl
 0JNIdCMq9KBnetBWsgO16iKeqAR/D9uqsmjNiH7WEZzFz0PGHP3D+cWVNQ567JSZ+hdg
 K/mjdpcaYB9hKq4MZh7FN8vQcbY5pK/rIorVKkzBOL3vtYOvFNKPrYw8h8nbVihSLsAk
 i4Xo7dOiSIDvHRi6APkMNAomLEYeyudOXyaTXA1q83vFBYm+hLpxSl597nHrXaBVtlrl
 Tq6r/AiGbZyoVwsirg6wIW+VeLjmwViBbA4nMbu0q802nswonddOge1rnRmZ7TehlzPH
 pTxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=loIVksKZEL5F0wKKCjoxiHiwkxUopdNbbRXrt2wSAqM=;
 b=bnet3FmJPdjgiCryHJ+wOc/XRuO3TErdGEZ63bMfuXqP7CNAdab5LrH/lHpAbYsCWF
 4dttgRkGsHym/bcZsIVgol9thWbmz0E8Lo8x42O2VY0qOmW41EqpHjGKKOqrweFeVoYV
 b+huKKo//llNfkq5TL+ixJO8vLrHMTcrOn66x2ChHU+xDcEXUYFjjqEj34UQX8wOL6Fz
 pY88PKPk8iwrs3pTYloLqc+zbRfFGG/LWgS1w60dRFUlm/74vpZ/s0ID0I6XRASgvhJc
 vJRV/VRoTRrMJoO9UwBY0Tz/koIsvMmtZQCXm7SuDAUaQVaY4Wqy8ipulL/IEdo+R5Xk
 4KhA==
X-Gm-Message-State: AOAM5306fVPsoUArmlu/2ltRaSttuAmeaNai26zsxmnJdlEV693RqHPx
 Y1m5GYupJC6GDFhQuvDCACA=
X-Google-Smtp-Source: ABdhPJwpMbh790Fc4oZvutMO1WvRv2Of0RpnGm89qrP02+vaGlXNNZ/kXFXUCCKNSH8k041Ru9VtUg==
X-Received: by 2002:a05:6402:3550:: with SMTP id
 f16mr15002879edd.134.1618659003729; 
 Sat, 17 Apr 2021 04:30:03 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:03 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 03/15] ARM: dts: rockchip: Fix power-controller node names
 for rk3288
Date: Sat, 17 Apr 2021 13:29:40 +0200
Message-Id: <20210417112952.8516-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043009_591100_567FB76C 
X-CRM114-Status: GOOD (  12.13  )
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
