Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SIGNED_OFF_BY,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7064C4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 07:55:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F1A25222E8
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 07:55:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="vtgo+KJz";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="uam9CBc3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F1A25222E8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v3RnweYOPdtTJEHguzOK95nTRL93toueK8mzjIPbHGo=; b=vtgo+KJzYBkzpKU+97NGFjxxv
	uSr9s1Gbczmf6ErQfYlzFQ/1cJ9mal+7Oji4JBu9xGuzJaEmVZn6y06Iz+lp5FgM94d/ufzE3nddB
	wiDHAyWOh7xneM6XhSJmyVeWCgUOOjZUS4YFOrbCtXKa+P5RhjgN2T/ekhcoL+2IB0ALHu4QbiOJz
	AP3WBtmJmkE5ziylOzk/aQHDzeeJ7jneQ2muGBtk1/GCL1zr4bXeLZxtsV+/Ej10FBhX1MZGpwA6e
	2NtB6mTSJ8vgK5MZUV+hzztn11Nlhcewlo+byjAFSFXEQaZaDMLPqf4FZtL2GsKpYCr3iuZK0sCna
	DMg3TJHEQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keZMK-0006h5-Qs; Mon, 16 Nov 2020 07:55:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keZLg-0006Ru-EP; Mon, 16 Nov 2020 07:54:55 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A4905222C4;
 Mon, 16 Nov 2020 07:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605513290;
 bh=VyAejFb2EqXRXHkA5q6udJdyr3L4QQLG2oyoewoKR0E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=uam9CBc3FWZCA1IdWVfAgF+dyb32VmrhHdgGoq61b+A0KGv/Q9AV4RYARupt7EOdZ
 Acf/c3dMRhk/yMnhsbAwg48G1+6KAX2lEBxM1dau3Lj66onOAjemyYy6Uc5H/4rrcP
 cTykbU5Hd6orcGxBXXMKE+L1NJQtaLCJpvn6B0cI=
Received: by wens.tw (Postfix, from userid 1000)
 id ACBFB5FD69; Mon, 16 Nov 2020 15:54:47 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 3/4] arm64: dts: rockchip: nanopi4: Move ep-gpios property to
 nanopc-t4
Date: Mon, 16 Nov 2020 15:52:14 +0800
Message-Id: <20201116075215.15303-4-wens@kernel.org>
X-Mailer: git-send-email 2.29.1
In-Reply-To: <20201116075215.15303-1-wens@kernel.org>
References: <20201116075215.15303-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_025452_767530_FFDD7A36 
X-CRM114-Status: GOOD (  17.19  )
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Only the NanoPC T4 hs the PCIe reset pin routed to the SoC. For the
NanoPi M4 family, no such signal is routed to the expansion header on
the base board.

As the schematics for the expansion board were not released, it is
unclear how this is handled, but the likely answer is that the signal
is always pulled high.

Move the ep-gpios property from the common nanopi4.dtsi file to the
board level nanopc-t4.dts file. This makes the nanopi-m4 lack ep-gpios,
matching the board design.

A companion patch "PCI: rockchip: make ep_gpio optional" for the Linux
driver is required, as the driver currently requires the property to be
present.

Fixes: e7a095908227 ("arm64: dts: rockchip: Add devicetree for NanoPC-T4")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi  | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
index e0d75617bb7e..452728b82e42 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts
@@ -95,6 +95,7 @@ map3 {
 };
 
 &pcie0 {
+	ep-gpios = <&gpio2 RK_PA4 GPIO_ACTIVE_HIGH>;
 	num-lanes = <4>;
 	vpcie3v3-supply = <&vcc3v3_sys>;
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 76a8b40a93c6..48ed4aaa37f3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -504,7 +504,6 @@ &pcie_phy {
 };
 
 &pcie0 {
-	ep-gpios = <&gpio2 RK_PA4 GPIO_ACTIVE_HIGH>;
 	max-link-speed = <2>;
 	num-lanes = <2>;
 	vpcie0v9-supply = <&vcca0v9_s3>;
-- 
2.29.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
