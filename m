Return-Path: <SRS0=M6n8=HK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66125C433E6
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 18:00:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1037564EAA
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 18:00:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1037564EAA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7vLeHn1/XpR9aFEJTO+8rCtvnINXIjZuiJuY5qNrxNE=; b=jifYhiq/3Ti1R8dpguaXVnYeJD
	tSyBxDne2ri4SA+nNoYafXQk86mPSKPfiGAVxMNii3T5PIqOjIUmDo/3MF60QLdpLj2mRl3V+2fCi
	lwVweZzZzGMALb1urzaMUjwhVG8Tqngwz1FHPPC5WknxI1NBR8qhaJfvE46pMDvGrWHyt0il24CZ/
	4K9TfvQwjuc2xWWKAEhnmJTOgzm7jDiW4UPuGLPT9fK6Uhfb7qx824UCSBJRC776hFbZiWKloZkNt
	NrMbLQn7uu6lTuDrj1qcZWE5W7NIn+oogyEqzaVuD4yqtxpAdSFwsFY+r+X7YRAARB7MflX+obpYi
	W5yHQdFQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9Aph-0007fH-C0; Mon, 08 Feb 2021 18:00:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9AoQ-00070q-74; Mon, 08 Feb 2021 17:59:04 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2F1F864EC2;
 Mon,  8 Feb 2021 17:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612807141;
 bh=3m9DxGXNsBBhzo/s+0wFSYIudIWh4M8a/6fbq7tYbsw=;
 h=From:To:Cc:Subject:Date:From;
 b=qyYGwH82DRlTihlEq6OMlAC0e9Um7gaPTawpCjf8I49WVlJi4fBcihyQWd3HHRROz
 dxHlkgP5iWDr+5i51hcBtl1G/Vbzx/PT4tNVFVTL6bAXjpUZvxXsrQSgs6BdpbD6Fk
 xghR+d4Zt7t+/xAxHh3JwBIpnI7+HR7ezJohcsJ4LjjLf6IZLINn2wbTE0/49b2TKi
 IQVJd05RTwxe/RcfxYGCZxqHaamaETLk3eD9KXUl7jfGAJ5jiyu3frIokrNpHISD+/
 F8yhgnnRYfboZWbPd4rMWHGkopbzHEFU1fR1cxRdHKxhO41Pm5w8BKJAeQjdUdtnCH
 vZwkVHK+KSZ2g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 01/19] arm64: dts: rockchip: Fix PCIe DT
 properties on rk3399
Date: Mon,  8 Feb 2021 12:58:40 -0500
Message-Id: <20210208175858.2092008-1-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210208_125902_436755_490C6D58 
X-CRM114-Status: GOOD (  11.27  )
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
index bb7d0aac6b9db..9d6ed8cda2c86 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -232,6 +232,7 @@ pcie0: pcie@f8000000 {
 		reg = <0x0 0xf8000000 0x0 0x2000000>,
 		      <0x0 0xfd000000 0x0 0x1000000>;
 		reg-names = "axi-base", "apb-base";
+		device_type = "pci";
 		#address-cells = <3>;
 		#size-cells = <2>;
 		#interrupt-cells = <1>;
@@ -250,7 +251,6 @@ pcie0: pcie@f8000000 {
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
