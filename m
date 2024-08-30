Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16BE0CA1005
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 15:33:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WJSctYd2iRB3ioMGKRlyzme1HrW/f8Ldl+4MbDbYVA=; b=Moy3fNy8Jp/QjZ
	VG0xAbb7ddXhEjDTrtKWn3eIZTCplesCDBz6bT8FLEsnzNnVVAPtUBurNtGeFz7FDsZIAYKQpRA0u
	RxU1sSgACC0yRWfUB73tDVPFBq1fIx8+jJtpxFExk+gRDNC68bS+ljImFbCgAEOxJZg/IfXNgPTjT
	zPV0xi6RjVY67Im26tvwntBsSiEQdHSbBDO9P0a4AYI4sSfI31jK2jkJP+gFBBi6l2BO0AC5H3llh
	ehAXSVYJvlEy1UA77VM5g3wN7Bq+vx4aegSE73ltdt6ytZFeqUxwmyvkPehPk5v0O6cuPlMXMm1eT
	XIyILiwd/BpwmbjkWDbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3cs-00000006pQ1-0VHM;
	Fri, 30 Aug 2024 15:33:26 +0000
Received: from mail-io1-xd31.google.com ([2607:f8b0:4864:20::d31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk3Yy-00000006nsR-2Uv3;
	Fri, 30 Aug 2024 15:29:25 +0000
Received: by mail-io1-xd31.google.com with SMTP id ca18e2360f4ac-82a238e0a9cso53040039f.3;
        Fri, 30 Aug 2024 08:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725031763; x=1725636563; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cTbfsd8NvXwzdBfTnE3JqlL7neYrWLzy9hOrmppNIdI=;
        b=ctUiuKW7aUikV+ekylQGWa91Wz4KP2uCMw6Yv/kHjKgGcX0K0mCibuHZdRVHbuZtib
         ioQ9HrMl3IjfcCT/RjOxs4F/04yfR+BWhmVvFsar+ohq2ut6egMXR/X7sNWsjFh4OGaE
         HT+UgnYKzMwHh9CPjXL8/KaaixbpHT/zJm+cMaMoSkwzFxeaZRXxo6G0PQHspGYXkJol
         aBJVdTcvNCYW2bDHDT7ZaJa6DJy7y3ib1QWIdk7St1b0llmcsEnGfhEljQxlvKmNQG4Z
         6w4k6sHoSENBD9pai6+rGurh/0a4keF3fYzd0cg7bdIwtqechi7iXdOKDhn5Rwa/Olk6
         OBig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725031763; x=1725636563;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cTbfsd8NvXwzdBfTnE3JqlL7neYrWLzy9hOrmppNIdI=;
        b=iEeHZaljS34Oi18JBAa33LNgCc8iiwxwVV8/7h99DtA57lncr7URLVbAQzPWaMdKgP
         w3gdr+j5rXgdKmqV7HUa7jkEX2MNn3cVg8u4hKduiRwFHKl4qSFiNmQgUoXejloVRniK
         l26Pee/oiRWURq2ctLBJchiXHWLzi4O5+IJkOMEH4t3vS3rFlwTK/hlWF3V4J9OaKhAa
         M3IONUzDg86hX9ZX9gAi2qbiYatE1tLEbSWkdqOCmXr81ZJBn3rN4VKReZvAWRrLHxyB
         svXVteUwErf3HitM6DP+INskc+ivYWQnw79IUDnqHfOszQXFGYC6FCcLcrvU4d3asEpw
         vCpA==
X-Forwarded-Encrypted: i=1; AJvYcCUVblBH+duouQhjWxNAV5E2wI13+uaVVg0ssO9cpZluoFAkW6KH2Lmsl4qKRsgK3mn04Yc6MKrK+q6yqVKOWapW@lists.infradead.org, AJvYcCUu/fkRZAFjO21qRUFSrgMDF55TtSDgi88nbYF/VTd+mNasoAiJRio6K3gFzQJFfxpdTu9K3wLy0xUzCXSzhSU=@lists.infradead.org
X-Gm-Message-State: AOJu0YzuPYO3it0z/LiJlWt9Pysn9zNuMg8AElJE5KCEmsYDghfqf6VE
	JGUwuaNl4CzgDef0nLT6g7dCenuMdef/7uB8JzC6PAXCFz+yvBcA
X-Google-Smtp-Source: AGHT+IEXGRlQ5gn33om3VWyG+YHGotjBlsNvFVFeEDYCIhlYkI3wne4qPmIsXyn/6trLmn+Wp0F5NA==
X-Received: by 2002:a05:6602:160c:b0:82a:2385:74a6 with SMTP id ca18e2360f4ac-82a238575c7mr412786839f.5.1725031763161;
        Fri, 30 Aug 2024 08:29:23 -0700 (PDT)
Received: from localhost.localdomain (174-20-195-90.mpls.qwest.net. [174.20.195.90])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4ced2eaa1e7sm778553173.132.2024.08.30.08.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Aug 2024 08:29:22 -0700 (PDT)
From: Shimrra Shai <shimrrashai@gmail.com>
To: shimrrashai@gmail.com
Subject: [PATCH v5? 6/6] dts: rockchip: add HDMI0 entry for RK3588 and change VO0/1 GRF compatibles
Date: Fri, 30 Aug 2024 10:29:12 -0500
Message-ID: <20240830152912.9092-1-shimrrashai@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240830152132.8894-1-shimrrashai@gmail.com>
References: <20240830152132.8894-1-shimrrashai@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_082924_661395_50AEBF9C 
X-CRM114-Status: UNSURE (   7.94  )
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
Cc: algea.cao@rock-chips.com, heiko@sntech.de, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, robh@kernel.org, rfoss@kernel.org, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, ldearquer@gmail.com, devicetree@vger.kernel.org, conor+dt@kernel.org, tzimmermann@suse.de, jonas@kwiboo.se, s.hauer@pengutronix.de, aarnoud@me.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, markyao0591@gmail.com, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, daniel@ffwll.ch, andy.yan@rock-chips.com, krzk+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index b6e4df180..76cb0f7f7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -582,13 +582,13 @@ vop_grf: syscon@fd5a4000 {
 	};

 	vo0_grf: syscon@fd5a6000 {
-		compatible = "rockchip,rk3588-vo-grf", "syscon";
+		compatible = "rockchip,rk3588-vo0-grf", "syscon";
 		reg = <0x0 0xfd5a6000 0x0 0x2000>;
 		clocks = <&cru PCLK_VO0GRF>;
 	};

 	vo1_grf: syscon@fd5a8000 {
-		compatible = "rockchip,rk3588-vo-grf", "syscon";
+		compatible = "rockchip,rk3588-vo1-grf", "syscon";
 		reg = <0x0 0xfd5a8000 0x0 0x100>;
 		clocks = <&cru PCLK_VO1GRF>;
 	};
@@ -1254,6 +1254,46 @@ i2s9_8ch: i2s@fddfc000 {
 		status = "disabled";
 	};

+	hdmi0: hdmi@fde80000 {
+		compatible = "rockchip,rk3588-dw-hdmi-qp";
+		reg = <0x0 0xfde80000 0x0 0x20000>;
+		clocks = <&cru PCLK_HDMITX0>,
+			 <&cru CLK_HDMITX0_EARC>,
+			 <&cru CLK_HDMITX0_REF>,
+			 <&cru MCLK_I2S5_8CH_TX>,
+			 <&cru CLK_HDMIHDP0>,
+			 <&cru HCLK_VO1>;
+		clock-names = "pclk", "earc", "ref", "aud", "hdp", "hclk_vo1";
+		interrupts = <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 360 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "avp", "cec", "earc", "main", "hpd";
+		phys = <&hdptxphy_hdmi0>;
+		phy-names = "hdmi";
+		power-domains = <&power RK3588_PD_VO1>;
+		resets = <&cru SRST_HDMITX0_REF>, <&cru SRST_HDMIHDP0>;
+		reset-names = "ref", "hdp";
+		rockchip,grf = <&sys_grf>;
+		rockchip,vo1-grf = <&vo1_grf>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi0_in: port@0 {
+				reg = <0>;
+			};
+
+			hdmi0_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	qos_gpu_m0: qos@fdf35000 {
 		compatible = "rockchip,rk3588-qos", "syscon";
 		reg = <0x0 0xfdf35000 0x0 0x20>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
