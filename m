Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 816D8606A32C
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 07:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jseMN6cU;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=EAxR36c5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=B+h7fmuNtmJCrkkAFDoABb62kaWXD2YboT4KvPcDGxU=; b=jseMN6cUFX0bScxL6yNGWJsfr7
	F/8a7VgfJQjHbuXdLQdibGCKMhigRwbV4C+T4kaZXLd0bXTydqDxLHaYoEHscZ4CIfJc0faAaPw3R
	5AunSLfleWIhEsLYGMhGu/lcsVci8YPcatUzbKUl5uOckl7YRiKioLH+yXZ+5fER/MRs+yj3UPeKU
	btDd93PYOHQ0Smx6TDhZIXMxHVep+XkG9RKpMSlrGc3YzOTADqAZ4+SUysbcApSjEmx56QXrbA5bY
	CgpcbwRGu8AsLsuJWpvJj0DD7wp+d/F33vhap41DMrFtDZKgVJNyGnlyZhseSTL+sljExK4liVSNr
	B87vw+SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLc24-00000003xKk-2n5V;
	Tue, 27 Oct 2026 07:55:44 +0000
Received: from mail-m822136198.xmail.ntesmail.com ([8.221.36.198])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLc22-00000003xIF-2y4j
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Oct 2026 07:55:44 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 527d681f0;
	Tue, 27 Oct 2026 15:55:37 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3588-evb1: describe the PCIe3x4 slot supply
Date: Tue, 27 Oct 2026 15:55:20 +0800
Message-Id: <20261027075520.3591049-3-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20261027075520.3591049-1-shawn.lin@rock-chips.com>
References: <20261027075520.3591049-1-shawn.lin@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa17c5b901e03a4kunmefbf004c4b82ad
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaSU5IVkpMTB9CSBoaHk0fH1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=EAxR36c5LAmfymK1ywbtUfK1OHTeAsTDPHPYqMT4A71pUsB3A2RIUKd3OvrgamWC8eOL+RXpvhNhc3agSwZQyHZa/4rS1xvkyex+Y/lcxUZHIEfL8aNcwZN1QVo1Eo8Y/lXedkdoJN6oFw8gON8izygKyg4mQFuhwKHOWLHv7Ko=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=avlwFO4YaJ2loUf0K54UCcW3Kq7MdUM5DozbyuqnBWw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_005543_128933_87B92B2A 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Move the vpcie3v3 supply of the PCIe3x4 controller into a child node
describing the slot, so that the PCI pwrctrl framework manages it.

The child node is modelled as a PCI bridge, which is what dtc expects
for a node below a PCI host bridge, and carries the regulator that
powers the devices in the slot.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 8969b56f3063..80eb36e783e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -569,8 +569,20 @@ &pcie3x4 {
 	pinctrl-0 = <&pcie3_reset>, <&pcie30x4m1_clkreqn>;
 	supports-clkreq;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
+
+	pcie@0 {
+		device_type = "pci";
+		compatible = "pciclass,0604";
+		reg = <0x000000 0x0 0x0 0x0 0x0>;
+		bus-range = <0x00 0x0f>;
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+
+		vpcie3v3-supply = <&vcc3v3_pcie30>;
+	};
 };
 
 &pd_gpu {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
