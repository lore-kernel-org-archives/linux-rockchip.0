Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BB2C606A335
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 10:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0X7yWd8C;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=GVx28iDS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ZBGUlF6E+6XsExKA4wjkLBrCBnpaZ5Zr8bl883rwgis=; b=0X7yWd8Cbizz1sDUrIl2l/D+J9
	hOmwtpcr69GjTU6+7FXQB8ImYO/mvMyJTi8yxyoMbpe6I6CKqS039iuyo1YPMQN8aHdfYpWAArxs6
	RrI0WcNjOF667ETmzcTRoJc2GJz6OhGPumyfI4TsLfeeOHZMVYPOOqP6P50YnVRClCtrciokkZx3L
	jf/CqiRlANy4Gc0qkmgUJnn1Y3TuCW2yUiuauiH39o1AFxVMN2wvcwJVWkQzsRBBrOm0liMdzHTnM
	PEuccZ5dRbXb+hAmy7V3t94wQRrozrZcSJ+RxgOsRyi0avXeH6sn5/0VSCjjU0sPbkLSuN7QaBt8N
	QSp8xV/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtOE-0000000Fdl6-2E5b;
	Fri, 27 Nov 2026 10:41:14 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtO5-0000000FdaQ-0PKK
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 10:41:08 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-4ac109a8a12so4697375f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 02:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795776063; x=1796380863; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=N20fGOx6HVq4KHr1wxvnFvc1GZbdma2ueBGXHUzirkg=;
        b=GVx28iDSN97c+JzD1MJDgAxcgZOR2+WtpP+CEb+N3f17lask4/PqKOIWYb5DgOhIoJ
         ch4jvHDJ8OyPIuGMgMBOPWC+IS7n31lshRO90cV2qX3BmyISFAS0uSWWwdjskPWjqwgS
         Pps0NRQr21O/VFF4FbNX+P10F236SKtXudjr47v+TDPLRn5SKl0QzY4wrWC9w+AlNc0Y
         rwcPZdSiSdQ7s2kBHu4hGVv+4qvBfDY1rbz4l5pEQ7d+dvfVHvTbNiQA0koAGgxxG4mZ
         mwkMYWj2Ba4IgD0FDU7UtXRIEC5GjX3Do+1rjpFqdunPfam9dW2Q89pRG+OnUNLVrJvx
         b1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795776063; x=1796380863;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=N20fGOx6HVq4KHr1wxvnFvc1GZbdma2ueBGXHUzirkg=;
        b=ja8om/12M/BoTo9iiLkvWUyhKCo0tXlWXi0fBm2jkIOrgH+xERGmIZUcis0tk+Pev6
         bbCIWLglJl7K14K+JOguhGMr8W9WiEDh4cpwWmiqWBwlhqJeEs0SOgSq7G130sQdSJ4r
         mK/2a2Afi+TM3jCaX+P28y5JRdu4y0PHP03g6EENyAQEMKPdjHI3toJ0uedJlGceQ/Tl
         upNC1e2vnVj/ki/419fqGt+u849aby9Nw0XGxHLezK8eOm58rChau7mVWxleEfFTqQ1g
         KXOsSEuNKRu0gy3M5JdqNRiU6zbm/3PCDH24lNqk8NfocQOk70qcDXbTNFmxknyisv09
         jMnA==
X-Forwarded-Encrypted: i=1; AL+hErHPyf3IN20rJkFij3a/w5LF8BBbUDyyC9iaT0Kv4z416LKaUe/0BD/2sds7so1LYeZzp3wkdmcZCTYeR6Bcow==@lists.infradead.org
X-Gm-Message-State: APuU4Z9AHyth33VskPJlUp9R7T7TMkrkZAmkUIv8/lENRKxggh4EkXZO
	mV7L8k7rnjf0Tpmkxo3OR4orzzYBNiOXDvSLUPIK54tYx8autBQ9gV3wLjfIRWmjdgnQS2gkJxt
	zsFjK5fY=
X-Gm-Gg: AZFdTZcsF63V1yTbOhmD/J12Pmh6D5prx4hQqPsaAjha6jEyx4PfyZzR+5CD1m+OOEL
	UrGJ65VjBIS3kdGTeEpKLqfFvoRYoBYHCbE6A7yfb/RYV43CLxM8J3XQRR6QwlE29SxnLER1Avp
	DqvNgbbZZeFwzKQ4hk3CpSigBg++7eHKUkiWoloOijxZooBbgEnlKIpj7vtERZF8yQPJm9ufhnW
	SSsN5YB5Rfdw6tCC3r1xK+IOfPybKKYxRmcPj7fz0HvUm3UGpZapMscMgGQ8lvNcWsAUwkVs3wX
	2K/tcZMfsuR/EzMig4fG+vx1CC20drckSfC9KROJ7NPMQVMykI2OgVsrKo10NQlNh5jGb6Mj38c
	5VI8FfqbIbHNfX1NEdmlx9OJ3Ud6+P9RIcEJl3LVj4ABgmwJOoBbelE6SfvcZrTBk00aGI/23Or
	WQgzX3tUEpQVCViyQMnXWkYU+hspng5Oh30RN4diVw+OMcurrBdS2Z7Sii25FzmAmjZImFAB0Kq
	Sg4NYgjmU2AXHLjEexhfyd5E7VbXypsXEYjOq+ahIlu49+bxaMZB8qrRN5rk3rJwIelUXjeacLb
	Mq/6z+vxCh925yj4ayMzfgwfMUOwhdixVIk71/ara/b1WC/3Y+YQzZF4Piz90f7Ycmb2UAZXgsd
	NzaD1g1h+
X-Received: by 2002:a05:6000:490a:b0:4b7:80c1:11bd with SMTP id ffacd0b85a97d-4b780c1127cmr20888918f8f.35.1795776063087;
        Fri, 27 Nov 2026 02:41:03 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6ae2dcf9sm45597649f8f.32.2026.11.27.02.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 02:41:02 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 27 Nov 2026 14:40:48 +0400
Subject: [PATCH v2 3/6] usb: typec: fusb302: Read out the RX FIFO rather
 than flush it as PD RX goes on
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-fusb302-getsourcecap-v2-3-6770eb1e7945@flipper.net>
References: <20261127-fusb302-getsourcecap-v2-0-6770eb1e7945@flipper.net>
In-Reply-To: <20261127-fusb302-getsourcecap-v2-0-6770eb1e7945@flipper.net>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Guenter Roeck <linux@roeck-us.net>, Yueyao Zhu <yueyao@google.com>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@flipper.net>, stable@vger.kernel.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=7439; i=alchark@flipper.net;
 h=from:subject:message-id; bh=O5zo30DMU4B42IcNMdWqxNCDgBR82hr7Up/HY/MQfVU=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRzxpntFF69/02s2QP+8qyseU8XJGo16HCVXxA1Ei+9/
 WWxuNW1joksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0EjHWMeIgYtTAKZ6TR0jwwoTswNXfpccP/qk/OCMbv38ALMX6c5bZaZqiaz1X3rcnoGRYbf+yXW
 7p3TPshPaHXl0xbunHCqr+vbW3sn62Pil57BsKw8A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_024105_241598_C4FE27E1 
X-CRM114-Status: GOOD (  26.77  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Messages that come in while PD RX is off go unacknowledged, yet the chip
still queues them in the RX FIFO. Turning PD RX on flushes the FIFO and
only then turns automatic GoodCRCs on, four I2C transactions later. A
message that lands in between stays in the FIFO with no GoodCRC sent,
and the driver hands it to TCPM all the same. The partner, failing to
deliver it, keeps its MessageID for the next message, and TCPM drops
that as a retry. On a Flipper One attaching as a sink, this happened in
1 of 30 attaches: it took in the first Source_Capabilities that it
never acknowledged, dropped the Accept to its Request, and soft reset on
the PS_RDY that followed. The flush can also cut short a packet coming
in, leaving the rest of it to be read as junk.

Read out and drop whatever is in the FIFO while CC is idle, turn
automatic GoodCRCs on, and then pass on a packet that was on CC at that
moment only if the chip acknowledged it, and any that came after it in
any case. The chip decides that at the end of the packet, and ACTIVITY
drops between a packet and the GoodCRC to it, so wait for CC to stay
idle for longer than 195us (tTransmit) before looking at GCRCSENT. Should
CC stay busy instead, flush the FIFO after all, as what the chip
acknowledged is then unknown, and should anything fail, turn automatic
GoodCRCs off again, as TCPM then treats PD RX as off.

With PD RX turned on 0-30ms late in 39 attaches to a partner sending
Source_Capabilities, every copy that came in before is dropped now, the
3 caught on CC as GoodCRCs came on were acknowledged and passed on, and
every attach reached a contract with no reset.

Fixes: c034a43e72dd ("staging: typec: Fairchild FUSB302 Type-c chip driver")
Cc: stable@vger.kernel.org
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/usb/typec/tcpm/fusb302.c | 124 ++++++++++++++++++++++++++++++++++++---
 1 file changed, 116 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/typec/tcpm/fusb302.c b/drivers/usb/typec/tcpm/fusb302.c
index d57f9ae6621d..5cf1b78e7669 100644
--- a/drivers/usb/typec/tcpm/fusb302.c
+++ b/drivers/usb/typec/tcpm/fusb302.c
@@ -133,6 +133,8 @@ struct fusb302_chip {
 	bool rx_resync;
 	/* Only look in rx_buf, as the FIFO has nothing more of what it holds */
 	bool rx_buf_only;
+	/* Drop the messages read: no GoodCRC went out for them */
+	bool rx_discard;
 	bool vbus_present;
 	enum typec_cc_polarity cc_polarity;
 	enum typec_cc_status cc1;
@@ -900,6 +902,8 @@ static int fusb302_pd_set_interrupts(struct fusb302_chip *chip, bool on)
 	return ret;
 }
 
+static int fusb302_pd_rx_start(struct fusb302_chip *chip);
+
 static int tcpm_set_pd_rx(struct tcpc_dev *dev, bool on)
 {
 	struct fusb302_chip *chip = container_of(dev, struct fusb302_chip,
@@ -912,22 +916,26 @@ static int tcpm_set_pd_rx(struct tcpc_dev *dev, bool on)
 		goto done;
 	}
 
-	if (!on)
+	if (!on) {
 		fusb302_pd_set_sop_prime(chip, false);
-	ret = fusb302_pd_rx_flush(chip);
-	if (ret < 0) {
-		fusb302_log(chip, "cannot flush pd rx buffer, ret=%d", ret);
-		goto done;
+		/* What this cuts short is read out and dropped on the way on */
+		ret = fusb302_pd_rx_flush(chip);
+		if (ret < 0) {
+			fusb302_log(chip, "cannot flush pd rx buffer, ret=%d",
+				    ret);
+			goto done;
+		}
+		fusb302_pd_rx_reset(chip, true);
 	}
-	fusb302_pd_rx_reset(chip, true);
 	ret = fusb302_pd_tx_flush(chip);
 	if (ret < 0) {
 		fusb302_log(chip, "cannot flush pd tx buffer, ret=%d", ret);
 		goto done;
 	}
-	ret = fusb302_pd_set_auto_goodcrc(chip, on);
+	ret = on ? fusb302_pd_rx_start(chip) :
+		   fusb302_pd_set_auto_goodcrc(chip, false);
 	if (ret < 0) {
-		fusb302_log(chip, "cannot turn %s auto GCRC, ret=%d",
+		fusb302_log(chip, "cannot turn pd rx %s, ret=%d",
 			    str_on_off(on), ret);
 		goto done;
 	}
@@ -1677,6 +1685,10 @@ static int fusb302_pd_read_message(struct fusb302_chip *chip)
 
 	fusb302_log(chip, "PD message header: %x", msg.header);
 	fusb302_log(chip, "PD message len: %d", len);
+	if (chip->rx_discard) {
+		fusb302_log(chip, "PD message not acknowledged, dropped");
+		goto out;
+	}
 
 	/*
 	 * Check if we've read off a GoodCRC message. If so then indicate to
@@ -1835,6 +1847,102 @@ static void fusb302_pd_rx_recheck_work(struct work_struct *work)
 	mutex_unlock(&chip->lock);
 }
 
+/* Tries at reading out the RX FIFO, before turning PD RX on */
+#define FUSB302_RX_DISCARD_TRIES	4
+
+/*
+ * Turn automatic GoodCRCs on, and keep messages that came in before from TCPM:
+ * the partner, failing to deliver one, keeps its MessageID for the next, which
+ * TCPM would then drop as a retry. Read them out rather than flush the FIFO,
+ * which would cut short a packet coming in, so that the chip may acknowledge
+ * it and leave the rest of it behind. A packet on CC as GoodCRCs come on goes
+ * to TCPM only if it gets one.
+ */
+static int fusb302_pd_rx_start(struct fusb302_chip *chip)
+{
+	bool gcrc_on = false;
+	u8 status1, interruptb;
+	int ret, i;
+
+	chip->rx_discard = true;
+	for (i = 0; i < FUSB302_RX_DISCARD_TRIES; i++) {
+		ret = fusb302_pd_read_messages(chip);
+		if (ret < 0)
+			goto out;
+		ret = fusb302_wait_cc_idle(chip, &status1);
+		if (ret < 0)
+			goto out;
+		if (!ret && (status1 & FUSB_REG_STATUS1_RX_EMPTY) &&
+		    !chip->rx_len)
+			break;
+	}
+	if (i == FUSB302_RX_DISCARD_TRIES) {
+		fusb302_log(chip, "RX FIFO keeps filling, flushing it");
+		ret = fusb302_pd_rx_flush(chip);
+		if (ret < 0)
+			goto out;
+		fusb302_pd_rx_reset(chip, true);
+	}
+
+	/* Clear GCRCSENT: nothing sends GoodCRCs yet */
+	ret = fusb302_i2c_read(chip, FUSB_REG_INTERRUPTB, &interruptb);
+	if (ret < 0)
+		goto out;
+
+	ret = fusb302_pd_set_auto_goodcrc(chip, true);
+	if (ret < 0)
+		goto out;
+	gcrc_on = true;
+
+	ret = fusb302_wait_cc_idle(chip, &status1);
+	if (ret)
+		goto out;
+	if (status1 & FUSB_REG_STATUS1_RX_EMPTY)
+		goto out;
+
+	/*
+	 * ACTIVITY drops between the end of a packet and the GoodCRC to it,
+	 * which goes out within 195us (tTransmit): see that none follows
+	 */
+	usleep_range(300, 400);
+	ret = fusb302_wait_cc_idle(chip, &status1);
+	if (ret)
+		goto out;
+	ret = fusb302_i2c_read(chip, FUSB_REG_INTERRUPTB, &interruptb);
+	if (ret < 0)
+		goto out;
+	/*
+	 * Only the packet that was on CC as GoodCRCs came on can have gone
+	 * without one, if it is in the FIFO by now: whatever lands after it
+	 * got a GoodCRC from the chip
+	 */
+	chip->rx_discard = !(status1 & FUSB_REG_STATUS1_RX_EMPTY) &&
+			   !(interruptb & FUSB_REG_INTERRUPTB_GCRCSENT);
+	if (chip->rx_discard) {
+		ret = fusb302_pd_read_message(chip);
+		chip->rx_discard = false;
+		if (ret < 0)
+			goto out;
+	}
+	ret = fusb302_pd_read_messages(chip);
+out:
+	if (ret > 0) {
+		/*
+		 * CC stayed busy with GoodCRCs on, so which packets in the FIFO
+		 * the chip acknowledged is unknown: flush them all
+		 */
+		fusb302_log(chip, "CC busy as PD RX went on, flushing RX FIFO");
+		ret = fusb302_pd_rx_flush(chip);
+		fusb302_pd_rx_reset(chip, true);
+	}
+	/* TCPM then treats PD RX as off */
+	if (ret < 0 && gcrc_on)
+		fusb302_pd_set_auto_goodcrc(chip, false);
+	chip->rx_discard = false;
+
+	return ret;
+}
+
 static irqreturn_t fusb302_irq_intn(int irq, void *dev_id)
 {
 	struct fusb302_chip *chip = dev_id;

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
