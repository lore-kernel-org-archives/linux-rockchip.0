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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93326C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 23:59:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5287C235FD
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jan 2021 23:59:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5287C235FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VENtxYlf/oYGlvIvOxcE902Fm28Qg0FF+8iYwt5SBcM=; b=vronkugFH1TaVDCUs3/Z1L24Q1
	a95PTeYFdRLFf4dHb6q7uZj0Qr/8+wLeEyT0aEW7MtmW5LslYgq+ZYzNDihOQQRxYDYZm/q5CYAIW
	DKhD2CoROEeQZle5egTVgfqDNv7Vm60Z/6aqWGUbw8qGQsyckHqJpLRGM3bRvx1pW9ohio8cyC2f5
	cVWKQ2LEAZP33mB45VdQz7nKQS7cvOC6CSvnxeOmy64U23ScIpd5DBockYE8qrrPDCeV+h1Xl9QkB
	uja1zwM0VaZBdmKymGJgW+eeSkJQ2R8H+Pf5UdqHdNz+Lr4GTgq1XFmNQ0IqdfG6Ywk4kUv1upoCA
	4sjeRGXQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxfBe-00025D-Vp; Thu, 07 Jan 2021 23:59:27 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxfBc-00023j-LI; Thu, 07 Jan 2021 23:59:25 +0000
Received: by mail-pf1-x432.google.com with SMTP id h186so5110993pfe.0;
 Thu, 07 Jan 2021 15:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=oJVh/my9+9Gu7+k7keDLqkZNyRGli6f9+DmOVRImkkY=;
 b=CWZJyXyJQbF9Na1Pzs4NcHk2oB3TaHSm2tHAKLDv9bNLnngpjSwEi6m7CG/CPflpZC
 tVzwSakepZZWnoIW1sALg3ZjoZ4BF7lKyKdoPTkzVAmSgLcwe8CoymbdqiBC8kC7iErB
 yQbpAVE6WXn8ON0w9sUuMcxh1BxlTZJaQm/Z0Ztb/wAIBHpVP4hqX3lGrTUq4kS40+FS
 oHplBwspj//AOKKcPQQR/qdRYc+Tiv6VaRx2LIaapwvsHzzQHJZCR8GNCzklAsc49YD6
 +B8yn/7/oHcRA364M4w4gZ3nn6BzaIsGMAQpMdqkPqPsTYbRPUBSdGjap6RNx0soylYm
 thAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oJVh/my9+9Gu7+k7keDLqkZNyRGli6f9+DmOVRImkkY=;
 b=D5gH+ffWDdT3YX9g8qqDbc0HtODehKHhmX5U1ec6sSb2f1gvtI334TV7KsnjIwdodT
 +QV17G1Fqw6OS7YbDqVoNXrZ2FqTR+8NLgVB0YnEanUP4zZ3Y86VJR1oa3W6iISN3+W8
 Zms/2f1p0uVOzyeP2S+yX0aeJbSzY9n2/GmO0rHJGJxHWLfzUtTCoFEI5OOqikGFGpgM
 kSiSII81qshJgYPxfzT1tfe5+eZDfqGFj+F81OmPZRu7xHzktlI2MCqzovpcTYGSc1XJ
 5nwnXpVnwNoXZU48xWInnDBF4caoIfSBDpPRVGy0ON8rprSc5d4fD0jNCK7xd6jBdftY
 YfaQ==
X-Gm-Message-State: AOAM531iPwrczRxQXjMjdCXuqHAyL0pYX2h9hEFjM+Ae0Ppv6T2HKXnp
 pXKsrEOjINFxtvOYdDqr2cA=
X-Google-Smtp-Source: ABdhPJz3du2kRkADciN7SImnBCQ6L07nS036HGi6RwOFEunY/bLqZLsRFbrNvPFqaexZ/qjIuPzXlQ==
X-Received: by 2002:a63:f19:: with SMTP id e25mr4200495pgl.220.1610063962848; 
 Thu, 07 Jan 2021 15:59:22 -0800 (PST)
Received: from x2.lan ([2400:4070:175b:7500::7a7])
 by smtp.gmail.com with ESMTPSA id bf3sm6448195pjb.45.2021.01.07.15.59.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 15:59:22 -0800 (PST)
From: Vincent Pelletier <plr.vincent@gmail.com>
To: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, linux-rpi-kernel@lists.infradead.org
Subject: [3/3] spi: rockchip: Call the dedicated transfer completion function.
Date: Thu,  7 Jan 2021 23:58:32 +0000
Message-Id: <f3e1cf19a7dcdd77adc0a719adf46449b84ccadd.1610062884.git.plr.vincent@gmail.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <633c3d5c350dde4d14ce2120c32698c25b95d302.1610062884.git.plr.vincent@gmail.com>
References: <633c3d5c350dde4d14ce2120c32698c25b95d302.1610062884.git.plr.vincent@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210107_185924_711983_550A72C5 
X-CRM114-Status: GOOD (  11.83  )
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
 drivers/spi/spi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 09d8e92400eb..936ef54e0903 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -566,7 +566,7 @@ static int rockchip_spi_slave_abort(struct spi_controller *ctlr)
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
 
 	rs->slave_abort = true;
-	complete(&ctlr->xfer_completion);
+	spi_finalize_current_transfer(ctlr);
 
 	return 0;
 }
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
