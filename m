Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96254C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:01:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E1A160E09
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 18:01:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5E1A160E09
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t0JcpupZAZJod0ka5Pa0AJZgE+1K+/4ptfxmOqvYpYo=; b=m0rHf1TDq2zquy
	HQlN4CmkCIFzKCl5AS6yLuNqdWS0MYasCjtu4kgcDRP13jIEMmF3JEbFstTsC5rqicRTYwMPPY3Mx
	sBg8FWGlsUBLBGD8H+HeqLieEABLaKj69Kr2w94kDIKjpHdC+erLYEhMhjr8wVKzbgdu4400vtl2+
	DvxSiSVX8wqkarMVZJI+TSdYlmRDJaFXTV4Ng0pJa+B1q+hmb0+J2V2oXswAmwl6U0YLQlzbHhsEu
	W9CL2JDBHgGT1p7tY2nHJ7yXoMyjjC21OWlLPPvUtWBv+YWjFjQ8LOUxc19e9y89WAQe4aopJb4iE
	bhYyX8tRwOyWVC1G7+Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8nrs-001xx6-Ud; Wed, 28 Jul 2021 18:01:20 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8nrX-001xn3-1w; Wed, 28 Jul 2021 18:01:00 +0000
Received: by mail-qt1-x829.google.com with SMTP id h10so1988381qth.5;
 Wed, 28 Jul 2021 11:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HjqNaCu5z632c2H6OSRidttZSmwX46gUM1DC3j7exUU=;
 b=d4TQ5qxeRW8IhmFe1ZMqMdQ0ddtukgZDNvAqp2e7TuDKRmy/TxM38z44H4fP8T4lyn
 oPYUxSQJYBqqkMadCcUojtTd+HjqOMNFch2TeL3nBhMN1TQfI3lr7ByEv6hCBj8MoLOr
 GGf7+tmOJj8pJhkQ7NZj0buvHcG67PCN1Q+W3neepzoe2nbESKAJaiEyW9Otmr7hR8nP
 ADfbezM5WhwxB3/eGj0NmwQpgfUFP7dCFO7b6LIK3BL/ZA/7OKvjJ8gJt/9X+cKxdP3S
 hQY2lYe99f3sohxtKUWKvxszyogY6ivs71SWlSTde2URwGzB11NaNNtxureQrl+uv0iH
 aMfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HjqNaCu5z632c2H6OSRidttZSmwX46gUM1DC3j7exUU=;
 b=d1pEkp0yqTOih+5oJnojxbqPtcONK8L2TemHduyLymjHmgBWUXs/Ag4mBgsezroUG0
 /8vpcHPe/WMdjyHwqIY7LFDNlC6pkQaDlLu/Gq9Sal0hxDNZFWYNg9jxyaMt0YQsXLMj
 aIJNNCJPphtsodlHMuRZ5qzN2148W/FPoGq0Jdw76at5wFjLcSTzXbOfVWVjLm/ZgjxW
 8SXIhvpxGxUjEzcdFSbSn9OVWYTWrb8XnjEufnzzkYMU7Yk1xttNNrEtNe+EVf26fUZW
 1sXPgvfJT703ah1fUucIhq+Kt19fbiOWIObvyCOfgOjCaWc8kP2iYgd9l6pj4rPbg9gm
 QwOA==
X-Gm-Message-State: AOAM530CeMZEp2lLGOBFLNyzysuyF0V6yPtLKcqh+E8uCR5lK+X1zPch
 MuJJs3T5wT2QqM0baWpGZbs=
X-Google-Smtp-Source: ABdhPJx60cWu8UNF0XaLyoqMNCqTuJYTmTH41zklhgF7eZCQAw14sjuj4oPik3UPuJVH4/JQSxAHSg==
X-Received: by 2002:ac8:6b99:: with SMTP id z25mr763728qts.150.1627495256568; 
 Wed, 28 Jul 2021 11:00:56 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id r5sm223341qtm.75.2021.07.28.11.00.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 11:00:56 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Johan Jonker <jbx6244@gmail.com>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH v2 0/8] fixes and enablement for rk356x
Date: Wed, 28 Jul 2021 14:00:26 -0400
Message-Id: <20210728180034.717953-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_110059_143703_9890E056 
X-CRM114-Status: GOOD (  11.96  )
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

Good Morning,

This series aims to fix some early issues with the rk356x and enable
nodes that are currently supported by the available drivers.

1. fixes the mbi-alias, which points to the wrong location
2. fixes the rockchip clk-pll to work without a grf node
3. adds the gpio debounce clocks which are necessary for gpio to bind
4. adds the common gmac1 node
5. adds the tsadc nodes
6. adjusts the gpll and ppll clocks to better support hardware
7. enables the gmac1 on the Quartz64
8. adds thermal support to the Quartz64

Changelog:
v2:
Drop "dt-bindings: gpio: rockchip,gpio-bank: increase max clocks"
Drop "arm64: dts: rockchip: add missing rk3568 cru phandles"
Add clk-pll fix patch as suggested by Heiko
Move ethernet alias to Quartz64 board as suggested by Heiko
Adjust tsadc pinctrl as suggested by Heiko and Johan
Move tsadc mode and polarity to Quartz64 board

Peter Geis (8):
  arm64: dts: rockchip: fix rk3568 mbi-alias
  clk: rockchip: fix clk-pll rk356x early pll init
  arm64: dts: rockchip: add rk356x gpio debounce clocks
  arm64: dts: rockchip: add rk356x gmac1 node
  arm64: dts: rockchip: add rk3568 tsadc nodes
  arm64: dts: rockchip: adjust rk3568 pll clocks
  arm64: dts: rockchip: enable gmac node on quartz64-a
  arm64: dts: rockchip: add thermal support to Quartz64 Model A

 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |  71 ++++++++++
 .../boot/dts/rockchip/rk3568-pinctrl.dtsi     |   7 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 131 +++++++++++++++++-
 drivers/clk/rockchip/clk-pll.c                |   2 +-
 4 files changed, 204 insertions(+), 7 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
