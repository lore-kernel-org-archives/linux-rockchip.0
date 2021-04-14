Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14B9C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:20:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 482F361166
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:20:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 482F361166
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qLOA1iAhYGR4GKKWlMmOkw1rFyMV6SBbP9ZF/t7czOE=; b=OOKua8oQCGQUZSYHhsPyXYmlDb
	2vJqdSVzUOpZ5J8okHGoCcuZs9x8Jjf2OKyDt5+4ZpbCC/sdU0U1P0CBIk9bGQN5BwqFRvlUCIHJQ
	cbET5Xv0p8AO34cj802ffX1UXL1grlSov7H8+s85984VXffAtQ1dpvjp3bNJGX227SbUa5nzqYfC4
	vriesfMq3DG0EQHdFzpTpwyn7nI8W7tLiZfDUk9WmHQAXeF2CrrWhoJPG7s4Yq7eFyHnSEnUuH9pQ
	SUKavBw0Z6e773dbdepG/qZj7Pea8BeAyX25hoFAdSmOIyxPJykfI7UGwBkJtDrMvIt5diKMvnE7C
	Dv+8BhTg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWmvw-00Dozb-Vs; Wed, 14 Apr 2021 21:20:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmul-00Domp-Oe; Wed, 14 Apr 2021 21:19:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=loIVksKZEL5F0wKKCjoxiHiwkxUopdNbbRXrt2wSAqM=; b=Jf352wiKk6ywq3XPDj2GNI1dtO
 MJ067UHFZi4dhHj7zI+SBdTyblcljqFqfJrWE0m2Q4bV1dpp3TDTJxMCBe4qWx0x3yICTQH1DCuin
 xV8e7unploxE7a9AF92WDRFQcbHbRbRZHcovxZ/rv+Ip0LojaqVuoI/8E68DcB3WStsobeZKyPzst
 yXDWCO9b252OxqqowoBUm7E5VjG10lbzQAnR/dw0TVeA8qpRMmvCscv1CDW+s5Bh/gz+r8tEzdqnX
 RzVPTO1hjOSWdkXci6XcBFtpUoZj5dMVyrfJunufXJodee2oITJz62oHCjW4yFkikOzNeb1BaNe9O
 ZB1wo9CQ==;
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmuj-0086qQ-BY; Wed, 14 Apr 2021 21:19:10 +0000
Received: by mail-ed1-x52f.google.com with SMTP id x4so25456360edd.2;
 Wed, 14 Apr 2021 14:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=loIVksKZEL5F0wKKCjoxiHiwkxUopdNbbRXrt2wSAqM=;
 b=Txnutc60o/j/AkKNmGyoN4Rt7gCWA2CX+TVKgLpSFL/ydK3eYSxmXjW72M9gANbqwT
 uHB1Ngvt/So8airX5rNR5p+U4QppzWHwuSW3pUPOFYNDU426qgPX4/NeSqEMCfqoUCdY
 L+bu12Cxqocekc3pkkLPZ/+Y+1KTFLlCVkZ+bWY6vFHC7LvDPjbpMXJ/2R+dUlAVYuz6
 kvx6CzT8/QpOudUMFVSMeWlUecejYdGYI3WasIl9q9sH8+dSHKOYTabdRPt+NOF6O/BA
 0lipia02vk2RBAVg6I4ihGSx2O0CAI2Y68qcbTvIs5X1AnEajDVBe+7WQEl7rJmUHelk
 gHBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=loIVksKZEL5F0wKKCjoxiHiwkxUopdNbbRXrt2wSAqM=;
 b=DxzHjap3188vX7g4QRU+M6qDPZ6I4oLlI51YdTuNrWQQUI0UM463BpT7A/GwiCNUgG
 mS/DyDAGe5z8gLyq1IX0RFDFkKdGo+kVJb23dUpLVE2w2PxIJIS/jSyB4F/PKlCyPRjl
 aQZIDABzT8Mk+0UObAVg3mAo2Xo1kFClEgaoVv78no8PQzGxW7hNaUL2gzj3SiljAu5x
 hha42CZ+I3utLUPqhX1Q+rqLMEoeYZvIfg/S8WunRRG7BJ6OTNV18Eh4eaPx9Jzcmi59
 QAfNFNq88Rv3xhXf39ay+grvdj7IUsNEleFTZd0D67ZsHId49EIeF0V0BYusnpFSBnuz
 bKZQ==
X-Gm-Message-State: AOAM532Cs57Kz0SgyNJydNQNdJjPns+2z+ELAhshVKbf0tex1TbZKroH
 4Yc40eh9xOTaOyTcuq30bLU=
X-Google-Smtp-Source: ABdhPJzlI8k1Ch2cg4wHXi2bjATLUor4PBl2TPterEPTFBM1f9HXKPYK3TubrJIRa+Y/VOCh5NzzdQ==
X-Received: by 2002:a50:8d8a:: with SMTP id r10mr251153edh.132.1618435147990; 
 Wed, 14 Apr 2021 14:19:07 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v5sm568222edx.87.2021.04.14.14.19.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Apr 2021 14:19:07 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 03/11] arm: dts: rockchip: Fix power-controller node names
 for rk3288
Date: Wed, 14 Apr 2021 23:18:48 +0200
Message-Id: <20210414211856.12104-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210414211856.12104-1-jbx6244@gmail.com>
References: <20210414211856.12104-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_141909_416163_BD6DFB09 
X-CRM114-Status: GOOD (  12.18  )
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
