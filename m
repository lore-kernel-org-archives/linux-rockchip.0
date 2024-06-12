Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FA41C27C7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 13:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNMSJ8lJzPXleIqM1A05YvI9dfxGWO2gtYoHYPDQxYs=; b=bOIyTYlWsE9qeD
	Q99kWzPCBQp0q18z0tLiJDUvU5TUIaZjHrzNTFjQborScBR8xxVA1nV+KyhpIxHfzziRDkqmHLa42
	n+nM6t+QQ0VdANF8NuDIRtsG+Omlz29ZP3TGJ0v7Y1Wh772/Cle5Z4qin8ekGA25dwSz2EUm0iZuN
	G9fJKKCAOb3C0f9PUKHoPEIEZ0bI9dyPN2OcvGn5sN4YQ/JWlij761dhPQ9+JWW3rMrSQmyIRzr61
	4p3kpyry72CAU7SQ8a2ia6Ul5//XaBXJxnicAOGXL954U7IepYeBexRBbMxbc3ry9PRwxFw1qKKGj
	+MCM6XbATJCbkaznqUbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPo-0000000Cok1-0u2L;
	Wed, 12 Jun 2024 13:53:28 +0000
Received: from mail-wm1-f52.google.com ([209.85.128.52])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHOPU-0000000CoUO-3wV4;
	Wed, 12 Jun 2024 13:53:10 +0000
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4217990f8baso40673065e9.2;
        Wed, 12 Jun 2024 06:53:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718200387; x=1718805187;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1sOWf4s16bdbdC+Bd/5xe8ghxhHHN8/mdSsDewIxn9I=;
        b=rGGco0SSsAL78pDTngFOMFm9F787bDCyfx/hXw0HJy9ILiGpAPtjnGETaCDLUa/9ah
         x/1gScnrAnozAdHhEu9fy8ncqjPF5m68XRcRKfzQL8K7oexQY8u2gpFnFmb/P65QQ+7r
         Q58iQ8QiNbWk7HZYOBj7zMMonbAbFi7ACo7n6coCDLiLRk/gtFseM0TOMhfxIxgxLgBp
         Eki5rLmVUSOT6Gh2PGO2GWlv1WZRPLezsq5ESWvo9OpnXHqDP+bJkiLnVY8OC5SoX+xY
         m7SenNMVYoXaR17Y9aokufItwad+Auw5d/yRfFNsNd4FuB5JDxRgHi5wZHb15qBroxqi
         n7nw==
X-Forwarded-Encrypted: i=1; AJvYcCXT4a+hIqg+BtAbx3SGq4CqxM3tVDZuCDJYi7bzafDaWrCpLiNFukR9Dwo6c56lO3uWE7ygGdTTNi+8exsLlMw639zAyqV+lbLxmdxx8NqUmI7n/ok2Z+L5ewqpR2sHkQIGXcxSfHF9QWiNwEi0SqDU330QXhhq5Fc=
X-Gm-Message-State: AOJu0Yw6zyKNZmJa1pSpOhomNnI5We8NESCps8EC5Eejkg2OWq9erOfL
	vD0cAWFGAMXjfy5QH6CKJ1HE/OdUEJSKiCY5eeOrySF2k3E67ARO
X-Google-Smtp-Source: AGHT+IFWJyf2ltiawIwb7HZCUIMjcxzq4Ddbb+KqUPIZFB1bs1VWyRFUFZqI4ItOvEpiR5FgBSrKxQ==
X-Received: by 2002:a7b:cc84:0:b0:421:80e3:dc8d with SMTP id 5b1f17b1804b1-422863ae805mr14188595e9.24.1718200387215;
        Wed, 12 Jun 2024 06:53:07 -0700 (PDT)
Received: from ramallet.home (cst-prg-45-36.cust.vodafone.cz. [46.135.45.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-422871ec9e6sm28201695e9.38.2024.06.12.06.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 06:53:06 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 12 Jun 2024 15:52:55 +0200
Subject: [PATCH 2/9] iommu/rockchip: Attach multiple power domains
MIME-Version: 1.0
Message-Id: <20240612-6-10-rocket-v1-2-060e48eea250@tomeuvizoso.net>
References: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
In-Reply-To: <20240612-6-10-rocket-v1-0-060e48eea250@tomeuvizoso.net>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Heiko Stuebner <heiko@sntech.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, 
 Tomeu Vizoso <tomeu.vizoso@tomeuvizoso.net>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_065309_012976_FEBB0C4D 
X-CRM114-Status: GOOD (  20.09  )
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

IOMMUs with multiple base addresses can also have multiple power
domains.

The base framework only takes care of a single power domain, as some
devices will need for these power domains to be powered on in a specific
order.

Use a helper function to stablish links in the order in which they are
in the DT.

This is needed by the IOMMU used by the NPU in the RK3588.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 drivers/iommu/rockchip-iommu.c | 36 ++++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index f5629515bd78..673b0ebb6262 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -6,6 +6,8 @@
  *			Daniel Kurtz <djkurtz@chromium.org>
  */
 
+#include "linux/err.h"
+#include "linux/pm_domain.h"
 #include <linux/clk.h>
 #include <linux/compiler.h>
 #include <linux/delay.h>
@@ -115,6 +117,7 @@ struct rk_iommu {
 	struct iommu_device iommu;
 	struct list_head node; /* entry in rk_iommu_domain.iommus */
 	struct iommu_domain *domain; /* domain to which iommu is attached */
+	struct dev_pm_domain_list *pmdomains;
 };
 
 struct rk_iommudata {
@@ -1186,6 +1189,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	struct resource *res;
 	const struct rk_iommu_ops *ops;
 	int num_res = pdev->num_resources;
+	int pm_domain_count;
 	int err, i;
 
 	iommu = devm_kzalloc(dev, sizeof(*iommu), GFP_KERNEL);
@@ -1271,6 +1275,35 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	if (!dma_dev)
 		dma_dev = &pdev->dev;
 
+	pm_domain_count = of_property_count_strings(iommu->dev->of_node, "power-domain-names");
+	if (pm_domain_count > 0) {
+		const char **pm_domains = kvmalloc_array(pm_domain_count, sizeof(*pm_domains), GFP_KERNEL);
+		struct dev_pm_domain_attach_data pm_domain_data = {
+			.pd_names = pm_domains,
+			.num_pd_names = pm_domain_count,
+			.pd_flags = PD_FLAG_DEV_LINK_ON,
+		};
+		int i;
+
+		if (!pm_domain_data.pd_names) {
+			err = -ENOMEM;
+			goto err_remove_sysfs;
+		}
+
+		for (i = 0; i < pm_domain_count; i++) {
+			err = of_property_read_string_index(iommu->dev->of_node, "power-domain-names", i, &pm_domains[i]);
+			if (err) {
+				kfree(pm_domains);
+				goto err_remove_sysfs;
+			}
+		}
+
+		err = dev_pm_domain_attach_list(iommu->dev, &pm_domain_data, &iommu->pmdomains);
+		kfree(pm_domains);
+		if (err < 0)
+			goto err_remove_sysfs;
+	}
+
 	pm_runtime_enable(dev);
 
 	for (i = 0; i < iommu->num_irq; i++) {
@@ -1292,6 +1325,7 @@ static int rk_iommu_probe(struct platform_device *pdev)
 	return 0;
 err_pm_disable:
 	pm_runtime_disable(dev);
+	dev_pm_domain_detach_list(iommu->pmdomains);
 err_remove_sysfs:
 	iommu_device_sysfs_remove(&iommu->iommu);
 err_unprepare_clocks:
@@ -1310,6 +1344,8 @@ static void rk_iommu_shutdown(struct platform_device *pdev)
 		devm_free_irq(iommu->dev, irq, iommu);
 	}
 
+	dev_pm_domain_detach_list(iommu->pmdomains);
+
 	pm_runtime_force_suspend(&pdev->dev);
 }
 

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
