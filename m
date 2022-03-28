Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DEAAC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 20:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmiVul41f1ShIoTBCT+MmB3UhWC9mCjqOQVLgXLRXWI=; b=Tntf+SYsgYDN1X
	5Wipevq49H9ULL5QDARRUXbsASD2N2uQwKbDWNc6E9I/fwj6ZyDFA+bCxJyYlQl2Oh8/6G39NniKn
	2qfZxj9HC2KY+sXI9fzej8ZThcQ7VGznrrwWQc6T3p0uahsmYoOvWePFjZVUmlFvwncDJUrP0D+7j
	jcquJ3QKrZiTGANs5g3dAtMVhhmppi2qJ/c34VAYtA+vC1tb6qsWiLSsjOKRas7squLSfMdjP8zZE
	QPlaTEuRVwyaR513uDZQF7oCwLDRq+O4lYbuUJ19pqoo4UaLKl4QcTSwfqkTzjp8R/aUu6SxosPZF
	NrI1jAF6pNX5SElEyiYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYvX7-009zFE-Sx; Mon, 28 Mar 2022 20:00:09 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYvX4-009zDP-Qf
 for linux-rockchip@lists.infradead.org; Mon, 28 Mar 2022 20:00:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 8DFC11F43871
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648497605;
 bh=m44B+xryaDUBDC4OQZH1svm4TvbuzUk06rZQFsjsWkM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dd0806z1QOOqDJRf/6nckgUYaYCCCq1RZvmymLye4MrEVbi/GLzoVD/98K8xpdfpd
 OOaBuahZWQqWJFxiGJsE1E24+2+QPUgfsWbegMOGbgE7oQ3IodaVuMENc6XqD7whtI
 RWTqn0EinA3/ORAu0d9Ov8Zkr7eM7+HZMgfvPrr3smH7Dv5rRtNpY34ypTVM6zRLVa
 LnoF9n9Xb8b903lw7Fj2I4G7gRqV90tOvH0uOQUKTxWWE7ZVUvzupw5sUOtKHjQCEe
 DrwhIK95JOVt9WxEySFw9DmEwC4A0tZVSH/8ay9040P/sk2PbBgVaXYnJZ0pesC1m/
 +YcQ6pe5ShX9A==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 12/24] media: rkvdec: Stop overclocking the decoder
Date: Mon, 28 Mar 2022 15:59:24 -0400
Message-Id: <20220328195936.82552-13-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_130007_016773_2748464E 
X-CRM114-Status: GOOD (  11.21  )
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

While this overclock hack seems to works on some implementation (some
ChromeBooks, RockPi4) it is also causing instability on other
implementation (notably LibreComputer Renegade, but saw more reports in
the LibreELEC project, were this is already removed). While performance is
indeed affectied (tested with GStreamer), 4K playback still works as long
as you don't operate in lock step and keep at least 1 frame ahead of time
in the decode queue.

After discussion with ChromeOS members, it would seem that their
implementation indeed synchronously decode each frames, so this hack was
simply compensating for their code being less efficienti. This hack
should in my opinion have stayed downstream and I'm removing it to ensure
stability across all RK3399 variants.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index c0cf3488f970..2df8cf4883e2 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -1027,12 +1027,6 @@ static int rkvdec_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	/*
-	 * Bump ACLK to max. possible freq. (500 MHz) to improve performance
-	 * When 4k video playback.
-	 */
-	clk_set_rate(rkvdec->clocks[0].clk, 500 * 1000 * 1000);
-
 	rkvdec->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(rkvdec->regs))
 		return PTR_ERR(rkvdec->regs);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
