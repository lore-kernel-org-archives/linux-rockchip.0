Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF8AEC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 10:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4s2hHkkZLSdpojYdinc7Xe3zZJ0AaXL1EC2EUhhzwgc=; b=prd/YqZfhEJMP0
	29TE9CuXtJKHGSCWMw+aQtAhVMGpeebeaHQDTVUMxreFl1hPwvJOXxlEv5/R/at7JyG5UD+atAizw
	HPz79Yyxj+Hez3V0B1lbiEzIX4rKryoIxBQhLpCi+1sibYc4pm5knPy6iEO0KBcC8c+fVKqJLeTfE
	skUS8PP1SH5vgWbzKSfe3+egDcRtsd0wGZ07mEMH9RJhrFhEdPiijCcf8ryDzYplQinnwNGc6x1Ya
	lDZhkPExNAn44uVfyqhfkOxwJ7akCj7Mle00ofgmAYLnvVLDHtwMfUpAu+A8Ep8Izpbk17NWw9Lah
	pxoxijJL7J4LhxfbHARA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nabF6-008X5Y-Fl; Sat, 02 Apr 2022 10:44:28 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nabEi-008Wwd-DQ; Sat, 02 Apr 2022 10:44:05 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout4.routing.net (Postfix) with ESMTP id 281A510129B;
 Sat,  2 Apr 2022 10:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1648896232;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fiF2czy3fSgLbpJlx4zoA+bi17AwyEhQirvjS4BVRRE=;
 b=EKhywowqgD8mhbptufDTUWiLypYU+Up40Z25D6W6lbBrFkhNUFNgP5Mvmda4z9KkHL4Gj3
 hnbck8gqsbX+4/EiTU1urqbyily/JilKUY72EtHQKGFjzcAld3Njo7TUQkrHsS0Npv5SGw
 AQ1Gxmyw//AGNeGDAktw08NnTCcMljc=
Received: from localhost.localdomain (fttx-pool-80.245.79.107.bambit.de
 [80.245.79.107])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 651E840684;
 Sat,  2 Apr 2022 10:43:51 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] arm64: dts: rockchip: Change io-domains of bpi-r2-pro
Date: Sat,  2 Apr 2022 12:43:11 +0200
Message-Id: <20220402104313.100333-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220402104313.100333-1-linux@fw-web.de>
References: <20220402104313.100333-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: fa3152c6-9b76-4e6a-a150-d8d5c2c20cd0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_034404_619254_2719D9C4 
X-CRM114-Status: GOOD (  11.42  )
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

From: Frank Wunderlich <frank-w@public-files.de>

New Hardware revision has different io domain settings than the first
board.

First version was not sold, so the setting can be savely overridden.

Fixes: f901aaadaa2a ("arm64: dts: rockchip: Add Bananapi R2 Pro")
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index a01886b467ed..a0388ff85ddf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -345,9 +345,9 @@ &pmu_io_domains {
 	pmuio2-supply = <&vcc3v3_pmu>;
 	vccio1-supply = <&vccio_acodec>;
 	vccio3-supply = <&vccio_sd>;
-	vccio4-supply = <&vcc_1v8>;
+	vccio4-supply = <&vcc_3v3>;
 	vccio5-supply = <&vcc_3v3>;
-	vccio6-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_1v8>;
 	vccio7-supply = <&vcc_3v3>;
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
