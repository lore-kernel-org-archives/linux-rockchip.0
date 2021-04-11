Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AF9BC43462
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:31:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 85A5D610CB
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:31:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 85A5D610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3j23lUkVCYabbhnmqZGoKsY5BntytDkryy/PX72/KA0=; b=gxjzcwKbSGiYsXiHNNLxNHlF4
	i97PI6zSMUsAk/YqlbnLiJrh6tLWFUwTCjjnP6mwMQ7Gm2ST3lWrnCMfcpc8NPV5L1lkNApLvb9SC
	61j2IEDqiZ398ATSNbjVS5ou9bEoDMuxHu2Ei9DgzwuhluE4AmmjOEEXMbKqS2D1JgJq3exBCTfsq
	vvzv7aQU9MEHgHms0T49RwR992tNB4R+pzUXF3Fj+t/buFuSfmAS1o5kKdQ+P45GXaUmI++GOxQ/t
	pR/4e0voBNkWg/Ys2mImc0blJNOwj2SOHMNdOrB1JqSo8UlFIjEedqT3FkpaupkTD1L3LS/o4SLHN
	ob5h4rw4Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVaAz-004WJ1-9y; Sun, 11 Apr 2021 13:30:57 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVaAx-004WIp-QT
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 13:30:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=fjZkGAV2onA9W0zA2KcPEQhI5/QgShDnA+nmt2xDiXo=; b=Hhz2XmSmlCXNhdMUb6UUIg0qQ1
 ZEYS346gzh5/0Zk6t1pI2frYNID8Hu576gBfdC6MUxKSPf4THl0qSP2OyN3virKk7hBujMLQxKA01
 JLmxf5ul17EZQ0BXj7sWwMObcj3Kvn3w26NFwgOUkNtfZgLCuiLqduBl5PSGRqvbjGT+V7HVLpNYj
 iPJ9QgcYSW2dCHOclUyZP6vg4BuQiXkfTWCIxg7Jd7hs2uDsDPIQwAnV6sg3qydYLG/bGtKd3CJe1
 vfkAM2mh/8GrDvE2Du99N9J/uzwyB31OozLpC7nuhW/VB5+dnuMD9gS6CWy/XFZWd8EmrHZoLkXdW
 6pB1DyZQ==;
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVaAv-005Wpl-6G
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 13:30:54 +0000
Received: by mail-qk1-x732.google.com with SMTP id c4so10663775qkg.3
 for <linux-rockchip@lists.infradead.org>; Sun, 11 Apr 2021 06:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fjZkGAV2onA9W0zA2KcPEQhI5/QgShDnA+nmt2xDiXo=;
 b=JL7y8uJ3qrLnXv0uBLbFYyUhrRSi3qZMIEb9MtYjEU7mG3LNJZhhy5jaBzlHZETg8k
 2fB91Su4taYcPp0O+CXH9WagnNawgI5TcrGOCgn8r3d82UXPOAgpoWQ02i8RqAA0q96W
 sxkNoSsDF18e7afZm5p7C1cLZSoocEb42k98B2VgpqJWtITzIxcXN1J+d+aD228N/XkK
 g7Pg3mVgjb3kTkia6dPHhsnww/XFynoht1xRSfLKauBZvL2CWm1FF6CaIqwmXsgr6Jn8
 HX9MCiBGzwoy+C6eRKxSasfLIhBeiV/iLcnZIlwFou2Cn6QtbIxPr+CmV4Eklv25paU9
 ACXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fjZkGAV2onA9W0zA2KcPEQhI5/QgShDnA+nmt2xDiXo=;
 b=VOijDwoNhiKcdj7Z/11/xBxmd5Hwpo7/kJ95o/WFgjv8Ycj0hUWKKEaefc2RFWLoM8
 QbO894ynStGWP4JJBvRlKgENWn5Bfq2NCVds/KSxMCVTMJ9hOI3OQGW5xyFZxQiyA3UL
 +hnkWPAjVGbPolQeTObibNch9jFLkVgm+DJ9Aj6hfl5sF2EVN4+CFbi+HkFcdsIpnCDx
 zVM34cfz4HBauyjgNJXQKtRIQO/4iP0rFs1SR9c4Oa54KETM01uEk39o+0m7+0cfAQxk
 pwaKzMYbTy9AaqN0a5dYjFqIx6/uLXxDRCM+Fh1yfYf6cA6O+BMvRBdnWv/tGRw0OI29
 ZAtg==
X-Gm-Message-State: AOAM532AxqvAFgWOiRxC94Ub/FbzIrqyCQbmi6T/sgLQM2+KEEi3pMch
 FeTIStAvNFEb9uWigH5nK7k=
X-Google-Smtp-Source: ABdhPJx4m6emyVfwdSgwe7XXc4ccXCP+aQItscdwP5r0OLXK0thS+NBsh27Mdxuy07Kirx+wfB3eLA==
X-Received: by 2002:a05:620a:a89:: with SMTP id
 v9mr5565174qkg.279.1618147849820; 
 Sun, 11 Apr 2021 06:30:49 -0700 (PDT)
Received: from master-laptop.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id l17sm5734204qtk.60.2021.04.11.06.30.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Apr 2021 06:30:49 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Jianqun Xu <jay.xu@rock-chips.com>, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, linus.walleij@linaro.org, heiko@sntech.de
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/7] pinctrl/pinctrl-rockchip.h: add pinctrl device to gpio
 bank struct
Date: Sun, 11 Apr 2021 09:30:25 -0400
Message-Id: <20210411133030.1663936-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210411133030.1663936-1-pgwipeout@gmail.com>
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_063053_255020_F6C94041 
X-CRM114-Status: GOOD (  10.98  )
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

From: Jianqun Xu <jay.xu@rock-chips.com>

Store a pointer from the pinctrl device for the gpio bank.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/pinctrl/pinctrl-rockchip.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index dba9e9540633..4aa3d2f1fa67 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -81,6 +81,7 @@ struct rockchip_drv {
 
 /**
  * struct rockchip_pin_bank
+ * @dev: the pinctrl device bind to the bank
  * @reg_base: register base of the gpio bank
  * @regmap_pull: optional separate register for additional pull settings
  * @clk: clock of the gpio bank
@@ -105,6 +106,7 @@ struct rockchip_drv {
  * @route_mask: bits describing the routing pins of per bank
  */
 struct rockchip_pin_bank {
+	struct device			*dev;
 	void __iomem			*reg_base;
 	struct regmap			*regmap_pull;
 	struct clk			*clk;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
