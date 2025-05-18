Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00FB8C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCHUNhWZhfVqVw3mPEPEbZmnoOYFQ1nMuCH4/cMPCUk=; b=C9OtjyKjOmAKly
	7H0YPaKL8n4RwuyL2vWetn8koD6gPraTaDk8anx9Qf3AaOPiQ5PfjStmI4HhzDpL4UCBSam+V/3MJ
	M55uIpaTwNS2hvGXwJT9F8s54btDodqCr1QmWTg7b66LXl4SYfX5NCzFOA8U2SiItfuammi9BEuxw
	ZZ+DsUakVVPAGeLBYNadXhIWOuB5H0cAbJf0WAnPiEw3Ui+7hrFMlbML3DdDTXp000kRVUbsS8DFM
	o+VKV3SbMSkRUSTpH9lFjh1Gv9mYw1bojIkBTmYEl4aw2uc/oNVZp4PKC7nrycEr2ZcEnN7UweoAh
	j97wovtGRwB7dHREddPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmK0-00000007bmQ-3xMX;
	Sun, 18 May 2025 22:17:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGm8A-00000007aG7-1MUg;
	Sun, 18 May 2025 22:05:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=GBMtNI6cTtuuD6FKdLMsNoUStz5+7O3bDHN29nw5LRw=; b=BIDI9BIFqqrHzG9df7pynEaLxP
	gchll30OIePpoSQ0XgeGkB1/cF7YXTk6kioXpeBZfcxcC4pOWpE3BeCtdRDnAxENlyfDjQg2JdMlR
	KKFf0ulV3w+81HTR1eezkPFakVARPsUDNIElbIQhjjkOErBxIrqipPtzwuejnP51BlMKiCjxNArSk
	5O35CJbz4zb3uUuPKfmJrVbmW+5dtnIWcWVjYX0nB5RqF6Un/z6r2OJNC8OEW65pap25nlvzqi5SM
	/fE41RP0nOmHQ39EaGctpElz3D1fCUSDEyobqzfWB+r7zTUlvbmrWB5IpCr+wPVO667yHrE/8UgVa
	4+b0gyJQ==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uGm7z-0004gv-SL; Mon, 19 May 2025 00:05:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 3/6] arm64: dts: rockchip: remove a double-empty line from rk3576 core dtsi
Date: Mon, 19 May 2025 00:04:45 +0200
Message-ID: <20250518220449.2722673-4-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250518220449.2722673-1-heiko@sntech.de>
References: <20250518220449.2722673-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_150514_382470_492F9896 
X-CRM114-Status: GOOD (  10.68  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, ziyao@disroot.org, devicetree@vger.kernel.org, kever.yang@rock-chips.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Two empty lines between nodes, is one too many.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 0e0a37849874..b6e946e68b09 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -2000,7 +2000,6 @@ i2c5: i2c@2ac80000 {
 			status = "disabled";
 		};
 
-
 		i2c6: i2c@2ac90000 {
 			compatible = "rockchip,rk3576-i2c", "rockchip,rk3399-i2c";
 			reg = <0x0 0x2ac90000 0x0 0x1000>;
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
