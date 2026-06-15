Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D48E9CD98CF
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSB5l8Z20g8dZOO//n4Hi/uINxRSbuSVgBleDLqjSQA=; b=PrUwi08yQKZpXe
	AFHx5/X7kKfbFep2xKoRmQQgDQWTAITDm0/RovpxF1wEB+qwxHQuSwX0Cmh7OLTLWG0B/vkCuXpGW
	4Gy4UAYi3w18hTic/9Do7l+8Nu+eoWFgYZAH83Obqmwed8j/8oQtUqu7AVqGzvXZ2J0fYjhb2mF3h
	D9T7VatxTdXMWhlyTgGTdAVY8Hs8ekZtNogZlWKO+byD/0KzNDugOCPnHmVeGSHxGNdSIjUzh5Cdh
	AhoUykrsZJzL67EbpMKG1MicvqpoXTaW/eyLxA6JhQE4MuLwwqJtnpDZTIJLH1Cod9G5YJZ+kR+Dl
	rbEYf4JZQhJ/jXqX/hIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ8fG-0000000ERnf-2lGz;
	Mon, 15 Jun 2026 14:51:50 +0000
Received: from mail-southcentralusazolkn190110001.outbound.protection.outlook.com ([2a01:111:f403:d10c::1] helo=SN4PR0501CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ8fE-0000000ERnE-2iyP
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 14:51:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hnV5/mfe1VWbKY06g0Jnspc7cAVkkUd+V2X0z8sXQ3sEVViXN9tPV6VvdDz4CALEqjB03zigwjYklpOB1snKUYmrytqM1IbFzZcdZEMLuIF7q5a1T4mJvhR4gGbYRgrObsyy0iVLEpkP7YV/+jDOAlcqjO9PC9qjayVUFixIeCn6ZLgGKUoVVGoD0tZP8SbLH7MyTF/AfDkzoQuCWhDuPzu0PCesilm3eJyJXvFgyduBc9SgREoRxGA3Jcda86DXCiXDLJFdgSFTMpIoRuN+39CVsBQhkYflve8n3YU7MfMNImfcgwa0vISmME1V7dJRVp4gAMSNDppWZeQa9c5wEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZoUSsGw9YrqbEXEXLEk1EtpEZH+jhw7XxTfVlsM6qA8=;
 b=QMd2pekwHbo2iQThkY+I4WkfZIAoDXBYUVn4P38KhpMUS5Uk4Jy8JAahwacRVZE8fD/HMchw57jhO6xtFrJzpCAVg7Z/4f3f2Nw8M6fAlJjJXh99yp+yU0kGWL6APbZ6X08ytR6gqT82G3qAcPwu1YQPEe06LbmSbC9x7bmQgqwV8XkQNnQDPqfo9yQajDtqGg7ROuEvomMgH16raA3MaFcMH8nHSn5EK0sZkTrqfbHzKROVGtwUuoeLWNTonlMjqE2HxV95cPGfGl4YaCCpwJ+mS2kewz5iFxwxV8oDgj6qrG3fbr3bjdaOLa63zydWOSBHotHLLy9ODuPY0bytuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZoUSsGw9YrqbEXEXLEk1EtpEZH+jhw7XxTfVlsM6qA8=;
 b=dPaMtBd6t+/jG+A223nfzofj1NT4jBWQ34+9pz7KMuqbjsAM/CII4m+qkCDzfFTjm1Hfn8KSYL+zMl77brOzajbL+KCLNwBWxUPA7zzCbvNyyUdR8T/0VsAi9RnjVmEaM+zva5hXMfv9ebYlzUHdTwjuYI9WHFx3lPqGZw43Ciee67v0zliil0kb39mffctnuO+x7TScmjNyU14AqVw9Q1NCBS3+kgT69dYNB+8KQvOWRBh+Y+wQsbAlLM/ZYqYYsG3PNlnTS9OYrFN9DcqdR/eX2J2U4K7UFrsw5ksi6Z19k0KyAsXc9eh7ufgzs1shTdc8LFPEIcOYJ5XRdzFkJg==
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18) by IA0PR19MB7679.namprd19.prod.outlook.com
 (2603:10b6:208:3df::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Mon, 15 Jun
 2026 14:51:43 +0000
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172]) by PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172%6]) with mapi id 15.21.0113.015; Mon, 15 Jun 2026
 14:51:41 +0000
Date: Mon, 15 Jun 2026 09:51:40 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jic23@kernel.org, jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH V12 7/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <PH0PR19MB997338010EC6FA92E0AA63875FA5E62@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
 <20260611202607.85376-8-macroalpha82@gmail.com>
 <ai_gIR2d9fzHLZ-G@ashevche-desk.local>
Content-Disposition: inline
In-Reply-To: <ai_gIR2d9fzHLZ-G@ashevche-desk.local>
X-ClientProxiedBy: SA9PR13CA0028.namprd13.prod.outlook.com
 (2603:10b6:806:21::33) To PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18)
X-Microsoft-Original-Message-ID: <ajARfLGzqaWfUmf4@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR19MB997338:EE_|IA0PR19MB7679:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c0749f7-fc35-46d5-6732-08decaed9c38
X-Microsoft-Antispam: BCL:0;ARA:14566002|37011999003|41001999006|19110799012|8060799015|25031999004|15080799012|5072599009|6090799003|51005399006|24021099003|23021999003|6040799012|40105399003|440099028|3412199025;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ry32H6JFeMOINUZoMuDqi4sqw9GcVVO6x7rrHjjlf1h5ag1ZoUcpG7QOhlZe?=
 =?us-ascii?Q?JkCm9dGfoKEyq0cQhDaps95S8+3nQF0xfn0yuk9MxJFgkCpDizkVITBOacdJ?=
 =?us-ascii?Q?wy+iYwi15DUPhO+b1LAzoB2/gHGS1+qxg0j2mc/JI7i6gg88CTjx2AELEFuL?=
 =?us-ascii?Q?BYxOCDINiHSYVDaMQDnRdXwmjlGKMTS5oSO08USQ3NnqwXvAgdkiGuZ4A8UD?=
 =?us-ascii?Q?PEkpYaZSdW7g5pmuuHycZjJ+ulXh1ZedEjDRFtP67ilkA6AoSywg/tHsjLWD?=
 =?us-ascii?Q?bvPesevgRzI2ghSf4ZgJajfQCuhqkpMsruhgSZZ0/qRnbo/q0HYqVbTsTm51?=
 =?us-ascii?Q?DNs72vx+6SUbnJ0qGklIA2SIVJqFKeg8pd5yV5myeyKrE/8gQCtDOW2rJAn0?=
 =?us-ascii?Q?J8nabCE3qZe3Jtt3L+0NF/Fvz7x9heJJrPxeRBBRTtBZvYx4QaXOZlmx8L/N?=
 =?us-ascii?Q?nj8EYTKhfzcn0l4y8wJRN0Rs2s+3MSaJFIu8hssXlDWk+CzijOfRO2KSIS7A?=
 =?us-ascii?Q?kJIhdQOEO9PfngqBaiCW4KzsdT5oQq5MvkeYOcnSG+KiAIO8kOz+iyA6YmV0?=
 =?us-ascii?Q?tA6zjZ3Zv+ug5fetVs4qLS9APJFcam1XWCTi0nLH2vbzgH0f6GA/Qn1MxR+8?=
 =?us-ascii?Q?BN5MwY658FLU7coM47TuGERpfJbew37xYVYqY8Dhou1M4leO3BG/jqgQ9cSn?=
 =?us-ascii?Q?HGnHWDLvEAzXyFHGsDHouoj9qn5GgKnBlinuz2I1XiJ7qDI8HjbBlXfSQ6w+?=
 =?us-ascii?Q?11WhqDZdgt7epWmRAXR0WM/rnqZPX24m1qgd6MjgqUK1MC5jMNXyTCH8VZLF?=
 =?us-ascii?Q?89lkQ2GIwmM/Ks4Jx57ilRxiQV3KeOXhSeYxV5350Fme5azcKeQDjEGAbya8?=
 =?us-ascii?Q?WXSyAva/hkerT6d9Hyr31sziSSFyzJ68yuM9ipUs2y56viVbx2NmwOizfvNU?=
 =?us-ascii?Q?E9YfdOjj97ov7+OBFFDZKa+RGpaBNItCXgBW82sEQ59GagTl5yWI9wJ5+Brw?=
 =?us-ascii?Q?kKNHbZ2kEzsq84tZvj/UGNvrU1tzN/Q7xPCaIb5XehtXRe7sdF6thbG9+92S?=
 =?us-ascii?Q?erBwl0tAG7ZMTVMzv1dhPeJJZV2fSw=3D=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?v+x2aoX/fylytZc72oK7UfntClsmUzWjLlLhYOAc4sGCiktJip3FX5w5JaQe?=
 =?us-ascii?Q?Cy9zOQ1XzmeHTH1tzCKRpYkUwCdtumzxg+bl92XNBT6p439ELMyQJWpgCSHK?=
 =?us-ascii?Q?phfuueRVPAaTz95YD/194yuKY07OeWAcRzpDa22eXETQehnP1R0jNBd9Mq/V?=
 =?us-ascii?Q?Ws//tyXGlIAQOasxNC7Q8s7u2TiMjb7RMsx4AAki2CGT04HXYiq4A4h7cyM9?=
 =?us-ascii?Q?CcgeBee4bEXMd3+Nv6waWtircjyLO41DaFFV6rUMNiKsUsoTCjfaaXDGPGqL?=
 =?us-ascii?Q?dlYImtxEVqEqVZAnfORNb8rQKDj4C6XQwtm6IqdjegrzWEo0daY1+DSfM36s?=
 =?us-ascii?Q?owusuiejBayIDbgo/veExrtDVLPfkGwefDDvgDXj29jFR3s3Oxvjh4e/3kac?=
 =?us-ascii?Q?GJz/2xNAj1J/l1qPdA7EoDoYsdjfkhQHqdx5IGlSrOuYfjZkAg8YZqBPjiW8?=
 =?us-ascii?Q?HbQFvXcXxIw6lA2Is9Yykq8NdBM5SZc009wFStUjDw62uBJmXPW+dVbB3Wv8?=
 =?us-ascii?Q?7PGaqcqYY6u/gNhranosBi5gCCqNutPrujpQIkYdn5NvpiN4KzZCQT6odUNl?=
 =?us-ascii?Q?iSqsizalH27f2elnZZlCwOtLN/cSteDjsZ/abt/tW3IW5X0ETE1uTw6GVLKY?=
 =?us-ascii?Q?LpJBh92qIqijX8WXbDxvlEhsqBr7Wuqnk0FYZO0Xx17sLXqPwnIg1eMiFt71?=
 =?us-ascii?Q?JgOCWXSWaPzzEinRjG8Ei/Wv+FOPbgiCkmGIvkXeTA900fOi29Rf7J6tSDJa?=
 =?us-ascii?Q?agYUckxIvIg3zGCYA5nREgm+lpdtHEf3pn8PzkZYt0QAhSB/07/NWOzmyFBj?=
 =?us-ascii?Q?vtQmq3IR5H5159IUJx91GZGQtMVqQ6b241d/XYZgVVBWNEJe3wICw7GS4ITd?=
 =?us-ascii?Q?UginvNdFHQhK3aUG9/D2FQ6LpZqOLPOnYfdiB9xCo6L4S2mWYhIP/h7fFQiK?=
 =?us-ascii?Q?O6UsHbU/0GcQLNqCwe9Elk82/PUG4okJbt++LFPSTOnsDYWm5fgwRTZTGB3q?=
 =?us-ascii?Q?88eQOK1gUobCmaHjg4AF1F3VPdoVO7JmYDLf9b7LCz9V1sls+DXb03kzWoJX?=
 =?us-ascii?Q?/7BKEQ8LxQR4DuoOm7QTix85X5rD1mz2L+Az22ol9Nm6grwVpwfegVGm4e5m?=
 =?us-ascii?Q?Ay1XOqCmb0ivlfBoQCNG2q+mYaBghN8QoP0OZG2GREY6Yvtp0XmVTac7p2f3?=
 =?us-ascii?Q?qOpK9bscF0QjHUWxNC7mTPS07D5jgY/mraxzfGLw38fWMnZT0sfZ8ElX/yDB?=
 =?us-ascii?Q?iV9VZ2RqUNE1tAKkhMqBpKwif61wbDO8LqWSKqEolcA40159+2PJ77W5MdHJ?=
 =?us-ascii?Q?ZRYSADTCUogb6rFhR2CpDaGkb6W/M1gGnV0Lb0ffXK0fgP9RXkq4aPO3Xcc6?=
 =?us-ascii?Q?aWtNUpA8HV0KyqtzvrfqGt9xHW/jH9qhX5GcrSLgrE0gCwRMZg=3D=3D?=
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-990eb.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c0749f7-fc35-46d5-6732-08decaed9c38
X-MS-Exchange-CrossTenant-AuthSource: PH0PR19MB997338.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2026 14:51:41.2614
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR19MB7679
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_075148_692052_2A4F0364 
X-CRM114-Status: GOOD (  17.22  )
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

On Mon, Jun 15, 2026 at 02:21:05PM +0300, Andy Shevchenko wrote:
> On Thu, Jun 11, 2026 at 03:26:04PM -0500, Chris Morgan wrote:
> 
> > Add icm42607 accelerometer sensor for icm42607.
> 
> ...
> 
> > +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
> 
> Please, please, use IWYU! So many headers are missing...
> (Same comment to all files in this series.)
> 
> + array_size.h
> + bits.h // BIT()
> + cleanup.h // guard()()
> + device/devres.h // devm_kasprintf()
> + err.h // -EINVAL, IS_ERR()
> 
> > +#include <linux/iio/iio.h>
> > +#include <linux/mutex.h>
> > +#include <linux/pm_runtime.h>
> > +#include <linux/regmap.h>
> 
> + types.h // s16, __be16
> 
> Also you need to have
> 
> asm/byteorder.h // be16_to_cpup()

How are you running IWYU against the builds? So far I've tried but I
can't seem to get it to run properly. 

> 
> ...
> 
> > +static int inv_icm42607_accel_read_odr(struct inv_icm42607_state *st,
> > +				       int *val, int *val2)
> > +{
> > +	unsigned int odr;
> > +	unsigned int i;
> > +
> > +	guard(mutex)(&st->lock);
> > +
> > +	odr = st->conf.accel.odr;
> > +
> > +	for (i = 5; i < ARRAY_SIZE(inv_icm42607_accel_odr); ++i) {
> 
> Why pre-increment? Same for all other cases.

The register starts at 5 and all values below 5 are invalid. Starting
this increment at 5 ensures we don't expose invalid values to
userspace.

> 
> > +		if (i == odr)
> > +			break;
> > +	}
> > +	if (i >= ARRAY_SIZE(inv_icm42607_accel_odr))
> > +		return -EINVAL;
> > +
> > +	*val = inv_icm42607_accel_odr[i][0];
> > +	*val2 = inv_icm42607_accel_odr[i][1];
> > +
> > +	return IIO_VAL_INT_PLUS_MICRO;
> > +}
> 
> -- 
> With Best Regards,
> Andy Shevchenko
> 
> 

Thank you,
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
