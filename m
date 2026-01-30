Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC198E6BF20
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jan 2026 16:33:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=34SnKds7ssYdRNdHYTI5Xj/2ghGqbED02OxHdO8Jml4=; b=JdUWZqDx04PKuu
	V2lxSr5uFLraIs7VbVsPeOggRmvCYXlnCFmd6hqrxSThnzRm+85rM9DANXbNdsPSPVGWCPKkK8Bg3
	g+KdmMjEIzlvco/YmTvaM6pZreiYkkjSMSLkOQZzwyqy4QT2xkpTmKGLtUhb2vD2m4S+Sd6Y4JPQy
	mXiR8IVtocYndoZ0LuNV9vFajLThmwZcqklZgQ6MiGcG1SUGkfjmyLpNvbMnznl6eeDDvyayBXMjZ
	ruZQ6aCdusBDaydcGwRAD8clZWiTUsa9dIVqQlcAdaNxut6mGnvdn9TzEd1cfUv9zeXLILTkU0nok
	SDZ2LM1i/DYlwWWptRQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlrRG-00000001ip6-37vC;
	Fri, 30 Jan 2026 16:33:42 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlrRE-00000001ioa-34PY
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Jan 2026 16:33:41 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-4096aab5521so1654024fac.3
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Jan 2026 08:33:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769790819; x=1770395619; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HRyJbPVKDYOcEx/uJfavPdGQ3FZcp74iFXGk3iA9oPM=;
        b=OeSncTEyQCw/Cf6lJ9UrHOpWW+HRFpAAOShev78zCKxeECA3F3DJ6C4ffYLh9dm1fx
         kW7cGEisEUcmXVzxgGH4R5ejUxR1i4ImmvIj2vCq6toWSDBXq5yNjhWiW4OCk6MoDA9k
         plqB4fJvxKPxRVn1CsRGFn0MzRfkCt1B7akQGNqNDpZxQFWJlCdty5rke/8udw5uPLuN
         H0cLul24oRZTCdTyF1X/ajXWO32BdjT/AvHWOWavfi25+9/VDGP9Jq+3nS4JH1Jxb0xq
         3XACx+p4fZcTgE8lu98jC6UaA7NibQa7OQZYZesytVgxFjWtpkiBMvWTy5QdE2BCQbLL
         OTHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769790819; x=1770395619;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HRyJbPVKDYOcEx/uJfavPdGQ3FZcp74iFXGk3iA9oPM=;
        b=aiueut4c+JJMPtquXN/DYIzd0REE7+DPpMDwOgzaKUMYk5WJXOs+EjVuSr514lHf4L
         PAP3anq3MHzu1xKyHiWVa3vjjqmUhMd3G3uwlFDtkdvDs/uU2a7Fjoi8hbz6B9hRgiA0
         3G+GYoOQzcxAX2PUuPkqZCTHkZ3pfelmx6fLwRcRWHF5uOBULv2wjr6u8CSuM/9nynoy
         JVTtAVOUs7UVrYZW37KQhq6kvTnRxVdlBEUbGqL45pWBY9LoZmlz6GBz2i52P6Mwwpnx
         w4wWVR1OPbwba0fn+cJI6uy3JtL7ietKru7jURvdiBM0oZPnw+uO9mASMdBR9bW99dRY
         y3Sw==
X-Gm-Message-State: AOJu0YyBALlzwHv/VNVfYRTenRdMguzVruXQ+M8iLMGg7reSGoRj/VVZ
	7kRweRchnu+9Q54Gt9yiKYnDebrN4UK9Aj7CCrqBW+U4VY+ltaekH2iJLlfHmQ==
X-Gm-Gg: AZuq6aJC2Dvja7EenM2QU/bYDIxdGxBYDG+haxkVeBrNyo8A5SHYUZBcJVk2IGA0AzF
	YEze3bYZXPK1POdEeUWiUfHp2N80QaAhrESpv1O1bd77wJjh+2XRI3tspdRJqPL/jMn+zEhObrD
	PcjnBYi4k4ksnRsJjWWtcFKdVkR0zB4jZXiQR4zK5OVTcj+X9tZxZJhItWjlJIxyIL39D+Wek7v
	v+0k0WqemKQIc66zDqsIyW9YTQaRwww/MlPzyD3rrAxsNv0ZbUUsa78NF5kCUaMURnwu40monIc
	EZI5mztcjVyBv+2JS56v52uREd44KU7O06VdvTvophFwZJYpBcFaUSiBnVQt3JBs0c1lkernSZq
	vGDNjRe1rFHwuTJURY1DSJGm9JzzNhHIIbjisQTYG5j/hbpLe8KZWZYoAOeH91nlhzwH3CnReNU
	euKzkR8fF4
X-Received: by 2002:a05:6820:1387:b0:662:f8a9:9ec with SMTP id 006d021491bc7-6630f3854a5mr1643640eaf.56.1769790818641;
        Fri, 30 Jan 2026 08:33:38 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-662f99447b5sm5147524eaf.2.2026.01.30.08.33.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 08:33:37 -0800 (PST)
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
	Chris Morgan <macromorgan@hotmail.com>,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH V2] pmdomain: rockchip: quiet regulator error on -EPROBE_DEFER
Date: Fri, 30 Jan 2026 10:31:01 -0600
Message-ID: <20260130163102.51757-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_083340_797176_12BE49A7 
X-CRM114-Status: GOOD (  10.74  )
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
Tested-by: Diederik de Haas <diederik@cknow-tech.com>
---
Changes since v1:
 - Simplified return to single line
---
 drivers/pmdomain/rockchip/pm-domains.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 997e93c12951..6d3fb18f4ab3 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -705,10 +705,9 @@ static int rockchip_pd_power_on(struct generic_pm_domain *domain)
 	int ret;
 
 	ret = rockchip_pd_regulator_enable(pd);
-	if (ret) {
-		dev_err(pd->pmu->dev, "Failed to enable supply: %d\n", ret);
-		return ret;
-	}
+	if (ret)
+		return dev_err_probe(pd->pmu->dev, ret,
+				     "Failed to enable supply: %d\n", ret);
 
 	ret = rockchip_pd_power(pd, true);
 	if (ret)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
