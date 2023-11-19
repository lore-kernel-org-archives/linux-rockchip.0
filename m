Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87CC8C5ACB3
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 13:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTNZsUq93RXmHSceY+bLVuwv+fi+SO0J9gSsPqNmZGQ=; b=RE/jsOcmcUxqrF
	CZsWpUq2I2jqgxDBr5Ba1NkbZ0K7nqON0s4VONxQJe+E1WdvNJfRYKPHPZ1eB6AvPJMEHC0yG9Fl0
	xx+vDakfuko4fVwFKRVeNHYMj0LBIpB3ZSnoYp5YEaruDvmApLTWVoY0wYvbqHvJSulK89iLpchI9
	biiDCs/Z4DziCNep4dGBBMJlZTGay8Rh2pG38EzCwc1fAqU1sObMdTkBlUBr3JzvMv+9CyuVsj7DC
	vW0m2vGQoRiAJ+QboqTCpd7eFE6133idnkpGqpUPyX1EkMOaQAuDF7l/gjNKD63knly3hapm1VBn3
	sGxQWl8M1fmCkSgaM0Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4hTq-00AC9k-0Q;
	Sun, 19 Nov 2023 13:04:54 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4hTm-00AC87-30;
	Sun, 19 Nov 2023 13:04:52 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9d216597f64so471584866b.3;
        Sun, 19 Nov 2023 05:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700399089; x=1701003889; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5D7FwSNbPTp8jaj1UJACdG2GoQE4etSzcaqgDznPLTY=;
        b=O2/T0vchOSwYsm51pg6QEI1zgAb7qmfR8DdMu3i2DxUZvfU0FXU24r4uHKbGmFVPFM
         SSo5ePLJ2yTB3yaOq0gZ04AwQAm3kQYXra+d6hT2IR9iC44suOTkaU/IF1jqjepgVns1
         sjhd5YzoLR76/hcUJnnZQy+kdkHOB0S90KDwIhI9r3pCfz21gYgwNCv+lDelPkIgg+uP
         HQci22iF2ock8szLiBgQLgtUhKKHHfT/726EMg8dLH/awbNwAHSUh+YF5W8Q6Sq2cMrD
         PNLWue0IfIFJif/I4OeuipJuO4gWBLmSSxjPszM3RVzEbfRcaYBs0oyxqkb1eon2JN/k
         6chw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700399089; x=1701003889;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5D7FwSNbPTp8jaj1UJACdG2GoQE4etSzcaqgDznPLTY=;
        b=JIxnrSDB6AzPHo8RMx+0oSDR9gtqYH5D8jOLtDFvs4wkSYfi51Be52aanI16TXSwuU
         lRAg2J5kMU6zi2LcPmxAAZgK8g/45qcc2kFhFZq8T5f7nmD0zAm2JTbQqZpU5Amh13Bv
         T5eH/0zjHikmfVolShTsSEATa/ibdGErO4i2XszsLZf8PC3MqNT8rXPSg0syVyZyDCEn
         kjsXSRjg+PNslwp/U3HuFPWsqAZcOThuAQoabKX4HsQ8W8b6vVG4dzZ/5QTAlp8CMGC2
         OHyOupE8juO0QEJn9SirP975IUWrZAx4Re3QLxveuPdInf8CC+N5WMd41OiCVSSrRICJ
         xbvQ==
X-Gm-Message-State: AOJu0Yy1vrna9AvJoPgrbYrAdyHuF+VLqQDETcEBc0NTSnDh+SroeWmI
	DASZycQqE+82iDKl8ce/ew==
X-Google-Smtp-Source: AGHT+IEwNDO4gimoaB9m92VdbE3A3oya64/Ue+tkhBwip4/WPt2BUK2ndGWYskgSHqJLW+J0pcgMkg==
X-Received: by 2002:a17:906:2d0:b0:9b2:b152:b0f2 with SMTP id 16-20020a17090602d000b009b2b152b0f2mr3379718ejk.10.1700399088899;
        Sun, 19 Nov 2023 05:04:48 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:7017:f42c:e243:8c57])
        by smtp.gmail.com with ESMTPSA id n8-20020a1709062bc800b009dd8473559dsm2827866ejg.110.2023.11.19.05.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 05:04:48 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 2/3] ARM: dts: rockchip: Add sdmmc_det pinctrl for RK3128
Date: Sun, 19 Nov 2023 14:03:53 +0100
Message-ID: <20231119130351.112261-6-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231119130351.112261-2-knaerzche@gmail.com>
References: <20231119130351.112261-2-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_050450_970823_F767C091 
X-CRM114-Status: GOOD (  11.03  )
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

The pincontrol for sd card detection is currently missing.
Add it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 7bf557c99561..797906ba321d 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -843,6 +843,10 @@ sdmmc_cmd: sdmmc-cmd {
 				rockchip,pins = <1 RK_PB7 1 &pcfg_pull_default>;
 			};
 
+			sdmmc_det: sdmmc-det {
+				rockchip,pins = <1 RK_PC1 1 &pcfg_pull_default>;
+			};
+
 			sdmmc_wp: sdmmc-wp {
 				rockchip,pins = <1 RK_PA7 1 &pcfg_pull_default>;
 			};
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
