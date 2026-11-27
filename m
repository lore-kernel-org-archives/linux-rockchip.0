Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801A3606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 10:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=x2DXDyFY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=IwpDUpX1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8/LqioTj4hghRwftojRKX5XkwvG9XYgWb9uzS56uwb8=; b=x2DXDyFYP0Pvnq6LWiWFhRtkrH
	52xERFRa1JjVOSkCCp5P9eSvEBe64tW4JB9PkQpoUXymFSpMgo/ZXh7FO3Qj2TKlo3GvKUign3v8r
	Baz+QiGlsCd3tYtopR0JHQckFJeUSfa5tlPV8BU9HJvZyUkqroxynhR7ncXHeDYCZKwwiI8if3won
	EAjRApf0lblIbTSciHi8bwE1MWpVUNxwQBAYw9re5ds+p9qmR9sOgE11gJPA7nCezer8r7IKAIo6n
	WoNOlkrFq8FIYf6d8VjWRLLB2x47786nHatAnH0w8HeVHOl4gqumCAKv3ROe541km0ayUF+m/gycm
	Gi0cxphQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtOF-0000000Fdmt-1k5v;
	Fri, 27 Nov 2026 10:41:15 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWtO7-0000000Fdc2-33K9
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 10:41:09 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-4a357b1c649so4575199f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 02:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795776066; x=1796380866; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=v4a+pdVtUe1EJJdubOOaKfns4F8nxWcG7WQWMntGcGE=;
        b=IwpDUpX1fnE5WBFd8lUDl8E/s+gY2WWASaNzdQmTzQcaJe/S7TiZmhpbBpoGtkRvcF
         sKREUOlv+88FseJTV/fEPT9En9rQskEb/5D2lVBBp7swb5mOx2mdxhFVIksmpPbyfZqz
         LX6GqPPUvfLvxpq8m6LHYXyChCvmVdr1VBpdv4jXYnHEDx/MOt9XMm/vXbAjO0B5vpqO
         V6aU7ez7xIFa4dDQzp8Qh05MsTRQyRtP2dOna8DfrT1j1eKJOX6gxYgZONTOxrx5t5wr
         Q/ORkwvlTDk2i2dmRY8hn1jST5IDzaRbe1W9sJEp+rn7atv7mVEEShB3fJ1qM7gJr9QC
         SQEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795776066; x=1796380866;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=v4a+pdVtUe1EJJdubOOaKfns4F8nxWcG7WQWMntGcGE=;
        b=q5ltoD/i4LGaxILgkIk6tr+m5GItHUBqdyGQf9Nuy/S0Ahm6L1LTM2mNnVr3N+f4A4
         EwDTB0LkXNCUs+8UnQzEFTz6/yCdhpGVOynSpMmyXepTKy+kdTR+rhu7+lnd7ZO7juAT
         2jagO9NI+SOm2JFsyzZ9bku7EU1TOpeTeax/5bZf/0U04llw9z1dtc0oSRn2OVnwGnpa
         2NdmT2bnE+Gep+BEBoxMw0r84atxcDo8K2/oh25eJpFpBlsBoZbjKWwNwNuDfSi03CpU
         AUjf95H2unuuhw+Z97TgJOJhSKfSJnm/0IiaAA7X7KpQZ27DqnVszRgCW4r3Rjnik3A5
         oXLg==
X-Forwarded-Encrypted: i=1; AL+hErFaM5/B9Zo+IKQdLH9KhefWWhHiAaylKftqXdlJqImA7Pgj1mPkPjkWZmP9cX/aECTSQsPiVht7zktqoyizzg==@lists.infradead.org
X-Gm-Message-State: APuU4Z9qJUNII8QLnbVFQ/4rNxy6PqR7XoL4WVj4GKiZN2pJaM29Ezmo
	kzr8fjQ/xt9BNFp05n3IcY3j+t+OZsTfP7DKhd1C7+Ns3m/wjTjprQdcT6rV6XeZikmu09sMcs/
	6oYoWJgQ=
X-Gm-Gg: AZFdTZeCwFu/GarEu/Mrz0G2tM9cOFuIYdD5aA39Zqn30C5YARlg+tTt1MAwqTL59Rw
	cN1hcPWBprP8Fz4mx+iG109GFbYZ/+BAGz7ENrX+bD3TF4thYjlEOHqab9xWJwnod429EK+PPCE
	EweZ9DR8wdfd/KzTv57cv1BLM0FcmRl7Nu013zXpqj7CFTbDaXQ003zZM6mHQHVrAv4rif5EMNP
	aERXdfbvFbs4fdx6SuZfZUNMqYW7FLvx0+yV6OO6G+ydPxdAvn9r6BPZab6eKf3uNqIjo8ZogTB
	X2wtpaXq5fV/VB8lSOyqgIcTgFEHXYyGRnKKrrQ3VSFSxBNaJR1yEY9iNBnVfePP6flTT0fZWxq
	7Dr8Jfwh6ImN6u3aiqx9KU5TGI21DLfdW0hORR6SwwNjTyXmfohhjWMqblqAEvZ+zv/9G7mb4sv
	mWIdFvUwK4dalDQHlfDjWsvj7VH1sKnp2OPd2OQrcWJ+hcejQS4nf9qtWPA7p6lh3U7kmDIo4Pd
	/dQ6Kso02HJqhfrqvHR5wf5LTQhrjPZk6RA8y8y1nUaEz/SQ3w1067W9j7DcTRIxXKV+KJ6ypyC
	YRkeqc/08l8/M74xqS8UgHNZW0VFG0zCUf/TwHG7re6KrgQT5s6LKht4khRrkju3AvcS9nOxcT7
	BDwi5SoIf
X-Received: by 2002:a05:6000:2503:b0:4b7:8178:f7ea with SMTP id ffacd0b85a97d-4b78178f825mr23002295f8f.51.1795776065640;
        Fri, 27 Nov 2026 02:41:05 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6ae2dcf9sm45597649f8f.32.2026.11.27.02.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 02:41:05 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 27 Nov 2026 14:40:49 +0400
Subject: [PATCH v2 4/6] usb: typec: fusb302: Handle interrupts in the IRQ
 thread
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-fusb302-getsourcecap-v2-4-6770eb1e7945@flipper.net>
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
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=6105; i=alchark@flipper.net;
 h=from:subject:message-id; bh=kTIPW2yAFNq3399UJRyEGQQJQ5Ot4JrKKJTWUyt7UvY=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRzxpkx56cU58Ux7cg9c23RskXlTEI34j6femrz6dZPM
 YU32XOmdExkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hkY6xjpGDFycAjDV17QY/optnctQtbZrwu4yFWaX09O+Pet7YDUncWdBrF7xjRUPtC0Y/hkV3+u
 fOzd5nU1fvmIk6+6cb+HPeB6k5xhc/vwsa8c1cyYA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_024107_814569_A756DF72 
X-CRM114-Status: GOOD (  19.51  )
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

The threaded IRQ handler only disables the IRQ and queues irq_work, which
then does all the handling. The extra hop costs a context switch, and
leaves the handling at normal priority behind whatever else shares the
system workqueue.

Handle the interrupt in the IRQ thread instead, as suggested in review of
the switch to a threaded handler [1]. IRQF_ONESHOT keeps the line masked
meanwhile. Before resume, the I2C adapter may still be suspended: disable
the IRQ then, and have resume handle it before enabling it again, so that
nothing handles it twice at once and it stays a wakeup source. Make
irq_lock a mutex for that, as disabling an IRQ behind an I2C GPIO
expander may sleep.

Verified both at runtime and across suspend on a Rockchip RK3576 board.

Link: https://lore.kernel.org/r/20260312120418.99U0NPWL@linutronix.de [1]
Suggested-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Suggested-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/usb/typec/tcpm/fusb302.c | 82 +++++++++++++++++++++-------------------
 1 file changed, 43 insertions(+), 39 deletions(-)

diff --git a/drivers/usb/typec/tcpm/fusb302.c b/drivers/usb/typec/tcpm/fusb302.c
index 5cf1b78e7669..aa0e4dbe31db 100644
--- a/drivers/usb/typec/tcpm/fusb302.c
+++ b/drivers/usb/typec/tcpm/fusb302.c
@@ -87,9 +87,13 @@ struct fusb302_chip {
 
 	struct regulator *vbus;
 
-	spinlock_t irq_lock;
-	struct work_struct irq_work;
+	/*
+	 * A mutex, as disabling an IRQ behind an I2C GPIO expander, which
+	 * fusb302_irq_intn() does under it, may sleep
+	 */
+	struct mutex irq_lock;
 	bool irq_suspended;
+	/* The IRQ came before resume, which handles it and enables it again */
 	bool irq_while_suspended;
 	struct gpio_desc *gpio_int_n;
 	int gpio_int_n_irq;
@@ -1943,24 +1947,6 @@ static int fusb302_pd_rx_start(struct fusb302_chip *chip)
 	return ret;
 }
 
-static irqreturn_t fusb302_irq_intn(int irq, void *dev_id)
-{
-	struct fusb302_chip *chip = dev_id;
-	unsigned long flags;
-
-	/* Disable our level triggered IRQ until our irq_work has cleared it */
-	disable_irq_nosync(chip->gpio_int_n_irq);
-
-	spin_lock_irqsave(&chip->irq_lock, flags);
-	if (chip->irq_suspended)
-		chip->irq_while_suspended = true;
-	else
-		schedule_work(&chip->irq_work);
-	spin_unlock_irqrestore(&chip->irq_lock, flags);
-
-	return IRQ_HANDLED;
-}
-
 /*
  * Reading an interrupt register clears its flags in the chip, so keep them
  * pending until handled: a bus error on a later read would otherwise lose
@@ -1998,10 +1984,8 @@ static int fusb302_read_interrupts(struct fusb302_chip *chip, u8 *status0)
 	return ret;
 }
 
-static void fusb302_irq_work(struct work_struct *work)
+static void fusb302_irq_handle(struct fusb302_chip *chip)
 {
-	struct fusb302_chip *chip = container_of(work, struct fusb302_chip,
-						 irq_work);
 	int ret = 0;
 	u8 interrupt;
 	u8 interrupta;
@@ -2128,7 +2112,26 @@ static void fusb302_irq_work(struct work_struct *work)
 	}
 done:
 	mutex_unlock(&chip->lock);
-	enable_irq(chip->gpio_int_n_irq);
+}
+
+static irqreturn_t fusb302_irq_intn(int irq, void *dev_id)
+{
+	struct fusb302_chip *chip = dev_id;
+
+	mutex_lock(&chip->irq_lock);
+	if (chip->irq_suspended) {
+		/* Only once, as resume enables it once */
+		if (!chip->irq_while_suspended)
+			disable_irq_nosync(chip->gpio_int_n_irq);
+		chip->irq_while_suspended = true;
+		mutex_unlock(&chip->irq_lock);
+		return IRQ_HANDLED;
+	}
+	mutex_unlock(&chip->irq_lock);
+
+	fusb302_irq_handle(chip);
+
+	return IRQ_HANDLED;
 }
 
 static int init_gpio(struct fusb302_chip *chip)
@@ -2226,8 +2229,7 @@ static int fusb302_probe(struct i2c_client *client)
 	if (!chip->wq)
 		return -ENOMEM;
 
-	spin_lock_init(&chip->irq_lock);
-	INIT_WORK(&chip->irq_work, fusb302_irq_work);
+	mutex_init(&chip->irq_lock);
 	INIT_DELAYED_WORK(&chip->bc_lvl_handler, fusb302_bc_lvl_handler_work);
 	INIT_DELAYED_WORK(&chip->rx_recheck, fusb302_pd_rx_recheck_work);
 	init_tcpc_dev(&chip->tcpc_dev);
@@ -2294,7 +2296,6 @@ static void fusb302_remove(struct i2c_client *client)
 
 	disable_irq_wake(chip->gpio_int_n_irq);
 	free_irq(chip->gpio_int_n_irq, chip);
-	cancel_work_sync(&chip->irq_work);
 	cancel_delayed_work_sync(&chip->bc_lvl_handler);
 	cancel_delayed_work_sync(&chip->rx_recheck);
 	tcpm_unregister_port(chip->tcpm_port);
@@ -2306,14 +2307,13 @@ static void fusb302_remove(struct i2c_client *client)
 static int fusb302_pm_suspend(struct device *dev)
 {
 	struct fusb302_chip *chip = dev->driver_data;
-	unsigned long flags;
 
-	spin_lock_irqsave(&chip->irq_lock, flags);
+	mutex_lock(&chip->irq_lock);
 	chip->irq_suspended = true;
-	spin_unlock_irqrestore(&chip->irq_lock, flags);
+	mutex_unlock(&chip->irq_lock);
 
-	/* Make sure any pending irq_work is finished before the bus suspends */
-	flush_work(&chip->irq_work);
+	/* Let an IRQ being handled finish before the bus suspends */
+	synchronize_irq(chip->gpio_int_n_irq);
 	/* No RX FIFO recheck may run until the bus is back either */
 	cancel_delayed_work_sync(&chip->rx_recheck);
 	return 0;
@@ -2322,15 +2322,19 @@ static int fusb302_pm_suspend(struct device *dev)
 static int fusb302_pm_resume(struct device *dev)
 {
 	struct fusb302_chip *chip = dev->driver_data;
-	unsigned long flags;
+	bool pending;
 
-	spin_lock_irqsave(&chip->irq_lock, flags);
-	if (chip->irq_while_suspended) {
-		schedule_work(&chip->irq_work);
-		chip->irq_while_suspended = false;
-	}
+	mutex_lock(&chip->irq_lock);
+	pending = chip->irq_while_suspended;
+	chip->irq_while_suspended = false;
 	chip->irq_suspended = false;
-	spin_unlock_irqrestore(&chip->irq_lock, flags);
+	mutex_unlock(&chip->irq_lock);
+
+	/* The IRQ stays disabled until then, so nothing else handles it */
+	if (pending) {
+		fusb302_irq_handle(chip);
+		enable_irq(chip->gpio_int_n_irq);
+	}
 
 	/* Look at the RX FIFO again, in case suspend cut a recheck short */
 	mutex_lock(&chip->lock);

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
