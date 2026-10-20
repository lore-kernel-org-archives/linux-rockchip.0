Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264B2606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 03:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4Oa3ylvu;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=dhcUOd5t
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=odHKaxNhr1AsYTNidDjXZwAY7FMdc535Codwq5HT6uE=; b=4Oa3ylvu/egsjw
	cBo8Os7onfiQg41IyuF9/ImQowmlngVJXbGpJbc1pa0tEon1a/6B9YP/knN6WSoQ6PuhYR3ffX58w
	PnQzoz3lqH+8gaxxaKcquuXGDUJNPV3X2dQH7QqapOi2AaxCRMAhTWkCl4KoFsczAUaikUGOVhVhI
	gCYSRLQ1HNzN8k4O6fUQcFHEHT76eia6dKdpOu+BfW/rwJnSpYjXNteOI1wFcCnO+PmAXmS92H+vQ
	TdHnHn0vUfQSz6/p9BwqylIaKf2XxJvCf+ulxFApXUAF0k8E0BcBqj+vr5JyMGr0Du5prWT292gMs
	8mN92kPqrUDBrndcsSKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ0Lg-00000008mRt-3Y9p;
	Tue, 20 Oct 2026 03:17:12 +0000
Received: from mail-m1080.netease.com ([154.81.10.80])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ0Lc-00000008mPX-17J0;
	Tue, 20 Oct 2026 03:17:11 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 51a517e04;
	Tue, 20 Oct 2026 11:17:02 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	devicetree@vger.kernel.org,
	Samuel Holland <samuel@sholland.org>,
	Coia Prant <coiaprant@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 1/2] dt-bindings: phy: rockchip,pcie3-phy: Document firmware-name
Date: Tue, 20 Oct 2026 11:16:45 +0800
Message-Id: <1792466206-127946-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1792466206-127946-1-git-send-email-shawn.lin@rock-chips.com>
References: <1792466206-127946-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa1574fff2203a4kunm7337cf0a90149d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQ05ITVYaSx8ZQhodS0
	0ZHh9WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=dhcUOd5t40dMKZ29YLHBvyBTJMaBuBFII57x8Cufud7wbY12fgE4qcsoDKpVEwjxpEckNqtr4/8rOWxlyN6aehhHTwG2kN4pxJD+yKgaidjSfcW+1QMsYfjOT3g2/qttKWZdrCtlICKV1mAX11hq0TUhE+ZCznfM9c6XwX1M6MY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=rnLHPhFG/gXRDlU2dAZnibIxBciJw1AG1LGW/j1wmKY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_201708_554957_BD077248 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

RK3568 can load an updated PHY firmware into its internal SRAM. The
firmware file is named by the optional firmware-name property; when it
is not described the microcode already present in the PHY is used.

Document the property and add it to the RK3568 example.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
index d7de8b5..2356812 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
@@ -67,6 +67,11 @@ properties:
       minimum: 0
       maximum: 1
 
+  firmware-name:
+    description:
+      Name of the PHY firmware loaded into the internal SRAM on RK3568.
+      If omitted, the firmware already present in the PHY is used.
+
 required:
   - compatible
   - reg
@@ -113,4 +118,5 @@ examples:
       resets = <&cru SRST_PCIE30PHY>;
       reset-names = "phy";
       rockchip,phy-grf = <&pcie30_phy_grf>;
+      firmware-name = "rockchip/pcie3-t22-c8g2-1.6.3-202a-p7.fw";
     };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
