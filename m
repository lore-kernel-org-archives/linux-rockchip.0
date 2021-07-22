Return-Path: <SRS0=0DM3=MO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53482C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:14:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1E5C360E74
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jul 2021 19:14:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1E5C360E74
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YoofE0oqpccyjUbJL26GIm8ngkCEG2SGXkkuWpm/+d8=; b=Y63wXB50HnSx2T
	pAOVxCmsACRHiECZ8gIsQQisjW8P3fjr4PDXLl0rCVwLVFsaB2sghw/fYCboDws+gXv1e7InllBpo
	g4SwC1Y/VsA2lChTxyz61FOkBsN99PbRyZKUY/gdKwfVBeKQTou5K+hNWJMElCGgXOG399K+e0ggN
	OeRs+28qXSzPfOY3HREENQprlIsAZLcsvNWNkKdwBuMRNA/YtBvJ5YRLGfuaUC9jgFEb1JL/s3n7x
	7W7eDzrzxAKTm7xs1UEGHK8HZPoJx2EL99kKgQP8YYq+RwdqGL3qQ/aMo7FUk+Mg+ExYo7Hpcs33h
	+42hx2o3bCC1U30clrAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6e9b-002V8N-Co; Thu, 22 Jul 2021 19:14:43 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6e9Y-002V7M-Rx; Thu, 22 Jul 2021 19:14:42 +0000
Received: by mail-ot1-x336.google.com with SMTP id
 f93-20020a9d03e60000b02904b1f1d7c5f4so2754479otf.9; 
 Thu, 22 Jul 2021 12:14:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=isgGvNleCQDQ5ZdmwxZj9FzyqTxiANzYbXVOil6iZug=;
 b=odMklhiy7f9Hhe0qNbb4ZYtcPisRl4sRDuCYCq7tr+NcbNJDToHW7voaQIecnecbe6
 As7AmhKgxJqED0N/8dsuHvZe1gC8+sFQv1pQP+h9Yg3v54VSADxrkZC++GU50J3FSbUd
 oJIuqZpW2tvzpttnWB58/CND0Ie3Iuoh0hk8dQDYWYwOqGmCHwUlY6zorYcz4kVjZC32
 XwNYQAADKHKX/ERlHsaCcypmOoLMWUYwEfMQ+ANTukDrkr3Z18FhTbTlL4m6D5/bPTcX
 E95a2mVGDQy0XHgt53OPE1NPq6NJV7tLRHWO3no8bETSK7aKcmLNipnzOeRZjnlhY0xf
 JxMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=isgGvNleCQDQ5ZdmwxZj9FzyqTxiANzYbXVOil6iZug=;
 b=hYPkK2ggDB4MQ2qNRs1sw7h9VJtaLfLwdxhjTaoD2fKTgxDknA0mHPiVEpxz7QXCMK
 jLsoDrmwgT92+1ypyIQTd1UjIPwQUWxgVHnBAZAltKnk4HKXsFjdmEGbdR8NRkz9QKnz
 b+abJbnhdw/jslam3ScPfx1MOoFPPhctZVRa+Zh+wuzchQJYqUx5pLTO8gVTo5CYfg3X
 SEUca+ORNm7eDJ0By1A2WguNe4MXeoduXrBWzGVnC+fBeFhxVah2jbhN+O32aK9fyfm0
 VJGVzUExMfUT3Pq28JpGV1Z5wm301+3dJeEcR5YaayCoiu6iPQA6e5/t6Wf4QNBdT5ZX
 +X1Q==
X-Gm-Message-State: AOAM5300tBqiKjWJ2w+p6hTZ3v5UQHbBHTh3w7lAZQ4jQ4x8fE+PHyAh
 GY5OwP+IFzQPnoD3jr/LNiYA7pKa71M=
X-Google-Smtp-Source: ABdhPJzgWs3FZsYUB2vP3NY/Nc9Pw28lermfl60sj+okNEm3iezGfjknBRBFVyB3MvfjvcBDvAjGUw==
X-Received: by 2002:a9d:2d82:: with SMTP id g2mr924019otb.30.1626981278686;
 Thu, 22 Jul 2021 12:14:38 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id r26sm3106167ooh.32.2021.07.22.12.14.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jul 2021 12:14:37 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 0/4] power: supply: Add Support for RK817 Charger
Date: Thu, 22 Jul 2021 14:14:26 -0500
Message-Id: <20210722191430.28203-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210722_121440_967726_1D2A4134 
X-CRM114-Status: GOOD (  11.79  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

As this is my first charger driver, I'm submitting it as an RFC so I
can get input from the community on what else is needed to make the
driver consistent with the quality upstream expects.

This series is to add support for the Rockchip rk817 battery charger
which is present in all Rockchip RK817 PMICs. The driver was written
as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
myself Chris Morgan <macromorgan@hotmail.com>.

The driver requires some basic parameters be described about the
battery in the devicetree such as the maximum capacity, the minimum
and maximum voltage for the battery, the maximum charge current, the
maximum charge voltage, and the value of sample resistors and sleep
currents.

Chris Morgan (4):
  dt-bindings: Add Rockchip rk817 battery charger support
  mfd: Add Rockchip rk817 battery charger support
  power: supply: Add charger driver for Rockchip RK817
  arm64: dts: rockchip: add rk817 charger to Odroid Go Advance

 .../devicetree/bindings/mfd/rk808.txt         |  35 +-
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  26 +
 drivers/mfd/rk808.c                           |  16 +-
 drivers/power/supply/Kconfig                  |   6 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/rk817_charger.c          | 927 ++++++++++++++++++
 include/linux/mfd/rk808.h                     |  87 ++
 7 files changed, 1095 insertions(+), 3 deletions(-)
 create mode 100644 drivers/power/supply/rk817_charger.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
