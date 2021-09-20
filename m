Return-Path: <SRS0=3gvV=OK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD13BC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 17:57:21 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8226F6115B
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Sep 2021 17:57:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8226F6115B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TjHk0Ma1XpAABZ+6GHojfScao4c/bm82rq8Na4mb7a8=; b=QPITscnWAZR6FH
	3lZMHz+NB4USaXpgI0Rhw1EizJ2zSRSL080BEWZNoi9MC11EWCVQ/okIKAcEpDnOL/NGiJKCwKAeU
	iJ7/hTvJjKrM2g5nu2efDarQmEfusNUUvtkfClGO3tEsO3Oqu+kd5+jYUs21NAru7eHOsCghbVxMg
	j80+piM/4f/foG9buyCf8dJGQe2YuOS6zUSYhBy8XEj5yitGX85FnaOFsqMC7Pc/kuejJNaQGeAD5
	stNhPGji1xDG4FlDL3it2IDJ/cNhBEFW8IhUpBv6REAr+3dYAunrSnti9DfgXr/CCyLfIDbMAUWrP
	VpfMbsEO4khjUXAffJIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSNXY-002hF9-Qm; Mon, 20 Sep 2021 17:57:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSNXC-002hBh-Lf; Mon, 20 Sep 2021 17:56:55 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B4B0361264;
 Mon, 20 Sep 2021 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632160613;
 bh=WosCvV1JmUK5ETxM63LC5LHc9UhJvmkbOb6SQ9HQRCY=;
 h=From:To:Cc:Subject:Date:From;
 b=Lp3JnVDw1ie0nEvoc6RjCG3ZSX8FmUH9p/imspF1stYQX8HxyIHinKZctWOAswonx
 YiM07jJiuAEwguX0rlonIvqyGRHPjDwOndVZZ7GA6aq3+fkEOHHieDzUOYXoUBpNEf
 T+aujHdp+VYjuxI3pQpw/An5IEAywA9OqGsLow3R/bkqbovuQSNxSrI5FtFZXzTJpx
 U3h8J9HwRn5dnGsmHq2ptSIbJv4zsPc73BnIvELmPDZae6+E1VQnlj/MI9940LHJ8V
 QiHAv+gxwpM4r3bNTYUzeTaB3tSOcJwBR+CrSBLYAp5t8Vj6tHyizdMwUGE1HR52JP
 Bw1bCeX2qSEyQ==
Received: by wens.tw (Postfix, from userid 1000)
 id 73B285FC6F; Tue, 21 Sep 2021 01:56:51 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: nanopi4: decrease Bluetooth UART baud
 rate
Date: Tue, 21 Sep 2021 01:56:46 +0800
Message-Id: <20210920175647.13008-1-wens@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_105654_774983_8D439608 
X-CRM114-Status: GOOD (  13.02  )
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

From: Chen-Yu Tsai <wens@csie.org>

The RK3399 does not seem to be able to properly generate the required
64 MHz clock for the UART to operate at 4MBd.

Drop the baud rate down to 3MBd, which can be used as the clock
controller is able to produce a 48 MHz clock.

Fixes: 3e2f0bb72be3 ("arm64: dts: rockchip: Add nanopi4 bluetooth")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 8c0ff6c96e03..45ff053b119d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -699,7 +699,7 @@ bluetooth {
 		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
-		max-speed = <4000000>;
+		max-speed = <3000000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_reg_on_h &bt_host_wake_l &bt_wake_l>;
 		vbat-supply = <&vcc3v3_sys>;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
