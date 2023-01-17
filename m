Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6A3EC6379F
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 16:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CzRAzCnhdruzMv90aPW+XhhHMCF6RGAtwmIX6LEWCfA=; b=fy3VvxEmHZeTlQbnvnuOT/4Tgt
	XfyLJY+fRuyYuXkfKhhp96cLgS7SpV/+AO65xFP0nN15OBkmZ4jsd8n5JdFm+W7xYzYzGz66ip4X/
	zQSHJMzKJ2ENLJf+p8ZkAQjUoX3C1Zet3z8mjs+rg/9RqLooRKStuJMSJ9y/IN1CudnDLHUyRkhwc
	89GYx2jC+YmIIQVG/Vbnz9JpgzMfABN0za7QsZ7Y2FRXhzF+R29sVHpivpE+nUZ5SwZmaRN0OCmxO
	7JEysWN+OqCMxVRBVBJCFt8jMUMBLksfot+qJGdE1h4E6UhKEVNORGptPob8czdhsv8GHesX++7us
	0x7HKvKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHofj-00F5Kp-0L; Tue, 17 Jan 2023 16:18:51 +0000
Received: from mail-ve1eur01on2045.outbound.protection.outlook.com ([40.107.14.45] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHoff-00F5Jw-M4
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 16:18:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AVz2XnTh8HXQf13kS5O6bYdsFnt6i4L9wTHW1L5K4JYhazdRqTgo2cJg+DgsAxobJnHwwdvN3tVHgkoRNoibbUOPPOTDY2uV1HoodKseD3VoU0sEWfqlFQoZgWZSKgbzGjFSkzvDA0yC1G5dTyjN/LR1p4q4IG2ZxQJr1lBA7jiftvAomuDsO6AVtNJSlZQILVlGDy9op2jl+2LEFxCLxv/gFrnguQvTFHTBXPYiXVeWFzUNFeTEDy9j6yWMhhrBWk+BQusrRY+Xbs03LRGACtBGOTdBb+vYrW0E3y6Q/RiVUI0Vnao3M+MIom6fquslKAejDlRl5OYu92Q2BB22uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NL4bHLi3b4ih2DqQYiRKLuUHoqusYwOdFA8y0l+9e2c=;
 b=JcxNXCME3wWwgMLIPJKzZNDWzIGZROxBCdNR+ia3mE2WiVdcYB+xNQ72dH8RKNR3kAbANu33UNlZe99S07gUNBCFll7L/8K1V3GJXwOKHEYnuAipnAI9sKxP1RUBOGMq/xR8ilqC7RWyvHRjQn7dbvs1Oq2NFEhj0Fe17e0bAXMzQV/UTpTtdlq7/JgSQ0q5fXJJutBaFsnZZEGtGyqLCA+SrZiPnkNPgNhaYz50Jyl0/RsZ8fw3reZ8AJHGO5hZ9Fanl+Bwn348Oc/f60nIbZ6vdt7GaYs0WUewW5LavwE6VI2jM9Kne3M8vOgcHM8fy4GAb+SXHgQinh+m1zhOaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NL4bHLi3b4ih2DqQYiRKLuUHoqusYwOdFA8y0l+9e2c=;
 b=i+okuzNvJ2q9YoUP3zjR8ZfJs+eZWP9gnUf91MC0E/MUwwTbUR4zFOcg5RdMKYLtKdHQY7FUpF4uLnXqpZagcUmPUTgJobrskPUyjHEa9ZXpWZSfMV3O/dCyBHpWn3yyBepIYFvlRLldO64IvhTQLZzhiP5C/e69g/W1Ub36X/jZJJcCt6dy4wDO0vkQgFE+GQflXrfdKMbveen0ZTPLSdc59LiJMmeOOyfK74At5l3tLwgjJPrBz+QPYvxEzaa9VphYHAwoQsLZtdp2gusYFf9oXAHHR3tSxn3BNvtaGSawHm7jVyzW4xeWG+tozrRx4kcUqbX0iJV1dTgXJ7S5dw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS8PR04MB8101.eurprd04.prod.outlook.com (2603:10a6:20b:3f6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Tue, 17 Jan
 2023 16:18:43 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd%4]) with mapi id 15.20.5986.023; Tue, 17 Jan 2023
 16:18:43 +0000
Message-ID: <6ec4427e-f56f-7545-2296-bc75d74f4364@theobroma-systems.com>
Date: Tue, 17 Jan 2023 17:18:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v1] arm: dts: rockchip: sync rk3066/rk3188 DT files from
 linux-next v6.2-rc4
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>, kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, u-boot@lists.denx.de,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>
References: <48680512-0312-6342-ba0a-f2411463099a@gmail.com>
 <31883268-dedf-6e3c-8647-0b7955c1ff16@theobroma-systems.com>
 <a5943bfb-8d7b-6ed4-bbb4-0f018b921564@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <a5943bfb-8d7b-6ed4-bbb4-0f018b921564@gmail.com>
X-ClientProxiedBy: FR2P281CA0058.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::9) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS8PR04MB8101:EE_
X-MS-Office365-Filtering-Correlation-Id: 58ecdf1b-0c69-4e7e-d9d0-08daf8a680ba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	Jxr+7H9dJtJs4ReAvUQ6TLr2ZA7GFEQjLZYHO/R+g0hfKtWdzdnepc4HCIH4Ef1DhDCSv3bcOz3sSkV58dDAecl4+ezxDl58/ruRvrm5PojcPCtU2NTtXJTvJ2rRPzMKJdilhtrodO8fXPbenKcP0YCmXKVP05ExJIBJjwZiDlEjO47VBa8u7IELTdhpGpTdOvXfAUfF9Bo6IQPkoTTpuwbX+r0AcwELODd3rQ/m9kxUZn08MS9D6qDmc6bQ4MXk9GN3rniPwy05e2e7JNM7RvK65dIfB9FgHnQ3S8ZRkJPkSVL6Dk14BW3pcRtYhFRlRNABO492r99jYtD0Ie4jBPMhLwUlA4SfI+U5Fn8MibgiYYHEwtcluT4sTGgRR1UAnapqr6rUF0c5Px978MHdw3ujSbuHj+kK8qw5ESS2bG3hBpThnwMmPwptQ1S1qJoP3DlLyfn+NIyR8xHiqcrTD8e2DDcGL6PmyNqKeZsggHLjuHLQzDlGHErV0iRJXDAIYZQpl37EfTWsC5MJYgyuMFl1sft2m3FcsJiTPqfihq8/Wi2T/c5x7hZYuOHyQgAZIdrS2odToXVmjUK30n+lDb0TId/qEb9w+yVBVGMgF/iWiW48k++c93YCRHpwqhA/Rtkir96wb3zpG4PAdDFMXFxAFheCouw7vyfPVCvnKBgfjb+xGVlpFXcdsNtoxtZipxJfnjvD6nYR9sDdrrO1sO0kOiEaqu0saJfdLkz9PbaNtWuG2eRa2srinDW+KKiO
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(136003)(346002)(366004)(39850400004)(376002)(451199015)(6506007)(36756003)(2906002)(53546011)(4326008)(5660300002)(8676002)(83380400001)(8936002)(31686004)(44832011)(26005)(38100700002)(6512007)(6486002)(41300700001)(966005)(478600001)(66556008)(66476007)(66946007)(31696002)(86362001)(186003)(2616005)(316002)(54906003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?aHJkM3N3dDhndmhjU2h5OHpmR0FQM2hwbnVxbk9ndkVYeHE2UEU1SmNqKzNs?=
 =?utf-8?B?NzkxbVptWHdSSUJKMmZtQnh3akRFei9RNHdSU3FpcllpMGx1Ty8vRFl4Qm5O?=
 =?utf-8?B?MVR3cEFWNzB5VjFjdklpd21GVnNqMVlHN0JDYzIwMlNZY2g1Vkx2SVc0Y2tM?=
 =?utf-8?B?QmhGYkhudXR1WStzaHhPc0t3d2lOL3UwYVdwRUFlT0VFNHpucWtmc29ycFF4?=
 =?utf-8?B?S244UC9Qa3pTQURzNnZGR1RQR3FFODB3Q3YvdVJOMTdPd2l0Ry9rRC9PeE5L?=
 =?utf-8?B?aU9veWRPRnlSNEtjcVJsNG5RMFg5eklQYndYaU8yaDFvU29hckFSeWVPUytq?=
 =?utf-8?B?WVBVU25WU1VoZS9RdllRUlQ5MTVhaWJGN1QwR3VGdktKWUExQzk0M090Z2l3?=
 =?utf-8?B?bEZ1aVJkMVJaTEVUamVMS3R1a3pQU09iSHJYUTc3Wmw0cjlMcVlPempEUHVZ?=
 =?utf-8?B?N210L0oybk5zUzM1S25ncHRUa01POEljNzB2dkxLb2VvaG40NXQ3OE1STEZq?=
 =?utf-8?B?UWpSdDREbytxVUFLckdkbWoxbXRNK1o3Vk56MjNEbWpPTzk4QnFrNVNHelI2?=
 =?utf-8?B?Zk9GakZEcmdialZaTlBnSXY4RWxXWUNFWEhNblpGQll2UjBJYXZLdlo3Ylho?=
 =?utf-8?B?L2k2Ym5pQVRYQ0p3UERNS2NCbTM2bmJHbmdKb1djOElxNkxlVXd1dS91a1Js?=
 =?utf-8?B?UmVyUmc0VmJPYlNFNWhoa3B3d0tLZSt4TjNuUGVreVpBTkdEeXRNRlBVOU9K?=
 =?utf-8?B?TEpMajZvUm93cFdrNFpxOVh6ck5jam83ZnM2dC9GNVZlUnF0UTluRWV5RWJh?=
 =?utf-8?B?UHozTlVEdHN3RkFFOFV4dTJ2b2JIU0JLMjV0RGg0VFJPYjhocWRvTlc5eElT?=
 =?utf-8?B?WS80N214Tk1OU3VkWWN5STB2dWJ2SkpsN3ErcWU5ZEdiR0JaS0xmeEttVXBw?=
 =?utf-8?B?cXR0bURyaDNlT2JvMEcwdHJnc2tydXF3bXJ2TWNIdkNHbThJRXp2bWpBVGMr?=
 =?utf-8?B?OUxrN0JBS1lQbkI1dkY0Q3VDSmU5L1JBRlR6dmtwWnFJMkk5eks3YUFqV2Nu?=
 =?utf-8?B?RE4vdDhsdVdKUjF2RFN3dDRmNWpYdXhZVU1CTjVnaE12MkhLZVc2aXpFSDR5?=
 =?utf-8?B?RTY3TjF4eWtJRUdXRmtqdWJKQ2lrUmF5amJVSE9CR0hQUDQvOTB2Qmo1SmR4?=
 =?utf-8?B?T2pwTTBETjA2dGlySGtpemxETFZUSTM0QmJaaTFBczlrcmVlNDcvRm52UHhk?=
 =?utf-8?B?TkZrMWtLamRydVVPNVJnS3Y5Vk9DSW14WVZ6WnlieStaK0YyZzlnSHppU0Z3?=
 =?utf-8?B?eEVGdjVPWlBhVTJtc3IwREVhNGd2QnE4U2xCdDVkWG5kYWh1RVFVaFhLcnhZ?=
 =?utf-8?B?bm95UEQvck4xNlBqZzhQQ0d1Q0RjQzg2ZDRjd0RCTFNRcWI3c2dNL0c3eTR6?=
 =?utf-8?B?ak13dHlWYjFQMEJlZi9yc2JkWVBpQTRhTjMxdTd5WWdoQmhDTUVGSnBNcjAv?=
 =?utf-8?B?VjY1UE5xM1BVdTVGVWFWQzl2QUtWR3BHaW1zUldaM09yWmhielVuTDFHaUFP?=
 =?utf-8?B?QmZUMTdNQUJuQ1dNSHpKUmhVS0FCM2RiRmlWSDJJR2xKVDh6MDNyRjJrOVUw?=
 =?utf-8?B?alVmZ0h2cFQreVNZRXRkdTNIblB0aVVrWTFZR1dkTEpaQkZSd1cvcGQyamJL?=
 =?utf-8?B?azhLellGMVRsWlQzRkVmd0x5dWxJUENxWnBndzVBOHR3SUg2aW1TVlN6a3Bt?=
 =?utf-8?B?MHRwQU5nOEtBNGpvTTIxUXlWRGhWMTFlbGIvTHBlVXpXTGprQi9iTWFSRjRV?=
 =?utf-8?B?bzdDdnczcWd2VmJOckFoRVNwTTJkN2RmT1hmMFF6c0J4TTNhU1pISWxpZXpN?=
 =?utf-8?B?dWVLRjBzdHJSN1RubklCbnMzSEhOc1J1ZUJVWE8xTXNBUjZjeFpIRFJHbnYw?=
 =?utf-8?B?SCtBK1k2OVBJMVFLSU9UeWJKTXdNc0VlVzVUTHNiZUpMZzNpWjB4Mkp0TTdH?=
 =?utf-8?B?bTN0N2xzZW94RG45YStoRnYrUHpCeElkTWhGVy9VcUpVemxGcXNqOUNDbi9o?=
 =?utf-8?B?MHlHRldXR3htMUVpbWJxb3RXTTB1NVFvNzd3NEIxb2ZiRzF3UXNxT3dFNzV5?=
 =?utf-8?B?MWZrdjIzalJ4dWhIak1QM2lDN2FWVDBkTXNBVnoxckcvd2dieVZNYnRKRlVC?=
 =?utf-8?Q?XORDGAR90WZhUbL5B6GhuSo=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58ecdf1b-0c69-4e7e-d9d0-08daf8a680ba
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 16:18:43.5897
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OygF58YGsnPXzvMd8y03Nk4NVNjjrisnYdhQa67Tb5r500ztUePZe5e2bM8Z59+ys1yySwbaKL4oGhBqyiq2xRl/g4audhlWN2lg4opx/DCT/PdNEF8SB3kHDvDrStKP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_081847_747609_A80DAEBB 
X-CRM114-Status: GOOD (  39.08  )
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

SGkgSm9oYW4sCgpPbiAxLzE3LzIzIDE1OjQ0LCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4gCj4gCj4g
T24gMS8xNy8yMyAxMDo0NiwgUXVlbnRpbiBTY2h1bHogd3JvdGU6Cj4+IEhpIEpvaGFuLAo+Pgo+
PiBPbiAxLzE2LzIzIDIwOjQ1LCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4+PiBTeW5jIHJrMzA2Ni9y
azMxODggRFQgZmlsZXMgZnJvbSBMaW51eC4KPj4+IFRoaXMgaXMgdGhlIHN0YXRlIGFzIG9mIGxp
bnV4LW5leHQgdjYuMi1yYzQuCj4+PiBOZXcgbmZjIG5vZGUgZm9yIE1LODA4IHJrMzA2NmEuCj4+
PiBDUlUgbm9kZXMgbm93IGhhdmUgYSBjbG9jayBwcm9wZXJ0eS4KPj4+IFRvIHByZWZlbmQgZHRv
YyBlcnJvcnMgYSBmaXhlZCBjbG9jayBtdXN0IGFsc28gYmUKPj4+IGluY2x1ZGVkIGZvciB0cGwv
c3BsIGluIHRoZSByazN4eHgtdS1ib290LmR0c2kgZmlsZS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5
OiBKb2hhbiBKb25rZXIgPGpieDYyNDRAZ21haWwuY29tPgo+Pj4gLS0tCj4gCj4gWy4uXQo+IAo+
Pj4gQEAgLTIyMyw3ICsyMjQsNyBAQAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxs
cyA9IDwxPjsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgcmFuZ2VzOwo+Pj4KPj4+IC3CoMKgwqDC
oMKgwqDCoCBncGlvMDogZ3BpbzBAMjAwMGEwMDAgewo+Pj4gK8KgwqDCoMKgwqDCoMKgIGdwaW8w
OiBncGlvQDIwMDBhMDAwIHsKPj4+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRp
YmxlID0gInJvY2tjaGlwLHJrMzE4OC1ncGlvLWJhbmswIjsKPj4+ICDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZWcgPSA8MHgyMDAwYTAwMCAweDEwMD47Cj4+PiAgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgaW50ZXJydXB0cyA9IDxHSUNfU1BJIDU0IElSUV9UWVBFX0xFVkVMX0hJR0g+
Owo+Pj4gQEAgLTIzNiw3ICsyMzcsNyBAQAo+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICNpbnRlcnJ1cHQtY2VsbHMgPSA8Mj47Cj4+PiAgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+Pgo+
Pj4gLcKgwqDCoMKgwqDCoMKgIGdwaW8xOiBncGlvMUAyMDAzYzAwMCB7Cj4gCj4+PiArwqDCoMKg
wqDCoMKgwqAgZ3BpbzE6IGdwaW9AMjAwM2MwMDAgewo+IAo+IEhpLAo+IAo+IExPTDogSSBtYWRl
IHRoYXQgYmluZGluZyBjaGFuZ2Ugb24gcmVxdWVzdCBmcm9tIExpbnV4IERUIG1haW50YWluZXJz
Lgo+IE5vZGUgbmFtZXMgc2hvdWxkIGdlbmVyaWMuCj4gCgpZdXAgSSBrbm93LiBJIHRyaWVkIHRv
IHVzZSBhIDUuMTkgRFRTIG9uIGEgNS4xMCBrZXJuZWwgd2hpbGUgZGVidWdnaW5nIApzb21lIHN0
dWZmIGFuZCB3YXMgcXVpdGUgc3VycHJpc2VkIHRvIG5vdCBldmVuIGJlIGFibGUgdG8gcmVhY2gg
dXNlcnNwYWNlLgoKPiA9PT0KPiAKPiBNeSBmdWxsIHUtYm9vdCBpcyBhYmxlIHRvIGJvb3QgYSBM
aW51eCBrZXJuZWwgZm9yIHJrMzA2NmEuCj4gT25seSB3aGVuIEkgZ2l2ZSB0aGUgY29tbWFuZCBi
ZWxvdyBpdCBjcmFzaGVzOgo+IAo+IGdwaW8gc3RhdHVzIC1hCj4gCj4gQ291bGQgeW91IGNvbmZp
cm0gd2hhdCBvdGhlciBwYXJ0cyBhcmUgZWZmZWN0ZWQ/Cj4gCgpXZWxsLi4uIEFueXRoaW5nIHVz
aW5nIEdQSU9zIEkgYmVsaWV2ZT8gU28gRGV2aWNlcyB3aXRoIGEgcGhhbmRsZSB0byBhIApncGlv
IGZyb20gYW4gU29DIEdQSU8gY29udHJvbGxlciwgb3Igc29tZSBwbGF0Zm9ybSBjb2RlIGdldHRp
bmcgYSBHUElPIAp1ZGV2aWNlIHRvIGludGVyYWN0IHdpdGggc29tZSBHUElPLiBQaW5jdHJsIHNo
b3VsZG4ndCBiZSBhZmZlY3RlZCAKQUZBSUNULCBzbyB0aGF0IG1pZ2h0IGJlIHRoZSByZWFzb24g
d2h5IG1vc3QgdGhpbmdzIHNlZW1zIHRvIGhhdmUgd29ya2VkIApmaW5lIGZvciB5b3U/Cgo+IElm
IGl0J3MgYm9vdHMgdGhlbiBpdCdzIGdvb2QgZW5vdWdoIGZvciBtZSBhbmQgbW92ZSBmb3J3YXJk
LCBzbyBwbGVhc2UgbWVyZ2UuKEtldmVyKQo+IAoKU2luY2UgdGhlcmUncyBvbmx5IG9uZSBib2Fy
ZCB1c2luZyBpdCwgSSBndWVzcyB0aGF0J3MgeW91ci9LZXZlcic7cyAKY2FsbCwgYnV0IHRoYXQn
cyBub3QgdGhlIGNhc2UgZm9yIFBYMzAvUkszMzk5IGZvciBleGFtcGxlLi4uIHdoZXJlIHdlJ2xs
IApuZWVkIGEgc2ltaWxhciBjaGFuZ2UgKHRob3VnaCB5ZXMsIG15IFBYMzAgYm9hcmQgYWxzbyBi
b290cyBmaW5lIHdpdGhvdXQgCmFuZCBjdXJyZW50bHkgaGFzIHRoaXMgbmV3IERUU0ksIHNvIGJy
b2tlbiBHUElPIGRyaXZlcikuCgo+IERyaXZlciBmaXhlcyBmb3IgdS1ib290IGRlcGVuZGluZyBv
biBMaW51eCBEVCBjaGFuZ2VzIGlzIGFscmVhZHkgdmVyeSB0aW1lIGNvbnN1bWluZyBlbm91Z2gh
Cj4gCj4gPT09Cj4gCj4gVXNpbmcgRFQgcGF0aCBvciBub2RlIG5hbWUgaXMgd3JvbmcuCj4gCj4g
Q29tbWVudCBieSByb2JoK2R0Ogo+IC9zeXMvYnVzL3BsYXRmb3JtL2RldmljZXMvIHBhdGhzIGFy
ZSBub3QgYW4gQUJJLiBJJ2xsIGNvbnNpZGVyCj4gbm9kZW5hbWVzIGFuIEFCSSBpZiBhIGNoYW5n
ZSBpcyBub3RpY2VkLCBidXQgbm90IGZvciBzeXNmcyBwYXRoLgo+IAo+IGh0dHBzOi8vdXJsZGVm
ZW5zZS5jb20vdjMvX19odHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC9DQUxf
SnNxSkd4X013WDl5bk1pQ1VtX3hQM3Q2eFdicnRpVWktRioyY2VYcVoyU3U1dEFAbWFpbC5nbWFp
bC5jb20vX187S3chIU9PUEpQOTFaWnchaUFfaHJReVF5NEttZFN3ZTQ2c3BtaEJxc0dRUlJHNFhf
MzlrcDktSnRDQ2h4d01VZEcyMklDVm1LTFpIYUlvZ3F6VFJ6Q1p1SEpfcloxaHc1dXJPanViUzl4
SnJSZyQKPiAKClllYWggd2VsbC4uLiBXZSB3ZXJlbid0IHVzaW5nIHRoZSBzeXNmcyBwYXRoIGJ1
dCBzdGlsbCBoYXZlIGFuIGlzc3VlIDopCgo+IE1ha2UgdXNlIG9mIHRoZSBwcm9wZXJ0aWVzIGFu
ZCBhIGNvbXBhdGlibGUgaW4gYSBub2RlIGluc3RlYWQuCj4gCgpUaGF0IHdlIGNhbiBhZ3JlZSBv
bi4KCj4gPT09Cj4gQSBsaXR0bGUgdGVzdC4KPiBGcm9tOiByb2NrY2hpcF9ncGlvX3Byb2JlKCk6
Cj4gCj4gaW50IG1haW4oKSB7Cj4gCS8vY2hhciBkZXZfbmFtZVtdID0gImdwaW8xQDIwMDNjMDAw
IjsKPiAJY2hhciBkZXZfbmFtZVtdID0gImdwaW9AMjAwM2MwMDAiOwo+IAljaGFyIHByaXZfbmFt
ZVsyXTsKPiAJaW50IHByaXZfYmFuazsKPiAJY2hhciAqZW5kOwo+IAo+IAllbmQgPSBzdHJyY2hy
KGRldl9uYW1lLCAnQCcpOwo+IAlwcml2X2JhbmsgPSB0cmFpbGluZ19zdHJ0b2xuKGRldl9uYW1l
LCBlbmQpOwo+IAo+IAlwcml2X25hbWVbMF0gPSAnQScgKyBwcml2X2Jhbms7Cj4gCXByaXZfbmFt
ZVsxXSA9IDA7Cj4gCj4gCXByaW50ZigicHJpdl9iYW5rOiAlZFxuIiwgcHJpdl9iYW5rKTsKPiAJ
cHJpbnRmKCJwcml2X25hbWU6ICVzXG4iLCBwcml2X25hbWUpOwo+IAlyZXR1cm4gMDsKPiB9Cj4g
Cj4gLy8gcHJpdl9iYW5rOiAxCj4gLy8gcHJpdl9uYW1lOiBCCj4gCj4gQSBjaGFuZ2Ugb2Ygbm9k
ZSBuYW1lIGdpdmVzOgo+IAo+IC8vIHByaXZfYmFuazogLTEKPiAvLyBwcml2X25hbWU6IEAKPiAK
PiA9PT0KPiAKPiBMaW51eCBkcml2ZXIgZ3Bpby1yb2NrY2hpcC5jIGhhcyBhbiBhbGlhcyBvciBl
bHNlIGFuIGluY3JlbWVudCBpZC4KPiAKPiBpZCA9IG9mX2FsaWFzX2dldF9pZChucCwgImdwaW8i
KTsKPiAJaWYgKGlkIDwgMCkKPiAJCWlkID0gZ3BpbysrOwo+IAo+IFByb2JsZW06Cj4gUHJvYmUg
b3JkZXIgaXMgbm90IGd1YXJhbnRpZWQuCj4gQWxpYXNlcyBzaG91bGQgZ28gdG8gYm9hcmQgZmls
ZXMgYW5kIG5vdCBpbiBkdHNpIGZpbGVzIGFueW1vcmUuCj4gCgpBbmQgYWxzbywgbm90aGluZyBm
b3JiaWRzIGFueSBib2FyZCB1c2VyIHRvIGhhdmUgZ3BpbzI9IDwmZ3BpbzA+IGluIAp0aGVpciBh
bGlhc2VzLiBXZSBzaG91bGRuJ3QgcmVseSBvbiBhbGlhc2VzIGZvciBhbnl0aGluZyBlbHNlIHRo
YW4gaG93IAppdDtzIGV4cG9zZWQgdG8gdXNlcnNwYWNlIEkgYmVsaWV2ZS4gSGVyZSBpdCdzIGEg
bWlzdGFrZSBhbnl3YXlzLgoKPiA9PT0KPiAKPiBUaGUgY3VycmVudCBjb21wYXRpYmxlIHN0cmlu
ZyBpcyBnZW5lcmljLCBidXQgdGhlc2Ugc3RyaW5ncyBzaG91bGQgbm9ybWFsbHkgYmUgU29DIG9y
aWVudGF0ZWQuCj4gCj4gUHJvcG9zYWw6Cj4gCj4gcmVwbGFjZToKPiBjb21wYXRpYmxlID0gInJv
Y2tjaGlwLGdwaW8tYmFuayI7Cj4gCj4gYnk6Cj4gY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMx
ODgtZ3Bpby1iYW5rIjsKPiAKPiBXaXRoIHRoYXQga25vd24gd2UgY2FuIGxvb2t1cCB0aGUgcmVn
IGFkZHJlc3MgaW4gYSBsb29rdXAgdGFibGUgYW5kIGl0J3MgbmFtZSBmb3IgdS1ib290Lgo+IAo+
IHN0cnVjdCBsb29rdXBfdGFibGUgcmtfZ3Bpb19yazMxODhfZGF0YVtdID0gewo+IAl7MHgyMDAw
YTAwMCwgIkEifSwKPiAJezB4MjAwM2MwMDAsICJCIn0sCj4gCXsweDIwMDNlMDAwLCAiQyJ9LAo+
IAl7MHgyMDA4MDAwMCwgIkQifSwKPiB9Owo+IAo+IAo+IAl7IC5jb21wYXRpYmxlID0gInJvY2tj
aGlwLHJrMzE4OC1ncGlvLWJhbmsiLCAuZGF0YSA9ICZya19ncGlvX3JrMzE4OF9kYXRhIH0sCj4g
CgpZZXMsIHRoYXQncyBhbiBvcHRpb24gdG9vLgoKPiA9PT0KPiAKPiBJZiBuZWVkZWQgSSBjYW4g
aGVscCB3aXRoIGNoYW5nZXMgdG8gcm9ja2NoaXAsZ3Bpby1iYW5rLnlhbWwKPiAKPiBMZXQgbWUg
a25vdyBpZiBpdCdzIHVzZWZ1bCBvciB0aGF0IHlvdSBoYXZlIGFuIG90aGVyIHNvbHV0aW9uIGFz
IGxvbmcgYXMgd2UgZ2V0IGZvcndhcmQgaGVyZS4KPiAKCkkgYmVsaWV2ZSBLZXZlciB3aWxsIHdh
bnQgdGhpcyB0byBiZSB1cHN0cmVhbWVkIGZpcnN0IGluIHRoZSBrZXJuZWwgCih0aG91Z2ggSSB0
aGluayBoZSBkb2Vzbid0IG1pbmQgaWYgd2Ugc3luYyBzdHVmZiB3aXRoIGxpbnV4LW5leHQsIHNv
IAp0aGF0IHNob3VsZCBtYWtlIGl0IGZhc3RlciB0byBiZSBtZXJnZWQgaW4gVS1Cb290KS4KCkkg
c3VnZ2VzdGVkOgoKcm9ja2NoaXAsZ3Bpby1jb250cm9sbGVyID0gPDA+OwppbiBncGlvMCwKcm9j
a2NoaXAsZ3Bpby1jb250cm9sbGVyID0gPDE+OwppbiBncGlvMSwgZXRjLi4uLgoKaW4gdGhlIERU
IGFuZCByZWFkaW5nIHRoaXMgaW5mb3JtYXRpb24gZnJvbSB0aGUgZHJpdmVyIGRpcmVjdGx5LiBJ
biAKd2hpY2ggY2FzZSwgdGhlcmUncyB2ZXJ5IGxpdHRsZSB0byBkbyBpbiB0aGUgZHJpdmVyIGV4
Y2VwdCBnZXR0aW5nIHRoaXMgCm51bWJlciBhbmQgYWRkaW5nIGl0IHRvICdBJy4gV2UgY291bGQg
YWxzbyBoYXZlIGEgY2hhciB0aGVyZSBhbmQgbm90IGRvIAp0aGlzIGd5bW5hc3RpYyB3aXRoIGFk
ZGluZyBhIG51bWJlciB0byB0aGUgJ0EnIGNoYXJhY3Rlci4KCkNoZWVycywKUXVlbnRpbgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
