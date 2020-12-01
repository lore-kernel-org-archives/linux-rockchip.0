Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2FFC64E90
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:42:08 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7A122151B
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:42:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="WRSIRMCD";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lsjai3AV"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C7A122151B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OYfC/4ACANo/HRfBwoX7Daw0SSNZZO56kTD4wHDGZmk=; b=WRSIRMCDjBxE65msoagEI6Grt
	cy2q2rozT0ON9X4JlUEfMzGXLTUcpCr3Qw6GZNOb/9DiBZ7qj5dXZu9DYbsd2Pz9cxp19aqHdOZcR
	RBNXK7V5Kwoa+c55/Y1o4wucMMMKKmY5j0ARvCY3FaRCVLXRx51eV3SETXVqQG9/0pqyCiyu9WN3l
	8Ukr9xQXoENhx4TnQC2/QBLWAc5Hnywbm3R14HYCEAiFv0nBCk1ugnTUlFvsbt/lNIH1TGRRdUl4Z
	OemszBA3xJLqHB9XaIkPCMmWJNtzasQTxBfZJci/fXZe7ryWIyt29GU8Zi2wXEV5ySZFXyFzGT+qY
	hY1WCkxjQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk7n2-00045w-2a; Tue, 01 Dec 2020 15:42:04 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk7mz-00045B-L1
 for linux-rockchip@lists.infradead.org; Tue, 01 Dec 2020 15:42:02 +0000
Received: by mail-wm1-x343.google.com with SMTP id 3so6122582wmg.4
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Dec 2020 07:42:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dmVwDArpQLOJLr3UJ05ez3++5vGwUMUVMIH0BYJICZs=;
 b=lsjai3AVFamXkbQZsnXCW39d5JR3xIR+LW7hWBnddNvHpYUP1gtEZC/PHf6nQlJnAf
 ALfBaWGzbavy9hoPpFZfeXu9Qw1a1VpjOJsLl5cmiSPPoLz1RudijB1JctPIaUVXEN3t
 t5aSDCQ8dGRYJ1WW5S/jSTmIODAIBChcysiO7UT5sRiH+qrMUp602SD97U0Fv1ueldMk
 Iox4YUxiI5R8SrOE5UcIxF+u228EHtdSSZR02uSKt9AOk0FRfZ9UztSSAkDLyw9uJ+7L
 Rnk7lCd0Ean5vRFwetFgjoxtXAvmmcxk5di8rGovmBgtM+ffX24qNnZmZK2Ayu7K7pBT
 /vuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dmVwDArpQLOJLr3UJ05ez3++5vGwUMUVMIH0BYJICZs=;
 b=b8cj/87Sb1BUjQUgR0ATlSva0ROGv5xAHNmchQmTkyTqiK8PfATif+1AXDczoP7zIy
 Q2m3wQXL1SJymMTq4VtyF9ZlsTWj7lxGFvQr9KqkYlRlj1dnSwsByHkWwwg/Ox72WMur
 E0gVsZC5FSJn4jimbot4g+KK8nQz1r7qMeMUxl+E3H+1AEiEWHTsfsuOLOdVxn4lyiAz
 1Jj+W6NMh9hRiM9K0Zw9Z4lmzj756JY059SD+xOEma2+fVvgSAyH7Nk38xviNNOcUWy7
 svUm/ipq75s0zt1cOWR1CvOegH/lwNPeFkVmtznB13e4n0HDW0dHikc6p0jpiljNKxYr
 /R9Q==
X-Gm-Message-State: AOAM532Rn6Y87NjtHmti9cIMrN4OEv8/2GATOTpnrOy7Yu+mPnwzmp7g
 t1oTwUlbZJFE+S2hTuPJYe8=
X-Google-Smtp-Source: ABdhPJyvUhb7VNwu+8FL5Q1uwJKLucvLwyCjmT6InBJjnJithmUoZM1rZR7FbbYiva8KZpkm2MGt1Q==
X-Received: by 2002:a1c:9ac6:: with SMTP id c189mr3271349wme.137.1606837320572; 
 Tue, 01 Dec 2020 07:42:00 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.27])
 by smtp.gmail.com with ESMTPSA id l24sm4229811wrb.28.2020.12.01.07.41.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 07:41:59 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Douglas Anderson <dianders@chromium.org>,
 Carlos de Paula <me@carlosedp.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org
Subject: [PATCH 1/3] arm64: dts: rockchip: fix supplies on rk3399-rock-pi-4
Date: Tue,  1 Dec 2020 16:41:30 +0100
Message-Id: <20201201154132.1286-2-vicencb@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201201154132.1286-1-vicencb@gmail.com>
References: <20201201154132.1286-1-vicencb@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_104201_707359_3D2822CF 
X-CRM114-Status: GOOD (  12.84  )
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
Cc: Vicente Bergas <vicencb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Based on the board schematics at
https://dl.radxa.com/rockpi4/docs/hw/rockpi4/rockpi_4c_v12_sch_20200620.pdf
on page 18:
vcc_lan is not controllable by software, it is just an analog LC filter.
Because of this, it can not be turned off-in-suspend.

and on page 17:
vcc_cam and vcc_mipi are not voltage regulators, they are just switches.
So, the voltage range is not applicable.
This silences an error message about not being able to adjust the voltage.

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 678a33601..06df2397b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -111,10 +111,6 @@ vcc_lan: vcc3v3-phy-regulator {
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
 	};
 
 	vdd_log: vdd-log {
@@ -362,8 +358,6 @@ vcc_cam: SWITCH_REG1 {
 				regulator-name = "vcc_cam";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
@@ -373,8 +367,6 @@ vcc_mipi: SWITCH_REG2 {
 				regulator-name = "vcc_mipi";
 				regulator-always-on;
 				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
