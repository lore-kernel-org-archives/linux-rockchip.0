Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5108C10F92E9
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Mar 2026 18:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoxnLb7VoxxpXPe5yX5TRMrVQfcEQFCN7ue3jzA2/Gc=; b=1gVeJC6kvJkaZy
	fdy+Kx1Py7VK/98g/Y6+qbt2YVWdPuXFM4+wezpuD4KznjNo0ddVoXtCZnO1hh+pZ6WJrHKq5S7CH
	SwGy7MD+kkoigl3ppcA0CNZlmkvttKnHYUYyOnc4nzWIubPJVhNIcUAsV3sjMYl+iVAPpcJpPVGtg
	SQRgqC1QVOVZvViwjmcx+vnHby7hLYYca2eycOoisTn4Po9VWqLaMxEU7JGfyso6H4O2sfKKRdT9+
	oJxksnkMz0/6m/XueSOoTc10D9d66lfT8NBdK85cmqws5hiofbUWxqPhBi4ERqOAPvwwaBhkLyPka
	LdF/jfmL7ZFSrIsJ9Gqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7dQh-0000000DON3-2V3H;
	Tue, 31 Mar 2026 18:03:07 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7dQe-0000000DOLg-2eif
	for linux-rockchip@lists.infradead.org;
	Tue, 31 Mar 2026 18:03:05 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2b2494440f3so11294145ad.2
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Mar 2026 11:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=orb-net.20230601.gappssmtp.com; s=20230601; t=1774980184; x=1775584984; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FIPjhe0ooozuU4t14Rzg0U/ZHVJIieutYDq/fthQq0s=;
        b=gQ1h3g6mxU7PqCvlHEvI7k5uBXWkl19a004LtBWZol1qDaPbYq4RFVBdcbVraohJcE
         rSf1xeMupfbWXVstfD21HvMDkaExxnrV+IKli5Pn/+ILJuTnPbdGjoq9yt+HoWfIAemj
         C3/wEB4MCoVwilEMHFNyuc+qlhZGU64dNa3wh/t4xORT1LXL42UUZwYpKdm7apUHHW8+
         bOFyVcVga4535UhK7pJxhzdBBWIEBS22xwjnZyllt6WVyz0JWy4kMATTlFxJE7NKoamM
         zEqC6vLwODpXKfwnuzZXy01yJ1CNM9olpeQiXViWI1G6soHFsGiIHwvR/pt7M9KqtCnd
         SNwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774980184; x=1775584984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FIPjhe0ooozuU4t14Rzg0U/ZHVJIieutYDq/fthQq0s=;
        b=o3mqeW86s+HEterVscm2VBFp71ZqHrTU7srTex1EGX+1hNOMSMgItWvzMldmsV4LAS
         NN8+WgQsHFyiFgDhQjRGqwJpQLssGacDByApAPfUrQzqvYMQL/SBuf4TMypfUZSrlqLk
         njbV/FITCSBUiB/nvL6IUtBe45PY1Ctx5TCFcD/IHnDR7qXTs4XTVpP6JAOC/IWZDsq9
         dYgtgdrR6UqpViMJg5slDt63Cjl36kZ4duY9TBaDEvBGgJS0JksqYhiqyohrZwMtF1Js
         jbtVlF8eO3QZqDX1bBa9hz2yJQWaDZlpUc6YAGAjO+QgP+32nxNN8EJ3IXlUjaMXHQOD
         L9OA==
X-Forwarded-Encrypted: i=1; AJvYcCUz8Spt9yJFe8ExtAVGUhNsLL29mE86XjIhlMsNOWPpUnsNzNOD9MzUCeD0HrUHJ6dpvtxq/oyuoc1nL0Udug==@lists.infradead.org
X-Gm-Message-State: AOJu0YxBxCi6VCt/FW9397TIz1JuF/7vdKNEU7mDdBXun2x1XADAWFVr
	C/7kO7Hzcf0gixyNjsq3xh0gkYZdY2RGxWRnjzDNIw83+cs7cu2HM+PA39KHFX0Kj00QXx1exov
	7GeNLRco=
X-Gm-Gg: ATEYQzyCKsEND+4DQ1+LomFW9C8V50X/Qww25GHVsPERTo5ZsHm223i1X2BU4Jw0/Hg
	kMMoRGJjiQJqEU/KUZJ8T+lUlERpQeNNdcrXOVLCBEkD6T8Ue8ki4yGRZsOSI9bT+JNd9XpWdxq
	iyZd4+ZdwlrZLcVenSvQxX6wxnM4jT87m+EUggb+5w3eFkU7D3CYEf/vn25n2TdjdZV8xM4LfsF
	YJgfFSz6EgVmOUqE/JH3rAkkF4Atxt8B7cYCLDMyXPU5qzy0lTZa/SM7vuCcXjraWMHou2/mDX9
	IIWI7k4NujBgUNlOmCOWdedwTkGbyUbMIPpI7Gfkr6u1bqsPQiVKfHFzgWwbMC7XPGSBv8VkZTC
	Gz9prcUQEebBnI/wGwXMLZa2ik/O189KtfHASKlW4+kuUzmVYoBDK5wz+JyipPm1/dal7H6/mLd
	2/GLKS8kPgZXh+UMSvjvLUEf3OvZg6e0zwFdhWPkZiP9fpPPms1x+xYw2+Qw7GHPK96yQQQ14OQ
	rzYZw==
X-Received: by 2002:a17:902:ea05:b0:2b0:5548:7d84 with SMTP id d9443c01a7336-2b269cce951mr1369705ad.48.1774980183702;
        Tue, 31 Mar 2026 11:03:03 -0700 (PDT)
Received: from claude-dev.lan ([50.125.94.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b242680132sm125240315ad.32.2026.03.31.11.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2026 11:03:03 -0700 (PDT)
From: Daniel Bozeman <daniel@orb.net>
To: ulf.hansson@linaro.org,
	heiko@sntech.de
Cc: linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Daniel Bozeman <daniel@orb.net>
Subject: [PATCH 2/2] pmdomain/rockchip: skip domains returning -EPROBE_DEFER
Date: Tue, 31 Mar 2026 18:02:23 +0000
Message-ID: <20260331180223.1682283-2-daniel@orb.net>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260331180223.1682283-1-daniel@orb.net>
References: <20260331180223.1682283-1-daniel@orb.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260331_110304_670514_80D765CB 
X-CRM114-Status: GOOD (  11.45  )
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

When iterating child nodes during probe, a single domain returning
-EPROBE_DEFER (e.g. due to clock dependencies not yet available)
causes the entire power domain controller to fail and tear down all
successfully registered domains.

This creates a window where devices in unrelated power domains that
would have registered successfully cannot access their hardware. On
RK3528, PD_GPU requires CRU clocks that may not be available yet,
but the idle-only domains (PD_RKVENC, PD_VO, PD_VPU) have no clock
requirements. When the controller fails due to PD_GPU, GPIO
controllers in PD_RKVENC become inaccessible, leading to synchronous
external aborts when GPIO-controlled regulators probe.

Skip domains that return -EPROBE_DEFER and continue registering the
rest. Skipped domains have NULL entries in the provider, causing
their consumers to receive -ENOENT and defer until available.

Fixes: 7c696693a4f5 ("soc: rockchip: power-domain: Add power domain driver")
Signed-off-by: Daniel Bozeman <daniel@orb.net>
---
 drivers/pmdomain/rockchip/pm-domains.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 2eecae092a..f42880c94f 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -1077,6 +1077,11 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
 	for_each_available_child_of_node_scoped(np, node) {
 		error = rockchip_pm_add_one_domain(pmu, node);
 		if (error) {
+			if (error == -EPROBE_DEFER) {
+				dev_dbg(dev, "skipped node %pOFn, dependencies not yet available\n",
+					node);
+				continue;
+			}
 			dev_err(dev, "failed to handle node %pOFn: %d\n",
 				node, error);
 			goto err_out;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
