Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0612C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 01:49:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BjRbeTdbNrMo/X0CiNjHaTgF3dCI6KCaJrvmXwI/FIY=; b=KF3/9MXS2dTltD
	fT56Gnolv4nzuxPPvpi3Shoj7UZ3N4rzkNo8DJ3UxKBAVbRWeY9IraUkOIJZgthmR6MAM0pNff83L
	4ow5d+TfAG5/ysBZMEvMffKtxwKsdjq1Esz87RE+04I9YJI1gyExZLQyQg5OlAlEJTV5lJfVYKLdp
	HUmNsRkKTykSNULGkviFz7GHMrsgcacEWa2kf92KfQKDMneM5LJZjvN+9/4QIbVUZW2B966e/HlmP
	O9OvqK7TB8oQgrIwutbnRon3NhGDImNlfl5RzG9OQGliUHIE8uUMwUwk6cP4PRWqw71HEFiyxq+SW
	uz4SIm4bMFby4Fn6s5Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbunp-003GvN-Mj; Wed, 06 Apr 2022 01:49:45 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbunW-003Gle-V5
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 01:49:28 +0000
Received: by mail-pl1-x631.google.com with SMTP id o20so664359pla.13
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 18:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0FW336dtHK89fvl3u7JvXc/X8Vjn0tSLcri6guFx7q0=;
 b=Sm9XupWe/onCfaGAwkmriGjGwohqfs7tWqDVDN3hrzuBMaoUOGdAEyO1VLSUAtATA8
 Ft0TJTt8T8ciBNG6tsVOxsv8tvLCqPvaXb7mzPcJpEZFilTlFRXoZAoBamloOY0jZhkv
 9D62OHjZGQyqzrj1XG9hW8jNlQ6K+qMVy3crY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0FW336dtHK89fvl3u7JvXc/X8Vjn0tSLcri6guFx7q0=;
 b=PaQdCdJsITyuVAhrv+qMWq1T7vMePqsL8VTHoY2ZdD8Xc0VU4uqNnflSLVwu5iM1EV
 Vzs+E1AHg5ievfFlRSFqTUdPAYMilc9YUtYO+44UHns6gV5EPDAWhIW6IwVaaTzOHehC
 VyiNUGo8RpftOpvI/fo3/VCKmOxjFsV4MfZv+1YI8v5aw5F2VqgeQgHIDMjBM16A6V4e
 RILHAev67MQNsEawQNK4j3do4+hY5jn49ncvx2KcjJd7p7/iUJdAVsy5wEpASUBtCCF8
 eCopa5M4csHzcarOFKo7HaeOd38FzNB7JUqyz9F69wIzd/z+1W26UEfI1L/cLzeaAFgu
 w+pQ==
X-Gm-Message-State: AOAM533oFlou/P7gYxff9rmu9Cbv8/kCxGKbX0A4bEuzSmF9dzJtO6DY
 9O49EmSPBhR0Ve/4Zl5uYBkAkg==
X-Google-Smtp-Source: ABdhPJxPnqmvxiqZo+frZDwXl2WoTFYWCfoh8Unlghz4i8m3sD7L7wbxSmmeVCG/tSr91GVENxFv1Q==
X-Received: by 2002:a17:902:db03:b0:155:cb6a:7c8e with SMTP id
 m3-20020a170902db0300b00155cb6a7c8emr6492519plx.125.1649209765864; 
 Tue, 05 Apr 2022 18:49:25 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:6903:769c:e1f5:9c25])
 by smtp.gmail.com with UTF8SMTPSA id
 bg13-20020a17090b0d8d00b001caa8f51098sm3475575pjb.9.2022.04.05.18.49.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Apr 2022 18:49:25 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-pm@vger.kernel.org, Doug Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Brian Norris <briannorris@chromium.org>
Subject: [RFC PATCH 2/2] PM / devfreq: rk3399_dmc: Block PMU during transitions
Date: Tue,  5 Apr 2022 18:48:42 -0700
Message-Id: <20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid>
X-Mailer: git-send-email 2.35.1.1094.g7c7d902a7c-goog
In-Reply-To: <20220406014842.2771799-1-briannorris@chromium.org>
References: <20220406014842.2771799-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_184927_034124_8AA55091 
X-CRM114-Status: GOOD (  14.41  )
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

See the previous patch ("soc: rockchip: power-domain: Manage resource
conflicts with firmware") for a thorough explanation of the conflicts.
While ARM Trusted Firmware may be modifying memory controller and
power-domain states, we need to block the kernel's power-domain driver.

If the power-domain driver is disabled, there is no resource conflict
and this becomes a no-op.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 drivers/devfreq/rk3399_dmc.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index e494d1497d60..daff40702615 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -21,6 +21,7 @@
 #include <linux/rwsem.h>
 #include <linux/suspend.h>
 
+#include <soc/rockchip/pm_domains.h>
 #include <soc/rockchip/rk3399_grf.h>
 #include <soc/rockchip/rockchip_sip.h>
 
@@ -93,6 +94,16 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
 
 	mutex_lock(&dmcfreq->lock);
 
+	/*
+	 * Ensure power-domain transitions don't interfere with ARM Trusted
+	 * Firmware power-domain idling.
+	 */
+	err = rockchip_pmu_block();
+	if (err) {
+		dev_err(dev, "Failed to block PMU: %d\n", err);
+		goto out_unlock;
+	}
+
 	/*
 	 * Some idle parameters may be based on the DDR controller clock, which
 	 * is half of the DDR frequency.
@@ -198,6 +209,8 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
 	dmcfreq->volt = target_volt;
 
 out:
+	rockchip_pmu_unblock();
+out_unlock:
 	mutex_unlock(&dmcfreq->lock);
 	return err;
 }
-- 
2.35.1.1094.g7c7d902a7c-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
