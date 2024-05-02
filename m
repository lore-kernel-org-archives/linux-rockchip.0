Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72656C25B10
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 09:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o57kgIvb8z+B2Mnh0wnjpsUPSl0VZBt2AtxUcVmy780=; b=LMHat3JfkO3syA
	SoP9h/Mejk78XCIplaarsjabudDzXWAYfyoTkDl6kqY2jRZnmo5wSScZzgCOLeE+kq9fPNwCj1e+d
	SJAqSXhReoKMI0gGnFNTexcHSu9quSdRW12d8qL6AvK6ROHFXsTOLBELfK9/XCJJSIKV3hNN5dKwD
	8mhOOPtv0MBDethN41aJKz3Zd7i+dNW6FeZ97lsVzNvNo4OFY7YT6157/rlXRvaKpQPuXOwi1nlX3
	+/PnqepXsn3Lf/RaDV9yBWsP8byhZgjtbhYBg30BGN3yTGoxtMnM6ChaGoi2TC1rv1q9N1ddNPUKU
	znFKZ20Vc6yRf2ZfEO3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2SyR-0000000CCU4-1sGt;
	Thu, 02 May 2024 09:43:31 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2SyO-0000000CCS3-1Glt
	for linux-rockchip@lists.infradead.org;
	Thu, 02 May 2024 09:43:29 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2ad8fb779d2so6222659a91.0
        for <linux-rockchip@lists.infradead.org>; Thu, 02 May 2024 02:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1714643007; x=1715247807; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NafZmSgbMWHkPxYUCANWhCGG1sZpE0RVMkcek4g8Q64=;
        b=CHQzaMQL0z5vRiGjyL2AjI0GalI/6fPo81OIUX+SghJkz6e0+ImGmhhUDHAp8SJwL6
         +NNSMEVt2MURH3xgQU37bCObF01rn/YzRYKp9zMhf09PFREnNh2tYfPqXF7T8Otr3o5y
         9XBf9x3+qfcOSxFLJhL/KieyQZWy/E06vqPg96zt9zRih/xQr2s+hJ4zsZoqVpAA3VA5
         cOgxoisib+dZouoynUYrmIPsolydarBsw/LG6chU6xOwCDEL24hdD1mJH+WkUAAnjo4O
         vKOFIrSVDbCV1cQx0u5/X6gKy8yyROEOtXIbtGHnKdI1MkCvL404zVvN0qbQFD5IT6Xx
         4Gow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714643007; x=1715247807;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NafZmSgbMWHkPxYUCANWhCGG1sZpE0RVMkcek4g8Q64=;
        b=OIQGyFZP+BD3kcHVvtJyD2AaJHIC5ejUl5SS5wfZUFHZJFCYjDSjYW7SC6N+6V6UUv
         kDCdP6WFayDj8ANdEtvSTzJtAzkhflpMN7fhWhQtJ4GzFZc07NK0KqK6mOR0CsR2f3/7
         JZ/hFrMk69i+VZoXcTLnIQQhaG00YbIkG1R6Yb8DXtJ2bC/jZ29kCPOiHBuf3z+c9mGB
         KdpFw57vqcTSx8NHvMABxp6VKAuu0grhbN5UJsBD/YOeVbRy+qd92O6S8+HjV0AOW8CA
         BPxX/WDSmEwoCZkqh1DzxaAeoplW1s3xH/oI1qQIxg6lW6/hRyESpWqKt3WA/fF4RehV
         XxNg==
X-Forwarded-Encrypted: i=1; AJvYcCXByqyD27dayr2Yrxb98Wqr1tVi2FR5ZynxOTtVYsDqyPdXNx+O5UrZ3PqtBcMmclUWfmjJPL/ENSikwHFpUDhpfsrilEVznr39eXDiIcFdrUVU
X-Gm-Message-State: AOJu0Yw267jEIXv/zxkt5AWCfn90ej7MVtsKygVbkcZtT8tfGqUEQzkc
	Mgrec2/D7Dt7i0y7SZmJ22WJpo0htZRUlsYWDEKDXo++Z4WHJF6Q8DlFA6E4xn8=
X-Google-Smtp-Source: AGHT+IHvUulvyLLuIR2ixjTdxZDCwMu9zOKpV98sFsG+9Kb5SZEbV1Ur8C3Ke6fQgfW3uB1Cl9G0qg==
X-Received: by 2002:a17:90b:690:b0:29c:582d:bade with SMTP id m16-20020a17090b069000b0029c582dbademr4530071pjz.2.1714643007228;
        Thu, 02 May 2024 02:43:27 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id p11-20020a17090a428b00b002a42d247a93sm782603pjg.36.2024.05.02.02.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 02:43:26 -0700 (PDT)
From: Anand Moon <anand@edgeble.ai>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: dts: rockchip: Add USB3 on Edgeble NCM6A-IO board
Date: Thu,  2 May 2024 09:42:38 +0000
Message-ID: <20240502094246.4695-2-anand@edgeble.ai>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240502094246.4695-1-anand@edgeble.ai>
References: <20240502094246.4695-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_024328_383596_6BE25348 
X-CRM114-Status: GOOD (  11.21  )
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

Add the proper nodes to activate the USB 3.0 ports on the
Edgeble NCM6A-IO board.

Cc: Jagan Teki <jagan@edgeble.ai>
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 963e880ccc12..7b1317898358 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -68,6 +68,10 @@ &combphy1_ps {
 	status = "okay";
 };
 
+&combphy2_psu {
+	status = "okay";
+};
+
 &i2c6 {
 	status = "okay";
 
@@ -230,3 +234,7 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&usb_host2_xhci {
+	status = "okay";
+};
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
