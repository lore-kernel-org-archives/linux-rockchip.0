Return-Path: <SRS0=TxuA=EB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 329CEC4363A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2020 16:27:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A2BBC2224A
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Oct 2020 16:27:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Ag9oF6jY"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A2BBC2224A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=david-bauer.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MWfIitNxRty0UE1N9z1GVUuRYTXLsVHMqRGCK9sjYRM=; b=Ag9oF6jYCbgpsn9o3QaEiBJ6R0
	/okBIGXVqEVmf32Y0OVG1FYWKoMfEK+g3LSPk21AAQkeiywRFUUmeSJqHD3MT8t0Ik/EIxbGs6wHI
	1Nmun4o9WiFooAikUeQ4qAs9COnI9bKmk0aHch7+Bx2urakRHikOs9LBFiWEKxGpZK8sYrNLY561d
	uwWEXFO8n11A0X/GMdfxa1RpJHgNVT2B1vUxeMR6cShg+dv9YkpUR6GU7g5KP8+mZzl7mfJaE4aZk
	q+MnAuZXhYFqj+8rLoEqxCN6fikMpD/UKVEIvVqTEiJl1fVZ7RJDd835/vPoLZwYUK+N9JrZYEWgo
	vmV6+nHA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kX5La-0007tu-My; Mon, 26 Oct 2020 16:27:50 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kX5LW-0007sS-Ci; Mon, 26 Oct 2020 16:27:47 +0000
Received: from localhost.localdomain
 (p200300e53f0929002cfb59f77ff723ec.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f09:2900:2cfb:59f7:7ff7:23ec])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id F3C0522AE0;
 Mon, 26 Oct 2020 17:27:40 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: heiko@sntech.de, jbx6244@gmail.com, pgwipeout@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] rockchip: rk3328: fix NanoPi R2S GMAC clock name
Date: Mon, 26 Oct 2020 17:27:21 +0100
Message-Id: <20201026162721.70672-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.29.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201026_122746_542705_4180D156 
X-CRM114-Status: GOOD (  14.87  )
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
Cc: Tobias Waldvogel <tobias.waldvogel@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This commit fixes the name for the GMAC clock to gmac_clkin, as this is
the name of the clock provided by the rk3328-clk driver.

Without this commit, the GMAC will not work in TX direction.

Suggested-by: Tobias Waldvogel <tobias.waldvogel@gmail.com>
Signed-off-by: David Bauer <mail@david-bauer.net>
---
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index a7d98501a16d..b1e45c01a9b2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -20,7 +20,7 @@ chosen {
 	gmac_clk: gmac-clock {
 		compatible = "fixed-clock";
 		clock-frequency = <125000000>;
-		clock-output-names = "gmac_clk";
+		clock-output-names = "gmac_clkin";
 		#clock-cells = <0>;
 	};
 
-- 
2.29.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
