Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F3D9C38150
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jul 2024 11:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLDF4qAgII8RCpQp0jrXCsS10d5eUEm8nuj4/zk5tbo=; b=x1JQdyCWb1B8vr
	YhX7oXeJj/by9j/aBQeErBe9rVY05JS3tY1dJCdfmYOirqCw0HTbo/viI57Ft7E8ZltxQ48oqRqsa
	2/9zv+8Zg8Cwgsz+dtaFDJIDQnLWevukaHIZnplCzLHu4MrPGGlapedkXSiQj0DWNGDeHznek/BEy
	eZIj3i0UiXJ+z3tj4SFi2nAMrVOiEtiaYEwk8Ngc90isk6+wdthjQmUhkR63PWfpWCYMavwHPS5jw
	dCpiAje/A6BWDVyiSRS0VS1/GWGL2T0V1ZMVY58Sgf/Nn41qhTWCAGFgrWGZMyecM5yMnh51x/GM1
	zzWk4RC7q2zboq9SYHkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQ3Ub-000000007fE-26jT;
	Sat, 06 Jul 2024 11:22:13 +0000
Received: from zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQ3UY-000000007dR-2Gq6
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Jul 2024 11:22:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=PAKZYb75MbZIlrhGBH5RBytdsA/Ghy1+cbVsoMUguWM=; b=j+XQVk
	6By7LGB9+eDr3bl7zhu3fBf+VSks0q75o31VUqvVX0emMpwM+CsUZ6ymb+9YSYx8
	qohWv0AypEpEDtJLjv5P46LcXQ1LamzfkP/NrE5XYU5R4TF2NDEbxfBts6h2rBZv
	f4IwEkgNZKKOlJi0uE5zwjp2cXBnihrZFJcJSjNsDgYX9rqfxolMiHwpM1MdMaCW
	xDiRxO5zfNS1DyF4BNft4ZouV6ESDM3DljsVSDsfNqcfCYlCRRg29yNLDvYRo/Oq
	f1wnw4tvsE7s6sTJ0mtMXsWvvY3XFMz9+Hf39Mng9NswBWePNQ0HaDN4YF+g9z4v
	pvBBbt3LA3FJs6Gw==
Received: (qmail 3810740 invoked from network); 6 Jul 2024 13:21:52 +0200
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 6 Jul 2024 13:21:52 +0200
X-UD-Smtp-Session: l3s3148p1@pxj9YpIcUsJQT+F6
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 42/60] i2c: rk3x: reword according to newest specification
Date: Sat,  6 Jul 2024 13:20:42 +0200
Message-ID: <20240706112116.24543-43-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240706112116.24543-1-wsa+renesas@sang-engineering.com>
References: <20240706112116.24543-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240706_042210_888267_0472EDB7 
X-CRM114-Status: GOOD (  16.03  )
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

Change the wording of this driver wrt. the newest I2C v7 and SMBus 3.2
specifications and replace "master/slave" with more appropriate terms.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/i2c/busses/i2c-rk3x.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index beca61700c89..4ef9bad77b85 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -28,8 +28,8 @@
 /* Register Map */
 #define REG_CON        0x00 /* control register */
 #define REG_CLKDIV     0x04 /* clock divisor register */
-#define REG_MRXADDR    0x08 /* slave address for REGISTER_TX */
-#define REG_MRXRADDR   0x0c /* slave register address for REGISTER_TX */
+#define REG_MRXADDR    0x08 /* target address for REGISTER_TX */
+#define REG_MRXRADDR   0x0c /* target register address for REGISTER_TX */
 #define REG_MTXCNT     0x10 /* number of bytes to be transmitted */
 #define REG_MRXCNT     0x14 /* number of bytes to be received */
 #define REG_IEN        0x18 /* interrupt enable */
@@ -68,8 +68,8 @@ enum {
 /* REG_IEN/REG_IPD bits */
 #define REG_INT_BTF       BIT(0) /* a byte was transmitted */
 #define REG_INT_BRF       BIT(1) /* a byte was received */
-#define REG_INT_MBTF      BIT(2) /* master data transmit finished */
-#define REG_INT_MBRF      BIT(3) /* master data receive finished */
+#define REG_INT_MBTF      BIT(2) /* controller data transmit finished */
+#define REG_INT_MBRF      BIT(3) /* controller data receive finished */
 #define REG_INT_START     BIT(4) /* START condition generated */
 #define REG_INT_STOP      BIT(5) /* STOP condition generated */
 #define REG_INT_NAKRCV    BIT(6) /* NACK received */
@@ -184,7 +184,7 @@ struct rk3x_i2c_soc_data {
  * @wait: the waitqueue to wait for i2c transfer
  * @busy: the condition for the event to wait for
  * @msg: current i2c message
- * @addr: addr of i2c slave device
+ * @addr: addr of i2c target device
  * @mode: mode of i2c transfer
  * @is_last_msg: flag determines whether it is the last msg in this transfer
  * @state: state of i2c transfer
@@ -979,7 +979,7 @@ static int rk3x_i2c_setup(struct rk3x_i2c *i2c, struct i2c_msg *msgs, int num)
 	/*
 	 * The I2C adapter can issue a small (len < 4) write packet before
 	 * reading. This speeds up SMBus-style register reads.
-	 * The MRXADDR/MRXRADDR hold the slave address and the slave register
+	 * The MRXADDR/MRXRADDR hold the target address and the target register
 	 * address in this case.
 	 */
 
@@ -1016,7 +1016,7 @@ static int rk3x_i2c_setup(struct rk3x_i2c *i2c, struct i2c_msg *msgs, int num)
 			addr |= 1; /* set read bit */
 
 			/*
-			 * We have to transmit the slave addr first. Use
+			 * We have to transmit the target addr first. Use
 			 * MOD_REGISTER_TX for that purpose.
 			 */
 			i2c->mode = REG_CON_MOD_REGISTER_TX;
@@ -1160,9 +1160,9 @@ static u32 rk3x_i2c_func(struct i2c_adapter *adap)
 }
 
 static const struct i2c_algorithm rk3x_i2c_algorithm = {
-	.master_xfer		= rk3x_i2c_xfer,
-	.master_xfer_atomic	= rk3x_i2c_xfer_polling,
-	.functionality		= rk3x_i2c_func,
+	.xfer = rk3x_i2c_xfer,
+	.xfer_atomic = rk3x_i2c_xfer_polling,
+	.functionality = rk3x_i2c_func,
 };
 
 static const struct rk3x_i2c_soc_data rv1108_soc_data = {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
