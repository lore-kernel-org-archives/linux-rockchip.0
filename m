Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7D5C606A32A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 01:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MBRreMIg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=X7thJ7LY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=lgBjRP7sPt7UXTwUO4AXniPr9BvHRnYpRZqKy43wUi8=; b=MBRreMIggUemnDHvpuD2LSk89F
	og0LqJUWr1Ou2YMwtNDyrW2Bvawt8hgCqr9z9Faht99nKj5Xcdxe/xUb0KMJO6u1h49vuvkP6uVEp
	tRh376ibBfgva/KpOf4Tugrm7MYx6/aHNWnp/01cu1r7px5D/7sQcL3wt9lUYDQgDU7kZjmg+rCLk
	skLYYgG+3ML2bN2WTpR80TX+XQfCZkukxqYuT63wvlqJCXyDGI/cfOeUDRSSz4G2OAUQ/diLub6mf
	JAWH9iD12ZWQzi290gpmjFthgx5gz6pn712v1u6EQB6aRaOUENL00LlHazeMn0wfkublWuXIJlefb
	j4G9aEMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVJCe-000000026dJ-3d0N;
	Mon, 23 Nov 2026 01:50:44 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVJCa-000000026bR-09ht
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 01:50:41 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-48e94879f02so790740fac.0
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Nov 2026 17:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795398639; x=1796003439; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=veZxcNVuo2b3ptIF4Zf8vJr2Tg8zlMewCoNyj0061vg=;
        b=X7thJ7LYa+EkhjO+vEpjXO2BjH6ML7iTD2WZBBQR3AS0GoNj5VtiZeVKhlTHFaw2bZ
         b/7u2Kyrpe7WDH2cP6hM90GILFIMCtCaNQQxYcggLgJuqfx80EFEp6nT3Zc7F+kiP2mj
         CTO8KMx7twIkH5qnbeVYHUid00xC3NmIW7tyeU8emUxahDE4pM+fgjXiCa+c4nnKdwk1
         TtCugIHYydSekAqFl1eVEzL9dHZTg96sINyjAyCqUQEF6ntGnqgJM4H+MNPwxfemjJiM
         7tSf6OYZBj15O+UEprhzoWrCSO5SbSQ07mnZlTCmedzJXAC5fdproQtsHzMwiZqfQUDq
         0SrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795398639; x=1796003439;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=veZxcNVuo2b3ptIF4Zf8vJr2Tg8zlMewCoNyj0061vg=;
        b=1Jp7XGNE8qrb6/O5FMIv5DTEtpLpuuK6QFEktwRMLraWD4xxGzF8Wz8De2BbKb+fU8
         J6DRj5C9koFiuuLpMhL0Opj6f0A28u8UW25ih9mQB1H05amhohxdOU60GSWbjH0gIynS
         GnLL9QO/ah3tTpevwvWAG8z53atMRaUrR1WK8UxHWkgGy7pZsUbrtaAcgUOikQr4Py8l
         c9hvR5Pz9af0CcjOT8DxVDx0n7WmTE8sjhNPYBilxPeC+hwvBcFaLonFk8G6A86xOxyt
         9yQl4fVcWxQKopmA3LtnVps2cE0cB4U1L0Jw1Dq9s64CEj/76Uk45ooZDbjTzfPha3+5
         S6DQ==
X-Gm-Message-State: APuU4Z+oKWBUddOFbqu/6KHAw6vmNMw7Tpx3kYY07I3awXrw5tVP2NMW
	KzgTOG6J2aWej8Ghj2o3XXYum5csQiIbK6ScY+dBIvYewq7fg9xTyJ2yHhtUii49
X-Gm-Gg: AZFdTZc7QWZE3YZcXq0k/8speg7LXX9tbPgVP+gzvChoEcKKJdkrzxWmjrbj6ZDr32N
	3or3STSDuNd9ynTBbUnvXh9rmFGUk7qVRS2Uk3oiVDr8fgzDfRfiPcXd3Ar1EHs0Nu0mjbmqGPw
	CsWIc+JfEHiGgaKxnR/RMfYJfy37OjXbrzNZBqYRT0a8HqMC17KT/nLilB+bMsIxwB89CGpScuw
	WZ7/sHIDzYBTtXqet3t08uUe/5LX+gihsndnvf3WW2mhyRhvKSnt3gScd6Y31SImhmGItXlgGwp
	1e/3YpcM1vhVE+gY1a0LK1m2iXhVFKMikOpylhgdkyREDEjUNvXSLmu36WuMKE1UwBpnMHXok7i
	R3eR8tV2Mrz5ELy0pnXBI9pORqC0q0bE2t8gF+2I+R6zRfiIqKudDpw8CY4j/tmBM1pLtrBtJSl
	wL0Dk0uNVcjN4XHKxQtoyqhck6N+VsQxyeOi5XSFtPzHQSw//oCP3z2yQWG2Jiuo6RbbWULO3uA
	287tEmR521Qon2DIhaCoNf6Yb0lIk9ZLcC4KspP3EqoQhNbki3QUYR+0TyMSc6Vpay9DLZ2hJ08
	qV5dwuoSWx/Wi9nB7yX9yDi+H5Y75g==
X-Received: by 2002:a05:6870:810e:b0:4a7:8aff:348b with SMTP id 586e51a60fabf-4bc81ca0d2bmr9676309fac.16.1795398638564;
        Sun, 22 Nov 2026 17:50:38 -0800 (PST)
Received: from neuromancer ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4bc5f7ae7dcsm9209484fac.8.2026.11.22.17.50.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2026 17:50:38 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com,
	linux-pm@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	sre@kernel.org,
	t.schramm@manjaro.org,
	xsf@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 0/3] Add Cellwise CW2217
Date: Sun, 22 Nov 2026 19:50:32 -0600
Message-ID: <20261123015035.369192-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261122_175040_104802_1EE44304 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Chris Morgan <macromorgan@hotmail.com>

Add the Cellwise CW2217 battery gauge driver. This driver is based on
the sources used for Rockchip's Board Support package [1] but has
been updated to use the regmap API and devm helpers.

[1] https://github.com/rockchip-linux/kernel/blob/develop-6.12/drivers/power/supply/cw221x_battery.c

Changes Since V2:
 - Fixed more bugs pointed out by Sashiko.
 - Corrected an integer overflow condition when measuring current.
 - Corrected logic for when we don't have a user specified battery
   profile.
 - Added power supply changed logic in the worker.
 - Updated the Kconfig text to note support for the cw2215 and cw2218.
 - Added a check to ensure polling interval cannot be below 250ms.

Changes Since V1:
 - Added a default value for the shunt resistor in the binding
   documentation, and updated the commit description to note that the
   min and max for the battery profile is now per-compatible string.
 - Fixed bugs pointed out by Sashiko bot, and corrected units for
   temp and shunt resistor values.
 - Corrected include pointed out by kernel test robot.
 - Noted in the commit message the patch is based on original work by
   Xu Shengfei at Rockchip. I did not list him as co-developed or
   signed-off since I did not have his permission (yet) to do so,
   but I have his authorship included in the file itself.

Chris Morgan (3):
  dt-bindings: power: cw2015: add cw2215, cw2217, and cw2218
  power: supply: cw2217: Add support for Cellwise cw2217
  arm64: dts: rockchip: Add Battery Gauge to Anbernic Vita-Pro

 .../bindings/power/supply/cw2015_battery.yaml |  41 +-
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  |  21 +-
 drivers/power/supply/Kconfig                  |  11 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/cw2217_battery.c         | 878 ++++++++++++++++++
 5 files changed, 945 insertions(+), 7 deletions(-)
 create mode 100644 drivers/power/supply/cw2217_battery.c

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
