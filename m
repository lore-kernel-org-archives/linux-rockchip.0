Return-Path: <SRS0=zXd4=NQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D5C2C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 03:37:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B2BD06128A
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 03:37:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B2BD06128A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPJI/5UyTnwljAzLWSb3uGgw7fqBelCZ/ImTQ5rgeog=; b=Hc7hMO+H/fS52/
	OKPvHjsGrOfesabzYjHf0yI1DLgYsnb+seyn/bbPNU5yTTMMxOXOZwQhr6ho1A62aCGvGay+dYOd7
	/iArKQjLQUtCRYFy4gaZ7FqoP+dpcAdV3ayZs/KVob7RmpKDQFIuOgVm7Rmou7FoET4twScBfecBd
	JWWtiBFUVav4QAVEKfaBXKluZx58kNJXqIGkBt6kGjvbpG9rUnqcf36mDmrcvSiz9kClXxabwbCnK
	b7RcrvEk/evCHKXKtk0vU/sBxDDMqHsEw30fWFEPZ0OYd12v2jEtirjz9PVPxc+Pl5y2KlnhVAUXJ
	7rQrmA/RdfpU/ksjFnKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIjjQ-005MhA-NG; Wed, 25 Aug 2021 03:37:40 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIjjA-005Mdq-D6
 for linux-rockchip@lists.infradead.org; Wed, 25 Aug 2021 03:37:32 +0000
Received: by mail-pf1-x42e.google.com with SMTP id y11so20115895pfl.13
 for <linux-rockchip@lists.infradead.org>; Tue, 24 Aug 2021 20:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FQQEbVeVDT1YhEtDZWiPfSh9kXzQOU1nYSUeUxcQq+4=;
 b=PH1DNs9H1KsQ3Cg6OzNgT+fYFdlzjQeAFpdasNaEflS4E+oqB40xQSi87WX2LyJVzh
 ts1ixMeOmUEU2zwPVS7OIe/87CXbzSpQ2vqaD9ZG9SyRj9ZO1SoPpyV/jXC6qRlA/tRw
 w6UYu8MAafAEnbH17XKCqIpgYCqnv0k2JsUmU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FQQEbVeVDT1YhEtDZWiPfSh9kXzQOU1nYSUeUxcQq+4=;
 b=CqnO4yTOVUlTycxd1QviY8CPR5CJ2yW1cu9ucmvAtQbUrLgb1heek9HzCdx5eTlmZd
 mUA55QXS82BUbq0Up1YTmBfSqNotqCcedWeXlvGWT0uPOpF4443/GQQimpyEvePymVXq
 ryMgYGKXeZ3Ayht6yWSTCT7eEUN/vcRJp5xBh/5D0Swrx/BX+Xf8dQXRwWUf8qj0u5Ox
 NnAwTt5/gZX0z7znWFzyKSX8ilqUVKxmbMkxYpxcm4CJptjrk62PPS0zeiPP597JOEgM
 O8knL0Tz7jwlMjWGZP9NKRXwq/Ef4jZV2jx60gVc5oM6SSwaovq3ZKUgnqnFGq+YSpdj
 ERGQ==
X-Gm-Message-State: AOAM533zskrlJTFfTVbrq7xPYWu9EOgdm/sQREl3jL+vZAJfmkEpeEGj
 Zsryu/COUxvaaATdjP0lKLTJvQ==
X-Google-Smtp-Source: ABdhPJzBEIHR00TxsQDE8F/MS1LdIOVDWP+Q0gVkn8Sa5XgEZ+HdYSirC75ts5J3UjFkwT1laKhfLw==
X-Received: by 2002:a63:155d:: with SMTP id 29mr27256678pgv.118.1629862643687; 
 Tue, 24 Aug 2021 20:37:23 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com
 ([2401:fa00:1:10:629f:4b05:2c88:776d])
 by smtp.gmail.com with ESMTPSA id l10sm3902149pgn.22.2021.08.24.20.37.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 20:37:23 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Brian Norris <briannorris@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] regulator: vctrl: Use locked regulator_get_voltage in
 probe path
Date: Wed, 25 Aug 2021 11:37:03 +0800
Message-Id: <20210825033704.3307263-2-wenst@chromium.org>
X-Mailer: git-send-email 2.33.0.rc2.250.ged5fa647cd-goog
In-Reply-To: <20210825033704.3307263-1-wenst@chromium.org>
References: <20210825033704.3307263-1-wenst@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_203724_506007_A2C1E2B7 
X-CRM114-Status: GOOD (  13.85  )
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

In commit e9153311491d ("regulator: vctrl-regulator: Avoid deadlock getting
and setting the voltage"), all calls to get/set the voltage of the
control regulator were switched to unlocked versions to avoid deadlocks.
However, the call in the probe path is done without regulator locks
held. In this case the locked version should be used.

Switch back to the locked regulator_get_voltage() in the probe path to
avoid any mishaps.

Fixes: e9153311491d ("regulator: vctrl-regulator: Avoid deadlock getting and setting the voltage")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 drivers/regulator/vctrl-regulator.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/vctrl-regulator.c b/drivers/regulator/vctrl-regulator.c
index cbadb1c99679..93d33201ffe0 100644
--- a/drivers/regulator/vctrl-regulator.c
+++ b/drivers/regulator/vctrl-regulator.c
@@ -490,7 +490,8 @@ static int vctrl_probe(struct platform_device *pdev)
 		if (ret)
 			return ret;
 
-		ctrl_uV = regulator_get_voltage_rdev(vctrl->ctrl_reg->rdev);
+		/* Use locked consumer API when not in regulator framework */
+		ctrl_uV = regulator_get_voltage(vctrl->ctrl_reg);
 		if (ctrl_uV < 0) {
 			dev_err(&pdev->dev, "failed to get control voltage\n");
 			return ctrl_uV;
-- 
2.33.0.rc2.250.ged5fa647cd-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
