Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4395BD2E00C
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Dec 2025 06:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vaExEDFomsPEQwgKQGMGHUgWo/JmxHpARD5JIFl6V4k=; b=aRlFMERdwOsNGU
	SB3ppo9fynrcL1t9VQWNucUJvdGEmbA5/qyjBiRsWlUZ8r1fZIbSsYgKa0wbHZBMXm3EwXSv/twOr
	kUY9yz8fXBL5bvdvTptAxsWyBHMNOvDt8lQnbxkzR/HPgAZm4YKVJKCqhB4R1VxKDFctvT0M0EexQ
	n7AGKr27FB3T0HlceOf20Quz/Gmj+Ayis0FWk7uOfFNtu0tbi4SXvxmtTQchHDp4q5mq5eeC7bw39
	0lZLnsrFmtRo1ly6cAf0EFgHjkgckEtr3fdL7sTGWNmE85C/G2vfqk+xpmC9K94FUT1IJpH821Be1
	t3vOcKdy4NhMyYREK8UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRPbc-000000096tF-2bw9;
	Fri, 05 Dec 2025 06:47:52 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRPba-000000096se-169B
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Dec 2025 06:47:51 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-295395ceda3so3152245ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Dec 2025 22:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764917269; x=1765522069; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cQCqvOs+rmxg5luABnNgFbGK2aNywkYQWiXVFeR2OFE=;
        b=mV9U/iXMTnNq6X0Lon4b3qlBQWl4rSUzl5QQ8WSeQAaOw6mw5MoDgYhQZ4J9svA/t4
         tvoS9Cyv/VhYyovYPfiC0DGOqgAimEb065AnAMATRmtnHxAWkrN23UWyCjILltGjmXfS
         xaJuVg0TGetZ9OeA5r5wFRvCzuFsZZyOCzfpVAAH0wzZWBi4gNyZr4Qs3M2w4k6UoxS0
         5y5c4m+zsCmDJpEmbd+F04K3iAnQBXaveEbnW+fzOJTnrmcD6UMlM0biL3XmotFqelNx
         +1wrXiAWAL9+YbObwg5kA3FkUNlhSruZnnd3fhn+JKKfQbd46S79s6MkkIdn+XprJ4jm
         TDow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764917269; x=1765522069;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cQCqvOs+rmxg5luABnNgFbGK2aNywkYQWiXVFeR2OFE=;
        b=NOm9WMR9+2WFFUSAdQL1yIFhJkLHmM0SieC2m5fp2+iXvzsewpv/8U2ZTmakxQopKm
         drGODhcugHQhFafyGqH0O2udjVSKURRPXWvWaPqXM1XfBM9LO1fp7ofOpTLJSESjAlIn
         90kS2Pwok36uHjzUX4hFrA4+w8RMQ8cTn/6+nGg8DOog9nxZQSvOnnUIWN0CHARcjNB2
         8GM9EBfD4mgmghv37m5k0pIQR1L0X32xONR4y9Dl1U3VOSooBR87q8paQLPhcNXMFab4
         8euFGTfZZXJRLcOcLDG9+U0ASd8PNj0EQn2u2G4eldvVZStN/BM7EKxHUOTdpvOfHRyr
         ddMw==
X-Gm-Message-State: AOJu0Yy14PyAxL+3y1YfPJflzRKDzvYNIFSqsgr52UZUwjuPLx3kmo+z
	6D/Sc/NMmk8nKGGpBZKGl8ldl7h99ORZ1JYjWZhDZH4TidaEGOX17TcvUMX7J+1C/JL5Yg==
X-Gm-Gg: ASbGnctaOfipt+j76YoblHAyx+yTA/RE48zcPNXq8lfvE7QrbiuqzsQPgQ0pwsoqnoK
	jHG+2KLtunYrw6kv84W4eP+EcCkaQt4yV1cx6eTD80V4hZLYJeaNcIVYEb/RxO8MoIRnwpB6fxx
	YfCQUg/GNR+jsDgVk8DZki06jVo8RR0oNGWWEs5S5IKFz8FKBnX+n4fvfzywSM1zF1+UrNwLh7E
	filQdLvBBY4OsitGt7Aw8gnAJBIJj3HvDAUSEIPlSGkV6g+9WIUsUanRM6q3cvsvm+/xq1NijZc
	is1Uaz7zEUfle0erb4AR1Kv927SQQYjFKE1At5h9fR5RlNWGS59qtGYxuvqw7UZp3DKzWBidRfE
	USy3Q4C8EyROqcpc1H6mjxsiYbPwEHJt1KoaTYdgm3i1N2jxJEC1vL5cUx5NcuE9SCPLsQduT5z
	tvuw2F8bYTP48YF91Wf7upHJr8Weq81zkjTY0cDpA=
X-Google-Smtp-Source: AGHT+IGRKM8BQrG2ZI8dHPnVSfWZ2b0YQ8no5vBvlYxduzRFOFHV5uKsY+yIJjsLzz4NB9mnoBzUQg==
X-Received: by 2002:a05:7022:252a:b0:119:e55a:95a3 with SMTP id a92af1059eb24-11df25cac52mr5909504c88.5.1764917268841;
        Thu, 04 Dec 2025 22:47:48 -0800 (PST)
Received: from localhost.localdomain ([183.14.133.3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11df749f8ddsm10664692c88.0.2025.12.04.22.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 22:47:48 -0800 (PST)
From: Frank Zhang <rmxpzlb@gmail.com>
To: ulf.hansson@linaro.org,
	heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Frank Zhang <rmxpzlb@gmail.com>
Subject: [PATCH] pmdomain:rockchip: Fix init genpd as GENPD_STATE_ON before regulator ready
Date: Fri,  5 Dec 2025 14:47:39 +0800
Message-ID: <20251205064739.20270-1-rmxpzlb@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251204_224750_304135_60A4C919 
X-CRM114-Status: UNSURE (   8.92  )
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

This patch check regulator when pmdomain init, if regulator is not ready
or not enabled, power off pmdomain. Consumer device can power on it's
pmdomain after regulator ready

Signed-off-by: Frank Zhang <rmxpzlb@gmail.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 1955c6d453e4..bc69f5d840e6 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -659,6 +659,11 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 	return ret;
 }
 
+static bool rockchip_pd_regulator_is_enabled(struct rockchip_pm_domain *pd)
+{
+	return IS_ERR_OR_NULL(pd->supply) ? false : regulator_is_enabled(pd->supply);
+}
+
 static int rockchip_pd_regulator_disable(struct rockchip_pm_domain *pd)
 {
 	return IS_ERR_OR_NULL(pd->supply) ? 0 : regulator_disable(pd->supply);
@@ -861,6 +866,15 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 		pd->genpd.name = pd->info->name;
 	else
 		pd->genpd.name = kbasename(node->full_name);
+
+	if (pd->info->need_regulator) {
+		if (IS_ERR_OR_NULL(pd->supply))
+			pd->supply = devm_of_regulator_get(pmu->dev, pd->node, "domain");
+
+		if (!rockchip_pd_regulator_is_enabled(pd))
+			rockchip_pd_power(pd, false);
+	}
+
 	pd->genpd.power_off = rockchip_pd_power_off;
 	pd->genpd.power_on = rockchip_pd_power_on;
 	pd->genpd.attach_dev = rockchip_pd_attach_dev;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
