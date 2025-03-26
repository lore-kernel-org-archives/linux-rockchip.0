Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B186C36008
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Mar 2025 10:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V0KTK700ICj5pZbq8j4nHWec37OqZwyjGFBamQyxZiE=; b=F+QpYtt+48fcBpzua1bcBntkW1
	BTiYaRQdjE/kiiV6VW/RfSbd5+/MQGrrTz1LC6B4Gw5vIqLDOPQpZk1EqNnCh8YBt/UsYTOt97glR
	UJoAHOvcHsekN7z/4eiQZZQjX4Y0OkwPstqjJQjEKB1AVOc7jsGAB/oTeeKaURyR7J9wTksLbPYsY
	7eys5xfqfj/6JsjU9XRuroNo2nZt4YsqClxlpt3Fe4nADcgxcnHD0JvCA8lJUAYqBgNwhxn+oQUPG
	z5bUHEd6vUO11dWxrDNAfO1X8E43Lja2IUrwJqJVEHJUeIl77ie3Pr41DkoUD+I5a1++Y+3Yj/roN
	uexHmAPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txNfw-000000087k6-3DqX;
	Wed, 26 Mar 2025 10:07:56 +0000
Received: from mail-am6eur05on2061d.outbound.protection.outlook.com ([2a01:111:f403:2612::61d] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1txNft-000000087hu-3qYi;
	Wed, 26 Mar 2025 10:07:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U7vmuVhwo5WdO/JUbTsD1/Vy0+4NiTGJjPWtMxEWXQN0oRxb2fD3JSuEBL5rHpdt6+d3N2t9y/W1HSDQPTgzQYZTAm1+7etg/5f70ZYTm3/G7WOo+nYZ8N4033w50zMioa7WX98Gf9K8cUAoK8ISjKfVbVlLI1qRBS0X/Wn13ltd4lIOjphnpJm4NkR42lIjRdz+gH6C3YCmmUA+PK8juMpBM3En1fXKeRvzNKt1Ha6aQysu6I/dghdiEIiASCpi1WWLKgw8/UvVfwRsWnGPAlet0zTA/+3bttPfxywl28ySWIQDK3rtie0Bp8LBrMnqUqjVLPFms3Sd8niKO1Wsow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CftGM7F50bgJ5vj1z5Mh9VxqneGieh04XpjTw8sGDzU=;
 b=kijME9jPR+W73mY9vOiPnrC+SrUTV2rnqoXoTiJoDsCogIFQLPF/bkG43/vFpE3hqC7RtPGXkYhbAXWlegotsavnJt4+dvXNixzWZmkU2hXeWNCDXV9owSiBvXDh2jIpYV/4QQNkRR5rMnKB/x2MBMsW79C64Bh0cdRmCmDkQjO4H1P780oJ1a7H+pHTIIvpXjBR2h4NnuRtABQOSkzGG3RLg9JdJ0C2QshseZJRa+ZkRxqXDnY0bGjLBF5DMbF4ijCv18nzOzpe1RBsKd7vsHsYjD651TcKJOq71bIhc8R2aK1wE95TXUp37V4qiq1klPiSOMEQ3UHgAyUDXZBxLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CftGM7F50bgJ5vj1z5Mh9VxqneGieh04XpjTw8sGDzU=;
 b=EyKTZQZQfUIwVSdyz7Yk0F/P/bri1iI+6qnsf/RVF7EQCbuF7kRKU3069UYJrYAxejQ+qLBX93141qOf6jaeGGlg9+MIl2eX8xlccKfhrG+FNXnvNsMC1PEincxy4DaQjnbLEGLE68308l00bPd3mJI4qcNqHHxO/7G9e2SfRFc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DU2PR04MB8661.eurprd04.prod.outlook.com (2603:10a6:10:2dc::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Wed, 26 Mar
 2025 10:07:48 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8534.040; Wed, 26 Mar 2025
 10:07:48 +0000
Message-ID: <f73743cb-fdea-4b53-9665-4cc303498171@cherry.de>
Date: Wed, 26 Mar 2025 11:07:47 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: Remove overdrive-mode OPPs from
 RK3588J SoC dtsi
To: Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, stable@vger.kernel.org,
 Alexey Charkov <alchark@gmail.com>
References: <eeec0d30d79b019d111b3f0aa2456e69896b2caa.1742813866.git.dsimic@manjaro.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <eeec0d30d79b019d111b3f0aa2456e69896b2caa.1742813866.git.dsimic@manjaro.org>
X-ClientProxiedBy: FR4P281CA0196.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e5::18) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DU2PR04MB8661:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b32f82b-c5eb-4a77-1ec4-08dd6c4e0fa7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkNUVy9FeXFXMTFZU1dmc0lyOHFmVGk0allOL1BnMlRlL0RPa2IrVDEyOGE0?=
 =?utf-8?B?cHdCL1RFSHJrWlhtY3lpYTY5ck1tVmlhSW80TUJkMTlyc2pOclVYQ0JTZXBm?=
 =?utf-8?B?ZEdsR1o5NE45SFd0T0lDS1I1WUxLTXlBeU42RTdXZkhGZHlZbG5iWXJncFBy?=
 =?utf-8?B?ZjlncnhPaDFWdW53SHpCU3VueWZadmVsM3JsS2ZmZ2dQYXkwWEU1cHJTMmNy?=
 =?utf-8?B?aVh3alNmOG5WU0l6a21JQ0ZJVkpLQmxWUTRxdkxFYWtuKy9JamgySHBJSThZ?=
 =?utf-8?B?eDZoTjJWV2t0NWE1SUQ3NVVoVUkzWHhsMTB1RXk5SEF0cmpSWGFPeVdaV09y?=
 =?utf-8?B?aE5YdGJDaXMzc3lSWStQbURwbkg4bVlKM0kza1Q0YldSSzhwQkc5T0pUVDVy?=
 =?utf-8?B?dkVTS21uNVM1UVBIUVJCeXhGQ093dmkycEFoUzJla3Y5VWpjNWpONm0rVzZD?=
 =?utf-8?B?Vm14QVJiZVYwZE4zRis2bURIS1NPaFBlRGp5dWtkTlhQTk85SmhlNnpkd0tG?=
 =?utf-8?B?V2hHM1o3UnZNcDhRZm94UWFWQ3BWb3lkV0tPWlYySy95MW9vcFNVLzYxVzMv?=
 =?utf-8?B?RXJUWmZTTWRhclVlYzBDYS9ackxQMW9ueXk3MUQ5NEN1b2pqbUxxV2h6am0z?=
 =?utf-8?B?aUJlR0h6U1FXZ0pUSG1MV09ZRUxHL3BuZXM0NVh5bGtZUXJqSHMzN0V6K0I2?=
 =?utf-8?B?dkxveVFpOWljYTdsWW9QSVpRT2IzVW9Tcy8rRms3K0xPbS9ZUjZ1aGh1WkRp?=
 =?utf-8?B?MWw4K1A5KzdMRlhEYUQ4Slh3eVBQcmtMYUxScGhuZXpYVThTSHdvZU0zOEVM?=
 =?utf-8?B?d2JFOFM0eE1VUkgwck1oRW5jTytqZUZ4TXBUY0dBMmYzc2QzZTVwMlBvak9U?=
 =?utf-8?B?U1JpNGgxRVM2L3NhM0QwQU5FMGRyaXc1MkZNZjFMRWlIWVFmZHJucXRyUlVR?=
 =?utf-8?B?QnVJdGJMNlVTZGloRDlZbFM2d0pzSzA2S05ORU50bGNwVThac3pTOFlaNGo4?=
 =?utf-8?B?YlhYc2pucnVNZSs1UHFkbXladDRQeTJRWTA4WXJianY4TkxEOG9SRERUampm?=
 =?utf-8?B?UUxxU29QV28vcDFHRkxheVhVVVNOMTAzVTBvMW0ranJ1Uzl3ZytHYzlYTG8z?=
 =?utf-8?B?UUlLSzlJWk1nNnE5TzlIUFN0VmFSSUxVcDJhZ2t6d0p0MW5GSU1OTy9LeTB0?=
 =?utf-8?B?SGhkMzY1SmNQbEJBSDZPc3VqSzMraVUrWUtmanFWb2I5UzRaMElRUmlBQTFz?=
 =?utf-8?B?Rk9qSzIvZXJLbDdxMXVVNFFQWmtQeklNc1c4TTI0TmV1NTA5K1Rtdml2TjdL?=
 =?utf-8?B?YUVENm44dDQ2c1A1bDJCMUVDWHY5WFBxOXh1WkNYNUJibVJPZDNNbnliZnJk?=
 =?utf-8?B?L0Y2d1RhdkRhcCtlY0dLYUZrL1d0Mi9XYnMvaEM0dThsbkxnVkRyT1pTdGtV?=
 =?utf-8?B?a2NVc3RBdHovRXoxMnV2M2VINkxZVnIvZEJObXVMRklFOTAwZ0pPMlBhTHEz?=
 =?utf-8?B?ai9vRW9WTGlxRjVwNmNxVm01UkZvcTdqall0TXlQMmw2Q0xNcVJ1VGtWK3pR?=
 =?utf-8?B?VzZJYmJDcTVoKzZYY3ZtSzlHWEZJMnpRTWRHTkprNWY3Z3F2MkdtQ3E3TWVQ?=
 =?utf-8?B?ell0WFdhMHRKY0l5Z2lseGdFRXBReWNSNzNXZWVTM2MyNU9KVkdSSEkxM3hj?=
 =?utf-8?B?dWR6bzVwazZKbktjd2V1R0E2b24rQm9QU2JDUGxSZEp3MmZrRUdsZzNldVRk?=
 =?utf-8?B?N3FyMmJzUDNGZld1TitGYlhmLzF0Y2lMZGloMnpHQUk0OFowVTR3WWNYZzVK?=
 =?utf-8?B?a0lnT3NieGJvTFk2MGd4Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZzFQMUk2YWdXZUFUckRwaEYwNlNEcFEzTkliTXlkY2RuWEJmODJLdEZOcGRE?=
 =?utf-8?B?cGFZY1A1cHJ1Tyt4eERIRkhoK01JMjN1aGVBY0ExS2FOakMva045OGtlYU5w?=
 =?utf-8?B?MXcreUlOL0swUkh0c0FibStvalVNMWFxUEZ5ZDBJWHFjQkFXWXVsZjdDZHlX?=
 =?utf-8?B?d2M5MjBSMmovaUtibXJXNFNiL2wyYmp5dEhPZVI0aTJQbGwxNDJXTWwyVGJk?=
 =?utf-8?B?K2RyUldWL0IyU3UrbytOajB6SXA4VlkzaFVqbjJFWG5uRmJiazVQUkNiZHFa?=
 =?utf-8?B?Rk1GWDFQZHBUckpQbFJYZzdBM0lLaWk5MnNXSGdsMGNweVZLVy8zaG94VWRW?=
 =?utf-8?B?ek9WRExqT29hcnFJcmdiWTZNZk1wcGdHOHNwRCtlV0lpTGpPTU9DOFd2enNC?=
 =?utf-8?B?VkVpNGV6VkMyQzVsUkhXZ043RlErOG5nZjRudytkRE15cnRSdlpDbXVUVFVK?=
 =?utf-8?B?d2dNa2d2bWM3bTdxdVlYa1FXV1JCUXNjV3E3TjVZa2x3bzc1aEFiN3NKRWV4?=
 =?utf-8?B?UmZieXE2ZXJVUitxZkZ2cXN3NUYyQmwyN3cyZE9pVno1UFc1QVlHTmJ1dkpW?=
 =?utf-8?B?UDRKc2NnRjV5QVJDOUt3blJjNmhscmJyQUdkYi9kajloaVBmMmxrUmhPK2hl?=
 =?utf-8?B?R095MnVpNlJwdjdTVlJaKzN1L1VBTytyNCswQnYyZjFZK3NVenVDYlpXSDRO?=
 =?utf-8?B?ZzEwM0hYTVFJVy9qWGh1cUZheUp4SGoyVjFTL2V2V1NHS043TFE2M2daWThL?=
 =?utf-8?B?OEpnVUhSRXRUSjYxRkZsVVRGNGx6S2RscW1TOXE5MU9QYzJjTjVGdGFkVm0y?=
 =?utf-8?B?RktwTWpac3pFd010dmFSeHdIWUcyaHlOZHVtT1JRelRYSkRZbEZtSzF4d0Q5?=
 =?utf-8?B?Rk9qQWsxMndXaVpBQXQ3Z0l2NXdQUVFZdEJJYVF2dWczY3MxNmt4MEZrMjQv?=
 =?utf-8?B?M3RBUHVwTHdkVm9mVTEzUithaW5JUERSYWVLaUF5VmE0blMvZDJkTzV3K1d3?=
 =?utf-8?B?NmNJeDBpaytDNU4wV2pJK01rL0J5VEJoY2dtU1FvYVdVM2hTa2c1T2Y5cTU2?=
 =?utf-8?B?Vk9mN2FDcXV1QkZUa3V6NVA4RzVYUzB5UjA0WnNxT0gxdXhhQ2FqUVQrWDQr?=
 =?utf-8?B?UGVMU281SzBMRDYrY3QyQkFQc09iQ0NlSGd0OEFseUlmc0QzeE4wUmZHeFJv?=
 =?utf-8?B?S01ySy9wQitZelYxQjdGVTBiaVgxNFpqcEF6bnc2OHBRZmxhUEpuYkNyUEdW?=
 =?utf-8?B?cnp6MjJsbU9NTnBNaml6djJRRUxieHVZU2s5Z1NkWUpxeExBVlR0TU0yTnNo?=
 =?utf-8?B?UVM2c2xsWkc0VW8zYzFzeUhxbWs0d2w1VjFrZFhsSVJSeUFNOWxZL0VqdTFU?=
 =?utf-8?B?ZkUrMjRubW4rZ2U0YzNhVWcvYkNYU0NBZjNHTWo0bWxrRDRqZjZtakI3Vy85?=
 =?utf-8?B?d0lxaE0wTUVoZXJjVEVRckRrcm5sWEMzMDgyNnNDZ2ZyMkVVbFBJRWlKZ3cw?=
 =?utf-8?B?UmlTVkY1VHdLYmJFSGQ2ZEF1RVUreGhjcjYrUzNndDJ3eVljUFdVUm1jaHVa?=
 =?utf-8?B?QTU4Mm1xb0tvUVVqeEd5NmY3TVFLRTFGSUR0Q3liN3QxLzV0Z2YrWjhibTBY?=
 =?utf-8?B?Zlh5Z2cyQmlpcU1HQ2U1R0dsK1pKSTlFanY1VDB6TTJWV2NNVWFLY0sxMk9v?=
 =?utf-8?B?cVgrUkNwY0RrVWV4NldXUFduL3BodjRBeXVUbHFaU2tvSXZGR05sR0ROeExv?=
 =?utf-8?B?TkNIckx5d1FiVzdYaExSeGg1TzJpdHJlSU4ySnYxV1JTeU1iWlAyRGYrQVl4?=
 =?utf-8?B?TkJwb3ZKQVJnSlRkVzF4a0l2OWw1V3ovbDdIYm9TWERyZk5Ba1BkLzBLV3hp?=
 =?utf-8?B?dUdRQVprK2VjbkFrOG9FVjV6KzdZbE8rZThQVUptYVhHVkIxd1BWQTV5L3cv?=
 =?utf-8?B?aU9TZFMwTkc3S01pOGpqZ28wSHRRbU9TR3BaQ3JwMDh0dGtGVXJDRGVPK0kr?=
 =?utf-8?B?MVJRMlF6b0pFa3RFSnZjcmtrVXVqN0lFYTNHakNkL1M0b0I4QVRYMjUrK2NW?=
 =?utf-8?B?WTRVZ2lEc2lXSGJIbkEwZWlSTnZMMEVTNE44anQzaUhnNVZiaXJDS3B2d1FK?=
 =?utf-8?B?VzVlYlhCZzR6MitJbjZXcmY3czd2RkZsS2VjTG9aWnZmajFlS0F5UVFkbDh3?=
 =?utf-8?B?OFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b32f82b-c5eb-4a77-1ec4-08dd6c4e0fa7
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2025 10:07:48.4607
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uGNSpWui42q2Q/usNtZulgBR3vu+46iKdXBlkNph/TiBadpnpWzy0MU4J4I8IzzSuyGU52LPa9lKxXOqUBDoU64+sJRfazLpcRCy3q+dXTg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250326_030753_955941_1D9C4A45 
X-CRM114-Status: GOOD (  16.97  )
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

SGkgRHJhZ2FuLAoKT24gMy8yNC8yNSAxMjowMCBQTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IFRo
ZSBkaWZmZXJlbmNlcyBpbiB0aGUgdmVuZG9yLWFwcHJvdmVkIENQVSBhbmQgR1BVIE9QUHMgZm9y
IHRoZSBzdGFuZGFyZAo+IFJvY2tjaGlwIFJLMzU4OCB2YXJpYW50IFsxXSBhbmQgdGhlIGluZHVz
dHJpYWwgUm9ja2NoaXAgUkszNTg4SiB2YXJpYW50IFsyXQo+IGNvbWUgZnJvbSB0aGUgbGF0dGVy
LCBwcmVzdW1hYmx5LCBzdXBwb3J0aW5nIGFuIGV4dGVuZGVkIHRlbXBlcmF0dXJlIHJhbmdlCj4g
dGhhdCdzIHVzdWFsbHkgYXNzb2NpYXRlZCB3aXRoIGluZHVzdHJpYWwgYXBwbGljYXRpb25zLCBk
ZXNwaXRlIHRoZSB0d28gU29DCj4gdmFyaWFudCBkYXRhc2hlZXRzIHNwZWNpZnlpbmcgdGhlIHNh
bWUgdXBwZXIgbGltaXQgZm9yIHRoZSBhbGxvd2VkIGFtYmllbnQKPiB0ZW1wZXJhdHVyZSBmb3Ig
Ym90aCB2YXJpYW50cy4gIEhvd2V2ZXIsIHRoZSBsb3dlciB0ZW1wZXJhdHVyZSBsaW1pdCBpcwo+
IHNwZWNpZmllZCBtdWNoIGxvd2VyIGZvciB0aGUgUkszNTg4SiB2YXJpYW50LiBbMV1bMl0KPiAK
PiBUbyBiZSBvbiB0aGUgc2FmZSBzaWRlIGFuZCB0byBlbnN1cmUgbWF4aW11bSBsb25nZXZpdHkg
b2YgdGhlIFJLMzU4OEogU29DcywKPiBvbmx5IHRoZSBDUFUgYW5kIEdQVSBPUFBzIHRoYXQgYXJl
IGRlY2xhcmVkIGJ5IHRoZSB2ZW5kb3IgdG8gYmUgYWx3YXlzIHNhZmUKPiBmb3IgdGhpcyBTb0Mg
dmFyaWFudCBtYXkgYmUgcHJvdmlkZWQuICBBcyBleHBsYWluZWQgYnkgdGhlIHZlbmRvciBbM10g
YW5kCj4gYWNjb3JkaW5nIHRvIHRoZSBSSzM1ODhKIGRhdGFzaGVldCwgWzJdIGhpZ2hlci1mcmVx
dWVuY3kvaGlnaGVyLXZvbHRhZ2UKPiBDUFUgYW5kIEdQVSBPUFBzIGNhbiBiZSB1c2VkIGFzIHdl
bGwsIGJ1dCBhdCB0aGUgcmlzayBvZiByZWR1Y2luZyB0aGUgU29DCj4gbGlmZXRpbWUgZXhwZWN0
YW5jeS4gIFByZXN1bWFibHksIHVzaW5nIHRoZSBoaWdoZXIgT1BQcyBtYXkgYmUgc2FmZSBvbmx5
Cj4gd2hlbiBub3QgZW5qb3lpbmcgdGhlIGFzc3VtZWQgZXh0ZW5kZWQgdGVtcGVyYXR1cmUgcmFu
Z2UgdGhhdCB0aGUgUkszNTg4SiwKPiBhcyBhbiBTb0MgdmFyaWFudCB0YXJnZXRlZCBzcGVjaWZp
Y2FsbHkgYXQgaGlnaGVyLXRlbXBlcmF0dXJlLCBpbmR1c3RyaWFsCj4gYXBwbGljYXRpb25zLCBp
cyBtYWRlIChvciBiaW5uZWQpIGZvci4KPiAKPiBBbnlvbmUgYWJsZSB0byBrZWVwIHRoZWlyIFJL
MzU4OEotYmFzZWQgYm9hcmQgb3V0c2lkZSB0aGUgYWJvdmUtcHJlc3VtZWQKPiBleHRlbmRlZCB0
ZW1wZXJhdHVyZSByYW5nZSBhdCBhbGwgdGltZXMsIGFuZCB3aWxsaW5nIHRvIHRha2UgdGhlIGFz
c29jaWF0ZWQKPiByaXNrIG9mIHBvc3NpYmx5IHJlZHVjaW5nIHRoZSBTb0MgbGlmZXRpbWUgZXhw
ZWN0YW5jeSwgaXMgZnJlZSB0byBhcHBseQo+IGEgRFQgb3ZlcmxheSB0aGF0IGFkZHMgdGhlIGhp
Z2hlciBDUFUgYW5kIEdQVSBPUFBzLgo+IAo+IFdpdGggYWxsIHRoaXMgYW5kIHRoZSBkb3duc3Ry
ZWFtIFJLMzU4OChKKSBEVCBkZWZpbml0aW9ucyBbNF1bNV0gaW4gbWluZCwKPiBsZXQncyBkZWxl
dGUgdGhlIFJLMzU4OEogQ1BVIGFuZCBHUFUgT1BQcyB0aGF0IGFyZSBub3QgY29uc2lkZXJlZCBi
ZWxvbmdpbmcKPiB0byB0aGUgbm9ybWFsIG9wZXJhdGlvbiBtb2RlIGZvciB0aGlzIFNvQyB2YXJp
YW50LiAgVG8gcXVvdGUgdGhlIFJLMzU4OEoKPiBkYXRhc2hlZXQgWzJdLCAibm9ybWFsIG1vZGUg
bWVhbnMgdGhlIGNoaXBzZXQgd29ya3MgdW5kZXIgc2FmZXR5IHZvbHRhZ2UKPiBhbmQgZnJlcXVl
bmN5OyAgZm9yIHRoZSBpbmR1c3RyaWFsIGVudmlyb25tZW50LCBoaWdobHkgcmVjb21tZW5kIHRv
IGtlZXAgaW4KCkZZSSwgdGhlIGFuc3dlciBmcm9tIFJvY2tjaGlwIHN1cHBvcnQgYWJvdXQgd2hh
dCAiaW5kdXN0cmlhbCAKZW52aXJvbm1lbnQiIG1lYW5zIGlzOgoKIiIiCkluZHVzdHJpYWwgZW52
aXJvbm1lbnRzIGVuY29tcGFzcyBhIHdpZGUgcmFuZ2Ugb2Ygc2V0dGluZ3MsIGZyb20KbWFudWZh
Y3R1cmluZyBwbGFudHMgdG8gY2hlbWljYWwgcHJvY2Vzc2luZyBmYWNpbGl0aWVzLiBUaGVzZQpl
bnZpcm9ubWVudHMgYXJlIGNoYXJhY3Rlcml6ZWQgYnkgdGhlIHVzZSBvZiBjb21wbGV4IG1hY2hp
bmVyeSwKc3RyaW5nZW50IHNhZmV0eSBwcm90b2NvbHMsIGFuZCB0aGUgbmVlZCBmb3IgY29udGlu
dW91cyBvcGVyYXRpb25zLgoiIiIKCndoaWNoIGlzIG5vdCByZWFsbHkgaGVscGluZyBtZSB1bmRl
cnN0YW5kIHdoZW4gd2Ugc2hvdWxkIGJlIGFibGUgdG8gdXNlIAp0aGUgb3ZlcmRyaXZlIG1vZGUu
CgpXaHkgd291bGQgeW91IGJ1eSBhbiBSSzM1ODhKIHZhcmlhbnQgaWYgeW91IGRvbid0IHBsYW4g
b24gdXNpbmcgdGhlbSBvbiAKdGhlIC00MCAtIC0yMMKwQyByYW5nZSB0aGF0IGlzbid0IHN1cHBv
cnRlZCBieSB0aGUgUkszNTg4IHZhcmlhbnQsIHdoaWNoIApzZWVtcyB0byBtZSB0byBiZSB0aGUg
b25seSBhZHZlcnRpc2VkIGRpZmZlcmVuY2U/CgpJdCBhbHNvIHNlZW1zIGxpa2UgdGhlIFJLMzU4
OE0gc3VwcG9ydHMgdGhlIHNhbWUgb3BlcmF0aW5nIHJhbmdlIGFzIHRoZSAKUkszNTg4SiBidXQg
YXQgZmFzdGVyIHNwZWVkcz8gYy5mLiAKaHR0cHM6Ly9lbi50LWZpcmVmbHkuY29tL3Byb2R1Y3Qv
aW5kdXN0cnkvYWlvMzU4OG1xI3NwZWMgYW5kIApodHRwczovL2Rvd25sb2FkLnQtZmlyZWZseS5j
b20vJUU0JUJBJUE3JUU1JTkzJTgxJUU4JUE3JTg0JUU2JUEwJUJDJUU2JTk2JTg3JUU2JUExJUEz
LyVFNiVBMCVCOCVFNSVCRiU4MyVFNiU5RCVCRi9pQ29yZS0zNTg4TVElMjAtJTIwQXV0b21vdGl2
ZS1HcmFkZSUyMEFJJTIwQ29yZSUyMEJvYXJkLnBkZgoKQ291bGRuJ3QgZmluZCBhIGRhdGFzaGVl
dCB0aG91Z2guCgpUYWxrIGFib3V0IGNvbmZ1c2luZyBzcGVjcy4uLgoKSSdsbCBzdG9wIGNhcmlu
ZyBmcm9tIG5vdyBhYm91dCB0aGlzIHZlcnkgdG9waWMgOikKCkNoZWVycywKUXVlbnRpbgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
