Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4BE2C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 68A5E64ED0
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 68A5E64ED0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VCmjU/ZD/HGe4mKI27sHncC4gl5rKjN96TI0xNFsQQg=; b=ZbSicOuE6wNmv8Szw/KIT0ISxP
	xfZJN2h4Eu8tv3OsOnI5l/3OADQlS90ibOdI2KcgFuxwBsXFRq2eC1g86m69ZXgpfPBt5s/JFaYt1
	iLe4wJQ83qF4A2Ba1d1oAWcoRlxTtfuimOwLOLLokC/KmRo8zohUQwD6Onq1Apb8S7N+dN5wo+RzH
	Rr7+zpz7Ed/JPJ5ULbZdhCIqEWnHxPIdclEJ6r+UyjmwEWNUaQfPfx+eXvnJknoG9SCyLV3ExdrdZ
	/LGcZkuGxAFRND/Sd3walKIm8t6mweY77jWY9F3STDxeYRB+bduGUcfOlrW9juMCFuevWKtqAR/WX
	rqsmgjSQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9Yd4-0005DO-2e; Tue, 09 Feb 2021 19:24:54 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9YcJ-0004su-Pz; Tue, 09 Feb 2021 19:24:13 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a9so33655554ejr.2;
 Tue, 09 Feb 2021 11:24:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=CZhB/NEJnRkF+TAIIRVQHf9Sf3lp8bbtJmnwDMjx8Fs=;
 b=Pyc5ziHzNys/DmCyRT/IZGIkNcdwW2jRgLCnoc4oF8HBHLtJtCiv0kUD4zYNFyZa4x
 tsRhEQYCT38Fd0H0Abr+owIadmo000OiOsBVbBNY1c8lq3yyGFhiywtPmdB7SyMr5xA/
 7dBhgbhf/lMMhbEgEaCYOGL4y0SfCsw4OVoGRNaMuAysPUZRXX3C/Wugdz54W7NIbzAK
 yIniVvoW90wX2vxClo30xhcM7wj1eziBRUrwCR6I5t/+WoNaR5JPaNVcK/+6JIdpUcIe
 6dUXHGldLgGppakAV4WYu17hJEALqICRYPfKCuRUrNRfhcirmZLe83WLPPMg9xbfeuu8
 MX9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=CZhB/NEJnRkF+TAIIRVQHf9Sf3lp8bbtJmnwDMjx8Fs=;
 b=l/UnONg9nqyRsfhun0Cp+aat90v0oJYtsYYLWs9bfnC4c15bGZAfM9ArFiV0u/gGy4
 vlbAIdf/o9ymHi8fFHLo4doxgsX2+AgXeyBBu4FsPdBpVlJ21oXgkNFZu/ktuiLSHBYG
 /WCe5dWarXCuMtRRswWkLdBNToql818YPMkrhOjQGebUZNdLTvbUlKTAItkwXziBkliz
 frih9dyyGOmIQ06xRo2+ZkgTCXz90hFdRWcd1YOKsB7u8mKW2KSireWWflrZhHMs8rvz
 IuauvERzgrQOsk0uUdPT9D6qYqxfzrD3f2m8849d3QrJJFBRQtThaECx879nAT7ARgOO
 nMcg==
X-Gm-Message-State: AOAM532VvYi9mUBbyGAnk8wQQHLgQjb5VUx7dt6uWIWiqwJeuJF5o94H
 iLjrMF0HE3IKQlc3QHBTO44=
X-Google-Smtp-Source: ABdhPJyq2Hl1AVM7CRPhdEGtJGkzjJIdzCmDQRstMgdguIQWb8IxLBedrovs7JsXiNbv5ZgVdfF2Tw==
X-Received: by 2002:a17:906:6449:: with SMTP id
 l9mr24927901ejn.320.1612898644183; 
 Tue, 09 Feb 2021 11:24:04 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w3sm11075779eja.52.2021.02.09.11.24.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Feb 2021 11:24:03 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 7/8] arm64: dts: rockchip: add rk3328 dwc3 usb controller
 node
Date: Tue,  9 Feb 2021 20:23:49 +0100
Message-Id: <20210209192350.7130-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210209192350.7130-1-jbx6244@gmail.com>
References: <20210209192350.7130-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_142408_058543_94335596 
X-CRM114-Status: GOOD (  12.24  )
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Cameron Nemo <cnemo@tutanota.com>

RK3328 SoCs have one USB 3.0 OTG controller which uses DWC_USB3
core's general architecture. It can act as static xHCI host
controller, static device controller, USB 3.0/2.0 OTG basing
on ID of USB3.0 PHY.

Signed-off-by: William Wu <william.wu@rock-chips.com>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed V2:
  remove node wrapper
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 4d4cd1830..a3b069a10 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -988,6 +988,25 @@
 		status = "disabled";
 	};
 
+	usbdrd3: usb@ff600000 {
+		compatible = "rockchip,rk3328-dwc3", "snps,dwc3";
+		reg = <0x0 0xff600000 0x0 0x100000>;
+		interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru SCLK_USB3OTG_REF>, <&cru SCLK_USB3OTG_SUSPEND>,
+			 <&cru ACLK_USB3OTG>;
+		clock-names = "ref_clk", "suspend_clk",
+			      "bus_clk";
+		dr_mode = "otg";
+		phy_type = "utmi_wide";
+		snps,dis-del-phy-power-chg-quirk;
+		snps,dis_enblslpm_quirk;
+		snps,dis-tx-ipgap-linecheck-quirk;
+		snps,dis-u2-freeclk-exists-quirk;
+		snps,dis_u2_susphy_quirk;
+		snps,dis_u3_susphy_quirk;
+		status = "disabled";
+	};
+
 	gic: interrupt-controller@ff811000 {
 		compatible = "arm,gic-400";
 		#interrupt-cells = <3>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
