Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C602CC12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:09:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77372613C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 23:09:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 77372613C2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n8LMmCPiesoE3tsyO13iL3FAmsedArLjHuH8xWCr5fQ=; b=dcAM+gJ6hFT8Uk
	8KjWEZ+60rhE6f8BNmUs89jtj3nxyuhVvxplGy982fNtUIfVaqYsVdBSmUapkjtfyG0dtjGSdMeAE
	pE5D9GTrANC2gsmz7XJD6GiRZyceLDPT/iwhqDiPcOyaNzf2de6Sl3s/lzI0UlcIbyalvokMyTXBP
	B1hR08WWd9AhwPsyvxwTsoKBkJzavXfe5KRMxwjuQrtekMkRvdL7TfTjQdq1XbmvO2WARHC5eegma
	ztfHHzdLDrigxkq8l/nnNw4q5EJCQE13oICmhnPelUP6ZAjq539J6r1TrB1CTVw9/ltLPht0Kto0U
	lMDHPX13mhYffsGVQhAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3o03-00G9Wm-Mu; Wed, 14 Jul 2021 23:09:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3krZ-00Eh8z-9s; Wed, 14 Jul 2021 19:48:10 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0D522613E2;
 Wed, 14 Jul 2021 19:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626292089;
 bh=Df/eyhnavKsliPrzBOaRIZeBhZo/AxhFTj2eGH63xdc=;
 h=From:To:Cc:Subject:Date:From;
 b=e2g4J4vzBvTd3opI0RuPw7SDtImFsZi4N39hOK1S96h1epW82+yKi/U3fdyVtXhUY
 FxXa7rYrUgrg6AzygIDToKpUvIEGd5bFIacMBmmm27O2ilEjKfszg0w2xfKgZLOORS
 8mME/ZryiTETr1oS7HLbTkngz7Xd5HUkAND43/BGYysWMjP6wDDWnQpc8Ct5+4CKRb
 U5BvvbIfxSFRdtPFF+7uRsOAcQDQqRstBMf5ZT9QIDAvTy5VwYrwCv9NcMrpgU6bMI
 1jCHFd/pm+zsbs9E5PJPSXBQ1KT2ywFFiZwH8drMGGlHZNP9a5SLzS4/CRmQqn/hWv
 J8azzc8IX2a5g==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 01/18] ARM: dts: rockchip: fix pinctrl sleep
 nodename for rk3036-kylin and rk3288
Date: Wed, 14 Jul 2021 15:47:49 -0400
Message-Id: <20210714194806.55962-1-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_124809_413012_D748EFBA 
X-CRM114-Status: GOOD (  10.37  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit dfbfb86a43f9a5bbd166d88bca9e07ee4e1bff31 ]

A test with the command below aimed at powerpc generates
notifications in the Rockchip ARM tree.

Fix pinctrl "sleep" nodename by renaming it to "suspend"
for rk3036-kylin and rk3288

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/powerpc/sleep.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20210126110221.10815-1-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rk3036-kylin.dts | 2 +-
 arch/arm/boot/dts/rk3288.dtsi      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-kylin.dts b/arch/arm/boot/dts/rk3036-kylin.dts
index 1df1557a46c3..3080915cfa5f 100644
--- a/arch/arm/boot/dts/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rk3036-kylin.dts
@@ -426,7 +426,7 @@ sdmmc_pwr: sdmmc-pwr {
 		};
 	};
 
-	sleep {
+	suspend {
 		global_pwroff: global-pwroff {
 			rockchip,pins = <2 7 RK_FUNC_1 &pcfg_pull_none>;
 		};
diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 30f1384f619b..09e7898ffb6b 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1278,7 +1278,7 @@ pcfg_pull_none_12ma: pcfg-pull-none-12ma {
 			drive-strength = <12>;
 		};
 
-		sleep {
+		suspend {
 			global_pwroff: global-pwroff {
 				rockchip,pins = <0 0 RK_FUNC_1 &pcfg_pull_none>;
 			};
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
