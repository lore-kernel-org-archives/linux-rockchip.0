Return-Path: <SRS0=q9XV=GX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEEA5C433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 09:31:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 86A9322D08
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 Jan 2021 09:31:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 86A9322D08
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jS9QB9r2w4dphCgp02RElPDfPNp+fTwguxhNUEbTzz4=; b=C7rYbAFRB554IYlEePNwkSFsS
	IhZpycem4/7IPCGhnw4YJTiMCmIchPVQzl3YYEf1BHNhRyZgrXTL397AIbjBMXx2cDXyn4b4kGeXD
	33M0bn5Y4Rokq37MfRh6puNSetUbju2Z6QTEujievn7tHm/FOJf/GJ5iODaJKH2dpUsOvwoQIf+GU
	R3sp5dogbAaYsxCFnNF/+p+QQP/qk1HHWcflXRrPwUxRvdiAAFE3x3JGJcCBotzNRRAy/Vb3ZC5b9
	mJwQKroKlDk3tiAWw9YoPDhHVuPvrgnfDt1THhNTtVuea4H2vd3dOHkxYitbcOfTdyD+A9kYykCvm
	yOyte2ULg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l29pR-00011D-AD; Wed, 20 Jan 2021 09:31:05 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l29p9-0000tb-Fu
 for linux-rockchip@lists.infradead.org; Wed, 20 Jan 2021 09:30:49 +0000
Received: by mail-wm1-x32c.google.com with SMTP id o10so2920319wmc.1
 for <linux-rockchip@lists.infradead.org>; Wed, 20 Jan 2021 01:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PqNANroWmMHlO1pRmhfJauWaSkV5jIwl7ipaqnMtcdc=;
 b=r0xJj3iB0NP1VzuG0B7s27YaKBg2dVt5KTN1XK54fbdJh0jq3G54zNMhnwwnyHT/PE
 tdsDlrHxHhQyOfxYkld8cwEZY9gbcAuJ87kUf6Fi2u7nqvFZ/lY+tMnvnavmzSybTP5a
 THX6J+XYLf/EDt62ObOWuQzrnu5L68ef/NL8d+2In/tmQaq98NILRUzgTy91mue5ljku
 QEb6rPIVAGiYwD2p1k1gqAcR5ZEDUcdpTTpOqoAonBKL2XcyYjHkuciDAt/4/4s/w788
 aYnWkFiI9ezQgbL8qWVj77H+i4lyNQEbtuF1/HgDSyM9gLCNRWieZJ6f889c5RAWifpI
 1e3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PqNANroWmMHlO1pRmhfJauWaSkV5jIwl7ipaqnMtcdc=;
 b=oNMbMkaB42Jef7Whx89WQGW0Y0skZf175E8NtwT2x6z+v0AcmHiESkRHHj1ENKVny9
 so7VXgybgkIoOis6NkkzbhWS3XQHmCHejD8F/PiUAoNJZBbWUuKQw2CdmMUqGqgzvRwe
 L3Z8Ly2nxVGRXCIuVkexhg+c+mnDgRNJjeX2H7bLOKx3fe2Ek2ckX+KLVl56PAWTctmJ
 ciNOpX5X9QYCRqOtqVQZmzyH1CFWKAbuayWNVg/cmKrhDIPrArPyJva2IuR9VyiBJJ/w
 Mt/Fn8tnqKGYwfkn6tbLiFRSMN8CVNX7bfgkjp313OPTKyDCxPsv2PLUln3xY3rX6W5L
 nDuw==
X-Gm-Message-State: AOAM531+7EyYRO82Hv1rw+hZgvvXk+KZFp7n9tLFHjN6CyRfpyWaCYb+
 D1WFVOx4IkJ+0JJ+pQ7G4fV6EQ==
X-Google-Smtp-Source: ABdhPJwsXAxMF8Ve1yt/YsnaYPprvYXsGFiL+2XiIwlYnp0wwtvGw07v4C3WFGTMZ5NOkVV9nw9TSw==
X-Received: by 2002:a1c:9c84:: with SMTP id f126mr3505815wme.152.1611135046604; 
 Wed, 20 Jan 2021 01:30:46 -0800 (PST)
Received: from dell.default ([91.110.221.158])
 by smtp.gmail.com with ESMTPSA id z130sm2889201wmb.33.2021.01.20.01.30.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Jan 2021 01:30:46 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 02/20] clk: rockchip: clk-cpu: Remove unused/undocumented
 struct members
Date: Wed, 20 Jan 2021 09:30:22 +0000
Message-Id: <20210120093040.1719407-3-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210120093040.1719407-1-lee.jones@linaro.org>
References: <20210120093040.1719407-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210120_043047_616195_360F2465 
X-CRM114-Status: GOOD (  10.75  )
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
 linux-rockchip@lists.infradead.org, Thomas Abraham <thomas.ab@samsung.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fixes the following W=1 kernel build warning(s):

 drivers/clk/rockchip/clk-cpu.c:65: warning: Function parameter or member 'cpu_mux' not described in 'rockchip_cpuclk'
 drivers/clk/rockchip/clk-cpu.c:65: warning: Function parameter or member 'cpu_mux_ops' not described in 'rockchip_cpuclk'

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Thomas Abraham <thomas.ab@samsung.com>
Cc: linux-clk@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/clk/rockchip/clk-cpu.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-cpu.c b/drivers/clk/rockchip/clk-cpu.c
index 0dc478a19451b..fa9027fb1920a 100644
--- a/drivers/clk/rockchip/clk-cpu.c
+++ b/drivers/clk/rockchip/clk-cpu.c
@@ -51,10 +51,6 @@
  */
 struct rockchip_cpuclk {
 	struct clk_hw				hw;
-
-	struct clk_mux				cpu_mux;
-	const struct clk_ops			*cpu_mux_ops;
-
 	struct clk				*alt_parent;
 	void __iomem				*reg_base;
 	struct notifier_block			clk_nb;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
