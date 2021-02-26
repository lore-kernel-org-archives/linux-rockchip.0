Return-Path: <SRS0=dCsk=H4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0E91C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 14:02:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1858A64EC8
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Feb 2021 14:02:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1858A64EC8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D4pDga4QLj2gzt66m89oonzJ8KovEO1HMbv0L8oV+r0=; b=yltyBjofXaLPq22zxG+UxoCv4B
	0CNjNcYZb7uCKo9XPjbI5RXGqo1vJw0xuDph037AMhVauoTSiJxJSaiWnf97QDuQsW/rh7YUFyrK0
	0S0fzKKYIe2J81eZyVOkn8SdLGTuafM3LcEtPn5aC0+YAU5zrr/m8lcqGBhBQMj968QLOMOq47UY5
	xIwCTAax8FCFDN664Brqkk8WEFLyL+QkNur3iOOfU7n7Gbtz+d+BB67MWccxL2CQjOMwGAXelmmqa
	5Sr+vAoSy1XzSRLu1Bo20wksg96iE712SYDE1CLTxS9rKqdK8vfoZ3GiH4a4AizoYf2zmfPUZ/lN5
	WB47P8qA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFdgo-0003gO-Vd; Fri, 26 Feb 2021 14:01:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFdgl-0003fn-8s; Fri, 26 Feb 2021 14:01:52 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7876F64EC4;
 Fri, 26 Feb 2021 14:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614348110;
 bh=CdhaZ+gptekojCnIxLj0qCtsG+fp7Fb4kfokZslzO18=;
 h=From:To:Cc:Subject:Date:From;
 b=Y/RQ4yiSx6y29mXvp33Syj0RSBQSQKaKZLHBl1BqaEbrt/5kkBNk/5nA7Sz5LXBrY
 arQflDHpYOqTDzKYXaPebQzC/0lizbDvMu8EL85u1BGC7Wg+3G9/BcLSSPhecejCiK
 al67NyEoo3NfX6w9YsDi6zDO8zCsFIo+2bpuVfwM29Sx0vOjAZxuuQ3uybkTJ/lNMO
 Z+8U1VqG7S81of9bZRldYAxYSGrJfmhEHF4VaOAF9sOd2CqU8HgTGn9QQG1WH+Rdp8
 XeLcsKQn+7W1vLVqmr/eDI7ay9S2dzvM/2Wzn0qouKaqsjgu07ySjTc+rmVsvlZnyg
 mt17okwc0rdUA==
From: Arnd Bergmann <arnd@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] [v2] spi: rockchip: avoid objtool warning
Date: Fri, 26 Feb 2021 15:00:48 +0100
Message-Id: <20210226140109.3477093-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210226_090151_398802_31B28D7F 
X-CRM114-Status: GOOD (  13.56  )
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
Cc: Emil Renner Berthing <kernel@esmil.dk>, Arnd Bergmann <arnd@arndb.de>,
 clang-built-linux@googlegroups.com, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>, linux-rockchip@lists.infradead.org,
 Jon Lin <jon.lin@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Pratyush Yadav <p.yadav@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

Building this file with clang leads to a an unreachable code path
causing a warning from objtool:

drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame

Change the unreachable() into an error return that can be
handled if it ever happens, rather than silently crashing
the kernel.

Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: use 'return' instead of 'BUG()'
---
 drivers/spi/spi-rockchip.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 936ef54e0903..0d75080da648 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -476,7 +476,7 @@ static int rockchip_spi_prepare_dma(struct rockchip_spi *rs,
 	return 1;
 }
 
-static void rockchip_spi_config(struct rockchip_spi *rs,
+static int rockchip_spi_config(struct rockchip_spi *rs,
 		struct spi_device *spi, struct spi_transfer *xfer,
 		bool use_dma, bool slave_mode)
 {
@@ -521,7 +521,9 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
 		 * ctlr->bits_per_word_mask, so this shouldn't
 		 * happen
 		 */
-		unreachable();
+		dev_err(rs->dev, "unknown bits per word: %d\n",
+			xfer->bits_per_word);
+		return -EINVAL;
 	}
 
 	if (use_dma) {
@@ -554,6 +556,8 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
 	 */
 	writel_relaxed(2 * DIV_ROUND_UP(rs->freq, 2 * xfer->speed_hz),
 			rs->regs + ROCKCHIP_SPI_BAUDR);
+
+	return 0;
 }
 
 static size_t rockchip_spi_max_transfer_size(struct spi_device *spi)
@@ -577,6 +581,7 @@ static int rockchip_spi_transfer_one(
 		struct spi_transfer *xfer)
 {
 	struct rockchip_spi *rs = spi_controller_get_devdata(ctlr);
+	int ret;
 	bool use_dma;
 
 	WARN_ON(readl_relaxed(rs->regs + ROCKCHIP_SPI_SSIENR) &&
@@ -596,7 +601,9 @@ static int rockchip_spi_transfer_one(
 
 	use_dma = ctlr->can_dma ? ctlr->can_dma(ctlr, spi, xfer) : false;
 
-	rockchip_spi_config(rs, spi, xfer, use_dma, ctlr->slave);
+	ret = rockchip_spi_config(rs, spi, xfer, use_dma, ctlr->slave);
+	if (ret)
+		return ret;
 
 	if (use_dma)
 		return rockchip_spi_prepare_dma(rs, ctlr, xfer);
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
