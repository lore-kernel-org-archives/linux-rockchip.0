Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 825B4C43219
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 19:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yl8DlvIcuE3M01fS7dLxkclAjudYizP6sDe/TXLN0c0=; b=3jhQf7dkycMxFx
	ZJfdwBKWucQvjQ67oqK3M/rHTY/0KiTWNm4xjocTC27pxSdCtpXtpKxgwA8uSS2eM8G4NDxUD7Ctr
	fHCeTJM41lHTj+z9HVvdJVnBv+9y13s500EXzlocxtf1TU7my03fgFw9kYZdiZjdL4HpqPJrAtN3M
	c5z8hKlD0cyhPuqt9D6QhAar2pTME0J/3zvTE8lfOaFg+T/SJ2YdaLMW2pobcepv82JXHvdyyIfy4
	bA2p38jYVGWQ9ptGo67TuD/SGZrewydInd7NyTYdmNh5xnDKAfvr7bpbU/FM675FN4ZKv+vFQgZ/A
	zshW63Jz9yw/1EYDTmTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1na0cP-003RP6-3i; Thu, 31 Mar 2022 19:38:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1na0cE-003RGZ-78
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 19:37:56 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id E968B1F47255
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648755473;
 bh=jjxmbWJ+OUjcuFBbFVuZBkezVddHPzPh9O3QIqvsczU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RwGxqDjb0z4nPRaKXOOXYxg8RTqfoEsVbLNoGTKoOzPLv3hNGVnc6HLxlP8mSG/at
 AG+QmqMCODgEoABnKum4nYnaByGjFVNYW9dBw7IJgMjmfBhD0NhgMaJ8pAlPcT82zP
 Lz6kwWHhO7YdLQTjpqVWuhsRwi8Rr6Kjs+wCzmoD0UcTv4MHn5PhDy+oDM6nGn0+V/
 7OmMUW8v0byfOjG9iiJxlykixdc7+5gDkU7MslxNYsodoOqffxM6OlJAO1R0yAIqbt
 jSXOE3Vpj9rhLG/RDjJMIHnxY/W5m2zWng9BLDkBqpkfSBD3ZApYKpfDusZaPnYtcs
 hjn1fjNYR0I2A==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: [PATCH v2 12/23] media: rkvdec: Stop overclocking the decoder
Date: Thu, 31 Mar 2022 15:37:14 -0400
Message-Id: <20220331193726.289559-13-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
References: <20220331193726.289559-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_123754_485974_BC40A58B 
X-CRM114-Status: GOOD (  10.40  )
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

While this overclock hack seems to work on some implementations
(some ChromeBooks, RockPi4) it also causes instability on other
implementations (notably LibreComputer Renegade, but there were more
reports in the LibreELEC project, where this has been removed). While
performance is indeed affected (tested with GStreamer), 4K playback
still works as long as you don't operate in lock step and keep at
least 1 frame ahead of time in the decode queue.

After discussion with ChromeOS members, it would seem that their
implementation indeed used to synchronously decode each frames, so
this hack was simply compensating for their code being less
efficient. In my opinion, this hack should not have been included
upstream.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
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
