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
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0135C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:31:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7088A610CB
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:31:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7088A610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vpdIe7rlsYJ0AwivpyLKTyvTyCs0gu8tNou2zgs2MFA=; b=oU2KO2F5IEHlheLzFHeeyIa5d
	mqFrfyH+NuQ9FGrfD2CiNOumUag6UxPEmSsNxa3o8SeDiiFi5hZzfCHdOmv3ZrPyTecYZpiZLfX8p
	Sb/XaN5/+loKJUIWHG09Vb68jkhu5zUL1Vlx1nMAB2Fkwku8ga3pCz6Y+8xWyLFP3sbAv59bGQjbd
	TKy2wLknrrHxaiHmDesje57sUlXSR8Tavegsz12yo0I9YVQQsHgti3NXkVbxxcRqQbVSe8aZI+JrM
	whjo2j8ASZKMbLfXFhZ1gftLlCmc8nbutIoEAp4V9p6I9xEnQZykrFVvrT9tTq17MMO9mFKaCp4PQ
	lssx5AkSg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVaB8-004WL1-HT; Sun, 11 Apr 2021 13:31:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVaB2-004WJD-3b
 for linux-rockchip@desiato.infradead.org; Sun, 11 Apr 2021 13:31:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=2U0kajZpoqLNqZ697nPvtOzA3b5aXYBuZDP9zXOptDw=; b=aSpc/zHcU9cDL8kssBrIUAxUXJ
 HN6UGAhPdMAZ2Xo09MmGMyqKISHI9Zi2519vsuPFawuuNTkNd8PnWDkH+2sMOBiTQNSn7khsDGV/0
 YekV8LNrlPQx0eO4iH1YloXkYH6WHqpz68lCaGuQueI1l/P5YGnKpvKnIuqJBSgis2WuMedET13xa
 m2QXiLAFWIL1tnaBNoPzl+oLxLKAivhZIXb2Gcn7gdFIhsES3kezhCSSX9H4pvGsR7LcA8DO4g/lB
 h3U/YLYxnVXOoABxQ6XhBLEOFkMDWx584GHAz5i1X+YYDy7+6s2QOVYCXJjKUCG8eAbu0hY6g4TWL
 ydk89gpA==;
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVaAz-005Wqg-FH
 for linux-rockchip@lists.infradead.org; Sun, 11 Apr 2021 13:30:58 +0000
Received: by mail-qk1-x729.google.com with SMTP id c4so10663883qkg.3
 for <linux-rockchip@lists.infradead.org>; Sun, 11 Apr 2021 06:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2U0kajZpoqLNqZ697nPvtOzA3b5aXYBuZDP9zXOptDw=;
 b=XrmlGe0RKfI6M+SGxspAXBfF+pUNxf0Jb1Hbtly2Bxs1u3Zivnl+D+d/JcJb0Uv6DA
 nPWj/YzFxnKvSC6b5k274Khnr+jsw4FnwUUVl7TYfnxSkKsOpWT8bX4FBOUsTO1WaXXr
 E9m/EHRxARiBHLpqSHc045e9XYFJm84LF9hssqEL7wbY4maDQhp9INOtIqq6XAfU3+Oz
 aLpDhoWuTXUMJBeK56Xu1KRTdObhoOLujs6YZ8SolNyXXW//ELIWX1IdQU9x44HAiJJx
 a/wOoNfAdLM/CZoWLsejKWMdwhWKMa9LUGwvebRU5HWS4xqZOFrmmwWf2KJaDuxYfNf3
 O8iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2U0kajZpoqLNqZ697nPvtOzA3b5aXYBuZDP9zXOptDw=;
 b=XN0NMt4fN42E2useTgKKMAwj1lUL1p5N4iCO2XCC7gOtow3cm6l0qMhUxzQd96yK6E
 VDDhOFp1pXKqY8DClzln35TV0L7TWv+CyNqEFUO8uwSPY2eERRuQu6GGrUaJpp4cVvZ6
 ughLZ2oM7XwWjPgjGzrNmJt4X6XeY8V1QGeSVIjXWBNQlFdpjWxxugEflDqBgjQcU2H/
 X9DtuF1Y3CWPVrneyQL1Hnus4eW+a+O2WqWcsEnj+154KrGH4x0kLh/Dcbg7HhcW1Rhr
 PbudHFPRSHHyssjQPH0DSbUTvinkqus5xheXqK6VDrMPQoVSogOQhnyou4glBILmfe2+
 /fFw==
X-Gm-Message-State: AOAM533X4SDOHZB3GmAS35BNymFWZ8FWmGbO0bcKdeW4u+t76yWCJFff
 VFtQ7NIi82Vxrzx0bez89fI=
X-Google-Smtp-Source: ABdhPJx//vnD6C8CvtE8OrOMgGW3YUcdTG7jUI6nVveo24RsNJ7VvNZy4mWgjGmCsWXldhgrRrSXgw==
X-Received: by 2002:a05:620a:13c3:: with SMTP id
 g3mr10501092qkl.377.1618147853794; 
 Sun, 11 Apr 2021 06:30:53 -0700 (PDT)
Received: from master-laptop.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id l17sm5734204qtk.60.2021.04.11.06.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Apr 2021 06:30:53 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Jianqun Xu <jay.xu@rock-chips.com>, huangtao@rock-chips.com,
 kever.yang@rock-chips.com, linus.walleij@linaro.org, heiko@sntech.de
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/7] gpio/rockchip: drop irq_gc_lock/irq_gc_unlock for irq
 set type
Date: Sun, 11 Apr 2021 09:30:30 -0400
Message-Id: <20210411133030.1663936-8-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210411133030.1663936-1-pgwipeout@gmail.com>
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_063057_533331_E69B696C 
X-CRM114-Status: UNSURE (   9.16  )
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

From: Jianqun Xu <jay.xu@rock-chips.com>

There has spin lock for irq set type already, so drop irq_gc_lock and
irq_gc_unlock.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 048e7eecddba..c9c55614bbef 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -406,7 +406,6 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 		irq_set_handler_locked(d, handle_level_irq);
 
 	raw_spin_lock_irqsave(&bank->slock, flags);
-	irq_gc_lock(gc);
 
 	level = rockchip_gpio_readl(bank, bank->gpio_regs->int_type);
 	polarity = rockchip_gpio_readl(bank, bank->gpio_regs->int_polarity);
@@ -461,7 +460,6 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 	rockchip_gpio_writel(bank, level, bank->gpio_regs->int_type);
 	rockchip_gpio_writel(bank, polarity, bank->gpio_regs->int_polarity);
 out:
-	irq_gc_unlock(gc);
 	raw_spin_unlock_irqrestore(&bank->slock, flags);
 
 	return ret;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
