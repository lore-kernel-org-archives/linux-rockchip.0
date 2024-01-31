Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC4FBC4828E
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 22:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cybzozNGYNnYxkNMj/iBXHTphcCSB9NkUY0jwwcgQBo=; b=yfLpAOcC/A0sc3
	cgaHkSVEvK68EaTQGlDW1KSTbL8QNEDl8W7B/snXnxP/IqROpVPLvNehH6Dez0DhNoG8yRfWu+Dqz
	cqMOw8wjaCRTcg1Daqn8p+hDwcwu/6tMkAy3Banxx0Bv4/sGtslQuQNlbnEJ7DSn6/y6Z0Ehb5T2P
	1wK5xFAAvke6ZII8QIIK8eLdtQS0/RqFpr5uAmFpbEhmLUPQVAphhyTzhlCQfLVMFa7L2//+5998T
	SqBc3FD++zLjBTVpfFsyYvYCfe+Y2twwDoAKVqWAO2Dp9c2um69L6I7Z//Eno+5sB+NwVxZm7Rybp
	Pk7i+paI4lLOKXMyiRow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJ7Q-00000005iEF-2pTZ;
	Wed, 31 Jan 2024 22:31:44 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVHxH-00000005TQ1-1PeD;
	Wed, 31 Jan 2024 21:17:19 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a318ccfe412so18353166b.1;
        Wed, 31 Jan 2024 13:17:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706735830; x=1707340630; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=m809IEfmsOt69Mzj+ewn9rd/I21cqoMQF9Z+13+EcwY=;
        b=cRWVHEhF3xe6WLrAEtI1mCusdCu2f67PUu/hrJQZ/mroz74VLXnbwgI5Pv0SHbBPM6
         Ge9V2SHTzR2EOBfATdkXctbfbdGSQTjuvxQuVD7eIqU8X3SAanTJeY+9uV5dHyif43kS
         DtuZK1yVezCs1nUAOApXUzNdoAWkOzHwYplY6QZp8jRiSlNgdmfZdUpxRs/56XOG1fcf
         zbQRMOGDAJKbZmBr5qL0Z/S+vEl1JmX/aOFejFMXibyhBuVfjVKnisNTjccdgTHQNIbw
         BTHM/2zKSYOnjVDbqry+Ihx4rP9H/KtIh+FI0EH6Nn06E2WXgAjzxOLWfO4JHX/xJGRb
         aqFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706735830; x=1707340630;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m809IEfmsOt69Mzj+ewn9rd/I21cqoMQF9Z+13+EcwY=;
        b=fnVAYWdRSGe4gWFBNLl/FG54Ddt9bfGq+NraeHUKv2SscgjEqQPcqI9Nyb1LvRKYlO
         XOhpnwhWPqKVO+MIXxARGb3SXlISxLhpdB0241di3XOB6FOiQKhElC98ly1AB68df4oE
         mtdbsNr3bG8+9SXVkkF3u8LjItBbQV9/f2YNAM9TetomPum8z8ENDiapYDQ27BkX/pnc
         2uypFtsaMlp2wt59DOfdVMjrLGv96BU919Wx7s+h/65h1ib3H6JuGgs+WrT0wl10UJ7r
         54sSPbVXtQhwA04+xbnU8pmdAATU0LrlbgmN3P5UBVzTuyGuT6ylwPgQZPOYxFszQ4hC
         5VHw==
X-Gm-Message-State: AOJu0YwGUSjRhHpvoX/gjXiwDdNtoLpAzdvT/cwMwThAheqZyoHIQsYW
	3+r1oRLeeLWi2aSflrjyjt9jy0rnjLrC9QwXoPFe7HsIT55aifW0
X-Google-Smtp-Source: AGHT+IErUVMAdxFTL73O0fpk+TAYJywDN+0bWX9BrjrCHQ2aPbxJ4ulDwCy4QPkkxKUz88lXPQE+LQ==
X-Received: by 2002:a17:906:b892:b0:a35:6667:b3ed with SMTP id hb18-20020a170906b89200b00a356667b3edmr2101448ejb.8.1706735829899;
        Wed, 31 Jan 2024 13:17:09 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCX4l5u5Ajq9ylzzqYpkqzDFhuvJh6UcTWtUwBEF20/WVE5VlfDsUyor+mEeZhXLOS2GpQoSC9Sgo88wnvbODLkZGVeRbj9lG+gIRVnZP1vsjzbL2G8/xcZUxrmCYT/qtoTMBprmmHqnJqwDTkJA6vZ4g7eo79nvaQ66KWmrR12G4BSEOCMzNZrUO9uruaVQ2jISuTjR/x2xCoc8q0EPUi6S56Wz20U+XQ3GfsmmRq76t4ptsu1HiXh5tOOx1FYeVAxL13LZXKK9mYPpqxSJDV5ZWWsk772icN/1jsPaFih0xzaiBrBt2kULGo7L2yPgsPLl+OdrHDPs0ox70Acg3WsG0ti+vTFkGDdmwZ3Y9PnSqYrRJWmFOIeXvc9C0V9Jfha+QpQMuU/QN92BLmS1l9P5mUcVvIljvPlocx6TTEE9Q/+ZenkbwsEVGHVFh2goYy1Exqm/CcsgmuejRhklC2OVO/VN88jzLu6+Pd1YFVQkX1nH2durRSTdTfWH4FlTdugj1dxzEc8uY3FWDM2/82OoNk4Q6AF9Wv2kcYESlYNmyNni00kfClh7JtANd897aYugEORlc76hXEgrq1Y=
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ty5-20020a170907c70500b00a35a8571419sm4040634ejc.135.2024.01.31.13.17.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jan 2024 13:17:09 -0800 (PST)
Message-ID: <e5dea3b7-bf84-4474-9530-cc2da3c41104@gmail.com>
Date: Wed, 31 Jan 2024 22:17:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 5/6] arm64: dts: rockchip: fix rk3328 hdmi ports node
To: robh+dt@kernel.org
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, tzimmermann@suse.de,
 mripard@kernel.org, markyao0591@gmail.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
Content-Language: en-US
In-Reply-To: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_131711_579182_A9231364 
X-CRM114-Status: UNSURE (   8.56  )
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

Fix rk3328 hdmi ports node so that it matches the
rockchip,dw-hdmi.yaml binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  keep reg-io-width together with reg
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index fb5dcf6e9327..a73234b11ff1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -745,11 +745,20 @@ hdmi: hdmi@ff3c0000 {
 		status = "disabled";

 		ports {
-			hdmi_in: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+
 				hdmi_in_vop: endpoint {
 					remote-endpoint = <&vop_out_hdmi>;
 				};
 			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};

--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
