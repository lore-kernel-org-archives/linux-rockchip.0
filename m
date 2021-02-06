Return-Path: <SRS0=YjQ7=HI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5393DC433DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 18:50:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D4FFD64E64
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Feb 2021 18:50:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D4FFD64E64
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QiYk2YeneAxknBvp3qBqvBvwBcfYMZZYvQx3PAI/uBk=; b=DScZF/5uv4UCZBtapU2KaQsKi/
	W/pNOq52w+vJk9zroDpd+1SurWqnlEHl2BjkV76Y+wEW4nHG1rvjQcntLy4l9qIhxj7/ZfB8MEh/i
	C14Fb0HmSVLxTxoa1lpxp/oBaP/I/H5trZ1EJSJbpmmS0BaLr0qii6ObkNwOaSovv/+5pIYnD4HNp
	hpaZUnjmEE3PaSgWhSySUy8xnRrcSBmPG3rJorjYzDJl7Qju/CLIE4q3G1+Dtq8LUHY4azwmYvEBj
	DCHSrGBg133+yhEve5aj5mz6b2RtVuVGquTrwoRQWFfmo43JD/W29wPt54JlhugCRIcsulj9eOqg4
	jZEVHL3Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l8SfF-0003wJ-Ek; Sat, 06 Feb 2021 18:50:37 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l8Sf8-0003sn-Ez; Sat, 06 Feb 2021 18:50:32 +0000
Received: by mail-ej1-x633.google.com with SMTP id i8so18257853ejc.7;
 Sat, 06 Feb 2021 10:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=r7BU1Ua7cwHe6jzoj7pIEXXpfnh5K4Y+YXR073vkvQE=;
 b=Pow5OVqmSB0fcoLVh8t/96ZlLlvcjcDIj/cfOUe31XBTpWOwy/8e8f0h8Gy4NE44aB
 5IlVy0Q5D6cuNPBIm6p3WFDha4KqoWRemq2MIAkJBbdHVIgX7LSusE9cPz6A6flxfUsi
 ofMy0MdMc/+ZbMvx1cbJkwbZPPBYNThQD4ELYAYReNp5X/EIEdbH0mwe5SReH/z6RPai
 MMduoV279WZJQQMzapmB/x186JRqpfs2Ej5k8DfLS1wPonrgfgByocHSXdoVBaxtQX5D
 MLWnbjAR6LzXe/STQW428Xg9yzWdJgzgoaaVkQu8IWNztY16Ghwj7AezWMvJJD3Y16l9
 V/IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=r7BU1Ua7cwHe6jzoj7pIEXXpfnh5K4Y+YXR073vkvQE=;
 b=A92hX4OT1KcGllIDkY0RBm6qs3F9BKVSmO4Fd1kc6wM85R1dVVlhlyJBr8sC06SCm9
 bQ62rsOo+m7Oby6LPXqXFdiOkqLGipMzAikN5w4rgIt9N5IortyIoMh1F83E1a/uFEXh
 IWJNqoU9ocHxKOhAdGvoHatvOXl1/mLiW/twtW/MLGRbHROo4fOeAIV7JOvjayth/ZA2
 789l8SXQasPPNQ/dsyNocZjQrvlF+2QvbdspJdCkcx/JixVYp/tOF/K50az7/QibElni
 WUhFlPmuAF3hLw/Vv+Id1qtlsn79D3s9mr8KKjIra10a7a7n4TizyUCQ/ytDmnJR+dAK
 uy6w==
X-Gm-Message-State: AOAM530qHc1c0HzUKUojDT53sulT4Few72zM0GMPWVusdfMSgCq+PEEC
 sm/oZ0l19XH9H0owrjeLcjk=
X-Google-Smtp-Source: ABdhPJzLu2mmugL+rzB/9sYJ0QJEg/ICCAcVOclFB2ADHKG9bnSL4uodB3zf9KSSrT1Ar53emqgkvw==
X-Received: by 2002:a17:906:2bc2:: with SMTP id
 n2mr9618489ejg.381.1612637427667; 
 Sat, 06 Feb 2021 10:50:27 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cb21sm5890005edb.57.2021.02.06.10.50.26
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 06 Feb 2021 10:50:27 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 3/8] arm64: dts: rockchip: optimize clks for rk3399 dwc3
Date: Sat,  6 Feb 2021 19:50:12 +0100
Message-Id: <20210206185017.1817-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210206185017.1817-1-jbx6244@gmail.com>
References: <20210206185017.1817-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210206_135030_544362_F48720B8 
X-CRM114-Status: GOOD (  11.81  )
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

From: Wu Liang feng <wulf@rock-chips.com>

Remove unnecessary clocks, refer to rk3399 TRM, aclk_usb3 is the
parent of aclk_usb3otg0/1 and aclk_usb3_grf, and we will enable
aclk_usb3otg0/1 and aclk_usb3_grf, so don't need to enable aclk_usb3
again. In addition, the aclk_usb3_rksoc_axi_perf clk is used for usb3
performance monitor module which we don't use now, so don't need to
enable it.

Signed-off-by: Wu Liang feng <wulf@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 04f7cc5c3..b125cac89 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -399,11 +399,9 @@
 		#size-cells = <2>;
 		ranges;
 		clocks = <&cru SCLK_USB3OTG0_REF>, <&cru SCLK_USB3OTG0_SUSPEND>,
-			 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_RKSOC_AXI_PERF>,
-			 <&cru ACLK_USB3>, <&cru ACLK_USB3_GRF>;
+			 <&cru ACLK_USB3OTG0>, <&cru ACLK_USB3_GRF>;
 		clock-names = "ref_clk", "suspend_clk",
-			      "bus_clk", "aclk_usb3_rksoc_axi_perf",
-			      "aclk_usb3", "grf_clk";
+			      "bus_clk", "grf_clk";
 		resets = <&cru SRST_A_USB3_OTG0>;
 		reset-names = "usb3-otg";
 		status = "disabled";
@@ -435,11 +433,9 @@
 		#size-cells = <2>;
 		ranges;
 		clocks = <&cru SCLK_USB3OTG1_REF>, <&cru SCLK_USB3OTG1_SUSPEND>,
-			 <&cru ACLK_USB3OTG1>, <&cru ACLK_USB3_RKSOC_AXI_PERF>,
-			 <&cru ACLK_USB3>, <&cru ACLK_USB3_GRF>;
+			 <&cru ACLK_USB3OTG1>, <&cru ACLK_USB3_GRF>;
 		clock-names = "ref_clk", "suspend_clk",
-			      "bus_clk", "aclk_usb3_rksoc_axi_perf",
-			      "aclk_usb3", "grf_clk";
+			      "bus_clk", "grf_clk";
 		resets = <&cru SRST_A_USB3_OTG1>;
 		reset-names = "usb3-otg";
 		status = "disabled";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
