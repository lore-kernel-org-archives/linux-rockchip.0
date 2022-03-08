Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23625C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 00:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4i0q1cKmTKPLslbtg8eCSDSgHNWBNFHAkt7us61aX0=; b=37KKkQEdrFX489
	e+a7No7T/T9QukRYB0p3gVyS3ddufVsmaWKRNUrkddDcg3JY8GmYt8Q2o7dRRBm+cfoF2VwnOlS3D
	jMX4OLJ1AlVZzS4glp/TqfBdmtqviSXhQdDtAcSP7vdJolMkjfavTOjpHYDeAxu3imtODWbmyUEUg
	+s9tfLVEt5I11moQkWbWulhTePyu/XrceMrsWXmvfHLWQaeWQ+F1wcaQJDAxD0/DZy1hwXzORDmRK
	XhkufmGqUxILJwX3M7SfpJPAmvBCsy5MtdDkhMh/9MVjFZrQX4v9wTlhOw3Rc9F0yUu5KZv9ycnbb
	+VNvoz6mtmyJB23LcjOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRNXO-0025uN-E5; Tue, 08 Mar 2022 00:17:14 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRNQx-0022U2-QN
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 00:10:37 +0000
Received: by mail-pj1-x102f.google.com with SMTP id
 p3-20020a17090a680300b001bbfb9d760eso696260pjj.2
 for <linux-rockchip@lists.infradead.org>; Mon, 07 Mar 2022 16:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IizyyKLt67Z0rg/Dl48rRHBPPMkh6LQBUEtOh7L4+qk=;
 b=nmr1p7Zpi21Vo5nTGQ+W42hBgVJ+wceTgYMvIvBNHV386aRnfyDx2oDXThvctKBNiO
 T+ds6ZOdwo39kocWApZebgjftNY0qoz+m3RDRYadSuLI5UyDMPTNYd/7L1TqLH5XnUrc
 khMiRUj24hUdQ0Tu2ts8+KNaNSnmUm4eFMIF0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IizyyKLt67Z0rg/Dl48rRHBPPMkh6LQBUEtOh7L4+qk=;
 b=bCn0VI8Xy4p0V/czwAq6L7ZR67xtALkM5q7XFxnOnWH7+TI+n+02INkFo3L8L6xYVt
 HpXqE0mSoVgjk8Qx1u3R1GhbL1aMFwR2DCWv4nPKvePz6iWyyQpv+z+s4w7HBWEGp8dl
 HwX1/BIQhMViz78Ov8g3EZxsmDRgVnpwEhv7vtOHdjMnGNiMB9oZwP8pM9TWb+EKOS+/
 br5YCuvpVEcPLdGM2HE/xe7pinCit5BAlCm99Rs4ws1HPtK2Elq3z2gY4CVIsOdcUJwe
 ZC+H781o2wSaEQx+0tzFbXPEFKtoz1evucf3RMM9zHrZ2q9MbnFt4FMqh0mz9eXBUWYk
 2wHQ==
X-Gm-Message-State: AOAM532TbRrKVSQrt5rpPrUb77kRrJBsNnAC2W0qVcyjRjE/+wPd7bHI
 Fg+yHD3PmheAJOdJkIsLgQME/zUmg9zlHQ==
X-Google-Smtp-Source: ABdhPJysG+im7jQcn3JoysEPs+yE0jkGta4yg1/JABKGPaFJwDQomfn0JrClYlwNdAQ8BMAxlnuKOg==
X-Received: by 2002:a17:90a:138d:b0:1bf:7b06:ad6b with SMTP id
 i13-20020a17090a138d00b001bf7b06ad6bmr1672053pja.180.1646698234653; 
 Mon, 07 Mar 2022 16:10:34 -0800 (PST)
Received: from localhost ([2620:15c:202:201:e551:44dc:2842:57f1])
 by smtp.gmail.com with UTF8SMTPSA id
 g5-20020a056a001a0500b004def10341e5sm17375356pfv.22.2022.03.07.16.10.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Mar 2022 16:10:33 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: Lin Huang <hl@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Derek Basehore <dbasehore@chromium.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v3 13/15] PM / devfreq: rk3399_dmc: Disable edev on remove()
Date: Mon,  7 Mar 2022 16:09:43 -0800
Message-Id: <20220307160918.v3.13.I1476960b2586441beaef21dca4feb3ecc067f768@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308000945.706701-1-briannorris@chromium.org>
References: <20220308000945.706701-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_161035_895255_F7979305 
X-CRM114-Status: GOOD (  12.93  )
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

(no changes since v2)

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
2.35.1.616.g0bdcbb4464-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
