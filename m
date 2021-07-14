Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21991C12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 22:59:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D6E55613C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 22:59:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D6E55613C2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iU4FJW+yNI1ptIpFV63GrthQyRzhzHn6drPLzIwfl3E=; b=EwvZu8lDHi6pUQ
	N3CFWaypV8zPEG1ucEGLduEUwqbAQfMJPsRjgaFlMx2wBan3nhDsYd+Y6PxTJXOwu8qiOcCtIqR5/
	zecsVQDtF7Pspqn8XZkhAoy5MEOEM5Wa6Z6vH5cnAwxqNz4so1BSeTjx0jnv/8HwR3VwZGi2XXKTg
	AOqefwlbsYjrgitx2QNTMvGhNK/U9omRLYU+8TWG8n6cAx+FCytn8UCRVKHHPFEvyFxoKRGrdx9Bo
	HyjVzOpNPPc90jU116GHbpkC2PYP26UHrLXM4BDcYZvedK37sSlCc/EwoyZ8TBsi9Le6NuyH40TVx
	sJb3XNPkSS/EAswTz16A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3nqy-00G5bX-84; Wed, 14 Jul 2021 22:59:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3kr0-00EgoJ-1O; Wed, 14 Jul 2021 19:47:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 01112613EE;
 Wed, 14 Jul 2021 19:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626292053;
 bh=8ESoRfGbv/w8m/+eDe1BgcC2jzPf4MZYMPKFq4N+8tA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WCXoBKZDs9hC0eXIHQKuzQh2I+wvtJXE24rYlM798DwsT71see7wsF908fBSAPS5f
 pqTp95LDycEVQlyW7bjzzwQd/5RUBAp0FOr3nvpit/lpFdFDyuosANDkn/zc2/IuSJ
 TM9mdDiHBNAI7Zv+vKYFnAEZCw7Jl0JwormeCab5kB4x/vqWl01pRo3uA+zN+x0x77
 3X1ZG49Z0iGjqJcmQKEdoErQEv8hdaBePWz2+KYn+63SYCKpnZg9f1GKOpzIfBiVWh
 13eci6DxrelPruinJVsgGUmHCUsquslJ2A2plumT4Xq7XziwV7AiSprx36qBB+A+sa
 R8sZ8kOpem92A==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 4.14 06/28] arm64: dts: rockchip: Fix power-controller
 node names for rk3328
Date: Wed, 14 Jul 2021 15:47:01 -0400
Message-Id: <20210714194723.55677-6-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714194723.55677-1-sashal@kernel.org>
References: <20210714194723.55677-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_124734_188128_11F1BA93 
X-CRM114-Status: UNSURE (   9.73  )
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

[ Upstream commit 6e6a282b49c6db408d27231e3c709fbdf25e3c1b ]

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20210417112952.8516-7-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 6c3684885fac..a3fb072f20ba 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -289,13 +289,13 @@ power: power-controller {
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
 			};
 		};
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
