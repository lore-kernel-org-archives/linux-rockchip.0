Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66B6606A323
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 19:30:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NOcfC09N;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=lYP0n5Mp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cdDOPg9kIn2MvLEsTvKOMkp6oyv8QW9Y4Z5dndXFZjM=; b=NOcfC09Nf7W+uZNrOUSRmS0zap
	Z08chwR597JxhBAz4YeIF784Iflui7Fj71LpRDRwV9OzfOgDkZteCI1msI3fqRcl1ROBxQ53o6Da4
	bZGnWXoHBaeFF1/llkx5PoKRD5JFNJRRlTbhK77Ax1X6d08AwdyUQRFkpQQOFLfRFNsjWOX84ilsN
	wpiaSlOV2FXslqAlGQ3zB5tk2OltgaWcrK0iE9AjJfkANFyYh1QMCUrN/vkvJ2gQQXvP89t98quzT
	eSfQvmvAvLi6OdsEO3yMiKPBr/omxqU4UQA910a9dP0ZhSEsmGeHXDKLVmtJhZhWlgPdGv8Gpv+Y8
	jToVRphw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQrYS-00000004ucS-0FEL;
	Tue, 10 Nov 2026 19:30:52 +0000
Received: from mail-dy2-x09.google.com ([2607:f8b0:4864:36::9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQrYQ-00000004uaP-0lPc
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 19:30:51 +0000
Received: by mail-dy2-x09.google.com with SMTP id 5a478bee46e88-36caa19b0ffso1636295eec.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 11:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794339049; x=1794943849; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nvA1lxZEpIqjWhYL3aA6OSO2sYeOAGbwAuUAZj8n0+c=;
        b=lYP0n5MphL+1oBcmBvXASyZNYSrZuL/+dGZbDVhqKEsnbTCq2G5mfXtr83LrvGkD8c
         9ZabP+LlWfrGl1X/SbYd8t3Fu2Lo63tsWCMb3ilZkpdWlgf/Ox3A7h6QyE1/SSA49JIt
         sN1w9HUaveBHbTsiAkw/SRRjgC7BlRN/H6rsUFrxSfDRXtTX1m3ZEsk8eaRhxxX+DKF9
         /H1+oZw8fe7kK0KGGQUUmnuOpyqE596NCJrPL/5fWJAR7UbV8ku2X61IZ1g7Oh2EOr/y
         uCCvAozVMS5DpyMOFKPYHCws2JU1cBE2R4vEmPGetTHiqLoEh2bD4kw0P8nPkaQmkg2f
         C8IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794339049; x=1794943849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=nvA1lxZEpIqjWhYL3aA6OSO2sYeOAGbwAuUAZj8n0+c=;
        b=clZHKRo6sHjpHVwNnyGG8j8HXNEqqTVt/uSHFhgKZReh/nTFjmP9L34Fw7uWcQ3si4
         AXg6NdeqpXyePJPqV84F9C4o2yo7QAisD0EkAqgZRawP/yiBrIZcKarFNXKQoeak3o78
         PUBaae/a3Zk7fk5WgEjXaoM719QGK6HJe6TtugUROcalzO/7f73rW/KUFAGTZ6Ep0aAg
         1fKprbGBSIkfpE5RE/e9eeiK4xPnmzCJi7J20eP5n2ScY+yd2MN473b3v2ezvNYjS2Os
         +5Pd1He7UlPIiGuZzhWxnL01Csmf+6T6qJTY+kwo0S4OA3NVRx0f9W/G4+Wf5SdxKOzR
         I9nw==
X-Forwarded-Encrypted: i=1; AL+hErHSUOA6UIjceWu7sVRs0l5hRmfhL9ZZts8e8ytHmBbox3uoDk9CzEw9BVG71OD5FBXqKner8ZwCPiuZspC+iQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+GnOqSoC8MhitqBeRlmSIpqPZZtHSAdwzANOtyZ9zA6VmB1u2L
	4ZE0E0wzPBAAiFp7dH0GSF+uVIA76HPQWufewbT+eq+Q1b/6sQSwAbEZ
X-Gm-Gg: AYBFou1YXhMYdZA2d5mFTk3apO9EotfcqBkcNDkAdj7QIn370JdYG5rGevK7GAYrLah
	SMSLugGmawSFqieE98oXxpgzcmnZGQPYr+yeaM9KJAqhT61Gq+LohYJrU5bEdnHZcsLIMDmW9N4
	JuVzeMAw4nGRh7QGPqsmy+2mTOjAkihCUXjJGwddQeg0zoLBuH19CbKCYApH1OkmmBy/Qbtstrz
	uy7QwcrixDsCCzShGDrfCDkYtIOnHr9fU4zKKhabIEyeGsqTsoeBMffnsmTAnSCcuQ/wn8an9Og
	XnaeuHrUBCsZhpbb2uWaiszwU3mIszLFbWjptnd3odbLLX3ADdYmhCTWeRGh+STIBsRSGdjHiz7
	0oKCzh8KoBkdf77oFAvM0BAUerIW2HV8tJhdN39uXzTZytUPR/J+GBSQPCmzj82u6jDxXT8KFZ6
	ae/y0DzXvKk9ppDmrRLgQtTkxOrWHV29nf97fFtkwRIlAfDsaaBPNof9ierCPJ8Wyh+YeptrYgs
	0SbqQNSUSDccY13xrL3IgQZNQgK/BtSjj10KGLUqILLoKTvbUQNd2bNmp6baWUGfk+VmXaUrH4M
	F0BPzyOixnlypZ3ceNS+gi7d74d+CRalAYc4BB22zbiK4Pb1bg==
X-Received: by 2002:a05:693c:8814:20b0:36f:4615:9747 with SMTP id 5a478bee46e88-37680a5d9e4mr395559eec.0.1794339049150;
        Tue, 10 Nov 2026 11:30:49 -0800 (PST)
Received: from AERO17.taila7786d.ts.net ([45.95.212.224])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3751ad6f11csm7730435eec.0.2026.11.10.11.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Nov 2026 11:30:48 -0800 (PST)
From: Pufan Jin <cyan2254650260@gmail.com>
To: Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 2/2] arm64: dts: rockchip: add USB-C DP altmode support to LubanCat 4
Date: Wed, 11 Nov 2026 03:30:28 +0800
Message-ID: <20261110193028.512456-3-cyan2254650260@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261110193028.512456-1-cyan2254650260@gmail.com>
References: <20261110193028.512456-1-cyan2254650260@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_113050_273639_1F167EDA 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The Type-C port on the EmbedFire LubanCat 4 supports DisplayPort
alternate mode through the RK3588 usbdp combo PHY (usbdp_phy0).
The sideband use (SBU1/SBU2) AUX signals are routed through two DC
switches controlled by GPIO4_B3 and GPIO4_B4.

Add the DisplayPort alternate mode entry (SVID 0xff01) to the USB-C
connector and connect connector port@2 (SBU) to usbdp_phy0 port@3.
Configure usbdp_phy0 with mode-switch and sbu{1,2}-dc-gpios.  Enable
dp0 and connect dp0_out to usbdp_phy0 port@2, with dp0_in fed from
VOP2 VP1.

Tested driver stack registration on LubanCat 4 hardware:
- dw_dp bounds successfully to display-subsystem;
- DRM DP connector card2-DP-1 is registered and reports disconnected;
- typec_displayport registers the DisplayPort altmode driver;
- usbdp_phy0 registers the phy-switch and phy-mux.
Physical DisplayPort link training and monitor video output are pending
verification with a physical USB-C to DP sink/cable.

Signed-off-by: Pufan Jin <cyan2254650260@gmail.com>
---
 .../boot/dts/rockchip/rk3588s-lubancat-4.dts  | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts b/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts
index a94aaddb2..6c5a942df 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-lubancat-4.dts
@@ -323,6 +323,13 @@ usb_con: connector {
 			source-pdos =
 				<PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
 
+			altmodes {
+				displayport {
+					svid = /bits/ 16 <0xff01>;
+					vdo = <0xffffffff>;
+				};
+			};
+
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
@@ -342,6 +349,14 @@ usbc0_ss: endpoint {
 						remote-endpoint = <&usbdp_phy0_ss_out>;
 					};
 				};
+
+				port@2 {
+					reg = <2>;
+
+					usbc0_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy0_dp_out>;
+					};
+				};
 			};
 		};
 	};
@@ -857,6 +872,9 @@ &usb_host2_xhci {
 
 &usbdp_phy0 {
 	orientation-switch;
+	mode-switch;
+	sbu1-dc-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
 	status = "okay";
 
 	ports {
@@ -878,6 +896,22 @@ usbdp_phy0_ss_in: endpoint {
 				remote-endpoint = <&usb_host0_xhci_ss>;
 			};
 		};
+
+		port@2 {
+			reg = <2>;
+
+			usbdp_phy0_dp_in: endpoint {
+				remote-endpoint = <&dp0_out_con>;
+			};
+		};
+
+		port@3 {
+			reg = <3>;
+
+			usbdp_phy0_dp_out: endpoint {
+				remote-endpoint = <&usbc0_sbu>;
+			};
+		};
 	};
 };
 
@@ -895,3 +929,26 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
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
+&vp1 {
+	vp1_out_dp0: endpoint@a {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp1>;
+	};
+};
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
