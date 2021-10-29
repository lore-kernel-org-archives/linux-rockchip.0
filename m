Return-Path: <SRS0=iXk1=PR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84737C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 00:53:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 51A6E60F02
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Oct 2021 00:53:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 51A6E60F02
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uGfiB4D5sn86R5MScI2NKLhc8RM14OnyEK2lkMPUT5M=; b=hMO60yMphFEK6o
	vVck91lgdCh8aANMWbWcuWI+ecFvkh/Ol3eSdVSon8oonqwxFad7exVkmKBHtqiya1k5xzkNREV9G
	U65SV7c/BTarGJbICADVIL8uClAe43M4zgDiQUVjwn0R1IjHYeKv89KyJFmD5lizA0vay5RsQcUAS
	qvbIfkqguHr5ch+GvUDtrWoJvU065R9uMirLWtzXFfPu1S9fQ52MxhDpu0jdjV9wJy99wpdE1h64v
	Y+dbOwokq8OSpd3X7IWMR6zkU7zy8ytUN8yXEG5gJsVOZ+VsXZI5LPmvpVvZn7C+/AOyOs0G+v9JL
	MGTRIZbUBxvt2ULydN4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgG9W-009R8w-UV; Fri, 29 Oct 2021 00:53:50 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgG9L-009R6q-6m
 for linux-rockchip@lists.infradead.org; Fri, 29 Oct 2021 00:53:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1635468817;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=eo6UYnZwUTssCdnmrv67GJ2sHUnck1SIMVJqaxKytiA=;
 b=X6txbNtlHd1GZNwIn5PXiiHTFVJxlKvDXUw1qmM2GHjnwkY8ks5S7lJZ4lm5NnmktNltvV
 BJFUD0qPxYnJnWrsSurUZSV8hEAmYsLF+358SgJyIJhMPSDHgrCAly73XeWqDccyeuP0rR
 qk8oGoJqJHtBKL0nMlBIuz3SXro/K34=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-259-YhhcfY9EPbeJ7J7o3OhQMw-1; Thu, 28 Oct 2021 20:53:34 -0400
X-MC-Unique: YhhcfY9EPbeJ7J7o3OhQMw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3649210A8E01;
 Fri, 29 Oct 2021 00:53:31 +0000 (UTC)
Received: from dreyauc.ausil.us.com (unknown [10.22.32.92])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 4D47A4180;
 Fri, 29 Oct 2021 00:53:27 +0000 (UTC)
From: Dennis Gilmore <dgilmore@redhat.com>
To: linux-rockchip@lists.infradead.org
Cc: dgilmore@redhat.com, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Florian Klink <flokli@flokli.de>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] arm64: dts: rockchip: helios64: add variables for pcie
 completion
Date: Thu, 28 Oct 2021 19:53:19 -0500
Message-Id: <20211029005323.144652-1-dgilmore@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_175339_370706_2B515B0F 
X-CRM114-Status: GOOD (  11.70  )
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

without ep-gpios defined u-boot does not initialise PCIe
rockchip_pcie pcie@f8000000: failed to find ep-gpios property

additionally set max-link-speed and pinctrl-names for completeness

with this patch and the ones from Florian Klink applied to the dts
file in u-boot sata drives show up in both u-boot and linux

Signed-off-by: Dennis Gilmore <dgilmore@redhat.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index 9c2b45012daa..1e4042a7fdc3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -534,7 +534,10 @@ &pcie_phy {
 };
 
 &pcie0 {
+	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
+	max-link-speed = <2>;
 	num-lanes = <2>;
+	pinctrl-names = "default";
 	status = "okay";
 
 	vpcie12v-supply = <&vcc12v_dcin>;
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
