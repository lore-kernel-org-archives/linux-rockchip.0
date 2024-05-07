Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDBBCC10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 12:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=taS/IRwM9jGHFMHBUZHvgjpwcagJkT9ehIQ1nSHznDc=; b=23ubNLc4pKR3xSo1V4PQekGZzd
	XsBQ+6NRbW5GyaMvg/JupbXwormmGhDazeYam2Tm5zQ9HouizaghnrLTmJ9a9urX38tDc2rGDNl1C
	kmJSRndaVXHUF3N17WE0Ga1pAtuSr+SkkNnCrWR9Qc/6UkBTdf9qbdPaRFggxkQx5MCQOwt+ZRrHH
	1PPOzXf8hlcOwEBoIiwZ+w+8rrFqDgc610o/FI5GdncSL2o1acKqi1NDqVqzAxKZEJbSuMDA91DSK
	7TBituXTGcQ7bwy0sCwtvZZnUUdMPK8klnbzgJUV64bu5ejyymfHnRy0y1yiVIwUOxrjctXmCy1wn
	2aBeqyBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4K9x-0000000AzLn-2URw;
	Tue, 07 May 2024 12:43:05 +0000
Received: from mail-he1eur04on20701.outbound.protection.outlook.com ([2a01:111:f403:260f::701] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4K9s-0000000AzJy-1e0X;
	Tue, 07 May 2024 12:43:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UsS6XV8qUqiWvTqtY4KHdnR1Q8MdM3S6irSL4XNjvfnEXdYmr7nBHGJtreDUWqinNDcjquhnK5Gt1lrDhoXyXmxFuoyKvXeskbxQboOOOQ6gdg8IZoHTJS03fVchjrg4fFsM0jvgmGCDT2wyGdvXTRbd69K7x25nnsr2SgsjfoTHdx0DZfEcP9JhAaVuGemN8gF4T3nAlkyS85wiXRSc1aEMJfVMGfQv8x/sQcjpBOkD76WbS3hQ6jUhaw9SwExBllMGxLq8jbW5Tbn55tpQYzI+KdyOotIe59nzUCN3d6hw0mr1aCL0pdoaS2cFqAFmNa1XYhrcZzywuNEYxt6qRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oaEn7DUUwfjlGBqkk3iRNtEsWcQx24bEmbFETzhVVAU=;
 b=ZfI/MM4XMd7oY+uyOlzJnxuK+qXd6qaEj/qKO5lgipnn0LwxmWFlvvxArfJhxExy8QiD8POJQqXFBTGF8yEmp8kv1lxNvjAQdq6Nxitx6Z09BxKPzpSb/d3OtQ08MSBa++x/CRxy12mcW41PL4XfjRLHY77v5JE3I98FDoxX/euo9F+RZef4w53r0m9X5DMZv/iebwW24GybziiRHPrUvSnKHaQSCt4UqplKSU3mmGdI+yxReVYxD5LzNizNVcPL/iJTfQDziJmw62I3N1ThG21Iy1nkpJjFLPXU6+sT8X7U6nYKxNYY7p/DEt1jQikZvOdwWIBNlNDfbIyt6bHZOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oaEn7DUUwfjlGBqkk3iRNtEsWcQx24bEmbFETzhVVAU=;
 b=RVkIazQBzPKAiw/N5n7gM8F714cbqLLRa+BlUln438RnBbA4w9MQ2OKTObjlESmUxzxiNder4Pqghh7tZAAY8CR1fZ5IZeRqsdSjp5bLSVBVOuZyBNHbISGN/Nz9cdIkJ/46TQmxdVlfsoWyEQlwibOI/2UglDdl9j+3B5wFCFQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com (2603:10a6:10:1b::13)
 by PAXPR04MB8254.eurprd04.prod.outlook.com (2603:10a6:102:1cd::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.42; Tue, 7 May
 2024 12:42:53 +0000
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::ac08:df46:97bd:4ae6]) by DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::ac08:df46:97bd:4ae6%6]) with mapi id 15.20.7544.041; Tue, 7 May 2024
 12:42:53 +0000
Message-ID: <7896e6a0-4c9e-4df6-a7ea-5b952696affd@cherry.de>
Date: Tue, 7 May 2024 14:42:51 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Small changes for Rockchip NVMEM drivers
To: Heiko Stuebner <heiko@sntech.de>, srinivas.kandagatla@linaro.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240507122256.3765362-1-heiko@sntech.de>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20240507122256.3765362-1-heiko@sntech.de>
X-ClientProxiedBy: WA0P291CA0022.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1::22) To DB7PR04MB4842.eurprd04.prod.outlook.com
 (2603:10a6:10:1b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4842:EE_|PAXPR04MB8254:EE_
X-MS-Office365-Filtering-Correlation-Id: d8f3bca8-6843-4c82-711c-08dc6e933638
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cFJjS2ZEVDdQWXM1ZmVYMkJmM3NHWnFkSVFBaVhlRnNESW9MenFDMGIxRkxE?=
 =?utf-8?B?ZGc3YTdtNXF4QW13eFN4VitDaTl5QjQyaENCUHlBaDdWanpNTjRTb1VZd096?=
 =?utf-8?B?NW53bUs3Mm42dk1MOFVBeVU3ZnY1MzRvOWdtWXpEeG9TMUdLa2ZOb2Zzdm5n?=
 =?utf-8?B?dHNPN3Y3SjB5dEZtTFBuOHRCRUplWXFLMVpLbGc1M0tkcGwvQlM3WVY4YzhN?=
 =?utf-8?B?V29JcEQ2VlhDMUNhSHlHL21TNk9XRXNVRE1LbkFFNGV6VWl6R3EwTjZUYmYx?=
 =?utf-8?B?RkpuaWVzMjA4KzNRVUJxaUhzRXNYaG1KcTJyRVVFODU5Y01hV1dBV2xzYU5O?=
 =?utf-8?B?UTZzT2xKaFRqYWd3ak9CalM4aFRtUVkxQ3kxZjFsWVhpMnpNZ3QrUUVISXFW?=
 =?utf-8?B?QUpTTjNud0FyUkE0aWRBZVJrcmxvN0pOMWhCTTlFRDhxZVpjUm5weURtUGk5?=
 =?utf-8?B?ejJwOXN3WVB4a1FjVzg1SGpNYVNUSFFLcTJwdERUYzRneDRRZkhWY2p1Rmlt?=
 =?utf-8?B?cnd3TmIwditLK3JCSTkzYWM0WjE0d255dWdvK2c5aUovcUZKQmN6VEJVN1Bs?=
 =?utf-8?B?UE1SaXJCVVdIejBvU0Z2NThaUEpSZDdyRisvam5mZXVyQTBkUkM2UlNxMWRz?=
 =?utf-8?B?TVVxZFVzOUhid0NuQmxHdm4xTUx0Mmp6dHdoUlRlR2VQMyt6Y1lkaGs5aDZC?=
 =?utf-8?B?MmtVZndYOXJWTTVlaFBtd1dDTjNxVi9SN1pLNExHak0reGU1cWYyM0NnYk94?=
 =?utf-8?B?WHlrLzNabE5iUVlLVVlNcG1yOVhCbmNvcGZaQmtIbC9NU2hYMlRhRFVZdU9w?=
 =?utf-8?B?ZnMwSjNYaEc5NlVDdjEzSzBDZTYzcjBNNHJDdHAzN3pPZGxnZWxWNUhzT1Rv?=
 =?utf-8?B?bjJPR3dPTlBCZHFaR0x1MEV2THV3Zk0wNkpCM2Nmc3YrcndxNnZkRk5WMWJr?=
 =?utf-8?B?VDNmWVBuQ1NkZVJwZ05NaEowclYvOWVEYS9ONGgxYVdqc29tYmFLWkR4TmpE?=
 =?utf-8?B?ZjFWcmZCS3NjdXpPSnNCcXpKMExpdkc5MG1JZDk3T1pBTFl4ZEhXRjEybDl5?=
 =?utf-8?B?ZUxhTzMzaDFsdmxWSjJ6Q1RqVHkyQy9KVkM4TGx2KzJNWGNlNUw1Y0RDWlNj?=
 =?utf-8?B?VHVBaG1KbC9wa2NySldCNm9GOEJNQkFkV3RyeXZhcFpiNEc2WTFYNHBESGhi?=
 =?utf-8?B?TlhhUHRoRUdjZXVUaTNpc1BDSllySVcxS0JYbFRYMEFEQmhUY2h1dklKaXhj?=
 =?utf-8?B?UmtjRU9CRndLc1hlWWsvb293OXY5UldLbnorQjhNNzk1dUIza01zU1BHOFpr?=
 =?utf-8?B?NmJEUUZYWHRsTzdZajBZdC9ySUFCazhEODdoaGRHb0VtcE1hc1p0OUIvUjdv?=
 =?utf-8?B?algrMTBOYVRpRnR5cENmcGU0N2FZYTZLeXV3dktGZmlyQ1pUYnh2SzVGVDJG?=
 =?utf-8?B?enBGVnN0VE9qNUhrOTliaW9LL251UmwrODVYZnVWSHZQRjRlSm5IN1A5T1Ux?=
 =?utf-8?B?ZXVWM3lXbVNFa3hWTWl6SUZpUjZQYWVzMFlQVEJ4T1o0bzlKVm1mNmk2U0pW?=
 =?utf-8?B?d3p1RkMrR2RqVWZlYktKM1ZHMXVSTWdRSzdRN2NXWmN3aDRWU2pqMDk2Um96?=
 =?utf-8?B?UGRoelVJd3FjRUpRbFowZzd5ZlpEdW8xaThTS2xLNStaeXBFQlE4T0gxamtW?=
 =?utf-8?B?cFc2WDBUS3AvTG1wQVd3dkI5endUSENoanlUcFFOMFE0MzZ3bkNrWk53PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4842.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXRlT29QUzFvUVZ5QVA2dnNuWGFCNWRNdzhjN3pidXhoWGVTN0JKMHdKYi9n?=
 =?utf-8?B?K0cxYmFIbmVDN3RrSlVQcld0cDFQRWRQSEE1em1hSFUyTWRjbHhxaTduOFU1?=
 =?utf-8?B?cm5CVjMydlNSd1hEcTltRlBhcWFtR2ZjWUR2VGVmMjQ1d3lhWloxSk84N1Fn?=
 =?utf-8?B?MXgvc09jck1ZMjR6QWQ1UTVxQW1WWlc3MTFPVGxlQ1h5MU9MSk9sZjNuWmg3?=
 =?utf-8?B?SGp0OERUZncwSWtQak1nblVLdVgyQUNIRWc0K3NNM2o1bnlNZW95VmFUNS9y?=
 =?utf-8?B?RlNHT2hsSDB4UXNEcFhYMmRJU1Q3bjZiSjRKbjdJOXZZNG1FcHdiNkx5bTFX?=
 =?utf-8?B?SlhMWmREckpOelB3azVrK2pySUdxK2lnbm9ZZ1RHM3NHWThPL2pocitjYk92?=
 =?utf-8?B?YXE0OU5iTldOemRoTm45Wld4OGN4K21LSStTYU9Hbm9CeUxwTUtNY2Npc2dU?=
 =?utf-8?B?OGswVjVTaTJ2RFNNZzhJaHQrRGJxS3VxSDRraDBwQnhUVnRZUkM1M3R4bnlv?=
 =?utf-8?B?UGY5NFBjaG5teEI1T05JVUlDaUJUMkxpV3NIN1VlbW9BMGs4OGJJWExxdVNX?=
 =?utf-8?B?Q1MyT2tQN2JubE1KOUpnL2szQWFKVVA3cUVrOVpOMGdYajZuNGVRY2lYTmhl?=
 =?utf-8?B?VDY2bWF4anpMbWpNOWJQSngwTDdmclVxOGNwY2ZNSlNoTUZJdFJzUDh0ZGcv?=
 =?utf-8?B?ZmpTK0hSa3p5S0xlYnhKVHVaaXJWdG0vQmw2RVMvK1ZsenpFQVZ2MmY3OC9Q?=
 =?utf-8?B?RVRoODl6UUdRR2pEQkxkMUd0QlFsWE8xbzQ2azdjK2s2QkJ4d0k5YThjQUc3?=
 =?utf-8?B?OHBheVZidGNuMVBSQnRoK0I4Sk1zcWFqaVRFNTdYWVo4QUxtT3hJR0tvdXlo?=
 =?utf-8?B?eFFKWEFkUWgxeUZaKzh3RC90UDBid2ZLNzkvZXN3eTF5anMxTXpyZUlvVFhB?=
 =?utf-8?B?SHh0MEU1QjRIV2NGblhTdVltM1FCTjBPNzM3Y3V0THk0WFlWMWFnZTVveVdC?=
 =?utf-8?B?V0lGWTl6MDNvTWxlaUFpRzZFT2c5WENtRjlSUE9aTFVEV0hMYjJjK0lzV0VW?=
 =?utf-8?B?VUFDMExYMWJBcTZjUFEzL1JscDJjWHJUVmYvV2h2S01mdnYwQ0lLT1pIWnIz?=
 =?utf-8?B?QmdMT2I2elRMb1Uva3hRUXNqRVM3ZWJjQ1JWb3ZlSUY1aWJvd2NDWSsvNVZv?=
 =?utf-8?B?VjBheXBCQ1JUYThHVEthN09vNWFBQ3M2NG1iTittdjZ2dllHbHVjWmVnZGIr?=
 =?utf-8?B?YXdNbjgxczErQVJFb25KdTNWWmRuK1g4ZWlDUnE4ZXd6eUROYmJZVCs2NXEz?=
 =?utf-8?B?eE91NGdiLzJ5TzBmTzNNeWpsZDEvK3NwZ25nMENZdXdqY1VCaEV0MUtPN3Rl?=
 =?utf-8?B?Vmc1Q0NTamxqR0U2bWFWZkFYUGpHa1djc0xVS2IwT3k0MGdsdmVUT0tWRHkx?=
 =?utf-8?B?anZBc0liQmFrOVN3bXFhR0tBUGNxMkdCMjcvcVhMbGFyNGpTelZkQWk3aGs0?=
 =?utf-8?B?MG9ocEFUekRUaWRnU2NObjUrei9adWk0WnRlZjNWQkR4dTFTRVpUdzg5dSta?=
 =?utf-8?B?WVZCSW5mTTkrdS93QitseWNmaURTNmdpcSs3Tm1wSDIxenBjZW81U1pwYVhQ?=
 =?utf-8?B?OEJ6bjlKK1Y0NHc0TnNxak85azI4SFF6VFJYZlpjRTRNSlhnby9rcTBWMWo5?=
 =?utf-8?B?a0dvSDBDbVI3Zm9MSmNnVGw0by9NOGlMcVVBL1ZqQmZlQzh0L0kvazJBZlQ0?=
 =?utf-8?B?aFMvcFR6MXl3M2pzWk1rSzRGemFUMzdkQUdIbjh1ZjZueXlCQ2FKMnQ2dDMw?=
 =?utf-8?B?cFI3N3VxQWZWeTgyU1RwcTJXazVpVFF1TnBRNVlTcEN2K1QyY2tyWWpKL01T?=
 =?utf-8?B?em5SZ0tOd0dTUmNvRGk0dTFHWm84SUtIRE9xN2NWVFl0RUowalI0U0lVQU5a?=
 =?utf-8?B?R2RZWEJaLys0WkFmYmZyUW9wK2o4R2ZHWTJ4VlBJWVNFWEg0V1BMTXZNWXFv?=
 =?utf-8?B?TkV1L1RSdDlwVWxTN3c2RTlDcDVDbUdjVCtNYmJjSWp2aWZpd3oxWkhHaUc1?=
 =?utf-8?B?TUhtRUdLMzdmUnJ2bHNCcGd5dmpqS0J1aEZzM1ZWVVBXOTJMaVd2Q2dXaXRS?=
 =?utf-8?B?SmFxRkFCQW9GL3IzNzFydndKcWxDWUtrUi9xaWJwR0NNNUlGU3VlT1ZlWXlk?=
 =?utf-8?B?Q1E9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: d8f3bca8-6843-4c82-711c-08dc6e933638
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4842.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2024 12:42:53.0932
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /bAPZA2Gwg155IljkQUnK0XrM7t8sqDSynkVUS8fr4XDh5qQdVHbh/mysHxyN9MIbEdxj//dBLGrhd8sUL/XYdlnklQVrhV5jm/Ihhx1g0o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8254
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_054300_476678_D5BD98D2 
X-CRM114-Status: UNSURE (   9.21  )
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

On 5/7/24 2:22 PM, Heiko Stuebner wrote:
> When the option for legacy cell dt layouts was added, the
> Rockchip OTP driver seems to have been overlooked, so set
> the necessary option to allow seeing the cells again.
> 
> And two patches set the nvmem-type option in the device config.
> 

For the whole series:

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

Thanks!
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
