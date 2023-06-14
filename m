Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B2CDEB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 18:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dPD1JBXlC6425jQVqWyURk+b3MmrlgjxcT5RbYUP0YM=; b=QYrRG5ZXa78UFo
	3FSyLnLaV5WojUArcV1ikKWdxD7WEfiGf2Ty3r+XyHhHAQS4LxDXLp1e4v6Yg2KRcVx/tTIfO9rPu
	cQycNxoai1FKtuXwVYAlpZ9GkFIZaX8Ei79e7jSOC0TlaHe6GLk9tZrp3oG7bGs3Ll5XJ7ECA7gej
	sEvsyhyuyvaigg+OGJYfCQuyQqXbIjpKqZ+naWC/4hWdxz0sxsqThiAoxsCoSNnBMw9QQA6H8gf8R
	O6pMV/+jMnLSU17kn9EGKy1369Q9UBJR7ZSr4Fxs07kbq6MU6NcC8l/jODKXmpYscafGZj1Sf5X1K
	fRFLwmEkWzpaNwqiLGpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Uxu-00CPqo-2l;
	Wed, 14 Jun 2023 18:11:30 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Uxs-00CPpx-2N
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jun 2023 18:11:29 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f8cdb12719so8874695e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Jun 2023 11:11:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686766286; x=1689358286;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SSUCrY8q+S+CElWsLe8kdIUOHnbAQ0euqrSqcUAC+oI=;
        b=OV9ucZrn29tyM1vaBQ76N5ZdmisY5Ws2Olmh96cM1HdUTu9X8Mcsqy+eQJ3dfRJov3
         4VTP6RkUKvXN1P3482/K5xo5XqfPnqAc7qm1Z+cDuolLSTNSpgNc+mbmCiPd41aJ1uub
         ipmKa5O9tOxz5/EYMvGbWllhcGc9sCc3HGwh9QJ3jSz4V6vnCU3yREE1myhw/A7t6X1y
         Kl2G6QLZ4wTSs1sLgPGgz1K22cDApVDWhTE9junHkdkCnhaKZCG+477dn7m7hsGO501N
         MPEG7hOkAiWv3DCMSInbZUCATWQD/P+yvKSU9836CXlOwOizT2jZemak3epYu09Cc4Vx
         iXmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686766286; x=1689358286;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SSUCrY8q+S+CElWsLe8kdIUOHnbAQ0euqrSqcUAC+oI=;
        b=YysXdp1zzot73D50pLUSAaIJ3gsCmO0nTiMNyoL20aK7wI2PCm4NrBLI6GJPeR4ATN
         3186q6xto368OAEziggPZBcOOdiOHtBHEz4ykEWlJ5e7Gp0o1Zz6WMkxjyjJofRNlMwh
         QGFERF2TjzWgNFZOH0QZvqZzWSyjoElRRBXweGr5alDmWK+1lxF4mjOBjXOinpaQx9WB
         a7ljtHaZ0RQYEx7TrZYXxPuvatlPkF04i+5KcZ56NHoBaz1FMdgDQEKTEaAT8RmV/2Ue
         1g9RRqaoCM5snL8D9WTAxke5pBVVT2AO8FiafuMbnstEVH+gZ9i4CbBwkrCCJTV7pxuL
         V/+A==
X-Gm-Message-State: AC+VfDyhXz+eT8Xv7p0kjzkN1vufDJBohFHRzEw1xuo8Cc5ZKT04THFL
	oJXN1osqtmtGkJnrqUz9JN8=
X-Google-Smtp-Source: ACHHUZ671+erQD4aXmMMC/KmkyhEbbJCq7/WqyueXo8eYeFu2HwYHKpB5CZnWzduxq2ECV/ULocpSg==
X-Received: by 2002:a7b:c846:0:b0:3f5:1241:6cfa with SMTP id c6-20020a7bc846000000b003f512416cfamr11162488wml.37.1686766285651;
        Wed, 14 Jun 2023 11:11:25 -0700 (PDT)
Received: from [127.0.1.1] (2001-4dd6-393b-ff-f59e-4402-63f8-7ff5.ipv6dyn.netcologne.de. [2001:4dd6:393b:ff:f59e:4402:63f8:7ff5])
        by smtp.gmail.com with ESMTPSA id a4-20020a056000050400b0030ae3a6be4asm19064801wrf.72.2023.06.14.11.11.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 11:11:22 -0700 (PDT)
From: Maximilian Weigand <mweigand2017@gmail.com>
Date: Wed, 14 Jun 2023 20:10:43 +0200
Subject: [PATCH] power: supply: rk817: query battery properties right after
 resume
MIME-Version: 1.0
Message-Id: <20230601-rk817_query_at_resume-v1-1-630b0adefbd9@mweigand.net>
X-B4-Tracking: v=1; b=H4sIAKMCimQC/x2NUQrCMBAFr1L220DSFlu8ikjYpE8bpFF3W1FK7
 27q5zAMs5JCEpRO1UqCd9L0yAXcoaI4cr7BpKEw1bZu7NE6I/fedf61QL6eZy/QZYJxbTNE7ju
 Elqm0gRUmCOc47vXEOkN28RRc0+c/PF+27QdwgxNwgAAAAA==
To: Sebastian Reichel <sre@kernel.org>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Maximilian Weigand <mweigand@mweigand.net>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1686766281; l=2084;
 i=mweigand@mweigand.net; s=20230601; h=from:subject:message-id;
 bh=dYYdF7YN086t+bI+bbTbtrWGleMgw5W9dZy0f46uHlE=;
 b=0050Ss6VUbL8czKz0Ni0Iq8OTxmawjKMuUQvJMEaTVunWLJNqshnUQEep8X6/b5DHkgp2NZoh
 ez+gUeqQ80IDNyAy0+SUFgK2VlORQzlZObIeRFmUIW2zElUpyG5KdZv
X-Developer-Key: i=mweigand@mweigand.net; a=ed25519;
 pk=Tjuj6PXmCCxzGTRw+9suZuZ41q/etgDHrIbPdkAaTpM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_111128_777223_8DCB5DEA 
X-CRM114-Status: GOOD (  14.67  )
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

From: Maximilian Weigand <mweigand@mweigand.net>

The driver reads battery properties every 8 seconds. In order to prevent
problems with wrong property values right after resume, trigger an
update of those properties on resuming the system and restart the
8-second interval from there.

Signed-off-by: Maximilian Weigand <mweigand@mweigand.net>
---
An issue with wrongly reported battery charge was encountered on a
Pine64 PineNote right after resume. It turned out the the rk817 driver
queries the rk817 chip in fixed 8-second intervals, and thus in most
cases the reported battery charge right after resume will be wrong until
the driver gets to its next update cycle. For example, upowerd will
query the battery properties right after resume (getting the old
values), while the correct values will only be reported by upowerd after
its next update cycle, which can take 30+ seconds.

Therefore, trigger an update of battery properties right after resume in
the driver.
---
 drivers/power/supply/rk817_charger.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/power/supply/rk817_charger.c b/drivers/power/supply/rk817_charger.c
index 1a2143641e66..29ceee2f1905 100644
--- a/drivers/power/supply/rk817_charger.c
+++ b/drivers/power/supply/rk817_charger.c
@@ -1198,11 +1198,24 @@ static int rk817_charger_probe(struct platform_device *pdev)
 	return 0;
 }
 
+static int __maybe_unused rk817_resume(struct device *dev)
+{
+
+	struct rk817_charger *charger = dev_get_drvdata(dev);
+
+	/* force an immediate update */
+	mod_delayed_work(system_wq, &charger->work, 0);
+
+	return 0;
+}
+
+static SIMPLE_DEV_PM_OPS(rk817_charger_pm, NULL, rk817_resume);
 
 static struct platform_driver rk817_charger_driver = {
 	.probe    = rk817_charger_probe,
 	.driver   = {
 		.name  = "rk817-charger",
+		.pm		= &rk817_charger_pm,
 	},
 };
 module_platform_driver(rk817_charger_driver);

---
base-commit: 858fd168a95c5b9669aac8db6c14a9aeab446375
change-id: 20230601-rk817_query_at_resume-143dca87eb4a

Best regards,
-- 
Maximilian Weigand <mweigand@mweigand.net>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
