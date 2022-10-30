Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3B39ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 18:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9I4Q9rRBkyu/VT5HzRQqxrGLBYp6iQ7v+6eB2Xk4bM=; b=gUp8jiLUFJRihs
	aX/gGBydHA7Tpu1LO1LVxRdRxdrXRM5Vqufzl7Jfsp57v2D+JMKCuklAyUCvF8DybDOcljavpI/tV
	Odf7bg3Cb5EM6QRKEE2D18zGqO1diuFPEsRl9gzv9WQ5euInM0tyMfn0xl1EP8+CMKFflKkWkbJ+L
	jXVseTPNoTgTVCXo5xC1nmEmlHJx8WaZLtCx/eiRFmK718uTm6MD+uwv45Ammrru4p/SOfHx4vGq7
	Ury68Sde3P33nayMJRcMzOM/OnbWcbwXBFmviTekZYRFfe3+32ppvzLGlPDJBX02sDv86j3kRpraW
	V7wrlfKRFVroZZBewW0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opDNR-001vRq-BR; Sun, 30 Oct 2022 18:49:45 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opDBB-001piq-DH; Sun, 30 Oct 2022 18:37:07 +0000
Received: by mail-wr1-x42d.google.com with SMTP id w14so13148918wru.8;
        Sun, 30 Oct 2022 11:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=J+5BMktAWdfToMJ1hbGNlYZD5Qlu0JfVkC/Za08BZ7c=;
        b=lZucQFwMUiiqTnckQYk0BtEzg8Tx46FKrrik/n0DlFfqvcr6eKD29Mh+E+GHXaA8jg
         FT0YsGguBVA/bYI0L4aL4kernwk03SduYoNJxRIcoqAYVbfgZXQoECfFpzery7Ww48az
         9s0sZ8tlCbYSyNpfPziD8Pog7LepHxTkkeNoQ0S08gIQf4pVe2TYWRb5ru7F4b93NVpz
         FOUE3HPTDqmkXi5LyC9mdu15MHL9WIbuH1XhJ56QO5NvbcFaSj5wcME/30bw/YxnLJ6t
         FLe2BTrBl2/OuYNBG998GuXgqY+TWapocl6M6aTobKrpxA8uHSU1UeLHpR/agzFou3ER
         iRQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J+5BMktAWdfToMJ1hbGNlYZD5Qlu0JfVkC/Za08BZ7c=;
        b=OHTAYUG25Etsm3HZWrAac8nEw+8RmswLJVoZ4joas81wioseXbvzAS0kwbQghh28HM
         pnuYUTVDjXUzP2Je1qKBsbwGxbKwHd6M+8qzJM1xzUPMf6U+VnyGpifAX7VDAi0abZAj
         Xd4V4V07ADG7ICJDMBpNhm+kosIfVuKZVWYHVf2xU29YUMoHRoJ/VpTT6JCX3uKy3AYK
         4EBGZsRRNhoGq75WLzrHfN19uNtsvkVPeYZX3y9GKNYHI07kpN5wZ2JXcYqlcXxAZHv7
         tvfPUKQ6E920JifTPJKoahqit74ce8lnZnYfxJIPqjS0uRj70EDmtE1ep0Y3tSCyKfyi
         FLlA==
X-Gm-Message-State: ACrzQf1cHZJLimt1KCxGiJW7wj++tKK+0+qml3BBK8cf1Kzf59xh33kB
	Md9cAielQABxqKMlhl8Z6Bk=
X-Google-Smtp-Source: AMsMyM6TOuE20NlQk53uFH4Kp3NVKx69kpi8DKy7vPHScvANWSbp858ehjPjFWT1NZKv4p1V9sTu0Q==
X-Received: by 2002:a5d:498a:0:b0:236:58ef:6796 with SMTP id r10-20020a5d498a000000b0023658ef6796mr5817390wrq.399.1667155022484;
        Sun, 30 Oct 2022 11:37:02 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id bx10-20020a5d5b0a000000b0022e47b57735sm4922159wrb.97.2022.10.30.11.37.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Oct 2022 11:37:02 -0700 (PDT)
Message-ID: <903ba85a-75fc-ff9e-e0ba-4a1e6161abc1@gmail.com>
Date: Sun, 30 Oct 2022 19:37:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/2] ARM: dts: rockchip: rk3066a: disable arm_global_timer
To: heiko@sntech.de
Cc: linux@armlinux.org.uk, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <88e93a81-ef9f-adcc-db83-f8b5ba615c47@gmail.com>
Content-Language: en-US
In-Reply-To: <88e93a81-ef9f-adcc-db83-f8b5ba615c47@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_113705_509733_F2D04E64 
X-CRM114-Status: GOOD (  11.73  )
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

The clocksource and the sched_clock provided by the arm_global_timer
on Rockchip rk3066a/rk3188 are quite unstable because their rates
depend on the cpu frequency.

Recent changes to the arm_global_timer driver makes it impossible to use.

On the other side, the arm_global_timer has a higher rating than the
rockchip_timer, it will be selected by default by the time framework
while we want to use the stable rockchip clocksource.

Let's disable the arm_global_timer in order to have the DW_APB_TIMER
(rk3066a) selected by default.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

ARM: dts: rockchip: disable arm-global-timer for rk3188
https://lore.kernel.org/linux-rockchip/1492374441-23336-26-git-send-email-daniel.lezcano@linaro.org/

clocksource: arm_global_timer: implement rate compensation whenever source clock changes
https://lore.kernel.org/all/20210406130045.15491-2-andrea.merello@gmail.com/
---
 arch/arm/boot/dts/rk3066a.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index de9915d94..cf8045625 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -653,6 +653,10 @@
 	};
 };

+&global_timer {
+	status = "disabled";
+};
+
 &gpu {
 	compatible = "rockchip,rk3066-mali", "arm,mali-400";
 	interrupts = <GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
