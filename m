Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 431F9C56208
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 12:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouhSUjYg2suw71D9aH5wvEr8IpribmBULUpeFP1m1Eo=; b=1Q+xobNVmZQ+l0
	G76gt2K8+DBrUJqa/Q/4yij+l4ubkmcZIQmLYUy8IQidmPSEPm3DG41AeEoZro+fQYfpcEkMIpdnS
	WfJnaHYRuLddgJLpxvI79RmfTzIL16ey0zt421srutvVGFlyJUWG4xm0BAvTd4/RdS+niRIqLRSxg
	bvlv4rGToJAcG07Xu03nmIsqZXikjHs0+ZWHaHOJM0pXiQkSq7938epfPALbap5ZdXjaB55CJFLGk
	OnNSkYihZbkinjTrfxLT1LMWtVI3GPSOEzlUfwqX7liOJ7rQg8dtgMIPX1PcVhgFygcyCG5dmWMig
	vtXW7rzig5yMotFeYLkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrwwE-00000005j8k-2sHP;
	Thu, 06 Aug 2026 12:11:07 +0000
Received: from mail-pg1-f175.google.com ([209.85.215.175])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrww5-00000005j6I-0BCP
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 12:11:04 +0000
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-ca7c1176317so1861518a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Aug 2026 05:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786018256; x=1786623056; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=efDDw2XG4FjgOIVMZFXJuQt8TiVVi2gSSR997D2blzk=;
        b=MJGsJ0TSy56i77gtYzgPNA4tY6ESjSHvWGBrTK+A7b3bZv0laBt4VR/7dG+FEhS6rj
         Rm+SCZxRbYzHz/NKo85BXUMHaLO+KfNkyODcMM8A1Gt3TIVJ39/LD/Z664AvlgrpakoE
         Zj71VMK75vp6zwEQ8n9YIJ4hIXbG0CILn+NEf37AOPSK/I4uJO9fMA8bAcB1R6eVoMFS
         CTn4ddQW+amj2FrM0Ojc/Nbifu0oiX4fcNrAlxCiy9nx9vPJNYXXxnKlyU92A0Lh3/mb
         iWzYJDKNylKtTW1UVeoOXuZ72/M21vDCbx2rkjQF00h9VsMJxboCn5uj8RtnorzTCNoM
         HXXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786018256; x=1786623056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=efDDw2XG4FjgOIVMZFXJuQt8TiVVi2gSSR997D2blzk=;
        b=ewvozgHJpHGh31f4u5ZG7jvUFQbYIk4xJw1wXun17w4pCheZ5Nb+AfsUUBixtPRDJn
         U/8dSeHvAoA0324vSJHmj6yWDCzVjmsWRutZgB6FB0gKxdAiYR4lCUyVkzLOX8xMYT0m
         WciVqQI3289c6kLiTBWJN2yasL78OpnTa0JeGSDDUWXtVDlfURgZxsQ6Rk2ti36kcUVg
         IkqGXlwhTlBrGh9fBPrZ+/7iLl6Hu+4a/7+y9AZNu66OBU4qXM9lM7q/4eAEV2qwOlEd
         oI6sdFA0KveG0I5A3JwTSEtCyDjcL7bDgY382bHIApbK31d6pQ3lVUS6Mapl+JInZVmi
         if2w==
X-Forwarded-Encrypted: i=1; AHgh+RrLUuoAVTLzs/omIMzbsHCA2giL0xLZZHStXFB01r5YGuMvoMCjVXbtfpn2dFCWiRcCyAzthmpsiWVGsgox+g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4RaXfLk3znCEUiXxGjnInGrzi0Uq42oIT2rODF0+ZcXWmKZCu
	WA8tu23HUCzdP8ufTRiTC/P/hKbgRDiOXeAFaFNDiu4BXkAKJVXuneG4
X-Gm-Gg: AR+sD13epVn/eAomZalS6XUy6W7tjx7uD4eQ4ssrSyJsKcstN3a0MAt42C77rqyPz6S
	G8b3VFpxR9mqG6Hlv1B5VcnZKNEYKMJPWxtgz+8LlLCxd+MeGKNA3FXA29DVEQzzFVPjkZbFb4E
	fHnWFoBlbmABzySiCA7T/W7D2MXRcEqWBzjf9bt7oA6TjyMTvPUWeiSwlrkL6nhG2dDeC/DQWQ2
	PjwwEVv1DH3tieOk0gMBSK+a89M+Ri7v5YW0/fxqBXb1+NJ6dvoFLm0Nuak2ymQ7aVqLlbffe/t
	TrMfH8SAmUD+zfavHBia9XPoGsk+kcQLaBXVxAl+g5ks3luiiLiaVAgLrxrtaoIphghM8W/833C
	ZwaQWl+4KHZ1/CnkE+L5G3eUlXuKL+kfRQexzN2XxvnooT4gpQ2hbMoUnDWl8ViCx9taZ6VX92D
	YJ8TZtRyQTvcLTPtX1LKBagWyEO3OqGZ+n8B5XaS7r41WznHQOD2t5oGmaZ+fgz78bZ+GYAPSTr
	UIqlCepZiFQ1g8FmGwYXp+MV+je49Cg8g+lZg==
X-Received: by 2002:a05:6a20:2443:b0:3c3:7fa2:9618 with SMTP id adf61e73a8af0-3cb85f4a647mr15543534637.37.1786018255930;
        Thu, 06 Aug 2026 05:10:55 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:e1cd:daf4:8fac:b7e6:4f37])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3158673b7b2sm28406824eec.19.2026.08.06.05.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Aug 2026 05:10:55 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Fix the BT clock-names on rk3399-leez-p710
Date: Thu,  6 Aug 2026 09:10:39 -0300
Message-ID: <20260806121039.16967-2-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806121039.16967-1-festevam@gmail.com>
References: <20260806121039.16967-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_051057_215750_8CA4B2A7 
X-CRM114-Status: GOOD (  11.96  )
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

According to brcm,bluetooth.yaml, the correct clock-names to describe
an external reference clock is "txco".

Change it accordingly to fix the following dt-schema warning:

clock-names: 'oneOf' conditional failed, one must be fixed:
        ['ext_clock'] is too short
        'extclk' was expected
        'txco' was expected
        'lpo' was expected

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 2cdc2013c320..c449eaa84edc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -588,7 +588,7 @@ &uart0 {
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "txco";
 		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
