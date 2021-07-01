Return-Path: <SRS0=qNMI=LZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E80BEC11F66
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 00:43:03 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A09CE613B1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jul 2021 00:43:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A09CE613B1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=par8hUjd+mSMe/J84kbMiWguiGkpiHiN2w6b0QvTeNA=; b=DP8axzOQLX9y3Y
	iZyIObRbyf91ReG83O+RDik+ZDCrj2x1nC+44fELo8M65PBQFxTpyI3BvcdDtm4zGHNq2MeRt9+8L
	QJKifHU0vH0Mi1+nPnGTKRt7YszCAvwNqJmUI8dgvJv/sPWqx4/hhnhJCXnmg+6iLKYvSiDs9ReQP
	no0re/JcZh59yYJTK20A0FDSuhXxkm5cFxzfmg6VbYiLCwJUvLcHh99253+f+CZ1bI3v2xRCN1da2
	37BpF7lIb7gEtaBI26ZOKzsoAOcuMkpfviiPEo53vl3IsPo9asU+J5RfRVuC7rFVb9mJjm5VP8XHn
	Hjyv23vMZ5zjJxHsQsKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyknD-00FiJb-6U; Thu, 01 Jul 2021 00:42:59 +0000
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyknA-00FiIv-7U
 for linux-rockchip@lists.infradead.org; Thu, 01 Jul 2021 00:42:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1625100175;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5HtOhtY9A3lJk+S03M4q/MteJLZvObE+vhVxSQf8wa8=;
 b=Pve22WpC2whmTk7MO8OIB7zu4ZQlCyuf4MAZlsyCQV01o28AWoOsuTO+9Zexwe6l/ESSkt
 uQEMucDk107ch9ayPeLPFBR75yC3NQNYvwqjMuxc9+HcVIRDygmR8qlFO2Z1NCMLkN238T
 32b1XbV8PR88CsUb5BJYj9HbfZA6ZOE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-486-lksWBFYAM7-QN_dmwFYMUw-1; Wed, 30 Jun 2021 20:40:58 -0400
X-MC-Unique: lksWBFYAM7-QN_dmwFYMUw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 21AA3800D62;
 Thu,  1 Jul 2021 00:40:57 +0000 (UTC)
Received: from dreyauc.ausil.us (ovpn-113-50.rdu2.redhat.com [10.10.113.50])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id CBD6A604CC;
 Thu,  1 Jul 2021 00:40:55 +0000 (UTC)
From: Dennis Gilmore <dgilmore@redhat.com>
To: linux-rockchip@lists.infradead.org
Cc: dgilmore@redhat.com, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 2/4] arm64: dts: rockchip: helios64: set stdout-path
Date: Wed, 30 Jun 2021 19:40:37 -0500
Message-Id: <20210701004043.18585-2-dgilmore@redhat.com>
In-Reply-To: <20210701004043.18585-1-dgilmore@redhat.com>
References: <20210701004043.18585-1-dgilmore@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_174256_570480_472EC00A 
X-CRM114-Status: GOOD (  11.48  )
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

set the default output path to uart2

Signed-off-by: Dennis Gilmore <dgilmore@redhat.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
index aeedf098f67c..bdcf6472664c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
@@ -43,6 +43,10 @@ avdd_1v8_s0: avdd-1v8-s0 {
 		vin-supply = <&vcc3v3_sys_s3>;
 	};
 
+	chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
 	clkin_gmac: external-gmac-clock {
 		compatible = "fixed-clock";
 		clock-frequency = <125000000>;
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
