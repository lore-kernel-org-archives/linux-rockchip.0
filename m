Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 300A4C636D3
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 01:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Subject:References:Cc:To:
	From:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y+C2wV4uUjlFJzBb1gSziDnnW6qvyGLt7ccqZBz7ym8=; b=VcjCDu2PbzbR9+DT7DymPNpBIp
	+96rvMbGKKFp3L7a0kRNvg+/viWUZeId2oeK0s7lD8e8OO97uLkGmze8TTb3M12sPnlVeDMp4gM9l
	wa3AROu4jKTiaW84vjIG7w2e7tFnSFOUgnVF/k2V8E8UlPjYa+4UPqxspA/E5HzIaf1l2T12EMiKj
	Hs48jSukbFAYN1XKCRGoVDjEwkM8zCNWZp3+VM6X/itgzS+7GUo12PeK86S6xLF03n6WEgUtQIb/7
	r6kmnPvEWaGNcJ/z30Co27X54YV/CtwbmZ0yVzLeNrnZ9SC3QA4abZhO2G1WgDgvBycxJYCyx2hkV
	gFJ1FJFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNkyA-00HYiG-88; Fri, 03 Feb 2023 01:34:26 +0000
Received: from mail-vi1eur04on0618.outbound.protection.outlook.com ([2a01:111:f400:fe0e::618] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNky7-00HYhl-M0; Fri, 03 Feb 2023 01:34:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oeH5IM/Z93z+4rBte0n3fZfIYwrG74BAIz5ufPYm8fvjfuHnq743LirXEBRu1hQIu4I1IIz94eqKb8m8hQyWhEnJtTl3rNeh323Sjga1rD3gPDvLErTfZgBgX35Kddh+rt/X0vgOnVzjaU8z6CQ5ixMVrLvAF86LK4gjRTsxJwuqEclf5WKkr9owgDqx0Jfc8k5z5I57or7rM/lCDDyptHIWrRP4tL0gnhWsVsaSoV7u3Ta0lkmO+EHuzDqHFDDWRRHAW/7v0EW4xQsAkFIvCetVVJLm1c7gXG48UVAjliEsuunOZu84tk+dX3oRe8m/ebdcafWGtpsvX1Tlufh3pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a2FQ+/EaAvO5CCOR0IsobEk03Mg07AjpJsyaEweAKjs=;
 b=R7RIFz066emYr0bJ4hQOjN3kohcFzm5wLnJfmzzpIr5EFsttgMXU/xCKM2lm5upjPb1zqob1CG3tiOcdepeoatEPxhr7DgyiIXqoEmUQ+XVYSdKHPXPDNAqAwnTNVmOckWMvedaFgCszJqUuMUWmmey7cQa+iE6otgs8UaREztgykBCRDL63m+x+WM/ZARsgsEoFEUU6O+CxYU3b8KW7MbVSWvBVkVyD84tHwulKcP5pR+x8fF395DnbvtjTajaZ3vCpKqDlpbf9CdeoskEAkaDux6dy5plYvZbzgQe5V4rT+9tb2Q56qUsLutlNk+9YP7g9rd/9lvt+GKDwbQaTEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a2FQ+/EaAvO5CCOR0IsobEk03Mg07AjpJsyaEweAKjs=;
 b=myt8gC80QetMwfXfSeF0DUP63LJJEbcfuyhRpAKcL+TkSi1zY0woTXRBpClXGHzMJphaJUKVssPGlBKoFY8A66geSHVVDaPFzkj64dntg3G4IStUys3fsYU248SvRP/5IiZ9G5apbVKMHB8Ua7JpHFwLdGFWMiEj2fqqyxcFB2vsfF/ZgaonqrDtQiP8VWaCQ4J9D2cg4x3zYBnP0snxzs99janC16798dDwTxIIuzaZddER6cp93bnAJ+siX0KVVw7A6xSSgjKBTNETYG8W3gGzfkhIkwLT15Qq9kuKyV3yHsezzW2mHF6KO4ogm+QdH/h7JuUYiwGs6Jx8pLr9SQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=suse.com;
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com (2603:10a6:20b:348::19)
 by DBBPR04MB7740.eurprd04.prod.outlook.com (2603:10a6:10:1ee::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Fri, 3 Feb
 2023 01:34:19 +0000
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::5c50:6906:e9a4:5b9f]) by AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::5c50:6906:e9a4:5b9f%9]) with mapi id 15.20.6064.028; Fri, 3 Feb 2023
 01:34:19 +0000
Message-ID: <ed92063b-bb4f-f726-e4a5-16a503226957@suse.com>
Date: Fri, 3 Feb 2023 09:34:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Content-Language: en-US
From: Qu Wenruo <wqu@suse.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com
References: <20221018151407.63395-1-sebastian.reichel@collabora.com>
 <c119bd9c-0b90-4096-a988-9d0312c3dbcd@suse.com>
 <20221121182836.kwkbnonulcwfzbg4@mercury.elektranox.org>
 <f3415e9d-ae8d-201b-a9d7-07d3e9bd3bf3@suse.com>
Subject: Re: [PATCHv3 0/9] RK3588 Clock and Reset Support
In-Reply-To: <f3415e9d-ae8d-201b-a9d7-07d3e9bd3bf3@suse.com>
X-ClientProxiedBy: SJ0PR03CA0018.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::23) To AS8PR04MB8465.eurprd04.prod.outlook.com
 (2603:10a6:20b:348::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8465:EE_|DBBPR04MB7740:EE_
X-MS-Office365-Filtering-Correlation-Id: c43f5ee3-5917-4177-2563-08db0586c4bc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	xRZJ7YBuJUBSHFKGK+JSfmnfLsEoL7XDl7K2od6RlDlU3Uq/W8wNcdRXn2vsGp1CRckXRke9aVvRW2u7rnJ7AmO+Qt6YrOUWFHqjwdo0HXPbcJVIYrtLeS9Wfnn+ZQHjEC/ZphlSpjJfgVZ4i2vUq393anh6gKWsv+jinMq6jVhnjByMgI82oh8FLc75eoLIAP7BvRKIkIPkllouSzn8YNN+zZpQ+rifT4LX6EcdefAxIsstQJ58jwLzBT4b/SBDLV8IJrAPQFycyeIzOdYznQUJPqHN6gmQwKzDoK9QkpGExhx9IrwiiAG6XvJjEQF8SF9y0RmXhW1YBWZA1Am77asBDOGzRWFG+jo3Wir34QnLUiS4Qdsva/+JXTPXvx0uwl1tIPOcMRJGTkaUZQQh7UqMP6PQGgKA8ARue2eRCbhNXpseTYV0kfhtBxYRxFbfMaAkBlahKtFp2UeE2c+5YmelXnCcULUNFbyUALyWy1NgZm0w18UHn+x4gnlnMxrcEG2O25JIboO5XjRlB7ZxrFn1orBFx5N9+jj1adt+6bh4Gie8VX0ehUdBIXYvdzNYDRv0O6mSyrAQwB0MOPykLhaSbkyYqcHnHl4tF2NtADUiRnMnBnY0YIIOIVGQQ4/Fot6bECF8pp0TtmC2ClUAqVNqYYw3DD9/OIBbm41ElQO6TIOo/EqOJWv5kAdpWDVB70aAy0345MVtHOEUVCKi9va/RKXJuHh5i+NDNh5pc+P1LtAT/UML4hjkt/viDpAk4omwmJINe1slKQUlcLtnxXA+L1+iUNQrxYXZPHWb8WRSb0XjCYDnJLPE69sx168y
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8465.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(346002)(396003)(136003)(366004)(376002)(39860400002)(451199018)(36756003)(478600001)(66476007)(66556008)(83380400001)(6916009)(66946007)(4326008)(38100700002)(8676002)(54906003)(316002)(186003)(6512007)(966005)(6666004)(6486002)(6506007)(53546011)(7416002)(5660300002)(41300700001)(2616005)(86362001)(8936002)(31696002)(66899018)(31686004)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?RlFSWm9SZlUzZ1hIOHdIK2tPNTcrbjJWNWkvTXFsemdlMXZoSFNQSFNWaEpj?=
 =?utf-8?B?U0FRbnhvUUJsZjBTeURWY0dYTmRsZnlMQmJITjZBS3JyKzFSU1J5S0NQUUp4?=
 =?utf-8?B?aHk4dTBBeFV6MUVRT3VFSDhTUmJVcklES285M2pOVWE2dzJ1SHIvOHJQbVh3?=
 =?utf-8?B?UzFwZmZNSU9kaGFXQTB0ZndoUjlqWmlrV1J4ckhVaFcvdnZWdE9scnhnQXcv?=
 =?utf-8?B?QmRtUVpPRVU4YkZxb1dnaDJ2bFZBMGNmNnVMQ0NPSE9CZVU4ZVV5THVpUGE0?=
 =?utf-8?B?bFJ1dkQwSlQrN012cVdPWmR4ZXhIZHJKanFvT0F0dUc4R2xJNTA2WGRQMjVJ?=
 =?utf-8?B?cndQd09GRlVnTFFpaG10WEJZV0dsRGRoN0w0VUcrZkQ4YmxtaUhTK04zZXZI?=
 =?utf-8?B?OEpnQm8xbk1Zcm1vT2NLRTNyb3hZOUVJMXh5L2JhWDRUWTUvaDkyK2QrOHd5?=
 =?utf-8?B?YW5KeWxFd3c4LzFHc0kyUzh3U0g0alRoeDhtUm5hSExJT0wxUnhzVENLZGZ1?=
 =?utf-8?B?SGFYeWF3VmN6elppdEU0ZmJzSS9DVXhybUdkb2Y5M2QwNnFYNTZES2EvM2RQ?=
 =?utf-8?B?ZERhbUM5c1Frc1JOQU5MdUI4b1pkbWwrYnRKRGg2WitHNE5UNEFuTnNCekla?=
 =?utf-8?B?dnMrZy9pYkljbm1xeHdmaHVhR2lMNmpZMnAwa0p3aGEwOW1LOEFTemNsR0Vl?=
 =?utf-8?B?ZGlTaW5nRDdvamdCWU00aTJFa2NXczVyZEhramZrVEg5V3pJbDlJZWpRYk9S?=
 =?utf-8?B?czQzM29XbWM0L21rRzYyUnZnWnkzSkowZGtiVUFMSWRGQVl2OW1Kdis2Uytl?=
 =?utf-8?B?VXhsMzc3ZDhGdTRac3p5cXd2U014SWVVWEFOZ29BNUxlakw5QkpiMkJxODcx?=
 =?utf-8?B?ZVZJY1VaZm9NWVcxcnNESmJ2QldLYTVZdWEyZGRmSzUzZitQR0pGZWNvZjJt?=
 =?utf-8?B?Q29JVmZCZFl2UHlKZnkvZ3lWK215UnVXci81bmI1d2hrWTBVVG5VU0l6TW1x?=
 =?utf-8?B?YU1weTJBUXBLaHZlOUtpNzNENnNwRGdnZnFCeGU5aGk2T1paZXhPZGJhR0Vn?=
 =?utf-8?B?NlFvRFl4NnJKNWF6Ui9qN2NrUFh4MzhrOHJmVkdTQ29QVFpzRUZHMERtZzhn?=
 =?utf-8?B?UnM1VXE1ZFFQdFdQck5PUUtvNFo4SU56WWlOdG5UZHR5RzdudnBjZGRYV2Iz?=
 =?utf-8?B?YkREUnhkRERXcnFROXRkWVZkVlgrZVZHOGVQM2g0alcyc2R1MVNnVmJJZy9t?=
 =?utf-8?B?YWZFVVhiSDJ1RzZkQlpxZlc3RUNuVW5icDhxbVRUM0VnQVRhNVVoSHA2ZGNF?=
 =?utf-8?B?OE9Jc2gxQXhmTG1yeHh0N2M1QnZGRHBlTWZVMjM4NXI5MldaOFhIVFluNGNF?=
 =?utf-8?B?cXdMd1JkTW95cnNkZndGanNZVUUzRm9nRWlhUE84Z3VuUFl0NUdYZCtnSzIw?=
 =?utf-8?B?QjN2L1c2K2l0c05CTmZZR1ZPMjI2ODJJUjVmVVRlekFiTHdMd2RQNFk0VnZh?=
 =?utf-8?B?V2VvazY5VUdLRUIxM0dnU3dzcGt2dExyTnZvejR6bWFMS2haSlZsekp3WkVH?=
 =?utf-8?B?TzdJWURiY1R2aUd4dEZUQzl1N1cvcUcrWm80QUtPY2RVZ1hNaHJOLzVFZ3hG?=
 =?utf-8?B?MzVDWVpOTnlteFdXenAwWFpiZVFGRjkzT3l4cVo5WldONXVRVkkyUHdkNUw0?=
 =?utf-8?B?ZUR0cm5jYkQ4Nk9MNFUwRnlqWmNHR3FZSTR2YVYvVXdhNGE0TmFCNDF3cmwr?=
 =?utf-8?B?TXFScERwM0xRL1pSMzBYbzIwZk5FelNiTzcwZk56SXpmTUd3YjJTdzJudGsx?=
 =?utf-8?B?bEU3Z1dFdTRzR241cDJocC9EekhUc2pxRDZ4L0JZOE5JdFFjamQwRktJR0NC?=
 =?utf-8?B?bXJuYmpzS2o4VzVCU2luRlBaVlk3emJHRjFGS1VpMFpBTjRVR1Y0OTBTQ3Zi?=
 =?utf-8?B?d3RJOGVZeS90bGQ5T3dwS2JrSUdwSitjSzNPL0YvYllRZFBmbmYyeWY1d0Ex?=
 =?utf-8?B?eEpUY3gyZWM1eGd3VGVFR0xRMnhqOGNUM1RpVSs4K29mNnlhcEhBSzlhQWJu?=
 =?utf-8?B?V1k4Vjk3L1VmZFpOaWNsUDloaG5BOHFyN091cE0xNlcxdzhXbytIQzVNWE1w?=
 =?utf-8?B?MkQrZndUbklueUE3a0Mwb29lVDNLZ3lKOFM2bWMwYzVkTUZsY2NYYU5RVXBj?=
 =?utf-8?Q?/q7o27w9L4TopH4niffF+W4=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c43f5ee3-5917-4177-2563-08db0586c4bc
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8465.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2023 01:34:18.9509
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GO/k1V7VD0Bnym9+O01WxBvfifjLia0hjZ3hT4gcpuV9f99ewncJo04y/SCmoO/l
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7740
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_173424_001556_C877F5B6 
X-CRM114-Status: GOOD (  29.85  )
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

CgpPbiAyMDIzLzIvMiAxNDoxMCwgUXUgV2VucnVvIHdyb3RlOgo+IAo+IAo+IE9uIDIwMjIvMTEv
MjIgMDI6MjgsIFNlYmFzdGlhbiBSZWljaGVsIHdyb3RlOgo+PiBIaSBRdSwKPj4KPj4gT24gTW9u
LCBOb3YgMjEsIDIwMjIgYXQgMDQ6NTI6MjJQTSArMDgwMCwgUXUgV2VucnVvIHdyb3RlOgo+Pj4g
T24gMjAyMi8xMC8xOCAyMzoxMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4+Pj4gVGhpcyBo
YXMgYmVlbiBwYXJ0IG9mIGEgYmlnZ2VyIHBhdGNoc2V0IGFkZGluZyBiYXNpYyByazM1ODggc3Vw
cG9ydC4KPj4+PiBTaW5jZSB0aGF0IGdldHMgbW9yZSBhbmQgbW9yZSBvdXQgb2YgaGFuZCwgSSdt
IG5vdyBzZW5kaW5nIHBhdGNoZXMKPj4+PiBmb3IgZWFjaCBzdWJzeXN0ZW0gYXMgaW5kaXZpZHVh
bCBwYXRjaHNldC4KPj4+Cj4+PiBBd2Vzb21lIHdvcmshIFRoYW5rcyBmb3IgdGhlIHdvcmsgdG8g
YnJpbmcgdXBzdHJlYW0gc3VwcG9ydCBmb3IgUkszNTg4Lgo+Pj4KPj4+IFRoaXMgdXBzdHJlYW0g
d29yayBpcyBlc3BlY2lhbGx5IGltcG9ydGFudCBzaW5jZSB0aGUgdmVuZG9yIGtlcm5lbCAKPj4+
IGhhcyBzbwo+Pj4gbWFueSB3ZWlyZCB0aGluZ3MgYW5kIGlzIG5ldmVyIHByb3Blcmx5IHRlc3Rl
ZCB1c2luZyBuZXdlciB0b29sIGNoYWlucy4KPj4+Cj4+PiBCdXQgY29uc2lkZXJpbmcgdGhlIHN1
cHBvcnQgaGFzIGJlZW4gc3BsaXQgaW50byBkaWZmZXJlbnQgcGF0Y2hzZXQsIAo+Pj4gaXMgdGhl
cmUKPj4+IGEgZ2l0IHJlcG8gdGhhdCBJIGNhbiBmZXRjaCBhbGwgdGhlIHBhdGNoZXMgYW5kIHRl
c3QgaXQgb24gbXkgUm9jazVCIAo+Pj4gYm9hcmQ/Cj4+Cj4+IHRyeSBsaW51eC1uZXh0ICsgCj4+
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIyMTEyMTE3NTgxNC42ODkyNy0xLXNlYmFz
dGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20vCj4+Cj4+IEl0IHNob3VsZCBib290LCBidXQgdGhh
dCdzIGFib3V0IGl0LiBGb3IgUm9jayA1QiB0aGVyZSBpcyBub3QgZXZlbgo+PiBldGhlcm5ldCBz
dXBwb3J0LCBzaW5jZSB0aGF0IG5lZWRzIFBDSWUuIElkZWFsbHkgdGhlIERUIHNlcmllcyBtYWtl
cwo+PiBpdCBpbiB0aW1lIGZvciB0aGUgNi4yIG1lcmdlIHdpbmRvdy4KPj4KPj4gQWx0ZXJuYXRp
dmVseSBteSB3b3JraW5nIGJyYW5jaCAoSSByZWJhc2UgdGhhdCEpIGlzIGF2YWlsYWJsZSBoZXJl
Ogo+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zcmUv
bGludXgtbWlzYy5naXQvbG9nLz9oPXJrMzU4OAo+PiBJdCBhZGRzIFBNSUMsIHRoZXJtYWwgYW5k
IGNwdWZyZXF1ZW5jeSBzdXBwb3J0Lgo+IAo+IFNvcnJ5IGZvciB0aGUgbGF0ZSByZXBseSwgZmlu
YWxseSBnb3QgbXkgZXh0cmEgcm9jazViIHRvIGRvIGV4cGVyaW1lbnRzLgo+IChUaGUgZXhpc3Rp
bmcgb25lIGlzIG5vdyBhIFZNIGhvc3QgZm9yIDI0eDcgZnN0ZXN0cyBydW5zKQo+IAo+IFtURVNU
IFJFUE9SVF0KPiBZZXMsIEkgZ290IHRoZSBleHBlY3RlZC10by13b3JrIHBhcnRzIHdvcmtpbmc6
Cj4gCj4gLSB0dHlTMiAoc2VyaWFsQGZlYjUwMDAwKQo+ICDCoCBCb3RoIGVhcmx5Y29uIGFuZCBs
YXRlciBpbml0aWFsaXplZCBjb25zb2xlLgo+IAo+IC0gZU1NQyAobW1jQGZlMmUwMDAwKQo+ICDC
oCBUaGUgcm9vdGZzIHJlYWQgd3JpdGUgc2VlbXMgZmluZS4KPiAKPiAgwqAgVGhlIGxhdGVzdCBj
b2RlIHNlZW1zIHRvIGhhdmUgc2RtbWMsIGJ1dCBpcm9uaWNhbGx5IEkgZG9uJ3QgaGF2ZQo+ICDC
oCBhbnkgc2RjYXJkIGF0IGhhbmQgcmlnaHQgbm93Li4uCj4gCj4gW1BDSUUgRU5BQkxFTUVOVF0K
PiBQZXJzb25hbGx5IHNwZWFraW5nLCBJIGNhbiBub3QgY2FyZSBsZXNzIGFib3V0IHRoaW5ncyBs
aWtlIEdNQUMgKFJvY2s1QiAKPiB1c2VzIHI4MTI1KSwgbm9yIFVTQiAoUENJRSBydWxlcyB0aGVt
IGFsbCkgbm9yIGdyYXBoaWNzIChzZXJpYWwgaXMgZ29vZCAKPiBuZW91Z2gpLgo+IAo+IFRodXMg
SSdtIHRyeWluZyB0byBzZWUgaWYgSSBjYW4gcmUtdXNlIHRoZSByazM1NjggcGNpZSBkcml2ZXJz
LgoKSXQgbG9va3MgbGlrZSB0aGUgY3VycmVudCBjb2RlIChpbiB0aGUgcmVwbykgc3RpbGwgbGFj
a3MgdGhlIGR0LWJpbmRpbmdzIApmb3IgdGhlIHJlc2V0cy4gTGlrZSBTUlNUX1BDSUUqX1BPV0VS
X1VQIGFuZCBTUlNUX1BfUENJRSouCgpPdGhlcndpc2UgYSBxdWljayBnbGFuY2UgaW50byB0aGUg
dmVuZG9yIGRyaXZlciBkb2Vzbid0IHNob3cgbXVjaCAKZGlmZmVyZW5jZSBpbiB0aGUgMzU2OCBh
bmQgMzU4OCBwY2llIGRyaXZlci4KKEV4Y2VwdCB0aGUgZXh0cmEgYmlmdXJjYXRpb24gcGFydCwg
d2hpY2ggaXMgbm90IHV0aWxpemVkIGJ5IGFueSBSSzM1ODggCmJvYXJkcyB5ZXQpCgpUaGFua3Ms
ClF1Cgo+IAo+IEl0IGxvb2tzIGxpa2UgdW5saWtlIFJLMzM5OSwgdGhpcyB0aW1lIHdlIG5lZWQg
UEhZIGZvciBQQ0lFLCBhbmQgaXQgaXMgCj4gYWxyZWFkeSBkb25lIGluIHJrMzU2OCBwY2llIGNv
bnRyb2xsZXIsIGFuZCB0aGUgY29yZSBBSVgtPlBDSUUgaXMgZG9uZSAKPiBieSB0aGUgZGVzaWdu
d2FyZSBjb3JlLCB0aHVzIGl0IGxvb2tzIGZlYXNpYmxlIHRvIHJldXNlIHRoZSBkcml2ZXI/Cj4g
Cj4gQnV0IEkgY2FuIGJlIHRvdGFsbHkgd3JvbmcsIHNpbmNlIEknbSByZWFsbHkganVzdCBhIG5l
d2JpZSBpbiBhcm0gd29ybGQuCj4gCj4gQW55IGhpbnQgb24gdGhlIFBDSUUgYnVzIGJyaW5ndXA/
IE9yIHdoYXQgSSBjYW4gaGVscCBmb3IgdGhlIFBDSUUgYnJpbmd1cD8KPiAKPiBJIGtub3cgUksz
NTg4UyBzZWVtcyB0byBjdXQgdGhlIFBDSUUzIGxhbmVzIGNvbXBsZXRlbHksIGFuZCBkcm9wZWQg
b25lIAo+IFBDSUUyLjAgbGFuZSwgYnV0IEkgZG9uJ3Qga25vdyB0aGUgYWRkcmVzcyBmb3IgdGhl
IGN1dCBvbmUuLi4KPiAKPiBbVkVORE9SIEtFUk5FTCBQQ0lFIEJVR10KPiBBbm90aGVyIHRoaW5n
IEkgbm90aWNlZCB3aXRoIHZlbmRvciAoNS4xMC54KSBrZXJuZWwgaXMsIHRoZSBQQ0lFIGxpbmsg
dXAgCj4gaXMgdW5yZWxpYWJsZSwgY2F1c2luZyByYW5kb20gcmVzZXQuCj4gTWF5YmUgdGhlIGlu
Y29taW5nIHVwc3RyZWFtIGJyaW5nIHVwIGNhbiBmaXggaXQ/Cj4gCj4gVGhhbmtzLAo+IFF1Cj4g
Cj4+Cj4+IC0tIFNlYmFzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
