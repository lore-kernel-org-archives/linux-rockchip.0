Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E46AFC433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 16:23:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 64A3B212CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 16:23:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 64A3B212CC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NCYvj7bntNggpm3BTYstz5y3nri1mpHz78t8Dpi8bF0=; b=EuBy3vQ/vegl1KHSnysgVLDnA
	K1cCGgi98IkQ25EtRUkTCzrDD0GFnUgbSXYRMxutJPVUuNJF4j0Y14p82ZZQiGNHoX6Etl2F9Epdo
	lvaGliZSipmHcmfCMW41BtXvX47QnH5cm4upzVfdtq0iJKPp+F85JPuFpvoFSS4YO809Vm1J+L+KX
	1UEasL4D8IvnxD1I3m9VSqZLlKpOoWDJWq261fzh3TDwvwI1e9XGtWuNWkvhkn1hR8sqedL0dGUeA
	aSqde9gzMd2YPteKVF/axV3hy063jNYXbubuU9yCtjrIvB86XEzyX3z4B6SNt3oYdt+XOwJliHBSI
	CTb024rlQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2ckP-0007RK-4L; Thu, 21 Jan 2021 16:23:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2ckB-0007Nu-K5; Thu, 21 Jan 2021 16:23:38 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id BCBDD22B45;
 Thu, 21 Jan 2021 16:23:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611246212;
 bh=SGnWKlQo06sg8d+NDOQwaMUesF8OTKiZdb/fFObVA5M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=m+iNbUe1iH56GlLK9RfZSVnhckUnp2JZRKs/tbqkhu1wk2ONnMIVExT3hVjT7EGth
 +cYgBB9941K1+gZEu3f9NRKFz0oBIzy5KJhlSIYVYvMzi8aPM099NvjW3luA0M3cAt
 SilMrNkke79EwXj8YwSci70gf4scZ0LPT6yAgk4hKtnYw0BbGFMGHGuyMzXCD/3Ncw
 MQVhraqL9eexYSUKD/SHpMs+PSUVyPJzNIBQH03dKy1SzDjUN/JkJ5S5WPFjivwEgJ
 NknIpZjTLibFgLQ6cOc8OzOt+icSCu9IjNzae72EdwmPulWmz05WcpIWfYQcXmbcrM
 rwRpF3s6cqxAA==
Received: by wens.tw (Postfix, from userid 1000)
 id 94B265FBB9; Fri, 22 Jan 2021 00:23:28 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v4 3/4] arm64: dts: rockchip: nanopi4: Move ep-gpios property
 to nanopc-t4
Date: Fri, 22 Jan 2021 00:23:20 +0800
Message-Id: <20210121162321.4538-4-wens@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210121162321.4538-1-wens@kernel.org>
References: <20210121162321.4538-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_112336_143821_29A3F4A4 
X-CRM114-Status: GOOD (  14.70  )
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 Johan Jonker <jbx6244@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
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
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
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
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
