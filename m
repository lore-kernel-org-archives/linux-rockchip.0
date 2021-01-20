Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC0F1C433E6
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 09:31:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7CB0C22D08
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 09:31:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7CB0C22D08
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bq+aDhMA36gE/Df5GraLNl1yCVZRoTC1SLbTldJbIjA=; b=mVs6wIXFYcFmFw9XYQEj3eQoG
	F8AszGDu6KSaaBpoPaNPdbc5hnfd1KE1M4nVEZdvmNPX1Ov5U+VV04yUK34kXToqu6MFjkGQ4bdW/
	kI0le6hRg8oybUuN4U7tK0z2MYHxP7zawYv3fLtYFZTDdTvy65saiX1VT0671QmXSE6ydHjTM0QVK
	IrXIA/i/eLrAyo4EcXbQH2rzqaitnv44sY/SRtE6PKig+BFDVOhAQvDHX9WyyPPgYwMeyKvd5cwuY
	xaRM5xxmGjb4SdpBcs/c7vho5bR6VK82G8cGlbJdaaqVm3w1dOosd3DoLmFnRfILFvadQ5gX4BZgo
	j7J0un88A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l29pS-00011c-3r; Wed, 20 Jan 2021 09:31:06 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l29p8-0000sc-BR
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 09:30:49 +0000
Received: by mail-wm1-x334.google.com with SMTP id c128so2190448wme.2
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Jan 2021 01:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bN1EA9Jtu/mSRFpfLqJ4hYJd1C2lXhS1XjJCl6CFg1g=;
 b=zFYfx91XPKACjv/flqRWziV33Y4m/EmmyZgP+idh0JI5dCaeislX7SISmaLy2s4VR7
 TIc1ogI7o6CjxnsWalSTE5E/3mDU/Dt9phL15/9AbLNEQW72xnXogiNhgutU8MmGoO93
 Jv4du5hB7Px9HKxcCnEB1RVI476qeKJqLJo8S6/DiBQJ72je2SmV2umD81hzKuyPpm7k
 LbS+mWh5mZyQUje328YOPnyARiClql6txorS+c+WVnuF4iSZJCSE7JIz3KQJRmL5wwsC
 hmSNKVZDLydPhFLGljT+Jfv+sefoEExI+oL65ad3J1xNjCFPK4zzlSzB7xU349ywBE/U
 7msQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bN1EA9Jtu/mSRFpfLqJ4hYJd1C2lXhS1XjJCl6CFg1g=;
 b=Ov9h876wbhluOieT7Gh4FxHG9OKk1B7nlP6XdyVr64y58rnTLh+vqGfVTIKpnD82Ea
 3Idi8dInijAmoENJCMDPk/2cm2mqPSey702JSoWQlTnjcPaxbjl3rIH2htU7s8rj+XJW
 /EGt9ORR+/T2DNrsaODceyppXpNIDhUr4OGQjrGc/gPcOMBQap9f1L0kEBLDmjt2vYUH
 ZHCn5hNHfnieek2bjCqtP0R75FP880n6cmTJzTjiTfrpBxZUlOmBFEr75SSlOrab/FI9
 U6JaecZtASRx2zAQegW+y/to0snmP/QH74Bcq+IH/9JtPCXD3Soy9a7ukqpugVP0j1XF
 8qqw==
X-Gm-Message-State: AOAM533u1nMEH1ubqH/cAw3glxgwpx3ZbT4n2dTID4Li2YPHA3418n7K
 ePq5Wz9JsjcqOzVwY7Q202QISw==
X-Google-Smtp-Source: ABdhPJy0QU7f/Vsm0leMTTjzvUhzClwhW+2h4hj2Ui406VthDvXgvODPTyr3pTl1F0dkQzpvKhwYUg==
X-Received: by 2002:a1c:9d8b:: with SMTP id g133mr3413636wme.44.1611135045419; 
 Wed, 20 Jan 2021 01:30:45 -0800 (PST)
Received: from dell.default ([91.110.221.158])
 by smtp.gmail.com with ESMTPSA id z130sm2889201wmb.33.2021.01.20.01.30.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 01:30:44 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 01/20] clk: rockchip: clk: Demote non-conformant kernel-doc
 headers
Date: Wed, 20 Jan 2021 09:30:21 +0000
Message-Id: <20210120093040.1719407-2-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210120093040.1719407-1-lee.jones@linaro.org>
References: <20210120093040.1719407-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_043046_412559_E75BC18F 
X-CRM114-Status: GOOD (  13.91  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Xing Zheng <zhengxing@rock-chips.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Thomas Abraham <thomas.ab@samsung.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fixes the following W=1 kernel build warning(s):

 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'name' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'parent_names' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'num_parents' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'base' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'muxdiv_offset' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'mux_shift' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'mux_width' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'mux_flags' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'div_offset' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'div_shift' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'div_width' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'div_flags' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'div_table' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'gate_offset' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'gate_shift' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'gate_flags' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'flags' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:45: warning: Function parameter or member 'lock' not described in 'rockchip_clk_register_branch'
 drivers/clk/rockchip/clk.c:180: warning: Function parameter or member 'hw' not described in 'rockchip_fractional_approximation'
 drivers/clk/rockchip/clk.c:180: warning: Function parameter or member 'rate' not described in 'rockchip_fractional_approximation'
 drivers/clk/rockchip/clk.c:180: warning: Function parameter or member 'parent_rate' not described in 'rockchip_fractional_approximation'
 drivers/clk/rockchip/clk.c:180: warning: Function parameter or member 'm' not described in 'rockchip_fractional_approximation'
 drivers/clk/rockchip/clk.c:180: warning: Function parameter or member 'n' not described in 'rockchip_fractional_approximation'

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Xing Zheng <zhengxing@rock-chips.com>
Cc: Thomas Abraham <thomas.ab@samsung.com>
Cc: linux-clk@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/clk/rockchip/clk.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 336481bc6cc72..049e5e0b64f62 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -24,7 +24,7 @@
 #include <linux/rational.h>
 #include "clk.h"
 
-/**
+/*
  * Register a clock branch.
  * Most clock branches have a form like
  *
@@ -170,7 +170,7 @@ static int rockchip_clk_frac_notifier_cb(struct notifier_block *nb,
 	return notifier_from_errno(ret);
 }
 
-/**
+/*
  * fractional divider must set that denominator is 20 times larger than
  * numerator to generate precise clock frequency.
  */
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
