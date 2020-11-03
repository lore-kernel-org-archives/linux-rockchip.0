Return-Path: <SRS0=SS7Y=EJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4948C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 15:30:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 40B9A223C7
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2020 15:30:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="20lI6KND";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O2KkbM84"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 40B9A223C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=daenSR3DtbriMG2WOrSXVtzqIvop4jEjD0L5A2vOVmY=; b=20lI6KND3HhTknpkp5q6Ch+v3
	8iqtnqRK5pZW365K2MvTovqBPqsLYiWd3BmKyIu2L1589fZ/unb+hoRlQrNpNiYiLlVcHT6+XEuEq
	qBhpZ3gGQCtdJfM7izmLo8keD5VKmIZvK/KzThuk4dNJbkQJP9UobOV8t51iu8pAed8B3pmRQYTvE
	CU6NELyTHlovEig7vLCzzuDNHCSMAnuvfQx7lR3dbf6C27HBJEQFq+YqB/Vx17Zhcb6CBOpZelPyn
	zS8J9DQ/nn3+BOg298r3WKfZcusQVmMrXDP53vU1ujb2XstDuE3CtloAEHPmCeO7W4xtVJSYBIlZo
	QkQL7zhyA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kZyGt-0002Pn-2O; Tue, 03 Nov 2020 15:30:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZyFJ-0001jf-TP
 for linux-rockchip@lists.infradead.org; Tue, 03 Nov 2020 15:29:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id w1so19038658wrm.4
 for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2020 07:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aFpE8TWyRb/8lJ+wQ6DztKwPdlVGvH7F9yr1Famwf80=;
 b=O2KkbM844GlxoBJeeA8IiEb+C8pbG1IF+APG9qRsXnBzbNzZrztStr7i7P3fDcjSl7
 ATxlms6R7tTkKNMTSbqFca74AYdlfCkww8nMZsBvKzJbLBA6WdopKV/7ZqjZPrjAIOLp
 dg/5PdOP84t6BVsweSC50HSZTBkgIyaMRe2Ug1KtcadpAkiOoARGbf9Hq+ysVTpPYNBg
 W0zc/siWTrUL4r46Rkso2k2roN/oD3oAPOq+8N6SY5yvb70pUJzhRhnMAURDPlRpdiaN
 1XVQs/FTUHrLWZ1KPIP8mCCRdFId2IaFq3YEySOU+y9IRTOHhfnKb5d38Dp07Rf+yJ+f
 QRpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aFpE8TWyRb/8lJ+wQ6DztKwPdlVGvH7F9yr1Famwf80=;
 b=HiuB9PX0vlhxNEaMA16RI8PMCO0TDoTfL8rjgYqL4e5cXQdE26jDiNfWZFnSQUySVQ
 yVw8qGZbrwbCILsZ+CDuExVZBEbjNY7W7MWMNpccQ+NEUQ0FBPqvOIAje30xhQVk5+zG
 fLYfnJmlfDlygY7fARDiTyCs40IaH/Xu/i0DAnKN3dYOiuAENfeEmZZcaSkc5WD0arsq
 F2WAshLjFM1UyTOiFLR9iSfr6cziFcvu3tRUtUE2xIGVLEXkr4xrHpnHpfJ9EVAeFmF4
 nmtoX/HqPYz2W2aPoeUeiXRcjfMDBiUmxPfqpQ5TBIjpzc36XLl7fb/fqV1tcC65xwil
 iNBQ==
X-Gm-Message-State: AOAM532KcCq90M5+/UTslZ5yqXLW4b0p4WldUsQe5nqVqwsS4Mje6gsc
 j5lnZQe6mXrt2CGe3eLL1yyRag==
X-Google-Smtp-Source: ABdhPJzj/L32Nzhr35Iq/JNk+9EtSLNL/wng8uuuXmJxAVqXtSjiv6Hl8+RbW4GErg3nuxcOBHtUYg==
X-Received: by 2002:a5d:5106:: with SMTP id s6mr26077213wrt.51.1604417356740; 
 Tue, 03 Nov 2020 07:29:16 -0800 (PST)
Received: from dell.default ([91.110.221.242])
 by smtp.gmail.com with ESMTPSA id j127sm3491779wma.31.2020.11.03.07.29.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Nov 2020 07:29:16 -0800 (PST)
From: Lee Jones <lee.jones@linaro.org>
To: lee.jones@linaro.org
Subject: [PATCH 05/25] soc: rockchip: io-domain: Remove incorrect and
 incomplete comment header
Date: Tue,  3 Nov 2020 15:28:18 +0000
Message-Id: <20201103152838.1290217-6-lee.jones@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201103152838.1290217-1-lee.jones@linaro.org>
References: <20201103152838.1290217-1-lee.jones@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201103_102918_218933_3EDA1063 
X-CRM114-Status: GOOD (  11.14  )
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
Cc: Doug Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fixes the following W=1 kernel build warning(s):

 drivers/soc/rockchip/io-domain.c:57: warning: Cannot understand  * @supplies: voltage settings matching the register bits.

Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
Cc: Doug Anderson <dianders@chromium.org>
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/soc/rockchip/io-domain.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index eece97f97ef8f..d13d2d497720b 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -53,9 +53,6 @@
 
 struct rockchip_iodomain;
 
-/**
- * @supplies: voltage settings matching the register bits.
- */
 struct rockchip_iodomain_soc_data {
 	int grf_offset;
 	const char *supply_names[MAX_SUPPLIES];
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
