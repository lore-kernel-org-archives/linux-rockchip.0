Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2951C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 May 2025 07:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:To:Subject:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IK4YfptBFzvjFjlposJ/Ij+M3VrJWxhWqAdNtCdC/co=; b=Aax2zJLK3vvKIsOfumsYvkUSkc
	is6cpMcJ1V3TO6C2/E2iSA+b0eCTtFAjc2W8p9XW7lWs1cIKypkx0JFZ7zkkN+t7QBV2woSmc8HCb
	YbxakB0QghlscbXwOh7weMOIWCTB+ImXtKGhY9JyUFVdPR3PIwrqZVqOpffhGRC+y2N2zoZtQhpjm
	DsyB6dG4V+5aJ7+wvpH1TRFSHsxKB4VEhWvV2ti5iYsOLR51yKd36oRicEEno5jfMarDxYNVpW9Fm
	iC7x40nGcZMer3DIVAlyLWpItqzNrQqa6oHHKQdtmg1HJcw+8iy8Z9d6GfNgmWLQ8v1EdKaBtwg5y
	AmE2dTdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFpr3-00000002iLi-08G2;
	Fri, 16 May 2025 07:51:41 +0000
Received: from mail-db5eur02on2060c.outbound.protection.outlook.com ([2a01:111:f403:2608::60c] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFpot-00000002hwX-3Ov8;
	Fri, 16 May 2025 07:49:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nTwl8WUjAG16G5hnbUSCmWuvBikK6UHBam0Yp91IYbLioF/tVY5+NcHx3tyMEXv/gaYLt86YTbODM43EUwf6pGO1bA0RxpsFYlMfc651DCW/bZ+hQbTNMDOGbbeuMMWhliu7EKnuRCOagZMZXtC/tr3NB32/Ftd9SbaO9sPqz8kdda6yIMM+PNSemWoOC+XvHoGUqbMg2Uj4saiiigjtaKrIZpGvOK8tW+voMh00/hdTn4upfIMp36FPQwKGZG+BKKvMCVBOMUxHU6E/tockGHYNj20Nr/mTv8LmGRO5hKaeufL7xgAoyvy052SQjgzrFqTSVflVQ7yulk0JC94kBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QWEgz1eB73PAeaObDxeIB6nAeBsdiFC5JYv1CTXx+d0=;
 b=hRrgMoQIgSnTkcEjf09m/x+1d2IV2lEu3FZ7uSs6M26jM7aaR5dyyEp6VF3dxrikM2RWcM6pb37CBAB16Ex5afWHXont8PQx07GZBXyoqpLHMsNcWE2qjmmubyiPgMsafZQFFmLlcki7D2s03E4KJpbwQEGgtJ+U2sy7qc36SsR3C+WNmL6y13o/0oC1f0/vKTYFDVTLl/zoYCTKQAjeNhg9mJRbL32XC5Dqk9lzRQlHzoVRQIPIcSK8a3knijRFHz575fSMm+DxJsWyYPe1k7m2uyKQ0EgZAGfpxhGIZCoygMb51VIXPZ8JpNe6Zsdp6Pn2Q0KvmQNYKWrXF3ecBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QWEgz1eB73PAeaObDxeIB6nAeBsdiFC5JYv1CTXx+d0=;
 b=QHA+B7uENIZ8zDyiW9GUOMQlW+ICQLsogZzeNG7VhPhc/5lYnsQFGHmLM+yA9yFD50Yhi1QePu9ZcafLB3VURDfdd4yhEdwTeB8hx8WjZKza5kj23tyKha3iMqpp96wcBquRAqGAG+M96xo77iQsg+U+p9B41TijERFTqnwDTR0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA4PR04MB9710.eurprd04.prod.outlook.com (2603:10a6:102:268::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.29; Fri, 16 May
 2025 07:49:21 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%4]) with mapi id 15.20.8722.031; Fri, 16 May 2025
 07:49:20 +0000
Message-ID: <1c0a947a-c634-494f-b544-852e877e1677@cherry.de>
Date: Fri, 16 May 2025 09:49:18 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] dt-bindings: vendor-prefixes: Add luckfox prefix
To: John Clark <inindev@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <20250516002713.145026-1-inindev@gmail.com>
 <20250516002713.145026-2-inindev@gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20250516002713.145026-2-inindev@gmail.com>
X-ClientProxiedBy: FR4P281CA0317.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:eb::10) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA4PR04MB9710:EE_
X-MS-Office365-Filtering-Correlation-Id: 45b278df-cec3-4081-cba9-08dd944e2aca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bTNmdE4yZnl5ckx5bmd0QzZVRUR3Q0xXVVZYOTY2TFZSMDRCNnpvQUx1a3lr?=
 =?utf-8?B?bnZTNGx2bndQRGFrdzlvQThNbWNNcFBNb1kwajB5NGdiTHVTaTdTcERoNHBX?=
 =?utf-8?B?V0h0c0NFVTJLYkpIMk9xZG53ZEJtaXVVNUJOMS9aWGFKTDJVTnJHbTl1VFRV?=
 =?utf-8?B?Tmo0MTBNQmo4SVJvcmJPVzdXL1M4dkxhTXU3RFJ5UGQ5RFlOdVJhK1Boa3pG?=
 =?utf-8?B?U3NtOVVDci8wWGxFOTlHWHh6Z00zQ1RaMXAvd3Rwb0tidSs1WEoyNFRucVVW?=
 =?utf-8?B?RDRpbStrSGRHSldoZHlmRS8vSSs3RytVYU9TNkYrUml6Y0FFM3d3NjNmeDZD?=
 =?utf-8?B?UHBmTXNIWGpLb0ppcVoxSGtGUzhOSEdVRlk4bGE1OUpGQkVHN2Y2Zitac1hj?=
 =?utf-8?B?eTBYU3NFdTZyZXhxVnVwVjlHcDM4aFczWXFyNEEvSXk1dFFBUW9uTDU2dWY1?=
 =?utf-8?B?akZuZExPUnNRWGpBOGhTb2dka0NVckU1SmpvN0Vyd0VXL3Z1ZzQwNlhUK2cz?=
 =?utf-8?B?MTh2cFNJYlRZMEhmcDcxL25yc3F0aE9QZ21jL3dhY2ZUK215TXgyRWtSWUNa?=
 =?utf-8?B?NFRNU0I4OVk0dTltdklMTjkvWXhYRGpqZXJMaWM3RnF1aE1relVpK24zM3Fm?=
 =?utf-8?B?R2RMazFobzJ4djkwMkRTeHlVaWFablNMQWhiUG4xZ2JIOG9JR2FNaWdzNnRN?=
 =?utf-8?B?OU5lbFhMU1V1N1BJSmxHVzlVZEsyeDNnUzFTZlpRVmtKQXFkZExxYTVXUHRZ?=
 =?utf-8?B?ZElCbTdZbGZJMy8xTGVVRVo1bnVPZzlqaUQxZmVCemZGNlFOcXpCOXpnQldI?=
 =?utf-8?B?N2Zsa1lOWjNlbVBnSGJzdS8xMXB3aW15VU5BdHNWNmIyYkluOWNxd1hjMWlq?=
 =?utf-8?B?RVZJa1VaMU9DcWNXWU5PLzhqc0FtbUY5ZVVrWlQrWXFmQkVKUFJFNXdERzhM?=
 =?utf-8?B?R2x4TEhSWmN5eXBaNUUwV2NMYVVMVFQyck5PUmR6d0E1SGVEbFZlamQ5Vm9K?=
 =?utf-8?B?OUFqSHhGbGhYSFBhTkw4ZERRNkhYL3pER25VdExlL2JsTDhHbWlzeEt5Q2pV?=
 =?utf-8?B?L2daOGJhZk5NUExqVjlpVDJtbk50SUJBSjB1d2hjYXJQbWphR3NoRXp5S1VO?=
 =?utf-8?B?V29PRGFYQ3Zwd1VYUVBjM3FLeGN4Vm1tUkV4d0VaQVhUZHFZWXVjR2RGTDdC?=
 =?utf-8?B?MGM2SnhSNEdRMXVOSkpoNm1ZUkNtRjVORWhLMlF6cnhDU3BlOTdQL0F4TjFD?=
 =?utf-8?B?dEJ5aVJ3SWVHV2RRWlhZQTR2YUo5MUhORXhwK1dGYzFjRjU5U21HeFk2NnJK?=
 =?utf-8?B?bE9HWUpoYXpBM3BWUjVqV3hrWTlLUEQ4ZVIzWnMwMXlwTDFUbFYyZkxMeFdU?=
 =?utf-8?B?QWs0MnVQY0NsR1VmaEFqN0VJL2tCL3JTUUlPcnBJSkNsR1czN3g2d3ExRUZl?=
 =?utf-8?B?czhhaWxBQUJBOE5kNzU4bFhpbnA5VXBYV3ZKVVgxTi9pVWNDdjg4YlNlRlA3?=
 =?utf-8?B?L1IvZitiaDdkWkgxRUs2Vm1xNzF0cE5uQmpJZm5oRWNBeE9yTExrSWVHbVdV?=
 =?utf-8?B?T2svNS9WN1hvQ2k5ZjNPSGhMcmZJRXNNQThVbkgrcHpoVmpXVTVrejAyQ0t4?=
 =?utf-8?B?ZlFBclRBeFJRbTd2NVJqOWRJSmlJUGdaK29nenBRbEdRcG9vcEhhV1NjTHUr?=
 =?utf-8?B?WFdjNkZxTyt1bWlIZXhKc3MrS3Vwc2tHWHMvNUdMYUNYUE03OGZ6enlqdjJU?=
 =?utf-8?B?d2ZPNXVHczcwMWNIYkh1MjAydkhuQmpFcllYdm1lL1EvUjl5MmxCNmNyWEZI?=
 =?utf-8?B?cTYvQ05udXlwWE5xV2MyelE0aGR2VTQ2a20rT013VGRJZ1Fad2J4bW53RlZC?=
 =?utf-8?B?eXkxNmpqTFRCMGM1Q050emVQcnhGRDFwcmlMSHhnWUZiMkVzSitTTkdVTDcy?=
 =?utf-8?Q?MjNxayiSWag=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGZvUzdMejROa0ZBU01rY0VPclArZXpkazAyNlJEMXc4MHdCbmJvZ0NnNkpP?=
 =?utf-8?B?WGdmT1pUVGRwTFZJZGVPQjBNNW9iQmE0K1BodFVUOGxGWmt1STVGaEd6ZDFR?=
 =?utf-8?B?TjVYNUZZNWJNMlJtOTIzVmo4a0tUZXJ5ajlvVHJ1Y1k2MkZaYzFEWUh6MG4v?=
 =?utf-8?B?b283bzM2dmdoMHBub01RZEhoM1FlckFUKzJFcHYySnAwMm1iblBmUTJOSWlC?=
 =?utf-8?B?ZVRZdUttSEdaV1U4cEY0eklUdHJ2S1JzVzR4eGJXcG8rTjM5Nk4wUVlEU1Ey?=
 =?utf-8?B?Znp5N3BkTGVzRTh4OG9qOU1aZnJxd3RQSGU4NlRBU0lUSnlJYVdZdzErOGk5?=
 =?utf-8?B?eEZ4c2FvdTV3RmFiaHRueHJDWEF3aldOTml1aExlbXErYTV1QVdqOTEvZk1h?=
 =?utf-8?B?T1pHYVlIY2s4bFdXZUZsb1pvK2wwa3VlT0lMZWNYWHRySFpkbXR2aDh4Sm5t?=
 =?utf-8?B?Rk5mN1JFRlpkWUtlQU1VMDMzSDdtZ1FGVWlUU0pDOFIwZnphMHNwNVplU21S?=
 =?utf-8?B?MnBMZ3ZZbjNnWmlOaEVYakNlMzIrZzFLUGRJOFYzb1YyTU55TUhpdTFWNnpB?=
 =?utf-8?B?ZWJkcEkranc4VzY4KytkUHpYYjJSOFIxQkJZZ3NIVXhzVE4vQ2J6cEtjY0dG?=
 =?utf-8?B?L3RZYXRsZWUvblFJaFZrZWhjZ3pBS0lPVHVrQ3dmQnBLU3lmZnRwNUlINzVE?=
 =?utf-8?B?Rm50cTNyNEZhR2hiSXJ3ai85M1RXeXU5eGhudVRTSHdGbFgrQ0thY0ZNSHBi?=
 =?utf-8?B?dnZvZVdOdkRGL0xPWXZnUWYzNkN0VXN0YktaZFNncjZaNjlZdnRsaVJDTXgw?=
 =?utf-8?B?QllSZ0MreFVRZnMvcnd5Z1RPMlI5ajA0MGxjeGtKeGMwMU9Qc2t2bS9GSGF2?=
 =?utf-8?B?Wk1IaTMvd214ZnFITFQyNUR1U09RNnh5TGI3UEhLd3lsMFFYL1hUQVVjQ0J0?=
 =?utf-8?B?ZkJIMEVNazR5eElsdC9Eai9MZmZPclhkcjhPRDVseU9FeXdsTWhOa2pzcW54?=
 =?utf-8?B?am52VkRXcldNRzhEVWplVlpxRFo2Nkp3cEZVNlNPdDk1WEp6U2UrdG90MlFR?=
 =?utf-8?B?Q2FpSmJsd3dDUWQ2VjlxMXhrZ1d5VXFybXI0eTQ3Y3p3SXZtNzF0SmJ2cHlE?=
 =?utf-8?B?Uy9OcnM1N0F3TnQ0a0h4ajNoY3lZcGhJam9EVlZuUkd5TkEyUU5FVXJXeTV4?=
 =?utf-8?B?ZmpYbmU3SWROMFVsbzhSQXpSNUZjWWdEZW41WS9xbXNqQkNlbnNkb2JrVDFS?=
 =?utf-8?B?dG5HRk5rR1J4djFQTmZmQmI4bkhJWmhwbWVQK2NFQUhQNmRNbHJLcG5aazFo?=
 =?utf-8?B?VW9sZmRoYjNOTThBb25wdEhvbjRvWm8zQkZPVjZldW9uT29zWUpFVkduYy9s?=
 =?utf-8?B?YVVaRURlaXNnZVk3TUsrWVpQVWJjYTM0djlDS3VYclVRUllaL3ltL21MMUUx?=
 =?utf-8?B?emFuajZXRy9OTDVoY3VITHRzcjNkU0oya29nSXkvYXZpdGxpa2l1cll6bmsv?=
 =?utf-8?B?YktKZmFIeVRGTGUrd05HMGNoZnBMVmQrTkUyYjdQRVpOMnVGaldFdXNqN05K?=
 =?utf-8?B?UEZoUXFuaUJ6SHA5V21PNWJWYlZDNmJTYmZRL1VKTjVobHZ2Q29XOGd2NE5r?=
 =?utf-8?B?Q0JSemkzT2tUYVBzdmx2R1pjSE1aL2hvb3hLSGFhZXMzQjFzODUyZThjOXBy?=
 =?utf-8?B?cEsrZWtrZEtmVVFDTjJzNkhVUmZZcWlkTTFJbEFRc293YUUzNXM5YThhQUE0?=
 =?utf-8?B?Q3VsVkxOVkJ0OGZjTFRVZGNUR3JpOUkrekZhNHZyalZDR0l6SDN1QXFmZUFV?=
 =?utf-8?B?d0IrRWtRZTJKWnljZGplOG5SOTFRWlB6YWxyTVVaRUM2c1BCcGxMVTA3cnRZ?=
 =?utf-8?B?WEJ4amxybGNaQ2hqUlFiT2hPZjY2elptQmJrVFgyM2VJQW13SGxKd0F0ZDFh?=
 =?utf-8?B?b0o3cW1Qb2Z3WjNhdHVXQlA5TWR5dVpqSDVWekliSVRRbzdzemphQlZNazJz?=
 =?utf-8?B?c0JySUVZYzFuTkxmNjhlRS9mVWVvNUhYYVU0Tkhkb3FyMzNIL3JsRUlvbjNr?=
 =?utf-8?B?aXU5T0pac0tocXltT2ZOSnpwQTNtOFBsUHlsMHVQUmhrSXIrR2lDQkcrSVdv?=
 =?utf-8?B?ZW5BY2NBdndCRkc5OGJ2VXNKYlBVTUJZbWk5VzVCUkV5V0xLQnhRMTZhcWNP?=
 =?utf-8?B?emc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 45b278df-cec3-4081-cba9-08dd944e2aca
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2025 07:49:20.6638
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xcMFBIvqydwQbl/wcdSxnv8nZuFF3iHdI0yOyfQ+SfK/3YDjcuA+C0AVBADq5tgSMsUKtx/R9OmvlalUZKlYbGW1ADCgQlWrz29rIsnLR5E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_004927_866095_41900EB4 
X-CRM114-Status: UNSURE (   6.45  )
X-CRM114-Notice: Please train this message.
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
Cc: Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, linux-rockchip@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi John,

On 5/16/25 2:27 AM, John Clark wrote:
> Add vendor prefix for Shenzhen Luckfox Technology Co., Ltd., which
> produces development boards like the Luckfox Omni3576.
> 
> Signed-off-by: John Clark <inindev@gmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

Thanks!
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
