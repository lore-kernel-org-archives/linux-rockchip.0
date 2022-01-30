Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2048C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jan 2022 21:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5EgVyMVjCBagmzcmBytLhNU/OGiAXcBxpriDg9AL90=; b=JL8P09WAuWB9hf
	4P2PIe5/pzTBqSdcjjNhzpv0F7hn0RHldbHKKje9+pSIkqsDgZlbSJG1uxDxl2SPa2GYka22mZHfH
	4z4Xap+GpdIrFf+KH6bQfcIR7+Ept5fb68wuak88Dby8AD/dy5Gtdfid6/TQSc3e1WSdfysOPI9Kt
	rZBrXqRYj73E44ybygX7LTM8IOD+1HJMJNo2hIKqdXLwZxjEjAwkHBjmYZfUbQNGt0XmQpn3CaUk/
	oUlnWMMdnGVzXfw3IvFcgcwIXKFnwKk40nQtCtPRK6oKuqAgK4rrhjaCDKepe+5ZvoKYvqRJsu9Cm
	oKZSDSbgIyWNC7DZoY3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nEHLC-007RPb-T4; Sun, 30 Jan 2022 21:02:30 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nEHL9-007RNv-KZ
 for linux-rockchip@lists.infradead.org; Sun, 30 Jan 2022 21:02:29 +0000
Received: by mail-wr1-x435.google.com with SMTP id e8so21699354wrc.0
 for <linux-rockchip@lists.infradead.org>; Sun, 30 Jan 2022 13:02:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MNQUuQFFfpeWugiolZqopaG6OtAWAYvBDQU1DSusnnk=;
 b=kHh6+rnAfh1UicGsC+iJz9NJQum0K2Cxfwo4EqwieSebI9JjCzku9c+/47G38UUuuS
 OMZ9UMlxqVkK1n1TuEvSgEESwt2BSbn2IfkLx4Rc8qxW9NOrdgJ/bSED5jAOrNXM3EtJ
 lTZLyHJEufuRQdpYbgHsGC8Ts4qncbAug9thUjRUm2n0kk/1iO4QT3pUHZVbWtTF7hIf
 /HnMPGBos/MHr+Zx2okCr8mjdtkGr2cy7Akp+A1jIHwsnaGDpwFnEo6zggRlT1jKt4Y1
 wFfs6rICskTLjQE2VCdu021HMul+hsBRy6s8mvrCRO4+hvrbUvoTzDAcYnaM8XTEJsAq
 7k/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MNQUuQFFfpeWugiolZqopaG6OtAWAYvBDQU1DSusnnk=;
 b=2s1HPlF7a4HHBrT8N41RgsS+nx7w1ST82/N79B+HOIZ9/J9frEpAdeg3abrHyv3WnT
 uATHvsJeafCmGoLg/egvWBTO0qMelXgQHMQNiKs7DakpVru6gk8g3MuP7YBtzKZZRiJC
 O+UQfrrPA62/x3YjZ2suoXTmTi05avivbfug00TkyOM4W7iiAgT1MAu6gqEd/Y4XUc6h
 hJdwM5DNCAlxj+lrVOeqie9QQYkDz2srYD9UKtDRHfMAS5m4BUlt/Y2XMdhD2U7wtteU
 mJ3y/2u+yBIE9Vu8SCD20J6YwY1D9uRZfRWTSCYLWqSETj4/hfckqKAlziFAQS0ypq7A
 +f3w==
X-Gm-Message-State: AOAM530gsxVgpGTb5LF3wVvVQnlEo8wyF1ygPuVPUPTjdeF1vTZfZXg6
 Jfl0lMdoR2kPWeI0JoGrtKgvPg==
X-Google-Smtp-Source: ABdhPJwnWuziiq1f4PdtrcCYU1OtKdjwSfYjmTBoTDV76XQcm47JlfCtRFtPAz9INT1cD5L8qeIjoQ==
X-Received: by 2002:adf:fe01:: with SMTP id n1mr15207083wrr.141.1643576545483; 
 Sun, 30 Jan 2022 13:02:25 -0800 (PST)
Received: from localhost.localdomain ([2a01:e34:ed2f:f020:d3c5:fe0:78a4:5227])
 by smtp.gmail.com with ESMTPSA id
 i6sm9845185wrw.8.2022.01.30.13.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 30 Jan 2022 13:02:24 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: daniel.lezcano@linaro.org,
	rjw@rjwysocki.net
Cc: heiko@sntech.de, lukasz.luba@arm.com, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, ulf.hansson@linaro.org,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v1 7/7] dtpm/soc/rk3399: Add the ability to unload the module
Date: Sun, 30 Jan 2022 22:02:09 +0100
Message-Id: <20220130210210.549877-7-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220130210210.549877-1-daniel.lezcano@linaro.org>
References: <20220130210210.549877-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_130227_698018_C8E44DF8 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

The dtpm hierarchy can now be removed with the
dtpm_destroy_hierarchy() function. Add the module_exit() callback so
the module can be unloaded by removing the previously created
hierarchy.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/soc/rockchip/dtpm.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/soc/rockchip/dtpm.c b/drivers/soc/rockchip/dtpm.c
index ebebb748488b..5a23784b5221 100644
--- a/drivers/soc/rockchip/dtpm.c
+++ b/drivers/soc/rockchip/dtpm.c
@@ -52,6 +52,12 @@ static int __init rockchip_dtpm_init(void)
 }
 module_init(rockchip_dtpm_init);
 
+static void __exit rockchip_dtpm_exit(void)
+{
+	return dtpm_destroy_hierarchy();
+}
+module_exit(rockchip_dtpm_exit);
+
 MODULE_SOFTDEP("pre: panfrost cpufreq-dt");
 MODULE_DESCRIPTION("Rockchip DTPM driver");
 MODULE_LICENSE("GPL");
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
