Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1ABCC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 08:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u+/Ge2b2+JroyJ1Ezk19n4JsoFaGREkH8dqxiCMhvf4=; b=r4NXfbwS+pQHtm
	Q/M5WB/UpguuSQgRjWoQQiJwmyKyuz+85/NEeoSHN6m4ZHSaGSzEwfo70/EdAe4jIWHptGbIlz8AB
	1mlkYhOJouaOQvoBvVcgk674Vt7656qzxkypjuFxokHVFoW5d9mvhtySB+Z83RqsdGoY1sBQhVN27
	9o+soEzczWoe83ukzL3mTP0U+HD/nasqYzCS8/feKkiI4Jd/AvMbqTv3O/+eyGEdD9WkfSqvTSrM0
	ss0xlrdR90Dixl5RA0+jyXawnjODLGdtz9PRAPImid19B+dZHeYL3/J3cpW2cUSqTUKRSXQzJKgcP
	/0aT1PdmkQwdHHPUEY+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9eE-00CCFY-20;
	Thu, 07 Dec 2023 08:22:18 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rB9eC-00CCE2-0A
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Dec 2023 08:22:17 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6ceba6c4b8dso40741b3a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 07 Dec 2023 00:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20230601.gappssmtp.com; s=20230601; t=1701937333; x=1702542133; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xjeb4b6lyrZZzJQNF0NTbIeDzIeVTA8ShffAsyhB2JI=;
        b=rhxci5OQFLmTk2kT7fcudUG+ATLc0gIavzRhLzew8jPlfTg7A1/NdGr3YcIqF3gYLs
         y11WWL1cGLZYiZ/SkW6IWs0JoQHeiGUFVo9oFw5S7QhYKa9S/LoWMxqG0alAgT/DoJKU
         0M/Kp3KY66OwK8skipiMhipRBSHBMiNvPRcADVMoZ34du3BVZNZvcSkmBebqWBpvh1eF
         hOPRMyzkYojqP7SlIUXWy099VRRgDZ2kPK+DtNSAJabUtiplk/8+zAm8Omifn0nw9qO8
         WaBJ+OLnYa5y2xNoGrH9SMUj8/x03xcddcfM1xUalFNqETC+OSL6xyvPiWWGgFTxPhFW
         f8lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701937333; x=1702542133;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xjeb4b6lyrZZzJQNF0NTbIeDzIeVTA8ShffAsyhB2JI=;
        b=ozNpLaL2uTPwFbhQU2BR+VgEiR7ZNJs3EAbzD8zHaDPOKKD7h1AmWdnSB/lr070pdP
         NmPVRTVzgExoZgT65Um+RqUlytefOln4SCLhRE3xYM10h6/b0tpmRDSdcQRBA730Qv9p
         S+WTzqIqahdCdnyro03VRSjf1pwiP3kNim5/8bYKQ0x8pfs9HfOs5NqCo8C+74f1VoVP
         jaZrVt0m8Ii30dniTcjH5ruhq2vRjGVwnq9uTF0CoUj+mWxBBuT4Kc5txLTXCvoE3fz+
         H9NR73jtpKIwTRi99X+DnoECIOn/PO+T8tdJLs0RWTYxMEWp+vMwQNENq2lHgiNIQyPY
         wuoA==
X-Gm-Message-State: AOJu0Yz239ilA4dA8ewkKRlbcgA77cm56uUFvQYsqu+vS9tlXPI/SlWk
	rNBOczJ9kqYgkohAbnZAuY0MmQ==
X-Google-Smtp-Source: AGHT+IEEurwQbxShDq9JggR47aztflJkGvMYj35SfMTSgXCbvptMap7YnxF/CHrueLnQZPyEL1pr1Q==
X-Received: by 2002:a05:6a00:2d1b:b0:6ce:4b97:b894 with SMTP id fa27-20020a056a002d1b00b006ce4b97b894mr2240031pfb.17.1701937333161;
        Thu, 07 Dec 2023 00:22:13 -0800 (PST)
Received: from jensen.next (li999-236.members.linode.com. [45.33.49.236])
        by smtp.gmail.com with ESMTPSA id o27-20020a63731b000000b005c259cef481sm696377pgc.59.2023.12.07.00.22.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 00:22:12 -0800 (PST)
From: Jensen Huang <jensenhuang@friendlyarm.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>
Cc: Jensen Huang <jensenhuang@friendlyarm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] i2c: rk3x: fix potential spinlock recursion on poll
Date: Thu,  7 Dec 2023 16:21:59 +0800
Message-ID: <20231207082200.16388-1-jensenhuang@friendlyarm.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_002216_270106_872B596F 
X-CRM114-Status: GOOD (  13.84  )
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

Possible deadlock scenario (on reboot):
rk3x_i2c_xfer_common(polling)
    -> rk3x_i2c_wait_xfer_poll()
        -> rk3x_i2c_irq(0, i2c);
            --> spin_lock(&i2c->lock);
            ...
        <rk3x i2c interrupt>
        -> rk3x_i2c_irq(0, i2c);
            --> spin_lock(&i2c->lock); (deadlock here)

Store the IRQ number and disable/enable it around the polling transfer.
This patch has been tested on NanoPC-T4.

Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Andi Shyti <andi.shyti@kernel.org>
---
Changes in v2:
 - Add description for member 'irq' to fix build warning

 drivers/i2c/busses/i2c-rk3x.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index a044ca0c35a1..4362db7c5789 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -178,6 +178,7 @@ struct rk3x_i2c_soc_data {
  * @clk: function clk for rk3399 or function & Bus clks for others
  * @pclk: Bus clk for rk3399
  * @clk_rate_nb: i2c clk rate change notify
+ * @irq: irq number
  * @t: I2C known timing information
  * @lock: spinlock for the i2c bus
  * @wait: the waitqueue to wait for i2c transfer
@@ -200,6 +201,7 @@ struct rk3x_i2c {
 	struct clk *clk;
 	struct clk *pclk;
 	struct notifier_block clk_rate_nb;
+	int irq;
 
 	/* Settings */
 	struct i2c_timings t;
@@ -1087,13 +1089,18 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 
 		spin_unlock_irqrestore(&i2c->lock, flags);
 
-		rk3x_i2c_start(i2c);
-
 		if (!polling) {
+			rk3x_i2c_start(i2c);
+
 			timeout = wait_event_timeout(i2c->wait, !i2c->busy,
 						     msecs_to_jiffies(WAIT_TIMEOUT));
 		} else {
+			disable_irq(i2c->irq);
+			rk3x_i2c_start(i2c);
+
 			timeout = rk3x_i2c_wait_xfer_poll(i2c);
+
+			enable_irq(i2c->irq);
 		}
 
 		spin_lock_irqsave(&i2c->lock, flags);
@@ -1310,6 +1317,8 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	i2c->irq = irq;
+
 	platform_set_drvdata(pdev, i2c);
 
 	if (i2c->soc_data->calc_timings == rk3x_i2c_v0_calc_timings) {
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
