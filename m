Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D61BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0VvpdMHQuutqfOeYpUWG/dsx4ATj9wlaAXc3/NAZ9g=; b=5DPdQam1EYQU0O
	7X5Ft5+WHq8A4vMfTan9T638vou7gnu94XQJaU81saqhlma+7LJeJVvSbFRBfAsl6blnPJ5xDb6U+
	fGYRqsSRABvlfBqdfgsOtYn+jcChMELJW8l74CQhdKOoPPj7VxPtG5/5CzN2nWPA3iuSkuCcedSSW
	pSxG2+BFIsAas2/VbC2bn9PN8ERgcS1uib/yjt0How5rOux8iqLAD434zBbKBs1lc4cCN7sl1YIMi
	IDPvDBAMfdg03jnKX9fesMiniBQN8rwNxDr2oqSvZ9S9LmmunxCOYIjFvkk8vFauDK+coSxZNsNwc
	d1qYiOUpkSHbd7MGPk+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDDzz-00HK0e-JS; Thu, 27 Jan 2022 23:16:15 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDDsv-00HGVg-29
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 23:08:58 +0000
Received: by mail-pf1-x435.google.com with SMTP id i65so4358975pfc.9
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jan 2022 15:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EE6yOukYiRv5t8m4wLbwnB8xsnP3xhP8Res4dSCKaao=;
 b=nmRFGuUfVGO1KN+i396jwFdqW3ji1pT8oIqYTB5EuvvDuDjJ4JLEpzIqppQ63Ye9oy
 hIC7Gfe2HCmAYKlFN7ntRE0NoWVXbgljdPNyr9JIyCzAFu3DbwqJUQ5DfovNWtpqnxdG
 58KCpRNpof8Q2dQeySnSxQSVVVH/YetiHbpPM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EE6yOukYiRv5t8m4wLbwnB8xsnP3xhP8Res4dSCKaao=;
 b=MdLqLB876bmYeh4idnTUyIzMKELCxANbtUIJdP8y/EDfDMR3TE0qoF+6Iz5+xtcU8t
 9hCb3nFJBDMpWU7VEe8azNgCh1R+0K34B8MiJ+xSkvMNO7xH3bQAU3mEdhHlR+twcqso
 M9PHbKjR4R5LHy9FwQbE8k/XfzBmOs07uFLeM30jwtCm1UadOqWGaTOcBg0EZebgcYIm
 CxR8AIwSs753P80E83G3itk8TYhnG4eU1AtQlvCkYijbIw0umtEwNd66N85F18Z5AFX9
 oHD6iqOlCCWpTqSrV2bT2PN22QTOIUFt2mCdoeyDGObYpcXkzOxf+f9SOhnYyIch3riw
 Xirg==
X-Gm-Message-State: AOAM530viKXDVytYjD4/InOIiH0WGK+dX5h4SPm10c9JgcVKD2rB02XK
 2btFMkk4nKcvB2No7Q4JU589NA==
X-Google-Smtp-Source: ABdhPJz2hxjAYMq7nKYFqCN7bLNZ95pkrVKsFwO5nn2OivAjhokfFleQHjW/LAwoP5kPOvqwcxld4Q==
X-Received: by 2002:a65:6951:: with SMTP id w17mr4482809pgq.108.1643324930151; 
 Thu, 27 Jan 2022 15:08:50 -0800 (PST)
Received: from localhost ([2620:15c:202:201:723d:38a9:9e7f:3435])
 by smtp.gmail.com with UTF8SMTPSA id v20sm5384419pfu.155.2022.01.27.15.08.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 15:08:49 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 13/15] PM / devfreq: rk3399_dmc: Disable edev on remove()
Date: Thu, 27 Jan 2022 15:07:24 -0800
Message-Id: <20220127150615.v2.13.I1476960b2586441beaef21dca4feb3ecc067f768@changeid>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
In-Reply-To: <20220127230727.3369358-1-briannorris@chromium.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_150857_152617_9B312EBD 
X-CRM114-Status: GOOD (  12.50  )
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

Otherwise we hit an unablanced enable-count when unbinding the DFI
device:

[ 1279.659119] ------------[ cut here ]------------
[ 1279.659179] WARNING: CPU: 2 PID: 5638 at drivers/devfreq/devfreq-event.c:360 devfreq_event_remove_edev+0x84/0x8c
...
[ 1279.659352] Hardware name: Google Kevin (DT)
[ 1279.659363] pstate: 80400005 (Nzcv daif +PAN -UAO -TCO BTYPE=--)
[ 1279.659371] pc : devfreq_event_remove_edev+0x84/0x8c
[ 1279.659380] lr : devm_devfreq_event_release+0x1c/0x28
...
[ 1279.659571] Call trace:
[ 1279.659582]  devfreq_event_remove_edev+0x84/0x8c
[ 1279.659590]  devm_devfreq_event_release+0x1c/0x28
[ 1279.659602]  release_nodes+0x1cc/0x244
[ 1279.659611]  devres_release_all+0x44/0x60
[ 1279.659621]  device_release_driver_internal+0x11c/0x1ac
[ 1279.659629]  device_driver_detach+0x20/0x2c
[ 1279.659641]  unbind_store+0x7c/0xb0
[ 1279.659650]  drv_attr_store+0x2c/0x40
[ 1279.659663]  sysfs_kf_write+0x44/0x58
[ 1279.659672]  kernfs_fop_write_iter+0xf4/0x190
[ 1279.659684]  vfs_write+0x2b0/0x2e4
[ 1279.659693]  ksys_write+0x80/0xec
[ 1279.659701]  __arm64_sys_write+0x24/0x30
[ 1279.659714]  el0_svc_common+0xf0/0x1d8
[ 1279.659724]  do_el0_svc_compat+0x28/0x3c
[ 1279.659738]  el0_svc_compat+0x10/0x1c
[ 1279.659746]  el0_sync_compat_handler+0xa8/0xcc
[ 1279.659758]  el0_sync_compat+0x188/0x1c0
[ 1279.659768] ---[ end trace cec200e5094155b4 ]---

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
 - New patch

 drivers/devfreq/rk3399_dmc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
index f778564cab49..fca9fcbd4249 100644
--- a/drivers/devfreq/rk3399_dmc.c
+++ b/drivers/devfreq/rk3399_dmc.c
@@ -452,6 +452,8 @@ static int rk3399_dmcfreq_remove(struct platform_device *pdev)
 {
 	struct rk3399_dmcfreq *dmcfreq = dev_get_drvdata(&pdev->dev);
 
+	devfreq_event_disable_edev(dmcfreq->edev);
+
 	/*
 	 * Before remove the opp table we need to unregister the opp notifier.
 	 */
-- 
2.35.0.rc0.227.g00780c9af4-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
