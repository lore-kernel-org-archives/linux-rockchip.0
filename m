Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DDA4ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 20:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AlBQPILBzDffUT6lIhBckYMAT9o741lK99DtFKu34jI=; b=LMPrp81lXkR/F2
	O1J5qlUO5Qgex8SzkyB0+VujlOGGzAoGCA8KpzoO9cK5mvIn9tNhGCP9ROpfSzANRTpH49VZ7/sLZ
	L4ILWJmIKYbwq7om5TesF4WfVYyvrR0um59Qz+9ZsKp/T55Us/0X5w80XUaW6D3hxR73n1XGv7yPr
	vOOcIH9jYBZRtMpcO5Y+eZkcwUZ84FAwlE8YmaovZAwtSvly2jesP36ddyenImVXxFiDrFO1gwLET
	j0ekrzyHrIwzSKTckwAKWgPVbCWM95AeabLPKPdWr/wWjWonX7TV7Mz51cOY66Tf6UMTi2OXYhaWN
	qk+iyH2kmAz0BOevn18A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opFMN-0035Rp-1m; Sun, 30 Oct 2022 20:56:47 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opFMA-0035Hw-CF; Sun, 30 Oct 2022 20:56:35 +0000
Received: by mail-ed1-x52c.google.com with SMTP id v27so15046386eda.1;
        Sun, 30 Oct 2022 13:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KFcRfWRyXi5vlxA7mDVUDb68ztcKVUII1OhMaUKoMY0=;
        b=mtBfSG9FABE66AWdcsxYQUCjkoyaplzytMcS9Lq3YCTKyHVnQ7Qi2+fR/khu+LsDDB
         MntqbxYZxYfxj3SpABiOn71tJ3WvCRyMBc51UkPmliSpp0UkMb/O2WjGR4OoVzjoRPqk
         NrQTrJ10nSr+NsMdiXAPsWsVhQacgsGJHClA42CrtmgtIKC7Kf5yAbeWBm7gpB8x9ZoG
         WEw/Oyh22oW1Th4wselPl+flAM/7SW70t9cPHAqdL7gJl8VU7rfsfOfDtYa2OJmteOBk
         PT5P3bWNdS8+I/ZLOBN/uLf62iD07/vryem2unJLA/J3tO6bo9GKTUxmQw7nL2BZkFgi
         PCsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KFcRfWRyXi5vlxA7mDVUDb68ztcKVUII1OhMaUKoMY0=;
        b=jwlcvAaMZBjg6XK/O2NncDQ5FN/5/NWvrzjZh18J8cWX9Wrz+KYNVaPMTpLCYc0bxX
         5XzzNpEA6ayKKV79TnvfXB3gN3mPzgv07zpChZJxkUekFVh7X059/M1u1hNxJR9UiXcX
         m79DklNoXSBZnFe8yEyn1WjYt3a0gWUuBzDzJ+DgWjMf7jPTVVwEnkQPKssU5gtyV07N
         zhU1YENIwnVPkTNCCdk8Acbn4sHpNFFX6KDlBnz7GtuuN11vYkwc84RtzIjNbTltcMuG
         235eZFnGLfDR5OV2N6JI3vjzoz66Jm+OxoKtqUVKLluXP3Ys9qJjwIkky9qmUgaILTcj
         HJ2g==
X-Gm-Message-State: ACrzQf1uQFQEX0cMhJMcAc4xKd0g8TRIa1g6yVl3AKp3BmfopmlGEXOF
	KnRbzGltDIum+W/olt8V8ng=
X-Google-Smtp-Source: AMsMyM4nJ5rQBJWIcEkeQiP60ZzilqtOq785QEX5fls9YhzQE7qcm3GocrP/NsQEEcdGzobAqft/+Q==
X-Received: by 2002:a05:6402:11c7:b0:462:549d:fbbe with SMTP id j7-20020a05640211c700b00462549dfbbemr10320925edw.199.1667163390852;
        Sun, 30 Oct 2022 13:56:30 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id i14-20020a170906698e00b0078defb88b0dsm2211923ejr.73.2022.10.30.13.56.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Oct 2022 13:56:30 -0700 (PDT)
Message-ID: <f275ca8d-fd0a-26e5-b978-b7f3df815e0a@gmail.com>
Date: Sun, 30 Oct 2022 21:56:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2] ARM: dts: rockchip: rk3xx: disable arm_global_timer
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_135634_457976_026402F0 
X-CRM114-Status: GOOD (  14.10  )
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

The clock source and the sched_clock provided by the arm_global_timer
on Rockchip rk3066a/rk3188 are quite unstable because their rates
depend on the CPU frequency.

Recent changes to the arm_global_timer driver makes it impossible to use.

On the other side, the arm_global_timer has a higher rating than the
ROCKCHIP_TIMER, it will be selected by default by the time framework
while we want to use the stable Rockchip clock source.

Keep the arm_global_timer disabled in order to have the
DW_APB_TIMER (rk3066a) or ROCKCHIP_TIMER (rk3188) selected by default.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

ARM: dts: rockchip: disable arm-global-timer for rk3188
https://lore.kernel.org/linux-rockchip/1492374441-23336-26-git-send-email-daniel.lezcano@linaro.org/

clocksource: arm_global_timer: implement rate compensation whenever source clock changes
https://lore.kernel.org/all/20210406130045.15491-2-andrea.merello@gmail.com/
---
 arch/arm/boot/dts/rk3188.dtsi | 1 -
 arch/arm/boot/dts/rk3xxx.dtsi | 7 +++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index cdd4a0bd5..486a96ce2 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -607,7 +607,6 @@

 &global_timer {
 	interrupts = <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_EDGE_RISING)>;
-	status = "disabled";
 };

 &local_timer {
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index bf285091a..b0ec459ff 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -76,6 +76,13 @@
 		reg = <0x1013c200 0x20>;
 		interrupts = <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_EDGE_RISING)>;
 		clocks = <&cru CORE_PERI>;
+		status = "disabled";
+		/* The clock source and the sched_clock provided by the arm_global_timer
+		 * on Rockchip rk3066a/rk3188 are quite unstable because their rates
+		 * depend on the CPU frequency.
+		 * Keep the arm_global_timer disabled in order to have the
+		 * DW_APB_TIMER (rk3066a) or ROCKCHIP_TIMER (rk3188) selected by default.
+		 */
 	};

 	local_timer: local-timer@1013c600 {
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
