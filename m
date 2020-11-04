Return-Path: <SRS0=nVt2=EK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D12CC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 16:24:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ACDD9206A5
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2020 16:24:40 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XrptuPMv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ACDD9206A5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fivetechno.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=1j/x6W7e4zSEBLepsA7i5LwcYZEPbDIO07tbRVbfD4I=; b=XrptuPMv+juTe+JCZKWnQ+CWtz
	0YStEZbENFqhO6jiX8gY0tnEb7BUmjsVAjLDFsohk+jLnp2XHyHIJpxfsZySpQEzHR7DMh3eFzcGW
	2/KcSuD1Kum/7gHdb2767Jsv9amBGTYjvY5cvfmr81Uo5w1XFeWwq7vzr4CZBPydT9nrXvM4epHD9
	U7Vs8KqlPv0N4CX+43xdLAi1juGmn23upNWtUht1GISXQP6zVzBQKnmwyp1OOBvt18WMqBHRFKQeu
	X1a75ou9h6m8vn2vePmNy4rdWxLNnlhEf3ADVaMQ2fyuUq2Iy5W9Nbhu6IQpe+D2Pnl7EvunRriKh
	hMRpXsVA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaLaM-0003Wd-I0; Wed, 04 Nov 2020 16:24:34 +0000
Received: from wp126.webpack.hosteurope.de ([80.237.132.133])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaLaJ-0003VR-OQ; Wed, 04 Nov 2020 16:24:32 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1kaLaF-0007tB-SY; Wed, 04 Nov 2020 17:24:27 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from roc (p5098d998.dip0.t-ipconnect.de [80.152.217.152])
 (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 0A4GOQQo020573
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
 Wed, 4 Nov 2020 17:24:26 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: Assign a fixed index to mmc devices on
 rk3399 boards.
Date: Wed,  4 Nov 2020 17:23:55 +0100
Message-Id: <20201104162356.1251-1-m.reichl@fivetechno.de>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de; m.reichll@fivetechno.de; 1604507071;
 621b1f40; 
X-HE-SMSGID: 1kaLaF-0007tB-SY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_112431_922117_347ACC58 
X-CRM114-Status: GOOD (  11.46  )
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
Cc: devicetree@vger.kernel.org, dianders@chromium.org,
 linux-kernel@vger.kernel.org, Markus Reichl <m.reichl@fivetechno.de>,
 wens@kernel.org, robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Recently introduced async probe on mmc devices can shuffle block IDs.
Pin them to fixed values to ease booting in environments where UUIDs
are not practical. Use newly introduced aliases for mmcblk devices from [1].

[1]
https://patchwork.kernel.org/patch/11747669/

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index ada724b12f01..7a9a7aca86c6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -29,6 +29,9 @@ aliases {
 		i2c6 = &i2c6;
 		i2c7 = &i2c7;
 		i2c8 = &i2c8;
+		mmc0 = &sdio0;
+		mmc1 = &sdmmc;
+		mmc2 = &sdhci;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
