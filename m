Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B4E7C43334
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 17:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRt0ECMQejDhwUrZy5nVdBzg0TG1PjCWzmJHYdYk83Y=; b=zrFTGH2e3hpYPx
	4UqJ33spig2k3f3cFdHmqbrkIKPyxj1wIoj3bn0jmQuxW8DDNt5YyrkIokuY7NQh9SCJbIjttseFD
	jyvOwWEVACkS2QHFFMt5YRw/UBYAU+xdu4L7jSfAXwDdbmNQHMTy/IBx8GYYSl5gyV263NJJR56uO
	amTJ6UWqQFOBL9RLr6W50Sps6+Xhy+kC7FXbqtM/VzA2gUTclGizrSQBuO/0dIEO8MHNC8QTUtVBS
	rk475Kc/C+j4qSoTk1ebOmEblXoxyQwyU87bF6U0W2YZlJvHncuknX4fR5mOlaUSw4Y6gY61amX+i
	hVfzr61EG8/gQnF+xyrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDR-002Aal-Rp; Mon, 06 Jun 2022 17:08:33 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyGDO-002AYX-Ar
	for linux-rockchip@lists.infradead.org; Mon, 06 Jun 2022 17:08:31 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
	by mxout4.routing.net (Postfix) with ESMTP id 3FBC3100829;
	Mon,  6 Jun 2022 17:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
	s=20200217; t=1654535293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=3wuVSsd1Hl7QmHFoqYqgbtX3GlonApyXjf8ww2OyDio=;
	b=Mwt48Sn0zqXjhnddWtfJWgxi3CiyQanDpb6EzPhDipiDaFVJRSyTx/wECC9eTXmxUYe/kj
	/YU/syoSWVWVwhQvF1j1AfnxtzpbZx867Lw8CxQVhdnD4S98ZNfjkeQtfcnX01z53bhO88
	8cpigHyhXB6FdTDvGzzyN8IF14ilAr0=
Received: from frank-G5.. (fttx-pool-217.61.151.134.bambit.de [217.61.151.134])
	by mxbox2.masterlogin.de (Postfix) with ESMTPSA id C857F1007DE;
	Mon,  6 Jun 2022 17:08:12 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 1/5] arm64: dts: rockchip: set display regulators to always-on on BPI-R2-Pro
Date: Mon,  6 Jun 2022 19:07:59 +0200
Message-Id: <20220606170803.478082-2-linux@fw-web.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220606170803.478082-1-linux@fw-web.de>
References: <20220606170803.478082-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 1d65b9ac-23e4-4d70-9cef-91b73834202b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_100830_587252_DA5B5348 
X-CRM114-Status: UNSURE (   8.43  )
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

The gpu power supply needs to stay always on until the issues with power-
domains not being regulator aware is resolved. Otherwise we run into
issues where the gpu-regulator gets shut down and we start getting mmu
faults.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
v2: Add description why always-on is required
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 7e5b3947e28f..5bb49bc2630f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -215,6 +215,7 @@ regulator-state-mem {
 
 			vdd_gpu: DCDC_REG2 {
 				regulator-name = "vdd_gpu";
+				regulator-always-on;
 				regulator-init-microvolt = <900000>;
 				regulator-initial-mode = <0x2>;
 				regulator-min-microvolt = <500000>;
@@ -264,6 +265,7 @@ regulator-state-mem {
 
 			vdda0v9_image: LDO_REG1 {
 				regulator-name = "vdda0v9_image";
+				regulator-always-on;
 				regulator-min-microvolt = <900000>;
 				regulator-max-microvolt = <900000>;
 
@@ -359,6 +361,7 @@ regulator-state-mem {
 
 			vcca1v8_image: LDO_REG9 {
 				regulator-name = "vcca1v8_image";
+				regulator-always-on;
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
