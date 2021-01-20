Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11EA6C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 09:31:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A92B822D08
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 09:31:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A92B822D08
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d9lWfuP+wr2kmfxdx6urUMdcF0bb+WG9hWzQJ/QChCU=; b=CDRpadM74QPMpTOnoiZTfaWcd
	YgBoC8bqQnliIJsSGpRhFnAYlu5uunEuLehfRxTWo/ptXYksTS+FMsoWydotwlruU7nJyhUzi4vdP
	I85vxBfyBwNOs/q/Hpm1DJCHpUdrV93qLJfhj594nJMx76bzbJS6FT0HPHNY0YNVO6gSiy9JMELsz
	GoJMJgQ2wsT4e5+d40kztj6uawpNfCRyxEggYs44UdkQx3hDjHuJqZdQZTguAyYENTCycwF1AsOGJ
	L/a3GHeOUuXSMBZfZCgzazfoverqWBEO9xt0h+ANwWxWAGRi9U/Sp2X2bB+tyD08VLTHBWstEtNtR
	58zpGGHRA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l29po-00018y-EZ; Wed, 20 Jan 2021 09:31:28 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l29pC-0000uS-51
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 09:30:52 +0000
Received: by mail-wr1-x435.google.com with SMTP id m4so22349082wrx.9
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Jan 2021 01:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mIiZ6UdkfZ1pzms9iuBNbuiycjVakqbZxBNbxqLfJT0=;
 b=XmAXV4QTvia9d7Vz/pwW/8VDwM1KnqnvenvY8gWiIM4kU7VmW018gvcjDYTBZDGLvn
 UNJcx0c3Lwhntubpnh/K+KYhcJaeWY30f+AL9iD/SAeDtsB+S61sU2SMHk4dn5mOwoS/
 gkuzsCjm1midnauwlSPHSouHc3o7UsEj4f9W0dnnIiKfXnzmqv8zUTrmowL2VUJ7/PcX
 ltN/5JSGkyzRH5oWfc+tLKMCHxJvUC2JP9R0B39FOMBN5sBg/4OF6GEtcKxF+osaJtry
 HvD73sMOxl1aYjWXlzgbgZ61Eb+G6SNv9ppWLJiTsd4DVDv9n9S2C8z0CY6ankFpaOJP
 ey1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mIiZ6UdkfZ1pzms9iuBNbuiycjVakqbZxBNbxqLfJT0=;
 b=sxz3ZwXsVx6poNouL5txHqcaQcR1R5YWE9cQakgJEFH0Trg6cN3R4PrJ6Uw5uiqPtU
 2PydTeLRYlEnIY2lIiUC9KhSmb4oqRJLgTw7gilQuhjfw17jSvmk2tYoATdCm6A45EMS
 nB7nUzc7n4NT/Rzz+U5LmQx3bYhoux+Om3y5deKLV5hIrtpQhLsnQ3JYav6izUvtkaXM
 +aAH1I12yIAG72Vp23SFWeUfynjgWGGdTb/cnfbZhR1BJdprAwquPeb9GOJRDFBZ2I/5
 MtOKqgJf/kLGQwyF/+HLwyNIcHa5DgrfVkjvJPo0wG+XiIUB8a5lXLwQrKimPK1vum1v
 7rLg==
X-Gm-Message-State: AOAM533x8cV/8AvCGyGRbL2f0REvUJfaeXdh8ujxJ9O3tpPTJldGYlzO
 OfJujLHjhhr11w8sqFcpU9itJmIgs0PQlXkA
X-Google-Smtp-Source: ABdhPJzb9TpEAlS6uB5qzU34JkRauMRiiiQnVSqfLKRcLm1T15iP+zYNBDZVnTR85MF/1qEjQkO7nQ==
X-Received: by 2002:a5d:6311:: with SMTP id i17mr6328988wru.195.1611135048804; 
 Wed, 20 Jan 2021 01:30:48 -0800 (PST)
Received: from dell.default ([91.110.221.158])
 by smtp.gmail.com with ESMTPSA id z130sm2889201wmb.33.2021.01.20.01.30.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 01:30:48 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 04/20] clk: rockchip: clk-half-divider: Demote non-conformant
 kernel-doc header
Date: Wed, 20 Jan 2021 09:30:24 +0000
Message-Id: <20210120093040.1719407-5-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210120093040.1719407-1-lee.jones@linaro.org>
References: <20210120093040.1719407-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_043050_259281_DDFFB3CF 
X-CRM114-Status: GOOD (  13.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fixes the following W=1 kernel build warning(s):

 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'name' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'parent_names' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'num_parents' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'base' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'muxdiv_offset' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'mux_shift' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'mux_width' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'mux_flags' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'div_shift' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'div_width' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'div_flags' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'gate_offset' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'gate_shift' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'gate_flags' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'flags' not described in 'rockchip_clk_register_halfdiv'
 drivers/clk/rockchip/clk-half-divider.c:168: warning: Function parameter or member 'lock' not described in 'rockchip_clk_register_halfdiv'

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/clk/rockchip/clk-half-divider.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-half-divider.c b/drivers/clk/rockchip/clk-half-divider.c
index ccd5c270c2132..64f7faad2148f 100644
--- a/drivers/clk/rockchip/clk-half-divider.c
+++ b/drivers/clk/rockchip/clk-half-divider.c
@@ -145,7 +145,7 @@ static const struct clk_ops clk_half_divider_ops = {
 	.set_rate = clk_half_divider_set_rate,
 };
 
-/**
+/*
  * Register a clock branch.
  * Most clock branches have a form like
  *
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
