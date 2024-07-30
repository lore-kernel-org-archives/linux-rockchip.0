Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C57FC3DA70
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 15:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=doN2it45vSSCFUe9ra7btRImVDIitToWjQLOBmvQyO8=; b=XZrhOKGYgjzuXJ
	I5WxAmIlzAO4vnYg9WL22ms86J4DNkYQCKUZzBVebUL5euVMgMbjSFeJFohg2t71zxHyzXauDF2uH
	skrEpp14gC37X3IK3JBMN8aYgk+IfX/bgLe3K9ZGsdvJ180Hl9GoZiHRJomfFVIzhVebiOeg1nSwD
	NDKdVJ41uj1uSGuhVypWy6M5DsKg8L9rEpkBgonxau69tiXsDv6FPXYZrEoniz8V1sndPBjJSGw04
	2UnvJRSjdvti76KUMxlf8nDW6YbG/szWpKdZMxToQslx7BgYQ392SCqzJJlWiGQApXFnJeJI/1mZq
	nXVmjEJn5f1IaMwBsCgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYolr-0000000FfHQ-1WFR;
	Tue, 30 Jul 2024 15:28:15 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYolO-0000000FfBB-385B;
	Tue, 30 Jul 2024 15:27:47 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-70d333d57cdso3185504b3a.3;
        Tue, 30 Jul 2024 08:27:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722353265; x=1722958065; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k9fB8RPDY0z+oCE/hyzm1c3RzHRC+GlwxeI848w9iZo=;
        b=MHRUrzUmqpILoNwbjmZnKP57tQ/EskMK/tS7UMTiNzZH62ieNKuGqmZq3u9OOw2iUf
         Pd43EOcFkmcYRQZ/A74lFN13LU0aBgM+alBnyDMqyzmNpQuRFoszxc411UgIOIlubdEA
         h2qyhvgkQFx7YNXxLbxJb7bHbQIpQXM4StHSvmsCp36o/pz8U6UXTr69iHW+2LvmzF3C
         bffPwtSxOc6xLLBVxOk87cyRWFSQ2gAEBJe2XTThagGO5X1H5s1eDCYr2alm4Vx/JcUX
         S3ZHMRQ1OWgGePkUKfYNDcTDzcd0JcbInou/78HT0iVmHcKad5iqEOrmEJvCY69qrIHo
         WZDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722353265; x=1722958065;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k9fB8RPDY0z+oCE/hyzm1c3RzHRC+GlwxeI848w9iZo=;
        b=CQBKPXJviU0LrerwEAC5LoWW4W6Qiqy1AkG8bO/u6Dd+mZ/bQ0Rg7kmuxBNS5NW7Xf
         Piyx03kuSRG1HFFsSPgdI9oLKS/GRT3Z8pI902FZ92zfT863i0kshNMoqJj4XaZ4wpF2
         Rz11VraJt45PqP5L+An7vAIhGGWifq7zxHUvUQ9qlrxQ1sHyhpejkAJhNnrGepm7ITDs
         VnNRyS7WWqvfqU5CFEmlNsiqBxB8TEwrEmwJRWc7ns9aGA5Pg0+ZCnf0jFUSSBCmSZ4O
         9FMn8hp9x3ERn171z3V4xPWkarTpSwa1bvNmOIJqxdVzheO0hiWbvPME9LY5yDt/fs2j
         /jqg==
X-Forwarded-Encrypted: i=1; AJvYcCXdLJx0wpV9mJuC4tRgt+xvvH/xXqqx61OdUaJ1ItKu/GMmQD74XRB/KuT5oJG1Ehj7I60fLbPJ+E1uhRYBjshsJgTk10u7DTVF7/PvyurXFAoDrSJ4utKiIK66GCYKCy2rWq4HL2QbZMO1PWEtk/5JyoH+udr1L+s=
X-Gm-Message-State: AOJu0YwJXu8v7OOc/gSjgbbkf8AZlJcgGXSaotAdb7WbZjJ2YPS1paUa
	nuzECGIkeCDq7YkOLQqQnFaqOE0zuzo9ukoy3jmijhMjlJ+14284
X-Google-Smtp-Source: AGHT+IH53uN+ps3K8FG722OlZVH9uQ9lhJBPizHtofyjk7vLzArAEYnaqOOhdbpSqtoFe0xY9sV3lg==
X-Received: by 2002:a05:6a21:6da0:b0:1c2:8ece:97ae with SMTP id adf61e73a8af0-1c4a13afd52mr8779302637.34.1722353265287;
        Tue, 30 Jul 2024 08:27:45 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead86ff47sm8863987b3a.145.2024.07.30.08.27.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 08:27:44 -0700 (PDT)
Date: Tue, 30 Jul 2024 08:27:42 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Heiko Stuebner <heiko@sntech.de>
Cc: lee@kernel.org, jdelvare@suse.com, dmitry.torokhov@gmail.com,
	pavel@ucw.cz, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, ukleinek@debian.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org
Subject: Re: [PATCH v2 5/7] hwmon: add driver for the hwmon parts of qnap-mcu
 devices
Message-ID: <83226476-8b23-4a11-a100-d01049f6eef2@roeck-us.net>
References: <20240728211751.2160123-1-heiko@sntech.de>
 <20240728211751.2160123-6-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240728211751.2160123-6-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_082746_807306_674C39CD 
X-CRM114-Status: GOOD (  13.43  )
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

On Sun, Jul 28, 2024 at 11:17:49PM +0200, Heiko Stuebner wrote:
> The MCU can be found on network-attached-storage devices made by QNAP
> and provides access to fan control including reading back its RPM as
> well as reading the temperature of the NAS case.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Minor comment inline, in case you resend, otherwise

Acked-by: Guenter Roeck <linux@roeck-us.net>

> +static int qnap_mcu_hwmon_write(struct device *dev, enum hwmon_sensor_types type,
> +				u32 attr, int channel, long val)
> +{
> +	struct qnap_mcu_hwmon *hwm = dev_get_drvdata(dev);
> +
> +	switch (attr) {
> +	case hwmon_pwm_input:
> +		if (val < 0 || val > 255)
> +			return -EINVAL;
> +
> +		if (val < hwm->pwm_min)
> +			val = hwm->pwm_min;
> +
> +		if (val > hwm->pwm_max)
> +			val = hwm->pwm_max;
> +
		val = clamp_val(val, hwm->pwm_min, hwm->pwm_max);

Guenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
