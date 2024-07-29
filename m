Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC0FAC3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 07:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xPopxITRPUC81AIeA4NpSx/EM5vCtEAUmEQA9bhsMGc=; b=hSNGmostqi2O1h
	xQS48JMDBLl+ffqw4J+Xt9gy/tNE1zYOSvN3uAvyz97EB/TY7GVJYkKHt7smsj20j+DqjXnvbS4xG
	eN6UsQ/yHAF+FAlX8ecCYuYrrowFk/wr7XcMMSZ/3QnqIrE3L77xJ13X3rdya5Buu2wcAbbcgy2G+
	+fCsJbaKgRji2+92Kl83szF9i/KcZ2WAQR4Y0nk40I6MaccHlQepAr+LCHn8bA4zH8XGs4HQbO9d5
	4cTj0rLzu+XYsRt2ano3J16ydS7eFziua1oIybzYFSlUUbf9XmjMdQxSbUoSrjBFs58xH118PHVvv
	AyllMAzn1UUxtgUVh6eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYL8a-0000000AQPH-0oZb;
	Mon, 29 Jul 2024 07:49:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYL7x-0000000AQCc-367y;
	Mon, 29 Jul 2024 07:49:07 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYL7k-00028u-Q2; Mon, 29 Jul 2024 09:48:52 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Florian Eckert <fe@dev.tdt.de>
Cc: lee@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
 dmitry.torokhov@gmail.com, pavel@ucw.cz, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, ukleinek@debian.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v2 3/7] leds: add driver for LEDs from qnap-mcu devices
Date: Mon, 29 Jul 2024 09:48:50 +0200
Message-ID: <2916408.FA0FI3ke8A@diego>
In-Reply-To: <f7d10147a643f4d0d7cf2decbe490315@dev.tdt.de>
References: <20240728211751.2160123-1-heiko@sntech.de>
 <20240728211751.2160123-4-heiko@sntech.de>
 <f7d10147a643f4d0d7cf2decbe490315@dev.tdt.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_004905_809008_99AEDC47 
X-CRM114-Status: GOOD (  13.88  )
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

Hi Florian,

Am Montag, 29. Juli 2024, 08:24:26 CEST schrieb Florian Eckert:
> > +static int qnap_mcu_register_err_led(struct device *dev, struct
> > qnap_mcu *mcu, int num)
> > +{
> > +	struct qnap_mcu_err_led *err_led;
> > +	char tmp_buf[LED_MAX_NAME_SIZE];
> > +	int ret;
> > +
> > +	err_led = devm_kzalloc(dev, sizeof(*err_led), GFP_KERNEL);
> > +	if (!err_led)
> > +		return -ENOMEM;
> > +
> > +	err_led->mcu = mcu;
> > +	err_led->num = num;
> > +	err_led->mode = QNAP_MCU_ERR_LED_OFF;
> > +
> > +	snprintf(tmp_buf, LED_MAX_NAME_SIZE, "hdd%d:red:status", num + 1);
> > +	err_led->cdev.name = tmp_buf;
> 
> Should not the memory have to be allocated here via 'kzalloc' for 
> 'err_led->cdev.name'?
> After leaving the function, tmp_buf is no longer on the stack?

Reading the led_classdev_register thing, cdev->name is used only for
creating the final-name for the LED and thus copied into yet another
temporary buffer [0] .

And cdev->name is not accessed anymore outside the register function.

But thinking more about that, you're still right, because after registering
cdev->name is in a bad state, pointing to something no valid anymore.
So if the LED core changes behaviour in the future, this will cause breakage.

So I'll change that.


Thanks for catching that
Heiko



[0] https://elixir.bootlin.com/linux/v6.10.1/source/drivers/leds/led-class.c#L500
https://elixir.bootlin.com/linux/v6.10.1/source/drivers/leds/led-class.c#L503



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
