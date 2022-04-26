Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3833EC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 01:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9a/N1KgpMmO0u8i6wZU9TpPgTzZ7T4wMKS3V89QPLA=; b=B4KmHBITiPPqy4
	Itz6dbxinPGXY8UYu/Sq8hwaV1HbLbjYyT6q76sjFfgABEy8Sz9imwsx1RxVTFGVtzhCrz/hrRIz0
	M7EZbAUrDiJgt3kUKkz5PgbOHOEO83iaU/fWsawN/sFcx+jHzUimiwxkhDOVbfMa0QQaSl0vANwkI
	bxlknCQrK60lyFUkBdsRG1Jh2lU3C6SMYm7yfaF6CjVpM8Y0V4bqyLtnbSTgKFJucB549FUcUUA7V
	pu4wWqqaYDku8rdSu27ke+AT5KtZmv1aJaLCVhYiAHUhGqJ4/nz/PnrWRsVHU033iWlMS6bbVOxC8
	A20cMvUAehyHzOrONt5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njAHC-00C72y-J8; Tue, 26 Apr 2022 01:46:02 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njAH7-00C71L-SE
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 01:45:59 +0000
Received: by mail-pf1-x429.google.com with SMTP id y38so785776pfa.6
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 18:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3d3BRK+rsV0H1MEivwe2mn7frrdSPcB90v4KWuBBaQM=;
 b=ej1HcqsW5KLOqLNaCI4dLiEgQGM6O8Sfb90ZyxBBlRzwTORd8VmkMrjWYneM4Mc/X0
 6BgPOZ3i7s2PP3A12OBzv+lLyJJGIhm+pJtczgpiXmD2gQA6tnidUruHBfeY9f0iM3aS
 S/exhv1wqe+HQQjOWOak11BEW/weBv32YC2ws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3d3BRK+rsV0H1MEivwe2mn7frrdSPcB90v4KWuBBaQM=;
 b=mmULxbiMmq01Vm7FJxo4A0gHnt5jrH1FoNMYkfcSI538aKOrkn5LzIqkVCczrGIpJu
 WD54KZegW/r0J/4vk781mO/UZqc/fnGQEdkx2Q7UU+aG/Xgg424FZgQ/lZOXlEUY3KTK
 MSYm0A3H2qhw7LEFZwhMVWT2eO2B4daY56H1EDAfoc5zXV1u8ZuAi0q5vOaoHxuXFt9r
 mUXjQzyM9HMIucJssvm9/X5fU4hvhfL8fxBX3GvK9POgHBbTy8afaMhsxpEkhCkZj7Y0
 GCDhUum3whXa+GpcTMdRe/VXDDIVLXLGLe3QoudRFIPcI/V+GlNmKDZEGWdcD7/ewLya
 xpqw==
X-Gm-Message-State: AOAM532rgxVIUFS/gskbWBt6vJOSs/9ZUEfswK0b2PpW4H+dkQUDOXJo
 ijZebWSqSunW2NCFOFnHqtUJyTF6vANJZQ==
X-Google-Smtp-Source: ABdhPJw/aUTO4Volur0lD5eMJniKHG/Naw8BdeIAI9Zc5hYF0pNjW/rmonH1Z7xjPgDTBUflvk6nlg==
X-Received: by 2002:a05:6a00:138e:b0:50a:9503:44a7 with SMTP id
 t14-20020a056a00138e00b0050a950344a7mr22021953pfg.75.1650937556699; 
 Mon, 25 Apr 2022 18:45:56 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:84c6:2d6d:c16:1a1b])
 by smtp.gmail.com with UTF8SMTPSA id
 i11-20020a654d0b000000b0039d82c3e68csm11169010pgt.55.2022.04.25.18.45.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Apr 2022 18:45:56 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Arnd Bergmann <arnd@arndb.de>
Cc: Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v3 2/3] soc: rockchip: power-domain: Replace dsb() with smb()
Date: Mon, 25 Apr 2022 18:45:43 -0700
Message-Id: <20220426014545.628100-2-briannorris@chromium.org>
X-Mailer: git-send-email 2.36.0.rc2.479.g8af0fa9b8e-goog
In-Reply-To: <20220426014545.628100-1-briannorris@chromium.org>
References: <20220426014545.628100-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_184557_947892_4E92CBF9 
X-CRM114-Status: GOOD (  13.56  )
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

It's unclear if these are really needed at all, but seemingly their
purpose is only as a write barrier. Use the general macro instead of the
ARM-specific one.

This driver is partially marked for COMPILE_TEST'ing, but it doesn't
build under non-ARM architectures. Fix this up before *really* enabling
it for COMPILE_TEST.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v3:
 * New in v3

 drivers/soc/rockchip/pm_domains.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 1b029e494274..cf16ff9b73b3 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -178,7 +178,7 @@ static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
 		regmap_update_bits(pmu->regmap, pmu->info->req_offset,
 				   pd_info->req_mask, idle ? -1U : 0);
 
-	dsb(sy);
+	wmb();
 
 	/* Wait util idle_ack = 1 */
 	target_ack = idle ? pd_info->ack_mask : 0;
@@ -285,7 +285,7 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
 		regmap_update_bits(pmu->regmap, pmu->info->pwr_offset,
 				   pd->info->pwr_mask, on ? 0 : -1U);
 
-	dsb(sy);
+	wmb();
 
 	if (readx_poll_timeout_atomic(rockchip_pmu_domain_is_on, pd, is_on,
 				      is_on == on, 0, 10000)) {
-- 
2.36.0.rc2.479.g8af0fa9b8e-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
