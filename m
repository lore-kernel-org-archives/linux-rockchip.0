Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E70EBC38A02
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Oct 2022 18:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3FfUbZFCaAQ9z6ndyC6v+FWnch6gRUo00u1tLihWkyM=; b=pgKM7z72LQUuyx
	d73BtibD2bh4oopLu4y9IMIJeooLbN9nd1rKfuXhU6bdAyVLXh+P2TRlm+dWOoHmZC6Sf0V+oXZ2T
	S6mgXnkhGO0KrFzPmkU20rjD1paTKYp3LWUVMWduKD0J65FWPXK+WpGYR1YfM8phUHeLj+rgj43aR
	B/iFnNu1VofFxl1hfcGwX9CIM/MNg3LLvnwEUBhmGzorRyYz8VzVgmb7Q4xmna0CUFJSkWjR6MscG
	DwFkUnVpwJx7IuuXlOiidBezHZuTwas87K16Q00m5IiUT/OWoLu3caTfjmRmTIfhKz++D8gocU6v0
	k8vMGOWoGM13Uc3S7Wyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opDLb-001uc4-IV; Sun, 30 Oct 2022 18:47:51 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opDAD-001pHR-F6; Sun, 30 Oct 2022 18:36:08 +0000
Received: by mail-wr1-x42c.google.com with SMTP id a14so13179172wru.5;
        Sun, 30 Oct 2022 11:36:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lrNDCNfu7ZM4dOdnaJgxpzE77S3pvCYPnM96o3tk4S4=;
        b=AESNzqeJiKxl1IxfOpqDJ2H1k/FRxBVPKro5eYOHHM7YpejXu7wLw3XOsL4rcocAqt
         5CBNVZuVo9U9RGv65pOt8JvncjL6DOzu8ewmJgjqYdEITbpmC24ZhA4J2eRj0uMC92oU
         kKCNJpj9IMx3QJnhwgSuovtvkatUDaylF6zWEP27DBgfsnRTSzraLU04DgTfidfcBFtj
         aa3bTLTL1b7ZFVRJCmava3N+zAGXEsDEkcqxOe8aqzIa8dvo98G/PMMHQZOZDZXNqjPV
         Wrr70cJD+JKlPw/jpGogsEbebHhKKy/cXwHi9coZR8wI4znmZ5r7x+Wo0Hh0hG2nQFKe
         SQTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lrNDCNfu7ZM4dOdnaJgxpzE77S3pvCYPnM96o3tk4S4=;
        b=K+WsuB1wcPQkUcMgLmzN83UcdOSGY4yeruPENU4sCBx6pxL1jPOn2dY1Ncz/HMhLpD
         3mSJXLRGHPYMiZIPYaXnNUAYZ/+eMpAkAFCBqRH8KodVFcQSulPKabhUqOxxOQJ2bNDW
         OnG3DiLia7FDs2dbxBZU0xE5t5bgRf4ZVL4uG744Ne2t8W0V0CsMUTWmpQMxZBCyy3o+
         wREco5okczfocmWYJFOCHLtvmlKy893j0isrlRsDkP0in82hNdjiS86TRRJ0sh5j003f
         JB7+DD7aHN51vC8fu1jORFo0Eg4ZCGCNuvWEFw67pUr/UWRhKWuYKSOyIf4Vb5d0Aame
         xF2Q==
X-Gm-Message-State: ACrzQf2rBzS40I7cEHCOKrWBQ/Euc3Mnxe4Pm+ZvbJgWAfcT6I/wMeWs
	rwlc08oEmnU0BMQaZ+8nFm4=
X-Google-Smtp-Source: AMsMyM6v15LvKnbZgCTZa8QwRsmiIY1KiecD0neqjsDCxkPUaoE2bVtKJxbo/R4DpSUL7JsqKoUpCg==
X-Received: by 2002:adf:fc12:0:b0:236:9b2e:4843 with SMTP id i18-20020adffc12000000b002369b2e4843mr5535390wrr.620.1667154963240;
        Sun, 30 Oct 2022 11:36:03 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id q8-20020a5d5748000000b0023677081f3asm4835322wrw.42.2022.10.30.11.36.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Oct 2022 11:36:02 -0700 (PDT)
Message-ID: <88e93a81-ef9f-adcc-db83-f8b5ba615c47@gmail.com>
Date: Sun, 30 Oct 2022 19:36:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/2] arm: rockchip: Kconfig: remove select ARM_GLOBAL_TIMER
To: heiko@sntech.de
Cc: linux@armlinux.org.uk, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221030_113605_563128_DB16F2C5 
X-CRM114-Status: GOOD (  11.03  )
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

Let's disable the arm_global_timer in order to have the ROCKCHIP_TIMER
(rk3188) or DW_APB_TIMER (rk3066a) selected by default.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

ARM: dts: rockchip: disable arm-global-timer for rk3188
https://lore.kernel.org/linux-rockchip/1492374441-23336-26-git-send-email-daniel.lezcano@linaro.org/

clocksource: arm_global_timer: implement rate compensation whenever source clock changes
https://lore.kernel.org/all/20210406130045.15491-2-andrea.merello@gmail.com/
---
 arch/arm/mach-rockchip/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index b7855cc66..0432a4430 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -15,8 +15,6 @@ config ARCH_ROCKCHIP
 	select DW_APB_TIMER_OF
 	select REGULATOR if PM
 	select ROCKCHIP_TIMER
-	select ARM_GLOBAL_TIMER
-	select CLKSRC_ARM_GLOBAL_TIMER_SCHED_CLOCK
 	select ZONE_DMA if ARM_LPAE
 	select PM
 	help
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
