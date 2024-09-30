Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C6C8CEB2C1
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 21:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6ZUvU+/+MrhODbq0HYOFG9QQcUTzy3bmvEi2jltsck=; b=TJJlnabKfnltSI
	X4dstZ6W30mqDqHbBHBVKnUtPRMFB15C330+kp56bPo+RUVIwLu88Qjo0OY5RvDt6Fy1Ve1CMCK0q
	rl201oSWp9P0Ifneu78SqekHCiPcPRV1H4qe7Ivm0+cOLAK4GGc0sLiOpjN4NkeRwrMuiKcBNT9vA
	z+eQgJSgJEhTWCHUDBWu1kAA/b3V+/SYezlOTq/hRa6fftEgvnmz1+NtDITxb4NOK/mxNRtIIIPvr
	nKWpJyP5svx6+JlyBe6KGs5cevvZx6KWxVjz6H8gvNrf5B+fXdbvY1z0Fgv4cY1gRjnuPehIcfRpe
	Z/tY2MGKDD14UXnFlxPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svNdZ-00000000rRm-1kCm;
	Mon, 30 Sep 2024 21:08:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWN-00000000qO2-2SGw;
	Mon, 30 Sep 2024 21:01:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6x1A3cijKY82zaSwQJkTHfXByMjS6Voq88tgi5Toc2k=; b=oEwhmt2WnsY/aKcijxwlXJc/Tq
	xe26ob+scpE0V/YtUpim/v3tBt4O9POK8ZBFIfG4bJ9aCBUg1LMYRKZhhPwA3ZP078nZ5Y1V30o+/
	TPtxZRIHzw7pvSVZiWBQf9iHMIR0KhvbJdf3/cuTZ9VdQqiLq3Yv8BCf2VlNsb/A7Mqz+TzNCh7II
	HgXRM2a9lnUu6SeMR5df6jxw4juXUx+VZku+VzVlfaKQFZaaga/Un+oR/yCfXt3AimMz0aqo50sdr
	fFFl/ETTUaUd0UMliDL9VYrjwJTEseyr8yjscl1ZSx3kUSADYkkRUUVdLu5uSq0enHzY0SegwOf+h
	/8zkCaYA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svNWJ-00000000ctR-1jyA;
	Mon, 30 Sep 2024 21:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6x1A3cijKY82zaSwQJkTHfXByMjS6Voq88tgi5Toc2k=; b=A7dLgPVr7xh/QmnF71cyOuH6cV
	Ba3mZ0jBUqbfEPkve6F7eApme6MwwnaziUhlCkx1OWUrHyXG4Kc+E9mAX8V1cKSjg93A/A7fv8cXy
	dVOW1cji1cgw+ItvcKBf+siACas5EL5mhcjaa6qai3kShXwClR7TdjxkM8AM4Un7nUWkb6qEmxnc7
	B4yKeeX2UXB+3j5hkDCjlPNkq3btpVuJAi+plJZKLU3eJN2WbbHpdkmaIuWhDaFHOvfpobg1oWPSn
	mhkpDEFy3FFkYBNwRxjbO08P3yvhSqCVeSa5fgT6UsLcQH62Hzblzj62ocz5EbVCLSGA1GQ/33Igf
	/YE+XKCw==;
Received: from i5e861925.versanet.de ([94.134.25.37] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svNWC-00087h-O8; Mon, 30 Sep 2024 23:01:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Elon Zhang <zhangzj@rock-chips.com>
Subject: [PATCH 4/8] arm64: dts: rockchip: Drop regulator-init-microvolt from rk3588-toybrick-x0
Date: Mon, 30 Sep 2024 23:01:08 +0200
Message-ID: <20240930210112.1993625-5-heiko@sntech.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240930210112.1993625-1-heiko@sntech.de>
References: <20240930210112.1993625-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_220128_137963_4254AB2E 
X-CRM114-Status: GOOD (  10.31  )
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

regulator-init-microvolt is not part of any regulator binding and is
only used in the Rockchip vendor kernel. So drop it.

Fixes: 8ffe365f8dc7 ("arm64: dts: rockchip: Add devicetree support for TB-RK3588X board")
Cc: Elon Zhang <zhangzj@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
index d0021524e7f9..328dcb894ccb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-toybrick-x0.dts
@@ -428,7 +428,6 @@ vdd_vdenc_s0: vdd_vdenc_mem_s0: dcdc-reg4 {
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
-				regulator-init-microvolt = <750000>;
 				regulator-ramp-delay = <12500>;
 
 				regulator-state-mem {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
