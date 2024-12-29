Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81FB0E7718B
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Dec 2024 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3PD1JL4PU8zFsuOq7tmOhbrJZateSbD0nwgY337wvc=; b=cWyhFYZyyHiS3t
	dTAhBERFIP/jjAzkO4kvi0lxhdLHjTL69xjT+kBvOOdyYyuM4y0MeHtJ9bLmpwVyix1a4yyg41bO+
	7sQUHJB2yTBfGVWJG8AHbVrSOs106ONdy5rzISfwkEOpmwdcVDNfdehfvFCvLCwOd2s09nmljmw0E
	mlEI/qMDPRBbLIP4kCzquZbNR4vUBh941FP9O7YVjGkJy6r95qHcWo0X7ZMlGcTnFM4G0y1S//P5x
	P7QabhHmjoVwEF6yB2DQt8+IHesUecFLuDCRGjtrvB5DSE+SkiuB+6SJIeMMZ6U5xJL1Sr32krVlb
	ALIu1BEczNmLtAW23UAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRyNm-00000003m2w-1mG1;
	Sun, 29 Dec 2024 18:51:22 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRyJ4-00000003lOw-1Gwj;
	Sun, 29 Dec 2024 18:46:31 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-71e1e051e50so2056381a34.0;
        Sun, 29 Dec 2024 10:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735497989; x=1736102789; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LIzqFVb8VM/Dn21FDFP1KauNhPaiLjtJM9i6mgqafNM=;
        b=EtWNYz3lKtwQDBOF48NTxDb/v++PM+FYwRILhfGahxHmr7GOb/WuHzXTw3rTWtb8/s
         7qF4F2waidMKcgL3RJvN96879GeZ5TuEWpiY/MhlNubv9UYcITPx6/25w+zlKJSlPOYt
         qukddRg3+UXhOJd65dhYulW8FecR83jq5X04pqR6GBcjQsn0q93K5EGFRbLucG/N8My8
         V35bBwdWSU4JqyqcdjR6xfR6rcgYanhDD7zXK1sh+qQqJh//oIrkVv8M252RF0rBAWtO
         kQXHWxlayTfrBIqgZVeQW7IdPvH79rqaEGvhKeRf79CZOUMyc38WYnE7+F0pTmxfL2ZO
         fdHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735497989; x=1736102789;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LIzqFVb8VM/Dn21FDFP1KauNhPaiLjtJM9i6mgqafNM=;
        b=vxhhKmFdeCLYA3c+MzY35nKy+ttRjVbxP1RWyX0cs4Grejg43ZdEZyPzIh1C6KMF6Z
         XZIJfhw3b8pnGPMZFc05bWR5cCaXrVaD9DkiUF24I+ZbL8M675Aq0TBRvBPR3Wy9W7eX
         4tHJ2C0jgoI5A5LO8y60YPgERvx1gjauFWG9aQAaWVkfzEQ6NyzsKxg0aTtJjWUs0lhL
         we7lApcG7D2woFfXgQpYwUd3jkp1hZOTABKTwtGdX33qK4p7HBsXoPokL9bZF4W5U9Jp
         WCSj6P49yvo1AsIQcSJts14ye95QlRPKcxvkdGvKRIHN1WcPCrjdahScMcZeQx3s3M14
         DHBw==
X-Forwarded-Encrypted: i=1; AJvYcCWnTTV9s65jk68uSbzEEsSfkPhanfE1mu8npl4wKnFaNSvkM0emsKJ8/qo//bHir9dPqpPVRig3T7X3FK4GcP6D@lists.infradead.org, AJvYcCWsOnZ8kUBGmg2tKcJqSiDV4HCbwAYZDcAhWcT6mcrD/iMvMHJkGN0dfd1l9UA7PoOPLqy3RpKxuwxGt/TAD8Y=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8sfh0NH2YITbyEemMJFKc8tTEYrVq3J2wFTrEBx8As5y2gaZQ
	bS+s8U+4pIkOcmHzepBUwjBNNCLs+iSzWb1jZkrSwkQ+YI4udTZ7
X-Gm-Gg: ASbGncs+mb2GMbl55axrv9OF9enyPJcEG7XkuDOWqLpH7dsfhY+9+gGtphagMEwMwif
	gYnyO+qSQXXppZGkBSBK986QoIAHy2IZj2TuLqfBnuS+pvOgV4PErU7d6dcG03oyer/waCLh9Kp
	9pZNxxFISDhbcIUdqcuVCHcmXH9dpeRMO99PDbJbUHzWHAMB9JiYVnvne0ac2BUUsCdsNxtsAVs
	DyvpMS5n5mxygFJ8mAegCcbUdxDkjYI2Mko4xFvO5G99Iw9hTuA/gCIaKbLz8Kz
X-Google-Smtp-Source: AGHT+IG11WX7BWv9bA87ugTxsqNhxXvFWiqNeKDLE6ZeYckYBnSyMP/5ZZfpUnS6K2hcMLs+dnuaGw==
X-Received: by 2002:a05:6830:718c:b0:71e:223c:1789 with SMTP id 46e09a7af769-720ff894f99mr22569284a34.16.1735497989261;
        Sun, 29 Dec 2024 10:46:29 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:e765:a49c:5c4:1103])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc97d6fafsm5515645a34.31.2024.12.29.10.46.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Dec 2024 10:46:28 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH UNTESTED 7/7] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Plus
Date: Sun, 29 Dec 2024 12:41:36 -0600
Message-ID: <20241229184256.1870-13-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241229184256.1870-2-honyuenkwun@gmail.com>
References: <20241229184256.1870-2-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241229_104630_393487_F1C3120B 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
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

Enable the second HDMI output port on the Orange Pi 5 Plus

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index fd49a7c8a381..fd9252d32298 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -26,6 +26,17 @@ hdmi0_con_in: endpoint {
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
 		gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
@@ -113,10 +124,30 @@ hdmi0_out_con: endpoint {
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
 &hdptxphy_hdmi0 {
 	status = "okay";
 };
 
+&hdptxphy1 {
+	status = "okay";
+};
+
 &hym8563 {
 	interrupt-parent = <&gpio0>;
 	interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
@@ -231,3 +262,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
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
2.47.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
