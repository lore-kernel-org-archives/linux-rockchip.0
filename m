Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5883DC0219D
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 13:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zeTpyLGh5mnfEqqe7+n+R7riyHJAjCuL0VXI2/XK19M=; b=VlgAcKp5B+c/fcYvtY4dErQ9Vx
	0UnNFHEJc5eLy2Yg3scDa4R7nYp25P1byYTaTChGMNAt8+VfExebRK2TjWvJvUtfsIPGOS1XGwj9t
	EtIT/UQ9nS+Jfan7yM4oXsDTeEy5OgswWAR+Tman0rAS4PaqWNj0EEUCzYbYbhjzgkodM4jqNTQBe
	HvYhvJYC/qmWXY+EHrpPm553NIQN0Q0SfRFgLi1MVFvOUjFFureFWzs+b4DTKmlfMK3R6kW1URbqE
	yrgfZgnRewk1dAVChs2vKTU+FyQxWhnvZVmQOI31TjX6IM9NlWjThDaghanTEhr5r+TG422YKmgbI
	UPBJxr7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thqB7-00000003vXK-3UAo;
	Tue, 11 Feb 2025 13:19:53 +0000
Received: from mail-db5eur02on20630.outbound.protection.outlook.com ([2a01:111:f403:2608::630] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thprY-00000003rgA-26Ay;
	Tue, 11 Feb 2025 12:59:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TlKNjvGUbJBIJhcaLoRgo920mMULYhg789eu4tCnSQsml9Byx8yqkVhX53edtPrWjUKoDKbJ7i6OaDqSTRFG8o/fZUCnZxt01/jpd5mDtAKBibVhDC3E1/NWcswIX5yH/ZTqiFzWQJvEWanOKUa4XDQYq0g0qYGnHSH379viDL6ph+K9sZYOe2eYdOYisypx/Ytv2i2hzGjClYCPFEoukeXbTfCsi1jKuGeWLCkNoCEXxJkgXdrJ6mJLmUQUOKgHiuDSBS8fqUyjUc2/oJycu3EMRyyyWoJIgDZoNhf8bv2ykkjGY1uLJcYO76Zqu3CNqUoqJ03nD4xIx0Z3Dx/nOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Tbq3zs2kxvf0eYsLKoQnr/CdG402zEjTr+umWKPqlhQ=;
 b=DLzR5Jm/Dsdgf1gtH+RcUEKFzvXLmzt+C/ebDIRno/c56eLUCh8o6L04AJLupbSYc60jDnbZkH79oN3DKj3Z+1C0jNEJU3KiTc4JBIcPYoL8gbitngb4KvEBr2P4qIcgeqBjxmgc2mqLlfibpTkSTfPPHHYMnW45CAoEi2IeBfoaVVeVpeAmKjzwW/3T4eSKutUBm8XS9/0hOKjQNSPHuMSP2Hgw4HRoRuMMzcserxQnUAi2deM1G2O7oa1HqtcpcQdkUNo3wZLCsiMw9Hv6Oh62Ur44+wNzJL7a5W+Yac8JkMZUMwwTmD49+nVLLRp+jCpkqyQo7J9wNrDETnXIhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tbq3zs2kxvf0eYsLKoQnr/CdG402zEjTr+umWKPqlhQ=;
 b=Q733gD2FKdgNm5x/RDamba3kXudcOht8lbds9Zro4SJa34kZGM2A7doNMTzUP6yZQDY+sgoz5mjEgB4S8ylRCXxI4ekBfTWppWyoHHIyOUYF2afObavGob0VYjaKmvrSeczsFXZLuoF0o9xy2PIlZUtiJDgjyFWzlPsAKgL6Z5M=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AM9PR04MB8537.eurprd04.prod.outlook.com (2603:10a6:20b:434::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Tue, 11 Feb
 2025 12:59:36 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.8422.012; Tue, 11 Feb 2025
 12:59:36 +0000
Message-ID: <06f1f9f4-8a79-4505-98b8-992accf1fb87@cherry.de>
Date: Tue, 11 Feb 2025 13:59:33 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/4] arm64: dts: rockchip: add overlay test for Edgeble
 NCM6A
To: Dragan Simic <dsimic@manjaro.org>
Cc: Jagan Teki <jagan@edgeble.ai>, Quentin Schulz <foss+kernel@0leil.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Niklas Cassel <cassel@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250207-pre-ict-jaguar-v5-0-a70819ea0692@cherry.de>
 <20250207-pre-ict-jaguar-v5-2-a70819ea0692@cherry.de>
 <CA+VMnFyom=2BmJ_nt-At6hTQP0v+Auaw-DkCVbT9mjndMmLKtQ@mail.gmail.com>
 <8d830c2c-6268-4c70-ae8a-47183b8cbace@cherry.de>
 <74502f5556584ee7378c63d4971f2a66@manjaro.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <74502f5556584ee7378c63d4971f2a66@manjaro.org>
X-ClientProxiedBy: VI1PR0502CA0028.eurprd05.prod.outlook.com
 (2603:10a6:803:1::41) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AM9PR04MB8537:EE_
X-MS-Office365-Filtering-Correlation-Id: 9afbec75-23ac-4fcb-19f7-08dd4a9befeb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|366016|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dGNUdjlGZnh2WHhNYStWRlk4bWsyYzRmUi9Od2NobVl0YUs5RkQ1b3krUllD?=
 =?utf-8?B?MUNtR3Y2eksydWlRRGNsdUlFTHp1MmdKcmJuQi8xMVp1eXUxTkRSMVZTQVBH?=
 =?utf-8?B?VkR3L0srNk9FL056Q3Jsd1VnZTh2MVJDK1JuN0I3SWxsK0RJUFlaODhVaXBw?=
 =?utf-8?B?TEVySkRoUVoyS3c2Zjg5ZjFNTjhycnpveWRQb3J3dVdTSFkyMSs5RGVPZkhV?=
 =?utf-8?B?U0dSUVowYnFkSHNWeEZ1dlY2ODJhU003RWdUaGNNSktwRk5nSUsxenJuNmZa?=
 =?utf-8?B?LzB3RENxUjdDS1ZlT1F3a2NVZUs5RS9xcWRZNGs2OHRxdGlmVStWZCtiSTNI?=
 =?utf-8?B?UEpuSlMvK1EwOWluNWtnZGlERHRmNUFsZFpMd25yUnNrSjhaL2JRL2R2Tm1C?=
 =?utf-8?B?VHJPQUplK0hMOVlGRTZHYjk0RHN2dG1CTTlDb2JYTTI0VUI4T2o4blRZQ1N2?=
 =?utf-8?B?dGUxbm0vR3cyRTdqemdaUEtzb3lXbGlOc1o1NGlRTXM3UjZXL0d3c1VYWXJs?=
 =?utf-8?B?Ung5YTFScUJZL1pqWTl0eUdSMXN2b1QraFpONkFHT013bTNXdHBHQk84ZUJa?=
 =?utf-8?B?TXdDcTVjOGJUTGdTWkZ2S0JsVXl5elZhcjRsQmNpM2dTeVRTOHFVZkFXcFlN?=
 =?utf-8?B?dGxYUWJ2bUFFaG5CZG9oalBSek50YnlsTXdCL2lsaG5vdjM0ek9HZ2U5WXBG?=
 =?utf-8?B?Rlp0SEVaM1QrTjZvbHQ0SGVWR3dic3pSR2JyRVUzOXVkd0crczJJZitpL1ZD?=
 =?utf-8?B?NVNQRm1JdEtIQTJUMVFkUWtCVGZ2aTcvS01aSVR3Y1JSYmVKSHZ0amxLVWJQ?=
 =?utf-8?B?OS8vQ3Qwc1NJbnNFS0UvWTlYb3cvd0RuWXIySDRvMkR0d05Ba3BMcmwyaU1C?=
 =?utf-8?B?RmtGRDFyUVo2M3hwdzR1Z0EwYXorLzk1clQzTUY1ZU82OWRFemRGODluTW5s?=
 =?utf-8?B?TmlSaGc2c3c3SWszcEl1WGhBaTIyNXFFcDZyYXhqRXErWFFLNHBHUnVWTHZk?=
 =?utf-8?B?TWQ1cUhkQ2tJMnZWRkxBL3BWenQrZTNYWGxVR3NITTBSbnFhV3hTMjB5QThQ?=
 =?utf-8?B?UFo2N1pTcTJpTlBEc2htY3RCQ1d0cDFTNnZaYnQ4eWxXM2lUb1M4bVphUWIr?=
 =?utf-8?B?ZFN5NVdSNjBoOVR2WXFLS2NzNWt1YmU3dHF1bFBOVjdvZDcwSS9OMDFieUFs?=
 =?utf-8?B?RlhzWThBcElPQmk0VEVzQkExV0V0TnVKRmE4bTg3SGQxdUFJdnRjL0JQaEMv?=
 =?utf-8?B?VWlsdVdhdmUrZG5mUVUwdFczbUVGcmV1Ym00NWZmRzh2QXd0VVR3MWR5RGlm?=
 =?utf-8?B?VVR5blJydGZERXlxZE9kQzBWbkxBTkx5QkdmdEhrRzNyMWthRFlFeGphS1V6?=
 =?utf-8?B?VmdQRGU3QzFFcVEzQUFxL3ptMzcvZU5wY2g1NUtIMXgvNzUxSUIyQ21zc0Nm?=
 =?utf-8?B?K1BzcVN5R3FsOUdMSDAvcW9ZVkZUZ2VCdGlwaGJjY2hvTlJCVEpOK1E5TWt6?=
 =?utf-8?B?ZWRDTHZDUWZXRWRJQisrUll5QlJYT01ZdTUxRy9IZHJFV0E4T0dsZStaQ2s2?=
 =?utf-8?B?b2k5ZzArNWh6QTl3U0J3TnEvblYwbUlEdjI3Szh2N25CR1BmNHo1UTZFOThr?=
 =?utf-8?B?djllam5ISFNPZFJGeHY5aHZYYlI1R1g2YkdLeEY0OEdhOUxLL3F1SzIzdFZu?=
 =?utf-8?B?Vks0UkdFeE5GSXZKUExPTmhhRysyZmk1NHd5SFlJWWlUTW03YW9MUVl4WkVw?=
 =?utf-8?B?NFljZVRMNklCNU5MZUJTNWV3elpKR2plRS8yaGZXR2x2ckE3VmNTMzJWN2tm?=
 =?utf-8?Q?a4vJnYAeg5tPW5Ne4cmLXX3HwvHHA5rwoDAwE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(366016)(1800799024)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzROVWxMY2RyWlMxVk9tdHd1eGdiVzZ0Q3BSb2I0R0hBdkxocEZsd1J2eXl3?=
 =?utf-8?B?MGV2SGNJbjJTZzg5ZFkxcFpLSHhkWjAva1dDR2l1WFgvc0NqeUxORElPTm4r?=
 =?utf-8?B?SHBldllaakdLV1dFWVdaMDRld3JUZzlBNTFKNFB0dUFxMnFJM243S1RxTTc3?=
 =?utf-8?B?WmJJSlAzaWlWUUJ2dFlyd1Z6UTIzNFRONmlHa0RQT1ZMVTBEdUJVZXMvOFdG?=
 =?utf-8?B?a3UzbHhLZERwVkpIR3c1dDVONTQwbEUwSjZ4aXpabkI3S1RjMVk0NEdubU94?=
 =?utf-8?B?cjJvS0NUUkVJM1B1MXV1YTV4Q0pMSDRXRTZBM3JLWTFHQkJEVExPOFRvK2Fv?=
 =?utf-8?B?aUhnbzdZZm1RS3B3Nzg2NjN6WFFJaUQrQWo3Y2hiM3I2VWVxQjNTdWFxa1ZP?=
 =?utf-8?B?dHlTZWFobDdrZ3U1SmtWbDQ5K1hLcFBMR3pJTWQ2am4xb2tmcFpRTFNQa0J3?=
 =?utf-8?B?TUVORTNydDA5eXp2dGRzMHhlZTdvK2FOdENxTmxpUVdyVVQ2SDU1cHh5M0FK?=
 =?utf-8?B?QXZCdC9aZ2hrQXdoallFaVhRdWNjVHNob3Joak10SnlBRWNwY0tQSUJjSndN?=
 =?utf-8?B?empGeFZkdnF6eTFoMGRkcUNKVzdYd25yUSs3RFA4aWtZa2dlaDBsUE02RTVu?=
 =?utf-8?B?SGdtMGhXOXhRWjBXd1FlNXpyaGdTZDRZNytvTm1wQWk5R3IrYkhZZUlxVUpk?=
 =?utf-8?B?UXhFYnVRTnlVQnd5M3NsZDNtN2kyazV5K0kvc3RaeThvTXplVjA3MFBpVTlI?=
 =?utf-8?B?RkI2WncyUVlFZGN5SHVEOUNRT3pvM0tnd0IxQXRKbEF5Z3VjLy8wVU9aWE1H?=
 =?utf-8?B?TkF2cXR4dDRLVlMzSDJWSTZCVlJDaFFMdXFBNnpmQnI5Ui94dFYwTzRWWTdS?=
 =?utf-8?B?M0hDTkxObkR3Q3FYSU5uZVh5UDdObnliM1dSSFBHQ1AyWjE3dmgxbmZUVlFZ?=
 =?utf-8?B?NGNoK3Y5djRIMUJVd3F6TlpXcUhlWlR4amRiNlhlUHNSVjBsSXdNN29oSG84?=
 =?utf-8?B?TmRxMXd4NEZnbDRvcVJFRmMwSW1tajNxV3ZLbFJQUXQ5N0NFTUs2L2d2blJL?=
 =?utf-8?B?cnlOeDRNUnpSUDBKRFZDZGU1bm1CMDU0MjdoTjNnYk9BK09ZVDZuSk5MbFo1?=
 =?utf-8?B?SmpnMGxQNUVKTVpJUkZCUkM0L2JDcG9NV1p3QWY0cXZnaWRjQ1QwWC8zV3dw?=
 =?utf-8?B?V1JhODRXRmtoWmJ6emt6dXVjOHUrUW5DbC8vQkNId25yaU1pMTBrY0FybEN2?=
 =?utf-8?B?MExvc01hZDRwWlFKNXUyenRyejdPd2U2dVd0NXYvdlBmREk1VmIxQ3Y3cHZU?=
 =?utf-8?B?NEwxSDRtb2RsckJOUC9zTTM5bElQN1d3Y1p3NVVQM3BoZFNMK01Vd2JWL0M2?=
 =?utf-8?B?WUY0enlaR01rNjN3d0xzb2FwdDRrUGFhbFJ4cUtpZ3h2QTJ2anQyWFVqR0ZO?=
 =?utf-8?B?bEJZSFZkWHBVNG10R2NIa0xNMjBLUkR6RCtXamwzTGN4UmowL0FESVRlYVZ4?=
 =?utf-8?B?RjBHUWkwYUdHd1lJclk5QTUzczhibnBLNHQ3cC8rTW02TG1vN3Z3NEZncmtC?=
 =?utf-8?B?Njdkb3pGSnhvc2phZXBkMERVUms2OHN5WFo4VE1JdkVlRWhIMzBQaXREYWU1?=
 =?utf-8?B?aHJtTzduem92eDNiak9nSVBDM1dVS3Ftdm9VTi9mLzUrb1Nva0NhWHV1U3BD?=
 =?utf-8?B?YmtQRVR3bUs1Tk5NMVVROUpzc1MrRHpSNGJENFlzcWFLdk5tZ0dKcFJmaGVv?=
 =?utf-8?B?NjRZTTFXcHdycGd4a0p6YTltNnRTVkN2dVh3NTlEbm1OUGhHbjJTR3VmUUlm?=
 =?utf-8?B?ZVNiaWNYZmJpN2g3c2pGSUtIaHdTZWhvZU1TenphZ0lOam1jREpQcWdHWlRB?=
 =?utf-8?B?cnBZdzQybVJkOFFRRThHMkxuVi9qd3FPWEN3emtTTWMvZjB5all3TnAyTlk1?=
 =?utf-8?B?QXZGKzBRUDZYR1dFZzUraVRoOEhlSnRZK0FZWEcrZkd4K2RQK3NDM09FQk5j?=
 =?utf-8?B?cG5TYW9rMGRmZWdZcGJ3b1NDaDZuMHAyMDVzVDFkL0VzNW1xc1NPSFNJMmow?=
 =?utf-8?B?T2srNDdiVFpxMGZUMEs1TEk5Z282cytGYjZ3TXJZeEFBTnhIOGNldUdxYVVp?=
 =?utf-8?B?RHFBQnltNlRwVy95Q2IzdTBaQzl0d1NwaVZtTlJKVyt0SzUrQXpvNFFMcnpM?=
 =?utf-8?Q?Wgpd/rf7SSOeSs/4BkWJgPU=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9afbec75-23ac-4fcb-19f7-08dd4a9befeb
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 12:59:36.4029
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZVFeCwA9aIh9c+BDuxIc3Mea5BCLZlRLiz0QG5rvzGATUX8WJ8yTN39YG41jwx5cgYwe9llQcOXo+tsmlCKOdourfTNOKwViariYEeMZQN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8537
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_045940_544035_6B926D16 
X-CRM114-Status: GOOD (  15.41  )
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

SGkgRHJhZ2FuLAoKT24gMi8xMC8yNSA3OjI5IFBNLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSGVs
bG8gUXVlbnRpbiBhbmQgSmFnYW4sCj4gCj4gT24gMjAyNS0wMi0xMCAxODo1NywgUXVlbnRpbiBT
Y2h1bHogd3JvdGU6Cj4+IE9uIDIvMTAvMjUgMzoxMSBQTSwgSmFnYW4gVGVraSB3cm90ZToKPj4+
IE9uIEZyaSwgNyBGZWIgMjAyNSBhdCAyMDo1MCwgUXVlbnRpbiBTY2h1bHogPGZvc3Mra2VybmVs
QDBsZWlsLm5ldD4gCj4+PiB3cm90ZToKPj4+Pgo+Pj4+IEZyb206IFF1ZW50aW4gU2NodWx6IDxx
dWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4+Pj4KPj4+PiBUaGUgRWRnZWJsZSBOQ002QSBjYW4g
aGF2ZSBXaUZpIG1vZHVsZXMgY29ubmVjdGVkIGFuZCB0aGlzIGlzIGhhbmRsZWQKPj4+PiB2aWEg
YW4gb3ZlcmxheSAoY29tbWl0IDk1MWQ2YWFhMzdmZSAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBB
ZGQgRWRnZWJsZQo+Pj4+IE5DTTZBIFdpRmk2IE92ZXJsYXkiKSkuCj4+Pj4KPj4+PiBJbiBvcmRl
ciB0byBtYWtlIHN1cmUgdGhlIG92ZXJsYXkgaXMgc3RpbGwgdmFsaWQgaW4gdGhlIGZ1dHVyZSwg
bGV0J3MKPj4+PiBhZGQgYSB2YWxpZGF0aW9uIHRlc3QgYnkgYXBwbHlpbmcgdGhlIG92ZXJsYXkg
b24gdG9wIG9mIHRoZSBtYWluIGJhc2UKPj4+PiBhdCBidWlsZCB0aW1lLgo+Pj4+Cj4+Pj4gUmV2
aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJv
Lm9yZz4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpA
Y2hlcnJ5LmRlPgo+Pj4+IC0tLQo+Pj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
TWFrZWZpbGUgfCA0ICsrKysKPj4+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCsp
Cj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtl
ZmlsZSBiL2FyY2gvYXJtNjQvIAo+Pj4+IGJvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4+Pj4g
aW5kZXggCj4+Pj4gNTM0ZTcwYTY0OWVlYWRhN2Y5YjZmMTI1OTZiODNmNWM0N2IxODRiNC4uMDJm
OThhYmUxZGYxMGY0NGYyYWMyN2VhNWY2YzZlNmM2MzM0NzI0ZSAxMDA2NDQKPj4+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4+Pj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+Pj4+IEBAIC0xOTIsMyArMTkyLDcgQEAgZHRi
LSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9IHJrMzU2OC0gCj4+Pj4gd29sZnZpc2lvbi1wZjUt
dnotMi11aGQuZHRiCj4+Pj4gwqAgcmszNTY4LXdvbGZ2aXNpb24tcGY1LXZ6LTItdWhkLWR0YnMg
Oj0gcmszNTY4LXdvbGZ2aXNpb24tcGY1LmR0YiBcCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoCByazM1
Njgtd29sZnZpc2lvbi1wZjUtZGlzcGxheS12ei5kdGJvIFwKPj4+PiDCoMKgwqDCoMKgwqDCoMKg
IHJrMzU2OC13b2xmdmlzaW9uLXBmNS1pby1leHBhbmRlci5kdGJvCj4+Pj4gKwo+Pj4+ICtkdGIt
JChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4LWVkZ2VibGUtbmV1NmEtd2lmaS5kdGIK
Pj4+PiArcmszNTg4LWVkZ2VibGUtbmV1NmEtd2lmaS1kdGJzIDo9IHJrMzU4OC1lZGdlYmxlLW5l
dTZhLWlvLmR0YiBcCj4+Pj4gK8KgwqDCoMKgwqDCoCByazM1ODgtZWRnZWJsZS1uZXU2YS13aWZp
LmR0Ym8KPj4+Cj4+PiBQbGVhc2UgYWRkIG5ldTZiLWlvIGFzIHdlbGwsIHdpZmkgZHRibyBpcyBz
aW1pbGFyIGZvciBpdCBhcyB3ZWxsLgo+Pgo+PiBTaW1pbGFyIG9yIGlkZW50aWNhbCA6KT8KPj4K
Pj4gU2hvdWxkIHRoZSBvdmVybGF5IGJlIHJlbmFtZWQgaWYgaXQgYXBwbGllcyB0byBuZXU2YiBB
TkQgbmV1NmEgaW5zdGVhZAo+PiBvZiBpbXBseWluZyBpdCdzIG9ubHkgZm9yIG5ldTZhIGJhc2Vk
IG9uIHRoZSBuYW1lIG9mIHRoZSBvdmVybGF5Pwo+IAo+IEknbSBhZnJhaWQgaXQncyBhIGJpdCB0
b28gbGF0ZSBmb3IgcmVuYW1pbmcgdGhlIC5kdHNvIGZpbGUuIDovCgpIb3cgaXMgaXQgdG9vIGxh
dGU/IElzIHRoZXJlIHNvbWUgcnVsZSBzb21ld2hlcmUgYWJvdXQgcmVuYW1pbmcgSSBtaXNzZWQ/
CgpDaGVlcnMsClF1ZW50aW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
