Return-Path: <SRS0=aAmn=KF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D866C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 17:57:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6EB861481
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 May 2021 17:57:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6EB861481
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TcpemxRVKVH/5tbdwzZD5arSVdROEdQan4AwZ6tjXDg=; b=XN0yNhTjDJwak1LpIDp3cO955X
	6DlWAeuOb7Rqyg6t+rJmOczEloAkEVI2JXqHRkk4rrqNyGSA8mMcNJhKlvFcZabohRAd4Niy1u++Z
	Ao/rQpeAssgoLb8Mi1i7vaHpDrSoe2po8ZOcxvZtlvlm4qFCnnzfPE1hDrkYxqUc+BD49QGztPCRp
	yUUF4LniQg1gg1gBW/h2myc6OEud/Es11WHrIUnFpIIi4et6njesE70j/yiZqP+taZDelpsNZQGHN
	DZhXUazjcUsN2qPE4RWuunNbpgWhlQuxF9RoHndHJ3CxCIOefO5V223tneggyULijRPYMDQU3ZTA3
	FULUv+xA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgA9e-00FJRJ-5H; Mon, 10 May 2021 17:57:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg9id-00F9Ul-J8; Mon, 10 May 2021 17:29:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=zPZnXyNiITS1+tga2LkqtsJSSJCY8+DuMqte16OgOgA=; b=Q9A8ItdS0m3UMXaP+0JtOZnOLK
 V0FbGCUpZks2npp2SFmYIe7/sb4cKAnQqvWfyOr4ODzml5cDpVLuALCVbeyzSlpUovICsHPWR9Vqz
 OaKhSqqXxAl/+fO5jGtVdO0vf+7s2Ml8GGUVOs4ED1Eer2tzOzdcVPvJXCRpLmyXEWJNcvDRfNc8m
 DueZHMAt6O/xOu2T38+QnoLBI7RLtfjdk2LKgLeu6lr8XnKnU9dM6zeHzohXUrRAnLDohQ//MxCqt
 FnOaXuoPocEIZ7ralCE2ZPCoRLBqWe6v3qJ5xC1+gNxjMUIhw8Ko8371bmKvC5y19snsrywYI32qP
 1Pd7HTdg==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lg9ia-008yr6-6E; Mon, 10 May 2021 17:29:22 +0000
Received: by mail-ej1-x62b.google.com with SMTP id n2so25720862ejy.7;
 Mon, 10 May 2021 10:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=zPZnXyNiITS1+tga2LkqtsJSSJCY8+DuMqte16OgOgA=;
 b=V+W8htSrVhXwsW0l/oyEpTn2StkXXbaVoRhOAECMU1WYOpkX/GL7Go+VY1+BybiodQ
 0P7DjHJCZvtCbWd8XiBRctvLB0mBVINuMx9qZNPhdFiXE2Xm3P1z9yhSOKx6Dyy5RtED
 2Hz4JMcw2nEIzbLC3/b0Jl0ypUomWRPGVFQK1mrd4BmIRIizYUFssFM6wqHvh99Aw8LY
 Gm7hLDHpZNQvsfcIwHlJlwaJcM7/gbvKEuudEUXACKtWeEYGZ5pwzIZHB6+26X333TlH
 ogosfZwQyjBebMjxSr6gYODQfzsYG7qp2MJCL2ipB5DZwXkCP/xsEq4MCpUp861wHOUD
 aoaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=zPZnXyNiITS1+tga2LkqtsJSSJCY8+DuMqte16OgOgA=;
 b=HigFmDlidKw7MpmLU7spFcSHLA/4Bv2//OSoFYs0k3Q0BvcKdC0k+JwgvXGuM8WJ2a
 mqSpUdkxqM1tn3NHHquLovlRoq4N5KW4IhEmzZVOI7+ALiAskWcHIKRsQfwgKR+uaKWj
 aHdYzTLtVCdIjP+rHmYsRo5b/NjOYqoz3YgKsVVSGsBpeHjwXpwDWF1CPgUC+svF57CO
 lpG1JPO7M9ssKCeT9fzVHmKNFRJTi6/VOcGA0JssR+JBLApT7zH5k2ISPBnnMRH6DLxl
 X2iL7LbWgR+5L6peWxWFRIvRNSRSQBBcHfyMs0FUQBSrz60+0VYdHdyxnImEiXpRs57b
 ke5Q==
X-Gm-Message-State: AOAM531VdgKMUtws/aXKlJsvh3kStlIyQmW+EozeDIEmoWw3vhRNMj9v
 +4ahO5tkDclMfmodPBqPtUg=
X-Google-Smtp-Source: ABdhPJx2bYXVXBCJKyTo+5sI4UwIDOABWxWjS+okg5EsuFjME9+vKWnV5k8mUiIGHZHVQa9c3Xs/KA==
X-Received: by 2002:a17:906:724b:: with SMTP id
 n11mr27061945ejk.338.1620667758481; 
 Mon, 10 May 2021 10:29:18 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g17sm14215855edv.47.2021.05.10.10.29.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 May 2021 10:29:18 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: Remove more clock-names from PWM nodes A
 test with the command below gives this error:
Date: Mon, 10 May 2021 19:29:11 +0200
Message-Id: <20210510172911.6763-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210510_102920_267703_74A8F325 
X-CRM114-Status: GOOD (  11.29  )
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

/arch/arm/boot/dts/rk3228-evb.dt.yaml:
pwm@110b0020: clock-names: ['pwm'] is too short

Devices with only one PWM clock use it to both to derive the functional
clock for the device and as the bus clock. The driver does not need
"clock-names" to get a handle, so remove them all.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 9fbd96c3f..61028a5c9 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -384,7 +384,6 @@
 		reg = <0x110b0000 0x10>;
 		#pwm-cells = <3>;
 		clocks = <&cru PCLK_PWM>;
-		clock-names = "pwm";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm0_pin>;
 		status = "disabled";
@@ -395,7 +394,6 @@
 		reg = <0x110b0010 0x10>;
 		#pwm-cells = <3>;
 		clocks = <&cru PCLK_PWM>;
-		clock-names = "pwm";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm1_pin>;
 		status = "disabled";
@@ -406,7 +404,6 @@
 		reg = <0x110b0020 0x10>;
 		#pwm-cells = <3>;
 		clocks = <&cru PCLK_PWM>;
-		clock-names = "pwm";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm2_pin>;
 		status = "disabled";
@@ -417,7 +414,6 @@
 		reg = <0x110b0030 0x10>;
 		#pwm-cells = <2>;
 		clocks = <&cru PCLK_PWM>;
-		clock-names = "pwm";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pwm3_pin>;
 		status = "disabled";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
