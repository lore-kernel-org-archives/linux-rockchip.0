Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA75CEB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 19:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vYW6N76w9h5xFJdlnz/BCfPpLMeYr1XbL/Iu7zOIK2w=; b=YDZ3FRJQfwlo80
	J/mQJ5m7I9oT4btgBIQPLylDx0Qz/y3uA4rfXq+UOaNTsTx2agjRp7W+H/v2pU/MZxwz4j2Di6goK
	r8BAUkeoui30xQxPnVNVRG76S5hhuCLuVvOueX7iYXpHUS7iuNUOW8i6gJYMcboKgODJswHt3nhz3
	d5I0NbeVjtyl4nwuHmtbCQ/ibWDUlQhWHS775aDJ3tXYr2cn+R2GXKscvO6un31ewCPFJr8PLWV59
	yPMAbqm9AWxn7yE5ooOdU0VD9fSfNcDn+sSt0qnR0zHwoo3EKmxrWwZ4bgAX2C25J+yC0jODT1CRV
	f8cm/JgtLIiD+rO5acLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Vrd-00CVUa-2E;
	Wed, 14 Jun 2023 19:09:05 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9VrZ-00CVTH-35;
	Wed, 14 Jun 2023 19:09:03 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-3f7ff69824dso7864695e9.1;
        Wed, 14 Jun 2023 12:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686769739; x=1689361739;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RavBw/beXNuiIwbQf5+ADzUkWI8HXmt0ibMWsiTo/kg=;
        b=TVPeiuttZZZiOfNszeMva/RqEkNV9mLkPCjfWkzGE55N43P6Kqkhi8UfLFK2YfNhSh
         Zxg7vQKs0QyzrlWsmPOeBqt2A9qnO+x39f4MymaczaiKYztI+DO2OISf6CyOuBw6hFlK
         Gszp/ppT6jRseFLlYmGh9Lp9EuqqAL4z/3y4jhf2Zr07j05Hwq7S+Qe48IgYlH8yR7VM
         ZWrSdgHY1FkeA40c/YuO+TLcFlrj3xnAAIbcSIz1MC6L/BmI7x2k23tATKgw/aC6qVcK
         tmePyDCJihbOMIO2is40QTj4iO0rhIHsG+myXhyGnT6FZAJov1Gc7/EUXMU0awqqBgZL
         K/lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686769739; x=1689361739;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RavBw/beXNuiIwbQf5+ADzUkWI8HXmt0ibMWsiTo/kg=;
        b=GFLenjg1o+DyJIXMydEV1GExcyzuFLxAVsRAW8d+780sgMRj0OMKiRwZlhoiXoOMFs
         wloviae5lL58LuFFa0xtdllAaHwv08oPe2iTSQFDYucQsf5vA7eSP44eneL9qKkZZ1kU
         gwH5cN3/f16VOySzxt9DT66J8U3d1dJL9I8ilQ56WorFoT+CthPGVLxT/FJb8aaFFB6k
         8aiUJKmPlHNYxvoCjs0JyrCKlrftByAV7NU/E5HGXGiDcHkaSBZiKCMroGhhSyF0YllU
         wc00gG8L0Rfzh14dvqzwhUsIE5zNr2MEXiWgq7QZKRPQSysWwnDuBYfscYwb109ZCRe2
         VFAA==
X-Gm-Message-State: AC+VfDzcdvLS8mgYTHIe+MnbMqLZtbub5xt2+M2fd3hPVJXBLilZdCRq
	n7nyqNopr1hVt5EPX0p0BJa7giYxVt8=
X-Google-Smtp-Source: ACHHUZ4Gf34RQgRIjH2O/wFqMFU3nYMzpDUcaKJHfSZgyW6i9coP7PRFYh1VcfEHkOeoJxEh9vw36A==
X-Received: by 2002:a5d:5507:0:b0:30e:56b3:60fe with SMTP id b7-20020a5d5507000000b0030e56b360femr2092719wrv.4.1686769739485;
        Wed, 14 Jun 2023 12:08:59 -0700 (PDT)
Received: from [127.0.1.1] (2001-4dd6-393b-ff-f59e-4402-63f8-7ff5.ipv6dyn.netcologne.de. [2001:4dd6:393b:ff:f59e:4402:63f8:7ff5])
        by smtp.gmail.com with ESMTPSA id e6-20020a5d5306000000b003110ab70a4fsm2341094wrv.83.2023.06.14.12.08.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 12:08:58 -0700 (PDT)
From: Maximilian Weigand <mweigand2017@gmail.com>
Subject: [PATCH 0/3] backlight: lm3630a: add functionality to change boost
 converter frequency
Date: Wed, 14 Jun 2023 21:08:51 +0200
Message-Id: <20230602-lm3630a_boost_frequency-v1-0-076472036d1a@mweigand.net>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEMQimQC/x2N0QrCMAwAf2Xk2UJtWWX+ishIa+YCrtVkE2Xs3
 +18PI7jVlASJoVzs4LQm5VLrnA8NJBGzHcyfKsMzjpvg3XmMfngLfaxFJ37Qei1UE5fE5G60AZ
 Kp7aDWkdUMlEwp3HvJ9SZZBdPoYE//+Xlum0/AtvEh4IAAAA=
To: Lee Jones <lee@kernel.org>, 
 Daniel Thompson <daniel.thompson@linaro.org>, 
 Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>, 
 Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, 
 Maximilian Weigand <mweigand@mweigand.net>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1686769738; l=2088;
 i=mweigand@mweigand.net; s=20230601; h=from:subject:message-id;
 bh=EEQE3qlxnzvPdxyG2oGt17X4etiM2QkOKRdSulvTDt8=;
 b=QDW3TR3W/883zra37WNEzh+EauPKNzzRyQ0jUD+mJkih625wuoYVOam6dW69idKvEE8TnOpGi
 voO1JiSbRG6CGLieSDFKFKTLpGGwPABCsKlTwIlwrEUtY7qvyzobyJx
X-Developer-Key: i=mweigand@mweigand.net; a=ed25519;
 pk=Tjuj6PXmCCxzGTRw+9suZuZ41q/etgDHrIbPdkAaTpM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_120902_013599_B2490C62 
X-CRM114-Status: GOOD (  13.40  )
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

For certain brightness settings the Pine64 PineNote exhibits quite
visible flickering of the led backlights, leading to an unpleasant user
experience. It is understood that flickering is caused by certain power
line ripples interacting with the led driver, inherent to the
specific hardware. The lm3630a led driver is able to change the boost
converter switching frequency. Among other things, changing the boost
frequency can also greatly improve visible flickering issues.

This patchset enables dts control of two frequency modifications that the
hardware is capable of: Switch from a base frequency of 500 kHz to 1
MHz, and activate a frequency shift to 560 kHz or 1.12 MHz,
respectively.

As flickering characteristics are mainly hardware dependent, this should
warrant the inclusion of two dts entries for the lm3630a led driver to
control the boost frequency of the chip on a per-device basis.

Changes were tested on a Pine64 PineNote. The following brightness
settings were found to exhibit serious flickering without either the
frequency shift or the higher boost frequency:

echo 186 > /sys/class/backlight/backlight_warm/brightness
echo 255 > /sys/class/backlight/backlight_cool/brightness

Signed-off-by: Maximilian Weigand <mweigand@mweigand.net>
---
Maximilian Weigand (3):
      backlight: lm3630a: add support for changing the boost frequency
      dt-bindings: backlight: lm3630a: add entries to control boost frequency
      arm64: dts: rockchip: shift boost frequency for rk3566-pinenote backlight

 .../bindings/leds/backlight/lm3630a-backlight.yaml           | 12 ++++++++++++
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi            |  1 +
 drivers/video/backlight/lm3630a_bl.c                         |  9 ++++++++-
 include/linux/platform_data/lm3630a_bl.h                     |  5 +++++
 4 files changed, 26 insertions(+), 1 deletion(-)
---
base-commit: 858fd168a95c5b9669aac8db6c14a9aeab446375
change-id: 20230602-lm3630a_boost_frequency-bae9656ec759

Best regards,
-- 
Maximilian Weigand <mweigand@mweigand.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
