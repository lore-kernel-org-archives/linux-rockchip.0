Return-Path: <SRS0=LXKC=NR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 541BFC432BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 17:47:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EACE760698
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Aug 2021 17:47:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EACE760698
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4DwMA/oUac1gxPRBOAtzpM9WoYUPAFIuPZH69rd+fgc=; b=xvL2JAYxycCQxV
	Zz7fqQxG98ndfVAGwVMv1DSLff7u20z4bDgNbS7qMC6RA9zT+t/Et6v+rxVsqlYClNR0UoynnQrTa
	nPEXe56fLFh2UmzyiJ5IYLtWufQ3NOnLOW/iGfBpOKizhWYcE+f20Ai+vEELahHQmmDUo6zx7woRT
	n+ld2FD0Ca+ZyIVQ+7Se4/SDIOr5IP0aG1HI3GGfAfLivm+QnYkAqHh1N+Tmjkqt+6dEJVCJHM0lO
	NBeG2YOrCihtngjOOvfk0PRry4LygrWx/Z0QNVoD9UaFBlXzmrcoPm+6ACkubE+s8G7IZi7ZoU9f+
	pzNIjWvFwqIBYFLfVkRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJJT5-00Agsk-NH; Thu, 26 Aug 2021 17:47:11 +0000
Received: from mail.manjaro.org ([116.203.91.91])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJJSq-00AgrY-2N; Thu, 26 Aug 2021 17:47:00 +0000
From: Tobias Schramm <t.schramm@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
 t=1630000011;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=OM+uWoJWtLPFwGbhaTK2LZ3pufTaK1xDMcnN5Y5OmWI=;
 b=Qj/bDarPTwNVvlX5XGRPRE+SxV5aVJWIA68w7u0rwV/eKh2DjxQddGSNpgRHr4Wo4HwMXO
 ppqHE4uuy9tzwO69OdyPqOnSPtMC9P/V/To7bFiK6ht1SV26viJWTVzan3NFN44i8jms4E
 XHQfCw1Lmotsr498N90dY9Ijpssh0ILHs8t1Gj2u+4i8IHeNlJsOnvVYRWIY6ezzaa3iRi
 09shkENfFb25MGkuo5kGo30rlStJQGhYMN9954RvvmSumzpZLnjdYGIpPXIVO5+a+q4HW6
 FoNNd/XHNWIfBNMPcXSNItCHqi0GLCX15qGfS4cB8kSnRo9kRV4lkx4WrJGQFA==
To: linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH] i2c: rk3x: disable and reenable I2C after timeouts to fix
 stuck low SDA
Date: Thu, 26 Aug 2021 19:46:32 +0200
Message-Id: <20210826174632.91887-1-t.schramm@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=t.schramm@manjaro.org smtp.mailfrom=t.schramm@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_104656_463655_054B47FF 
X-CRM114-Status: UNSURE (   7.63  )
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

Previously the SDA line sometimes remained stuck low after timeouts
rendering the I2C bus unusable. Testing has shown that disabling and
reenabling the I2C peripheral after sending the stop condition seems to
unstick SDA reliably.
Disable and reenable the I2C controller on timeout after sending stop
condition to unstick SDA.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 drivers/i2c/busses/i2c-rk3x.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 819ab4ee517e..fc330cc3686a 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1108,6 +1108,16 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 			val |= REG_CON_EN | REG_CON_STOP;
 			i2c_writel(i2c, val, REG_CON);
 
+			/*
+			 * Sometimes SDA remains stuck low after timeouts.
+			 * Disable and reenable the I2C peripheral to unstick
+			 * SDA.
+			 */
+			val &= ~REG_CON_EN;
+			i2c_writel(i2c, val, REG_CON);
+			val |= REG_CON_EN;
+			i2c_writel(i2c, val, REG_CON);
+
 			i2c->state = STATE_IDLE;
 
 			ret = -ETIMEDOUT;
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
