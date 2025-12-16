Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9E02D5B87C
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Dec 2025 05:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R0+SjJzk2hqKItaNIU1rLz4Y1i15L24oofooHI0mojc=; b=b0BgQpQ88pgmex
	jAANkmkJGIuaSeID08A18epPNi+7jAcF8w7geiq/kRPYRM3uAxvMnrWZL1K2dWknOYw4WvRYpFZ1c
	s9MZ2AbbvuXzU7hyq8qzBHyTm6wyco0j+0hHHL+dA+2uNnQ6fzTtVOg9q6uYARqewsu+X37nkly13
	ejgLmE/y+EA2PFDTqXEbA6ti2/jtxKWhiuoFtSMMkNMWW+lUhwb4E2+tx4+OifAGO/5fS6o/oOnCG
	+g3JraIry0ApNRvSa5dD9y8KjtHHAJjvNMNHqM+nB9CHx/xe7Oz8ymryU8r2l5jIkBA2lcAtYzYwO
	53Mb5ltwSU6yEaUaNtxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVO0A-00000004jWI-0l0g;
	Tue, 16 Dec 2025 05:53:38 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVO07-00000004jVt-0j31
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Dec 2025 05:53:36 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2a097cc08d5so5815785ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Dec 2025 21:53:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765864412; x=1766469212; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MncoL4J5El8AvquNiDQs2cAUbtdq/qB67h41aRjACM0=;
        b=Zl9qVQFqkWNH0u+10VwDf5jo6++zVgy0PfkMaDQ0dA8WdAJKQIRMmPQpfWwO6W/XaK
         s1gX52HVhnwpPag/w5OhcDt1qUVQM8OnYbXPMPsIm+RFELSkkfa+QYxVVElnWXookR1P
         XLXqSx4MZJk32l5TJLF8rYTERB22L6hwmXcLMkLJ3JrjWoy/0Kq2ZNvhUipx89beJEaG
         tAcUMpK2uQC92X/+9MajlxXSJELYnO9Vr3INkHTKCGgGkIGkXz8HO41fywsMz7vIaPAE
         K2HEPN+lTsVdhbKEQBepjPAwXIgo8k8lW+TzigxcmqPnrPG08bhehspF4bU9OGJSphXZ
         f9zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765864412; x=1766469212;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MncoL4J5El8AvquNiDQs2cAUbtdq/qB67h41aRjACM0=;
        b=RHr4ikaO23PPlJIG4qyDp3cyKdmlP7Dq5v29iWN9zeFssGIWhlsnWMdZDt3qX0Ku/6
         0AVYjpxUc37G08+InwA5ta974emg6MV/zmD5UuhOU9RvM1EKbYsldijfzmXIKNXrxeZk
         VciqrFpsOdOm+LqjA89VlGpbNougyvEdi1bpxhvT0dM5XbT0CBdEEfxeeIAztBzhP7jx
         v28dkdBZpk5NmzQNCeUG30PL8WBSdpPwep/5ntBiIsEH7iOjJXckUw/kBE3Zid/Pa7R7
         RVVSF9ekFUrrSWTq+rTO3gZCCl1LjeXi/Gi8WnugKzZeNc8q5BKiWfwpVA5i9G7P3yTu
         wEiQ==
X-Gm-Message-State: AOJu0YxkpTBsg3aq6Y3ZEJk4DaIondj+pYnIprqFqudf9r1zC9SXGDKt
	4t7lN7t9X0wiIyl0PbCYgqcMqA1Eo2nQDGqW1hd0jgQ6SjXDoA6+Ewhc
X-Gm-Gg: AY/fxX5Z2SUMvlmYYaiX4tR7QwgJYSjY/O2F4WvOcyVRvbFk1W94tfCnbw6j5UUdK+3
	nmVRxuDgnLcUlunijQ9qhYkvWnpX33Yr/tkLr2GpKgDFYlu91/jiIfZObFZ8oQaahuFdzHMQ/ox
	sTZNvcOLAVv089pqLqdOAYjKdFS5y4KQXHE+/m4H9Dg3u/d27xeSD4tRWhvNNvzav/6g1qfhs66
	m5deHr1h8bUxvCJmHf/BTSzX/5NSUVoRjXiq/59n04SiffSNIrFvm8CdR4XpZMzhoqDtJtxW9DH
	F/Kx6WBOxru+SCUXE25p4IY8CVpHZ8ZKeMDhALUwT/nEiRYRmoE5SxuhLzmxdNx1cqX/iQENkbR
	O/DXI1NeNVpgD0C+lWDYWZVyiQgiMDT/TmSKGz4cRbTYBOlYcIZA4nXHp77Say6pg2dD6lnHb/R
	PVgG9jKnJIsUNzKtz0KfG1
X-Google-Smtp-Source: AGHT+IHlO9dTRrnnOwgtEjc9dR0KmxJlpQDIlf7LaY+F28cguSQy75elhq/r7OBkP4FdWFKAp6P0sg==
X-Received: by 2002:a05:7301:4d0d:b0:2a6:cb65:1974 with SMTP id 5a478bee46e88-2ac2f8b2b5amr3472470eec.1.1765864412245;
        Mon, 15 Dec 2025 21:53:32 -0800 (PST)
Received: from localhost.localdomain ([183.14.133.101])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f392500cdsm33433791c88.7.2025.12.15.21.53.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 21:53:31 -0800 (PST)
From: Frank Zhang <rmxpzlb@gmail.com>
To: heiko@sntech.de,
	ulf.hansson@linaro.org
Cc: linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	chaoyi.chen@rock-chips.com,
	sebastian.reichel@collabora.com,
	quentin.schulz@cherry.de,
	Frank Zhang <rmxpzlb@gmail.com>
Subject: [PATCH v2] pmdomain:rockchip: Fix init genpd as GENPD_STATE_ON before regulator ready
Date: Tue, 16 Dec 2025 13:52:47 +0800
Message-ID: <20251216055247.13150-1-rmxpzlb@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_215335_211720_17176A46 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
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

RK3588_PD_NPU initialize as GENPD_STATE_ON before regulator ready.
rknn_iommu initlized success and suspend RK3588_PD_NPU. When rocket
driver register, it will resume rknn_iommu.

If regulator is still not ready at this point, rknn_iommu resume fail,
pm runtime status will be error: -EPROBE_DEFER.

This patch set pmdomain to off if it need regulator during probe,
consumer device can power on pmdomain after regulator ready.

Signed-off-by: Frank Zhang <rmxpzlb@gmail.com>
Tested-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Tested-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Changes in v2:
- Simplified the regulator check logic, trun off pmdomain if need
  regulator.
---
 drivers/pmdomain/rockchip/pm-domains.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 4f1336a0f49a..997e93c12951 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -879,6 +879,16 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 		pd->genpd.name = pd->info->name;
 	else
 		pd->genpd.name = kbasename(node->full_name);
+
+	/*
+	 * power domain's needing a regulator should default to off, since
+	 * the regulator state is unknown at probe time. Also the regulator
+	 * state cannot be checked, since that usually requires IP needing
+	 * (a different) power domain.
+	 */
+	if (pd->info->need_regulator)
+		rockchip_pd_power(pd, false);
+
 	pd->genpd.power_off = rockchip_pd_power_off;
 	pd->genpd.power_on = rockchip_pd_power_on;
 	pd->genpd.attach_dev = rockchip_pd_attach_dev;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
