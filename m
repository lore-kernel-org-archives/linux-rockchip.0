Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8150FC44529
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 13:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kFFeNPMTHHiLQbMqJnvwdgeG1AGMpL1p2uxnsJzqNkg=; b=ou58lrbDopcpQa
	1mYjRivXLaHSh1g663ZFP5gJ//TRWA0cqkEJaPK59WgbMmem/SGqIqE6ts8ktm+veOecgeJO7qBdo
	IsJkyxvx8xBik1NhczLfRip7heyeGtTft+Th6ZnCdLUAnjjZBQBBvJrGh8L4/Qp62/SnJbu/dTiE5
	IU8zo16s7ir6rhVXzL4k3JJlE4z946JNzhImhwDmXPGwv5p7qPOPYp4Wd1dq3FX0vV6hY8VQkNT1/
	QyeB3P+N6aD1/kwe8sQ6Jz8KL7bkhLNV3Uji65vK4rr1+ZRKQYKm0b7NJQJrhiSY4rD6voQPOlKYU
	EOPhDSAzbfOTLwuG/3TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAcV-00000009Y44-4BYV;
	Tue, 21 Jul 2026 13:34:52 +0000
Received: from mail-ua1-x936.google.com ([2607:f8b0:4864:20::936])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmAcH-00000009XkP-1gfe
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 13:34:40 +0000
Received: by mail-ua1-x936.google.com with SMTP id a1e0cc1a2514c-966d70b9e1cso3366716241.2
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Jul 2026 06:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784640876; x=1785245676; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=U33s9q0SrsoXg6oom9RrhMBLEezVP00e66OiL4kp8fE=;
        b=SbvXGlegjkSB/peXI4WQPZ3HF8TCDsdmgd4Xi6uMIUbxR5e2AYJ5ssaC2glr1m9ix1
         rN5MTxh7oK3i3/LmDy5VGpajiCvqbPu/06dnJgG3JSdDA4A5iopf6/Gf220yWm4L81Yj
         rZHMthXmr81irBufCYHqPPdrtReaIewXEc47FiRVLJNehgRec7zyA1mGAfKkzZxEl3Om
         shMqF8DgWd13C7wM0c6G7dVVuKR9JVgPczMvr2F4kpZdtM8FIjqxrjh99OaKSvji8Jgt
         qk/Mt2oO+45boNLY4XJsGCM6zZZPqnFn7yNOeKMInERjUR2MEFCD4Hm7UgafmqQkgwHE
         mJUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784640876; x=1785245676;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=U33s9q0SrsoXg6oom9RrhMBLEezVP00e66OiL4kp8fE=;
        b=bSEXgHl6LgtqCv8jc3Jr0cqr/WpAll/n48gGU4oiLwVJ7e44zOsKz2n1x97fpouXPP
         Ks2dIjUe5TobKGkEhCEhb74Z2vsOzn6EdF+OXSuuUrbHfhP6+UfiKvc8vOx30X3ElK3P
         KS8mmLbqeyKZDx/IuI/nVj1o7i/9vZQ8OJUWzIaB36cFD9tvxvgms2imU9eUobRIBHY+
         RxRGz/RzrSjmMvTtJkrL312ZowQl3a0/BKl3sn09JJmI8iJc1I0vU7oF/8L092V7LdZz
         rV2ve02Dr/vg2FxDu+NgLmNtv+vZcUgmxclfNFXMm1PqES6allwg8t2fGQE8bDmPv7Xa
         gljw==
X-Forwarded-Encrypted: i=1; AHgh+RqPNWjflpanQD24jpHkfk1YDzlLkOpNf79irenU2am0wWfXNV1Ez1QLirD+HEfO08S3umvUsX+qq1ClH85GXA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyK1R9Rw4ssepXDcT0AJlMBgYL+t2zvERNplh8wwHiYU6pxx1vb
	OIo3llQmz1KBVk4EJayeKkDx3NazLKBSySyuCt4e59579PjyBp6RNO8w
X-Gm-Gg: AR+sD11xPG2wbzZV+rKGWKR45n21GkckGUrP3PG8emia7HzoIMqDgc/RVShzOXGPEnH
	axU/aDOhyDwEIVH7FH1dLXvxXV1VWITnWA/rr3eBgLXQP8j7FSu8RoMDDjSS/JpN+yr4+pArB7b
	JMt8vfkMJjWRrEsLBXF0d3P+PToqcXgKcBqDhaTGYoFzSDtmNkpUp3Q4lITnC89dcgq1Owryic6
	AtJvSCjqrx9mEyo/gFWlVlFjEI1MnQNTbFhJ1Ih/wkJ/KaBMG1+8NIYhlgjl9MmQejZD0fZTzkw
	0EeceZ96EKh/YZkjOey+Sa2JGiPw9s1VC/qurJ3/meWwbPgS3IfKIhdZYCGVCIH+eKM3KAAIVwr
	el0aUmSrZgqlif35eMvUTlcOe8bKhQ/wHNjwZ5xGah+so1HXGIQbSYPtshpO5qEqWCh2NHT/Nqg
	OaGY4+kT02uh8TOBq49H06Cj/eklEyg4jGeJF3SSNBs6yXPIDEpg==
X-Received: by 2002:a05:6102:5e83:b0:722:826e:1423 with SMTP id ada2fe7eead31-747536fa410mr5980734137.20.1784640876163;
        Tue, 21 Jul 2026 06:34:36 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:a24:fdfe:648c:2808:d17c])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-74757fad06csm11850066137.4.2026.07.21.06.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2026 06:34:35 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Fix the rk3566-radxa-cm3 Wifi compatible
Date: Tue, 21 Jul 2026 10:34:21 -0300
Message-ID: <20260721133421.44258-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_063437_458723_6C52AB27 
X-CRM114-Status: GOOD (  10.26  )
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

According to brcm,bcm4329-fmac.yaml, "brcm,bcm43455-fmac" needs the
"brcm,bcm4329-fmac" fallback.

Change it accordingly to fix the following dt-schema warning:

['brcm,bcm43455-fmac'] is too short

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
index 8453f06c261c..73c72eba72e4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
@@ -369,7 +369,7 @@ &sdmmc1 {
 	status = "okay";
 
 	wifi@1 {
-		compatible = "brcm,bcm43455-fmac";
+		compatible = "brcm,bcm43455-fmac", "brcm,bcm4329-fmac";
 		reg = <1>;
 		interrupt-parent = <&gpio2>;
 		interrupts = <RK_PC1 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
