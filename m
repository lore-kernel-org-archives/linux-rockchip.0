Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 705FBC25B74
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 09:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GsBBXdDrNO6wgPm5lx2KDrMbt3f8RqXGhquiT9xiwwA=; b=oVJwCP8r4RTbn+
	i5vRoGdjxv2ZF1pqiJlwZxTS/i4qdSmKmI3A9kioGurAXi+/n4wH8r8lFTATG1HcX1LmlI7CkBkNp
	eSzQaKxpIl3rJQ++ODX+AVJTcliPgnyLVOfK+Gm+GpjsniD4Z3MoHAXIkAfuKQwMmL/x1+nbmZQE1
	RiCa43lCZJBN//RRakDNSTcVdrlQSqqPmTZrnjok4qa4kDB7MMxDyQRYFvW3UXEvERZKlFXDWDQRw
	z1CoPrcHwLHhGmzU2jiZHBMD63DwPtwNwp52w7ZhF70wyT1n7aLOtlWY6EB/Olx1MBxIFGXTk70LR
	BDGDCPbO4uEgh5kLd1sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3umj-00000006obR-1gFY;
	Mon, 06 May 2024 09:37:25 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3umh-00000006oYh-0AIh;
	Mon, 06 May 2024 09:37:24 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a59b49162aeso308797266b.3;
        Mon, 06 May 2024 02:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714988240; x=1715593040; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DPJZwHx34N3Ow7z49nFpdVnJJVNFy+nT0MarnQ8cM+A=;
        b=krP1dJGYU37wjpaaoUV4uawIaL3nlX6sVa5G3vOmq1kuHoZ1sO8PERFmUyIwrloVUq
         npf8QA7NYZbGCzsrXZe4UbIZbvqOQ4vF0EL9B9OVbyxYQxpRNrv8AAO4aGHWAVRcpukG
         xEDGlqxDyGthl1ZqnB3plw0CAhKmpYkbrVJpLhcJbLSl/VOHi12YNUDoirOK0GqczoNi
         7FULFJQdhMfnxIz/58Y+sE9xNy3eiLi1O0qI9khwIe9Z7BfkhZUIVJK1nK4VNh0uKOFn
         k1eMSBZZi1DCfwg/3/aV2LzFzBSLhrJlVWsAKjFXmVlzsA4aqinsttjCjYHnvDy8xuCp
         WGqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714988240; x=1715593040;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DPJZwHx34N3Ow7z49nFpdVnJJVNFy+nT0MarnQ8cM+A=;
        b=w/hOoK5frwP73POnpS/RCW3gPc3JK8pwMehs9wid09e0PuZCImP0gpO4EzgITNCcnZ
         GVuLai53OE67c9vOsZjm7OKimqL39Ap3Dts+dNMSRwd6F+6pknoh4y0DlEuHV3zLbQOe
         b10y1c0L/XJm0L0OUITXirbj1wyRjGHEki4VEyQo/+MtjyuX65wf7jBvXCsOzaO07bfp
         oZfid5RXjnZNjtcES0FPHWlPpsGQIYslzrAoj8fOYH1DQgLdg2vuXNgo8n6KVSYOFCDO
         yXfXsWbAF3Mdc78BijqvYC6g8uQ9H2lIDBPZYUYLjHzXvqRfEQbPcbkcYqA6JvOgSyOA
         /ftA==
X-Forwarded-Encrypted: i=1; AJvYcCURle+/BFAjyfnTKg5eE9Af3lbAEWqHpN4N1VQKSfXEylD+vZmKBtXkL1RW0o8GDlPkypaHka/tRux6AThoOPJYk/OKUzcstYEdGDLJtdTrgVQ1kMLPWmAYZnPXRkm3Jcg++e/ZNShY7IB1vqR5yyAGVYmUPLZXM+Y=
X-Gm-Message-State: AOJu0YyTjeXpdkg3lVxKsFAejlvP8aLIyDq2g/18cgYAng4CH15AzdAB
	3jnznma44EFmH8QksiiHk/BEO/97IStEbgLqWH+yFpoKTFJ2xQkC
X-Google-Smtp-Source: AGHT+IFaEDRcX/eXmw7esyfzzdC59VSTAyURsII4QqC2jC9dS3tj96yWHX5rUfe+NF44OcXPw3e8+w==
X-Received: by 2002:a50:bb42:0:b0:570:3b4:53ff with SMTP id y60-20020a50bb42000000b0057003b453ffmr6300213ede.6.1714988239866;
        Mon, 06 May 2024 02:37:19 -0700 (PDT)
Received: from [172.30.32.119] ([2001:8f8:183b:f2c::d35])
        by smtp.gmail.com with ESMTPSA id f6-20020a056402160600b005722ce89ae2sm4983647edv.38.2024.05.06.02.37.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 02:37:19 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 06 May 2024 13:36:34 +0400
Subject: [PATCH v4 3/6] arm64: dts: rockchip: add passive GPU cooling on
 RK3588
MIME-Version: 1.0
Message-Id: <20240506-rk-dts-additions-v4-3-271023ddfd40@gmail.com>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
In-Reply-To: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 Chen-Yu Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1714988224; l=1255;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=QMB2BQUFw504Si0nPhgwd4U1cGB1jsKPa2V0a7oyVXA=;
 b=kOJ0Ccq6KM+zlPF5AmBsuM09NjiaXHs7BkcQ43+BtvNRKJFT8LEz+ydboCdWRkGjp1pcFJNgq
 YfaX5AKGTxsAeKGf08Q0SYC6Lt+B7TVrNrDrlkoUuC7CKxfBqCVafZX
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_023723_229844_8D57E804 
X-CRM114-Status: GOOD (  11.40  )
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

As the GPU support on RK3588 has been merged upstream, along with OPP
values, add a corresponding cooling map for passive cooling using the GPU.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index ef06c1f742e8..57c2d998ae75 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -2487,17 +2487,29 @@ center_crit: center-crit {
 		};
 
 		gpu_thermal: gpu-thermal {
-			polling-delay-passive = <0>;
+			polling-delay-passive = <100>;
 			polling-delay = <0>;
 			thermal-sensors = <&tsadc 5>;
 
 			trips {
+				gpu_alert: gpu-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
 				gpu_crit: gpu-crit {
 					temperature = <115000>;
 					hysteresis = <0>;
 					type = "critical";
 				};
 			};
+			cooling-maps {
+				map0 {
+					trip = <&gpu_alert>;
+					cooling-device =
+						<&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		npu_thermal: npu-thermal {

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
