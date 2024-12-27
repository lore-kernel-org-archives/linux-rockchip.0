Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43FC9E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 13:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wdBUJO58LRTuJvYaHhgbTDGrvXFJhac9Z+r0iDYKlxs=; b=05P4sqX7Fbz3XY
	qM3Djpre2peKtp/9p4wqLGpm9u537NFfOhpCDtOqBTEplf3jJ8du5U3u9LatKdgx3RjRr0gep/DWH
	Lk2zeU03vTByLHoJxch9lL9VgcGcyPP+C7fFqaJ7XS71d9/czUk/6hWP1At1jGBtLc3DgHKQOY4Ko
	Vz2S6BHuM87XPToANzqui3F6ZYc3NBtpB1w5cUKOa71+B3HTWdFwZcB+E8Nx+yROUSYAHoGPnV1rE
	f0s4HAiuVfao1X91nWmxbp0YknUzETDAl5GHZcq1D6AFTHBlezzd8husV28adJg5rSFxTxf7SdJpw
	TUim+zJgADgfT9LwD2Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAQe-00000000IKc-2wx9;
	Fri, 27 Dec 2024 13:31:00 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAPT-00000000IE6-1h91
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 13:29:49 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2161eb94cceso61819545ad.2
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Dec 2024 05:29:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735306186; x=1735910986; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w6IDrf1UQsBPwLJSTWT95TeUNn5GWIJ2Bqwzoko6qnE=;
        b=KcgClry4ICYtod4//wCA2cVEfDbn5/TQ6GXmv/owqp6NXTlH7HG5SEnEEFrygxcsfl
         3nrSlVLuNIZLu9+s+GqirBOlKJd+ypVmvPSVE0WTxQ6rigLCLqEhrpib1eJgsNLBaLYN
         HlJNBxixuoK/TdzUrkbt1wIFUsHNjWcYhkz8o2VzARD+pXdgFLOquzILveZyQLZfPvoQ
         PuGSJZ9ZWGELKwrzklATS7oiQ2aexE2IEW+ktxO0ZhZY5rPb8UuYzdjIof9/qjbU4i0g
         8ODeUvpic5KeY3CZ0vdRw5SAgjhAP+JXArB35OnSlJ5vI+6gYjwhH2Xs/MBXo71No2oa
         Q6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735306186; x=1735910986;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w6IDrf1UQsBPwLJSTWT95TeUNn5GWIJ2Bqwzoko6qnE=;
        b=a2Admr7nYSl7duj3VzjMppy7ux8bXvWBzPaO2sXBMuw5Jb+63KEGBj342nG7wAGacK
         RmWCSgNYEg62AO1bU7ExzNVp77Gpyr4ZML4pkUgRVjQWzadnLf4/AcRTYrLPtIVJ5fmB
         wwuDeg0oZpQnfs1zjGqTiDpPdJVCqFOW5YDtVtjqk2+wUERCtLbmcdgcG+J0rWOMp6nL
         P7DmOI0B5vPfc0sh6AUIBXY3bYPPQfRKK885MAykmaXsVAT5ImX5fImy4hA7qazjnH72
         y0A7+J5urbfadii137nnC49FSgM58eajpws1qiWwx9tCF1YY5SepeWNJrWgxMqBlmRzR
         ZpzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjYlagdsOXHtAIi04clOUWd8VtUxJyBEr7zk+3alOFGlp+GR7jvJH9ejCTMI1JaDpP+SfJJz0JUEG9l+zTOQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzVcKX2W6J5Qlzs8/M1vnV3Xy4WyAvyryb1r9kPx2TJRN/BqTrT
	cSvZSulAHN8aIN84DGdh6sxuxHUGSwfedhY3loAPg387wpTdDoBBvMvXqTR6ows=
X-Gm-Gg: ASbGncuLHXgER2S7nEY8MvNE42pHrdFGqXdDIDLFFKFIK7FcgxvhTQEgZ9UDdZG4c6S
	95pP7i5sRWMSFEMhxanwndvL7Fy3lSrDhw9O9SJKGuVsS0EvnYJUYVM5ZGazNIzdpldFV8Hn2Zz
	/PoioCw/Ox18PqblqtOeDrH62PKG81Vd3pTLwgexaVsGW/l0ClYkd1Pw0Enx1rISLLLl5ctYKVs
	2wf7ku9nPBScL8cN/yVkDiTxZmffcOZCRb6VK7z/mvW2AUqJ4dSMgSEON15VOa/syM66gE=
X-Google-Smtp-Source: AGHT+IG+o5PNLAqY9O3P+IZr12zVMoET16tLK/MND1ykf51ykoLr+pbcQqxGVDb8pd31oedibkO65A==
X-Received: by 2002:a05:6a00:35c3:b0:726:64a5:5f67 with SMTP id d2e1a72fcca58-72abde09893mr38212752b3a.12.1735306186439;
        Fri, 27 Dec 2024 05:29:46 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([103.217.239.66])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8dbb5asm14510517b3a.93.2024.12.27.05.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:29:45 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH V2] arm64: dts: rockchip: Enable HDMI1 out for Edgeble-6TOPS Modules
Date: Fri, 27 Dec 2024 18:59:36 +0530
Message-Id: <20241227132936.168100-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_052947_445697_6DB2DBC6 
X-CRM114-Status: UNSURE (   9.59  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Edgeble-6TOPS modules configure HDMI1 for HDMI Out from RK3588.

Enable it on Edgeble-6TOPS IO Board dtsi.

Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- Rebase on top of Cristian's series
https://patchwork.kernel.org/project/linux-rockchip/cover/20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com/
- Update hdptxphy1

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 7125790bbed2..08920344a4b8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -4,12 +4,24 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 
 / {
 	chosen {
 		stdout-path = "serial2:1500000n8";
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
 	/* Unnamed gated oscillator: 100MHz,3.3V,3225 */
 	pcie30_port0_refclk: pcie30_port1_refclk: pcie-oscillator {
 		compatible = "gated-fixed-clock";
@@ -81,6 +93,26 @@ &combphy2_psu {
 	status = "okay";
 };
 
+&hdmi1 {
+	status = "okay";
+};
+
+&hdmi1_in {
+	hdmi1_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi1>;
+	};
+};
+
+&hdmi1_out {
+	hdmi1_out_con: endpoint {
+		remote-endpoint = <&hdmi1_con_in>;
+	};
+};
+
+&hdptxphy1 {
+	status = "okay";
+};
+
 &i2c6 {
 	status = "okay";
 
@@ -275,3 +307,18 @@ &usb_host1_ohci {
 &usb_host2_xhci {
 	status = "okay";
 };
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp0>;
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
