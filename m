Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26FDFECAAD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 05:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GnHXr2kaBm338N0TJlY13yIXeGs3THX2lXKUhgQWqjM=; b=IF87OpTIe3YZNj/4JfzoReue3l
	x1pP+p6S7p4g7jk4MEbuS6D080iW2nGRjpZvWFGxUl0Ysi34nXigCYfxo91SNVeLBL/bLFfodrMzK
	d/kvtUtnwzatH+Wq1F8b6W8d1PwNGf8911jMH7hahjnuFgW4IEVWCwaK5AtwneINsotFXoPMlAuFs
	4C+eRglPnw/MY5BiDqWWzn2yh8H9XstZ8vLO+rkJNgEDnJBbgqnwL6YEfL5kSleOwL+d7SxtdHfQM
	c5b5eXVnmm0vBZ6VM3CYXwG0VQwn+/Zku5bf8pDupk76hoPzSG8f+WVjMlEal5Em5ptr3hDQv7xrJ
	VhhTjjUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYLEZ-007tX0-VH; Wed, 14 Sep 2022 05:46:51 +0000
Received: from mail-db8eur05on2047.outbound.protection.outlook.com ([40.107.20.47] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYLEX-007tSd-9G; Wed, 14 Sep 2022 05:46:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QW80vYvbvfAeo5hJnMSuqviXy3yhsTFBuBTOpo7E8ltTm6f5JKcuvLXP9pUUwnUiGSeL/i3zFc9KizuyBwD2IHWdXqBDpodq4jscLSZgnVvV3nOfwHak09k3mqzEFnqLy1GJe/N1txJAJ9ZCeWfo99+DSGeir39baUykqHeDdbxhN2H09ufH5q9yUPwymCiWfPUgW3MV7TPxfyvVRg6nR4SR+tjmx+2rE7MpEy5jEldQsM+5LYOlwmq1dheLBIUm+kvvmtkwcR2AGorYUubmmXZl7aHnRPCNXe/eyinUCeBdF80muWc85swbCslKsBxEiyEnDSeltBSjrQNCY42f1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ViW3CuQlPho4HL9C8a93qhQLH9QJYZOT5zNYgMEED2U=;
 b=lWwJowLWKBj2wLcBrP+KRqdpOB4HqXAyQ7g8zAVlsMgO3CKvApeYg/3Ygsfz3Ez9vi0C/E99npzSkwBTwg5Hucn2J74PUda86bdwJf7GiUuA2w6CJJcTP8JG/sJQEYMEPjy6L7ju/uo8g/5B81IFQa+jLcfqwOeQYSAIzq+sTrnOh8TwminaGdubLBEzOujROfl2YXfrRU5CMTI9rINmYc9pVL+aN7iKcSu4CEeNRKpEaFrDz03Hy7namrJDWF60QmOSSM1S6ajt9gdUHESAsjIQwLiSod4B1WThN0a+rRy3vv6//QnO10XyZfKbBvA7OyOK6IDXoVzh6MH9TPDCjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ViW3CuQlPho4HL9C8a93qhQLH9QJYZOT5zNYgMEED2U=;
 b=qrA1UUGCUE/8/kYkx7TO+GljRYtuN1GeNj9uiBL8URIQlkOJXy1QhzeKwLq7nAY6vsijcTM4DULSCdk/RxumWju8bAH+VXyhqldcCCoJcuC06t5N3S4zL8hwJJQuizrvGkpnkrKVfz1lgjrjs3pReQvAfDK1i3YgyfUXpZDGnB4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PAVPR08MB9331.eurprd08.prod.outlook.com (2603:10a6:102:303::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 05:46:43 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::d5b:f7f0:4c2:cc95]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::d5b:f7f0:4c2:cc95%4]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 05:46:43 +0000
Message-ID: <1d98ce70-81d5-df92-c881-1d9611042401@wolfvision.net>
Date: Wed, 14 Sep 2022 07:46:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 0/3] rockchip-dsi for rk3568
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 cl@rock-chips.com, s.hauer@pengutronix.de, frattaroli.nicolas@gmail.com,
 pgwipeout@gmail.com, heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, vkoul@kernel.org, kishon@ti.com,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220912205607.5969-1-macroalpha82@gmail.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20220912205607.5969-1-macroalpha82@gmail.com>
X-ClientProxiedBy: ZR2P278CA0014.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:50::20) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PAVPR08MB9331:EE_
X-MS-Office365-Filtering-Correlation-Id: 573c920c-89e8-487c-632f-08da961480ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	uB973LALViQrjkQb9zup0AtkVeAmv42vko0+cjYaNST4ahvwT30qxIKNX5o7bD38QqzXkOmXshT/Yb5zZoIw1l9c3eKnx118auc+VkJYX1BjcKjjfadiD+dhjrJHMLLyEM9g6mzPpfj6iLoscIBAmp8yp+28WF7oDsY+iu4jkGyAwgP6SwOKMLPU/eWo/qZjmZdMA+ScDfCtPAdmYgaTOEQR3rXVVSvkgpDdfJO3XlvesKgcK4lfrnjgcPXMI/rK+vPw7Bgm/fzHTjAajn3+dkdHYl3Hz1umPJG6L9XDo6oEl+td1ROiCwaJYuyzzMg/eJXkFcprU2xbWvOUir4Ig0xwNnxu7M7cB1n7FfK51G77YwUgYv/wCkrFt3447YBqD6AL6KxtsuntrS2RH0v8j+jOTjFUj5zS3YjwecxzzuzmrJ21el96weKAmfEmOsjhKiTG27Z6+bwuXqzllf+7gyvuJnrogTq3Yo+MDUXsCnZrXI0x1Zpbvk00Iux8EVavSvJ2Kf4KLZGg2mNEdj4UIWsdTLdPGE9SlYZNJ7m9QROp4O9o9t3AivCI+ZKVRFj2Ujkr0DadjgZ+5pHswnTRuv3l1fBfB+VQD3XOw3uP7xYE6eO5bw/j8krT939Xa+wqUpln1uvwXy9e0qkPbvehYM8/tc4wMmRDmxQdBV0gi8OFZqvqjmKUyYGFUteTXHff8yNpxmg8ozYwX+z93pMnwUiG0aFkj1nR4YQ5difhO+oo5SenRBylTkE6guyxPJ9o0+DMBXZNPE+Jdz6ioZ6jPfiPfG3wOj+aq6dtVRgpE34=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(346002)(39850400004)(396003)(366004)(376002)(451199015)(4326008)(86362001)(44832011)(66556008)(478600001)(31686004)(316002)(5660300002)(36756003)(41300700001)(38100700002)(2616005)(2906002)(66946007)(66476007)(6506007)(8676002)(83380400001)(8936002)(6512007)(7416002)(6486002)(52116002)(186003)(53546011)(31696002)(45080400002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?ZWFjMFBsZE5FVnVwY2svcHluRWVXckZIWkVTZm9palVWUEN6bXRPL28wQ2JJ?=
 =?utf-8?B?OTh0RW03ZVdYU2M4VUp0dEQ5aUdnNStHSGxYUVM1dXhNeTcwejJFRmpuT3c0?=
 =?utf-8?B?NDV2cmE0SlJ3OVBnbEVOaUJEY1JSYTd6cGJjcnRNd2xXNjE2S0F5ZFJnbzJj?=
 =?utf-8?B?dFpJWThaMnlVWjBCVVJVWUF3WXJwWk5JYkFpSytPd2syK01VZjZhTVJEVnBS?=
 =?utf-8?B?cnU0ek9hSnZzbk5MaHAxTlFUc3BEbk9XYjB0VkdIamZNcVZrV0dXelFhT1ll?=
 =?utf-8?B?VHZWK25NTk1HSGhqNnhNTDQwRSs5VW9naE5WN0RNNmEweEU3SmVnOGIrZlo2?=
 =?utf-8?B?dHVOaU1qcW5YVGdxOFBtWEV3em80SC9KcG92TkFZaE5LUjJyQnhFME0vQ1lC?=
 =?utf-8?B?eTdIOTZ5dGFxTVViaGRYbHFUMzErdmpvQVVYZzhCSTVyZU40ekZZdUZsVmVJ?=
 =?utf-8?B?aGpMSkFNVURrdU40eHJubjFWdm9SUmp6NElVeWpaNlJqNXlFWVRmMnhsS3Z4?=
 =?utf-8?B?V1RxWlJCY0FyNnM4bGcxNklsQ1ljYWpmK245MUllTG0xdk5uOGhTUElzZGxU?=
 =?utf-8?B?SU1lVHFXczdwci9ENlNSSlkzS05YV0hQVmZhaHZuY1lvYmU2SS9sR0NVRW8w?=
 =?utf-8?B?OU0yb3M1UjhCTFIrMHFJZTZITVlaZVFDVVhkdms2OCt0bUl3OWI1WVhQbmNl?=
 =?utf-8?B?clFydVBZZDV4MlZGUHRMc1FHd1IrQ2c1dFFGMkIwOUNFWDNHbzhuSzVFdVBv?=
 =?utf-8?B?V0tNMVBuSzI2VGtzRkJKNW9JM1gxQlhMNFdDREsvMmFXemxiZXFXaGdDb05M?=
 =?utf-8?B?eGRjSjB0b3lad3pmaG1lZXZMVG1mQU45c05ZcGFObzh2Y3FPczV4S3RDRVJL?=
 =?utf-8?B?enk1N2VQZjl5REc1R09NSkdkWDdLS0puVFQvaCtZZDRvcm1aUE1TcTRrY3NL?=
 =?utf-8?B?blpuV1o0aHhhN3RORlRFaE9ERUpJNGdSWmVOMER6YmV4Zy9QMGpxVUZCVzBZ?=
 =?utf-8?B?U0xzK0xVbWthM2RUUkhwMzVNWWtRWG55d3R2bkpiRHlIYUZiZ1M5YzF1ZzZq?=
 =?utf-8?B?Qnp4VW1VcVJIRTRUS2tRNERhT2FZcUZUQSt4cTByTkczVHg2ZDBDOG9IclAz?=
 =?utf-8?B?a1FtaThxY3FHUVZzaTJEa2tTMUtCa2dHSEM4K1dJc1M3cExZZW5JOS9JU3lK?=
 =?utf-8?B?ZFVrKzNFdVNJZ2tsb2pXdjc2TEwva1RZNkxtZ1VYZU9ZODRzU1A3UTFEOFdE?=
 =?utf-8?B?Tmh5M1ltam1ITkkySXNtelN1MFFLM1BYeXA1VUVucks0emRydHorT2dUWVlu?=
 =?utf-8?B?ZnRjLzVFODd2MVMrM2swd2did1lIY2YveW1ObU5zM25BQ0pKMjN6NXBhSVNS?=
 =?utf-8?B?cUo2R2xTNDBxTXdNblU3KzMzQlpNMmFwZE5MdFk0SXQxQUk2YnpSTXd0M2pp?=
 =?utf-8?B?eU93djB5ZlNjeW1kd1kxM1dNRmNmbXBKL1ZlcTlxOFlaaTdhY2Qwc0xxdmVK?=
 =?utf-8?B?cDU4Rm94YkppOWZxa0o4MWJobC9pOGZTd3ozZ29jbmFiM2FWS0JyT2x1cC9D?=
 =?utf-8?B?ZFd0aFlSZEc3ejlINmlxSUZRZWlrQXhEcGZtUWdmSFRNZjFKVVZ5aUpGLzQ5?=
 =?utf-8?B?NkNvdW5QN3BuZWZ5dG41MmVIVklBamN1YS96VmVZcTBLVzNScitvd0pKQTZY?=
 =?utf-8?B?cHlOeCtmWnhqeTNrcERUKzJQR3RjYy94OUV6Z3BPTGhvbVFzNVFuVDhCYU9B?=
 =?utf-8?B?c3JnTG40c3JhNklqd2RHZGxKUlk1aUJUaGVpaS9MaldRV3pMUkx5UWlhNVJR?=
 =?utf-8?B?d0NXZ2ZxaEduamVha2Njb3lOaG84cFBuUUs3QzdiTDV5Y29RSnFnckI2NGhk?=
 =?utf-8?B?OG5GUzZjMWUvQWlpeUwrTkFyRzF6M1N6K3BzanVtZnNLUlkxOUY3WDM3ekhO?=
 =?utf-8?B?dCt2VVNvQlAvMEhxU3IrNFQrYXhhd1o3MUVCdFIrT0RMWTEyUGVWNzF5aEY4?=
 =?utf-8?B?WmFCQlY1eEszd0g0dVg5S2hRdTZVV3ZEdHg0TDM5N2tYK01BeDZnbjRiQ0Rm?=
 =?utf-8?B?VVBJeXRvZEhRZXRBeFUvVXVVdE45OEJTY1hGbUpFK1RNT3dZbVlyU0tvaUZY?=
 =?utf-8?B?b21GOEFRUHZvckNEWU9OaURRbzgrelYwQkFSUWZ4MnpGOGIvU2xJbmMrbUM4?=
 =?utf-8?B?ajFGbnp5TGtIUjNZUFdLZk5tMUpjdzBjdlgyWk51bzVVL1JDRXd0cW85eVZI?=
 =?utf-8?Q?imt25dBNBeo0iwPMrtRv8hfPduAZVioLOvwcjqiQ/A=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 573c920c-89e8-487c-632f-08da961480ee
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 05:46:43.4059
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GKYOkMWAFzrOAOlKvqvGVKujIeyKdptfI0wZCZplGW+0HkKkA2IL8UUjWYXLMatjWpBvP9T2OI4TT4Tqx8FE7pFQrIPyGt4y8GlL1KLTLbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9331
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_224649_377022_5FBE58BC 
X-CRM114-Status: GOOD (  20.85  )
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

Hi Chris,

On 9/12/22 22:56, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This series adds support for the dsi and dphy controllers on the
> Rockchip RK3568.
> 
> Tested on an Anbernic RG503, Anbernic RG353P, and Odroid Go Advance.
> 
> Changes since V2:
>  - Removed dsi controller patches, as those have been merged upstream.
>  - Removed notes about rolling back clock drivers. If I set the parent
>    clock of the VOP port I'm using to VPLL and set the clock rate of
>    PLL_VPLL to 500MHz this series works correctly for my panels without
>    rolling anything back (per Heiko this is the correct way).

I tried this but it didn't help (neither did reverting ff3187eabb5c
"clk: rockchip: drop CLK_SET_RATE_PARENT from dclk_vop* on rk3568"). On
my display the content is shifted horizontally and the colors are often
wrong.

>  - Added additional details about refactoring DPHY driver to add
>    2.5GHz for rk356x. All other devices still have a max speed of 1GHz.
>  - Notified Heiko that the BIT(5) for both PLL_POST_DIV_ENABLE and
>    PLL_POST_DIV_ENABLE_MASK is deliberate, because of how the
>    phy_update_bits() works.
> 
> Changes since RFCv1:
>  - Identified cause of image shift (clock changes).
>  - Noted that driver works now.
>  - Added devicetree nodes for rk356x.dtsi.
> 
> Chris Morgan (3):
>   dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
>   phy/rockchip: inno-dsidphy: Add support for rk3568
>   arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x

I am testing this on a RK3568 EVB1, which has a display mounted on the
PCB. I'll submit the patches that add support for this setup soon. For
the time being a preliminary

Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

Thanks for your work!
Best regards,
Michael

> 
>  .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  72 +++++++
>  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
>  3 files changed, 231 insertions(+), 46 deletions(-)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
