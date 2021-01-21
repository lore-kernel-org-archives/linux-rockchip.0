Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A01C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 00:00:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E66B2368A
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 00:00:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E66B2368A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Txrp7ruytZMQj72OUkFPV1Ns436611spTad2CsG/9Bw=; b=UjwbH4wjUsoAZhncYr2G5qfXTl
	zwtSs4Mk//4dNKGSvAfjR46x8GV+lN3Fzo7MWFJexSyirpsu6igUAjgV9L99l2+KPkA5kRVlmQYj/
	b0HBe8ZM2X1To0pCtthwVbWqBopcQF0FFewelN43/7RKc5AWk1vaz6pUXniv4AKC+91/ocxkcjaDE
	tcdBt6OsO7IO8ETubOyCXrqcGfwrpYBFSJsMSIGJyX/SvnglOvqdN6iBY/0YytJP8LIKL2hEcMPol
	2dYFxJvstCxrRPYdfe6VuXGTgmIWS7b8VxU0qcJ2X/Pb2tG7a+37rk5A6BZfIY4gFu2IWjyFTphTP
	QmeTu+7A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2NOr-0000rj-Dd; Thu, 21 Jan 2021 00:00:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2NOm-0000ql-QQ; Thu, 21 Jan 2021 00:00:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6414414FF;
 Wed, 20 Jan 2021 16:00:19 -0800 (PST)
Received: from DESKTOP-VLO843J.arm.com (unknown [10.57.39.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8D68A3F719;
 Wed, 20 Jan 2021 16:00:18 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: Light "sys" LED on NanoPi R2S
Date: Thu, 21 Jan 2021 00:00:13 +0000
Message-Id: <f066be60aa99460a45d04113c5e507d6602186f1.1611187213.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_190028_935595_DA7C5233 
X-CRM114-Status: GOOD (  13.32  )
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Set NanoPi R2S's "sys" LED to be on by default. This matches the
behaviour of the stock FriendlyWRT image, and makes it much easier
to tell when the thing has finished booting.

Suitable triggers for the two network LEDs cannot realistically be
configured from DT, so leave them be.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index 1eecad724f04..5d794778aad1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -50,6 +50,7 @@
 		sys_led: led-1 {
 			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
 			label = "nanopi-r2s:red:sys";
+			default-state = "on";
 		};
 
 		wan_led: led-2 {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
