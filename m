Return-Path: <SRS0=VF+v=NU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_ADSP_ALL,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F69C432BE
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Aug 2021 02:52:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 13B3A60E08
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Aug 2021 02:52:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 13B3A60E08
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=megous.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7vYC2NHnmMIYV6Ct6g65iDPk21Eh9ZFoMIloIr+Vez8=; b=NNJzoH07kk5BVZ
	pGjOGm+Bi2R1fJ9p2NR/1buhu51JG+hDuZw7UVGJsyyoVx6e033fTQmLvLwkGNtm839JS0GNDRcin
	/Plcr/LShAeWvpLeWgucnaXjLMJgceWzcF0AEJ9ePinWGBDqzXBGim6uftYgFBmk58MWq4ie/pLhN
	WiKcCEcc9oaKTAYKZvTKHlT+GZeJt2B3qxpDA5PkHhjXvWZzYyXWc/Thfo+snS8W+nUBoYzQmvkDb
	bPGTxGtOzykbKMj9b21hgeI/twl1MNNreO9EVgZlIiWll/25NBjNQ3rHpd2S4z/LDeR4RVfm4vHD/
	hxXnw08J0IRANYSa1Pjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKAvU-00Evd4-LI; Sun, 29 Aug 2021 02:52:04 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKAvF-00EvcO-0W; Sun, 29 Aug 2021 02:51:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1630205504; bh=E3TX1uiaCCo6JfafnOTAiv2GSkpdyPupucanyUViILw=;
 h=From:To:Cc:Subject:Date:From;
 b=HxffAQce1C4GrbdZuSfvWQ6+DfavBnHR8xKIsPIslQG3FhoFGGbRlrteInNazk00O
 WOkbtalW52HnlvgKym4wERSuB+ypwNPltSMgWmRct2JI+2z4PolTGC4XFkcIdjIZp2
 MiEPTtMX+JdF29gbECu3Jw/gL4SQe70/odNFijmw=
From: Ondrej Jirman <megous@megous.com>
To: Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
 linux-i2c@vger.kernel.org (open list:I2C SUBSYSTEM HOST DRIVERS),
 linux-kernel@vger.kernel.org (open list)
Cc: Ondrej Jirman <megous@megous.com>
Subject: [PATCH] i2c: rk3x: Handle a spurious start completion interrupt flag
Date: Sun, 29 Aug 2021 04:51:30 +0200
Message-Id: <20210829025130.1058877-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_195149_410125_5A669EBF 
X-CRM114-Status: GOOD (  10.02  )
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

In a typical read transfer, start completion flag is being set after
read finishes (notice ipd bit 4 being set):

trasnfer poll=0
i2c start
rk3x-i2c fdd40000.i2c: IRQ: state 1, ipd: 10
i2c read
rk3x-i2c fdd40000.i2c: IRQ: state 2, ipd: 1b
i2c stop
rk3x-i2c fdd40000.i2c: IRQ: state 4, ipd: 33

This causes I2C transfer being aborted in polled mode from a stop completion
handler:

trasnfer poll=1
i2c start
rk3x-i2c fdd40000.i2c: IRQ: state 1, ipd: 10
i2c read
rk3x-i2c fdd40000.i2c: IRQ: state 2, ipd: 0
rk3x-i2c fdd40000.i2c: IRQ: state 2, ipd: 1b
i2c stop
rk3x-i2c fdd40000.i2c: IRQ: state 4, ipd: 13
i2c stop
rk3x-i2c fdd40000.i2c: unexpected irq in STOP: 0x10

Clearing the START flag after read fixes the issue without any obvious
side effects.

This issue was dicovered on RK3566 when adding support for powering
off the RK817 PMIC.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 drivers/i2c/busses/i2c-rk3x.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 819ab4ee517e..02ddb237f69a 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -423,8 +423,8 @@ static void rk3x_i2c_handle_read(struct rk3x_i2c *i2c, unsigned int ipd)
 	if (!(ipd & REG_INT_MBRF))
 		return;
 
-	/* ack interrupt */
-	i2c_writel(i2c, REG_INT_MBRF, REG_IPD);
+	/* ack interrupt (read also produces a spurious START flag, clear it too) */
+	i2c_writel(i2c, REG_INT_MBRF | REG_INT_START, REG_IPD);
 
 	/* Can only handle a maximum of 32 bytes at a time */
 	if (len > 32)
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
