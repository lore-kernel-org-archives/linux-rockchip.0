Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E28C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 12:56:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D968864EB7
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 12:56:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D968864EB7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZjKavuuhwqxN457C7oHeFtWQRT6MPkUQOuaInqZSXp4=; b=oxvUrjRh33WdzrEA7Mdud8xyC2
	N02hEbwP9/FmJvvxpRmNbebWT03rqcgYGj5UAbHDOOXD31q6vXmvDozMMsprM7sDxyAT7O9gR3B69
	3Fl0l++NuO+L7AfWoTM6+0zIT9IDXUvFWTl066FFGEjv8wY6krU0QNeLsW4x3OdacdWObHvm2BcRR
	YdaF7sUDho2MpXqLJH+7x6fJqmiIc1GUzpJhWll+PTnfY73DGE6zG1bJ4wR3EhhqeAnoId8btsoJK
	cBx37gD6QCMEQKuzBPFLNYctd8gyESWkvdfUEk4DPS8MUsWy7Dj6wtTeV1kQh66jfQsM7QVF17rXs
	p63eECmQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFGBO-000723-6R; Thu, 25 Feb 2021 12:55:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFGBK-00071F-D7; Thu, 25 Feb 2021 12:55:51 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id F205D64EC4;
 Thu, 25 Feb 2021 12:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614257749;
 bh=IM56HS2jcyC+tX7uO3Kx0IQACMvoulpcQ1kwIFss1Y8=;
 h=From:To:Cc:Subject:Date:From;
 b=VpA+Es3n8RVmv0k82sr68P/4h+o3X4PL1A+BU84Xdyo5ko5VC6ohN684iY0y6JJ2z
 nLYOHtZMY080H6NcG/HMefO6FutpQbYYxGYlL9O0AHNQDLZ9mBO+kyQhtGR5hdLHtM
 Z80JHWc5Lx9q4tJM+a1w/tmRnLszXABEgzAzsHxiXZSxpByZetnCAc/LonKrDpOlHY
 X+ykl7KoOHzyQ8iZEIHNfTXcxKzglPRZs7FRkssvsgJY5pnz1FMh/ettZeR/PWlp/h
 Q9g2VjL8p4CkDob8nQCZAij1kglqPYFRiLYZA2PqOTECIkfgXlZz93IivQyzARXmms
 4vtFHrDg6mL4w==
From: Arnd Bergmann <arnd@kernel.org>
To: Mark Brown <broonie@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Emil Renner Berthing <kernel@esmil.dk>
Subject: [PATCH] spi: rockchip: avoid objtool warning
Date: Thu, 25 Feb 2021 13:55:34 +0100
Message-Id: <20210225125541.1808719-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_075550_541548_BB218B6D 
X-CRM114-Status: GOOD (  12.49  )
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
Cc: Arnd Bergmann <arnd@arndb.de>, Alexander Kochetkov <al.kochet@gmail.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jon Lin <jon.lin@rock-chips.com>,
 clang-built-linux@googlegroups.com, Vincent Pelletier <plr.vincent@gmail.com>,
 Johan Jonker <jbx6244@gmail.com>, Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

Building this file with clang leads to a an unreachable code path
causing a warning from objtool:

drivers/spi/spi-rockchip.o: warning: objtool: rockchip_spi_transfer_one()+0x2e0: sibling call from callable instruction with modified stack frame

Use BUG() instead of unreachable() to avoid the undefined behavior
if it does happen.

Fixes: 65498c6ae241 ("spi: rockchip: support 4bit words")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/spi/spi-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-rockchip.c b/drivers/spi/spi-rockchip.c
index 936ef54e0903..972beac1169a 100644
--- a/drivers/spi/spi-rockchip.c
+++ b/drivers/spi/spi-rockchip.c
@@ -521,7 +521,7 @@ static void rockchip_spi_config(struct rockchip_spi *rs,
 		 * ctlr->bits_per_word_mask, so this shouldn't
 		 * happen
 		 */
-		unreachable();
+		BUG();
 	}
 
 	if (use_dma) {
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
