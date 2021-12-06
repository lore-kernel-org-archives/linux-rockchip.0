Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44FBFC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Dec 2021 21:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kgDng+Fbyc17gPROsr+UdGMe/m6HtYWsBB9u/ipmxLM=; b=BT6m09245Jwruw
	zmCo0x0U0/Mu/PCNKFQyeGsdmlIZ4F3owhR5HI/Bmfjv0EKKKNsMlnrn9sYQKNUnffCwNZsD3ddfs
	B64bhggSfntuQCJnOc3ZJ1qorPRvX0zaKK8j4InSwl7YcVo1nodZKTOKTXtZCE/fZM42A6xvYQ3fZ
	00aIqszEnU8eXakbQKlxdjjt/iIDimFTqwMYs/UsQDGl7/tCSMUix3t90KnGKr16/oAzZTlLyVP41
	zxzn0VIn+MS1iV3oWcm+MdQDjF8/Ulmgxkm/vtkjMjchnSrQ1MmzVtL01MJm1h/ukAQxfhGgbkDKf
	gXVeBj94yQH9Ih3WPOZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muLV4-005s42-Eg; Mon, 06 Dec 2021 21:26:18 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muLPf-005pjf-VF; Mon, 06 Dec 2021 21:20:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 04CD9CE1846;
 Mon,  6 Dec 2021 21:20:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C7FCC341C7;
 Mon,  6 Dec 2021 21:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638825640;
 bh=5WHsyBQsEtEnZ86t/8WCO8RRM2Kyqh/DD9/FU0LArNM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fyCfWbgoOG4l4xPX84xol8YNVMN73pqwVQ/GXJSfvFrRiVQOc4Uripm+hLEwfPnhB
 UeULeF+cyMCc5k1OrZI6a+yOsoU5oPMTlcbU7fDYMk2/AUoZWsuy4hiTRN+6qIGEcJ
 HtQFqaKSj0/Wb9DJmNQNDrthZU5VJkTpKWhVQqDqIEdMWjX6vloMHbZdX09fqR9msK
 N0GTaO0quaJBaKrdrI7eJgOQN3PtKaf+5ndJ/fnoslogFzHw3yuya28fKgQpzV/BzA
 AHfMUYel6m36fGMbHOIxm+voq03/GxTeCw8vEch9N5Fe3n7/GC5RWBXwDZC1tVTBsn
 +OgGYNOZbwISg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Ondrej Jirman <megous@megous.com>, John Keeping <john@metanate.com>,
 Wolfram Sang <wsa@kernel.org>, Sasha Levin <sashal@kernel.org>,
 heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 2/3] i2c: rk3x: Handle a spurious start completion
 interrupt flag
Date: Mon,  6 Dec 2021 16:20:33 -0500
Message-Id: <20211206212034.1661597-2-sashal@kernel.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211206212034.1661597-1-sashal@kernel.org>
References: <20211206212034.1661597-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211206_132044_264271_84284783 
X-CRM114-Status: GOOD (  12.97  )
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

From: Ondrej Jirman <megous@megous.com>

[ Upstream commit 02fe0fbd8a21e183687925c3a266ae27dda9840f ]

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
Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Wolfram Sang <wsa@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/i2c/busses/i2c-rk3x.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 9096d17beb5bb..587f1a5a10243 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -325,8 +325,8 @@ static void rk3x_i2c_handle_read(struct rk3x_i2c *i2c, unsigned int ipd)
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
