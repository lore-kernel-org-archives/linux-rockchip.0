Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1090C1B08C
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 22:19:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1128613C5
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 22:19:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1128613C5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=br67CCTOGITigc9RZYKqMFCGMDcNdu/eJuIJAGFy/IE=; b=2knXaXErok8j36
	cwQegdL4C7Lxy6JKgc9xVGfOHHYhKkQ4yXHmVel5lYONzfVv2B8vMQGQYBIrcOr+TDjAzwkAgkV6V
	xxWac9+8BBnyZ43kwu1wBLsa5dO2+g3e74x/Is8CSa8cj9nczXSIKDZVKsxHPfd4GVVYq73wXcJ7Q
	MOTWcnXLW8H/bngqZMothOolUmYE2SAO6TyaHtw3t0xiiZGjmtuw7s2M76phiUaU083HoTf7xlKH7
	23kPnZB69lXbPuq/xsJB0LyxBZV1NCY8Z2K5SwLpTW9lAsz72EJ5ThVY3kjXhjHdnqUN4DcTh21ZY
	VmVKW+pqoCBwfJUvKiVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3nDx-00Fmiu-LV; Wed, 14 Jul 2021 22:19:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3kp0-00Efkw-S9; Wed, 14 Jul 2021 19:45:32 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 996EE613FA;
 Wed, 14 Jul 2021 19:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626291930;
 bh=PHjOBuNXRblZhdlU79d2NA7Go6TW91OePXaAR5wbuII=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=a8ruC/n6lGLNhZoePZIr6hHezpNyMTMdjN2IYt34KHvmPFHOkc3ley9vJwLVZJi2e
 Qqc3YOHQ+jfig+2WUaEruQCS2VO4I2bE+CQ271stG88XqsGz04oaF4bM4YRyZLfY4H
 t7n+Y0h3cu5P0FTN80q6WHDIobG9Jp4asJn61RwpCfhe44IkQ+Kp9TBDgjO3JxVusn
 Ryh3rN7knW1DaYBgE5UoTk03SJ3Vj/OGwfXh0t6isw7B4nEqw6K923ge5SSX4FEtls
 NucAJqcNp2zfmxAwpS1gKQEDOW5I69HSuL2WCFhjo7MAoRDXtNp5NNe4HWXxNvCAyZ
 tyEbhwjaQpVxg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 11/51] arm64: dts: rockchip: Fix power-controller
 node names for rk3328
Date: Wed, 14 Jul 2021 15:44:33 -0400
Message-Id: <20210714194513.54827-11-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714194513.54827-1-sashal@kernel.org>
References: <20210714194513.54827-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_124530_974073_168B84DA 
X-CRM114-Status: UNSURE (   9.53  )
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
index e0ed323935a4..44ad744c4710 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -270,13 +270,13 @@ power: power-controller {
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
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
