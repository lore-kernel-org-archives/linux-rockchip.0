Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EF53CD5BC9
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 14:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Us/OG9MZsnAWKPWX5HmyQZ/yGpZgLbLOOxZoGq19MPU=; b=t9BQzqudqYdhbZ
	0t5V9Pu+5q66z25XqJ7WJM7jO1/5Tz0POoEVPMl0yJzD1+Nt9cMD6vP3VXmiA2nq8Z5uWQLTfl9y9
	kjZgdj7n17ex4aMEl67sBaqaMJyRoK6xgCYBipabAL7R+dUx55UWmvGIDeHrL1FfP+2mDAPokdopc
	+ZXQmNzKOc51ZDTdJjT08XBjmd47OfnWvaleyw+tBLv8hzQ+sQIufJ7ctFyM/qQokv1yVXgVmTUPW
	XAMfKFVnr4lmKJMyvdtoTRvUeyxu9/BnwHIE9AwQbB6ML6aJdF0dmoxQCVDm8RjX2E+7jsKyeuNiP
	z8k8uOBE0rVPcdXPUk/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smDnp-00000008n4U-2XlY;
	Thu, 05 Sep 2024 14:49:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smDmr-00000008mvY-00kd;
	Thu, 05 Sep 2024 14:48:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Z9IgYD/2bP3HwiWDe9m6U4cOpfzwTsOumgc5N6zAYJA=; b=w/b4diqw5J8ZIWZLi5djL0KZax
	oYskcatg6UJKVdLpBuSCCoPxb857ufeJN9eshcmsi68J/7ptbzWk043BsCHcRZ+oXflAwquP5rcoA
	MV40is1liBi9d8axQSJHuIhypek6r9Lvz4WU8t+VItpygoIB3Qrdq4VKamWkE7HBi7vMET96xV0oC
	yyF4mAvu0ThWEjYfLULsTtkVHc3A6s7wx5yRnUz9WjN0FdjUpRdKbQ0bD/gnSFwMp9guoDc2fL3HW
	4iE5WgDR4IijnID5sLC2t6JfrtyLyvB2hFOMLYI26aTLd/qZk5RdFq5LFYVTydBQ05sXM6fHcZQsu
	0P35Q/gw==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1smDmd-0002HD-Hx; Thu, 05 Sep 2024 16:48:27 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Lee Jones <lee@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 jdelvare@suse.com, linux@roeck-us.net, dmitry.torokhov@gmail.com,
 pavel@ucw.cz, ukleinek@debian.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v6 3/7] leds: add driver for LEDs from qnap-mcu devices
Date: Thu, 05 Sep 2024 16:50:22 +0200
Message-ID: <3627679.ZzFAyJQhcr@diego>
In-Reply-To: <20240829162705.GR6858@google.com>
References: <20240825203235.1122198-1-heiko@sntech.de>
 <20240825203235.1122198-4-heiko@sntech.de> <20240829162705.GR6858@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_074841_076577_C150680E 
X-CRM114-Status: GOOD (  25.72  )
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

Am Donnerstag, 29. August 2024, 18:27:05 CEST schrieben Sie:
> On Sun, 25 Aug 2024, Heiko Stuebner wrote:
> 
> > This adds a driver that connects to the qnap-mcu mfd driver and provides
> > access to the LEDs on it.
> > 
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>

[...]

> > +{
> > +	struct qnap_mcu_err_led *err_led = cdev_to_qnap_mcu_err_led(led_cdev);
> > +	u8 cmd[] = { 0x40, 0x52, 0x30 + err_led->num, 0x30 };
> 
> Really not fan of these magic values being used raw like this.

Me neither, I tried my luck with QNAP support to get some sort of
documentation on what these magic characters mean, and it did
even get up to some "product team" but ultimately they decided
against providing any help.

But ok, if it makes you feel more at ease, I'll switch to at least
replaying ascii-values where possible :-) .


> > +static int qnap_mcu_err_led_blink_set(struct led_classdev *led_cdev,
> > +				      unsigned long *delay_on,
> > +				      unsigned long *delay_off)
> > +{
> > +	struct qnap_mcu_err_led *err_led = cdev_to_qnap_mcu_err_led(led_cdev);
> > +	u8 cmd[] = { 0x40, 0x52, 0x30 + err_led->num, 0x30 };
> > +
> > +	/* LED is off, nothing to do */
> > +	if (err_led->mode == QNAP_MCU_ERR_LED_OFF)
> > +		return 0;
> > +
> > +	if (*delay_on < 500) {
> 
> Setting delay_on based on the current value of delay_on sounds sketchy.

As far as I understood the API, the parameter should indicated the wanted
blink time, while the function then should set in those variables the delay
the driver actually set.

So if the delay_on is < 500, select the fast blink mode, which is this
100/100 variant and for everything >= 500 the slow blink mode.

I.e. you set the trigger to "timer" and this creates the delay_on and
delay_off sysfs files, where you put you wish into and can read the
actually set delays out of.


> > +		*delay_on = 100;
> > +		*delay_off = 100;
> > +		err_led->mode = QNAP_MCU_ERR_LED_BLINK_FAST;
> > +	} else {
> > +		*delay_on = 500;
> > +		*delay_off = 500;
> > +		err_led->mode = QNAP_MCU_ERR_LED_BLINK_SLOW;
> > +	}
> 
> How do you change from a fast to a slow blinking LED and back again?

echo timer > /sys/class/leds/hdd4:red:status/trigger
## creates delay_on + delay_off sysfs files

echo 150 > /sys/class/leds/hdd4:red:status/delay_on
cat /sys/class/leds/hdd4:red:status/delay_on --> 100

echo 250 > /sys/class/leds/hdd4:red:status/delay_on
cat /sys/class/leds/hdd4:red:status/delay_on --> 100

## switch to slow blink

echo 500 > /sys/class/leds/hdd4:red:status/delay_on
cat /sys/class/leds/hdd4:red:status/delay_on --> 500

echo 600 > /sys/class/leds/hdd4:red:status/delay_on
cat /sys/class/leds/hdd4:red:status/delay_on --> 500

## switch to fast blink again

echo 150 > /sys/class/leds/hdd4:red:status/delay_on
cat /sys/class/leds/hdd4:red:status/delay_on --> 100

echo heartbeat > /sys/class/leds/hdd4:red:status/trigger
## removes the delay_on + delay_off files again


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
