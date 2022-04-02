Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74410C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 11:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4s2hHkkZLSdpojYdinc7Xe3zZJ0AaXL1EC2EUhhzwgc=; b=pJEVDnHlVStQE9
	G7xGY/NXB6GcIjjs0P0smrKWsQObOF9Kg11N7DtH5zK5+/ww1rftz5e6LWXTuEYPQKKoqZO0OUOtC
	vbLVpy4xOlOTi13qAYhydJ3F8k2dOSz+/47nq4nB63wPymEWLrD70tf5s3eR/OPgEfMZvRKFRzY5p
	lsACA7r4rlZfGKpfare8FDNhw9l4K1NH2hg/ZYTyzNMbiyfUYZmuqGkwkXwTT3Um3Ni6X34aKXeAY
	tWQ60z73jo0QpbM/jTRPIivtqRFOy/b29rBQuoazlQQeAg+5Lb/plu8t3IXIjF5pQaViF0yn8VT7+
	Rnyrh8FIqR59cLvWM9mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nabVO-008Ygr-VI; Sat, 02 Apr 2022 11:01:19 +0000
Received: from mxout2.routing.net ([2a03:2900:1:a::b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nabV5-008YdO-VO; Sat, 02 Apr 2022 11:01:01 +0000
Received: from mxbox3.masterlogin.de (unknown [192.168.10.78])
 by mxout2.routing.net (Postfix) with ESMTP id 2B1FF604EA;
 Sat,  2 Apr 2022 11:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1648897258;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fiF2czy3fSgLbpJlx4zoA+bi17AwyEhQirvjS4BVRRE=;
 b=iP1O0hVPiTthtWFeD4dE15aC9ANGrl9odXgMAEBpwJgF6bD2qPpJF5905I4vY8lXL874Ob
 Z29u7xYCg/QXUArxsa/DvjMICUAL7hgqfd28Z19Lc9DRwnwgcWXPZw81PiExiawh+QUD49
 B4M1pJ0kRAo2y51O6x4K8Rem50wRnqk=
Received: from localhost.localdomain (fttx-pool-80.245.79.107.bambit.de
 [80.245.79.107])
 by mxbox3.masterlogin.de (Postfix) with ESMTPSA id 4CBEC36062B;
 Sat,  2 Apr 2022 11:00:57 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] arm64: dts: rockchip: Change io-domains of bpi-r2-pro
Date: Sat,  2 Apr 2022 13:00:44 +0200
Message-Id: <20220402110045.104031-2-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220402110045.104031-1-linux@fw-web.de>
References: <20220402110045.104031-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 6d6b9b5d-3d03-4486-aed8-edb06c31f801
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_040100_177720_C02E0633 
X-CRM114-Status: GOOD (  11.52  )
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
