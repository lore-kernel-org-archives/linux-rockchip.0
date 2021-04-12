Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7060DC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:03:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E10696121D
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:03:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E10696121D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l6n252r/0Njtu8SFpA6sozc4azz6ilNl/4GEHBcYJVc=; b=p7GjmZguASzAhTG8KvDFejSHed
	587MI8ebm0PJn/NTD+oymivpCLTxmD4MOYKFxWSYrjs1Iw+rjkPc6xwoHISoBzFdn2ACJopWpx6X9
	7ChwmHiIzlu6Nk7+Ikb+HuST4PX/8ZcJivegFvNU8p+GY7aK9yjPfiSeoCTg2WjGPKr5OMkf2nA9e
	nWNaaLG7GRawUt6zGEafALrLoeI6vJ8VHZBQmivH7ZdMxn93M2kkXq5+6ra8kvE7etnI7fUCCqzrD
	6SlhXiAvVp9Ilo1j0uc06Gu5DouL2W28SIODPol6lNiVbwump7JqBvq/ZyvE6LRIIk05e1f1Qs8h+
	yn98iwBA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW2ly-007Zzd-FJ; Mon, 12 Apr 2021 20:03:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW2lA-007Zpn-1r; Mon, 12 Apr 2021 20:02:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=dP6M+sgZMuzTEGYj0l4EYUpeVr19klo1MRRCTxVz25w=; b=d1bQJnQiUZnP3DJz2tx91WxkS1
 FtdaLpJt+AdiY3mOPp9K8sSOtW2Hp4Tq0Ud3Y2xH6iu/u3KohTC0h+PTs95y+vT27iZB+L3y6WFWf
 kA2OTSrTRkTWuO1TlpSBWuUR2bmW/P61GDGvU10TE4c8wh4XCHg6x/tyR10fc8FhVcuZ3f49xfy1l
 28dWc1XkLgk1xMsV/vGMXMz3F1aNu0Dy3+7RkU26dM4WK5VdqrAfVuP5oFSX5J1QRH383ni4LT1Hd
 qRp8MGiz2HDyTTbFzKQbJi9zJrKjMkbiuvHdowvrwVOi5scBuANh7XPkpRavcDeGIbv0h5fGGJ+aN
 dlrCX2Jw==;
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW2l7-006Wbv-Hh; Mon, 12 Apr 2021 20:02:10 +0000
Received: by mail-ed1-x52e.google.com with SMTP id r22so16527205edq.9;
 Mon, 12 Apr 2021 13:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dP6M+sgZMuzTEGYj0l4EYUpeVr19klo1MRRCTxVz25w=;
 b=u7xk+nl1KEUVeTCXnBK+EUuKq7ZIT7kT4ApakFx+FprS8wqpnLfcWoaN9HPCDzobFT
 abKFSp76ypMAUKWnyMJ+UmLVmJuYuWx+kkh8jnfPTbnYFlo6HctZFZ2VoVdg1pbkgGx9
 uUyeW30+mCX0TeopvTOxDmsdkdNhS+hvhvOIbdUHu7chgveob+Jq5vI8FL625NxIvb98
 e8EI4U00Wqda97oLqNOvFBr0mh240t0PiUkGDa1+u/Uu2izJV9DgwXa3zsRH2h6lhNxt
 HoMFI4udgv9Gb6CWeQ7v+XfEZ1wyF/oQ2g7Z8dl6xtw4KtUNntKu37rbtVloISVbaMvs
 43Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dP6M+sgZMuzTEGYj0l4EYUpeVr19klo1MRRCTxVz25w=;
 b=U+mg3S0/xqUXAd0424ZoT0Wldf9srE9BtB09ZC61WeBows2fHHskYScLvOTvS1YZBI
 wOgQxK7LUrFsVl4vOh4rx17IfygKg3lFAd1EyjqtIuxUFelWQ+zkvTlSuKO4pUtYnpqd
 p5T+7Qd2S2HWu8zNpnV9sghKGaq5b4911SIvYGoWKjeL1JMOd24+5PASRNknUCpMteWj
 rm7PtcPrUV4ietDHwcz7rZcC3b1hrG2sqrhf/HzXRkc2MwnbV8BV53mzw0rSZYnj9ZcX
 vw6guOc+ziVqcOP1RcNFgaTBDu+prdhp6OwtgvnAto1Nlp+MUflkHhH1GPvOT/TdW3ax
 EPNw==
X-Gm-Message-State: AOAM531forD760uhGJr7LtgPlf+6oEGa1ucZwKRtJXMmmH+TNBKFzVIN
 COL4zRbkWW45V8OubRprDzQ=
X-Google-Smtp-Source: ABdhPJyNEd2rxoRrdqLZV5Jb3PKGn7UhfzB/HIGumD19hzyxr6q+egEj8aLvyyvxpZMxaG3cp3toKg==
X-Received: by 2002:a05:6402:440d:: with SMTP id
 y13mr31175013eda.316.1618257728178; 
 Mon, 12 Apr 2021 13:02:08 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x9sm7514531edv.22.2021.04.12.13.02.07
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Apr 2021 13:02:07 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/4] arm64: dts: rockchip: remove clock-names from pwm nodes
Date: Mon, 12 Apr 2021 22:01:55 +0200
Message-Id: <20210412200155.5316-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210412200155.5316-1-jbx6244@gmail.com>
References: <20210412200155.5316-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_130209_611221_21440DA8 
X-CRM114-Status: GOOD (  11.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives this error:

/arch/arm64/boot/dts/rockchip/rk3368-evb-act8846.dt.yaml:
pwm@ff680030: clock-names: ['pwm'] is too short

Devices with only one pwm clock use it to both
to derive the functional clock for the device
and as the bus clock. The driver does not need
"clock-names" to get a handle, so remove them all.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 4 ----
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index 61b0a2a90..7832e26a3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -561,7 +561,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm0_pin>;
 		clocks = <&cru PCLK_PWM1>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -572,7 +571,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm1_pin>;
 		clocks = <&cru PCLK_PWM1>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -581,7 +579,6 @@
 		reg = <0x0 0xff680020 0x0 0x10>;
 		#pwm-cells = <3>;
 		clocks = <&cru PCLK_PWM1>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -592,7 +589,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm3_pin>;
 		clocks = <&cru PCLK_PWM1>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index e93a5f320..6221b027e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1185,7 +1185,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm0_pin>;
 		clocks = <&pmucru PCLK_RKPWM_PMU>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -1196,7 +1195,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm1_pin>;
 		clocks = <&pmucru PCLK_RKPWM_PMU>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -1207,7 +1205,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm2_pin>;
 		clocks = <&pmucru PCLK_RKPWM_PMU>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
@@ -1218,7 +1215,6 @@
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm3a_pin>;
 		clocks = <&pmucru PCLK_RKPWM_PMU>;
-		clock-names = "pwm";
 		status = "disabled";
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
