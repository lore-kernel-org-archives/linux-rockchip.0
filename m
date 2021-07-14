Return-Path: <SRS0=C1EW=MG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 060AFC12002
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 22:38:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB965610D1
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jul 2021 22:38:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CB965610D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7RZ1MLmMF6uPMoh+bsWlrvk0jwYxVs86MSKU6ytb2yU=; b=BU365IptZPeYut
	dpt2Gm/ZiMbnJXRAbar9dYZl+HIXWXr8BDTmIzaF5wSt0bFsLb5dOcRoQogZJz+rKeNLKHjg63/9Q
	R2bxE4ygSQnlgO20124POQTuvYn2RQMscmOcXnZRYVul43aTBvTu7q06K9EnD4KCEyOTliAzJ9a6/
	ogFM7aRgbiubetc7E9oe8BBqMGHBsF6blnlJ9mxRYTUNHAvpSSGb3SwLFL48H4GivNPqUd2FM5QoU
	aaoDX6qAn6J5+WQzhqta7515eUVUhbpmJOSWbd8uq1G0OjphaMYKEW/B86Y2vGdfCaNZCDKkBtwN9
	lUrdfX85buNvKDeiQeiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3nW8-00Fvj8-3I; Wed, 14 Jul 2021 22:38:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3kpz-00EgM4-V2; Wed, 14 Jul 2021 19:46:33 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 531FE613FE;
 Wed, 14 Jul 2021 19:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1626291991;
 bh=HBrpdTLMUb3gw4Hb05JbUoDmSi5bkPdEmc3UNDbVtDU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f3C0ufJzYHqcuQFZrMstk00MxqHnCNsQ7YuHHPQGrpa3v+naZMQJUQP0Q6omu+E9n
 h/1VL7zJo63F0vZrURg+c8beW7pVxcIdvD0YVoRohWUjEufSy2uJJ6T5J9cmBKo1k/
 CZGmSkJqROrE5G+f8BFpuxiKjWT4yVD5ZPrEkUjsFxeEm1ffuxN//7ADPkaSr+dY6R
 xs9swMJNfG/7UzvmWdG0qTIuu25n9WFnnY58U10AOBFpdsvETf/J0ldfUd/51WG+Ya
 XiNAcFwKdnerClzslPymj7qpcW0GccyXmxmLZ7WQ+lSYUkoq1KP+CmuyCLdsTuYThd
 gCLJL0k30GuMQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 4.19 04/39] arm64: dts: rockchip: fix pinctrl sleep
 nodename for rk3399.dtsi
Date: Wed, 14 Jul 2021 15:45:49 -0400
Message-Id: <20210714194625.55303-4-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210714194625.55303-1-sashal@kernel.org>
References: <20210714194625.55303-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_124632_066294_7044D2CE 
X-CRM114-Status: GOOD (  10.10  )
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
index b1c1a88a1c20..f70c05332686 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2253,7 +2253,7 @@ sdmmc_wp: sdmmc-wp {
 			};
 		};
 
-		sleep {
+		suspend {
 			ap_pwroff: ap-pwroff {
 				rockchip,pins = <1 5 RK_FUNC_1 &pcfg_pull_none>;
 			};
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
