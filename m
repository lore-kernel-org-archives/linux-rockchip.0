Return-Path: <SRS0=faov=GK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955A7C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 23:59:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4FA2F235FD
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 23:59:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4FA2F235FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ckFD9UkMBJFBY/AXBwiHLqIe7kkHGd3kfqakjzC5+PM=; b=Ms8kHMOu8SbWzwl0WAP+1sU1vW
	bge4h6MkWvQynXeJloqf1RCPaYm8gg4udUzWMAHmMlMHmFD5jxAFuUJPa+yexEQJ1UPD6B2j62VyM
	OFI4/nOxZlQNMlCOdjdrib/W8hgrn4tgoRYuyvDo/uWII0RG0lYOdNnhZgfz1A6/5E4+lvXPyaNnC
	xWvRUqKvX+famBzGMiduEVhImriZl5GAJYKnFG0O5QWDUzebRd89177phbduWiVS6WRQHpeT1M7hf
	MycFJG8Mowo4z67axog51VhAnuHgKVVJ4IO121oXJV0g/yOh5WtOCFStBxD6VVMBSkolhhb7oHebL
	i3tpPdoQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxfBZ-00022z-Hx; Thu, 07 Jan 2021 23:59:21 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxfBW-000222-BV; Thu, 07 Jan 2021 23:59:19 +0000
Received: by mail-pl1-x62f.google.com with SMTP id s15so4710095plr.9;
 Thu, 07 Jan 2021 15:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=1zT4HWOZj8+DNGvXT+tQbujMnSkK9ZiyjWReVuMf2E8=;
 b=eDHF8SwHkQ93Gv+k2sh6Li/bNUnwyQVO+OLN8WfEw0lgaafcE78E16ZyJJYqxRIJNc
 VXyPGjl3TzteoFFqsToaR1ZJnsvjxyJ/Le/OaQ01ea0FekLNj8ZiEvbUwoYF4e4buHUz
 9F1bYF+4RmiuTnjsSAkPeES1PLZ5aQr8hi/ciuFezL48tq2JISgX1ftAtZ9Qyc4zqqxm
 /PU12vtOV1SsfybUCNWgoe387JnpV5hWWn4dhQoncSOGrhr2pnFOWVuPbCKgCLPwIUS9
 EAS2Gn95SJtBm0MRDomS7yzpbZ5zbvTkTQANS53jSS2zbn4f0s/OrsfGTQ7YPQ3DrIZF
 jonA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1zT4HWOZj8+DNGvXT+tQbujMnSkK9ZiyjWReVuMf2E8=;
 b=ZG3W0tNZ3iYdDZKRTD2yadxNlUOabSH8qk0l8b16igKBFXgo5iepOaEvFTsw/Q4Rr3
 vpK7Lk7Azu7iOuAsJCApX4Mi6Rx8rMIK6RvBmA6apLeB9QLzIOmqD1OoJmkfDv6MFAMz
 stJ1jETNtSD8dfbSCB0S/lGsoHmEgqiEpj2aUdauK6c3qgjGPT71/W8giErM96w5KDbX
 dB3D2SCxlExpAgtWOHqbHk6zyBC2KtotJaviQA4VvhQ6zD3yMrTMtKWokyR5GiQoCp+5
 9q/cqtXQFjUq646bvBnIZb1GBbr5MnwEgmauDqMDfsRFfFeWkCpOPTflM/xQktqWxIP3
 8Dbw==
X-Gm-Message-State: AOAM533pZFE6Zd/lE8lHZHB8ivfi7l2boENlXX6fwUU+uj8DCrLPRFy7
 AIHMJ0+h+4nOSZXmMxZe4S+pIQLr2x4CvA==
X-Google-Smtp-Source: ABdhPJxMZjfgFn+blSTgxtMCQPjl7EHjF4IiZVYspJNDnRqtGydpf+fVNJLW3TGRpNthvi5Tye72Pg==
X-Received: by 2002:a17:90a:a012:: with SMTP id
 q18mr842727pjp.223.1610063956619; 
 Thu, 07 Jan 2021 15:59:16 -0800 (PST)
Received: from x2.lan ([2400:4070:175b:7500::7a7])
 by smtp.gmail.com with ESMTPSA id bf3sm6448195pjb.45.2021.01.07.15.59.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 15:59:15 -0800 (PST)
From: Vincent Pelletier <plr.vincent@gmail.com>
To: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, linux-rpi-kernel@lists.infradead.org
Subject: [1/3] spi: bcm2835: Call the dedicated transfer completion function.
Date: Thu,  7 Jan 2021 23:58:30 +0000
Message-Id: <633c3d5c350dde4d14ce2120c32698c25b95d302.1610062884.git.plr.vincent@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210107235832.839221-1-plr.vincent@gmail.com>
References: <20210107235832.839221-1-plr.vincent@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_185918_417649_5C0F0FA0 
X-CRM114-Status: UNSURE (   9.74  )
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

spi_finalize_current_transfer currently only calls "complete", so no
functional change is expected.

Signed-off-by: Vincent Pelletier <plr.vincent@gmail.com>
---
 drivers/spi/spi-bcm2835.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 197485f2c2b2..dbadbc4638e9 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -386,7 +386,7 @@ static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
 		/* Transfer complete - reset SPI HW */
 		bcm2835_spi_reset_hw(bs);
 		/* wake up the framework */
-		complete(&bs->ctlr->xfer_completion);
+		spi_finalize_current_transfer(bs->ctlr);
 	}
 
 	return IRQ_HANDLED;
@@ -608,7 +608,7 @@ static void bcm2835_spi_dma_rx_done(void *data)
 	bcm2835_spi_reset_hw(bs);
 
 	/* and mark as completed */;
-	complete(&ctlr->xfer_completion);
+	spi_finalize_current_transfer(ctlr);
 }
 
 /**
@@ -640,7 +640,7 @@ static void bcm2835_spi_dma_tx_done(void *data)
 
 	bcm2835_spi_undo_prologue(bs);
 	bcm2835_spi_reset_hw(bs);
-	complete(&ctlr->xfer_completion);
+	spi_finalize_current_transfer(ctlr);
 }
 
 /**
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
