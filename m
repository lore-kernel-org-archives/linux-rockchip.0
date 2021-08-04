Return-Path: <SRS0=hTL8=M3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57179C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 14:33:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A79B60F58
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Aug 2021 14:33:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2A79B60F58
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dDQ26okilbeyhNS/hh95gCx+UCQhfazitCqtRsJ7tVo=; b=GnYsuMK6zqEZQf
	L0n5SPMmHODds7kAbm7SlS9tnj3PGJbIX9MZQ3byhv5Xk9UQdr7ofDm8XwUa6L8n8kxv/tZYRCUUM
	P3hlKB6P/l5RMebaNgMfUP5t3FrD7chE5sPph2vS2tpsXwXKxjv0uLkZXf5TwRaduuKosI9AoZh9O
	Ao0fcpiYfEA83JFkfhntz6GldEClqo1Jx6X7y7PfQ1KnE8MK/tX527ed2V7PQjoMZudIYsf74bMNj
	Nnupx9obcwHGzztg/97boVLy7PzB4pYm4PRgiOad8JJXMh6EK3bcUQQVi74BcxjVEdOQJ5Fl2rHsM
	pqjojq79dArCEKTQMY3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBHxF-006RvD-IO; Wed, 04 Aug 2021 14:33:09 +0000
Received: from mail-yb1-xb33.google.com ([2607:f8b0:4864:20::b33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBHxC-006Rt0-WF
 for linux-rockchip@lists.infradead.org; Wed, 04 Aug 2021 14:33:08 +0000
Received: by mail-yb1-xb33.google.com with SMTP id w17so4204926ybl.11
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Aug 2021 07:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=SqFXGAq4e3ua/Ts6/H9tHLCw4CGuQ4DInivgNoJfgjA=;
 b=ZCvp2wmpsfXcE8l5VO+teKlSfFiqZ5lnsE5oDsq/9W+BtJMZoxAhszV9mYOK7RXq2P
 yR/nxUAZiKIhFkuxe5KswpcAm+xlHN9gSxDJYaU7XwL37OLi+j4cYcnBwePyEk/TH45H
 cmLLcQaY1JWK6UspNpOYHLMsvAndroo9VgBXL+NjOdNtR7P3ru5zwl8D1p6gFb0vNd3D
 iBfVG+QPR3/ZE5LGQAou50tWCQIO/EsglLYK6vwKXIepB2F8KufSK0AtDQ4T0xHHzkJX
 sKHc3xg/0vJcu16WTbADdN2a8VtiMedeIMiHkuaEQ8US8MRmTw1Us2GlEH8h0cXDC0N7
 r5AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=SqFXGAq4e3ua/Ts6/H9tHLCw4CGuQ4DInivgNoJfgjA=;
 b=U1PWtfk8u5sgB1pQknXSDLbBc6gGH2g19hY6SSA//4Z5JTTV6/Zinzs6/3YN0OsIoj
 bhVDM7bjNI8s8iT510525lXXRyZAAZ2asAsVNgTyDWQHUPfDPGAe26LBFZVPwW2C6DMs
 8f5g4WRiG2YGMUM/QhLow/VqUqmg83SpheDAcHEwWBO2bPZR5ObabwEbXNti4C3cvQNB
 QM/mOjTygo09Re89n5FuBAzC400xBJMz2o9zMIcacuLYGDOBv+1pCMiKnMD8ZRV6SMiq
 SREk+INaUc9hjccw2auvEq7M6d9ywS3HkVMqYmN9vdnwcVOST9uwOCkzDS1760Glpjz4
 dd6A==
X-Gm-Message-State: AOAM530aAcTr8U5ZASxk2QFu3u11wUd2lF+Hw4Mqf/LKzSP7rLCU5bzn
 birBHDLG0/uPoCXuOyZ8FxlLYxmGa57+MX/zNLs=
X-Google-Smtp-Source: ABdhPJwBPu3e1omSX1k+jFsXU9pGTMPB32qAD4Qpv6GErPVzktqEePPxLBwAWI/tyrxrGp/Ce8WXAvxUqi2bN7jkUGU=
X-Received: by 2002:a25:2cf:: with SMTP id 198mr36391086ybc.259.1628087584033; 
 Wed, 04 Aug 2021 07:33:04 -0700 (PDT)
MIME-Version: 1.0
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 4 Aug 2021 10:32:52 -0400
Message-ID: <CAMdYzYrx8pgeyK7u=kcopZ+Wae+fQdr_uM4AuVjqWKfZYikgcA@mail.gmail.com>
Subject: [BUG] mmc_regulator_set_ocr can't cope with regulator-fixed
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>
Cc: linux-mmc@vger.kernel.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_073307_060872_59F23150 
X-CRM114-Status: GOOD (  13.03  )
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

I've encountered a fun issue with the dw-mmc driver while working on
enabling support for the Quartz-64 Model A.
The regulator-fixed driver supports enabling via a gpio, but does not
have the ops to set voltage as it is fixed.
The dw-mmc calls mmc_regulator_set_ocr for vmmc, which attempts to set
the voltage first but fails due to the lack of the voltage ops. It
then bails returning -EINVAL.
This leads to the following message :
dwmmc_rockchip fe2b0000.mmc: could not set regulator OCR (-22)

This can be fixed by switching to regulator-gpio for the vmmc supply
to the sdmmc controller, however the sdio controller vmmc is provided
by a fixed regulator that is always on. Obviously the regulator-gpio
isn't an option, as it has no gpio to enable.

Removing the vmmc phandle from the sdio node is an option, but then it
doesn't fully describe the hardware (it's also a non-standard 4.4v).
I had considered changing the check in dw-mmc.c [1] to continue in the
case of -EINVAL, but there are other places in the regulator framework
that can also return that and it doesn't address the underlying issue.

As such I'm reaching out to the experts to see what the best course of
action is here.
Please weigh in with what you think.

Very Respectfully,
Peter Geis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
