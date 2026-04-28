Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86962FF885A
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 15:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgT+3c6rKrxagco07jZBG4ojtV1kBIiLOpiof7I+1vw=; b=QgjXGJvjE9bcxR
	FB4XkPyHuQr6g0cDXVPP7DSiCWFAvIyclXJWHfgukd7Z6cI2sCvKdKuASN7snhcBN/TPdrNroWar3
	lsOJMFnQ6Z5jMaonOpLwoyfpRWbXy/cwN75i4/3d0nJttRJe3+WBmJ/URzQ68w8aLOrXor+SJ1U3w
	aXzpZ/pmHB1/w5Jmsb7astH7A1xbhaCiazT4I7Jy99TbmI2DJhx0r+1RWFEhVKiYgWCvFcPEj/3Ba
	uggoXxdYn+5IGi8tssycI1KvObWMSwg/cmEmrFmY9rc0AxXkfQufFUa4ynYJ1yLfcQTzvmxKUpu1n
	V6TkFMfxn5Wf8bA7ocLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHk3z-00000001iAH-2Aga;
	Tue, 28 Apr 2026 15:09:27 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHk3w-00000001i9v-2RYG
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 15:09:26 +0000
Received: by mail-oi1-x22c.google.com with SMTP id 5614622812f47-479ef2b7979so5400354b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 08:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1777388963; x=1777993763; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eg7jclWUBdkcF9TMPmlkH1m3gUXCyVDg8YBU8lVWmQc=;
        b=vO2xVYj+9m5tdtcuNAWLmBaNQg4fkx8SXreb0ie4P52CR0J8i+pf3KwhA2q1b/yHWo
         5S4E1g6O/NF09SMqokyRZRn+m240AW9Z6xQfq/pCZyduWrDFD5lpY/fLq6oOpKUfPPt6
         VeT8uHAyI2ApSA6q2jQdfnbOvMIQSNPGCcYf1DkNgPTisQ0svO+e/tF5VI0ScSYaYPq2
         obkxfBvsDfXX/g8xuFfuVEKNO5mCasz1K4yOi9hsStG622VQijiOic4p/QkAewoXAEE/
         LRbeA3GQBvpxRylhoHdyQMS7Cfvy2+vNTpt19Vb3+FHxI3aTDdSakjhvbydq0Wy2rxLj
         1oTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777388963; x=1777993763;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eg7jclWUBdkcF9TMPmlkH1m3gUXCyVDg8YBU8lVWmQc=;
        b=gBMTweqLpQ9keFe/1tRQH61tAEzUolqGuaO62uiRkN8jYsRX8G1AqpwFEBdwGDDQlz
         y4+1Fnk8Dx3HKy9AW0SVNQJiuAR0Zmuo27E4JHxWyNA4eKuijM2KDgfUE54LKtPJ3kGA
         pLTLuzlLBBiAoky8qVfCjqa6mBaUI1M16iutf6lVCdEIPqyuJwQC0zv0nXt+jKjdfBYO
         zVvi2NIjYxVqGKdwHhw6s7Sw7YsbxqxhQDeLhl/LOCSEjttR/QcKRZcVzo/97covYBp8
         S1o6w+5tPPiDv73He42a3wths7MO3yxjbGlzKGGXemjDKDaoe6PblciRNN6DiFFwhlN+
         lUAg==
X-Forwarded-Encrypted: i=1; AFNElJ/sWMezWeUqmFF9DOaAp+wLZ0VQ9TwdqgSDoN1ols6z7qsYLCiL60hmw4Y/1bMTK51YMeEyrYBqA2X5FdBOkQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwBAY4KldVUXS1OYkKN46qjbxV6qnQLzpTqL19fQpH+Z4IpVwEI
	YO6rWJx3RBFJpUavgnwNZ9QhhwM1jTJtz0OJ/OiW0tiSArIUt/bvP5/a2FTPxTJqm+E=
X-Gm-Gg: AeBDieuQr1jyWXCHntZXKcsQ7OHkdvVnPswcd32fjq9sbdBVnOSp7YwDZolPIl2bkoH
	ZeBg6PRxmzlDD8BdUs5uqSUC1Y9C+afQcUpCGaBiZWdM/EEb9bpXJ+9pCTj6zIKRZno4jGzII+I
	BOiTxvXqTZNWujbUPo3BEWflcKwpmW9gLBQ0TeiBbJ3PwxMiTgrHtpriuQ+mgxny/BAkRQVGnWy
	9FqwY3OqxIJwV0DIgHMEUMirZaLwXvO803aLs0UIrv8t0VUL6BtlaQ9dlFZNPu7ckuhab2zcQT/
	GPdfLN1paGRnrEIJwrndK0JKIy4STGu9oSAfBJVB6neIF3L4sxXu3fIMHoKkbPYT82wjUf87YHT
	47n6L5vj7DKxhLzPAwTEfX4obuj/mpYMOWZ3t1eGkG8uXMW0yFUHcXpgo+Jwy4cygNWecCx1PgU
	n8YCyypu6CCVWAEolUmG/pC7RVwVlM4TQEa7ViW4z9dVO+a8JpBLdnWBhMdoDwN/lvKGT5wwtQ9
	zmkgpt9haSR
X-Received: by 2002:a05:6808:1590:b0:479:d57b:838a with SMTP id 5614622812f47-47c2902fb60mr1817804b6e.35.1777388962643;
        Tue, 28 Apr 2026 08:09:22 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:efba:bc47:a81b:dd0f? ([2600:8803:e7e4:500:efba:bc47:a81b:dd0f])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-47c28f50286sm1611696b6e.1.2026.04.28.08.09.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2026 08:09:22 -0700 (PDT)
Message-ID: <6347ce16-bf5c-4da4-91ba-fe6c88713b51@baylibre.com>
Date: Tue, 28 Apr 2026 10:09:20 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 6/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
 andy@kernel.org, nuno.sa@analog.com, jic23@kernel.org,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com
References: <20260330195853.392877-1-macroalpha82@gmail.com>
 <20260330195853.392877-7-macroalpha82@gmail.com>
 <f1ae57fe-1ad5-46ee-9f0c-245f4deec7ce@baylibre.com>
 <PH0PR19MB997338EE6A13BD08879C4B9B2BA5372@PH0PR19MB997338.namprd19.prod.outlook.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <PH0PR19MB997338EE6A13BD08879C4B9B2BA5372@PH0PR19MB997338.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_080924_642283_79A7BC9C 
X-CRM114-Status: GOOD (  26.03  )
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

On 4/28/26 9:01 AM, Chris Morgan wrote:
> On Fri, Apr 10, 2026 at 05:59:05PM -0500, David Lechner wrote:
>> On 3/30/26 2:58 PM, Chris Morgan wrote:
>>> From: Chris Morgan <macromorgan@hotmail.com>
>>>
>>> Add icm42607 accelerometer sensor for icm42607.
>>>
>>

...

>>
>> Usually we make these 2-D arrays for readability and then cast to int * if needed.
>>
>>> +static const int inv_icm42607_accel_scale[] = {
>>> +	/* +/- 16G => 0.004788403 m/s-2 */
>>> +	[2 * INV_ICM42607_ACCEL_FS_16G] = 0,
>>> +	[2 * INV_ICM42607_ACCEL_FS_16G + 1] = 4788403,
>>> +	/* +/- 8G => 0.002394202 m/s-2 */
>>> +	[2 * INV_ICM42607_ACCEL_FS_8G] = 0,
>>> +	[2 * INV_ICM42607_ACCEL_FS_8G + 1] = 2394202,
>>> +	/* +/- 4G => 0.001197101 m/s-2 */
>>> +	[2 * INV_ICM42607_ACCEL_FS_4G] = 0,
>>> +	[2 * INV_ICM42607_ACCEL_FS_4G + 1] = 1197101,
>>> +	/* +/- 2G => 0.000598550 m/s-2 */
>>> +	[2 * INV_ICM42607_ACCEL_FS_2G] = 0,
>>> +	[2 * INV_ICM42607_ACCEL_FS_2G + 1] = 598550,
>>> +};
>>> +
> 
> I've gone through and implemented all of the changes everyone suggested, though
> this is one of the few on which I had a question. Obviously this driver was
> cobbled together from 2 different sources and checked to the best of my ability
> and tested/validated against the data sheet, but there are a few bits I'm not
> fully clear on such as this.
> 
> What's the correct way to represent this data? Since it looks like one of the
> values is always 0, should I just assume it's always 0 and only represent the
> values that change in this scale?
> 

Picking a random driver, bma220 has the most usual way of doing it.

static const int bma220_scale_table[][2] = {
	{ 0, 623000 }, { 1, 248000 }, { 2, 491000 }, { 4, 983000 },
};

I do like using the enum to make it self documenting though (no
comments needed), so for this driver...

static const int inv_icm42607_accel_scale_nano[][2] = {
	[INV_ICM42607_ACCEL_FS_16G] = { 0, 4788403 },
	...
};


Then the read_avail callback in bma220 does:

	case IIO_CHAN_INFO_SCALE:
		*vals = (int *)bma220_scale_table;
		*type = IIO_VAL_INT_PLUS_MICRO;
		*length = ARRAY_SIZE(bma220_scale_table) * 2;
		return IIO_AVAIL_LIST;

Although the cast would be better as `(const int *)` and I assume
you would want to use NANO instead of MICRO.



>>
>>> +int inv_icm42607_set_accel_conf(struct inv_icm42607_state *st,
>>> +				struct inv_icm42607_sensor_conf *conf,
>>> +				unsigned int *sleep_ms)
>>> +{
>>> +	struct inv_icm42607_sensor_conf *oldconf = &st->conf.accel;
>>> +	unsigned int val;
>>> +	int ret;
>>> +
>>> +	if (conf->mode < 0)
>>> +		conf->mode = oldconf->mode;
>>> +	if (conf->fs < 0)
>>> +		conf->fs = oldconf->fs;
>>> +	if (conf->odr < 0)
>>> +		conf->odr = oldconf->odr;
>>> +	if (conf->filter < 0)
>>> +		conf->filter = oldconf->filter;
>>> +
>>> +	if (conf->fs != oldconf->fs || conf->odr != oldconf->odr) {
>>
>> We could use the regmap cache feature to avoid having to manual keep
>> track of old values. Or just always write the same values anyway. I
>> find that is nice when debugging hardware with a logic analyzer. Unless
>> there is some measureable performance improvlment here?
> 
> This is another one I had a question on. I'm not entirely clear from the
> datasheet which reg values are volatile and which ones are safe to cache.
> Performance wise the 42607 series appears to be the *least* performant
> in their lineup, so I don't imagine we care much either way. Should I just
> not worry about the old values and always write? Do you think that would
> work?
> 
My personal preference is to always do extra SPI writes for anything
that is not performance critical. This makes debugging with a logic
analyzer much easier.

In cases where using caching makes sense, generally, "status" registers
are volatile because the chip can change the value when status changes.
"config" registers are not volatile because they don't change unless
written to.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
