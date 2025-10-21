Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6F5FCCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 16:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Asky6n4EdBWDEgJwNl1uQFHtCEhCKP8/2V3dJBhNmWw=; b=PL9g6fnvFJrTAp
	3vyucdgJnnuCPIpRSWUXm4WjDJuCzYgQjydd+rpDArcD3+I44H3n1t+/4CGdXtFDwkXVn6Nm03nv4
	8qyHZoNNArXXqMr1t67XSgEX6rJfbTPn4f6tQVV0UMsY4POfTXwwvpdUlBYJjx2Fsz0jNzJHA8jSg
	LxJiQXJkI9LMzg6QsKIedEFcRTJObrWX3bPiWdezwCvahgY/BwuV0uBvp9t0FUdwDZC7GUJc17y0/
	+k5MQr5hZUpEcQdL2WbXYROFXA/qy7Q5nIjz99vMGpmx4lKXcjNQslKEAtcYPnZVSAG3ZZgrUfLYi
	6DYpYxi0ZARpVcFSCEnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBEsL-000000003Ab-3ab3;
	Tue, 21 Oct 2025 16:06:17 +0000
Received: from mail-wm1-f53.google.com ([209.85.128.53])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBEsJ-0000000039F-2SW0
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 16:06:16 +0000
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47106fc51faso68610085e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Oct 2025 09:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761062773; x=1761667573; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I+ODemdtelodNngZ+cnMjkBp0uDC6f3Gz3zokiA/WGA=;
        b=bvR+DPzJHYPbXL3RMJMVAlDGt3fJT+jna/JfiJiBJqBMSviY9dKFYMv7JJdIzwMoil
         FPpP5ylR2ZYXXVtp1sJcxX0vr0MtG3Y9DswRjOjr10ZcZflu8i6poOY1h8nRMIcAIKnR
         CX5pk+7Bq7lH22PhqijHOKQPrblZdUoFJuZCFzntFLufNHdUbKzuGM0mFbdHCWL3iOpq
         Zza5Ax2u3HxWYrUahKu27YXeHZOeO7hjoiQZi65o7jbJXCQmct2CsBSNP7Gg9jWmS23w
         DeXXiJzrk2kDVCifBQl/8gQ9nL+XVPE69V5tpmvka6sN+ZBp9I+cDuAIUAFapYmv5izu
         iQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761062773; x=1761667573;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I+ODemdtelodNngZ+cnMjkBp0uDC6f3Gz3zokiA/WGA=;
        b=cXk5FaNBwg4KG+4CBmVorLe+fAUaxdx9JDaJLduXV8ESBXrSuUbG0BLHPsncoZUaoP
         60LfftDDLwIUxYES81QhDmw8ATmswpRihjGU/zr5CXblywsv1jo913bvbtHk4knc0SoC
         tyaM/SvD1VWMDbKKTlIehIxfDodP5QjbfvaGTTHGOEystZdI9vzzj0hagIch4T1B5CE8
         2D5R/PfhH6/Psf9/xEtcUX94QBvly7TKex8HqO+2ezQ7blIINY2DZh2O7Dgy2qfdmB83
         y4Jt91FtxW3tLdJIkr6fWHcctCEmGVUw78sw1ZjOS1BWPDzX6RDnqAngTDr8gDKqdGdj
         mAdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUSrGMzqzx6QcH83pVRd6p+31XcWP4+PotcCCJj26MOWMzGXWPKgnqHe1KQj5ECzrmm4G5peA/ulxLg2kIomg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzsFLo1QCwtbn1VYG+53ZeBvzXBW3eDnCX7/OnNJn6Yu0uLi92h
	5RP4nvnJcW7bguWCDeTw2dbU1ckHJu9xdrwNuPIdc3xWrSGpsCPjRaie1wzT7sCC
X-Gm-Gg: ASbGncv7Lk+Qvx4YLWrZwZhkWXT4HkgQjwJj8fRLGxWSNRfzONS3Rx1YKUXg+15MX9t
	clyMOss7Pac8Hb7V2Kjus/Y2Q8/o+LhFXaUU/Ql6OozGoiqoRPQRx8QfbmFUHc5+vLoiP+hMLlw
	1cFm51yDRD8xVCueu1pwZ5rV/dLqa70ZmaRY8aNLybCd35TsNOcLGLlESwGixcxQFwZVejkonXc
	kRgXwHt7nP5pNx+CRFdtTSctG5/TTYj37aBZQU9bxtBommlyWKsHA7pDD+Pdq5iMxnokqVPX6Jh
	eT0bJZ7HAXLQIW6y3STFsBL8/JWHyWWjhwwrjOmRHu+TPTBmgQUECpAkGo+jJLq7q2aLpWWGbH6
	5EeVltWLSUU74BeklEiIUXIMlFZHGAv8YfHPGpm0ZW/VARm7djAQPFUzWjfoQDjXw5rvx4JNex/
	DsVOc7
X-Google-Smtp-Source: AGHT+IFJFL2AbUhadEu3zoiSmflGJqqKLGGnSqi38T2TvHgGSGw3DXC14Yf1ANAfxEsqrqF6d4xXtg==
X-Received: by 2002:a05:600c:450c:b0:46e:38cc:d3e2 with SMTP id 5b1f17b1804b1-47117906a23mr136429645e9.22.1761062773077;
        Tue, 21 Oct 2025 09:06:13 -0700 (PDT)
Received: from debian.. ([193.42.96.237])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47496d26affsm18543965e9.12.2025.10.21.09.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 09:06:12 -0700 (PDT)
From: David Petry <petry103@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Damon Ding <damon.ding@rock-chips.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	David Petry <petry103@gmail.com>,
	=?UTF-8?q?Valentin=20H=C4=83loiu?= <valentin.haloiu@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Enable second HDMI output on CM3588
Date: Tue, 21 Oct 2025 18:06:02 +0200
Message-ID: <20251021160603.96934-1-petry103@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_090615_652918_6A32B5DC 
X-CRM114-Status: GOOD (  11.41  )
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

Enable the second HDMI output port found on FriendlyElec CM3588 and CM3588 Plus

Signed-off-by: David Petry <petry103@gmail.com>
---
Changes in v2:
 - Fixed commit message according to feedback from Heiko Stuebner
---
 .../rk3588-friendlyelec-cm3588-nas.dts        | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
index 5fbbeb6f5a935..10a7d3691a26f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts
@@ -101,6 +101,17 @@ hdmi0_con_in: endpoint {
 		};
 	};
 
+	hdmi1-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi1_con_in: endpoint {
+				remote-endpoint = <&hdmi1_out_con>;
+			};
+		};
+	};
+
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
@@ -335,6 +346,22 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi1 {
+	status = "okay";
+};
+
+&hdmi1_in {
+	hdmi1_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_hdmi1>;
+	};
+};
+
+&hdmi1_out {
+	hdmi1_out_con: endpoint {
+		remote-endpoint = <&hdmi1_con_in>;
+	};
+};
+
 &hdmi_receiver_cma {
 	status = "okay";
 };
@@ -350,6 +377,10 @@ &hdptxphy0 {
 	status = "okay";
 };
 
+&hdptxphy1 {
+	status = "okay";
+};
+
 /* Connected to MIPI-DSI0 */
 &i2c5 {
 	pinctrl-names = "default";
@@ -840,3 +871,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
+&vp1 {
+	vp1_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp1>;
+	};
+};
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
