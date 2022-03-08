Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57800C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D4i0q1cKmTKPLslbtg8eCSDSgHNWBNFHAkt7us61aX0=; b=II7vijU/9nlxec
	AZO5p2Zc67V2UfZEB5QSKE7oL3xaSRaovziaW9CrlCoTLxNfTRfUtupxydufU3nA72LY9IXBX6eu4
	OR6/XLAm744JVQT99EMKo4bVmYrXUXuagCkWFUEBcrXlxNINX5p+y6Wok5pCrvZneCJilfrXh4wD6
	ONLkq/yrHXLOUSPf+pN9f5DntzajrktOD46l08nflvAnT9aHl0BuVNLhNpaAvOjPvUt1Bxol9Y2S4
	TVtPqDOLSxVdwLfHb618l2JHwO5qP+Yrjh06Y0sS4II2zWUph2xSs3HqQyQLIYkxpim9tnyZI8MFi
	LGq/YtcuNnVRtZCZVA5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfLe-005x70-Ek; Tue, 08 Mar 2022 19:18:18 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfDO-005sUs-LW
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:09:49 +0000
Received: by mail-pl1-x635.google.com with SMTP id t19so14383661plr.5
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IizyyKLt67Z0rg/Dl48rRHBPPMkh6LQBUEtOh7L4+qk=;
 b=Bvfe9G/MEM66BYRH60KYgdCaJh8AKOGbjxX5+ZCBHFRCY02DcOTijHLwWDlLz9nFmg
 V3PqU98KeKYRX34QTCbWnr1XJ0sMW/rOeT5GMi0izY6xvBsIPbq32RiLBMYqCOm9fUJn
 QJnq/Qrlh5G66FkEuGcFblcQlUXp0y2ZnWIJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IizyyKLt67Z0rg/Dl48rRHBPPMkh6LQBUEtOh7L4+qk=;
 b=oObAUeiEKPm7A27qpD6wF9JOFTwc99/M5+mGWeb3E/dqgJ1phPn80ZXA+EQGAu+h3E
 i+EraO4iPtHQMB+xgq0RjgDkKSD/wiiAOSBT/BvwQrpldCAVybpN5uIQQjJUS8ZUNjwb
 2ujfGsRhF5HjocUnhWXBr/JZ8IEtvoIz71zzSeWp9dAedz+qdsGQYXuDumBJ9q5zRfbF
 jq5MNVVUS3c8qOvVY2IEvgt6r82l6m9+wJH8J9LoJmjM+qSML8kqBTMRYQ9c72bXH6fp
 VmwwvLuON8HjNijNDOuJswID9CgN/UBr1IAjDrDo+aoPqOpXbfsF5S1ZgDc1Qy28uX9p
 8Zlw==
X-Gm-Message-State: AOAM531GaEMP8nwUzXRJaP/wJjoXGchumIRP9bbppw2sE8Sc87Q3YQaR
 qmNiYeIu8qJpmDnTPtBMKuOflg==
X-Google-Smtp-Source: ABdhPJyqj7YklmvfKU/LYYyISAhNTAhR5T/zle5js+D93QhjzLdkS7Znp9ivicweO2UwT/n6KE8wCA==
X-Received: by 2002:a17:902:e944:b0:14e:dc4f:f099 with SMTP id
 b4-20020a170902e94400b0014edc4ff099mr19029261pll.161.1646766585879; 
 Tue, 08 Mar 2022 11:09:45 -0800 (PST)
Received: from localhost ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with UTF8SMTPSA id
 x14-20020a17090ab00e00b001bf2d30ee9dsm3639224pjq.3.2022.03.08.11.09.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Mar 2022 11:09:45 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v4 13/15] PM / devfreq: rk3399_dmc: Disable edev on remove()
Date: Tue,  8 Mar 2022 11:08:59 -0800
Message-Id: <20220308110825.v4.13.I1476960b2586441beaef21dca4feb3ecc067f768@changeid>
X-Mailer: git-send-email 2.35.1.616.g0bdcbb4464-goog
In-Reply-To: <20220308190901.3144566-1-briannorris@chromium.org>
References: <20220308190901.3144566-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110946_782566_797A47C0 
X-CRM114-Status: GOOD (  12.67  )
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
