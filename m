Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C6E2C12002
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 02:57:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 10FA660249
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 02:57:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 10FA660249
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xhV+8mkvHiDMNjhwjm0ADPAL6gUvlFiRL9dChzCKwno=; b=G3VDPlHUmn0cxP
	cYYBallieFWUVFqHh5LC6KljDsZKoEPcPuU+iWrHcR0jJt/pamjxq2B825hRjmEk2BsrmAhZql6rG
	TU3G12Xilcr3Z/JZvl7PUNG5v566o8YCS4pfFAHq7/7DtR1YjbkRyPuoteRkSgM4Ne5VdZtvGCl+Y
	v95xJdIXZFhdGm80oA2sVT3TzMX2spJydxRB+GsCr6FEiw5C/jOhSBbF40K5IpxYcVbhOETNarZRp
	XC2Xt3eH0mP7an7egwyOWZGDmUkf7UCaisGUPFzdc92/ov4WTNsmNjQc/LlK0RtM8lVG/emSJ9SAu
	FANWaIWULBjYvgVwYyNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3rZ5-00Gwtr-7g; Thu, 15 Jul 2021 02:57:31 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3rYa-00GwlF-TM
 for linux-rockchip@lists.infradead.org; Thu, 15 Jul 2021 02:57:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626317820;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lwoHLx2eJfcqWlSuvHPH6Uv2QHfVsHItf+nTiFi6sqA=;
 b=bz1FXCkwBLrO1bXNjpszSWee9FrS3M75V0H9SJYVSt+9SOgCezfLUfqREvyrSvIXjT83ah
 V+stgxvz3rL8pf6iaoYR3GhkptO33vShoYej6i2vYlnv3fMkgoJCoXnQ3QaMgs1h9Tncl+
 8OaMZCJjoGS0lLUuH7TLsI7BAadj+eo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-418-MxUKuWkdNAaDGJFu6GEnjw-1; Wed, 14 Jul 2021 22:56:58 -0400
X-MC-Unique: MxUKuWkdNAaDGJFu6GEnjw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 89ABE1835AC3;
 Thu, 15 Jul 2021 02:56:57 +0000 (UTC)
Received: from dreyauc.ausil.us.com (ovpn-112-46.phx2.redhat.com [10.3.112.46])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E54B626E60;
 Thu, 15 Jul 2021 02:56:56 +0000 (UTC)
From: Dennis Gilmore <dgilmore@redhat.com>
To: linux-rockchip@lists.infradead.org
Cc: dgilmore@redhat.com, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 2/3] arm64: dts: rockchip: helios64: add SPI support
Date: Wed, 14 Jul 2021 21:56:30 -0500
Message-Id: <20210715025635.70452-3-dgilmore@redhat.com>
In-Reply-To: <20210715025635.70452-1-dgilmore@redhat.com>
References: <20210715025635.70452-1-dgilmore@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210714_195701_106209_BE8F331C 
X-CRM114-Status: GOOD (  11.45  )
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
