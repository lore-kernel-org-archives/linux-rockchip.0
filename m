Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 648B7CD1296
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 11:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fqA8bm14eBXC8DPikkZ8i3oeF0+Z6RTNreM6CX07moI=; b=J5daEw/Yht4kBF
	5Fih49wIlVqoZ/BLnsV0YF6f+jXzRf4dxTzLTzYhr1Z34dLIyYAwFP2uUbWz0w1dqfJ1Lotd9xIhq
	qOi62f+r/+5TT83hlHwDTgULa6voip2dsg86aMe/Lbyq99DtSMbfy8SZxc4YrWnUhShUTahsnUTjN
	pABzClTPHnxZmnCLVLQ0ih68vhg1OmPPQPt98LEZXRa1Nvmog+oO/vmaJrCk+xon6wNWDijnmnRXX
	XKGkuNpH2oTYpsb3i3wvQOTF8/K5gYpki7Y6EzFvcDYWggEv98vICU/FZth5jTA1vIrpq3gS6zFkP
	NVJh55EsfYnrOYKErKsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruW5U-00000006bi1-3dR8;
	Wed, 10 Apr 2024 11:25:56 +0000
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruW4u-00000006bHI-3wv1
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Apr 2024 11:25:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=tTh5gHnHTO8tnn3N/EUqm3Hs/2cCwpj+zf5vzhI2jO4=; b=e61aOT
	hHkW2NOKlDMp0TsvrVPjYTmQqz9G6Xfcy4dHz+uo7EKsZwsdYFgTTcGXuAn7f+hN
	PfX+75V6R6IdoC8PKSbQrHZht+Z8lwzqghjNxgf6NDV/Q1eq6+QWkooxVjjytOoF
	m+j5jM1//kWHUH3M65OJFa6CFln6Z20DJE5R68iZuhIAtGClWAkld7cvKeWG96gq
	OytNpo2VNSVE5AKSL8nl3TZvZW9zWokIbnswIEBw7J9RzT2+6qsa8QkyX9Kae2vF
	KPk41mjCQLuUsJZWVYzYK/4n6kn3jL9Y6ZwEmUDbCUkn4AUTtb3+EjN1DBxsliIn
	68yvSpKSLylj7xwg==
Received: (qmail 521797 invoked from network); 10 Apr 2024 13:25:14 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 10 Apr 2024 13:25:14 +0200
X-UD-Smtp-Session: l3s3148p1@25HGSrwV9SJtKPEL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 13/18] i2c: rk3x: remove printout on handled timeouts
Date: Wed, 10 Apr 2024 13:24:27 +0200
Message-ID: <20240410112418.6400-33-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240410_042521_395487_482C28CC 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

I2C and SMBus timeouts are not something the user needs to be informed
about on controller level. The client driver may know if that really is
a problem and give more detailed information to the user. The controller
should just pass this information upwards. Remove the printout.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 drivers/i2c/busses/i2c-rk3x.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 086fdf262e7b..8c7367f289d3 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1106,9 +1106,6 @@ static int rk3x_i2c_xfer_common(struct i2c_adapter *adap,
 		spin_lock_irqsave(&i2c->lock, flags);
 
 		if (timeout == 0) {
-			dev_err(i2c->dev, "timeout, ipd: 0x%02x, state: %d\n",
-				i2c_readl(i2c, REG_IPD), i2c->state);
-
 			/* Force a STOP condition without interrupt */
 			i2c_writel(i2c, 0, REG_IEN);
 			val = i2c_readl(i2c, REG_CON) & REG_CON_TUNING_MASK;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
