Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BA5DC531DF
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 21:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mp+WPt4ebkMELXc2sbqrT9JtNVDCtSKc2fzhqLqDDMg=; b=2ubbVQ/Ym06INO
	ThnPOkFYHu8spLfU+3YHue3Vadc9xDVCE6xnJMPoltBkHYyQXzA1c4tO69xqHVP9OuEv/Dhnr61SE
	hSeFd+MD0WJ+BDIpNy8qYbZFDbdMPbWZf0srkW2yEblB8iYe4BNxJu/M/J3OWnxQYlq2PwkNDmTMR
	6PFngvvzRS9UHg8rEjxxHs+Q6GypcvU12QMWFxBCg+6sHlNS6g+E1hWZ2I8ST+NT9Gxoo+ZfPa7ex
	6VoIHLe6TXaJSds2A1W1BRE7qSE1FeoWGQHLbR8IfklbvJwyRmSOHkLV/QrdGJDIRyyAeavYBlud4
	P7EdvkM894c04OLZJkbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfnGc-0000000HHtr-1TuP;
	Sun, 18 Aug 2024 21:16:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfnFs-0000000HHlg-3oAW;
	Sun, 18 Aug 2024 21:16:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tw/4lQQeW1YOwp5kih2jcJwbHpRnZLldiL+qxm7D/ss=; b=pMP5a3s7ErLWhc6t52Ur7h8ZvE
	lw8pNJDbDqNy1v472TSBUqP0wvGQanZharekO2Mf+IABMYeuGqKDn7sjgrVKI43QEUpQTv9RqynFC
	Nzsine5ZMHZRnikDcLMJjRmaxSb74lxvlm+fACS+aRXhy8fKOPn7CCF/q/4J54IePhsFicE/ygz1x
	BgKJYUPplgQAXh1SyVKhUU2Qjb6Bg7jxjK/DEGvgOs6RKeMQy7eekrMAdHkwvjaabsNNphnojZOOy
	zExi0I9ZiigaGxUecfLZuV9ZjDO9bMByc+vNZL7YHPXozDZPu8MmkA1t+6E1zTzImzJCOF7uhCCpu
	fm0E9Q5Q==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sfnFZ-0004Bo-Cu; Sun, 18 Aug 2024 23:15:45 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lee Jones <lee@kernel.org>
Cc: jdelvare@suse.com, linux@roeck-us.net, dmitry.torokhov@gmail.com,
 pavel@ucw.cz, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ukleinek@debian.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v4 2/7] mfd: add base driver for qnap-mcu devices
Date: Sun, 18 Aug 2024 23:15:58 +0200
Message-ID: <2875938.88bMQJbFj6@diego>
In-Reply-To: <20240816171336.GF5853@google.com>
References: <20240810184743.277248-1-heiko@sntech.de>
 <20240810184743.277248-3-heiko@sntech.de> <20240816171336.GF5853@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_141605_012265_EF0C8CCE 
X-CRM114-Status: GOOD (  33.48  )
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

Hi Lee,

thanks a lot for your review,

Am Freitag, 16. August 2024, 19:13:36 CEST schrieb Lee Jones:
> On Sat, 10 Aug 2024, Heiko Stuebner wrote:


> > +/*
> > + * MFD core driver for the MCU in Qnap NAS devices that is connected
> 
> No such thing as an "MFD".  Please describe the device.
> 
> Is it QNAP or Qnap?  Please be consistent.

Looks like QNAP spells itself in all upper case on their website, so I did
go with that


> > + * via a dedicated UART port
> > + *
> > + * Copyright (C) 2024 Heiko Stuebner <heiko@sntech.de>
> > + */
> > +
> > +#include <linux/export.h>
> 
> What is this used for?

the #define EXPORT_SYMBOL_GPL that gets used below lives in that file.


> > + * struct qnap_mcu - QNAP NAS embedded controller
> > + *
> > + * @serdev:	Pointer to underlying serdev
> > + * @bus_lock:	Lock to serialize access to the device
> > + * @reply_lock:	Lock protecting @reply
> > + * @reply:	Pointer to memory to store reply payload
> > + * @variant:	Device variant specific information
> > + * @version:	MCU firmware version
> > + */
> > +struct qnap_mcu {
> > +	struct serdev_device *serdev;
> > +	/* Serialize access to the device */
> 
> Comments and K-doc is OOT.

I don't really know what OOT means, but I guess you mean that only
one or the other is needed?

Though somehow checkpatch was very unhappy without those comments directly
above the mutex declaration. But I can of course remove these additional
comments


> > +	mutex_lock(&mcu->reply_lock);
> > +	if (!reply) {
> > +		dev_warn(dev, "received %zu bytes, we were not waiting for\n",
> > +			 size);
> > +		mutex_unlock(&mcu->reply_lock);
> 
> guard(mutex)?

thanks a lot for pointing out this neat feature


> > +int qnap_mcu_exec_with_ack(struct qnap_mcu *mcu,
> > +			   const u8 *cmd_data, size_t cmd_data_size)
> > +{
> > +	u8 ack[2];
> > +	int ret;
> > +
> > +	ret = qnap_mcu_exec(mcu, cmd_data, cmd_data_size, ack, sizeof(ack));
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* Should return @0 */
> > +	if (ack[0] != 0x40 || ack[1] != 0x30) {
> 
> Why not use the char variants?

Consistency, I guess.

While the basic commands _seem_ to use values equivalent to ascii
characters, I've also seen other commands where the values are not based
on those but use real numbers / hex values for data instead.

So I opted to go with hex values for all and kept the comments, if someone
wants to get started talking to their MCU via a terminal.


> > +
> > +/*
> > + * The MCU controls power to the peripherals but not the CPU.
> > + *
> > + * So using the pmic to power off the system keeps the MCU and hard-drives
> > + * running. This also then prevents the system from turning back on until
> > + * the MCU is turned off by unplugging the power-cable.
> > + * Turning off the MCU alone on the other hand turns off the hard-drives,
> > + * LEDs, etc while the main SoC stays running - including its network ports.
> > + */
> > +static int qnap_mcu_power_off(struct sys_off_data *data)
> > +{
> > +	struct qnap_mcu *mcu = data->cb_data;
> > +	int ret;
> > +	u8 cmd[] = {
> > +		[0] = 0x40, /* @ */
> > +		[1] = 0x43, /* C */
> > +		[2] = 0x30  /* 0 */
> > +	};
> 
> u8 cmd [] = { '@', 'C', '0' };  ?

see above.

I guess this is a style choice, we could of course go with
	u8 cmd[] = { 0x40, 0x43, 0x30 }
if you prefer that.


> > +static int qnap_mcu_probe(struct serdev_device *serdev)
> > +{
> > +	struct device *dev = &serdev->dev;
> > +	struct qnap_mcu *mcu;
> > +	int ret;
> > +
> > +	mcu = devm_kzalloc(dev, sizeof(*mcu), GFP_KERNEL);
> > +	if (!mcu)
> > +		return -ENOMEM;
> > +
> > +	mcu->serdev = serdev;
> > +	dev_set_drvdata(dev, mcu);
> > +
> > +	mcu->variant = of_device_get_match_data(dev);
> > +	if (!mcu->variant)
> > +		return -ENODEV;
> > +
> > +	mutex_init(&mcu->bus_lock);
> > +	mutex_init(&mcu->reply_lock);
> 
> Can you not get away with a single lock?

Of course all behaviour information of the device come from observation
alone right now, but it does look like the MCU does not cause
transmissions of its own, but only as a reply to a sent command.

So yes, I can probably do away with the whole reply assignment and just
use one dataset and thus just the main lock.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
