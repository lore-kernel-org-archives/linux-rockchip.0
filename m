Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDE6FCCF9E3
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Nov 2025 21:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/AnoZHdUhbTM6JlhwWD2oQ5KzN4B1kqzBKLyxKiokCU=; b=4T7+DeR1xxhEh3
	+DPYZiHOwQedyIY8yV6U9i+93soFqp3aFOs7+FHUbcENmX60cuMTYJGlmNF/cQ+M5Kywh6sd3+S82
	XfK0KmFIcMN23cWBXspwnkVcCJ7mxcK3GyjWAlKVvMBA0L87RlRz3m4ajUqQ/hrMWYGkUI0dxu8aa
	w3SVsSIr16eekEzTYOIZkVQuFhh7ecltCLaSd7K8gkEJsWKOLYlNcMu9Wc2zbfVKqKCjzsS/72vcz
	xlM9mOYz4Pj6nUJLwYDlrW6b8APCV0irD4eGbnyGOHawNkbrtKc0c6XhFQOygcnemb4IDpV7npBxs
	hrIKznsVKACXQn+FHJ1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHULO-00000001Dwy-0aKm;
	Fri, 07 Nov 2025 21:50:06 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHULL-00000001DvX-1n6s
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 21:50:04 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-44fa4808c15so248106b6e.3
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Nov 2025 13:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762552202; x=1763157002; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oruE4G6E0HzZ52urZnTY6HJtCupwgaLtwj8wmXDsPEg=;
        b=Z9QQLkTukCxbr7PDXv2KhhBS12o/Zh5YWMrlZpUmcymPynveUBm8xnuzVsS7CCp6wm
         yKD4WZUH9ibld9CgIl+zIxOyABD1HxqrHaVFivZ8SVHLuFy6CFeNVag6ZZw8DVEmXRwT
         5aqkfoLc/wGWPpO9R+yTjnEdhQx1QH7JwOpoCgvl+mgaLfRQX0GepiO2VTix5SXHkf7O
         jFq7akHHYW4L2c7ptBakyDwFg26FO4nLB3ERH3eCxuRVHUbLoE59INOrWiZwJkkj2o5Z
         TL2h7j3vc+vncqkhb7CHXVrqEydANBGxQ8SDWXpZeilysPkWbYC5uZuUBfRDl6gyIF4S
         gkPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762552202; x=1763157002;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oruE4G6E0HzZ52urZnTY6HJtCupwgaLtwj8wmXDsPEg=;
        b=lm9wcJBmCBEm7DllMp+mRNljeZik1aY8wMNc9wWi+xD4yMAkRcRhaVxOM4jzr/9ZSt
         CB0OjUsS+Islf45bpR5CziHm9QLXRwA6+DH1TpTY5TdwVjl+7ZFRdZ1c8NHCV+8Ddb8K
         1AC6TKPkNAYm2LW7AqtgC72BmYfWzMYn3ugO6KurZFIhXlAvud+Zkdu01OU9didB6KRr
         cZ/B14vyEBMvByf2QlKY/3o1a7qnRLQ6UWUTNaMHIpa1RXEob4kvfHqa3wQFYJWDGTDr
         d7hWcBC7DIc9Qv1mycj/gyXB0rg+Gxq8VwyGv3DBKGh44rsruPurI/JaW5qX7jdrOhqV
         OCXA==
X-Gm-Message-State: AOJu0YyuuwGvQDQf327U2qd35Xt46CORYqoY9OvcAo7BWI/PErteTXwX
	FKM0Dn7q1ZkWjFz088ug1ESpNvLmaVhpJwfSbZX653bJ7l+8iKFF7Vwz0ZJ7rw==
X-Gm-Gg: ASbGncssOrmThkarukvpWL83pvMRx3UQO6SYCvA+HTdX7ExeeeY1i7FzOef8srYDb2z
	u3BnxYjjGcAZO1vtIoQItsgJiVTa56tzGuYJWB4CU4fjy+kr6+57jLj5dCU23RI9vbiZrMaWul3
	rHA5OqK95bpcS8m5MRIoo+vQmv/Bx7Z3mSRH1CoDPmtufFfg2Hh43ZlWS9XRLb6EJglJGv8ITKx
	2wFrkWTYPWtvkpq6xdOjbv/LKo8B35k+4NRRTCmcv8uunHctPrBilcXp3PmTEV0qo0iAKXwq0jZ
	cTRHl17InT/DOi2fzVcKfA7WtrHrMDpOByvLNQk5g+gUlRF03Jp98zBzMOjgVGv6HQiP33mfQqU
	9yjCo8Q+Vdn6GUB2FyXTPROh0lT5xmt2MzCoXi60Ep5DGw78qB0smqQBqpEM66clpNfy7Hmu19Q
	==
X-Google-Smtp-Source: AGHT+IGnHtoS06uKQp9OJNKvErPkxz4GM53Mjudicm/94eiXH2/xC5iIjNLtSgIiCihKYR+XercU0g==
X-Received: by 2002:a05:6808:1b11:b0:44d:a817:2d72 with SMTP id 5614622812f47-4502a4028b6mr439896b6e.60.1762552201700;
        Fri, 07 Nov 2025 13:50:01 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-450027a46bcsm2787517b6e.16.2025.11.07.13.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 13:50:00 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	damon.ding@rock-chips.com,
	sebastian.reichel@collabora.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable USB-C DP Alt for Indiedroid Nova
Date: Fri,  7 Nov 2025 15:47:24 -0600
Message-ID: <20251107214724.878955-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_135003_477914_54701E8D 
X-CRM114-Status: GOOD (  11.12  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Enable the Display Port alt-mode for the USB-C port on the Indiedroid
Nova.

Note that while ROCKCHIP_VOP2_EP_DP0 is defined as 10 we need to
set the address to "a" or else we receive a dtc warning.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 80 ++++++++++++++++---
 1 file changed, 67 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index dee053afc6b6..174d299cc6bb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -190,6 +190,22 @@ &cpu_b3 {
 	cpu-supply = <&vdd_cpu_big1_s0>;
 };
 
+&dp0 {
+	status = "okay";
+};
+
+&dp0_in {
+	dp0_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_dp0>;
+	};
+};
+
+&dp0_out {
+	dp0_out_con: endpoint {
+		remote-endpoint = <&usbdp_phy0_dp_in>;
+	};
+};
+
 /*
  * Add labels for each GPIO pin exposed on the 40 pin header. Note that
  * voltage of each GPIO pin could be either 3.3v or 1.8v (as noted by
@@ -371,28 +387,36 @@ usb_con: connector {
 			sink-pdos = <PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
 			op-sink-microwatt = <1000000>;
 
+			altmodes {
+				displayport {
+					svid = /bits/ 16 <0xff01>;
+					vdo = <0xffffffff>;
+				};
+			};
+
+
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
 				port@0 {
 					reg = <0>;
-					usbc0_orien_sw: endpoint {
-						remote-endpoint = <&usbdp_phy0_orientation_switch>;
+					usbc0_hs: endpoint {
+						remote-endpoint = <&usb_host0_xhci_hs>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					usbc0_role_sw: endpoint {
-						remote-endpoint = <&dwc3_0_role_switch>;
+					usbc0_ss: endpoint {
+						remote-endpoint = <&usbdp_phy0_ss_out>;
 					};
 				};
 
 				port@2 {
 					reg = <2>;
-					dp_altmode_mux: endpoint {
-						remote-endpoint = <&usbdp_phy0_dp_altmode_mux>;
+					usbc0_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy0_dp_out>;
 					};
 				};
 			};
@@ -973,9 +997,22 @@ &usb_host0_xhci {
 	usb-role-switch;
 	status = "okay";
 
-	port {
-		dwc3_0_role_switch: endpoint {
-			remote-endpoint = <&usbc0_role_sw>;
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			usb_host0_xhci_hs: endpoint {
+				remote-endpoint = <&usbc0_hs>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			usb_host0_xhci_ss: endpoint {
+				remote-endpoint = <&usbdp_phy0_ss_in>;
+			};
 		};
 	};
 };
@@ -1004,14 +1041,24 @@ port {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		usbdp_phy0_orientation_switch: endpoint@0 {
+		usbdp_phy0_ss_out: endpoint@0 {
 			reg = <0>;
-			remote-endpoint = <&usbc0_orien_sw>;
+			remote-endpoint = <&usbc0_ss>;
 		};
 
-		usbdp_phy0_dp_altmode_mux: endpoint@1 {
+		usbdp_phy0_ss_in: endpoint@1 {
 			reg = <1>;
-			remote-endpoint = <&dp_altmode_mux>;
+			remote-endpoint = <&usb_host0_xhci_ss>;
+		};
+
+		usbdp_phy0_dp_in: endpoint@2 {
+			reg = <2>;
+			remote-endpoint = <&dp0_out_con>;
+		};
+
+		usbdp_phy0_dp_out: endpoint@3 {
+			reg = <3>;
+			remote-endpoint = <&usbc0_sbu>;
 		};
 	};
 };
@@ -1030,3 +1077,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
+&vp1 {
+	vp1_out_dp0: endpoint@a {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp1>;
+	};
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
