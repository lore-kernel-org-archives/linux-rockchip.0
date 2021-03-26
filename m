Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6079BC433C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:28:59 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DACDD61A10
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:28:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DACDD61A10
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hFY/U7u1n47aTXPt2A7dzGSeiI5xNlE70RAHyCU33Ck=; b=EabC9m30MA7Nk7mBIqo5y4AA2s
	KqdI3IOk0XH/V+OYhsVXlhDN9GRmg3Lc3S05EuxvOC8RMmtwYbtpSWgej/BGIxtwWpJoqucgHsXWv
	ZKof0WGeNCjhJXVU2NReeyDFDUY4T6xZaSQDTdqKLqGLAW9aREYJw2C2+HhLv9pptWzpNCm9HMzx2
	5XmcNzRq8zdkMLIybnbz/1fmXPruVu2Il4ROL05MgbxIaREeroqxtsORhHkKvSKdd1az9/KbdC8ow
	HV9kQUIhDcAnoi6gkc8ChnVZk/xrIb3SqQL3jhzU1FLeMWEtfpa7fOPmKstpui5/0bEHeNFMSnHB0
	4FRRiztQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPji1-003ITl-Ek; Fri, 26 Mar 2021 10:28:54 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPjhX-003IGT-85; Fri, 26 Mar 2021 10:28:25 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 27F39F2ECB;
 Fri, 26 Mar 2021 18:28:21 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26788T139903482939136S1616754499943680_; 
 Fri, 26 Mar 2021 18:28:21 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <48a73a0faa9985ceca7569370270d390>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: robh+dt@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: robh+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v6 05/11] arm64: dts: rockchip: Fix power-controller node
 names for rk3328
Date: Fri, 26 Mar 2021 18:28:18 +0800
Message-Id: <20210326102818.14900-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210326102738.14767-1-zhangqing@rock-chips.com>
References: <20210326102738.14767-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_102823_654261_0833866F 
X-CRM114-Status: GOOD (  11.04  )
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

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 063ed0adbec4..084acfd597af 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -303,13 +303,13 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			pd_hevc@RK3328_PD_HEVC {
+			power-domain@RK3328_PD_HEVC {
 				reg = <RK3328_PD_HEVC>;
 			};
-			pd_video@RK3328_PD_VIDEO {
+			power-domain@RK3328_PD_VIDEO {
 				reg = <RK3328_PD_VIDEO>;
 			};
-			pd_vpu@RK3328_PD_VPU {
+			power-domain@RK3328_PD_VPU {
 				reg = <RK3328_PD_VPU>;
 				clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 			};
-- 
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
