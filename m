Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EDB5C43327
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 22:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwvPb1CsuccDdtr/sMozTTT7sPO1ZyTg2vnZTWeVlp4=; b=mNP7z/URxRZKP0
	XYJ8hgIyrZqaj7yezxuDGxfir0v1/wE4HlYw5nWtqWpTU5pLWbIMm6pc5aVvJ6N0d9/C0Ax+2g8Nu
	+xqWbToGdqIDhvjjKRWej8FwZIfJlCawTTKcUQ1g8JTJO6j5t2YSsWPIYpc3/0HxGbTewwA48EUsn
	UcnQ65/L9CjKP54a8sQjPp+RKYaaMuefzgM00CS6QdWml+AfCrXMojHEWi23cXtu7yfk7xyciLkzW
	IUelgNw4MMhZIFBNdKtsr0iLcuY+UVFgA3Ar4eeLjSduj80Sib0ZAavCbMbUbR/EM2K/f9VJzzO5Y
	33pM0jtx9KeL9iaFi53A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfPaD-00000005cTj-1dXx;
	Thu, 02 Jul 2026 22:08:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfPa4-00000005cHU-3b1V;
	Thu, 02 Jul 2026 22:08:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 369FF43F14;
	Thu,  2 Jul 2026 22:08:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02DF4C2BCFB;
	Thu,  2 Jul 2026 22:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783030104;
	bh=7kThHoU7NfVa2SrQo4njFM/R/gQef5vJsZCKo0knqPU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=JBJxSZPG0d7reF9bn82RBCFkm1ikQdVMZMIUQ/C9NxWs3Y9AZevqwmDhCDEy3U6r7
	 NHgBQx+wk5AqZLveOppc5dwYSsQQhKhbMgwHRsnr4pLxMbO49pQ4Dk3yk5I2pSeiBp
	 MIjs4nD6pEXgwWo15Q/FASJBqPAxyMSiGQw4gwzYYOuLIf39iIe8Iu6GavCUCY2Ry6
	 opn0SiqONkMpCyeucS0CJ+Jb584DutugtajZSsPnqTQyJ9pCEPOjTq/CNKJGRTm29h
	 qzdWoB4nSPfNOO2ZEivAUFqEiKEpsf+hFmS8Q+pCwgIa6+Q+1t4Ki1e1drKWP6Gb98
	 V81TjYhFRQ6vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E003CC43458;
	Thu,  2 Jul 2026 22:08:23 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Fri, 03 Jul 2026 00:07:20 +0200
Subject: [PATCH 05/12] arm64: dts: rockchip: rk3588s-nanopi: remove pull up
 on rtc int pin
MIME-Version: 1.0
Message-Id: <20260703-nanopi-m6-v1-5-8344a1559519@gmail.com>
References: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
In-Reply-To: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783030102; l=834;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=8bK9qjPaJeH5DZSNwTRXo86eIiea6f1QVJhbeEdJZoQ=;
 b=M5GvjoFyQM7vUcv4AXzMBIyLW12TYwl8mVGascoP4M00Q2BaUYDMtdimfvixcMc8xzO7TkPGJ
 7PmAFnjndqCD/ZRy81pvbPOYbFrDWpYQbypzevbLnAgFXq/TWJRJWUI
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
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
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Joachim Eastwood <joachim.eastwood@gmail.com>

All boards in the RK3588S NanoPi familiy has a pull on the PCB for the
RTC interrupt pin. So there is no need to enable the pull-up in the SoC.

Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
index a8f32b994b10..f3a240b48a2a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
@@ -331,7 +331,7 @@ hdmi0_tx_on_h: hdmi0-tx-on-h {
 
 	hym8563 {
 		rtc_int: rtc-int {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
