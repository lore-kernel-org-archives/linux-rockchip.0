Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 715D1606A333
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 16:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=W585/iKX;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.a=rsa-sha256 header.s=selector1-NXP1-onmicrosoft-com header.b=h/azBYeY
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=r+4NGZCCQkqCW3YTPtz5iEgFb15QqAVmIyCwy03VzRg=; b=W585/iKXd+CQzfNaC/M756t8Ma
	5Uceo4r2NPrelRJX//w6/zUPU7PQGI26kh3RA3WAqnbnPg3YAyylwDVEDGypmyWbdiXUqIkr+kDd/
	qhGFYL+zaUgI4GDWQnvvgr5M0ItINx1lrs+xclwh9aG5+O7jnOTPdqUiCLl95VvFwnh9v6NcGIWG2
	w8X6wU6brzT1B5dtv9X0JQtI51EuXVrBAJou8UaXW3ItgHVhS21rU3bmJoUSrcoN/or+i+0vBx6U9
	40iScX4JhXrRQ3r4NddM2U4KpiasgVvCreeKfnhnwJt807f+8mLLXZpE8e7Bne8MllP3LaI21jJr8
	8rAHg9Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWFQi-0000000ATui-1aMK;
	Wed, 25 Nov 2026 16:01:08 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWFQe-0000000ATtf-38Dx;
	Wed, 25 Nov 2026 16:01:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pmIj9F7X+uSbDI69ts8l+L17FdfkPyAkEMqn0dG9KuEgTOpGQR4sLVBesiXE6Zh16s65V/0vIDmqxxaLiyGdKgz+W0OhQn4kuQRt+IFqsFnxeYohPQfgerROvksO3vtG0sHdeEm5t1xzUuxB6o/iFO5GQPb87vWWP0H6aQPJEcJpzoyVMqKqB6qYXuCRNFuMqMwSXL6gK7DSOoWd936Ik+SDp0GCX77J79UQx4r/G2AldQ0uoBouPjE4r81AXTg6MPcWNM7daIP54aTaSsaBWYU/V72Ko9gDtEY0Ls6BQaXkmYV+v8JeUwMM3gqnxEiKWJQ3HP2b+daUVvj3yi+w+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ktvN5VccKKw5i08DfYGBrc6a93lAsKwOjSIw93pxbgM=;
 b=RmBadnbGD6ubpSeXBZRTHudoe/4pa8ym/tOBPcmnV+pH72LbHyhyJ9h0BM9I7GXOfoyUMawXvh/lOjKK0hggK+E6g6aPNG/IupJ4rsYixX3o2rX1I396V0+wTMueod/0AHefCdgLep5k+f8IHayVanxJoEa0U+xKp/005XHPtZ98zcN5KebVxCaO9wB01CrWFjcEjHQAKNsrk1Zlyhp1O8gpKIIJAjLd6XQ7qCWY/LEapNvDc9k8pO2hTmaMKN5u1UYxCH2tP0df9Kl/bSaCUGU9tg/S6HiEaFGjS2zK9VPgQU8YyQ+B7xdVOeWEWnXoF6QHMGhzUDGJUFQHdeH0Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ktvN5VccKKw5i08DfYGBrc6a93lAsKwOjSIw93pxbgM=;
 b=h/azBYeY457SocdCvH02G8TmyoWt0WoUAjQCniOSPa0qnOj+/OQEhAxTzPSQa2H3QFfNeN74abwxWeS6wrsmgU4ODQlAm11KMozXzO/6WlXGv6IfeNnxTSlrFdU5O6Wt1elgD9OY7Jn4NDIOeqTHP8qbwmZr+T6OEyZPmAnon6W2vrJ0so5yGKXrg1mjmmYFOBFBXF4yzOsFNwwXUsNHYtIgHWO30EgI22008WGYQxjGUvHlkziRW72uFiokrHwASTwUq+jZN6p/F4mw1t8GQHIWZSub0Jc9HJku2XA0AmYdCqZ7LvPySNkMRyLs3YP1YdZpzaHZ64HtGEZyVksyzw==
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
Received: from MI3PR04MB12438.eurprd04.prod.outlook.com (2603:10a6:290:76::14)
 by GVXPR04MB9735.eurprd04.prod.outlook.com (2603:10a6:150:118::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.662.6; Wed, 25 Nov
 2026 16:00:55 +0000
Received: from MI3PR04MB12438.eurprd04.prod.outlook.com
 ([fe80::c715:c32:8bb1:b70b]) by MI3PR04MB12438.eurprd04.prod.outlook.com
 ([fe80::c715:c32:8bb1:b70b%4]) with mapi id 15.21.0662.004; Wed, 25 Nov 2026
 16:00:55 +0000
Date: Wed, 25 Nov 2026 10:00:32 -0600
From: Frank Li <Frank.li@oss.nxp.com>
To: "Rafael J. Wysocki (Intel)" <rafael@kernel.org>
Cc: Ulf Hansson <ulf.hansson@oss.qualcomm.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulfh@kernel.org>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Matthew Auld <matthew.auld@intel.com>,
	Hans de Goede <hansg@kernel.org>,
	Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
	Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
	Mark Brown <broonie@kernel.org>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
	Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
	Yong Wu <yong.wu@mediatek.com>, Will Deacon <will@kernel.org>,
	Tomasz Figa <tfiga@chromium.org>, Marek Vasut <marex@denx.de>,
	Michael Tretter <m.tretter@pengutronix.de>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Hans Verkuil <hverkuil@kernel.org>,
	"open list:POWER MANAGEMENT CORE" <linux-pm@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"moderated list:ARM/Mediatek SoC support:Keyword:mediatek" <linux-arm-kernel@lists.infradead.org>,
	"moderated list:ARM/Mediatek SoC support:Keyword:mediatek" <linux-mediatek@lists.infradead.org>,
	"open list:ARM/Rockchip SoC support:Keyword:b[Rr]ock[Cc]hipb" <linux-rockchip@lists.infradead.org>,
	imx@lists.linux.dev, Frank Li <Frank.Li@nxp.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Tvrtko Ursulin <tursulin@ursulin.net>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
	Simona Vetter <simona@ffwll.ch>, David Airlie <airlied@gmail.com>,
	Matthew Brost <matthew.brost@intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Alessio Belle <alessio.belle@imgtec.com>,
	Luigi Santivetti <luigi.santivetti@imgtec.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	Kai Vehmanen <kai.vehmanen@linux.intel.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
	dri-devel@lists.freedesktop.org, imagination@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
	iommu@lists.linux.dev, linux-media@vger.kernel.org,
	linux-sound@vger.kernel.org, sound-open-firmware@alsa-project.org
Subject: Re: [PATCH v3 2/2] PM: runtime: fix stub pm_runtime_get_if_in_use()
 for !CONFIG_PM
Message-ID: <awcGINOZKcD-cTvy@SMW015318>
References: <20261117173738.1073856-1-Frank.Li@oss.nxp.com>
 <20261117173738.1073856-2-Frank.Li@oss.nxp.com>
 <CAPx+jO9RwkpSKwq6vq00uoXK-mcovJ2LMH7b_ByRnxOUj8nH8w@mail.gmail.com>
 <CAJZ5v0jsnLjEBxa1R4Q3hZLZKrCUW0xSE9SqLB8bd4tNAhXTAQ@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAJZ5v0jsnLjEBxa1R4Q3hZLZKrCUW0xSE9SqLB8bd4tNAhXTAQ@mail.gmail.com>
X-ClientProxiedBy: PH8P220CA0050.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:2d9::24) To MI3PR04MB12438.eurprd04.prod.outlook.com
 (2603:10a6:290:76::14)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MI3PR04MB12438:EE_|GVXPR04MB9735:EE_
X-MS-Office365-Filtering-Correlation-Id: 957e1111-1b15-4336-235b-08df4b0d49b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|19092799006|23010399003|376014|7416014|366016|6133799003|261009223027099003|18002099003|22082099003|4143699003|11063799006|10067099003|56012099006|261102123227099003|261026121527099003|261021123027099003|261026140227099003|261022105027099003|261022115727099003|261022075727099003|261021121427099003|261028144727099003;
X-Microsoft-Antispam-Message-Info: NqBWBKjhmOlNIW2l15T7ZmpE7lXkQLhngmyGCozcsWjz/umSbddPpn3j6gNlEvAwg7RZ1x5kK2dp0eC5iS7u84Ok4QDPkpChN3aXXEsJgrWc21iW+W5Tf7R7zhEUWY9CZo1/YCE0iD/1deZokcFFTvF5lSYza1HTCrnQfUa4E5/qFhB6Ux7niCbjkweNs0CM8g5yrJhiO0uSKsL0XAI2HSYikcTfrIYQcMKai60kVy9YpVfK0oB9fnj9Y6IPLx01aZVyWK+XcHGVAI4ihaH4AaYqAxQ1KwP/ps8JliH7XbbNNXUD+QWf/RAjjXJXAb5Aa0zgCZLtugH0Kl1sLJjkmB2J6kZIBAgZ3qv3XPgLUYeWBDiiqsA3VkWKx5+0Sg9V9Ic+nRNJcd6TymwFjYBmBJZju/VpSTF5zkx5o+jL2Lk4N3qtzsjjY9Cg9YGSuTM6AXmPKDhMMe39HG5hLzXQcyrf5I+//tFMHY/7JGtwuwO7y4l6tMsVFOCdcHcxPGPdRPJgqFjNck8CWbgirDVTGIhp22wGPA411n9dIHlBz2K/fzFtj/HrvTDfsb4v+mJufC6xnPpMPOkyWE2Y+QrAFJcoef8v58kZWypy4HjFgfASf6s922FUvBDmulhvHLomkEQFspG6eA1Eyn52Ox8K4A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MI3PR04MB12438.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(19092799006)(23010399003)(376014)(7416014)(366016)(6133799003)(261009223027099003)(18002099003)(22082099003)(4143699003)(11063799006)(10067099003)(56012099006)(261102123227099003)(261026121527099003)(261021123027099003)(261026140227099003)(261022105027099003)(261022115727099003)(261022075727099003)(261021121427099003)(261028144727099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXJLWWU4NFJaek5MQWVPRkdYNVZ3Z2ZxdkgzTjkrY0wwbHpaMDk2OXd3ckwy?=
 =?utf-8?B?Q05JSk9EQ0JNWTYrU2ZXZ3hVV2tDQk96R3pockd5bWdVMjRoTGFvNDMvMEhN?=
 =?utf-8?B?VHZwN1hZQnUzYjlnb3M5QzFXY2lzZXo5WkdPSFRFREo2MDd2ZEsrZGNoMWtD?=
 =?utf-8?B?WEdjOGZTZG5NWkgvaXU4Zlg4MHZBVEFrWVJ0bHVXQjU1bGJrSklMSmlYQ3hH?=
 =?utf-8?B?eUsrTUhxZUN6UWx6VFNKd2w2aVV5N3ptUWdtcThWNVR5MTAvN2cxaEJISEJ4?=
 =?utf-8?B?N2pNNWpmRG1xVk53RFZUV2Jxbjlnbm54RndXekFIa1R1aDV3VFQ3dnZEbTY1?=
 =?utf-8?B?NHp2L0dxV3lqWnJQeERrNzc4eWFQaFhZUkxuTXJGSjhYZFNvUGZXMHI2UWtS?=
 =?utf-8?B?bEg2NXhnTzVFcnpGWE1ZaWlhTDNtMVZRN3VvRGx1aHpQQ2E0VTREbDhLaSt0?=
 =?utf-8?B?U0sreGFXUWtOVTBMYnVQSHdCdW5PRENrZkJZSEsvdC9QTWl6ZEFzNFRkUTFu?=
 =?utf-8?B?cnBHbHJoOXhDd1RXVFozdnJFMzNXa0JNQ2JvMEpneC9QdE9vN1o2R3FXYktr?=
 =?utf-8?B?V1BQdHBhdGxpQUdnZ3hHeUlESGY4UGt0aFJha0Jtc2ZTN2RINHhqYW13czZL?=
 =?utf-8?B?aXIxektFMnZzdUZrQnk3b3FJVXJwZ0dDTEFsa1kxVytDdS9xZUYvcnl4N3JP?=
 =?utf-8?B?NmJXRCt0eUtRTFJFcTRWN0FQTUxVcFFESjBkenVGdEJhTVB5R0UvUmJyZ1o1?=
 =?utf-8?B?Z0NBNlh2aXRCSU85ZzVCOVJScGtUYUFOOFp3ZVk1TE0wbkkzcUhMbHBtWmRO?=
 =?utf-8?B?VVhlT3pZaUR4dDVhK2Y2RGZwSTk4RTRxSGFhbFlaU2JzVGRodVVGdjgySGow?=
 =?utf-8?B?dmRzcSs2cWI4NGU2SC9GTlBGbXJscnRNUUR4WWZJSFE2Z0ZpT2hPSUxPNzdi?=
 =?utf-8?B?RnRBZ0J5bTF1VXhXRnNESEVoZms3bnNFMnlBbzBxc0V0bFI5V05UYisyUzJq?=
 =?utf-8?B?VzU0WnhBdDF0bDc3Z1VNT2diOTY5VjV6SmcyMnp1TExPYy83eVo1d0FaQVZT?=
 =?utf-8?B?LzRDb24rbU5Gb1VIc1B5SXVYSTVoa0NIQ25ORWd0d1I2aVZ5eEZrVVVPVEpR?=
 =?utf-8?B?ZlFicEFoSXVVSGtkcC9pK0p0N3Vac0w3Y3p0TTJGSzZ1Y0s2ZWxkMERQc3B3?=
 =?utf-8?B?VFFDSjVUd3FzbmpWWkJlN2Yxb3VESDhBaldxM2drWXRJMDYvNW9Nd0R3aHlj?=
 =?utf-8?B?blh2dXhkUnQ5VVpQN0EwM2piNWREakNEUm1lUzNaVGZZMWVibitoN2Z0N0VV?=
 =?utf-8?B?b1FIVWtLdDFzTVNXTmdCMnV2SnI5ZW1Xc0lyUUhrY3gxNDlaSkpSMU1UUXN1?=
 =?utf-8?B?TFl0NUFyM1poN2dPYjhBV290azVRK3d0S3BvRTJpWW90VEtQaUg0OGVtVVFE?=
 =?utf-8?B?QmhDTE13WVVIV0hpL1RWQVVBRzhSc1ozN1RhZnRXQTVXZzlaZHlja05aRWs2?=
 =?utf-8?B?aGh1MXh3eEJrRStkWHluY3ZmS2w1bTlCR1hjc1BPcWFEaUJKUmxEa3JXODJH?=
 =?utf-8?B?M0tEM0s2Mk9YZlZwRHRwVDBCZ29iRUJHbUxUWWZlb2VyL2tvTSsxSHczTHM1?=
 =?utf-8?B?a2tKUno3eGRSTndPNERRL0MwTVB6d2g5NU5LZTJ4QXZJc2xOTWI4NDhmUVdF?=
 =?utf-8?B?OENiWkFKUy9adGJ0dnk2bDQySDY4cWgranhoeXlYSno5MGluanpSdUNtU3Uy?=
 =?utf-8?B?Z1k2UkVCZXR3VUVTTENjdmRmU3BCUXF5OXl5VnJ1a2Urb0ZPNzJVWTRMSW1H?=
 =?utf-8?B?cWViN2hPQ2lxZTVFKytuZEhoRzVnUWxMbTVhWWhyRFlpYXRzNjYxbDJKTVZQ?=
 =?utf-8?B?UHllWHJ1Q2huNG53bDNRc3RmQ0t4U01MWENPUFdxSld2K1JTZnVXWFloM2o1?=
 =?utf-8?B?K2l6Y1BuYVRYQ3lrZUF2WEhBSVdwSndOd2lTRHNkbUtDMUdoQnhvRWdaajZv?=
 =?utf-8?B?UXZNR0hUMTJQbk1raHVrYlNydU81NE1DczBQMFhPT3Z6aGQwWTV6cE9PMXA5?=
 =?utf-8?B?NDREK1AwWEJ4T0lmYVBZa09XTnhIZjIvdFV5NnZ4cHN6YWJoZEVrZ3pXSERO?=
 =?utf-8?B?RWpZdVhzWVE4ellSUEpucEpOazlLOHBMWm9sSzRKQWJnVWVOMUFEVjM5Qzd2?=
 =?utf-8?B?M1hFVkdEOXlmTXNvMWFyNDNZb3RucDV5Yk5JdXM0ZXhxQms0UUZNV0pUNUJG?=
 =?utf-8?B?Z1haM2pZWGFvMFVLNE8vYXhKUlpTa0MvczR1NnRCMU55ZzNtd3NGR3pHMWxV?=
 =?utf-8?B?cFJQNDhJSXJHcndLc0hzWmsxMkhiNkZrR3JTVXJlalptWlVOZ2w4aW9WaHBv?=
 =?utf-8?Q?YXIYGIKmiKf3QIwT+239zOqXBAYHTZf2JhrA3?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 957e1111-1b15-4336-235b-08df4b0d49b5
X-MS-Exchange-CrossTenant-AuthSource: MI3PR04MB12438.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2026 16:00:55.5685
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VgMtB6ytRFYj0OYuxVXIxz51RwRfWFTz5mK3PWZkD9as33wlRmsMShOkak5WEW9bVHktNzisSswo0u/bJdDMHFxpaliSDcQy9+T6Ip+EXQXT3yAIR1wZWsV88yf8OVW3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB9735
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_080104_946686_78B7CF80 
X-CRM114-Status: GOOD (  28.49  )
X-Spam-Score: -1.0 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gV2VkLCBOb3YgMjUsIDIwMjYgYXQgMDQ6NTM6MzVQTSArMDEwMCwgUmFmYWVsIEouIFd5c29j
a2kgKEludGVsKSB3cm90ZToKPiBPbiBXZWQsIE5vdiAyNSwgMjAyNiBhdCA0OjA34oCvUE0gVWxm
IEhhbnNzb24KPiA8dWxmLmhhbnNzb25Ab3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cj4gPgo+ID4g
T24gVHVlLCBOb3YgMTcsIDIwMjYgYXQgNjozOOKAr1BNIDxGcmFuay5MaUBvc3MubnhwLmNvbT4g
d3JvdGU6Cj4gPiA+Cj4gPiA+IEZyb206IEZyYW5rIExpIDxGcmFuay5MaUBueHAuY29tPgo+ID4g
Pgo+ID4gPiBUaGUgc3R1YiBmb3IgcG1fcnVudGltZV9nZXRfaWZfaW5fdXNlKCkgdW5kZXIgIUNP
TkZJR19QTSBjdXJyZW50bHkKPiA+ID4gcmV0dXJucyAtRUlOVkFMLiAgVGhlIHJlYWwgaW1wbGVt
ZW50YXRpb24gcmV0dXJuczoKPiA+ID4gICAxICAtIGRldmljZSBpcyBhY3RpdmUgYW5kIGl0cyB1
c2FnZSBjb3VudGVyIGlzIG5vbi16ZXJvIChidW1wZWQpCj4gPiA+ICAgMCAgLSBkZXZpY2UgaXMg
bm90IGluIHVzZSBvciBub3QgYWN0aXZlIChjb3VudGVyIG5vdCBidW1wZWQpCj4gPiA+ICAtRUlO
VkFMIC0gcnVudGltZSBQTSBkaXNhYmxlZCBmb3IgdGhpcyBkZXZpY2UKPiA+ID4KPiA+ID4gV2hl
biBDT05GSUdfUE0gaXMgbm90IHNldCBldmVyeSBkZXZpY2UgaXMgcGVybWFuZW50bHkgImFjdGl2
ZSIgYW5kCj4gPiA+IGFsd2F5cyBjb25zaWRlcmVkICJpbiB1c2UiLCBzbyB0aGUgc3R1YiBtdXN0
IHJldHVybiAxLCBtaXJyb3JpbmcKPiA+ID4gX19wbV9ydW50aW1lX3Jlc3VtZSgpIHdoaWNoIGFs
cmVhZHkgcmV0dXJucyAxIGluIHRoZSBzYW1lIGJ1aWxkLgo+ID4gPgo+ID4gPiBSZXR1cm5pbmcg
LUVJTlZBTCBicmVha3MgY2FsbGVycyB0aGF0IHRlc3QgdGhlIHJldHVybiB2YWx1ZSB3aXRoCj4g
PiA+IGNvbXBhcmlzb25zIG90aGVyIHRoYW4gIiE9IDAgLyA9PSAwIjoKPiA+ID4KPiA+ID4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jOgo+ID4gPiAgIGlmIChpbnRlbF9y
dW50aW1lX3BtX2dldF9pZl9pbl91c2UocnBtKSkKPiA+ID4gICB3aGljaCB3cmFwcyB0bzogcmV0
ID0gcG1fcnVudGltZV9nZXRfaWZfaW5fdXNlKCk7IHJldHVybiByZXQgPiAwOwo+ID4gPiAgIFdp
dGggLUVJTlZBTCB0aGUgd3JhcHBlciByZXR1cm5zIGZhbHNlLCBjYXVzaW5nIGFuIGluY29ycmVj
dCBlcnJvcgo+ID4gPiAgIHBhdGggaW4gdGhlIEdUIGZlbmNlIHJldm9jYXRpb24gY29kZS4KPiA+
ID4KPiA+ID4gZHJpdmVycy9ncHUvZHJtL3hlL3hlX3BtLmM6Cj4gPiA+ICAgaWYgKHBtX3J1bnRp
bWVfZ2V0X2lmX2luX3VzZSh4ZS0+ZHJtLmRldikgPiAwKQo+ID4gPiAgIFdpdGggLUVJTlZBTCB0
aGUgY29uZGl0aW9uIGlzIGZhbHNlOyB4ZV9wbV9ydW50aW1lX2dldF9pZl9pbl91c2UoKQo+ID4g
PiAgIHJldHVybnMgZmFsc2UsIHNvIGNhbGxlcnMgYmVsaWV2ZSB0aGUgZGV2aWNlIGlzIG5vdCB1
c2FibGUuCj4gPiA+Cj4gPiA+IGRyaXZlcnMvZ3B1L2RybS9nbWE1MDAvcG93ZXIuYzoKPiA+ID4g
ICByZXR1cm4gcG1fcnVudGltZV9nZXRfaWZfaW5fdXNlKGRldikgPT0gMTsKPiA+ID4gICAtRUlO
VkFMICE9IDEsIHNvIHRoZSBoZWxwZXIgYWx3YXlzIHJldHVybnMgZmFsc2Ugd2hlbiAhQ09ORklH
X1BNLgo+ID4gPgo+ID4gPiBkcml2ZXJzL2dwdS9kcm0vaW1hZ2luYXRpb24vcHZyX3Bvd2VyLmM6
Cj4gPiA+ICAgaWYgKHBtX3J1bnRpbWVfZ2V0X2lmX2luX3VzZSguLi4pIDw9IDApCj4gPiA+ICAg
LUVJTlZBTCA8PSAwIGlzIHRydWUsIHNvIHRoZSBkcml2ZXIgYWx3YXlzIHRha2VzIHRoZSAicmVx
dWV1ZSIgZXJyb3IKPiA+ID4gICBwYXRoIGluc3RlYWQgb2YgcHJvY2VlZGluZyB3aXRoIHRoZSBh
Y3RpdmUgZGV2aWNlLgo+ID4gPgo+ID4gPiBzb3VuZC9zb2Mvc29mL2RlYnVnLmM6Cj4gPiA+ICAg
aWYgKHBtX3J1bnRpbWVfZ2V0X2lmX2luX3VzZShzZGV2LT5kZXYpID09IDEpCj4gPiA+ICAgLUVJ
TlZBTCAhPSAxLCBzbyBkM19wcmV2ZW50ZWQgaXMgbmV2ZXIgc2V0LCBjb3JydXB0aW5nIGV4Y2Vw
dGlvbgo+ID4gPiAgIGRlYnVnIGFjY291bnRpbmcuCj4gPiA+Cj4gPiA+IGRyaXZlcnMvaW9tbXUv
bXRrX2lvbW11LmM6Cj4gPiA+ICAgaWYgKHBtX3J1bnRpbWVfZ2V0X2lmX2luX3VzZShkb20tPnBs
YXRfZGV2LT5kZXYpIDw9IDApCj4gPiA+ICAgLUVJTlZBTCA8PSAwIHNraXBzIHRoZSBUTEIgZmx1
c2gsIGxlYXZpbmcgc3RhbGUgSU9NTVUgbWFwcGluZ3MuCj4gPiA+Cj4gPiA+IGRyaXZlcnMvaW9t
bXUvcm9ja2NoaXAtaW9tbXUuYzoKPiA+ID4gICBUaHJlZSBjYWxsIHNpdGVzIHVzZSBXQVJOX09O
X09OQ0UoZXJyIDwgMCkgb3Igc2ltaWxhciBwYXR0ZXJucy4KPiA+ID4gICAtRUlOVkFMIDwgMCB0
cmlnZ2VycyBhIHNwdXJpb3VzIFdBUk5JTkcgb24gZXZlcnkgY2FsbC4KPiA+ID4KPiA+ID4gZHJp
dmVycy9tZWRpYS9pMmMvaXNsNzk5OHguYzoKPiA+ID4gICBpZiAocG1fcnVudGltZV9nZXRfaWZf
aW5fdXNlKGRldikgPD0gMCkgICh0d28gY2FsbCBzaXRlcykKPiA+ID4gICAtRUlOVkFMIDw9IDAg
Y2F1c2VzIHRoZSBkcml2ZXIgdG8gYWx3YXlzIHNraXAgcmVnaXN0ZXIgcHJvZ3JhbW1pbmcKPiA+
ID4gICB3aGVuICFDT05GSUdfUE0uCj4gPiA+Cj4gPiA+IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmtpc3AxL3JraXNwMS1kZWJ1Zy5jOgo+ID4gPiAgIGlmIChwbV9ydW50aW1lX2dl
dF9pZl9pbl91c2UoZGV2KSA8PSAwKSAgKHR3byBjYWxsIHNpdGVzKQo+ID4gPiAgIC1FSU5WQUwg
PD0gMCBwcmV2ZW50cyBhbnkgZGVidWcgc3RhdGlzdGljcyBmcm9tIGJlaW5nIGNvbGxlY3RlZC4K
PiA+ID4KPiA+ID4gRml4ZXM6IGE0MzZiNmExOWY1NyAoIlBNIC8gcnVudGltZTogQWRkIG5ldyBo
ZWxwZXIgZm9yIGNvbmRpdGlvbmFsIHVzYWdlIGNvdW50IGluY3JlbWVudGF0aW9uIikKPiA+ID4g
Rml4ZXM6IDNiODViN2JjY2NmNCAoImRybS94ZTogRml4IGRpc3BsYXkgcnVudGltZV9wbSBoYW5k
bGluZyIpCj4gPiA+IEZpeGVzOiA2NzJjNDczNTc2Y2EgKCJkcm0vZ21hNTAwOiBSZXdyaXRlIHBv
d2VyIG1hbmFnZW1lbnQgY29kZSIpCj4gPiA+IEZpeGVzOiBiMzAyODllN2ZhOTIgKCJBU29DOiBT
T0Y6IEZpeCBydW50aW1lIHBtIHVzYWdlIGNvdW50ZXIgYmFsYW5jZSBhZnRlciBmdyBleGNlcHRp
b24iKQo+ID4gPiBGaXhlczogYzBiNTc1ODFiNzNiICgiaW9tbXUvbWVkaWF0ZWs6IEFkZCBwb3dl
ci1kb21haW4gb3BlcmF0aW9uIikKPiA+ID4gRml4ZXM6IDUxZWYyYmU1NDZlMiAoIm1lZGlhOiBp
MmM6IGlzbDc5OTh4OiBBZGQgZHJpdmVyIGZvciBJbnRlcnNpbCBJU0w3OTk4eCIpCj4gPiA+IFNp
Z25lZC1vZmYtYnk6IEZyYW5rIExpIDxGcmFuay5MaUBueHAuY29tPgo+ID4gPiAtLS0KPiA+ID4g
Q2hhbmdlIGluIHYzCj4gPiA+IC0gZHJvcCB0YWc6IGNiYjgxOWMzNjNjNSAoIm1lZGlhOiBya2lz
cDE6IGRlYnVnOiBDb2xsZWN0IGlucHV0IHN0YXR1cyBieSBzYW1wbGluZyBJU1BfRkxBR1NfU0hE
IikKPiA+ID4gc2VsZWN0ZWQgUE0gYXQgYXJjaCBjb25maWcKPiA+ID4gLSBkcm9wIHRhZzogMGYx
ODFkM2NmN2Q5ICgiaW9tbXUvcm9ja2NoaXA6IEFkZCBydW50aW1lIFBNIHN1cHBvcnQiKQo+ID4g
PiBzZWxlY3RlZCBQTSBhdCBhcmNoIGNvbmZpZwo+ID4gPiAtIGRyb3AgdGFnOiA5ZDU4YWE0NjI5
MWQgKCJkcm0vaTkxNTogRml4IHRoZSBHVCBmZW5jZSByZXZvY2F0aW9uIHJ1bnRpbWUgUE0gbG9n
aWMiKQo+ID4gPiBndWFyZCBieSBDT05GSUdfUE0KPiA+ID4gLSBkcm9wIHRhZyA3Mjc1MzhhNGJi
ZmYgKCJkcm0vaW1hZ2luYXRpb246IEltcGxlbWVudCBwb3dlciBtYW5hZ2VtZW50IikKPiA+ID4g
ZGVwZW5kIG9uIFBNCj4gPiA+IGAKPiA+ID4gQ2hhbmdlIGluIHYyCj4gPiA+IC0gbmV3IHBhdGNo
ZXMuCj4gPiA+Cj4gPiA+IENjOiAiUmFmYWVsIEouIFd5c29ja2kiIDxyYWZhZWxAa2VybmVsLm9y
Zz4KPiA+ID4gQ2M6IGxpbnV4LXBtQHZnZXIua2VybmVsLm9yZwo+ID4gPiBDYzogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gQ2M6IEpvb25hcyBMYWh0aW5l
biA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiA+ID4gQ2M6IFJvZHJpZ28gVml2
aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiA+ID4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dXJz
dWxpbkB1cnN1bGluLm5ldD4KPiA+ID4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxh
bmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJk
QGtlcm5lbC5vcmc+Cj4gPiA+IENjOiAiVGhvbWFzIEhlbGxzdHJvbSIgPHRob21hcy5oZWxsc3Ry
b21AbGludXguaW50ZWwuY29tPgo+ID4gPiBDYzogU2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xs
LmNoPgo+ID4gPiBDYzogRGF2aWQgQWlybGllIDxhaXJsaWVkQGdtYWlsLmNvbT4KPiA+ID4gQ2M6
IE1hdHRoZXcgQnJvc3QgPG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgo+ID4gPiBDYzogVGhvbWFz
IFppbW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+Cj4gPiA+IENjOiBQYXRyaWsgSmFrb2Jz
c29uIDxwYXRyaWsuci5qYWtvYnNzb25AZ21haWwuY29tPgo+ID4gPiBDYzogQWxlc3NpbyBCZWxs
ZSA8YWxlc3Npby5iZWxsZUBpbWd0ZWMuY29tPgo+ID4gPiBDYzogTHVpZ2kgU2FudGl2ZXR0aSA8
bHVpZ2kuc2FudGl2ZXR0aUBpbWd0ZWMuY29tPgo+ID4gPiBDYzogTGlhbSBHaXJkd29vZCA8bGdp
cmR3b29kQGdtYWlsLmNvbT4KPiA+ID4gQ2M6IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9y
Zz4KPiA+ID4gQ2M6IEphcm9zbGF2IEt5c2VsYSA8cGVyZXhAcGVyZXguY3o+Cj4gPiA+IENjOiBU
YWthc2hpIEl3YWkgPHRpd2FpQHN1c2UuY29tPgo+ID4gPiBDYzogQmFyZCBMaWFvIDx5dW5nLWNo
dWFuLmxpYW9AbGludXguaW50ZWwuY29tPgo+ID4gPiBDYzogUGllcnJlLUxvdWlzIEJvc3NhcnQg
PHBpZXJyZS1sb3Vpcy5ib3NzYXJ0QGxpbnV4LmRldj4KPiA+ID4gQ2M6IFBldGVyIFVqZmFsdXNp
IDxwZXRlci51amZhbHVzaUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IENjOiBLYWkgVmVobWFuZW4g
PGthaS52ZWhtYW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IENjOiBSb2JpbiBNdXJwaHkgPHJv
YmluLm11cnBoeUBhcm0uY29tPgo+ID4gPiBDYzogWW9uZyBXdSA8eW9uZy53dUBtZWRpYXRlay5j
b20+Cj4gPiA+IENjOiBBbmdlbG9HaW9hY2NoaW5vIERlbCBSZWdubyA8YW5nZWxvZ2lvYWNjaGlu
by5kZWxyZWdub0Bjb2xsYWJvcmEuY29tPgo+ID4gPiBDYzogTWF0dGhpYXMgQnJ1Z2dlciA8bWF0
dGhpYXMuYmdnQGdtYWlsLmNvbT4KPiA+ID4gQ2M6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRl
Y2guZGU+Cj4gPiA+IENjOiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWJAa2VybmVsLm9y
Zz4KPiA+ID4gQ2M6IERhZm5hIEhpcnNjaGZlbGQgPGRhZm5hQGZhc3RtYWlsLmNvbT4KPiA+ID4g
Q2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4K
PiA+ID4gQ2M6IE1pY2hhZWwgVHJldHRlciA8bS50cmV0dGVyQHBlbmd1dHJvbml4LmRlPgo+ID4g
PiBDYzogRGFuaWVsIEJhbHV0YSA8ZGFuaWVsLmJhbHV0YUBueHAuY29tPgo+ID4gPiBDYzogV2ls
bCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KPiA+ID4gQ2M6IFZpamVuZGFyIE11a3VuZGEgPFZp
amVuZGFyLk11a3VuZGFAYW1kLmNvbT4KPiA+ID4gQ2M6IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiA+ID4gQ2M6IGltYWdpbmF0aW9uQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4g
PiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gPiBDYzogaW50ZWwteGVA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gPiA+IENjOiBpb21tdUBsaXN0cy5saW51eC5kZXYKPiA+
ID4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiBDYzogbGlu
dXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gPiBDYzogbGludXgtbWVkaWFAdmdl
ci5rZXJuZWwub3JnCj4gPiA+IENjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gPiA+IENjOiBsaW51eC1zb3VuZEB2Z2VyLmtlcm5lbC5vcmcKPiA+ID4gQ2M6IHNvdW5kLW9w
ZW4tZmlybXdhcmVAYWxzYS1wcm9qZWN0Lm9yZwo+ID4gPiBDYzogaW14QGxpc3RzLmxpbnV4LmRl
dgo+ID4gPiAtLS0KPiA+ID4gIGluY2x1ZGUvbGludXgvcG1fcnVudGltZS5oIHwgMiArLQo+ID4g
PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+Cj4g
PiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L3BtX3J1bnRpbWUuaCBiL2luY2x1ZGUvbGlu
dXgvcG1fcnVudGltZS5oCj4gPiA+IGluZGV4IGRlOWU3NTE4ZWNlZjIuLjFkOTgzZmU1NWExNmEg
MTAwNjQ0Cj4gPiA+IC0tLSBhL2luY2x1ZGUvbGludXgvcG1fcnVudGltZS5oCj4gPiA+ICsrKyBi
L2luY2x1ZGUvbGludXgvcG1fcnVudGltZS5oCj4gPiA+IEBAIC0yNzYsNyArMjc2LDcgQEAgc3Rh
dGljIGlubGluZSBpbnQgcG1fc2NoZWR1bGVfc3VzcGVuZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHVu
c2lnbmVkIGludCBkZWxheSkKPiA+ID4gIH0KPiA+ID4gIHN0YXRpYyBpbmxpbmUgaW50IHBtX3J1
bnRpbWVfZ2V0X2lmX2luX3VzZShzdHJ1Y3QgZGV2aWNlICpkZXYpCj4gPiA+ICB7Cj4gPiA+IC0g
ICAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiA+ICsgICAgICAgcmV0dXJuIDE7Cj4gPgo+ID4gVGhp
cyBzaG91bGQgYmUgcmV0dXJuIDAsIGFzIHdlIGRpZCBub3QgYnVtcCB0aGUgdXNhZ2UgY291bnQu
Cj4KPiBUaGlzIGlzIGtpbmQgb2YgbW9vdCBiZWNhdXNlIHRoZXJlIGlzIG5vIHVzYWdlIGNvdW50
ZXIuCj4KPiBIb3dldmVyLCB0aGUgY2FsbGVyIG1heSBhbHdheXMgdGFrZSB0aGUgb3Bwb3J0dW5p
c3RpYyAiaW4gdXNlIiBwYXRoCj4gYmVjYXVzZSB0aGVyZSBhcmUgbm8gcG90ZW50aWFsIGNvc3Rz
IHJlbGF0ZWQgdG8gaXQuCgpXaGVuICFDT05GSUdfUE0sIGFsbCBkZXZpY2UgaXMgYWN0aXZlIHN0
YXRlLCB3aGljaCBzaG91bGQgYmUgZXF1YWwgdG8gYnVtcAp1c2FnZSBjb3VudCBjYXNlLgoKQW5k
IGl0J2QgYmV0dGVyIHJldHVybiB0aGUgc2FtZSB2YWx1ZSBvZiBwbV9ydW50aW1lX2dldCgpLgoK
RnJhbmsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
