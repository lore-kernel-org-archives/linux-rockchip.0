Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87415C4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 15:31:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 159F5205F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 15:31:21 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="x23I+l2Q";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TQ6YksiZ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 159F5205F4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aE1uTQlB4dk5p9/bUtsD5nvR7JrGDJXbvP9wv4F1ZKI=; b=x23I+l2QaPeAYNgh1fxzAurB3
	QjOFUQhBqj16/RePwVYUcdLuXkvmgvQJmYQAQYb5epwVlv0WvjuacH9QG9GCs/PliUoNU7mDF7RYw
	8uONuYUvFMNrGDJOkkvhpJTjSNe2bqT3lsl/0Il7uXyRFirFZDOiUxOiwFarwZBU0i9zzUWYr8w3h
	LpMer1kXqSZqIsA10vCZvQcjtGv/rb1BkYfQx4fBFTlVsQL/IzxF3AuVpUTzgBsWnBtYJHDO/yxX1
	56efJlMxvuHI1xFla8xqwcoM0bFBECHvKTR/b+G3wJRxKeqTEo/lI1IfZNbBOL+Js4eC0xHJ0iTz6
	d76+Tz4zw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kegTM-0002lq-4l; Mon, 16 Nov 2020 15:31:16 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kegHx-0005uU-Du; Mon, 16 Nov 2020 15:19:36 +0000
Received: by mail-qt1-f196.google.com with SMTP id i12so13089259qtj.0;
 Mon, 16 Nov 2020 07:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=96RQbd3xbCoXq8nQaSvV25c7fBVmlkmtbILb9lLEVCc=;
 b=TQ6YksiZV6nNmzn4KO6jK2ge1GzMrVa1svfsXapdp9thN3ZUITDdwUlTzSQ0dpPfYh
 geJEUW344+HQEFlZGBdjxMnMLhik6/mV6ADVcbT3dcFj5ZmuPJMqf99UPMdFtOQ5SRCu
 l0mpSd8SbWCQzEWYmoVQHhDJagRUKY6VJx2b/7PyNT0y3Sc1k3nXvUwRGgSI8ATwKsVg
 EgSP3JXy+7c/c97LZ3iuSAizuQdabqNXYl2n/CbhyjZcD1ynxklduF7zgxG8Cue0Ep//
 SLy5RtiE1RgsFHn4qvsJ1VXdbYByCqZPe6XeDMOLG93/5CWupms4iy90imhdFk1Moqze
 BWyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=96RQbd3xbCoXq8nQaSvV25c7fBVmlkmtbILb9lLEVCc=;
 b=R+N2/Nie35nxV6pv8yn6t+yDKqt40CKPJXAcIy9OgMz0RRtcED3IqO5WKO/nfCS1fS
 qwp7lGWDJ+J1SwxRaqunw8/qem9Tv6jbi+z22DdMEidJmESa1optaFVnrXMro2XA0iQw
 xucg/cptTdJgUnyJobh4o1Mrns6JjgtcrrJqcUI1VCP/EsgVueho66W4pvEdrFbjDas9
 YOvnokQojqgbgMjTbYCo7aEgKKDKaZxnxzBSLdSDyG4Gw3B3Lp7tiQQqVQiJdqsa4n+C
 yIO0hMHg7KS7y3jQxuYm/0zNSl0DelNLHiVqm29wJgO5ETXVR/WuU5Tbbba53cObObXm
 sj4Q==
X-Gm-Message-State: AOAM531bj2SyMyUS74FYoL6yfb2Y9zgiazHGzcvUi7SkFSpF7tiObRBs
 1QK+z/JakzqgTDh1OcYd+qg=
X-Google-Smtp-Source: ABdhPJyyrcB8/QuxOXY/HwMuNFrHfoL262pDdTeD92yflaQrFlebYxfBUlull52uCQufmLKxtF3Dbw==
X-Received: by 2002:ac8:5ccc:: with SMTP id s12mr14307478qta.309.1605539962795; 
 Mon, 16 Nov 2020 07:19:22 -0800 (PST)
Received: from rockpro64.sparksnet ([2601:153:900:7730::20])
 by smtp.gmail.com with ESMTPSA id p127sm12216818qkc.37.2020.11.16.07.19.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 07:19:22 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 3/4] arm64: dts: rockchip: add rk3328 usb3 and usb3phy nodes
Date: Mon, 16 Nov 2020 15:17:35 +0000
Message-Id: <20201116151735.178737-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201116151735.178737-1-pgwipeout@gmail.com>
References: <20201116151735.178737-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_101929_565628_4646539B 
X-CRM114-Status: GOOD (  12.32  )
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
Cc: frank.wang@rock-chips.com, zyw@rock-chips.com, linux-usb@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>, william.wu@rock-chips.com,
 wulf@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the usb3 controller and usb3 phy nodes to the rk3328.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 65 ++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index bbdb19a3e85d..9fea9203d114 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -853,6 +853,40 @@ u2phy_host: host-port {
 		};
 	};
 
+	usb3phy: usb3-phy@ff470000 {
+		compatible = "rockchip,rk3328-usb3phy";
+		reg = <0x0 0xff460000 0x0 0x10000>;
+		clocks = <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
+		clock-names = "usb3phy-otg", "usb3phy-pipe";
+		resets = <&cru SRST_USB3PHY_U2>,
+			 <&cru SRST_USB3PHY_U3>,
+			 <&cru SRST_USB3PHY_PIPE>,
+			 <&cru SRST_USB3OTG_UTMI>,
+			 <&cru SRST_USB3PHY_OTG_P>,
+			 <&cru SRST_USB3PHY_PIPE_P>;
+		reset-names = "usb3phy-u2-por", "usb3phy-u3-por",
+			      "usb3phy-pipe-mac", "usb3phy-utmi-mac",
+			      "usb3phy-utmi-apb", "usb3phy-pipe-apb";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		status = "disabled";
+
+		usb3phy_utmi: utmi@ff470000 {
+			compatible = "rockchip,rk3328-usb3phy-utmi";
+			reg = <0x0 0xff470000 0x0 0x8000>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		usb3phy_pipe: pipe@ff478000 {
+			compatible = "rockchip,rk3328-usb3phy-pipe";
+			reg = <0x0 0xff478000 0x0 0x8000>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+	};
+
 	sdmmc: mmc@ff500000 {
 		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff500000 0x0 0x4000>;
@@ -983,6 +1017,37 @@ usb_host0_ohci: usb@ff5d0000 {
 		status = "disabled";
 	};
 
+       usbdrd3: usb@ff600000 {
+		compatible = "rockchip,rk3328-dwc3";
+		clocks = <&cru SCLK_USB3OTG_REF>, <&cru ACLK_USB3OTG>,
+			 <&cru SCLK_USB3OTG_SUSPEND>;
+		clock-names = "ref", "bus_early", "suspend";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+		status = "disabled";
+
+		usbdrd_dwc3: dwc3@ff600000 {
+			compatible = "snps,dwc3";
+			reg = <0x0 0xff600000 0x0 0x100000>;
+			interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru SCLK_USB3OTG_REF>, <&cru ACLK_USB3OTG>,
+				 <&cru SCLK_USB3OTG_SUSPEND>;
+			clock-names = "ref", "bus_early", "suspend";
+			dr_mode = "host";
+			usb-phy = <&usb3phy_utmi>, <&usb3phy_pipe>;
+			phy_type = "utmi_wide";
+			snps,dis_enblslpm_quirk;
+			snps,dis-u2-freeclk-exists-quirk;
+			snps,dis_u2_susphy_quirk;
+			snps,dis_u3_susphy_quirk;
+			snps,dis-del-phy-power-chg-quirk;
+			snps,dis-tx-ipgap-linecheck-quirk;
+			snps,xhci-trb-ent-quirk;
+			status = "disabled";
+		};
+	};
+
 	gic: interrupt-controller@ff811000 {
 		compatible = "arm,gic-400";
 		#interrupt-cells = <3>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
