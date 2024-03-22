Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2DC4C54E71
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Mar 2024 13:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVte1kTs23SAByaqtxVtGdv42DcxbXboPZDvzLAjxV8=; b=QXcFPyCFKU6znv
	uRLDAjEhx3J/DDrpOBZsTqXT84dcIt0qEdzjN0jRgikj5RwMwMD3mtZxw2WCbwC4vDU+QmmyBpSDX
	vbufUirYicbS+UYJGFAShlB8wYVMp/gGVydSA3gb9hmsfeVhpKr9tOqJ7vGnr6m1clPt+MZ6FSNBW
	Q5ESrKoK05U24Ftcv5rl+9zpM+bejB4OI/fb6m0fzHk5lvw81TZMrFiM9FMbrm37UXYKly4+JCc3n
	jDZWCcaFsYV2VspYNZKW8nIgY9s4yKQjHv6sSAK1XI8PyY0507VQU0atZRF5PgdM6AfKbKDX6mTCq
	b5kOZxjy5IaXVII+eCiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnewE-00000007IvH-1zs2;
	Fri, 22 Mar 2024 13:28:02 +0000
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnevY-00000007IRH-1fbv
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Mar 2024 13:27:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=+hOidMzQoPW9FHhIvSwRON+Z3xIeGflbT7fmNTj31kw=; b=EHt8A5
	K4PaG12m12qc8DQFQX600kMWpr/bc6hl5B4LVHXRSeCg2rWPiwMWLAC0h4f7wZp0
	aC4CFWfOgRoORdJOTuDgGHrOnGMYvL2eufHzKH2SYPdfq3z00V8fL079lgA6LpjF
	OgOjYGlU1GkHjoRg/ZfW6S07owCZf09PC4WIkOLC0MrERZNdwBKvIyAwMXHhAZ6l
	r/k3cA26FwfwPbnOsSYTQXq+tIhbd9UAnjzi2ii3TxB6ILfl1Sqc+E0BiZ7FmkR9
	kAEXsRsWPCm/6HKJD6OvTd2eyHy0MFTRyzdJpf+ok0y+JmfT3STzNePa5g7WZGP8
	XlbsQAa86GIjBu9g==
Received: (qmail 3871717 invoked from network); 22 Mar 2024 14:27:00 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 22 Mar 2024 14:27:00 +0100
X-UD-Smtp-Session: l3s3148p1@7yFVxz8UCJRehhtF
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-i2c@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 47/64] i2c: rk3x: reword according to newest specification
Date: Fri, 22 Mar 2024 14:25:40 +0100
Message-ID: <20240322132619.6389-48-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240322132619.6389-1-wsa+renesas@sang-engineering.com>
References: <20240322132619.6389-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240322_062721_244431_3905C4C0 
X-CRM114-Status: GOOD (  15.13  )
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

Match the wording of this driver wrt. the newest I2C v7, SMBus 3.2, I3C
specifications and replace "master/slave" with more appropriate terms.
They are also more specific because we distinguish now between a remote
entity ("client") and a local one ("target").

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 drivers/i2c/busses/i2c-rk3x.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 086fdf262e7b..01febd886bdd 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -28,8 +28,8 @@
 /* Register Map */
 #define REG_CON        0x00 /* control register */
 #define REG_CLKDIV     0x04 /* clock divisor register */
-#define REG_MRXADDR    0x08 /* slave address for REGISTER_TX */
-#define REG_MRXRADDR   0x0c /* slave register address for REGISTER_TX */
+#define REG_MRXADDR    0x08 /* client address for REGISTER_TX */
+#define REG_MRXRADDR   0x0c /* client register address for REGISTER_TX */
 #define REG_MTXCNT     0x10 /* number of bytes to be transmitted */
 #define REG_MRXCNT     0x14 /* number of bytes to be received */
 #define REG_IEN        0x18 /* interrupt enable */
@@ -68,8 +68,8 @@ enum {
 /* REG_IEN/REG_IPD bits */
 #define REG_INT_BTF       BIT(0) /* a byte was transmitted */
 #define REG_INT_BRF       BIT(1) /* a byte was received */
-#define REG_INT_MBTF      BIT(2) /* master data transmit finished */
-#define REG_INT_MBRF      BIT(3) /* master data receive finished */
+#define REG_INT_MBTF      BIT(2) /* host data transmit finished */
+#define REG_INT_MBRF      BIT(3) /* host data receive finished */
 #define REG_INT_START     BIT(4) /* START condition generated */
 #define REG_INT_STOP      BIT(5) /* STOP condition generated */
 #define REG_INT_NAKRCV    BIT(6) /* NACK received */
@@ -184,7 +184,7 @@ struct rk3x_i2c_soc_data {
  * @wait: the waitqueue to wait for i2c transfer
  * @busy: the condition for the event to wait for
  * @msg: current i2c message
- * @addr: addr of i2c slave device
+ * @addr: addr of i2c client device
  * @mode: mode of i2c transfer
  * @is_last_msg: flag determines whether it is the last msg in this transfer
  * @state: state of i2c transfer
@@ -979,7 +979,7 @@ static int rk3x_i2c_setup(struct rk3x_i2c *i2c, struct i2c_msg *msgs, int num)
 	/*
 	 * The I2C adapter can issue a small (len < 4) write packet before
 	 * reading. This speeds up SMBus-style register reads.
-	 * The MRXADDR/MRXRADDR hold the slave address and the slave register
+	 * The MRXADDR/MRXRADDR hold the client address and the client register
 	 * address in this case.
 	 */
 
@@ -1016,7 +1016,7 @@ static int rk3x_i2c_setup(struct rk3x_i2c *i2c, struct i2c_msg *msgs, int num)
 			addr |= 1; /* set read bit */
 
 			/*
-			 * We have to transmit the slave addr first. Use
+			 * We have to transmit the client addr first. Use
 			 * MOD_REGISTER_TX for that purpose.
 			 */
 			i2c->mode = REG_CON_MOD_REGISTER_TX;
@@ -1162,8 +1162,8 @@ static u32 rk3x_i2c_func(struct i2c_adapter *adap)
 }
 
 static const struct i2c_algorithm rk3x_i2c_algorithm = {
-	.master_xfer		= rk3x_i2c_xfer,
-	.master_xfer_atomic	= rk3x_i2c_xfer_polling,
+	.xfer		= rk3x_i2c_xfer,
+	.xfer_atomic	= rk3x_i2c_xfer_polling,
 	.functionality		= rk3x_i2c_func,
 };
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
