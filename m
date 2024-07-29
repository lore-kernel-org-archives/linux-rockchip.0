Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28740C3DA49
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 00:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BEk2pgHy/o2k+8FyUJFL2zXtMAiipgUJ3IlJSUPYJ2Y=; b=wpL0Dp/KEfR6uR
	XumqpvTtFpQe1jCFn7SDqAc3ZuqYV/8L3BssOlcCRip3VLSjZr+cEHJoKtZgH04JdUwSviAC4ZTgn
	4Z3PWyTNxnJh9dhd42juxQcuAHfCmFosPGu9OuVxWZvS0y1Niqo3svFN4kf4hXMf+sB6ZiZLzYel5
	LfwYJ7wLd6ylBd2tvALiOqpo+jtYe/eMNmHWaZI6D+VJ1PamfNtNHOJEB0GJQxfJD3EQBnpjR0iDG
	6eKzO1jFweeukEKYp/g8bZcdyIwWmYvR74jV7Zqpap1kvXVeMbJjV45Y9RdtNadyJ+g2ve1vso66Z
	pt42cnLlUy2bKRC5uTfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYE0P-00000009U52-0GHS;
	Mon, 29 Jul 2024 00:12:49 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYDzx-00000009TzM-2sjn;
	Mon, 29 Jul 2024 00:12:23 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-709465248b7so841132a34.3;
        Sun, 28 Jul 2024 17:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722211939; x=1722816739; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wq6LCH29AVIUOnczbAjX+lNk/5KihGhzsCJtp4bWP14=;
        b=HokAfbtW9A3jOI1Q4kxssLFzfma8vEBYgy1W78+QqBZ5qDsIWa/MUmqP5jhnKl7PeS
         IRgrwdvCUnUMAE/qpCbXm1Xxk2mlEN/Ul8TtRtywKa/mNYO7heiabRP2Ei3ctYzveafp
         MXiHExP3zMJfZYmmSeyUmvoj/ldUiu19WmJenisT0JwzdpA5DEM5UqxIKJqViunKOvQ+
         K7M3QNgxkTKIRxMxQpidJpcikBUSucPP3kTFj0G/a+b7UJk3a284ev7u7dAhZ6/7xBIX
         FJuY+V+UqiDN1zgKsoOJjh/MmG/4qJd5nFoA9y9AK3fe0I0/jM2G0SFxt4EIwhztrG4b
         MTmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722211939; x=1722816739;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wq6LCH29AVIUOnczbAjX+lNk/5KihGhzsCJtp4bWP14=;
        b=c+c8yGVKFIJcbslksOMMuoJg4yTpIs6vbqkfCemPgv/g7jSLPDTGn6Q10a6bpSsKA+
         E/U+8ee6iEDkRIJDAjuViUoTsD3odhsBQuAbppPH3KN4hWVZFcRn62gBdJsjQRSik5ms
         7g5CdM31U5GpWIPw5uaxUCjx0gWwbM7PjIM2JzznQDIGjr6zZoILiuwup7bV9JZCY5VV
         ous0LivNjCCcBjeVBjoayn8DwGDgMOMP+akmEWPHeGqVCO7ZSPeTULElbofW6pi2WU3P
         LYVeStsmGRWu77tOytQr2J7/sgSvI4ABKgFSH1grr/rQ0+YMY3KS9Orq7ojRA35Le2qj
         A7+w==
X-Forwarded-Encrypted: i=1; AJvYcCVB5mLfzgz2tlTsoZ9bad8VHWsQSh4x4m+hREE4WVK9WpfsEYWCXEmflIcpsJ7MKpBZNv2CFwYAqIaqL7idpikaGYoDePHlYkqZm3gkm62siYlCSs6LCJuRmWXB/Oxnif3r/EcvROIKcThbyyWAJ5rJ918Ehq1fILQ=
X-Gm-Message-State: AOJu0YxxrXnSQ1oqGZDOZ6INQRf4Pmzm6DYvhuPjOLVuwcbbXwDXIC1m
	7gk0jgk07449eSQw040wI+pRjyhvc+gb6hZRX0w0vQrl82bqfwUz
X-Google-Smtp-Source: AGHT+IGVyP6gbXtVMP8ZYuvJnPbXecyEUUCdfpDFZwJFJscmplOk9XdMFLdqjqofeRs+8ynqhon/yw==
X-Received: by 2002:a05:6830:2714:b0:709:3b82:7680 with SMTP id 46e09a7af769-70940c1aa9fmr9821703a34.19.1722211938803;
        Sun, 28 Jul 2024 17:12:18 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:74de:62d6:bed2:4c63])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2cdb73eb9b1sm9153999a91.28.2024.07.28.17.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jul 2024 17:12:18 -0700 (PDT)
Date: Sun, 28 Jul 2024 17:12:15 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: lee@kernel.org, jdelvare@suse.com, linux@roeck-us.net, pavel@ucw.cz,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	ukleinek@debian.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v2 4/7] Input: add driver for the input part of qnap-mcu
 devices
Message-ID: <ZqbeX923IR3tp5Ns@google.com>
References: <20240728211751.2160123-1-heiko@sntech.de>
 <20240728211751.2160123-5-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240728211751.2160123-5-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_171221_762625_3B7822E2 
X-CRM114-Status: GOOD (  38.23  )
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

Hi Heiko,

On Sun, Jul 28, 2024 at 11:17:48PM +0200, Heiko Stuebner wrote:
> The MCU controls the power-button and beeper, so expose them as input
> device. There is of course no interrupt line, so the status of the
> power-button needs to be polled. To generate an event the power-button
> also needs to be held for 1-2 seconds, so the polling interval does
> not need to be overly fast.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  MAINTAINERS                         |   1 +
>  drivers/input/misc/Kconfig          |  12 +++
>  drivers/input/misc/Makefile         |   1 +
>  drivers/input/misc/qnap-mcu-input.c | 156 ++++++++++++++++++++++++++++
>  4 files changed, 170 insertions(+)
>  create mode 100644 drivers/input/misc/qnap-mcu-input.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index f690b55730111..58574f278bfed 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -18345,6 +18345,7 @@ F:	drivers/media/tuners/qm1d1c0042*
>  QNAP MCU DRIVER
>  M:	Heiko Stuebner <heiko@sntech.de>
>  S:	Maintained
> +F:	drivers/input/misc/qnap-mcu-input.c
>  F:	drivers/leds/leds-qnap-mcu.c
>  F:	drivers/mfd/qnap-mcu.c
>  F:	include/linux/qnap-mcu.h
> diff --git a/drivers/input/misc/Kconfig b/drivers/input/misc/Kconfig
> index 6ba984d7f0b18..4ab8fe8301635 100644
> --- a/drivers/input/misc/Kconfig
> +++ b/drivers/input/misc/Kconfig
> @@ -900,6 +900,18 @@ config INPUT_HISI_POWERKEY
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called hisi_powerkey.
>  
> +config INPUT_QNAP_MCU
> +	tristate "Input Support for QNAP MCU controllers"
> +	depends on MFD_QNAP_MCU
> +	help
> +	  This option enables support for input elements available on
> +	  embedded controllers used in QNAP NAS devices.
> +
> +	  This includes a polled power-button as well as a beeper.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called qnap-mcu-input.
> +
>  config INPUT_RAVE_SP_PWRBUTTON
>  	tristate "RAVE SP Power button Driver"
>  	depends on RAVE_SP_CORE
> diff --git a/drivers/input/misc/Makefile b/drivers/input/misc/Makefile
> index 04296a4abe8e8..05f5d0072b08f 100644
> --- a/drivers/input/misc/Makefile
> +++ b/drivers/input/misc/Makefile
> @@ -66,6 +66,7 @@ obj-$(CONFIG_INPUT_PMIC8XXX_PWRKEY)	+= pmic8xxx-pwrkey.o
>  obj-$(CONFIG_INPUT_POWERMATE)		+= powermate.o
>  obj-$(CONFIG_INPUT_PWM_BEEPER)		+= pwm-beeper.o
>  obj-$(CONFIG_INPUT_PWM_VIBRA)		+= pwm-vibra.o
> +obj-$(CONFIG_INPUT_QNAP_MCU)		+= qnap-mcu-input.o
>  obj-$(CONFIG_INPUT_RAVE_SP_PWRBUTTON)	+= rave-sp-pwrbutton.o
>  obj-$(CONFIG_INPUT_RB532_BUTTON)	+= rb532_button.o
>  obj-$(CONFIG_INPUT_REGULATOR_HAPTIC)	+= regulator-haptic.o
> diff --git a/drivers/input/misc/qnap-mcu-input.c b/drivers/input/misc/qnap-mcu-input.c
> new file mode 100644
> index 0000000000000..9bac7ea2c6b80
> --- /dev/null
> +++ b/drivers/input/misc/qnap-mcu-input.c
> @@ -0,0 +1,156 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +/*
> + * Driver for input events on QNAP-MCUs
> + *
> + * Copyright (C) 2024 Heiko Stuebner <heiko@sntech.de>
> + */
> +
> +#include <linux/input.h>
> +#include <linux/mfd/qnap-mcu.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/slab.h>
> +#include <uapi/linux/input-event-codes.h>
> +
> +/*
> + * The power-key needs to be pressed for a while to create an event,
> + * so there is no use for overly frequent polling.
> + */
> +#define POLL_INTERVAL		500
> +
> +struct qnap_mcu_input_dev {
> +	struct input_dev *input;
> +	struct qnap_mcu *mcu;
> +	struct device *dev;
> +
> +	struct work_struct beep_work;
> +	int beep_type;
> +};
> +
> +static void qnap_mcu_input_poll(struct input_dev *input)
> +{
> +	struct qnap_mcu_input_dev *idev = input_get_drvdata(input);
> +	u8 cmd[] = {
> +		[0] = 0x40, /* @ */
> +		[1] = 0x43, /* C */
> +		[2] = 0x56  /* V */
> +	};
> +	u8 reply[4];
> +	int state, ret;
> +
> +	/* poll the power button */
> +	ret = qnap_mcu_exec(idev->mcu, cmd, sizeof(cmd), reply, sizeof(reply));
> +	if (ret)
> +		return;
> +
> +	/* First bytes must mirror the sent command */
> +	if (memcmp(cmd, reply, sizeof(cmd))) {
> +		dev_err(idev->dev, "malformed data received\n");
> +		return;
> +	}
> +
> +	state = reply[3] - 0x30;
> +	input_event(input, EV_KEY, KEY_POWER, state);
> +	input_sync(input);
> +}
> +
> +static void qnap_mcu_input_beeper_work(struct work_struct *work)
> +{
> +	struct qnap_mcu_input_dev *idev =
> +		container_of(work, struct qnap_mcu_input_dev, beep_work);
> +	u8 cmd[] = {

Can this be const?

> +		[0] = 0x40, /* @ */
> +		[1] = 0x43, /* C */
> +		[2] = (idev->beep_type == SND_TONE) ? 0x33 : 0x32
> +	};
> +
> +	qnap_mcu_exec_with_ack(idev->mcu, cmd, sizeof(cmd));
> +}
> +
> +static int qnap_mcu_input_event(struct input_dev *input, unsigned int type,
> +				unsigned int code, int value)
> +{
> +	struct qnap_mcu_input_dev *idev = input_get_drvdata(input);
> +
> +	if (type != EV_SND || (code != SND_BELL && code != SND_TONE))
> +		return -EOPNOTSUPP;
> +
> +	if (value < 0)
> +		return -EINVAL;
> +
> +	/* beep runtime is determined by the MCU */
> +	if (value == 0)
> +		return 0;
> +
> +	/* Schedule work to actually turn the beeper on */
> +	idev->beep_type = code;
> +	schedule_work(&idev->beep_work);

I do not see this being canceled anywhere. You should define ->close()
method for the input device and cancel the work there.

> +
> +	return 0;
> +}
> +
> +static int qnap_mcu_input_probe(struct platform_device *pdev)
> +{
> +	struct qnap_mcu *mcu = dev_get_drvdata(pdev->dev.parent);
> +	struct qnap_mcu_input_dev *idev;
> +	struct device *dev = &pdev->dev;
> +	struct input_dev *input;
> +	int ret;
> +
> +	idev = devm_kzalloc(dev, sizeof(*idev), GFP_KERNEL);
> +	if (!idev)
> +		return -ENOMEM;
> +
> +	input = devm_input_allocate_device(dev);
> +	if (!input)
> +		return dev_err_probe(dev, -ENOMEM, "no memory for input device\n");
> +
> +	idev->input = input;
> +	idev->dev = dev;
> +	idev->mcu = mcu;
> +
> +	input_set_drvdata(input, idev);
> +
> +	input->name		= "qnap-mcu";
> +	input->phys		= "qnap-mcu-input/input0";
> +	input->id.bustype	= BUS_HOST;
> +	input->id.vendor	= 0x0001;
> +	input->id.product	= 0x0001;
> +	input->id.version	= 0x0100;
> +	input->event		= qnap_mcu_input_event;
> +
> +	input_set_capability(input, EV_KEY, KEY_POWER);
> +	input_set_capability(input, EV_SND, SND_BELL);
> +	input_set_capability(input, EV_SND, SND_TONE);
> +
> +	INIT_WORK(&idev->beep_work, qnap_mcu_input_beeper_work);
> +
> +	ret = input_setup_polling(input, qnap_mcu_input_poll);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "unable to set up polling\n");
> +
> +	input_set_poll_interval(input, POLL_INTERVAL);
> +
> +	ret = input_register_device(input);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "unable to register input device\n");
> +
> +	qnap_mcu_input_poll(input);
> +	input_sync(input);

Why do you need this here? Either the device will be opened by now (and
will be polled) or there are no listeners and events will be dropped on
the floor...

Thanks.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
