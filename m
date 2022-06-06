Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0F5ACCA473
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 17:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4IE9gl0Wr6egtH2TaWuLmKPOAd8m2XbYjuPCOs+nY9A=; b=avwiWGmh+Od3KB
	CCVaCPGarUiptp/pYDas1s3eKz/7bhjQUdsb4LoA94A0QT243osAQ6ou0niUxkeO9IirKLI0FNI/8
	hAHv5RCgnxomh6a5wlyTOZySIAwO4VxEAOIcDpNyWDPTaqPnPK1tOBK+/XB0rvhqTYIYOR5ZrZTSl
	4OP/8YYxD4l46Dvf5Bs8RLLPJeK2zPwyYVK0m94QGYhQBKWftEgjOJ6jgmPZ4NQXYdHjHbXXoiiXT
	uCpCMcf6FvCUbm70v9MvZ0vV6caNmuRHKQiIdmdhcVpuQFbaMqzZ25Rkhn1dUQUvcQU2fkJ0+vvu8
	VzxLaM0zzYKatMA6ifCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDU-002Ac5-NV; Mon, 06 Jun 2022 17:08:36 +0000
Received: from mxout3.routing.net ([2a03:2900:1:a::8])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDQ-002AYU-Rb
	for linux-rockchip@lists.infradead.org; Mon, 06 Jun 2022 17:08:34 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout3.routing.net (Postfix) with ESMTP id 9DF1E604E4;
	Mon,  6 Jun 2022 17:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1654535294;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vRerv6C2zCJWPtOnuZDa03OrSoI9ro8LrRb+tA/s5g4=;
	b=sABYE3sneoCZIYpY522rKFtGCkOPpON/Gn9nif/HKHkjY0/GOjmVOCI5QhhN0yMStg5Te3
	9zocvd6JcmqbAEd6eqzxB6UYNrc95U/RcwYZyc5r15oLWpAEOFy1aqG0B3qVUUhlZjSwG+
	IfGZ5cSrC624FcrfSpeaa+B22igdu4o=
Received: from frank-G5.. (fttx-pool-217.61.151.134.bambit.de [217.61.151.134])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 2FC91100274;
	Mon,  6 Jun 2022 17:08:14 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 4/5] arm64: dts: rockchip: configure thermal shutdown for BPI-R2-Pro
Date: Mon,  6 Jun 2022 19:08:02 +0200
Message-Id: <20220606170803.478082-5-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220606170803.478082-1-linux@fw-web.de>
References: <20220606170803.478082-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 83ac6d59-5b44-4a64-bbda-8324a0a9a0c1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_100833_070727_EFCD8371 
X-CRM114-Status: UNSURE (   7.56  )
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

From: Frank Wunderlich <frank-w@public-files.de>

Add thermal shutdown configuration for use of GPU.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v2: new Patch as heiko suggested splitting it from gpu dts patch
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 57ddb7608976..75ddca1561e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -588,6 +588,8 @@ &spi3 {
 };
 
 &tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
 	status = "okay";
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
