Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F29C11F66
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 00:43:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B04661107
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 00:43:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3B04661107
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhV+8mkvHiDMNjhwjm0ADPAL6gUvlFiRL9dChzCKwno=; b=siu4CEf1Bz45Mc
	Alx0whwYlo9WnpLDSS4Dih7sUzQ5l4FTeIa8lPrczzlSXxI7WQn+0loO5oRK9hO24cQ8s+zlbktIp
	vYS2bZVxU91Zwhc2+c5Vr4BPIkf+7gGElhnKp4v7xFu+BivklFx0WwTC4j9XaHXbDegmc2crZcEWc
	O37srTSj/X+mp/GrD6VAzmHNFstLw4Je3GxQSPFktYHfso46reo1rvzQWAYpZjaY1N6oP74+YQkCp
	jvXDQfM1BE6SPT/LC2N4lX6D5YoZ4KK0fFar9hVdzJn5uy0UuOU7ZURpuy1tb3k5l5wldOeTIG4bQ
	30MJZMKLBMQZsy7yoeDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyknR-00FiOD-My; Thu, 01 Jul 2021 00:43:13 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyknP-00FiN9-4W
 for linux-rockchip@lists.infradead.org; Thu, 01 Jul 2021 00:43:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625100190;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lwoHLx2eJfcqWlSuvHPH6Uv2QHfVsHItf+nTiFi6sqA=;
 b=AkWJ/67sDH2/D2AcQdB0i7SqzhAjxwGL61JDcn1w0Iyle7YNc/QIa57iHOtH8pjd9vsibG
 RFwfhwyATKClqp50WWJvpteLBE6/bPHLW5DsC4GGgkVKGznmkPJ7ulcTx7CI/LykoT5Nok
 o2teKrI1/CPZLTPyp2W1AKBUNyb2ksA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-402-CGqjlbC4P_Wl2cEPPwvDqA-1; Wed, 30 Jun 2021 20:41:06 -0400
X-MC-Unique: CGqjlbC4P_Wl2cEPPwvDqA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA01B1005E53;
 Thu,  1 Jul 2021 00:41:04 +0000 (UTC)
Received: from dreyauc.ausil.us (ovpn-113-50.rdu2.redhat.com [10.10.113.50])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B0359604CC;
 Thu,  1 Jul 2021 00:41:01 +0000 (UTC)
From: Dennis Gilmore <dgilmore@redhat.com>
To: linux-rockchip@lists.infradead.org
Cc: dgilmore@redhat.com, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 3/4] arm64: dts: rockchip: helios64: add SPI support
Date: Wed, 30 Jun 2021 19:40:38 -0500
Message-Id: <20210701004043.18585-3-dgilmore@redhat.com>
In-Reply-To: <20210701004043.18585-1-dgilmore@redhat.com>
References: <20210701004043.18585-1-dgilmore@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_174311_415561_7DC5FFBB 
X-CRM114-Status: GOOD (  12.50  )
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

add SPI support for the helios64, u-boot can live in spi1, spi2 is user
accessible, spi5 is for the sata controller rom.
https://wiki.kobol.io/helios64/spi/

Signed-off-by: Dennis Gilmore <dgilmore@redhat.com>
---
 .../dts/rockchip/rk3399-kobol-helios64.dts    | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index bdcf6472664c..09c5a6fa11ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -21,6 +21,9 @@ / {
 	aliases {
 		mmc0 = &sdmmc;
 		mmc1 = &sdhci;
+		spi1 = &spi1;
+		spi2 = &spi2;
+		spi5 = &spi5;
 	};
 
 	avdd_0v9_s0: avdd-0v9-s0 {
@@ -473,6 +476,27 @@ &sdmmc {
 	status = "okay";
 };
 
+&spi1 {
+	status = "okay";
+
+	spiflash: flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0x0>;
+		spi-max-frequency = <25000000>;
+		status = "okay";
+		m25p,fast-read;
+	};
+};
+
+/* UEXT connector */
+&spi2 {
+	status = "okay";
+};
+
+&spi5 {
+	status = "okay";
+};
+
 &tcphy1 {
 	/* phy for &usbdrd_dwc3_1 */
 	status = "okay";
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
