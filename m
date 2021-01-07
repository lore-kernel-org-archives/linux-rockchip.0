Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CF5C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 23:59:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E46C0235FD
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 23:59:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E46C0235FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oxlhnHoMAPaeFN0pKkMpF2mYGNpVNhW8zBJeeX4lwgw=; b=XX4YKbmFfRneXu+GLrBmGJtvVe
	toVQcdUmdV59e94PHw7Xz8XtVG9HXXqMTmj3oIBj3b2AEYjDkcRBMy8qifTTDKbSGxrR6iyjfcsP8
	2bekG1OpVE+rgHkv6XgzafLG2562I76c3qbgqTTFpT93Zuy/BD7Ugo5+u43mehE3vJACPMbQ9RgHS
	qA30dzUNRPt9RLS9omsMqwF1JKidK540fBsqVUHZ0UXrvFd0ptQhOx4t2cB6EljG2CeuKlYGiEKV5
	r6NNUWoHpebKBEj27eJ4FA2e9u60YV8F7x/uOJwAIiKtRdXHlshuKpnXad8OqlDCrNenXl0LzG5fc
	9r40lu8w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxfBY-00022k-EC; Thu, 07 Jan 2021 23:59:20 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxfBV-00021r-Bi; Thu, 07 Jan 2021 23:59:18 +0000
Received: by mail-pj1-x1033.google.com with SMTP id l23so5152884pjg.1;
 Thu, 07 Jan 2021 15:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i+8d2HurmLuY/fjmxjePAkINENkGN3Pzqi7ebx49cCY=;
 b=CKsRpny0W3qEoMZ3k5PEtqHfo8t69e1shu/9KLTONKOxB/S/AgzMlChZplWwWdFx/x
 4XdDlPAGvA5eLw2CjTIqGZEJDNSErKRUnRVtcjTGM+8YLdCuMep5qLMgHWeR4+BNow/6
 3sdWYk5liQfpx+H/9fJAIAt459EJUqN8pfNKq0ZbESYrY01ELl40pMNAhs2b8hqS7CgS
 EkxIMoUq3ZeNlpnleTfWo0i2U+Fp2+f/bylMYjHlTvbSZA/BuzllghsZmnG2l3uiL067
 Ma/DoY+eXp0mjwJjJxQWvLM9oD/TPRdbWJrgtKPcCbw4APKHAsb+9/IKdzUFxuTGNMbh
 8Sww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=i+8d2HurmLuY/fjmxjePAkINENkGN3Pzqi7ebx49cCY=;
 b=tJxG3ZKtGdALpUUV59vHnItuyjCdi813g/nfCxouUtCngyFtLk2d0QXhGuAujHpj2Z
 TUybwFUQENGfbA1Exo25ud2UmKo2dT4VN6k+NRuR1RMJFwKsbOI+vRpNavCXvNEBIM3/
 xE9HcgQaWftaPQI/YHFG0qLiFcNafvHBDRmQ0U8mAg4VatGIfCFA45WcmpOIg8XpXEeh
 yW72/SYmoKUMZVFycYX7yUJdLfPTufwueQHcBkM83jik7z4XRgxuX7WVsuOLFmBsiGYz
 c7O4UvDCk5uR6Y1g/4qxWDEh/woRod1+y7nZwPNUnFo/SXXZmswEMdAK8w5LN5nzlU1A
 5Mgw==
X-Gm-Message-State: AOAM533tz5jO6LyEp4j6VRbwbYyaMK+rdqdGYOy/f4LfIJGZUx1WXN3U
 ZEJ+88I7tMp7NXO4t1XXBi4=
X-Google-Smtp-Source: ABdhPJzetQAFGdnSIb5NP1F1agOCW+TZUH0FGEVsGuGgipmIrUBL7jVjaqb1BMvkq2J5gt/jKOgH4Q==
X-Received: by 2002:a17:90a:ea02:: with SMTP id w2mr872195pjy.99.1610063953408; 
 Thu, 07 Jan 2021 15:59:13 -0800 (PST)
Received: from x2.lan ([2400:4070:175b:7500::7a7])
 by smtp.gmail.com with ESMTPSA id bf3sm6448195pjb.45.2021.01.07.15.59.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 15:59:12 -0800 (PST)
From: Vincent Pelletier <plr.vincent@gmail.com>
To: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, linux-rpi-kernel@lists.infradead.org
Subject: spi: *: Call the dedicated transfer completion function.
Date: Thu,  7 Jan 2021 23:58:29 +0000
Message-Id: <20210107235832.839221-1-plr.vincent@gmail.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_185917_416317_FBD275F3 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello,

I started this fix on bcm2835.c and, because of its simplicity, thought
I should check other controllers as well.
This patch set should fix all occurrences, as of v5.11-rc2, of an SPI
controller driver calling
  complete(&...->xfer_completion);
when it could call
  spi_finalize_current_transfer(...);
as requested in Documentation/spi/spi-summary.rst .

While I did build all modified files, and these should be trivial to
check for correctness, I have not exercised all codepaths.
I have exercised spi-bcm2835 IRQ and DMA tx, but I am still hunting
for another issue which causes completion timeouts at spi/spi.c level
which seem to affect spi-bcm2835 dma transfers (both before and after
this patch set).

Regards,
Vincent Pelletier



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
