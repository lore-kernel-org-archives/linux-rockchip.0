Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B6E0CAC58F
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 21:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vCVVzc7R9NO9HR9ojdwC4NrZPLegndFVoOXEdgwDuEs=; b=YbCQ88kDex6nqi
	rOFxRxEb1KLJIBdQt5zlVRuAAzZUr65xEgYfnFj83KV+2fW4tFAq2SB5t/0LKuSdyGMXNIc0DsOuj
	aSYsr5HIGgHRqJ625GWsZXz8YqZjg1GvXOx3kYwS1lXOifbhk6pvuyI1NMDgCtphyzaDWWDj5MIbd
	iQOfrMSbVb5dO6RzcscpjaUJtFY6LslAKL7A+AAYSYN2Za0drVFVhWrfOVeY6x+v5j428lKMKJXOK
	AXAwAPw78cJZo7xqTCoMpsz73Q3zHX4W9Mw8bnGqvYQFnLaH4TuIaUSdUJ88bUXXQ0ZC4Vm/fnGXx
	TxbP/Kc4M7YfGPxad7Ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSmb-0000000Gy21-44PJ;
	Wed, 10 Sep 2025 21:55:17 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSmZ-0000000Gxyl-1xnw
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 21:55:16 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-6229f5ed47fso46779a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 14:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757541313; x=1758146113; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ctGrtMUUzLcj2YH9vor84osvFGl8+UB2wXjHaPFfuV8=;
        b=I61wR/+o/lQeg5zQu9VDorECzPGapYTPBvf5RahTaxb8mWTjgYp+swO3YExVYCF/Nx
         qis9uOgpzDsAj4HRXfL9BvUEZdVlcH58kTbP5Ol/N2WQbxCEYzor3d/ZOmeUvbSAWyBp
         QtGVgB6oiB7g9gawm8hhp1lene4UDeZnkTuwxfLAa/+wa1+ZDlG0f1ZajgUqPJzh56Iq
         BoEjzW3EcGUy9Wpzdg3ieEprIC/KBn13kw73IS6oPeLIxlR4lxVzmwarvnTk6F4Er0Xk
         bwhhI2PusM0x1O/WpWkUnIXYCAJsx/GGQpFFezeq505mZLLt2Ax4/GeoFAmrCZZpid0H
         vFUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757541313; x=1758146113;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ctGrtMUUzLcj2YH9vor84osvFGl8+UB2wXjHaPFfuV8=;
        b=cc2wx4B2dkfBR5r2nPgrJOqA62s7NzZp1nElewgjhzeqUg27MgeNLYUzApIRTsqqVf
         E9CDX0dufWElMFbTjN7Iq5G1/gfjc0sGdn+Iew09nICSd50N/Xkn/QDt+uKf+9lUIXFL
         huR4oIA14vZWCtQcAQLfPCd1TwjrtB9wu/7A95WwWWGqYAlNItAcz1vKcVpE0QVev5oK
         yqfono2U3oJVrS7i5EKRxUNS19vPnuMQy+sCEw9wylXYdQ969n+NFdQoeJ64/yVoMj0Q
         XyvlknUJfExsIKp8PsDb05qvfhBdNoJde2y+E8wpnE113LhAXUJA3CVPMToM53z/IbTl
         kwsg==
X-Gm-Message-State: AOJu0YzDlXmp+l3k/XlBD0BxMIIDJ8OGcXtEuOlEpMIGWMXcF44D7IFB
	yesH55AeZeWyn09jTm3cGWmzfdu2Yl2dp6xuW8X/zbUjn/ao7yHjBH/hZ4dApYiD
X-Gm-Gg: ASbGncv8KaaIqOml54YPoSw+IPuDB5nG1ZHfm/WuKP5oxzYbV6MxuwS4OcP73bnIu5d
	ZWjFakByOb+zjB3xdGvZpR/JNgsEcGb59OvZXTyvIV2GCGc2IuqlfiYu44A7nSjKw07xT/63jtA
	BFb7mjkELDJo2hj0Mx6hL377JAlamJa2g7tYwqHI2mPH3bzomiVnIlVE+YPTp9pih4B973i+owr
	tNXKDPKaZbJXMDblIJ8fWxVZPRPqMlLKzMYfcit+1kPnJloySJWO9VqDKZFXRql+NPgEuvvdGrz
	Ri7tBR0pIbLkIL79t44O3r0S/rIGQEHTGdWadTrVL6G7pwJkU5WFjy4KFSOz4JYDEq9q10uDt29
	VMFAddRFWXcHh20tCgfADo+Ik0d+qGXEpZMPSZ9f5pw24Hd4ZgS6GT4BJKg==
X-Google-Smtp-Source: AGHT+IFI8IDur67FXp1ibONvqq/BCk0A1z3EG6Ddeg555J8lY/znquTrht2y3H1sz2sdAJ7xygqOwg==
X-Received: by 2002:a17:907:2d1f:b0:afe:cbfc:377a with SMTP id a640c23a62f3a-b04b14642efmr1877886066b.27.1757541313182;
        Wed, 10 Sep 2025 14:55:13 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07830ac2b6sm240517166b.27.2025.09.10.14.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 14:55:12 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Andrey Leonchikov <andreil499@gmail.com>
Subject: [v2,PATCH 4/5] RK3566 BTT Pi2 - Fix default values.
Date: Wed, 10 Sep 2025 23:54:46 +0200
Message-ID: <20250910215451.2244192-5-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250910215451.2244192-1-andreil499@gmail.com>
References: <20250910215451.2244192-1-andreil499@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_145515_509470_A7AF7D55 
X-CRM114-Status: UNSURE (   6.49  )
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

First fix - setup a default clock speed for a SCMI driver.
Need to avoid a warning.
Second fix - to disable FAN PWM. By default, this peripheral
don't enabled and connected to SBC.
Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts
index 7cd444caa18b..3b04b3f7e923 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-pi2.dts
@@ -8,3 +8,12 @@ / {
 	model = "BigTreeTech Pi 2";
 	compatible = "bigtreetech,pi2", "rockchip,rk3566";
 };
+
+&scmi_clk {
+	rockchip,clk-init = <1104000000>;
+};
+
+/* disable all - default state */
+&fan {
+	status = "disabled";
+};
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
