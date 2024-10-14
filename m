Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C960D1812E
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 16:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dnNkjnmmWV7h+b3B5E29I6Opw9d7xGH1IsguuSaSPb4=; b=TgLrOv4lxwPKYN7n2msk6Key37
	bitlKIbA3rIRy5qTp4OHIWbyfZ7IAT2b6eFctjqPJn8P/WGPCoOupKbKLnAsOLYsBNdvgOpFqTZVe
	NFw1UP21uOINBzVlKz8sAZNTeaBcfnRs8BGxN003+laRau1VpCjsZf7y79T82Xuo0GIo4NkayosUi
	XeXwxmy+mSUNzq9k6OsRKEpzBLD0dIdPW7cL8OnZVqm6qjMaQLDfMrhQn4noqb6+vey0NwwJf9EDt
	dNgJGXe3x4v2eQIVytfR/+NO3aEIXGutJkyEBk2VVeW0GD7g5UBux4w9sbfVZDjBwC97RYGJoSqRQ
	p7slJf4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Nwg-00000005re2-0IxV;
	Mon, 14 Oct 2024 16:29:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Nwe-00000005rdI-09Ke;
	Mon, 14 Oct 2024 16:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Transfer-Encoding
	:Content-Type:In-Reply-To:From:References:Cc:To:Subject:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=EF6m/5TcyKZKuX90E/j9n450Fnkj2a1QBuRdbCyElvs=; b=SjVp5Kk30TxVzmnNlK60XbiKSE
	nOFTcR3UsaydwYaU0+HL8VGVsZ2m3wHiRIaxeQx0/kppRo7l9PO/2wAbPFv/2elOBAYgDmb9elDZv
	WrBGqNvBQI6A6HxIs4s9luheJb6eLVbQ40HhisoYhlL5qs6kMQ/e0jCjNjjWOybkpR+HD0CUCqsvc
	KUZae/Rd0Mx3I5My3MLo0eRYldVTuzjEgeRuFFmJ4ZnEQjTJgjhvVNBWqnlMg0VyQoapD+1LRWHRW
	tzVq43FkPhDpQUgSdkc+n7qpb5KCH6OvpSCoUw8prA2BHustjeRPOCDYg/lZWP2UQmQfq1w4yNiCG
	3fyQyDeg==;
Received: from mail-vi1eur05on20622.outbound.protection.outlook.com ([2a01:111:f403:2613::622] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Nwa-00000006O0N-0oWa;
	Mon, 14 Oct 2024 16:29:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZZzdBtSIwAt/qQQDiQpjiWdYq9m/AvpBdzkqjtCIazaiQoDY/lxMD7yyZZYnZN67HJyuZSNlZPF0cR+iFKU2C9JYwZNu2D2nS2jD1HVo+AV7rqOVitcD63C3aXl0x/Gis6p20kX9o6veivuu9gIuAz0OAxgSjtLnpNYJ3hHdba0eRNYTiDUIv8DksZNqFXj9yYmXnKtpvmbAOxJNZxYrOfnKds2KBxN4FK/6h0Gin7UcZ4LAEUGLrxLr7OF/Q5r7/dPkMq/TNeUqosuNp72I7L06fOBTjB5CepeBIX4jtT2EcpNDhl7Baw5qlrcEGzTcgLi9qG1o4oqoMBww7vMjYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EF6m/5TcyKZKuX90E/j9n450Fnkj2a1QBuRdbCyElvs=;
 b=TZX5XEG4XDbcPsG421bgXsym8L0OKzSkkF/ScPm/Ngd4yjkbLSb/fIa6MEzREpr2ak15jfOVikNvFcTB/viL8RxMmUql5IlyNKDkT5MWOs1pGFzrAkwP9sZY21b/fGJy7623OMMKvUV9eYGBos6XgibSgl/MfD3NGLDJHuj3ByLyS+DtXGaPXxLSYaHjpj0TcM5EyD32RbOe/6Wb/YP+x4lSmfAi4y6IWkasU3Ltvu8NNOBw1vIZUOSxakrGrtoK0EneR26XUVGxHK4xFxV0Nfuz8aaXjQdxCe/P0lj5CzvzXHH2odchmcLa76UKf4YGYsdSf5culU3xOh3G/WMCAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EF6m/5TcyKZKuX90E/j9n450Fnkj2a1QBuRdbCyElvs=;
 b=YHvHzwsTpWP8eTWJcl4WV6ghZcv0WrvMk4kMvt7eJdjcgh7tBuewg5m/HAWhLBohqn/+1h1ZNh0ElzktAIyb9FSdWeoHS+vVJU83iWYGFvG/CEbGNL/Uvqs/7wlTI2eznJd3bEfxJ6GwzjcR84En1RjoDkJTv1sn91UNZ1iSPPY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DU2PR04MB8727.eurprd04.prod.outlook.com (2603:10a6:10:2de::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.26; Mon, 14 Oct
 2024 16:29:04 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8048.020; Mon, 14 Oct 2024
 16:29:04 +0000
Message-ID: <64ad124d-ac39-4d44-8117-9467f1e7472e@cherry.de>
Date: Mon, 14 Oct 2024 18:29:02 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 06/14] arm64: dts: rockchip: Remove #cooling-cells from
 fan on Theobroma boards
To: Dragan Simic <dsimic@manjaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-7-heiko@sntech.de>
 <3fe3561f1839ed17dfa74ba0a408482d@manjaro.org>
 <4f8a87da-76b1-4fa6-8755-5dbf10bfd74e@cherry.de>
 <ff20557655d689571590d5b908b705c1@manjaro.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <ff20557655d689571590d5b908b705c1@manjaro.org>
X-ClientProxiedBy: FR4P281CA0277.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e6::9) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DU2PR04MB8727:EE_
X-MS-Office365-Filtering-Correlation-Id: 593c941e-6988-419e-4509-08dcec6d50fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UDVqQXZUaDZzQ09veC9BSFJTQWI2MDhaUXFIMEVuUTY5Y3ZtWnNzU3BvUDJ2?=
 =?utf-8?B?SlUxdnZTd2lQektLTUlmVGczYWUvbEpVWjJEYmxLSVlhNzBwT0hCTWY1amlO?=
 =?utf-8?B?RWFSamxvN21iMHZwUzBISXIwTEFjMmVwZTBzWTZiTm1lWlFib2pTN0ZtQWpm?=
 =?utf-8?B?bVFVVTBzK2srZFliSEdPVTVqTWhiVFZNQjJOQ2FpQ0FIQ0tnK3lUeG9vM3FV?=
 =?utf-8?B?RFpwZG8yeDNHSFo2YllXT3E0QlRTZUwzMml3S2ZWbEdwZVBZSmNPNzR1enBh?=
 =?utf-8?B?UU94L3VEZ2NUOWw3MUpYNUxxOG9YRmVqR3hNQW02WjgxZlg5Zm8yNWNMQURX?=
 =?utf-8?B?ZVcxKzJWbGhaeXRwMlZBOTVqM21KREY1a3RKUm8xd24yWXdlUGM5VmVXVzVZ?=
 =?utf-8?B?OWpLaTNuTjh0OE91UzFlVWMwVXN2WlQyR1VnRUxlaTlSMEQwd29hSFBzbm5R?=
 =?utf-8?B?Q2EyNXM5cXk1QlVIcWdZejRxdEJYOC9sU01tejc5K3hlZHhtYmdHTmx1ZXdF?=
 =?utf-8?B?UkxEKzJhQVV3dE16RmFzUGRiRThwWnZndi9BV2hyRHhQSGU5dldjVGVzSDlY?=
 =?utf-8?B?NWwzdTB0SFpxTURaRmpLTGV3WmIrelgwMWZ3VE1ET20yclFKcDgrQlZOVEJn?=
 =?utf-8?B?dWlCWjZIVW8vY0ZGMjVTMlZXU3RlYlJUMDhHSEdISFRaMEtKOFBTbUs0NVZa?=
 =?utf-8?B?WHQ0T1FBUER3TDhCcXRVZFBvdk5aTDBmL1JMMTFheW1yTXYrcXZ6czFEWVVL?=
 =?utf-8?B?VVVvNnFMMURhUyt5eUZmNGZ6UGlUZlUycVdFOGkzZGpxaXVEUnprZzhOU0Rt?=
 =?utf-8?B?WmVWdnhMb2UrSndIYUE4RHU1MGRjOU9RZVpEcVczeEZOdC9YRG8rZlF3enh2?=
 =?utf-8?B?UFc0ODRpOXhzRjR3L0ttaytuSThXUGo0eHNJZmtqRTA3aDZraTNVd1IzbGFm?=
 =?utf-8?B?VXZ5L1N6SWN3Sy9HSFNmU0p3R09nRkZGV0pGSG5MeDZUMFVTVWhFUWk0ZEZp?=
 =?utf-8?B?QzduSGNnSlZLdGdUUkhtUnZOSEZkR213NE9udU5QT0hqbWEzT20zRklxUmFo?=
 =?utf-8?B?K3ROM3BRR2FQcjlqMkM5ZzloRFYrOVVHQ0MyVXNJK3ZnaERQbXJvLzJZdWRZ?=
 =?utf-8?B?ZDlmNlQyUmExLzZtVm9vWWtCV2dCc2kyZm5zV1NnNlFNY3FJbEprU3lDWHA3?=
 =?utf-8?B?QXJjakFwbUQxU2hHWU1SQmNBQ0NSYlBDRWhGOVBMZ29KQ29rSGc0cllRZFV4?=
 =?utf-8?B?LzA1OFJIV1dCekNlRW1NNlVkR2htR2YwUndjVlQ3bkFsd2tWTXVHNENxeWx6?=
 =?utf-8?B?cUM2UzdlNk1YNkpaUkxkSXlHenQxcjBtUEUxWXFyeXg4RjBzZjgvd2c4SkRt?=
 =?utf-8?B?Y2s2TDJNVjViTnRqODNiVG1zdVlGTGxVMi9VQ01RUXplS2pDR25CZkJLb25t?=
 =?utf-8?B?ZWxoaUpYNUpRSW5HQzllZCtrc0x3L1dWN3lpTU4wK3VDZHBnSFlJUWxLbThL?=
 =?utf-8?B?WjVEanliQ3dsd0I2eEltamNDemd5NWJJRnpKWlpXQWhXZTNaa2dhTTRtTHJh?=
 =?utf-8?B?b1hwMWpsaElNR3ZZbXlBcmcxK0dOZERLdXBybzdBbGVha3JFdVpUS09GZFg2?=
 =?utf-8?Q?bOuJ9bQngd0WZd6MDScSAnhNRdcNYgAn2dehXaSVg8gY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzlwenVzSHY4VHdWWGtRby9VMUhHd0FyTDBzdXBJRlYrL1JrT01PdHVhZDFv?=
 =?utf-8?B?NC81MWxMaDZCL3hFVGtmNVBoakpGWFVEVDNmMGNRelRnYzBmcE1tRTJRaC9N?=
 =?utf-8?B?WjlleGNyTGEzM0NpN1NDc1lIZzNmQjlrZ1BUdVhsdmFWVFRxYSs3cHdPMXpu?=
 =?utf-8?B?RHZ2ZnNqVjJPdW9CSUhtSmsyV3gyWTVhKzFIeEdjMTBDUXlCLzZNcTZnd0JD?=
 =?utf-8?B?MmtzWGx0NnoxeEFzWWovYUpSUlVsWTJKYk1aRFN1eVJwbXNmeTFxWFM5TnQr?=
 =?utf-8?B?MlQ5K29vT0JzaktDa1BmQkRUZHE3Kyt6ZEw2Rks3VWxrNDROK3QyYmI0SHVh?=
 =?utf-8?B?UnhRRkgwV3BnRFJtUnlYVWdPWWdZVlZiMkJUUkR2aHFuRmxtK0Q0Qm9VNU9n?=
 =?utf-8?B?Q0hlb0NDOStOU2gvdzlNNE54Mk9jQlpFWFArbXVLNmdOYzBRS3FaSmpZZmNC?=
 =?utf-8?B?QWhEdzZQMGZaMmNWNXd5TFJESnFsMWdjM3VFc0ozL24vTkt0NFBCdi9BL1Z3?=
 =?utf-8?B?b1NZbVBVbUlCMHJVWk5tbHJJViswYytMM0ZuOVF2QUtiNVhLS0sxdC91YkIy?=
 =?utf-8?B?Y0NmazdTaktlSHlLTWMrTkhEVTk0U1laRjk4UXNOOTRjcG9JaHRGNURjcEV5?=
 =?utf-8?B?YS9FWVBUU3dSSDduY2QzSkFROVZOamNLQ3h1NEVxeW9LS1VkeHV1KzN1VEtz?=
 =?utf-8?B?WVFzUXJWbVltbGM4b1Y3aE1xT0V3dVZJRGNEeDFETWNrTXYyeTZtY3hzUVdV?=
 =?utf-8?B?TERjV0FLd054a2g1SVhkUjE5QkNWMlVYYlZNS2NOUmwzWXRibmUyRXhTa3cv?=
 =?utf-8?B?dStXZXc0aElIekFBc2Q2SzhBTENHNktyS0RMdzlBSkZrTUFMYjVQVTFMYmd6?=
 =?utf-8?B?OFJTbGJhWHc5ZlRCUzNZSXQxV1FMRERIWGdpYjQ5UzJLMytleGpVbkdEaVFh?=
 =?utf-8?B?RDc2UFBWWENyazdubFc3S3l2akU2WWVPTG9mQTlkdFRyK0EyNHNIZ05sRk42?=
 =?utf-8?B?Q3QvQXRuSm5WQUd0MmlRSC9wbWZvc1BLaHZiZitvYXVtMGJ3Z2VOSEFYTld4?=
 =?utf-8?B?eHcvSTJ0V251b0MyRkV5TnBrMmYvc012cXYzbHg5b3l0SnNmeEh6bllOd2Nr?=
 =?utf-8?B?alRaS05rc0pJUW9sVlZscCsvOG55RkpmcGd3MlExaDNPMjNzNk9SMDBWa25Y?=
 =?utf-8?B?TUZveEU4N1VpZzdVSU4vKzROU3k4b0pNQVV1TUxhTzhxTm9GaUVza3Z4blB4?=
 =?utf-8?B?RUhZTy9LMHlIckVpZnplQ2FDbTNRQWo1WXo5REgvSURSeTRZaW1sZ3FESWJJ?=
 =?utf-8?B?SnIxbE56ckVLTmdwRmczWjJ1MXdNd0doSkE5bnBvUkd0WkxISGZ4VGxCVjRm?=
 =?utf-8?B?NmNGT3Vsei9QdDlNeUhWQmUwRlFOOGNESE1rWk5ERkg1R284VFpqV3owdFRq?=
 =?utf-8?B?T0M3SDYwWDRraDJMN0ZHdXV5TkhpajRGYUV3RlAzYWl6UU1tTlpRU0gwVzBZ?=
 =?utf-8?B?L1ZTZHg5TTMvUXVKdU4zc1VqeGcrN1FEWTZOd3BmMXljYUVjd01jRExLckZl?=
 =?utf-8?B?c0xWelArcklOM2tiSllqdGRobGw2MDRaa1VQMVZudEhHQ2JsWDV1R2RZc1JG?=
 =?utf-8?B?Y3hwOFJ5eHEwMktPTEhETmFCUmFMWFFFUHMwNGcwWVp3YmUxblFPNnlQeFZT?=
 =?utf-8?B?RWdYUk95aHZFT1g4UkloVDZ1ZktMZEFvc0JMcVhWRlhRTFEwbEpMOVYyTEtj?=
 =?utf-8?B?UlA1RFlJVy9OTU9tc05pcFprQXMrYWRyV1NkazFLOUdIUHJkRTZ1cy9KcUJO?=
 =?utf-8?B?RDhnYXFqMUJGNlEreHVZekpDdUxPY0RyZEV5YitOcnFuV0s3aHptMy9TQUlR?=
 =?utf-8?B?NEZFSzNYUjZjUXM3OXVXVkZyNXRyTkw1a0JQckY0dyswdU9HVlhTOXEwRjll?=
 =?utf-8?B?NSs3UnJ1a3NwWXZ4R3FRVk5xb1FzRnNQcmRYMmE4Wm14T1Q4L212d1FMSzJK?=
 =?utf-8?B?OCtQWUpEZXAzQnlDUGgyVWE2Nmo1d3dnOVFMZUsvUUpCdjJNbjBoNkZqd2R6?=
 =?utf-8?B?NkpZUll2RlUwa2NEaEM3aDc5eFVBRkJybEM4TVUvbFlyWXJpUzA5ZHd0Z1RO?=
 =?utf-8?B?ejlDTmpZaHNzVkpSeFBVQW9qUVRUakptQ3dXcFltQWhWYjBJNnRidDAyaCt4?=
 =?utf-8?B?dXc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 593c941e-6988-419e-4509-08dcec6d50fd
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 16:29:04.3951
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i1TCW3CfFeghim4v+n2hx7krLEB+z1C6urowGE215BsumaKS5L/2GN/613+b+G7Gbq/mSB3GrYP/sBiPN1VLtwZR4m+e1xOsHBzt7p66Ekc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8727
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_172916_441081_C3D2D609 
X-CRM114-Status: GOOD (  26.22  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRHJhZ2FuLAoKT24gMTAvMTQvMjQgNTo0OSBQTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhl
bGxvIFF1ZW50aW4sCj4gCj4gT24gMjAyNC0xMC0xNCAxNzozOSwgUXVlbnRpbiBTY2h1bHogd3Jv
dGU6Cj4+IE9uIDEwLzkvMjQgOToxNiBBTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+Pj4gT24gMjAy
NC0xMC0wOCAyMjozOSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4+Pj4gQWxsIFRoZW9icm9tYSBi
b2FyZHMgdXNlIGEgdGksYW1jNjgyMSBhcyBmYW4gY29udHJvbGxlci4KPj4+PiBJdCBub3JtYWxs
eSBydW5zIGluIGFuIGF1dG9tYXRpY2FsbHkgY29udHJvbGxlZCB3YXkgYW5kIHdoaWxlIGl0IG1h
eSBiZQo+Pj4+IHBvc3NpYmxlIHRvIHVzZSBpdCBhcyBwYXJ0IG9mIGEgZHQtYmFzZWQgdGhlcm1h
bCBtYW5hZ2VtZW50LCB0aGlzIGlzCj4+Pj4gbm90IHlldCBzcGVjaWZpZWQgaW4gdGhlIGJpbmRp
bmcsIG5vciBpbXBsZW1lbnRlZCBpbiBhbnkga2VybmVsLgo+Pj4+Cj4+Pj4gTmV3ZXIgYm9hcmRz
IGFscmVhZHkgZG9uJ3QgY29udGFpbiB0aGF0ICNjb29saW5nLWNlbGxzIHByb3BlcnR5LCBidXQK
Pj4+PiBvbGRlciBvbmVzIGRvLiBTbyByZW1vdmUgdGhlbSBmb3Igbm93LCB0aGV5IGNhbiBiZSBy
ZS1hZGRlZCBpZiB0aGVybWFsCj4+Pj4gaW50ZWdyYXRpb24gZ2V0cyBpbXBsZW1lbnRlZCBpbiB0
aGUgZnV0dXJlLgo+Pj4+Cj4+Pj4gRml4ZXM6IGM0ODRjZjkzZjYxYiAoImFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBhZGQgUFgzMC3CtVE3IChSaW5nbmVjaykKPj4+PiBTb00gd2l0aCBIYWlrb3UgYmFz
ZWJvYXJkIikKPj4+PiBGaXhlczogZDk5YTAyYmNmYTgxICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6
IGFkZCBSSzMzNjgtdVE3IChMaW9uKSBTb00iKQo+Pj4+IEZpeGVzOiAyYzY2ZmMzNGU5NDUgKCJh
cm02NDogZHRzOiByb2NrY2hpcDogYWRkIFJLMzM5OS1RNyAoUHVtYSkgU29NIikKPj4+PiBDYzog
UXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPj4+
PiBDYzogS2xhdXMgR29nZXIgPGtsYXVzLmdvZ2VyQHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPj4+
PiBTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+Pj4+IFJl
dmlld2VkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRlPgo+Pj4K
Pj4+IExvb2tpbmcgZ29vZCB0byBtZSwgdGhhbmtzIGZvciB0aGUgcGF0Y2guwqAgSW4gYWRkaXRp
b24gdG8gdGhlIGFtYzY4MjEKPj4+IGRyaXZlciBjdXJyZW50bHkgbm90IHN1cHBvcnRpbmcgZnVs
bCBpbnRlZ3JhdGlvbiBpbnRvIHRoZSB0aGVybWFsCj4+PiBmcmFtZXdvcmssIHRoZSAiZmFuIiBE
VCBub2RlIGFsc28gaXNuJ3QgcmVmZXJlbmNlZCBpbiBhbnkgY29vbGluZyBtYXAsCj4+PiBzbyBo
YXZpbmcgaXQgZGVmaW5lIHRoZSAiY29vbGluZy1jZWxscyIgcHJvcGVydHkgaXMgb2Ygbm8gdXNl
Lgo+Pj4KPj4+IEJ5IHRoZSB3YXksIGl0IHdvdWxkIGJlIG5pY2UgdG8gc2VlIHRoZSBhbWM2ODIx
IGRyaXZlciBzdXBwb3J0aW5nIGZhbgo+Pj4gc3BlZWQgcmVndWxhdGlvbiwgYW5kIHRlc3QgaXQg
dG8gY2hlY2sgd2hvIGRvZXMgYSBiZXR0ZXIgam9iIHdoZW4gaXQKPj4+IGNvbWVzIHRvIGNvb2xp
bmcgYW5kIGZhbiBzcGVlZCByZWd1bGF0aW9uLCB0aGUgdGhlcm1hbCBmcmFtZXdvcmsgb3IKPj4+
IHRoZSBjaGlwJ3MgYnVpbHQtaW4gbG9naWMuIDopCj4+Cj4+IFdhc24ndCB0aGlzIGZlYXR1cmUg
YWRkZWQgdGhpcyBzdW1tZXIgYnkgR3VlbnRlcj8KPj4KPj4gYy5mLiBodHRwczovL2V1cjAyLnNh
ZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz8gCj4+IHVybD1odHRwcyUzQSUyRiUyRmdp
dC5rZXJuZWwub3JnJTJGcHViJTJGc2NtJTJGbGludXglMkZrZXJuZWwlMkZnaXQlMkZ0b3J2YWxk
cyUyRmxpbnV4LmdpdCUyRmNvbW1pdCUyRmRyaXZlcnMlMkZod21vbiUyRmFtYzY4MjEuYyUzRmlk
JTNEYmVjYmQxNmVkMmY4ZjQyNzIzOWZmZGE2NmI1ZDg5NDAwOGJjNTZhZiZkYXRhPTA1JTdDMDIl
N0NxdWVudGluLnNjaHVseiU0MGNoZXJyeS5kZSU3QzZkZjc3ZTRlNzM0MzRkMzZhNmZkMDhkY2Vj
NjdjMjFjJTdDNWUwZTFiNTIyMWI1NGU3YjgzYmI1MTRlYzQ2MDY3N2UlN0MwJTdDMCU3QzYzODY0
NTE3NzYxMTk0ODIzNSU3Q1Vua25vd24lN0NUV0ZwYkdac2IzZDhleUpXSWpvaU1DNHdMakF3TURB
aUxDSlFJam9pVjJsdU16SWlMQ0pCVGlJNklrMWhhV3dpTENKWFZDSTZNbjAlM0QlN0MwJTdDJTdD
JTdDJnNkYXRhPTRWYVpyQUt4RFVUZEVmN2F2VU0xZXdITGw5UElnQnBsZTg0MWRFNTVvNHclM0Qm
cmVzZXJ2ZWQ9MAo+Pgo+PiBNb2RlIDQgaXMKPj4gaHR0cHM6Ly9ldXIwMi5zYWZlbGlua3MucHJv
dGVjdGlvbi5vdXRsb29rLmNvbS8/IAo+PiB1cmw9aHR0cHMlM0ElMkYlMkZlbGl4aXIuYm9vdGxp
bi5jb20lMkZsaW51eCUyRnY2LjExLjMlMkZzb3VyY2UlMkZkcml2ZXJzJTJGaHdtb24lMkZhbWM2
ODIxLmMlMjNMMzY3JmRhdGE9MDUlN0MwMiU3Q3F1ZW50aW4uc2NodWx6JTQwY2hlcnJ5LmRlJTdD
NmRmNzdlNGU3MzQzNGQzNmE2ZmQwOGRjZWM2N2MyMWMlN0M1ZTBlMWI1MjIxYjU0ZTdiODNiYjUx
NGVjNDYwNjc3ZSU3QzAlN0MwJTdDNjM4NjQ1MTc3NjExOTc5MTY4JTdDVW5rbm93biU3Q1RXRnBi
R1pzYjNkOGV5SldJam9pTUM0d0xqQXdNREFpTENKUUlqb2lWMmx1TXpJaUxDSkJUaUk2SWsxaGFX
d2lMQ0pYVkNJNk1uMCUzRCU3QzAlN0MlN0MlN0Mmc2RhdGE9dU5uV1IwT3V4MEJsTmhwZTIwWGo0
JTJGRXRHUUp2JTJGc1UxaGFwbTRmR243UWslM0QmcmVzZXJ2ZWQ9MAo+PiAoW0ZEUkMxOkZEUkMw
XSA9IFswMV0gLT4gU29mdHdhcmUtUlBNIENvbnRyb2wgTW9kZSAoRmFuIFNwZWVkCj4+IFJlZ3Vs
YXRvcikgYWNjb3JkaW5nIHRvIHRoZSBkYXRhc2hlZXQpLgo+IAo+IEFoLCBTRU5TT1JfREVWSUNF
X0FUVFJfUlcoZmFuMV90YXJnZXQsIGZhbiwgSURYX0ZBTjFfVEFSR0VUKS4uLgo+IEhvdyBkaWQg
SSBtaXNzIHRoYXQ/wqAgSG1tLi4uwqAgTWF5YmUgSSB3YXMgbG9va2luZyBhdCBzb21lIG9sZGVy
Cj4gbG9jYWwgYnJhbmNoLCB3aGljaCBoYXBwZW5lZCBub3QgdG8gaW5jbHVkZSB0aGF0IGNvbW1p
dC4KPiAKPiBBbnl3eWF5LCBnb29kIHRvIGtub3csIHRoYW5rcy4KPiAKPj4gSW4gYW55IGNhc2Us
IHdlIGNhbm5vdCBjb21wYXJlIHRob3NlIGZvciBvdXIgcHJvZHVjdHMgYXMgd2UgZG8gbm90Cj4+
IGhhdmUgYSBnZW51aW5lIEFNQzY4MjEgYnV0IGEgaGFuZG1hZGUgc2ltdWxhdGlvbiBvZiB0aGUg
SVAgd2UgcnVuIGluCj4+IGFuIE1DVS4KPiAKPiBJIHNlZW0gdG8gcmVtZW1iZXIgeW91ciBNQ1Ug
dGhhdCBwZXJmb3JtcyBhIGZldyB0YXNrcywgYmFjayBmcm9tCj4gc29tZSByZWxhdGVkIGRpc2N1
c3Npb25zLsKgIEkgd29uZGVyIHdoYXQgd2FzIHRoZSByZWFzb24gdG8gaW1wbGVtZW50Cj4gaXQg
aW4gc29mdHdhcmUsIGluc3RlYWQgb2YgdXNpbmcgYWN0dWFsIGZhbiBjb250cm9sbGVyIGNoaXA/
Cj4gCgpUaGlzIHByZWRhdGVzIG15IGpvaW5pbmcgdGhlIGNvbXBhbnksIHNvLi4uIEkgZG9uJ3Qg
a25vdy4KCldoYXQgSSBjYW4gc2F5IGlzLCB3ZSBoYXZlIHRoZSBmb2xsb3dpbmcgZW11bGF0ZWQg
aW4gdGhlIE1DVToKLSBjdXN0b20gQ0FOIG92ZXIgVVNCIChVQ0FOOyB1cHN0cmVhbWVkIGFscmVh
ZHkpCi0gSVNMMTIwOCBSVEMKLSBBTUM2ODIxIEZBTiBjb250cm9sbGVyCi0gY3VzdG9tIFBXTSBj
b250cm9sbGVyICh1cHN0cmVhbWluZyBwZW5kaW5nKQotIGEgZmV3IGJ5dGVzIG9mIE5WUkFNIChB
VDI0LWJhc2VkOyB1cHN0cmVhbWluZyBwZW5kaW5nKQotIHVuY29udHJvbGxhYmxlIChmcm9tIFNv
QyBQb1YpIHdhdGNoZG9nLCBhbGxvd3MgYW5vdGhlciBNQ1Uvc3lzdGVtIHRvIAp0cmlnZ2VyIGEg
ZnVsbCBzeXN0ZW0gcmVzZXQKLSBwb3NzaWJseSwgY3VzdG9tIEhXIHdhdGNoZG9nIGNvbnRyb2xs
YWJsZSBvdmVyIEkyQyAocmVxdWlyZWQgdG8gZml4IGEgCnZlcnkgb2RkIGNvcm5lciBjYXNlIGlu
IEhXIG9uIFBYMzAgUmluZ25lY2spCgpQb3NzaWJseSBtb3JlIGlmIHdlIGhhdmUgdGhlIG5lZWQg
Zm9yIGl0IGFuZCBpdCBmaXRzIGludG8gdGhlIE1DVSBmbGFzaCA6KQoKSSBhc3N1bWUgdGhpcyB3
YXMgYm9ybiBvdXQgb2YgbmVjZXNzaXR5IHRvIGFkZCBzdXBwb3J0IGZvciBDQU4gb24gUkszMzk5
IApQdW1hIHNpbmNlIHRoZXJlJ3Mgbm8gQ0FOIGNvbnRyb2xsZXIgaW5zaWRlIHRoZSBTb0M/CgpJ
IGFsc28gdGhpbmsgSVNMMTIwOCBhbmQgQU1DNjgyMSBhcmVuJ3QgdGhhdCBlYXN5IHRvIHNvdXJj
ZSBhbnltb3JlIAooUkszMzk5IFB1bWEgaGFzIHRoYXQgTUNVIGFuZCBpdHMgc3VwcG9ydCBzdGFy
dGVkIGluIH4yMDE4IEkgc2VlbSB0byAKcmVjYWxsPykuIENvbnNpZGVyaW5nIHRoZSBxdWFudGl0
aWVzIGFuZCBwcmljZXMgd2UgZ2V0IGZvciB0aGUgdHdvIE1DVXMgCmZsYXZvcnMgd2UgaGF2ZSBh
bmQgaG93IHNwYWNlIGNvbnN0cmFpbmVkIHdlIGFyZSBvbiBzb21lIHByb2R1Y3RzLCAKZXNwZWNp
YWxseSB0aGUgdVE3IChQWDMwIFJpbmduZWNrKSwgaXQgd2FzIHByb2JhYmx5IEkgd2lzZSBkZWNp
c2lvbi4gVGhlIApzZWNvbmQgTUNVIGZsYXZvciBjYW1lIGJlY2F1c2UgU1RNMzIgd2FzIGltcG9z
c2libGUgdG8gc291cmNlIGF0IApyZWFzb25hYmxlIHByaWNlcyBkdXJpbmcgdGhlIHNob3J0YWdl
IDItNCB5ZWFycyBhZ28uCgpUaGlzIGFsc28gbWVhbnMgd2UgY2FuIGV4cGFuZCB0aGUgc2V0IG9m
IGZlYXR1cmVzIG92ZXIgdGltZSAod2hpY2ggd2UgCmFyZSBmb3IgZXhhbXBsZSwgd2l0aCB0aGUg
Y3VzdG9tIFBXTSBjb250cm9sbGVyLCBOVlJBTSBhbmQgSTJDIHdhdGNoZG9nKSAKc2luY2UgdGhl
IE1DVSBjYW4gYmUgZmxhc2hlZCBvbmNlIGluIHRoZSBmaWVsZCB0b28uCgpPYnZpb3VzbHksIHlv
dSByZXBsYWNlIGNvbXBvbmVudCBjb3N0IGFuZCBmb290cHJpbnQgd2l0aCBNQ1UgRlcgCmRldmVs
b3BtZW50LCBzbyBpdCdzIG5vdCBuZWNlc3NhcmlseSBjb3N0LWVmZmljaWVudCBidXQgSSdtIG5v
dCB0aGUgb25lIApydW5uaW5nIHRoZSBudW1iZXJzIHNvIHdvdWxkbid0IGJlIGFibGUgdG8gdGVs
bCB5b3UgOykKCkNoZWVycywKUXVlbnRpbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
