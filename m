Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4859CD3424
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 May 2026 20:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXWkshVCSPROuc1Rms6AgokUdpoX+E+M98baigNNNDY=; b=MRaM32mSnZAawm
	fZHrXuEljiLfh0JFve484w4t7BCTJ+XMZFbq0tHz7GIqRYFQwUpKQdDnqefHIa9P633sQ3FjkCkdT
	pem28eN4RTHvC3SJMlC3CgJBcKNKOaTvN9eRenQWMBYmnTLFpYna5VsH4XxCT/3ddagfilZpsD5HL
	Y7lZnTQRfKusV+JHoywi8Zt8JKtEQ5EzRnLZ4kuIb4w2kAMlElplvtdSKh5P4oXHGSRMCG+4R6r9/
	aS7ydD7hQEXP1yggxkA6+iowJbmu5nAlqAKCa1bjFc2bQOee1YyNxD5E2Q43dgMTb1jACT38UiWVT
	+g5+P5XqarCXvsomhFRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJdmx-0000000BiO7-0quD;
	Sun, 03 May 2026 20:51:43 +0000
Received: from mail-centralusazolkn190100000.outbound.protection.outlook.com ([2a01:111:f403:d107::] helo=DM1PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJdmu-0000000BiNT-1bIb
	for linux-rockchip@lists.infradead.org;
	Sun, 03 May 2026 20:51:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a9mAoNQB2bGqMPGTy4jA64HF9RXMnA/gJORwrQRHwR7lQvmver8CHf0iZDFcsQbTULXPBXEKUKy7b1LlPbT2dU/RzXoLYCI6t3dJ1CZkjTllSdtexXyMmM3oG1gYh+7QsNtEKoUFSxCQugiF2cH9yA1z7RCJKKo+sMTKMVmpO/b4uR/6HLpuVnucTx1xplxtlnUdzi5Dim7Cq48JHAPQQbXxg9NDtW3Jl7jT3Lno7hdvSgh2a+xgbw3SzzCSQTzCgzWq86qNRCFFpKus3Q5mtofOzt/RsNJYUltoWopUzlDd8nzeX/hrYc0O484y5i5unsOTtlBUHUzZ6RlIo63FTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UsJMqS0eEFqecTota51ZAk3FATOZ8SI0bh2egl6ZMps=;
 b=lVMGf42mwzhQtc2G/Bs/DkL3+59Dr6JqKjPOUXFp7b7/FiASTNTYaMXKGusCJJogWRq3zrqxMMzxKKs3Q0gZ5aXH0R20rgX08DIMNbJ041wqHnX9bV5xwoC9LBt9HK0kA1BEvuwvpcHwIC9K56KrU0zaLGtdwWf8N//STbVbmzW/gmJfRqJvBHBl+S8DJXFUDNNURTNocsptPYeNON0hBG2+RBArdR591g3i2qNQ7FS7NCohKK45vBcq34S2+HTQQ+c21eWESr0k21RNmfZuS+g50ohVM1aTfFa8752pFf9PBgepUIMIuypT/plOGhD35Ylbe9dD63+bNeb7fgCN9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UsJMqS0eEFqecTota51ZAk3FATOZ8SI0bh2egl6ZMps=;
 b=SGi3cO38oxAnYIjXvisoD8F/cDS+wz27C3Ncn/Lkvs/mqTDx3bkJk2wlfN+LbeTrhSXrZDbcyap9al7XR0PT0GWxkphchrssS+fF9U0J6Y34BRAm6eVdwCVlurOpOIBAGS995KZsr10l70+rOxGrR8cp4o7kqcSGmw6rJEoM/0wNXZOH/Hrmn4aQUTCV5AMLeP+Gx7RSnzCLj0IjxR+BlzdVFnsaF3hRiUTJ4NooJM2KU5pa7FYjtKwn9xKMMR2BPfAdmihzCG+upGmjldWqQNrwscVJecPc0p0xgHnL/Q64ZKcuqFCc+ZMJMsh5nj/QWIXS5HuwGFsBe/tyIXrO0g==
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18) by PH8PR19MB7808.namprd19.prod.outlook.com
 (2603:10b6:510:23b::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Sun, 3 May
 2026 20:51:32 +0000
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172]) by PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172%6]) with mapi id 15.20.9870.023; Sun, 3 May 2026
 20:51:32 +0000
Date: Sun, 3 May 2026 15:51:30 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jic23@kernel.org, jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH V4 01/10] dt-bindings: iio: imu: icm42600: Add icm42607
 binding
Message-ID: <PH0PR19MB997338AB2F626D5898BAB27E53A5302@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260501221152.194251-1-macroalpha82@gmail.com>
 <20260501221152.194251-2-macroalpha82@gmail.com>
 <20260503-convivial-aquatic-yak-d2dbeb@quoll>
Content-Disposition: inline
In-Reply-To: <20260503-convivial-aquatic-yak-d2dbeb@quoll>
X-ClientProxiedBy: SA9PR13CA0162.namprd13.prod.outlook.com
 (2603:10b6:806:28::17) To PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18)
X-Microsoft-Original-Message-ID: <afe1Ut-jvr7MOA4I@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR19MB997338:EE_|PH8PR19MB7808:EE_
X-MS-Office365-Filtering-Correlation-Id: 26f04583-2c3d-4114-9ca2-08dea955c172
X-Microsoft-Antispam: BCL:0;ARA:14566002|8060799015|19110799012|461199028|15080799012|23021999003|6090799003|5072599009|37011999003|25031999004|51005399006|24021099003|10035399007|4302099013|3412199025|440099028|1602099012|40105399003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xLC4kdTfZn2kpGFg63FlYQSbplJbmZHMsMmCtqKXyNyQtJ7dTVJBlw8Lb93A?=
 =?us-ascii?Q?ldseqI7++r4Gu61BbM6MufG9jR8gBzMvc9Gt0zAKoTgnthb5i02JNNFR2xq8?=
 =?us-ascii?Q?TODTaQsuPW0zggUD7Ajkj27mnvKNqiMWS2W8Nsnm8ykFZHQQCy6j9Z/Z2LZn?=
 =?us-ascii?Q?l/H+gXXHe1k1Q+DNZJoDauOHUex0OczotcL6poBVymD1RayOB3QiKDIoVSzm?=
 =?us-ascii?Q?hch9j/knP6O6Sd7gz5qpuXn2u76rU6jE0oeL1/9xaU0EOkgtUxBukKdTiRFO?=
 =?us-ascii?Q?F4yxHC76N5N/A75h+SDsP5lNA/htJyG6egkvPON/3Dnv+GOZw1ZHEXM6kyrW?=
 =?us-ascii?Q?rGwHbmRdmJpwbgbV29FJAMPno4U5IkRZZZpd07+cCRRKl5d5RtsNXkmbp+JG?=
 =?us-ascii?Q?ajtdvpopDH5zNnMa9IgplsaQyK4nIOM687cX3QySZUyZ5NmsFKxvoEydYBGj?=
 =?us-ascii?Q?ua/ofWgI157b+GfPOKLN+cXBUhxNF24mxVxywQ2+bYmmJ8qfAwvlMqnNE16Z?=
 =?us-ascii?Q?jMyhvMg7XkHVK9lou2l+2hhpu7qIXbwX0h4fix+XnsYEYOHDpV1/Oh7+qQ8O?=
 =?us-ascii?Q?QVVUVOVyVu4jgsp+INCkrnAIRqzQg4AJN9qyxego7QLpLyPrsZxPacjF0GQP?=
 =?us-ascii?Q?M7ufyB5ejVFMhUyh9yBu4yVm1fDu3lHawNjRE0BVlt7rAIQi13pC1bC8jPT8?=
 =?us-ascii?Q?V+k6/nXJfRWXKHi3NOjk8HkVcak6LCT+l3DNw4XmZdPFBMHHQwxCGO+H5Vku?=
 =?us-ascii?Q?AIW1Y2Ei37Vq9C6ig5HovRgxU84/eiA2zFy4Q5UfqCkMUyWUb9Kqp2LBu1l1?=
 =?us-ascii?Q?WC0aOkV4RWL9LQ6oKQ2dJxcmAP4XD8+1eIfi7cq6fcE3ASntVecHX05OeqV9?=
 =?us-ascii?Q?yT4/37vJ9S64WqKQH07CBjz2jWCriXuYpNg1FwjRrUQfaJyb/0gDBFanKiwV?=
 =?us-ascii?Q?x8lOrL5Eqny40RQcVczbPBqyW6uu0p/Hs3AdpkW1CoaaMDNB+Sv7PxVvsFFq?=
 =?us-ascii?Q?pvYHYo2xgqd/yIhsZezZam/5w5+RCCrw9mdr2oV6KMeRpWi/dZ0BtEIr1vvc?=
 =?us-ascii?Q?vp5wnnpfHmUrT/ow5W5kq5h10HbTttD+KCNt6UpgZ2yhddXWKKMbYT4HBXDK?=
 =?us-ascii?Q?ItZjqq8l1htd?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?vMmr60nAxPcb5drQiD55ZK1bleYKVXnnOtz1DHCOwAFli2dQIwdia8xIkYdI?=
 =?us-ascii?Q?893jMEVIOu1L/hu8LkTV5Q0VUoC2paviLaQTfcWDXTxG9nsGJ8UuOuF1SJ+6?=
 =?us-ascii?Q?GLYylL9+lYMuV60uNdTpNO5d3ESb4q/uLBZ96Ul+7Zc1pflyUr1uOLnupOCi?=
 =?us-ascii?Q?3F6PcZOdzNCfCQLGFve9oMAklyGb88HSkRtYkaQPoa9y6CLvzAlrtPRn7zpm?=
 =?us-ascii?Q?Sb869+665pZmnJNvh3fTVlv98czNqNnNURYdepg5xJqb/zVIhU+x8dqfASaI?=
 =?us-ascii?Q?ixqZqxXYy7AE8R9z8Qyg7PX1aujO0h9bC+fZ4Ub8n5e12EZ4kxsLdo5PXEGm?=
 =?us-ascii?Q?NxFesPgBmgOksGSvWpY2wyhfe/qv8EDQn0Ay3NYzF4y8SV6/k+OCYLeMm9oj?=
 =?us-ascii?Q?90IAu/vPHAujegLz/2SHavxaBuPFXJXr9PX+wbsbiNzLT4LR1MYBkgDvAiXz?=
 =?us-ascii?Q?sdO6+ar73JO9yltyNfLvo3jI+sBpm9zYyqoqgW1mpZhG4ZIvl7iDPXpZXLF6?=
 =?us-ascii?Q?i2zGgtQrHe+2HbVKOYAAnyufxgo207CiehlujGwayu6KWLF5TmesULtk+gOG?=
 =?us-ascii?Q?QWzshuJuNDed26EKWtluQAFKyhkIzZhO7dduEsTcM2FFvNxyy8q9/lnToXi4?=
 =?us-ascii?Q?4NgG8jjqCwltUBLrX7bfBkW2d7nL/45D7r0g/ruzusrXPaxCldkHu1M2HQQv?=
 =?us-ascii?Q?JRcie8XZv7mQL1uNPUzlzCjkkxMxd6exHTZm/M59jNFhRD4aPnWkknsJomsM?=
 =?us-ascii?Q?r2DK+9xjD4tEiZm1vik8oQlwB61xKn0/MsEbVZ7W7NpXtKbkNThgiPJpzweK?=
 =?us-ascii?Q?55L/aEwG/NDKNDLJYinu69U5EvapQWZ4ZjsvHig+iTEMThN+5BdkP0iapB/Z?=
 =?us-ascii?Q?ayh8XfPs0a1gtzEeb92/F5wgOngZ69pMALkqHSRE/H5+Xy9BoFY2Qp+CJYnf?=
 =?us-ascii?Q?reJUajUYoGwILb1IL8Tt/EpizKmt34Jy59j8+PYTzUlHSdI8hyOqhCEVrLMh?=
 =?us-ascii?Q?fDFP2/fDWKRwjsc/0rmoJ8G2m0tHQ5fKfeLtf/Nz+Urz54o2ad0mYiKcBEki?=
 =?us-ascii?Q?Wklx8w8fRvrrVqH0xLwtBCi9foOnkVcaKB4aS90xZ64Dijxl6QAkc9COXhBb?=
 =?us-ascii?Q?FfYtnkwkTPUi+TBxX3NBtC+FmhjuPoCcsUInTFcAeJPTw7CO4OAD94OciJ5M?=
 =?us-ascii?Q?jy0XhUg8nlByJOkQtXcjuUsgNNzhxUrFHkeqX+N/9NOoB/Y4faNHTkKKszbB?=
 =?us-ascii?Q?1YJxBeliaixqAk/i8nqWtMoscxNaHzNYSTkG9PTPCaMoRd9O5/FAQNs3Q+X8?=
 =?us-ascii?Q?pxgU1LdebYPZKPIz23g7lhmCR6iMVcWXIJWPjm14U3bCzjGtKP6Ymuurz9Zl?=
 =?us-ascii?Q?vmym3L7QWnzszSk7MOq3uuLVgoHSU1Wos0Y43yfWKMjAfKpx1g=3D=3D?=
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-990eb.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 26f04583-2c3d-4114-9ca2-08dea955c172
X-MS-Exchange-CrossTenant-AuthSource: PH0PR19MB997338.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 May 2026 20:51:32.2251
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR19MB7808
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260503_135140_456420_7AD61832 
X-CRM114-Status: GOOD (  17.47  )
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

On Sun, May 03, 2026 at 02:18:18PM +0200, Krzysztof Kozlowski wrote:
> On Fri, May 01, 2026 at 05:11:40PM -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add devicetree binding for the Invensense ICM42607 and Invensense
> > ICM42607P inertial measurement unit. This unit is a combined
> > accelerometer, gyroscope, and thermometer available via I2C or SPI.
> > 
> > This device is functionally very similar to the icm42600 series with a
> > very different register layout. Additionally, add mount-matrix
> > attribute to schema.
> 
> Why adding it? Is it something new? Is it applicable to other variants?
> If not, why it is allowed for them?

It's not new, technically this is a bug/oversight from the very first
iteration of the invensense icm42600 driver. The driver requests a
mount matrix using iio_read_mount_matrix and then returns an error from
the probe function if it can't read one [1]. So it's very much required
(and for the next version I'll upgrade it to a required element). I'm
adding it because a cursory grep suggests that my use case (for the
Anbernic RG-DS and in the near future the Anbernic RG Vita Pro) are the
first devices to use this driver in mainline in a device tree based
system.

Thank you,
Chris

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/iio/imu/inv_icm42600/inv_icm42600_core.c?h=v7.1-rc1#n746

> 
> Do not say WHAT you did, say why you did it.
> 
> Best regards,
> Krzysztof
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
