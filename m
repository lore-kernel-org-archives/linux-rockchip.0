Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E363CF34D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 16:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OJXEJeTwlHTtLDEnHTuZwVTxh90X1HBspXYkw+0NiRM=; b=ujgJcGpkJyf7WB
	6hDy6/E/Y3aX+B1a0YSed1O0S7UeNM5HFHl/gcmcvB3n/mh/BvEehPvsNSzpkom0V6tIxYwvKXip5
	aW/Of97amZBlEF0/wQZ7Rs4FGna/6/QEYp1PeJmRpimn5Z2WrWqpQFfCkkUmetnNx5XIIls9Nu2oG
	Wrsery5jUMycqM0Rg1y38BKZ7Cv4hV1NwVH7zstBAVpD5dEZ33FT7TE2c/WAPOg0yqkNgFodksC/5
	nV0upOgly7IoykDLOa6PWY5IBNyNNkLFVx0YvQuZMSjnrEtV7pHGBaVFir3c4hFB47gJ2JDRLv+7C
	hXgJd1svf8mf2xbdH6xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLkpv-00000003eVB-31lQ;
	Wed, 19 Nov 2025 16:15:15 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLkpt-00000003eUN-04Bj
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 16:15:14 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-450b3f60c31so1295738b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 08:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763568911; x=1764173711; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=e80F78tGX2LDToz7bK2BI34KnSoXvC0PlnH2InXNg1A=;
        b=clLntixfdZCMaPbLNwMYzbbzdW9R/ugu3HJjXk2B1Kbe+KvtHkg6dmBMzgSG17I06n
         b6QJOsQNmNhtZ3t4i1nMyL9n1tmdk2Z9cM3/87J8xYAvd0aFpbuXiaKMvF+dspkT+eQI
         jQ8NxYD4VgDo2ulg+lD9B1FExyAv/JzBxuCJ55wfvkuCSouFsJfpPEadf66Im9hlnlQZ
         YU+jriNvuWKb7XKV6UJOzUPjV5MgYYedSnmIqmmEhI+gSI11jezoPJDs1vHfS+m2sb4+
         usf720VgpnYvAjHTKhCK9rZUGxr3axr0ecKTJgT9K3fX/hrQlLxdtB61jX2DHDxWxJaP
         fjng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763568911; x=1764173711;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e80F78tGX2LDToz7bK2BI34KnSoXvC0PlnH2InXNg1A=;
        b=d8mxsN34s5y6zi6B0RA1YUul4P10KRQYsPy7MubPWWNhfy69cymdcNVcvR5Svdn9Cw
         XhShx28V7/Qqa1Y0nQlZ7qGAdntvG125rNAinTY50mH6HU8y3h7Y1k+jM+ZVJ9mJvyg+
         ny2cJzk4+YO+NrZ0sn7XVCNx+lefvq8JXonXjMEoRU1IvtUd48dRbthcJIZ4gl/mjG1A
         x4ad/aqpSGIrQmPfm19e2vp2jcD9REiR9Ll0Z3HKsROFyfJupPJkhWa0QyycmymnKJ36
         sk8g1A3N/o4VOanlNvs+o3ToHJ8flYfZykcT+hH1ca1ghRuepZqmP6R1iNz8ub3njsBb
         4xZw==
X-Gm-Message-State: AOJu0YypNkeigM2FjOWTcy0I+OYBFghrcWUvTWZjztyr07CaRp/Ss4z3
	3fMDLHgN0bY3TLG5zlL1DoJdGWL6zHUhA+Gkp+IZVigJeL/Kk/1ombLjOFXwtA==
X-Gm-Gg: ASbGnctyKp8Vw2/nP2KO121L2Ca+pTPiSI0O/iv3ORg5/MTm8Eod2oka3vNRvRLyimQ
	3Kq2jIN64YvfJI9VGzINSAqzVSv7QCEFAJ/boaBXYKN6cXTvKGioSnXeo209b++OIWBt2K7DPkD
	Mf1jjZK12tyW1dKOlPDI3evY3a1ztxMqPLKiViI6My3rFYh0j7Oyv9EUMnRsnZFL6Q1ULtg2rax
	Hd9jwnrWfyeyccDTlh2875h4xgpNIlfj3JdI5kEvuw4PtK+imkyWZuTX0XNYDrPZZan0weZ17Mp
	6V8iUSjL7mwMhQSpWKEKlbKiDSqtOUWCTXzLTUudUeCT5pNbelLCDBIt61x27crLTK6kmp7yBm5
	TrYrf/ji8RYAVViz+3HG/eQgiJg8RdLwq0lxq1+UL/BD+niDv+4IilAIPgpoWZWg7gz6IfYCcXZ
	3Mje3FIOKu
X-Google-Smtp-Source: AGHT+IHmGw+4XAxkYHJ5VP5usTst8HwpuYqHgoe7VU2Udxe5jCgmbNdyEhAVl0n5UTd0Eq4ol2T7Jg==
X-Received: by 2002:a05:6808:6706:b0:44f:e1af:21f4 with SMTP id 5614622812f47-450973be299mr8872450b6e.4.1763568911386;
        Wed, 19 Nov 2025 08:15:11 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65782831ed6sm11213eaf.0.2025.11.19.08.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 08:15:10 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	jonas@kwiboo.se,
	pgwipeout@gmail.com,
	finley.xiao@rock-chips.com,
	kever.yang@rock-chips.com,
	shawn.lin@rock-chips.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	ulf.hansson@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] pmdomain: rockchip: quiet regulator error on -EPROBE_DEFER
Date: Wed, 19 Nov 2025 10:12:50 -0600
Message-ID: <20251119161250.60885-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_081513_083575_B3401A32 
X-CRM114-Status: GOOD (  11.32  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Change the dev_err() to dev_err_probe() under rockchip_pd_power_on()
to prevent errors early in the boot process when the requested
regulator is not yet available. This converts errors like the following
to debug messages:

rockchip-pm-domain fd8d8000.power-management:power-controller: Failed to enable supply: -517

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 1955c6d453e4..3c84a65de1a5 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -688,7 +688,8 @@ static int rockchip_pd_power_on(struct generic_pm_domain *domain)
 
 	ret = rockchip_pd_regulator_enable(pd);
 	if (ret) {
-		dev_err(pd->pmu->dev, "Failed to enable supply: %d\n", ret);
+		dev_err_probe(pd->pmu->dev, ret,
+			      "Failed to enable supply: %d\n", ret);
 		return ret;
 	}
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
