Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6036C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 06:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Iq039RLf3FnRdn3+I0PN+vsEaqO+EZsCoUE49xc4bE=; b=UD+wuLeOXnWA8a
	OdHOIYH9SjvM9zYm1CYVPjkEGyijXjGDaaQ3yyVOSOaOQajGdzrAZBsHrh/LYZx0SQKYmxawBMrCc
	Pi9ManZUoegPo6kZx9yz5NPXe19fY2rV7HOmktKF6V1XgM2YDkoRjFUb5d93Nj5VhbZkg3VRrI1f1
	XZ+A96Iami6ufKazH2c1SUdjFshot9iJgcWIUObV/Y4DmCLNNDvADI4mynBdyfWAagkv8CUwL4Hd/
	kmL/eZwiVyPj5Z9ILevV0WDqtXcBPhw/aS/jxlJUO+/GXrj19SgDI9ml+CrbViWo/fEG9uWGZQVyP
	1ScQAzvcMIJW6lDEQ6PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzv0U-00BjjE-QP; Sat, 11 Jun 2022 06:54:02 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzv0I-00BjdD-F2; Sat, 11 Jun 2022 06:53:51 +0000
Received: by mail-ed1-x533.google.com with SMTP id v25so1370867eda.6;
        Fri, 10 Jun 2022 23:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ICXO/DGJ5boB7mlSd4xiwerKyKmA2ZX08XZZ4pcrKPM=;
        b=b/4pAamShqovIyBl8iI9ztI/LhenZJL57ow6DajHUQpr3t0AucBi/h7muZw96HeOFp
         2t7PkARM1BNVc8+Y4VvVNq+fSBa3XUF+EtEpjh3fu9+ERHFzn3o1Fv6kB7UpzDOZzS22
         965pxi8mqfSrL8XRJz1PqsBoDOrAUoRS67UwiyQz//jPMdKHoUpAtvM5tlwY+jT23VBy
         +3l+FWJN7hB9lw0FuLx+FfqKwhAWBhJbnOx67vP4EWn26XgiLGAH4K3m0pKNF5xjot1d
         NeCuen2wKJ6IwpoZAKKj5sdxSHMC1VB1I/CTsoqblrUkkMdbjQfMgTirQfRi3Qjibbbr
         o6Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ICXO/DGJ5boB7mlSd4xiwerKyKmA2ZX08XZZ4pcrKPM=;
        b=LAW2l9abusqrKh4eI1/U9UivF+gDR9MuF7wpXhpt3WJVJkLXN374+tb+2PQoRasw+X
         lOJjfx+tPgjXl8JvKFUAt6NuOKYpo0GR6wOqDbve98CYgSRsamraDIghEQnFC/smsMvQ
         +Xp4pXEVEFy/3B7gEDBZ9FveZ9CGGurP8wfOV7YKg41bI3VS0TnyjkV2qjZI+InzRS0s
         1R5S0CIfUBEgD6X59o/4AS/PH7WZaTawfzJIlE5MIacmETv3gZy8RY74x3Zs3IiQUDi4
         t3IG7/PKy+qaowl4V1SaGk9nA6vJeI9AAfZUwW2J3esY8sLq+NJ7YbQexMLB078wS1Zn
         7/kA==
X-Gm-Message-State: AOAM5330jBlrRLk5AOG3rASHznzFZeBY5QUQOGA6Y4eD/ZHxdm1wwi3i
	/u8E94OnUb8yOFxTUxwt0Yg=
X-Google-Smtp-Source: ABdhPJzX3VjXieTTER669Yy2w3Q2bZlH8GkmHVjM5Re4odhwdth/2IlxLL9pZkieW72w00pl5GAbgw==
X-Received: by 2002:a50:c407:0:b0:431:39ed:1c5e with SMTP id v7-20020a50c407000000b0043139ed1c5emr38811155edf.402.1654930429342;
        Fri, 10 Jun 2022 23:53:49 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id v14-20020a056402348e00b0042dc25fdf5bsm874261edc.29.2022.06.10.23.53.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 23:53:48 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: rockchip: Enable HDMI audio on Quartz64 A
Date: Sat, 11 Jun 2022 08:53:00 +0200
Message-Id: <20220611065300.885212-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220611065300.885212-1-frattaroli.nicolas@gmail.com>
References: <20220611065300.885212-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_235350_573382_8C48E42E 
X-CRM114-Status: GOOD (  11.15  )
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

This enables the i2s0 controller and the hdmi-sound node on
the PINE64 Quartz64 Model A single-board computer.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 59e364b724cc..981c4aeea814 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -310,6 +310,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -540,6 +544,10 @@ &i2c3 {
 	status = "okay";
 };
 
+&i2s0_8ch {
+	status = "okay";
+};
+
 &i2s1_8ch {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2s1m0_sclktx
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
