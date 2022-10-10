Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2D4EC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Oct 2022 19:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UqLJeGHe6jgbxKhCYiAR4uosc/YZKDUt1rAGqUGBBAo=; b=ZLNqBjgQmA7QVB
	4iFDe/du7MMZxqgLpE8BAzIh3GH3xFHr2H6LzNxiY0jZnrUciJqrPZL57jolT2JaMK1wDLCPwIJb/
	4dwGkK95qd40MmSmcxAj3D/bq2hK/9T1z/ToWH31XmoXc3S3uH7xRfTHPviaJUww43yG1ueatmqkl
	C4zlrkHtP0EGXTGC2vlfH19yvi85Nu+38db4RG8PlW7Ac7Zumnnj8B89lGRMBkooOJLcVNM5Qi2p/
	d9npVbID5COvTcYtymKurmvbbodUvaVwTB2amWolBuuX5xpJgxfH6LjqaHJqGxZZ8YlU4UffapSgn
	Cc8/INS+93TnZVUnTP4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohy35-001tLm-6f; Mon, 10 Oct 2022 19:02:47 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohy2x-001tHN-NX
	for linux-rockchip@lists.infradead.org; Mon, 10 Oct 2022 19:02:46 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1665428556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Kz102WSy9QNRViVjrSA+WHBfEbQVFeWsqGE1f0e3+fc=;
	b=iCmOPkiL7xO4ibOCsekxh8CdhzJJuPVBN+e+O0gCsjKKk5xr+t+dOEoqAOZ8PJu7CyTsZM
	YnTuOJoOnkYYbol4WVSocCxah7UHKpbyCOqn8BwCMi5d+Xj8h3n+eT+J+CaBx0dt+VxYaX
	76mACyFNPnND1TAhwpi3B65MO3qcBsvl6LlNnIRGpZTyvbuUV6+MnC33r8RQos2hRvUvhw
	Dz+Rr695VyH2UN6yAR0bbJpO8HUm3UBdNCIdBabyZuVo1QrV1/8P2q1OG9Finmg/wzcf5V
	wKQPWTeRaQSgZjFx8439rbSyvWJCnFK1s3xXrIkVkG99gPXbH21/r0lYebGVZQ==
To: pgwipeout@gmail.com
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCH 3/3] arm64: dts: rockchip: remove i2c5
Date: Mon, 10 Oct 2022 22:01:42 +0300
Message-Id: <20221010190142.18340-4-f.kardame@manjaro.org>
In-Reply-To: <20221010190142.18340-1-f.kardame@manjaro.org>
References: <20221010190142.18340-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_120239_932121_672EBAC3 
X-CRM114-Status: UNSURE (   6.14  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

i2c5 is owned by hdmi port

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index 72809246c..9fd262334 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -436,10 +436,6 @@ &i2c3 {
 	status = "okay";
 };
 
-&i2c5 {
-	status = "okay";
-};
-
 &mdio1 {
 	rgmii_phy1: ethernet-phy@0 {
 		compatible = "ethernet-phy-ieee802.3-c22";
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
