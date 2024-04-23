Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDF08C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 12:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bumGt5+V3Kb7FvdIn/QsGC01goeA3B7/rB3itS1bbTQ=; b=nS53JbxWkrC4DIPcOPPir1Iac+
	h0ys6t+9Lkr8XtI9H3EyNvY50aCYCJcaCLFQkIoQYYSrxMfDX0yF6b7njmllhAZhKH3CsQ6R30KgV
	XTQgkX6uki3ESDEaYnAY7my4yFran68BvjC1n3+WYWsYZ9Qwp25kZC4zLkHBWmAADNXsbUviwvY/2
	thAk/0f05NeF030d4jHQd2sRc0LYqJ5HOpL6KaWzd4AHib8PxSYm+AHZtNFbnWsO+eOUUCjUnnmFE
	ZHny7Uxj7dhfX5INQS8EPayHwXq6h5DWUIlh00RLWSE1CqlKWFl9prBI+hUzEwpQbFdHa/gJEI0jc
	+YyfDNQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzFiB-0000000HXNp-01cO;
	Tue, 23 Apr 2024 12:57:27 +0000
Received: from mail-vi1eur04on20700.outbound.protection.outlook.com ([2a01:111:f403:2611::700] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzFi5-0000000HXIz-483w;
	Tue, 23 Apr 2024 12:57:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e7LRaA9Agxafr++RbPfMlpKJh5KorelhWLc6vgdx+tsVIVsblJ+neO1A2W8fSJa6uNdZV+ke3GnMhy+aAc7UaJRTQY+cn+Vf/bI60fz29nVnjKE00SsNAD0eewEhIlZ0HqMAcHfXNadt++Hr7wSXICkr9j8d+apQWForrRv3hpTqcBy3Fv0DnQna7EdbEgw4+YdKLt4h8QNsYYTVgJ9vuEsrKNpf2pdj9mOVcm2e9mdOBtmONmvPmAWnrP41tmzmiQ7si305oPIhea0UejUUTWxB/uRZzDF836fd5gWRHXBWmTTL/J2ZSx1xAnaltpC9NwjXYeLCvkcQ6+PcgZsZDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3b3lVLxsbG8rHIE88A2+056GUMFZxR91NyHLTm7FI1w=;
 b=Ny5eSY82RwcjM14ldbT4ZNgPz6bGwFjHBPLJVWn5t69ikgB07vDbbUXJBQ/TW7/OdQHs1HF3HiAgZSxaeUP+sZgSI7kK30kKduhLggSTYNB5RIkricllRelQ4RSfFeqjZFkrzIve09NBJrz8PT30gp6lP9suDQhxOW5m8kXRjKwJvtKR10vRVWoSX2LQ3yIbmULW5SPwfjQ9k04OAbeMvc5cIOpD9mYkRRTj2TDyxONTc7wsXdVG6UfJNIfGP3PPMmKcXtMRt/n81BhalKduiRCrQJGFy33C/DXr94QzxWGlhnL5HUueG13/RMNHanBcDHZpoAoNbXCVqgpuSRyvgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3b3lVLxsbG8rHIE88A2+056GUMFZxR91NyHLTm7FI1w=;
 b=UZOSq0ukjF+HphNSpl/rnJ7vF27TXqHPP177WM2Ex92ALOYRfhFTh85Kd32V2yc3ebRR+3hIkBkLaswAvLVDY0mwlauu+6oJwBU72KVW1AIMqJf+G259UkeSMAOHC2RYXzV8liOFWnLREse8jtmHpHwRz8zGYophRbKz8c3SVHkp5uu83l2FIrcDTudKbPcAkfJIGpMk+sxw3P2YevEkdliDxcnALaT18abhUeQalVvxUB7msnZ9tmq3frhYfTM+IjqnOoiQJV29DGuIbbhYu1i5EiStpofvhtLzKEXOmPGXLaSfU91b6yLri56gcZH0gq+8Uq5zKoQ3C6iL6G0jJA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from AM0PR04MB4833.eurprd04.prod.outlook.com (2603:10a6:208:c2::30)
 by AS8PR04MB8166.eurprd04.prod.outlook.com (2603:10a6:20b:3fa::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Tue, 23 Apr
 2024 12:57:15 +0000
Received: from AM0PR04MB4833.eurprd04.prod.outlook.com
 ([fe80::70be:f731:f7e6:a785]) by AM0PR04MB4833.eurprd04.prod.outlook.com
 ([fe80::70be:f731:f7e6:a785%5]) with mapi id 15.20.7472.044; Tue, 23 Apr 2024
 12:57:15 +0000
Message-ID: <8c044e13-fa87-46ad-92bc-9a5bced4259b@theobroma-systems.com>
Date: Tue, 23 Apr 2024 14:57:13 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix pcie-refclk frequency on rk3588
 tiger
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240423114635.2637310-1-heiko@sntech.de>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240423114635.2637310-1-heiko@sntech.de>
X-ClientProxiedBy: BE1P281CA0210.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:89::11) To AM0PR04MB4833.eurprd04.prod.outlook.com
 (2603:10a6:208:c2::30)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB4833:EE_|AS8PR04MB8166:EE_
X-MS-Office365-Filtering-Correlation-Id: 475b7618-01d5-4692-7899-08dc6394e664
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q3h1Y3FpRE9vTkdyZ1hlZ2ljclBXUWk0R0s4dHZmTjNPUytoNm5udEhHSyts?=
 =?utf-8?B?VU83cm9Hdit6WTQrTEllQ3NHVm9JSi9aOHVLdlYxbmZtaU9CUDNNSW9wbnpS?=
 =?utf-8?B?R1FubmlpbkpQRmRMUHJEMzFPOTVZeVJPdTRGbk9PSWtudzZ0QzlteStxakkx?=
 =?utf-8?B?MnQwS3NTVktnQUtEMW9XM0gvSFNiL2x1U2FXdEhGcVE3TzVwK1hmOWlDdFlw?=
 =?utf-8?B?WmE3T3FadFBibCtlYmRnZ3JZMTEzWkticG9LL3FodGRndVBvNzBlRWQrTUJ0?=
 =?utf-8?B?cFpWc1BEcEIyYVh1YmZNWllzN0hFMXRpV3dibE9TbTZNNnNWWk9NUld6OWtN?=
 =?utf-8?B?aGJxT0wzYXMrNFJTc0plaStQc1NodjhZSEowaDFFNG5LTEI1ZzhzZG10U24z?=
 =?utf-8?B?U09KMFVzaHJQV2lwcjkwbG1YQjNEZjhSb2xLdnJNR25lY3Z0TG1TSFQ4ZHFN?=
 =?utf-8?B?QlVNZjUwaWtlbHJ0c0VFSm9rWHJab3BOdmt5dm5Sdk85SnVuT2FJWWhYQlg3?=
 =?utf-8?B?cjdTbmxIaXhqaHRiaVdKR01rajBPZzJSQmx6d1p0ZGZ6VDlFdjU5Q0wwVDk5?=
 =?utf-8?B?ZjJBYXIvb0VIWWRLRTlwVE1UQ2VxaytpaTN4TkxUL2g1NTVXUUNodlZHTDVJ?=
 =?utf-8?B?bHJXbys1VTkyTC8wWk5NakNkNG1CeWFIUnpYRzlxMG1jMEMweDVrc3RqYk5r?=
 =?utf-8?B?b2xpell5clYxYmdnandlZ3ZiN3FuZDlWeklRY3RXRXZscng4Nm9BZVd6QjNN?=
 =?utf-8?B?eWw3MW52TSt5VnZnWUc2c1VYc3JOVlhKWVhnTWVBZTI2M2VmRm5GZ2lZcWNV?=
 =?utf-8?B?cnZpRnV1QTR2bEZMMlZXRGNxR3BWb01kYjVHalBaTmZReTZpVnFmZVhzbEZi?=
 =?utf-8?B?U2l6R2l4WVoxaGZOakFmcFdObDhYSDFNSExRQ1JuR3RQa3E3dVlmUjU5cCtu?=
 =?utf-8?B?VUs1YmxxeldEK2RLZU5rY2trTDB4UWc1Yzl4UWUvZUd2TjhKUVNYenNNTVkz?=
 =?utf-8?B?QjJiUDRqSWUvQmVaRVhtdmc3blk4OEg0V3JDVTRYTGt4c2JzSFRFYzc1bS9C?=
 =?utf-8?B?bTFuQzJQLzBsY0pXbkRUR3BVQ1lZMENOZ1kvam5YSVhXTmJTSHNJaW4yTENO?=
 =?utf-8?B?aFIrNTYrSEJqQ2gwaWU1eDNCQzNMWXlmTW5OQnV2T3plNUZlOFQ1NUZvbHRZ?=
 =?utf-8?B?Z0Rad0lrV2hUTWZBejNCc0cvbFdjTXdmVnN5bDZFek54cGNDSnRjdElzNUYy?=
 =?utf-8?B?YUNmdDh1RjdhdWMzcS9uSFV5UG9RcFM5VjIyRW0zb2NubUFUck85c1RTbjEw?=
 =?utf-8?B?QTZ4aTg1WEZPUlcyK1ZKUkhYRUxkejdGT0k2SVJmSXdFdjhvMkc3dGt2SGxL?=
 =?utf-8?B?YnJJckNySmtIZXlhNmRrN3Z6aWR2YjFQK2Ziek5oV2h4b01GWTM5ZkZIMnFP?=
 =?utf-8?B?N1BZdWNmTUY0SWw1dURoSFpHeURKQWhqQXVtS240QzV3dW5vRnZtQmFQZCtt?=
 =?utf-8?B?MWJPbWZYZlBHZUpULzBRYjNBRHVQR1I4b1NDSGJEdyt4c1dNUnlpTUt3UVJG?=
 =?utf-8?B?b2NwSGE5TG13ckxLenQ1cVNRVFpMWnRWcmtyS3FMVUhhSUtSa2F1aGVoc3lk?=
 =?utf-8?B?bWhuNEhEWHllUDFsOE8vRHZod0ZVYmVPdHk1aEtXQ0xuV2pVK0FKcFJlYmZB?=
 =?utf-8?B?V01IcXE2cVRHZk9TUkVEWlViNmo2R2dBN0NDZ1NPYTFBMlN0R3g1VEhBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB4833.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RTFrYmZrclVlSnA4bWxjWE8rdnUxNEw2V1lSZ0dFakpxL3oxeEhOenZoVWI0?=
 =?utf-8?B?ZktBM3BiUTdCUmRhVzhYclBmZWFqdW5RVTZNNFZTQ2hCa3YwdXdJOGxtRUdY?=
 =?utf-8?B?cDdRaTRlQWIzZlI1akRIVnI2N2F3aXRaM3NUODZsNGY0OTZ4aHFqMDBBUVhB?=
 =?utf-8?B?NU5BcGFNK2J2VC9oNm1IVHZzYmFNa1NEMDlqQzdCeVB5K0Z1WmViMTJuYlFs?=
 =?utf-8?B?YVYyeVE1dkV1T1hhTXdweHVER3RobG04SjdxYjBRMXRlR2JvOXRML1AyQTBm?=
 =?utf-8?B?cUFSMWprYkRtdHFJcFdtMjRudTNvR0RaZldtcUtLQklQT1g1UHpmYjIyTG82?=
 =?utf-8?B?MHRRVXI5YTc0THd2cWx5NmZ4d3c4ZXpWRHBHeWFqTGEvYUM4SWlCZ2pLbWxU?=
 =?utf-8?B?blp2TVV4M0JrVVZVMVhCSHdpNGtvTTJZTkUxNCtUNTN4Y3Qxc0lFeXZwTHhC?=
 =?utf-8?B?TGRXOUNlaUVLMXgyL3dYc251Vm5qSkNSRys0VHRtdW1rWGdkYnF2WnJhbHU3?=
 =?utf-8?B?YnYwcVNyeVh0TWxnT0dZS3U5YTNtNDYveFI0SHJrVTJsZjVZZmFjb1ZpNU04?=
 =?utf-8?B?THVoUy9hNXFCZmlrNm1JdnA5NkQ4TEVaZUsrME5IUWpidUJnenFhbjhBa05R?=
 =?utf-8?B?Yy9VakxaZHppTjZHenovUTFVdkE0cVFsZjZzQktiUGE5TVYyWFh2L2JVVWQz?=
 =?utf-8?B?VHpIUHA5Q1EwczFyVDBacVdheE1HNnp2akRSVlBxbStKK3hGZXJjVkhhSEZx?=
 =?utf-8?B?b2JJRVRjQXpHcXAvdVRMMGxac2l6Y21SUndFWGVZRWREV2NJVzl3eVNSUFdl?=
 =?utf-8?B?ZFVwclA4REVhOG1Qd0FEd1lRNTRSWU1hWWlleHRyNlV0UGdzUzhoT09WeU1p?=
 =?utf-8?B?MTRhZXk0VGdZLzZYREt0T1BSYTNUSmg4Z3ZWNy83OUxwRExXRkl6QndMNDVF?=
 =?utf-8?B?K3lOTDMxMDZza1dZeE42L1FUNnJTVlVvbkFRdVhQZmgzV0JNRTQ1RTRBdGxo?=
 =?utf-8?B?cHJKUDdzRGNXZW0xelFJTHlqZ0VETW5oc3J6OFRubnp0S2ErbkFpWWhUdTh3?=
 =?utf-8?B?UHdmTmdZTDZZZHpDK0lwRzFTV2owMitMbE5PaVFPSnYxc1JNWmxPR3YrTlo4?=
 =?utf-8?B?YzZCZ1JJTDEwRkIzRXJneTBBdExQRkpNRnpRMkNlOElLekI2QjhHZjlzK2hG?=
 =?utf-8?B?eG5iR2hFS01RZkV4MDNwZDFBbFhBcVFSMjNqOExrTk5PNk14UWJsQyt4NEdF?=
 =?utf-8?B?V1BSTTdZbTlyWUg3dkRvZmVKejdqMHNYN1htcU5sOUQrQ0R6dkh2OWRONnRq?=
 =?utf-8?B?VzNJOEJMa0dNV2tiYXk3WjdCclBXWktmREY4ZGJmc1A4aUhPcXRFeEl3ZjM2?=
 =?utf-8?B?ZVJONjQwM0RFNVBNcUhMUzNMOUd6a1U5Uk9ZMEJTWk9uRWg2UmcyejVhclVU?=
 =?utf-8?B?QTFONkJpQnFMcnQ1ZkpQQy85ZGZMUlUxOVhUdXBrL2VIQXltOWU0SUx1enB5?=
 =?utf-8?B?TjhMTVBuQ0ZVN2FvUDFHV01NRmlRMnE5dnFONHdHYWdrMXJPVmp5S0g2STh4?=
 =?utf-8?B?SFBSS1NLaENMQVMyVFZld2VKZ0piSDhUV25JU1NQUkNUUVBBZERVaTMyUTVz?=
 =?utf-8?B?TklKZTQydVkrWUpBa1lwY21reHJYMmkzOXNPVjNEYWFRZGRieE9GdWNNM1cr?=
 =?utf-8?B?T2RSazZUUWZkbVM5bWpJM0VMczBYWldDS2gwcEltZ2t6eGF0cFoxdEk1RGFx?=
 =?utf-8?B?azdkbFkzbmlXSWFjeTY1YnhSaTlYUGc4Yy94QU9rcHFmc3ljaXo4eHp6OTZE?=
 =?utf-8?B?MXBGbmIyWXQ0ZWdjR1ZHTnBxV3ZrcFVQYWRtRlZjOElJUnFGOHBrV0pLeDRi?=
 =?utf-8?B?dDh3Zk0vSTd6V1ZiSURNZmVmZ3hsQlpmM0pNQTdIQ0RrQzBCRHlYU0ZtdVVQ?=
 =?utf-8?B?cit3VUZFblBQVVRwdnU3VTcyM0lmVkdZT1drazZOdEoxRTlnWjRMaW5wby9r?=
 =?utf-8?B?WEllcWhWUERRc0VaVUVXODRCUUNySk9SdHlhcURzNEhHVnFIdkdnaUdienlG?=
 =?utf-8?B?THFHbGxpZEFqVkJXeitpWGl6UU5naUovZnY5M1NGSE50N1d2M1FpYnoweklR?=
 =?utf-8?B?OXpNL3JiY2pMaWxLUVp4cEgzaHVXWFdiakF3Q1JFRVA0L0hQZ1pjVVdwbDRu?=
 =?utf-8?Q?dtZjdtW/7JlZJcZBCDVseLc=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 475b7618-01d5-4692-7899-08dc6394e664
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB4833.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2024 12:57:15.2923
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qktdzbq7SWAIABONRoLKEZ1Omz1u0HYVuAWSyoTQlaBf8z7KgFrpvgjjJlmrAdkqN6rmuRMK4eNaXp/Xf1T7dFzTi9t/DNHxx68qtGLMFvv302hXMgS9B6naYYHwO1XD
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_055722_082347_F6FB7D15 
X-CRM114-Status: UNSURE (   6.54  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On 4/23/24 13:46, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The clock-generator of course only produces a 100MHz clock rate,
> not 1GHz.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Thanks!
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
