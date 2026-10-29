Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB59B606A31A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 02:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lIj1SK0f;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=X4fYAN0M
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vOFfuyAXnt0XWkjBcC70Np3rJxowim4UOub9A5N3DLQ=; b=lIj1SK0f4PoB9m7sKRIafMoPyw
	i6+rLH9ZC3plpR4VVcSSfihjryuLTeoLPTimJC+h1MrJABxXuTCr3/kwnjSObuQ1mG+Z2ZSbyS8yj
	LSW/7aMEIdbJQ7/w9SoH2H3UZDZov0PC8EmIPnPjR9h34AmBeQYFtTLQMiW4N1OZ2oYKI31JaVIEq
	SwfuZPKyzv2IAJfmmLfvDS5HwT69b8wkJFjKGmzKRavbkeNsqf3RUFslKb4hsRarzOUZR/y0A1hoe
	KwwNJAhunkbC1/hHM1xsQRQLo0+WGNLwkUb5+BCbTf0WIOvdNvxuCJ5bm9B7NiyOAQ574mDLM7jV/
	/svq2XDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMG45-00000008Cdi-0Rjy;
	Thu, 29 Oct 2026 02:40:29 +0000
Received: from mail-m12767.qiye.163.com ([115.236.127.67])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMG40-00000008Cb1-0pWY
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 02:40:25 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 52bb25142;
	Thu, 29 Oct 2026 10:40:18 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Bjorn Helgaas <bhelgaas@google.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/2] arm64: dts: rockchip: rk3588-evb1: describe the PCIe3x4 slot supply
Date: Thu, 29 Oct 2026 10:40:06 +0800
Message-Id: <20261029024006.3483210-3-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20261029024006.3483210-1-shawn.lin@rock-chips.com>
References: <20261029024006.3483210-1-shawn.lin@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa18587985003a4kunmf51ad3a01124de
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaHR1CVhgeGh9OTE4ZTkNOSFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=X4fYAN0MfGVi0/FzQghxedTVqYK+a/wV78WMSFo0G+JjmdtGvbAuTCyNyBck1GAB+YyOGDOU2Tf9tRPW+7UKce5pBzW1wLvqVST3CdPy7RhiN2fn8i4MaHzgaIL0ov6U8nc8OCpdUz4EuIdOmEVlWUp7QSIXPFS1myq1QWVl90g=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=MCjNgmAq76o2XeQztjjTI8OadexVraYkSegELcY3anA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_194024_800285_4B937729 
X-CRM114-Status: UNSURE (   8.55  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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

(no changes since v1)

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
