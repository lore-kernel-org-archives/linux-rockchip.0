Return-Path: <SRS0=Sv+h=MS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6154EC432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 19:01:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2500460F11
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Jul 2021 19:01:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2500460F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f7xcvGuxgNKYN8SIzziW+9pXdLWy3X5pMFYKZtFkN2Y=; b=FnXCZdsotd8f4u
	ISRJOZ1c2cKf5g86rH9FJu/7idnX4HZHnyO6Nojn18WD7Q4dqPJBSRUBV+C9DNH01XUnwitbmgJlk
	W8T6BdE8g9V+f3DkZIBrfjTM9VDmvSZw9XN1yDZA9fM9rwFMF2EMVXxOHOnwQTXawQvZD6P4znBFt
	bONYrIkB6+zspn5yCp/uesBacyS4OIpu9FWQAweNmF6+rZrT6/BcdsW4BnDjrJjFh7DGMP4jm1PVS
	CS1iFMgv12GV6uDu0eAc1KIc96mJFEU6T2yrIDVYy7xdsF7XwAFnMgq0Bnu9EV/15kGoBNysjpFis
	dpIbEwCu9B/XUj1KlOSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m85rG-00CJ9Q-Lh; Mon, 26 Jul 2021 19:01:46 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m85rD-00CJ7z-TV; Mon, 26 Jul 2021 19:01:45 +0000
Received: by mail-oi1-x229.google.com with SMTP id t14so12175800oiw.0;
 Mon, 26 Jul 2021 12:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VxgV/WZYrRnUNYZoq1PatOk9eKE1z40c/weknMKba3U=;
 b=oBkaZgqS+ToTCdwLGArw6TJQMwc4jZflXv97ufoNQoyvX9NC06ytD13DLoEZKCDSgo
 Vh6hfgmPuHRY5MjtHMjQ5yH17nl0sd3V2urnFx1pWDtiarf4Qd4W5zMxg//4LLyijG0j
 px3XDSKO5NuCZCU1IsIm7ynKDhPjpTDxM5myLYslYZ42tPWxnUnsAYXcxvxq68oonRvV
 EEJWpeV583BtrAgQ3KBgkYr9+mm0Cp3bRqQ9wKU0D1Z6PW7210ojhwGCMkXnOYbA6BAc
 1UYKXNUGGGIHHjgYJM17vJ6cOdecJu0sSaumPz6oUgWHM63RueW1uTKErIo1vp74r7ZU
 awrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VxgV/WZYrRnUNYZoq1PatOk9eKE1z40c/weknMKba3U=;
 b=gpKvzuwtYoFdSknHwpxLQQl/AdoqpR1MsXLo3Jb741+ajQBzxIpgVrqJ9iSdDRPjUf
 1KC6TBMk5TgylFyx+Z94eQtUsdRQKLdoQmCzrv3OaEooy9dR8Fcz+eIU2BlVt2Jni1Nh
 NWXnWZtXIIQoV+TCCsMMIUks1XuzTOKqWXzFewRhuwSajq0xa+rKg22smjz0RuHerJN6
 RziOG5bF0JTA2BigoWgCXyG9UB9os8cenqhhCFlay//ay/A0Ty4g5e0Y+q378OviEDjV
 3SnPjDj3J9IksX+dRwQzSC0uhFO4Usz4NLhFamzlmOQQ4lUFj6bbpZqt6963qLNp6C7Q
 /HLw==
X-Gm-Message-State: AOAM530t96pm12cv1LFzQlmXYHzbPgdq8RzjHVzYNCSM3U0yWkAlU6yz
 hwJnlYVb9ElSjgu5S7i7qKQ=
X-Google-Smtp-Source: ABdhPJynKmXLpZMrOUT118x9dz/3gv15UTef1yGOoG1U+ALqocuDZQjO4+fElncSE+N+c7WO6g2guw==
X-Received: by 2002:aca:b68a:: with SMTP id g132mr325537oif.139.1627326102435; 
 Mon, 26 Jul 2021 12:01:42 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id v7sm106610ooj.46.2021.07.26.12.01.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Jul 2021 12:01:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC v2 0/4] power: supply: Add Support for RK817 Charger
Date: Mon, 26 Jul 2021 14:01:26 -0500
Message-Id: <20210726190130.1973-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210726_120144_016684_626A4097 
X-CRM114-Status: GOOD (  14.17  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chris Morgan <macromorgan@hotmail.com>

As this is my first charger driver, I'm submitting it as an RFC so I
can get input from the community on what else is needed to make the
driver consistent with the quality upstream expects.

This series is to add support for the Rockchip rk817 battery charger
which is present in all Rockchip RK817 PMICs. The driver was written
as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
myself Chris Morgan <macromorgan@hotmail.com>.

The driver requires some basic parameters be described about the
battery in the devicetree such as the maximum capacity, the minimum
and maximum voltage for the battery, the maximum charge current, the
maximum charge voltage, and the value of sample resistors and sleep
currents.

The hardware itself contains an ADC capable of measuring the voltage,
current, and temperature of the battery (though my implementation of an
Odroid Go Advance lacks a thermistor for temperature). It also contains
a columb counter, registers for tracking the measured voltage and
current at boot, and a few bytes of nvram for storing data.

Changes from V1:

 - Fixed a CLANG warning regarding an uninitalized variable.
 - Fixed a CLANG warning regarding a pointer as a bool value always
   returning as true.
 - Added Maya Matuszczyk to the Signed-off-by.

Chris Morgan (4):
  [RFC v2 1/4] dt-bindings: Add Rockchip rk817 battery charger support
  [RFC v2 2/4] mfd: Add Rockchip rk817 battery charger support
  [RFC v2 3/4] power: supply: Add charger driver for Rockchip RK817
  [RFC 4/4] arm64: dts: rockchip: add rk817 charger to Odroid Go Advance

 .../devicetree/bindings/mfd/rk808.txt         |  35 +-
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  25 +
 drivers/mfd/rk808.c                           |  16 +-
 drivers/power/supply/Kconfig                  |   6 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/rk817_charger.c          | 932 ++++++++++++++++++
 include/linux/mfd/rk808.h                     |  87 ++
 7 files changed, 1099 insertions(+), 3 deletions(-)
 create mode 100644 drivers/power/supply/rk817_charger.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
