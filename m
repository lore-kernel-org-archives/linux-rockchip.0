Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCBBDC47E48
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 22:15:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9908D6100A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 22:15:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9908D6100A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6L7WIR7yOKU51X/f4rhzRgP89Fiw/5tN1XskyE7JkQ=; b=FGhA7OVpmcec0l
	EcCces8FBGAQvWc4hHHbJFvPzQqcMJUryq4cgkGNJisdCzOjKmRsMW5qBkGHo/w0Kk7NqZ8rcjLsr
	MYSVjhZihe3nUaWMeKRIGO6Rn3UTCNJqLKdNOgEy4hNYJ7mlgde7PFIrdMNOleIRaieqWOfXrlt4R
	86rTU3qpPG5fTbPe41xlmGq96ryZcMxGNjpEuxSCPnEMcDQO0WXUkaQx7fFTb92N7J7JNx9/gIaan
	UESAMm0tsPXx5dWDOtyf/2eSlBkR6XV3orVfAXbaVjvh57emyJuUqo9yP+gdaN02WzMNyR6o3ryO9
	cODL/ZV9W6Vf8bMzqV2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3n9d-00FkiR-4E; Wed, 14 Jul 2021 22:14:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3koq-00Efj2-Cw; Wed, 14 Jul 2021 19:45:22 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id DBD6D600D4;
 Wed, 14 Jul 2021 19:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626291919;
 bh=tkhs2oleCy29LgoRLJeVYpcFY3jAEXYINZ8XP1zCpXw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Jrv5T15KG5Hi08G2vBF0mqLi36DfHJUQ4f86b/zVwcK+lRkwwj6o37YV8kG7ULzF0
 G3uEh0uiSyUKbTryOHIC/EXw9ep4+9pvHGFs4EsG4Kb5RCKvTrmBMZJlmSORgdwmwi
 gj5XCn39io5avdMbByKmJK/ogvwEh1f8teZIzeLc01Qh1wf3hXHilwKb1V36ciU4lN
 6sDYg19Iak8O7Md6Mz4/xFZE+CANd/c2wpNR+MVJJhZy61wcLFHIdCdwiboPqWAROZ
 nHcKRwvzl8fQQuWkfcOB9JtSmuZjzytq8OfXJIHgH8H64N3jafyB1ocznfP4y4SKgO
 FNF+3KbxXOLYg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.4 04/51] arm64: dts: rockchip: fix pinctrl sleep
 nodename for rk3399.dtsi
Date: Wed, 14 Jul 2021 15:44:26 -0400
Message-Id: <20210714194513.54827-4-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714194513.54827-1-sashal@kernel.org>
References: <20210714194513.54827-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_124520_558640_FA5D94FB 
X-CRM114-Status: GOOD (  10.07  )
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

[ Upstream commit a7ecfad495f8af63a5cb332c91f60ab2018897f5 ]

A test with the command below aimed at powerpc generates
notifications in the Rockchip arm64 tree.

Fix pinctrl "sleep" nodename by renaming it to "suspend"
for rk3399.dtsi

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/powerpc/sleep.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20210126110221.10815-2-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 9d6ed8cda2c8..750dad0d1740 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2317,7 +2317,7 @@ sdmmc_wp: sdmmc-wp {
 			};
 		};
 
-		sleep {
+		suspend {
 			ap_pwroff: ap-pwroff {
 				rockchip,pins = <1 RK_PA5 1 &pcfg_pull_none>;
 			};
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
