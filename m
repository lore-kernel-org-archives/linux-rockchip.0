Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30FB6CCD185
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Oct 2025 07:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tW7n1VydX2B2Zv3hLNFvhqFF0BTE1pEnU5M+ASkI8z8=; b=U61yqpoMzhrrCIeoLWvVphoStv
	hbN47Rzx5YbiXjOkkydp6lgwTC/zBiEiSwxDCfG5YBwT05AkXN2ieyRGSWbhPIq+d+LArWSsKG50X
	fcU1370shKhKY4yJ03kUGj21EXmTx2WCIJkCIQWuGgxdiL2e4pAmOEFXful/ZiBf2VcozJnHTST94
	hHm2eEPfs85lL6FCSYQ/0w1SPq+0I3W1xEhw24V9o34Y+pCIHDDA0IQCFbH74py8nx8ZX6dh+ivPk
	slUMlBr+MWsJA60IfJgRPA+HPP/Xnp6A6kpNemsrgdUQNGlSnKcMYRXrBvp3Jy68u0CcNhuwADuNq
	k82hXOsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8CYW-0000000CRrJ-36aE;
	Mon, 13 Oct 2025 07:01:16 +0000
Received: from mail-northeuropeazlp170120005.outbound.protection.outlook.com ([2a01:111:f403:c200::5] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8CYT-0000000CRo7-0rJt;
	Mon, 13 Oct 2025 07:01:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pt2tROkES4PeyxJYrXvojY3xoFK8C0TCWqX302gmf3y6cxCD7MJYiQJi0fd9hHz/aqPm1PQ3ZMDSQ2sWYgEDvU6gKeDhC/ao8KU56t+XB+aVdzGgKDEvrhET2FTv4uzMwvDzC0cSSbWP3pq6mRcm+taE+5oVm5eEexKM3wuje97jHXRXg+77xCnMdZHJIHcf9RVmZqBeg4mAlgBGntnRCMub3wgROQTBYWba0k0rSpTvSSqisJIt5UXSawn9sNeFzUFVSIMheoGYEkNdJIMyVM+yfYoeTr32Z7ZMk225FdtGm5yVXG4mIbHl9v8yB9PdfFXp8dz3IjI0RSW/NZ42kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0fo586HePkUPVOupDvAIfsRQNM5VeU2X1bauMrLtL6g=;
 b=c2gFIapmWEy3NN5uKPZQ+/lztHOAZNwUECXNKo+lu+s7YFrIjJh0LoX7ZTv9OWiLAKyYQA2PEB5Dqaflulyq0aaYQM1MrWwUVT9+/+51oYsswZB1sfdh7JkKDwl0SUd6FnjllGxR6oSt5BZHZ7jGhn167Iy7ARo96Bg5ZSFb53460cQzjchB8HVlr+NVIj7smM7l5FQWTLlPljzyi60NQrkW8kjsow09nDLT9psBmKLo5PFDkkn7121Xjug1tsj5zmdco2rRkkqUESk01P8U4pMw8JIsovTy59t+Eovzo5yqmEXFXRIkQWR34xgpzF9uqnrAqYEcDY8EvwB46bSaiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0fo586HePkUPVOupDvAIfsRQNM5VeU2X1bauMrLtL6g=;
 b=qScjGgOcnL2CNSjWIvt2rHNh7mnHjfhsxd+3LGvU8rWSLiYRnVNSY/ilsH56cWmkng+aNucH2JCj4OZgipqTRSGTOmc/zVk29N5L0BEZ+/dR/gLzOpFKpWd/ZwBUpvRKmBMFwhMFZj3rylY1fSdzCTSUCvih5UCXYOx2vcSySzs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AS4PR08MB7735.eurprd08.prod.outlook.com (2603:10a6:20b:512::15)
 by DB4PR08MB8149.eurprd08.prod.outlook.com (2603:10a6:10:383::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.11; Mon, 13 Oct
 2025 07:01:01 +0000
Received: from AS4PR08MB7735.eurprd08.prod.outlook.com
 ([fe80::dc8:5e03:5b06:8726]) by AS4PR08MB7735.eurprd08.prod.outlook.com
 ([fe80::dc8:5e03:5b06:8726%4]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 07:01:01 +0000
Message-ID: <b7cccc39-612d-4736-8689-890b4077e730@wolfvision.net>
Date: Mon, 13 Oct 2025 09:00:58 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 00/17] media: rockchip: add a driver for the rockchip
 camera interface
To: Michael Riesch <michael.riesch@collabora.com>,
 Bryan O'Donoghue <bod@kernel.org>, Mehdi Djait
 <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Mehdi Djait <mehdi.djait@bootlin.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <HSTnNzc6MTLHGWih5qjlI2nvVECP8FVdcQVeBON4KlWYLtEaWIlNmEpKTU_vlqitbIIHMpabKnvnmpEQFqHYxQ==@protonmail.internalid>
 <20240220-rk3568-vicap-v11-0-af0eada54e5d@collabora.com>
 <88b1dcda-be2d-4c57-b042-c1809ef1dc97@kernel.org>
 <de1a1dce-f60e-48a1-9945-d2c91b328df5@collabora.com>
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <de1a1dce-f60e-48a1-9945-d2c91b328df5@collabora.com>
X-ClientProxiedBy: VI1PR09CA0151.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::35) To AS4PR08MB7735.eurprd08.prod.outlook.com
 (2603:10a6:20b:512::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS4PR08MB7735:EE_|DB4PR08MB8149:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c1a6835-47dd-4d1a-aff5-08de0a2644a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016|921020;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TVRSWmNjM210QlNkdUxXWWpzdWt6VVhSQ3hWTkFINUNoY0xjNGZwQXpLVXli?=
 =?utf-8?B?azhlakx3RFBabVBrcFlwODNsL090V29YL1BTbFM0Vnd4RFFXUG9WWk1oQ29Y?=
 =?utf-8?B?RC93c1Vjc09tVnFiRVd3TmVPQ0s5L0N6ZGZjOTdtcmZjWjJpc2NEMUxwMDFq?=
 =?utf-8?B?d1dSaXozY2gwZEhISktoSTk4L3cvQXJvZG5KZ2MwTE50bkwvR0k0MzArbEVo?=
 =?utf-8?B?RUFTaW9YaWdKNE8rZUk1NWowNU9Hd0IrQkV0aHRVVERQY3JkR0tjZndXakhr?=
 =?utf-8?B?dWpMKzBlYzNMeUFwdmF5cWFCcXRML0krcmJlL3hDOFZNN2JDL1Z3YXRSbFVi?=
 =?utf-8?B?Z2hmU1IzQzFFS29WMzlsK3d1K2VWV1ZGVU4xZnl2WFFVUXZkM2ZWazRYM2Ur?=
 =?utf-8?B?amFhZkhTTWpSMzZFZVVTem4vREtGMjZBSXBqRlhRVjdoOTFMVDA0SGRDOEwy?=
 =?utf-8?B?S2VxOHhWemM1VU9iSkZJY2I2RXM0TVBGYVF1Z20zV3gvdWFvNHh6dXJuSkhX?=
 =?utf-8?B?YU5xOExUUWR4R1RtU1dQbzF4Ylpid3hsYUc1aVExWm1vYjhtQXlNSXJKeFlH?=
 =?utf-8?B?K1V1bCtxSm5SNG9CQ1lNTFdmRUNTdDRHdW55ZUZPNTYvUjB4RU0yZ0dkSFEw?=
 =?utf-8?B?cWxqZGp4TENmNjBPelRIcWpxZEp5QkIrNXB2eGZnZ3pPL3VIZ1FwVTV2UCtC?=
 =?utf-8?B?cUNrWjVoYnRWZVlRR0hIclNDcVd5dURQeXpvbFo2c0RxVEdSMGc1RnNDd01z?=
 =?utf-8?B?ei94RFNwODIrb3RMb0grUjFQc1E4aVpRS0hsemFoT09CM2ZjdlB4T0lxaktF?=
 =?utf-8?B?alJWUDlORU5XK3RFbWVjRlFVVVgwSHBHUlM4WG9RVXNyMEtWSy9yeDZHL1dl?=
 =?utf-8?B?c05acURUUEpkaVZTUUNvWUV4OXpobjBhRndEK2Z3cnBtNHZIOE5zYzVPSVNx?=
 =?utf-8?B?UWMzYmszQVV0akQ4YU8vc251VmtuQUNkV014MFNpSlV5WUplV1EzU3RNVjFu?=
 =?utf-8?B?NWxtT2hwcEt5YlRPVnBkSk1mc0NVODNXUGF3NDhNQ0FTckN6cmRkYnNpdkgy?=
 =?utf-8?B?ZWVIZ2cyK21Mbzd2bVFNd3U3bUs2WGJLUkJnQ0l5WGVXekdMVDJqeTVvc294?=
 =?utf-8?B?Wlo3MStNWlZmUFJTUnF0Y0J5ODZXek43UnJuMTJwdjBSZW9KQkJPNms5TUhh?=
 =?utf-8?B?ZDR6OWdxZEpTNWcxUWVKaUpvRS8xMFZSMm90emhVcmlXcjIrY3JHUHpCQUlM?=
 =?utf-8?B?azNuMHVrcVpiYXd1UHJEQVBmckJNSnVGWnM5K1grbE0rd1RaQ1lOR1JVWEJS?=
 =?utf-8?B?NENGdmJsYU96UWNSUmRZMVFxTmRCV1crdlJmaGNzQ3ZmWkRzTlZYT0xSZzhC?=
 =?utf-8?B?QzlvYnBNN2lMVCtvbmVBQzRXdTk1dE5BcXpRWnRmMFNSYkM5eFVSSFcrZ3d0?=
 =?utf-8?B?ZVRCQi9RUlA1N1ZDSWU4NTkxWmJrSlZqQTRRTXJEcDhZKzZQblkyaFpnNlVq?=
 =?utf-8?B?SE5aLzN0MkNsZUErcG54UTcySkJVczNFRThTZGQvL3M1NWlZMHlHd2haOTRR?=
 =?utf-8?B?R3l1TkREMWhaYllQNFVxUXlxTFE2VHpQZ1duQzhWbldJUjRPQVV0VnkxalJQ?=
 =?utf-8?B?TDQ1SmFPWHVwK0JydHpsTHVzVWtOUlFFS1pzR3JnS3JWcnlYZFg3RUgvV3ZS?=
 =?utf-8?B?U1FPUEIwOC9WQ3BEMHFnQ1pTelBzQkUrR2lKQk4wMTMwZ0FhMEVLSS9VdHo3?=
 =?utf-8?B?cGhtQXVLbDdkcVQ1YkoyUFc3clIwNmhpc3E3LzMwdFZWMVlZOCtKcnFlQjk1?=
 =?utf-8?B?cFRQOFVuRTIzWEtJYkJwbnFxZFVOMksvTzdydW1uZy9uOXNyeXgzYWJHYnVx?=
 =?utf-8?B?eWRJNFFkRGppRkFFVXl3NDM5cCs4aVZGTVJXZ05yajhZc2dTR1pnMG15cEJZ?=
 =?utf-8?B?Lyt2NXU0RWNOL3huR2dVMWhQdmllUVkwWEJoU2M2OTVNY09Tc3RNUENtY3B1?=
 =?utf-8?B?RVlmQnNzWnR6c1RnOGcxd3pDTXErMmVDU2FlMU9GeU1vYkp0L2ZUZm43U0NI?=
 =?utf-8?Q?RJEnbd?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7735.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(366016)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEJiMk41NHVBdHdsVEpibXpWRnRWTUMyUE84aUxBQ05KcitFTUxJQVdhN1Ro?=
 =?utf-8?B?aXRDR3BPNVdzdWZ1MXFGcjBVTTVQTEsweUZiYVV5K1NzOE5SU1pBOWw2TXRS?=
 =?utf-8?B?UDdOaUdadnhXWG1rSlRiUzZ5anZ2WTZNZFNXTm8wNlVhaTJJOXREb1dGNTk2?=
 =?utf-8?B?L1lCS29pOWw5VlFEMTZHR0gzajhCbXI1aSsrV0VNZ1VPODNSbEhiMUtmcjBC?=
 =?utf-8?B?RTQzY1ZpTTBLd2JRT0ZtM0RNSzNrU0tORVZFVEI1MEd6anZMNFg3bWdTcEJQ?=
 =?utf-8?B?Sjc1cmowTDl5dFpibThDVzhURi9QWFUyRzkrcURzNDhkQnJKWVZGUm5NSExF?=
 =?utf-8?B?YXBacEZXbE45VEpTeVBYMjBKOFpQZzZ5UDB0K1I0RG5HSGtKOXNpT0NNd3lj?=
 =?utf-8?B?alZGbXR5aklPVHNvVlVTVjJIbjhZUnJkSzlVME1aQUZIa2pVclZTOXlVeVhC?=
 =?utf-8?B?WlcvalNIN2p5TlM0di9RS1d2R0VJSCtIQ3BySmNZZXVMWkNLVThQUm1zTjdX?=
 =?utf-8?B?eVg5cEg5WVg1bktPaG04ZCtqbjkwclRpc29MWWt6SDFka2NYMHdQMkN1UW5p?=
 =?utf-8?B?VGR2V2o5bjg3ZG0zNFQxMmpjai9abUd5eWlKRnhSZThLcElwVy9RWFh4cmxB?=
 =?utf-8?B?VFNpMXJqOXRFWE5tSDdWRGFLOVRFcHE5Y1c4NWQ5d2JrY3N4Mk9lZUEwTmIz?=
 =?utf-8?B?UGtsWFhHYWE5Qi93UnB1YlBWUXprUUhGSktrVnRsUWpEajdqdUg1TUZMWEhX?=
 =?utf-8?B?ejNwWm0zQ1pUZk4xcDhYMFl6NWpnY1ZCMzFZb2pjVVVaY3dYL2dWRVFRNk8v?=
 =?utf-8?B?cDdlcFVyREZreVZSMVFjMVdPcEtpSGdLUDk1VjU2OEFBS01qRTJSQVczY3FL?=
 =?utf-8?B?UWlVZW9pUktOSWZkNUM2cWo1MHUzNVVtMTA5NENxNVlaYXhOVnpCMmoyS3NO?=
 =?utf-8?B?c29hZm5URHZhYmp3U2FLRTZ6ZnNnREluU3pWNElkVDZERTNjdlk1UEp5ZllJ?=
 =?utf-8?B?Qmd4aEl6M2JGOUJHZ21NVHFYa05ScFFPSjBsUUdlWUkxTjFTZTRHdDIrM0Js?=
 =?utf-8?B?NzhNbFZleXN6ZitIdmlhcUI2K1RZRlpIWUdPay9PazVvTXBMSmpFbUJ2b3ZM?=
 =?utf-8?B?MW9hMlhMR1hNOFhYdjgyRzhycXV6VVV3UnkrMTFCd2lEdWg0WVZHRGV0NFYv?=
 =?utf-8?B?NS9HTTQ3aHFOTk51VjB4Q3VnSWV3S0VrTVBjZGJkNkZSRUw2dytSVlgzRjA5?=
 =?utf-8?B?MkFGczVrbXdvYll6N0hxSDBKN3dyM3RueUMwdXllQWZsaFhNbmRuVnV3K0h4?=
 =?utf-8?B?Z1BydzIxNGNRSUxJRkhZUnAweWtMN1lTdEYzOEI1ZllnN24vbDZaeW5NcEFC?=
 =?utf-8?B?eWlYeEZOaHorbUhjU1NJYlJIN041c1U1aU1hSFhYU2JWL1Ryb1Bnb2VGRTRL?=
 =?utf-8?B?TmJTU2d3QVVjdVRORkoraUhWMWVvRlE0QjZoWmJ3c1N0c3h5MUJBWTA3MkVl?=
 =?utf-8?B?aXZZL0tuQ1hCMWVudnYyTUlybWJmVmdKNUt5Q2s0SjQvRi9MdW5zaHhvQ2dT?=
 =?utf-8?B?bENheW9SK3BjZTVNOUFCQURVRlowT1RLeHVuZFhXbG0xMWlzQ2VtTDNYY2Iy?=
 =?utf-8?B?RjlibGZuWkRJN3YrS200OFVmelJJNzhBbnRFSGdBU0c2R3BxV1lCeEUvQXZI?=
 =?utf-8?B?T2l0cndZcmVacUZDU3JUNVJiWWRXUFMzMWg5b3VwcUpxTm5WMWVzZHJDWFlL?=
 =?utf-8?B?MERuVDY1Yk5mTG9ROHlWTEgrOEJzVjdvSEJjdC9COVRqeFVOejJSL2pwRzhX?=
 =?utf-8?B?a1laRHdoQk16c3kxZEszN1NYcWx3bW90S3czMTJDMGNLelpTMzhudE56ZCth?=
 =?utf-8?B?VHNhZkRpaGNudElvSkRMd3pmelRObmQrUmhFa3BTb0Rxa1Q1elhMbkFScnhW?=
 =?utf-8?B?Uk82N1RvdVVpVTZEN1JaVzB6TEEyMDcrNkZRUUhKLytFNkZ3d0RkRE45cS9P?=
 =?utf-8?B?dU56WUhGdHNkRUwyVGdrK0RQNVg4SHdaeVJoWXB0RkY5YVNacGVFelc1R1hu?=
 =?utf-8?B?OXRmOE5CK3B2VGFPb3ZWNkVBeE9GWnNtWkVkdGhteXZjRzMvOVMyeWZrWER2?=
 =?utf-8?B?b1krVHl2WDJ1Wm5raVJkdkVvNklJYk1JK3AxaEhNakQxM2hRTkpDbjhSK0Ew?=
 =?utf-8?B?NHc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c1a6835-47dd-4d1a-aff5-08de0a2644a4
X-MS-Exchange-CrossTenant-AuthSource: AS4PR08MB7735.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2025 07:01:01.3218
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AdKQf9P7Jzv/EGM7sI+ebJfxY81K6QpNavo7UHeC707maOEAkZABw9jY3DRZR8N9Dlki9tCxG7i6hs7u+Foi1QiQ+kPr0WIccWSSLdhLobE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB8149
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_000113_409667_F117A1C3 
X-CRM114-Status: GOOD (  18.14  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTWljaGFlbCwgQnJ5YW4sCgpBbSAxMC4xMC4yMDI1IHVtIDE1OjQ2IHNjaHJpZWIgTWljaGFl
bCBSaWVzY2g6Cj4gSGkgQnJ5YW4sCj4gCj4gT24gMTAvMTAvMjUgMTQ6MTUsIEJyeWFuIE8nRG9u
b2dodWUgd3JvdGU6Cj4+IE9uIDE3LzA5LzIwMjUgMTY6MzgsIE1pY2hhZWwgUmllc2NoIHZpYSBC
NCBSZWxheSB3cm90ZToKPj4+IEhhYmlkZXJlLAo+Pj4KPj4+IFRoaXMgc2VyaWVzIGludHJvZHVj
ZXMgc3VwcG9ydCBmb3IgdGhlIFJvY2tjaGlwIENhbWVyYSBJbnRlcmZhY2UgKENJRiksCj4+PiB3
aGljaCBpcyBmZWF0dXJlZCBpbiBtYW55IFJvY2tjaGlwIFNvQ3MgaW4gZGlmZmVyZW50IHZhcmlh
dGlvbnMuCj4+PiBGb3IgZXhhbXBsZSwgdGhlIFBYMzAgVmlkZW8gSW5wdXQgUHJvY2Vzc29yIChW
SVApIGlzIGFibGUgdG8gcmVjZWl2ZQo+Pj4gdmlkZW8gZGF0YSB2aWEgdGhlIERpZ2l0YWwgVmlk
ZW8gUG9ydCAoRFZQLCBhIHBhcmFsbGVsIGRhdGEgaW50ZXJmYWNlKQo+Pj4gYW5kIHRyYW5zZmVy
IGl0IGludG8gc3lzdGVtIG1lbW9yeSB1c2luZyBhIGRvdWJsZS1idWZmZXJpbmcgbWVjaGFuaXNt
Cj4+PiBjYWxsZWQgcGluZy1wb25nIG1vZGUuCj4+PiBUaGUgUkszNTY4IFZpZGVvIENhcHR1cmUg
KFZJQ0FQKSB1bml0LCBvbiB0aGUgb3RoZXIgaGFuZCwgZmVhdHVyZXMgYQo+Pj4gRFZQIGFuZCBh
IE1JUEkgQ1NJLTIgcmVjZWl2ZXIgdGhhdCBjYW4gcmVjZWl2ZSB2aWRlbyBkYXRhIGluZGVwZW5k
ZW50bHkKPj4+IChib3RoIHVzaW5nIHRoZSBwaW5nLXBvbmcgc2NoZW1lKS4KPj4+IFRoZSBkaWZm
ZXJlbnQgdmFyaWFudHMgbWF5IGhhdmUgYWRkaXRpb25hbCBmZWF0dXJlcywgc3VjaCBhcyBzY2Fs
aW5nCj4+PiBhbmQvb3IgY3JvcHBpbmcuCj4+PiBGaW5hbGx5LCB0aGUgUkszNTg4IFZJQ0FQIHVu
aXQgY29uc3RpdHV0ZXMgYW4gZXNzZW50aWFsIHBpZWNlIG9mIHRoZQo+Pj4gY2FtZXJhIGludGVy
ZmFjZSB3aXRoIG9uZSBEVlAsIHNpeCBNSVBJIENTSS0yIHJlY2VpdmVycywgc2NhbGUvY3JvcAo+
Pj4gdW5pdHMsIGFuZCBhIGRhdGEgcGF0aCBtdWx0aXBsZXhlciAodG8gc2NhbGVyIHVuaXRzLCB0
byBJU1AsIC4uLikuCj4+Pgo+Pj4gVGhlIHYxMSBvZiB0aGUgc2VyaWVzIGFkZHMgYSBtZWRpYSBj
b250cm9sbGVyIGNlbnRyaWMgVjRMMiBkZXZpY2UgZHJpdmVyCj4+PiBmb3IgdGhlIFJvY2tjaGlw
IENJRiB3aXRoCj4+PiDCoCAtIHN1cHBvcnQgZm9yIHRoZSBQWDMwIFZJUCAobm90IHRlc3RlZCwg
dGhvdWdoLCBkdWUgdG8gdGhlIGxhY2sgb2YgSFcpCj4+PiDCoCAtIHN1cHBvcnQgZm9yIHRoZSBS
SzM1NjggVklDQVAsIGluY2x1ZGluZwo+Pj4gwqDCoMKgwqAgLSBjYXB0dXJpbmcgZnJhbWVzIGZy
b20gdGhlIERWUAo+Pj4gwqDCoMKgwqAgLSBjYXB0dXJpbmcgZnJhbWVzIGZyb20gdGhlIE1JUEkg
Q1NJLTIgcmVjZWl2ZXIKPj4+IMKgIC0gYWJzdHJhY3Rpb24gZm9yIHRoZSBwaW5nLXBvbmcgc2No
ZW1lIHRvIGFsbG93IGZvciBmdXR1cmUgZXh0ZW5zaW9ucwo+Pj4gwqAgLSBhYnN0cmFjdGlvbiBm
b3IgdGhlIElOVEVSRkFDRSBhbmQgQ1JPUCBwYXJ0cyB0byBhbGxvdyBmb3IgZnV0dXJlCj4+PiDC
oMKgwqAgZXh0ZW5zaW9ucwo+Pj4gwqAgLSBpbml0aWFsIHN1cHBvcnQgZm9yIGRpZmZlcmVudCB2
aXJ0dWFsIGNoYW5uZWxzIChub3QgdGVzdGVkLCB0aG91Z2gsCj4+PiDCoMKgwqAgZHVlIHRvIHRo
ZSBsYWNrIG9mIEhXKQo+Pj4gYW5kIGEgVjRMMiBzdWJkZXZpY2UgZHJpdmVyIGZvciB0aGUgUm9j
a2NoaXAgTUlQSSBDU0ktMiBSZWNlaXZlci4KPj4+Cj4+PiBUaGUgZHJpdmVyIGNhbiBiZSByZWFk
aWx5IGV4dGVuZGVkIHRvIHByb3ZpZGUgc3VwcG9ydCBmb3IgdGhlIFJLMzU4OAo+Pj4gVklDQVAg
dmFyaWFudC4gSW4gb3JkZXIgdG8ga2VlcCB0aGluZ3Mgc2ltcGxlLCBob3dldmVyLCB0aGlzIGV4
dGVuc2lvbgo+Pj4gc2hhbGwgYmUgc3VibWl0dGVkIHNlcGFyYXRlbHkuCj4+Pgo+Pj4gTG9va2lu
ZyBmb3J3YXJkIHRvIHlvdXIgY29tbWVudHMhCj4+Pgo+Pj4gVG86IE1laGRpIERqYWl0PG1laGRp
LmRqYWl0QGxpbnV4LmludGVsLmNvbT4KPj4+IFRvOiBNYXhpbWUgQ2hldmFsbGllcjxtYXhpbWUu
Y2hldmFsbGllckBib290bGluLmNvbT4KPj4+IFRvOiBUaMOpbyBMZWJydW48dGhlby5sZWJydW5A
Ym9vdGxpbi5jb20+Cj4+PiBUbzogVGhvbWFzIFBldGF6em9uaTx0aG9tYXMucGV0YXp6b25pQGJv
b3RsaW4uY29tPgo+Pj4gVG86IEdlcmFsZCBMb2Fja2VyPGdlcmFsZC5sb2Fja2VyQHdvbGZ2aXNp
b24ubmV0Pgo+Pj4gVG86IEJyeWFuIE8nRG9ub2dodWU8YnJ5YW4ub2Rvbm9naHVlQGxpbmFyby5v
cmc+Cj4+PiBUbzogTWFya3VzIEVsZnJpbmc8TWFya3VzLkVsZnJpbmdAd2ViLmRlPgo+Pj4gVG86
IFNha2FyaSBBaWx1czxzYWthcmkuYWlsdXNAaWtpLmZpPgo+Pj4gVG86IExhdXJlbnQgUGluY2hh
cnQ8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+Pj4gVG86IE1hdXJvIENhcnZh
bGhvIENoZWhhYjxtY2hlaGFiQGtlcm5lbC5vcmc+Cj4+PiBUbzogUm9iIEhlcnJpbmc8cm9iaCtk
dEBrZXJuZWwub3JnPgo+Pj4gVG86IEtyenlzenRvZiBLb3psb3dza2k8a3J6aytkdEBrZXJuZWwu
b3JnPgo+Pj4gVG86IENvbm9yIERvb2xleTxjb25vcitkdEBrZXJuZWwub3JnPgo+Pj4gVG86IEhl
aWtvIFN0dWVibmVyPGhlaWtvQHNudGVjaC5kZT4KPj4+IFRvOiBLZXZlciBZYW5nPGtldmVyLnlh
bmdAcm9jay1jaGlwcy5jb20+Cj4+PiBUbzogTmljb2xhcyBEdWZyZXNuZTxuaWNvbGFzLmR1ZnJl
c25lQGNvbGxhYm9yYS5jb20+Cj4+PiBUbzogU2ViYXN0aWFuIFJlaWNoZWw8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KPj4+IFRvOiBDb2xsYWJvcmEgS2VybmVsIFRlYW08a2VybmVs
QGNvbGxhYm9yYS5jb20+Cj4+PiBUbzogUGF1bCBLb2NpYWxrb3dza2k8cGF1bGtAc3lzLWJhc2Uu
aW8+Cj4+PiBUbzogQWxleGFuZGVyIFNoaXlhbjxlYWdsZS5hbGV4YW5kZXI5MjNAZ21haWwuY29t
Pgo+Pj4gVG86IFZhbCBQYWNrZXR0PHZhbEBwYWNrZXR0LmNvb2w+Cj4+PiBUbzogUm9iIEhlcnJp
bmc8cm9iaEBrZXJuZWwub3JnPgo+Pj4gVG86IFBoaWxpcHAgWmFiZWw8cC56YWJlbEBwZW5ndXRy
b25peC5kZT4KPj4+IENjOmxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwo+Pj4gQ2M6ZGV2aWNl
dHJlZUB2Z2VyLmtlcm5lbC5vcmcKPj4+IENjOmxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcK
Pj4+IENjOmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gQ2M6bGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBS
aWVzY2g8bWljaGFlbC5yaWVzY2hAd29sZnZpc2lvbi5uZXQ+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBN
aWNoYWVsIFJpZXNjaDxtaWNoYWVsLnJpZXNjaEBjb2xsYWJvcmEuY29tPgo+Pj4KPj4+IENoYW5n
ZXMgaW4gdjExOgo+Pj4gLSBya2NpZjogc3BsaXQgbGFyZ2UgZHJpdmVyIHBhdGNoICg2LzEzIG9m
IHYxMCkgaW50byBzbWFsbGVyCj4+PiDCoMKgIHBhdGNoZXMgKDYtMTEvMTcgb2YgdjExKSAoQnJ5
YW4pCj4+PiAtIHJrY3NpOiByZXBsYWNlZCBkZXZtX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0X2V4
Y2x1c2l2ZSB3aXRoCj4+PiDCoMKgIGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZlIChQ
aGlsaXBwKQo+Pj4gLSBMaW5rIHRvIHYxMDpodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQw
MjIwLXJrMzU2OC12aWNhcC0KPj4+IHYxMC0wLTYyZDhhN2IyMDliNEBjb2xsYWJvcmEuY29tCj4+
Cj4+IEkgYmVsaWV2ZSBpdCBpcyB0aGUgY2FzZSBhbmQgcGxlYXNlIGZlZWwgZnJlZSB0byBjb3Jy
ZWN0IG1lIGlmIEknbSB3cm9uZwo+PiB0aGF0IHlvdSd2ZSBkcm9wcGVkIGEgbG9uZyBsaXN0IG9m
IHNvYi9jby1kZXZlbG9wLWJ5LCBJIHRoaW5rIHdlCj4+IGRpc2N1c3NlZCB0aGF0IHRvbywgYmVj
YXVzZSBvZiB0aGUgbGV2ZWwgb2YgY2hhbmdlLCBpdCBzZWVtcyByZWFzb25hYmxlCj4+IHRvby4K
PiAKPiBDb3JyZWN0LiBUaGUgdGFnIGxpc3QgdXNlZCB0byBiZSBxdWl0ZSBjb21wbGljYXRlZCBb
MF0gZHVlIHRvIHRoZQo+IGNvbXBsaWNhdGVkIGhpc3Rvcnkgb2YgdGhpcyBkcml2ZXIuIE1heGlt
ZSB3b3JrZWQgb24gdGhlIGRyaXZlciB1cCB0bwo+IHY1LCBNZWhkaSB1cCB0byB2MTQsIEkgYWRk
ZWQgUkszNTY4IHN1cHBvcnQgb24gdG9wIG9mIE1laGRpJ3MgdjE0ICh3aXRoCj4gc29tZSB2YWx1
YWJsZSBjb250cmlidXRpb25zIGZyb20gR2VyYWxkKSBhbmQgc3VibWl0dGVkIHRoYXQgYXMgdjEu
IHYyIG9mCj4gbXkgd29yayBpbmNvcnBvcmF0ZWQgTWVoZGkncyB2MTQsIGFuZCBoZXJlIHdlIGFy
ZSwgYWZ0ZXIgc2V2ZXJhbCByb3VuZHMKPiBvZiBmZWVkYmFjaywgYXQgc29vbi10by1iZSB2MTIg
KG9yLCBpbiBmYWN0LCB2MjUpLgo+IAo+PiBPbiBxdWVzdGlvbiBvbiB0aGF0LCBhcmUgdGhlc2Ug
cGVvcGxlIGF3YXJlIG9mIHRoZSBjaGFuZ2UgYW5kIGNjJ2Qgb24KPj4gdGhlIGxpc3Qgb2YgcmVj
aXBpZW50cy9jb250YWN0YWJsZS9hZ3JlZWFibGUgdG8gdGhlIGNoYW5nZSA/Cj4gCj4gSSBhbm5v
dW5jZWQgdGhpcyBwbGFuIGFzIGEgcmVzcG9uc2UgdG8geW91ciBjb21tZW50IHRvIHYxMCBbMV0g
d2l0aAo+IE1heGltZSwgTWVoZGkgYW5kIEdlcmFsZCBvbiBDYzogYW5kIGRpZCBub3QgaGVhciBh
bnkgb2JqZWN0aW9ucy4KPiAKPiBIb3BlIHRoYXQgdGhpcyBpcyBzdGlsbCBPSyBmb3IgZXZlcnli
b2R5IQo+IAoKSSBhZ3JlZSB3aXRoIHRoYXQhCgpSZWdhcmRzLApHZXJhbGQKCj4gQmVzdCByZWdh
cmRzLAo+IE1pY2hhZWwKPiAKPiBbMF0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1t
ZWRpYS8yMDI0MDIyMC1yazM1NjgtdmljYXAtdjEwLTYtNjJkOGE3YjIwOWI0QGNvbGxhYm9yYS5j
b20vCj4gWzFdCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVkaWEvMjNjY2M3NDQt
NzQ1ZC00YTMxLWE3OWMtMmQ2NGJmMWVkNDNkQGNvbGxhYm9yYS5jb20vCj4gCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
