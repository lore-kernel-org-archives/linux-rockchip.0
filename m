Return-Path: <SRS0=zXd4=NQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1AFD3C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 03:37:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B2A0A61139
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 03:37:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B2A0A61139
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d7AhNqZWo0BGtyP6ilT9iWuLlaZgMpecgryFfqOGJNU=; b=KTcai8I+FUylJt
	disz7D+UXj6G1GZvIM9JIhcgc726nLkJG3i/tvJb0UtL3+x+2OCMR5xbHrxxugX+fhLfhI7uKYYZn
	v7Jyh5HPXPOhKUeJZoHvgVafXuEeb1REFbYNs6rNSqJwh6z7YqTKD/BUo+bawZ0aJgdNyjpVBmGlI
	IEomYroUwTl118yb6qJCXhTNq8w7j0SbKxBSYfIHR9R6r90FG70ma/JjnulRhh5DlBpswGWLsyVoo
	i1R7yKdQlOroFXaMzT7pqDnEKzVSYw4/DY2TsSq5dnHOGhBdwi1ilxoYqnsWCZuFJ5AlTEaUWGXZw
	UgTIUSzYSvgd4u5sK2ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIjjQ-005Mh6-4G; Wed, 25 Aug 2021 03:37:40 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIjjA-005Mde-8q
 for linux-rockchip@lists.infradead.org; Wed, 25 Aug 2021 03:37:28 +0000
Received: by mail-pg1-x533.google.com with SMTP id x4so21752509pgh.1
 for <linux-rockchip@lists.infradead.org>; Tue, 24 Aug 2021 20:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rD0o67j/laHpe4aDVsl8MDb/cWf8HZLes0zv9r5sgOQ=;
 b=C0XXUfq05Vk2o6FVLtiGfBsmlwFanOstvcjgB+89t26LIUhwwgGZVVJuecHjz62T4J
 gQqxdpixoFdWbL3Mpmwv3/oN3UIUKL6hZv4MChJV2tsm+pwRZ/p+tWMsZ2tkTlvge6Px
 qWA7mZjE4xu6xEhNqf4DBQzWBbuPrPLFluJ7A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rD0o67j/laHpe4aDVsl8MDb/cWf8HZLes0zv9r5sgOQ=;
 b=A3S7eBJY/8tnwQL9hOT8LNvbXzDom1sJQqUlFR17baleI0vInp+N1tsE5rOgSO+CYP
 rhdUv1prS9By/VeLkVydk4F+0sRZIvAryAS3vRw/c8Xwth5MWV2mkYlWbX5VWLZGtMqu
 PWriarHgvsr7gp8Yq4RW4f5f2Hw7sVW9/i2K8JxqCPIBPuECRY4LgbAleZ0rII+vj4hX
 /ynNyhtuqTO6c5QXEGePRKRCKck2OzplcTWQqfOJOW+IbG7wZaBfo4XEhauii6kWYirf
 LjiAWFABIOJDhNS2OIRX0AjcWQGSHLxRfpdU0InNyjG3zB0Vb11R+gSXguFUkRKgNaDu
 eXug==
X-Gm-Message-State: AOAM531xs3t2s5uJ8CaMjsPrCG6c8te33tsHJFt+lQzGM5Fnbi7YtHgQ
 3Lg2MDubONeel9CT/6+SlIWqvg==
X-Google-Smtp-Source: ABdhPJzwbcWBlXI82NOEE2KsqW6Q82aJPm9zRsXnknAE16aMI/brVUvUZFOAzmWHosV/cOUzj/Um4g==
X-Received: by 2002:a63:87c3:: with SMTP id i186mr5700076pge.242.1629862641871; 
 Tue, 24 Aug 2021 20:37:21 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:629f:4b05:2c88:776d])
 by smtp.gmail.com with ESMTPSA id l10sm3902149pgn.22.2021.08.24.20.37.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 20:37:21 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Brian Norris <briannorris@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/2] regulator: vctrl: Avoid lockdep warning in enable/disable
 ops
Date: Wed, 25 Aug 2021 11:37:02 +0800
Message-Id: <20210825033704.3307263-1-wenst@chromium.org>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_203724_376806_3A2CF706 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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

Hi,

Here are a couple fixes for vctrl-regulator. This driver is only used
RK3399-based Chromebooks.

Patch one fixes a misuse of the regulator API, which was found while
tracing the code to fix the lockdep warning.

Patch two fixes a lockdep warning and actual (not easy to reproduce)
deadlock.

Please have a look. The are no dependencies between the two patches.


Additionally, I believe it would make sense to implement the voltage
stepping feature for all regulators in the core. Then we could move
away from vctrl-regulator. Right now it is only done for coupled
regulators.


Regards
ChenYu


Chen-Yu Tsai (2):
  regulator: vctrl: Use locked regulator_get_voltage in probe path
  regulator: vctrl: Avoid lockdep warning in enable/disable ops

 drivers/regulator/vctrl-regulator.c | 73 +++++++++++++++++------------
 1 file changed, 43 insertions(+), 30 deletions(-)

-- 
2.33.0.rc2.250.ged5fa647cd-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
