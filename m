Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A1AACCFA18
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Nov 2025 07:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HMUKIrozHn37CvacLi1riAoy/YgqGnHaB2ZNVS26oNA=; b=uun1MeLSixUcwB
	5iYHBxyYKMy+qZUogpmQiOq3O/o8T9E5tzSReHReoHxkdVPHKXH7s6jKX0kvAk0dOEuGddCM7FomX
	cFLSnDYjoJ+yrpgWLrMlh6whkiuvvQ6fF2voMDEBIzJgTLsVguwIi151JINgHMrQbDrZ78GPqXIpT
	hKCCz0RDGr3LLn1pFS19pqwTBV+orQpTWZqwpvLf3GFb2f5WESAQbNso0RXM8SFx55Qsh58MfVh7Q
	24emYzJ8Fy4s1mXZUyTRgSI51PwUX4LNFFJQzvtj82/JtHh9XVIzr2g5xW3z3CofeaWzT4bw9dXku
	VrNSAWN9a5AcL/f4tnmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIiQu-00000006eab-1IwR;
	Tue, 11 Nov 2025 07:04:52 +0000
Received: from mail-m32105.qiye.163.com ([220.197.32.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIiQq-00000006ea7-2XOj
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Nov 2025 07:04:50 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29280e1b6;
	Tue, 11 Nov 2025 15:04:42 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Remove sdmmc max-frequency on RK3588S EVB1 board
Date: Tue, 11 Nov 2025 15:04:33 +0800
Message-Id: <1762844673-123776-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9a71bb267809cckunm6cc8347214b1800
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxhOTFZJSxhIHx5MQ08YSU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=BwsfGQXPZFidhoWLwMBUhm/fn8obt1X46pNzKup3H6hk+U2IFXzRAaWDOiumkoGQYQnTm0FclOeeYA23bwatWkOlXHbDQ5ok0FSOg3Sq9sT25GARDxxsVOL02uCzy1tCMfnDe1IUI+psGEAzyGwbNRcJ0nYOlkYEwdfBBW8YQ9U=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=stOrcRv4zuI7IaasjizUU9fhsvsNkIPrtr3f7dnvkds=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_230449_157996_C63A0777 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

sdmmc on RK3588S EVB1 could work fine under 200Mhz, no need to limit it
to 150Mhz.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
index 0df3e80f2..f820505 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
@@ -465,7 +465,6 @@
 	cap-sd-highspeed;
 	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
-	max-frequency = <150000000>;
 	no-mmc;
 	no-sdio;
 	sd-uhs-sdr104;
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
