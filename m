Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B052C001E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 14:22:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vavGOwEEvxxUmJyNiS0Z3PoA5zwghl6pEAFQruBukzQ=; b=LSc0aQ22Cn+mse
	/1t4mdwNNGKW1RfUFxxJltkHehuzL+UdmNgpqIU1cihBe1mEzb3BKt48HoFSqTWpZxkbQgmrsXXod
	kbjPrY3u4k4erJJsxGqG2UM+20B9ZFJdFU+qqVbzq0N03C4pgwaTYnk2YVk498lhjtIDu8m8SK59c
	HYrsfG82IZEY+mHeZ2VioPa93ok07cYQWYCHXGK/jnoYgNAkHf3hgP9KWzrm/F9kgi60QBTET8Jv/
	ih3Y2Fis+HatDiF3gARsthH3Dn74BXt1K1jwKfBv4rMgl5Bq8kmDFz1jx6rByZnaEiD4qCRI+4akb
	vObk6ICmP8b7Vex+ygAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEFT-00F6sS-0W;
	Tue, 11 Jul 2023 14:21:51 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJEFP-00F6oH-2W
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Jul 2023 14:21:49 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b69f958ef3so92310631fa.1
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Jul 2023 07:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689085304; x=1691677304;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hgQ8n9LomBfmN5XVIE9V8yRduLBIY8d9iOgPKJiP4zs=;
        b=xWSdYCQxNymYgnOZZUnd4ZIodCEnApMke9J1PRrQ57R/Uede91putFMbdX7sCvlTLA
         tB5InT2FwiODgUrIDbyxgbpG+79y/l1WOtH1/tcZICN/AFDjS+91RI3D+FxebIfbEyug
         PFj+fDv3wfCJTx5EOWDKo4dS8IfAU14R0NpPCvU/DvF2KnXoYDrVNFYIVvXP4v+Ac/NX
         fVyUe9tb2jGX2Uh70t5vP5JSqDsMPPpwS4Ddyg53/EO4Mb13xwLHxTcSTtvuVgDOLUmK
         UDn6jyP+Fo3H9+RMXSh5TjdK4o+NS0GPwudFtigwXACKukMRy+8HNFkA+aUc+k5RL/uJ
         21pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689085304; x=1691677304;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hgQ8n9LomBfmN5XVIE9V8yRduLBIY8d9iOgPKJiP4zs=;
        b=hXI5UauCIM2TgGrrCAkrAI3P6mz/OvMzk+2E4oEKs+MZBsrQQCnn4U/3JFNc77a76M
         SYIUZvWWMOvjyhlKxj55jjiNdwk8F4/S8524q3IuHt+DpyW6PwjZHjvbiX3cXCj4v6hj
         VrcZXPynpUIzmap8xOijnOut8W8kTdUOwD9lzPHDYfnztrEPSmJZOSr4qS2XZR1oRhjO
         WUut79+Ua0pEF3vfvNHiOeAa0NRibcY6i6ecy7lDZL7XE/BSWlW+lVra0nZt2P5LLBBP
         1EPYRNqqHWgeLwCBafPer9A+wyNCbXwtcKcnFlDzAnRXyFHMygUNVMHnhLZwOkMphcMu
         Hzlg==
X-Gm-Message-State: ABy/qLbdQHhfa6BbJ6IRUeAeGzsnPVpeR2V5kPuYLA1+AwZVdSJOajqO
	UjgJycsXahALqn5x+sRVOkAoPA==
X-Google-Smtp-Source: APBJJlEKT6/JfPIQWMIzndgYMxtD7h0zb7OcNaPEMavO1QRqMPj2xl4JjFMYoA+YM6XBYufPqZGF0A==
X-Received: by 2002:a2e:3109:0:b0:2b6:de52:357 with SMTP id x9-20020a2e3109000000b002b6de520357mr12200248ljx.40.1689085304038;
        Tue, 11 Jul 2023 07:21:44 -0700 (PDT)
Received: from uffe-tuxpro14.. (h-94-254-63-18.NA.cust.bahnhof.se. [94.254.63.18])
        by smtp.gmail.com with ESMTPSA id j11-20020a2e3c0b000000b002b6ee0ff9bbsm463489lja.67.2023.07.11.07.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 07:21:43 -0700 (PDT)
From: Ulf Hansson <ulf.hansson@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 10/18] soc: rockchip: Mover power-domain driver to the genpd dir
Date: Tue, 11 Jul 2023 16:21:41 +0200
Message-Id: <20230711142141.751692-1-ulf.hansson@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_072147_822505_AB371B6F 
X-CRM114-Status: GOOD (  13.22  )
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

To simplify with maintenance let's move the rockchip power-domain driver to
the new genpd directory. Going forward, patches are intended to be managed
through a separate git tree, according to MAINTAINERS.

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: <linux-rockchip@lists.infradead.org>
Acked-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Ulf Hansson <ulf.hansson@linaro.org>
---
 drivers/genpd/Makefile                                          | 1 +
 drivers/genpd/rockchip/Makefile                                 | 2 ++
 .../{soc/rockchip/pm_domains.c => genpd/rockchip/pm-domains.c}  | 0
 drivers/soc/rockchip/Makefile                                   | 1 -
 4 files changed, 3 insertions(+), 1 deletion(-)
 create mode 100644 drivers/genpd/rockchip/Makefile
 rename drivers/{soc/rockchip/pm_domains.c => genpd/rockchip/pm-domains.c} (100%)

diff --git a/drivers/genpd/Makefile b/drivers/genpd/Makefile
index 286598ce7620..c178421e0cbc 100644
--- a/drivers/genpd/Makefile
+++ b/drivers/genpd/Makefile
@@ -6,3 +6,4 @@ obj-y					+= bcm/
 obj-y					+= mediatek/
 obj-y					+= qcom/
 obj-y					+= renesas/
+obj-y					+= rockchip/
diff --git a/drivers/genpd/rockchip/Makefile b/drivers/genpd/rockchip/Makefile
new file mode 100644
index 000000000000..8fb9d88a3492
--- /dev/null
+++ b/drivers/genpd/rockchip/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_ROCKCHIP_PM_DOMAINS)	+= pm-domains.o
diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/genpd/rockchip/pm-domains.c
similarity index 100%
rename from drivers/soc/rockchip/pm_domains.c
rename to drivers/genpd/rockchip/pm-domains.c
diff --git a/drivers/soc/rockchip/Makefile b/drivers/soc/rockchip/Makefile
index 05f31a4e743c..23d414433c8c 100644
--- a/drivers/soc/rockchip/Makefile
+++ b/drivers/soc/rockchip/Makefile
@@ -4,5 +4,4 @@
 #
 obj-$(CONFIG_ROCKCHIP_GRF) += grf.o
 obj-$(CONFIG_ROCKCHIP_IODOMAIN) += io-domain.o
-obj-$(CONFIG_ROCKCHIP_PM_DOMAINS) += pm_domains.o
 obj-$(CONFIG_ROCKCHIP_DTPM) += dtpm.o
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
