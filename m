Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AEC6BCA101F
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Sep 2025 21:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MzggVUyKNLKQCEdIcRHKg5RsA2d055W6uzsK26wt2aE=; b=f/NN7UTdsMT2fG
	yi7TbJ467flsI9tJ7tYQiJ+sOWwKz4pw400PRBg0Kif/emIAPvslgWzggnEUOfNNFP9lzHivOk0oz
	8tEDt9AVtbjAyaWZsOS94J/MkKlIRc0GGDUSF6HhFEm3VyvnFHhPMI5R8xSoajUNQ45DMipCjhHb2
	aKvVC6pFpSI/51LrJi3cdv6onjIuNopu8tQX9F/jGernLb7NNoGLlvf+l20SwziOv8nKFJHhp0Qom
	wCvNU9pWFu9pOVYoXO/zMYKhVuejBOQbj3CGK8ekIkGL4T/SWOnsZeDVNZTsfXT00+ltEgfLcl0FU
	jom1qEFZRY8I2E0i6Xag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSma-0000000Gy09-1hNH;
	Wed, 10 Sep 2025 21:55:16 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwSmY-0000000GxyS-2D5c
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Sep 2025 21:55:15 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b042cc3954fso12686766b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Sep 2025 14:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757541312; x=1758146112; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iYmWfUsz8GoRu9Ltm24mAF8m1YV/srLCNEndN3eVKDQ=;
        b=FjVJFyQHXnCuFmIyqADOMW9118wRiYRIT6fakWrlgOoXfHD8cHQsAO588REK4liB9S
         mIhkEOiaUVDClcJiRMrFKfckJ7PxBgC2c4oDGKdGZvM03uLmCXi1tbN5k2KRGeGqqCwb
         OLBJIk2DHdgdabSxtqUVPswP+t1Fxx7eIKTh4GxYkb0y2fVD6mwxd6vIbNPwHh2TOLLQ
         CkGTmgg2qR3gv3o4vigQrW+oNr6PjGdBI2H19YxFdwXIkL/X6dlghy/5pFmo1nnUP2S3
         oKS/jHX++INLdhwcx/jFu9uUbazpe6u7bFrnOob+chAqQR9BdNvHspPppgpTsuapG6BB
         eacA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757541312; x=1758146112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iYmWfUsz8GoRu9Ltm24mAF8m1YV/srLCNEndN3eVKDQ=;
        b=Lnnhmhh5iQ/1KCaI5xWIrY0cCZVP2pWjts/cvgXnaG7aNQbwWs07LxDAPPxuWLgMHJ
         fSVWYq3/FoPAkPEF/8IUVn9/1cSl+29ZYvswxEaui5LUqEc7atad9l/nbyAraytQiUeA
         t+bLn4dfMP8t7gDPz5l7XfxbdKQsYwLlxDG9j7fxQIiNB8CfNF+Jokj9X90PTKv7msaE
         6dzfO218hznJ58/wNztleghNW1HJMiLtMmZxduXVw1nDYFpvJYLsVqJAvdJkuOiQfvAH
         OEiUEAjqFG3duDc85aSuLdhGK09OF6RJ2nK5BMaNZYBcaaVJZq45ZopjJlikxvQz5nyA
         MRFQ==
X-Gm-Message-State: AOJu0YxewQoDn/cOi5ud/eD0r3HZ7dVmSvplU0eNbSl+6clOVry14oI0
	cdD1wuAnt9dSf7iOMe/teuRR4j7bSfr257axSHJZbzaa5qTZ+Rf2pSf82Btp36t7
X-Gm-Gg: ASbGncuXi3Nyj7y/+PLndv0tFPhTlqE6xZtw69SjSyf2uvw+4JlXZ42H0dMm6t5DaNt
	mOY86YYUn6HJQZojY1lANEucayUfV5UevGGtLGZXyZVGgopDujmJjuPPH0JiUawnaeYr8jIBwvL
	vw6B2TSa7PCqbf33MaeDM7qoyCCdYaOEt+GPyBrde1AWC45ewsW+k328EHCJ0N57Gl2Nx9UahEn
	VMjOBw9PebUBdWeK0c9B1Brd753y7qFHTvtaKmzkBkTheHZ1OYMSZdhfaLN3TjwXzFOksPh7209
	QqGBOVXhSV0M6377InzV9SVJb/vIDOAklgMQWmh3sc4zL2YFnQLw04nnhVru8bD9SzUdHIX5v2B
	wuQTKRMomZLqsj/zfQRsTZCOj3wgCitcFCuHdWCrUmqih5Ws=
X-Google-Smtp-Source: AGHT+IHp5aSVamN4UQjyKbJwl4i5u2DkWLfAzfYDDMDbydJNMCRYysa5t6r97QoniAyCsweDKiNWlw==
X-Received: by 2002:a17:907:972a:b0:b04:813e:491 with SMTP id a640c23a62f3a-b04b13fe0cfmr1775549366b.12.1757541312327;
        Wed, 10 Sep 2025 14:55:12 -0700 (PDT)
Received: from HomePC (89-67-214-154.dynamic.play.pl. [89.67.214.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07830ac2b6sm240517166b.27.2025.09.10.14.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 14:55:11 -0700 (PDT)
From: Andrey Leonchikov <andreil499@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Andrey Leonchikob <andreil499@gmail.com>
Subject: [v2,PATCH 3/5] RK3566 BTT Pi2 - Fix RK808 clock names. Require for a normal shutdown/reboot.
Date: Wed, 10 Sep 2025 23:54:45 +0200
Message-ID: <20250910215451.2244192-4-andreil499@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250910215451.2244192-1-andreil499@gmail.com>
References: <20250910215451.2244192-1-andreil499@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_145514_569933_9738E9E3 
X-CRM114-Status: UNSURE (   7.36  )
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

From: Andrey Leonchikob <andreil499@gmail.com>

This fix require to a normal reboot and shotdown handling.
Driver use a clock names to find it on a shutdown process.
When don't find it - no correct shutdown and some peripheral
don't work without power cycle.
Signed-off-by: Andrey Leonchikov <andreil499@gmail.com>

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
index d31b9bd54162..517c70d15502 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-bigtreetech-cb2.dtsi
@@ -338,6 +338,7 @@ rk809: pmic@20 {
 		#clock-cells = <1>;
 		clock-names = "mclk";
 		clocks = <&cru I2S1_MCLKOUT_TX>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
 		pinctrl-names = "default", "pmic-sleep",
 				"pmic-power-off", "pmic-reset";
 		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
