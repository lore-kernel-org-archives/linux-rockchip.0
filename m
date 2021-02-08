Return-Path: <SRS0=M6n8=HK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 771ACC433E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 18:02:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 040AB64DE1
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 18:02:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 040AB64DE1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lsuODpuqlsePuRWpoYtSbNeE3P/rBmGAu7JxeYTcK2c=; b=e/T3cOMmRayasZKo3koMyFWO9e
	joobXzZA3HSEyUbUH3YT8op9hHanc7+DEHH3BPMZeS3sRLTPV5tjhsljOpe2Iv1c34f3G4luNszEn
	RjbaNW7Pv2lJkYEvqxeLolDIa8PQBMx7IqQUO7Ahuxw122KXX05XnxxPOq2LhdLYvAFy5xwBH20gk
	6BbFtkqWo9/KDEzK4RDgh/ulifXPjCcMrnm+/sh6X0HW2XTYnTksCO9b4LHlx7jCfaOG/yBHef5Mk
	6GxhmGmUYeGvo0O8yhA+pW3HnJ5Py89srWNaOY3w5A3ZOpe2bac+2gymfZJ/yZO0RRoLJ07p8Gwvo
	UPy8rqrw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9Arw-0000fu-SA; Mon, 08 Feb 2021 18:02:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9ApC-0007QR-7d; Mon, 08 Feb 2021 17:59:51 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2637D64EEB;
 Mon,  8 Feb 2021 17:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612807189;
 bh=wPmpKzaMmcqvacjEw2wc2+06+yB2WqJNho5sWTARSE8=;
 h=From:To:Cc:Subject:Date:From;
 b=coRd55kkCrOFgS3hb/uGVEjui4VJV5j/2HCt5QY3u4ptbMk0lQYZB7u2bB3m6VYDL
 yGHaeDpVZV1t5MX0Av3ORBNzwCm/nrsH1n1HUBbi2ACqe4TfBBCksqxJwWnC+vMhI9
 CXvmR1/3KtOIqDP4bbLVmgFhqa2OH1IlIAkUzXDoblYb1XxV4LnGebWAOvTV4un5fp
 NXZJZ1oxtpC20htI6KljWhjTV4+aLAQlJPSaE7kUJYDc3j/CBGPmtgJBIzJzrmUZs2
 p8+A9VDZFRI+Jddvyg/wK7KuNoFM/AL0/r0S/1Md5JFns6skP7Yjm8BVaeagraGwl2
 KHojPxtshZ5Hw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 1/9] arm64: dts: rockchip: Fix PCIe DT properties
 on rk3399
Date: Mon,  8 Feb 2021 12:59:38 -0500
Message-Id: <20210208175946.2092374-1-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210208_125950_508104_EB0CDD5A 
X-CRM114-Status: GOOD (  11.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Marc Zyngier <maz@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Marc Zyngier <maz@kernel.org>

[ Upstream commit 43f20b1c6140896916f4e91aacc166830a7ba849 ]

It recently became apparent that the lack of a 'device_type = "pci"'
in the PCIe root complex node for rk3399 is a violation of the PCI
binding, as documented in IEEE Std 1275-1994. Changes to the kernel's
parsing of the DT made such violation fatal, as drivers cannot
probe the controller anymore.

Add the missing property makes the PCIe node compliant. While we
are at it, drop the pointless linux,pci-domain property, which only
makes sense when there are multiple host bridges.

Signed-off-by: Marc Zyngier <maz@kernel.org>
Link: https://lore.kernel.org/r/20200815125112.462652-3-maz@kernel.org
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 82747048381fa..721f4b6b262f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -231,6 +231,7 @@ pcie0: pcie@f8000000 {
 		reg = <0x0 0xf8000000 0x0 0x2000000>,
 		      <0x0 0xfd000000 0x0 0x1000000>;
 		reg-names = "axi-base", "apb-base";
+		device_type = "pci";
 		#address-cells = <3>;
 		#size-cells = <2>;
 		#interrupt-cells = <1>;
@@ -249,7 +250,6 @@ pcie0: pcie@f8000000 {
 				<0 0 0 2 &pcie0_intc 1>,
 				<0 0 0 3 &pcie0_intc 2>,
 				<0 0 0 4 &pcie0_intc 3>;
-		linux,pci-domain = <0>;
 		max-link-speed = <1>;
 		msi-map = <0x0 &its 0x0 0x1000>;
 		phys = <&pcie_phy 0>, <&pcie_phy 1>,
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
