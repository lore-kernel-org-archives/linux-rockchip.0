Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9EEFC25B08
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Aug 2022 20:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wsjvyvfGxOkySQtp1jWfI6broQ+TLAPwFMh4icjs7Qc=; b=oTVOghct4DXliZ
	CKwVu1SL6lY1WrlE1GblYGBPfvdvgZNldWGfOUwhTEEF/mdwpfuz+mDLTsI9RjS1aXLJs0ZE52b3D
	OXA6tTBarvLjxwxKMWAEt5OxG6lqVIW7idyWBz9JwjcaNHxsuipsrdh3jtOjjX6GIWeHMSWeI/Lri
	JzvSKRdxI1pEEUpQpTxCOUG/McFC6BLYkxqxGBDmEtqM7W/GZhAKVRmLv1TpKmGvjUsGixJnaCrln
	2WEH0n+9CFL2E0IT24t5iLPCpdqJDy6f8RrRmVQlAvZER/45fQTUGBXCxEWl7lFg2IbfZlfmDcg2X
	xn4Ut/reXnXpVZiOyI+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLVhf-006CyA-VT; Tue, 09 Aug 2022 20:19:51 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLVhU-006Cuk-4q
	for linux-rockchip@lists.infradead.org; Tue, 09 Aug 2022 20:19:41 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 15-20020a17090a098f00b001f305b453feso50963pjo.1
        for <linux-rockchip@lists.infradead.org>; Tue, 09 Aug 2022 13:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=lgaYMtvXAvEV/Ho11rGuZwK8z8qOmKIv1XQUoKmBom0=;
        b=Rr49S6enPzOon1+0rfWT1HYdfecyoRKPKQAHApNe5/mYPNbTEp3AT0H4+ofY5+C7Ho
         T5hkEXr3UH4HTtY0OPvKSezVgZCu3ttWzKZuHmYR2yaB78T2ImqsGq8x6MjKoCJBzb9s
         LX3QWuNs1hO8UjpPLmOtWMY8WYYGec/QLbi3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=lgaYMtvXAvEV/Ho11rGuZwK8z8qOmKIv1XQUoKmBom0=;
        b=Fm0BoK/FSvhYTzRtQjg6I+VrmWLY5h1pcPV0g3KbKI9InKvm+WVbCQ4eXQrzgFIk5N
         vGgn+jPpr2aHKjc4dP3nerSzYkrrUK84Azomw0Yq6gUA7Dt1lvAzW4EwZGTSchh/jJnM
         ds52zwRo3uLSW3rEP1fdNElJiK2h+WW+7sXDVTQLMzTJzEzh92ui5ig6YtenprNJxu5K
         jkzOwXFJCw4+jUCUZ+vC6Lhb3sn90Z5qeV61HqAXLon50zK4izaARrfa9FQQsRwrITVY
         Btw05HzfgHOcPmHdSKpAFCnJDhzKyFNyUUwYHvJvkwWUeoTXWDusZMxjgGzFGsWK/OIa
         EDZQ==
X-Gm-Message-State: ACgBeo2EqTxwb8rHqKhWoz4OpSUNuBqT6/3wT2UT8Ku5RSa9aMAkG3Hz
	nN6YyFJuZhsvk/UmHZrXktanfg==
X-Google-Smtp-Source: AA6agR5aHZs4bFslLZr8T2oIVblYnKdXjsyGJfqOmrwxMrTmj7OV3/X39z3FXgK5WZknWol338SBuA==
X-Received: by 2002:a17:902:7247:b0:16f:8361:ba26 with SMTP id c7-20020a170902724700b0016f8361ba26mr24559334pll.83.1660076377553;
        Tue, 09 Aug 2022 13:19:37 -0700 (PDT)
Received: from localhost.localdomain ([183.83.136.224])
        by smtp.gmail.com with ESMTPSA id kk13-20020a17090b4a0d00b001ef81574355sm12792pjb.12.2022.08.09.13.19.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 13:19:37 -0700 (PDT)
From: Suniel Mahesh <sunil@amarulasolutions.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Kumar Gala <galak@codeaurora.org>,
	Will Deacon <will@kernel.org>,
	Michael Trimarchi <michael@amarulasolutions.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	shawn.guo@linaro.org,
	Maxime Ripard <maxime@cerno.tech>,
	Mark Rutland <mark.rutland@arm.com>,
	Mark Brown <broonie@kernel.org>,
	Pawel Moll <pawel.moll@arm.com>,
	Da Xue <da@libre.computer>
Cc: linux-kernel@vger.kernel.org,
	linux-amarula@amarulasolutions.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2] arm64: defconfig: Enable GPIO SYSCON
Date: Wed, 10 Aug 2022 01:49:21 +0530
Message-Id: <20220809201921.703287-1-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_131940_189065_A9103EF7 
X-CRM114-Status: GOOD (  10.15  )
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

Enable driver for SYSCON-based GPIOs.

Signed-off-by: Suniel Mahesh <sunil@amarulasolutions.com>
---
Changes for v2:
- restore existing configs.
- change subject and commit message to suit the change.
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d5b2d2dd4904..52623c2b505b 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -549,6 +549,7 @@ CONFIG_GPIO_MPC8XXX=y
 CONFIG_GPIO_MXC=y
 CONFIG_GPIO_PL061=y
 CONFIG_GPIO_RCAR=y
+CONFIG_GPIO_SYSCON=y
 CONFIG_GPIO_UNIPHIER=y
 CONFIG_GPIO_VISCONTI=y
 CONFIG_GPIO_WCD934X=m
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
