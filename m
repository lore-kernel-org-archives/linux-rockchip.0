Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D52EECAAD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 04:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D34MxIjQZfWaqwgNjLc4UHNIi9IPKbpuMtjhmL21JsU=; b=KlqVVJT8+M3cG+ginyhnm8YA/B
	fRttfSOTDvoM9qM9WDi3EZsmOaJFxN497ayK0EjI/ugUZfhqyNSg9iMmpoKFdqNa0WXQmWS41kKdU
	xrKQgwhOpz1TZeqDLscFIPq61GGH0yKS/KF3kKl7vA3Hi9cXau+od6rvhY5fAD1e2sL4pA639pDjr
	ag2Y79rAM1Y0tAG4Di/c8hoy3BKxzUmEnRGCFWzMP5IMfyVFAoeBwyTmkgZlrSGoPtvnAhVsdZJeU
	OPwcT6Y7rKIbpMj/J8LxXpF3VgLT3xQjbRpYR9KUSV+oWMJjsr39TI7xxjP8o3jzFAS/dbre+vazu
	PsRjmPwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYKMR-006wYZ-2i; Wed, 14 Sep 2022 04:50:55 +0000
Received: from mail-eopbgr60040.outbound.protection.outlook.com ([40.107.6.40] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYKMN-006wTM-RJ; Wed, 14 Sep 2022 04:50:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dbY2bUwpQfuLcYy9jhl/4+kEvD+RMFXkLpUnNfkJgcxrNCldMwzgjEptU1GwrpKNTO2Xkr21nUB0muEeCOqxZD5QEPynjZoKWAgAoAIsyb18Kv6GBgQVi86QAqEK9FuKJuT+n9i55t663TELfUfvW91NTIE00jKf27SoeTxJGqtOhCcJK5GBW8JCFx2DeNb2/BtonT5guhL8NuqGTlwYDHOe6R/Stz0Vqpi0ueWlv3aAj5Fy5czuO8hQ741jcKHlq/kNrykHW31cOF38vs27A9twbWSdBMFBDHCWLc88zt05sdrM2oxmDwX8ryqlYHNHPNfWFFajqfW1miwAJ41K8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XekZOmDx6t/IkM99B6t6oHYrjrAPMwkju3ndrpC421Q=;
 b=ISkpK5HfbuRW4qiZmNGxStQRY5CUGH7fwLhjMqgRMig0Du1TkjOWGVpNT4hkScpuxeI28W2cCqCdf1ezpNDJFBbtXlqrVJ7sQ0UJMn5tZcgShWw7QUxOO/s2Y2UJDCiZwvDyauVEFp8XMB66lLTiliaXyRQ96Xpb/F+we4xTZwBeIWVdnLPs0UJlg7HDpQmjGf1WzPBI4f8VMFvyENPrNXeiCw37bJlO0pJ5Cwjl4t9JKiTNh1etZYxdAETQsQ5YiOk7JL+8+ucgQraig7IhzOubfk4pxtP7fHTSPfY29/jLIrTOkhZugxDZOCq+WtOhy18d0qz84VYqPuzFaHMqWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XekZOmDx6t/IkM99B6t6oHYrjrAPMwkju3ndrpC421Q=;
 b=BAVWgIi2JBERfBbGRDxi8fOI5WL2oiyym8ue+B3Cne16pEX/oZpjutcuADWZy+XimLhAZ02qt8ae02crUlcf/OEkt2ltGuIdEYWwyVd4N9PU3oMpQdO50Vq5C8oWjgEEigBHXObQKPKu18EvvBwUeypI/5qgIn3R93GXgpwq8rk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB9PR08MB6668.eurprd08.prod.outlook.com (2603:10a6:10:2a9::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Wed, 14 Sep
 2022 04:50:48 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::d5b:f7f0:4c2:cc95]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::d5b:f7f0:4c2:cc95%4]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 04:50:48 +0000
Message-ID: <329ab3d0-d584-a286-61ba-bcbf8b098d0c@wolfvision.net>
Date: Wed, 14 Sep 2022 06:50:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH V3 3/3] arm64: dts: rockchip: Add DSI and DSI-DPHY nodes
 to rk356x
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 cl@rock-chips.com, s.hauer@pengutronix.de, frattaroli.nicolas@gmail.com,
 pgwipeout@gmail.com, heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, vkoul@kernel.org, kishon@ti.com,
 Chris Morgan <macromorgan@hotmail.com>
References: <20220912205607.5969-1-macroalpha82@gmail.com>
 <20220912205607.5969-4-macroalpha82@gmail.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20220912205607.5969-4-macroalpha82@gmail.com>
X-ClientProxiedBy: ZR2P278CA0032.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:47::8) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB9PR08MB6668:EE_
X-MS-Office365-Filtering-Correlation-Id: 485a0a5c-5a97-414e-7688-08da960cb0ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	OoJwMe63bVcfia1PgBRYYbURHCdVaqROFzlgQX26VJ4mH2fo12rd7Ujh5st4fJMNsEsHI6qh5f2OTTopEPUbeZWYDwk/o+jCqHv10Rq3DjB6TNZS2TIxu8v9uhWsn64tn73ssCNrRugCqSjAYJX1PyMj8OWPzu4bkPhGuQjmdj3a5QLd6ChvwBCO7XJH38YEOgCtZnkgG/4JIIyU7xePrFKZy800fmoBXFC+OGHUO6u5Ef0LI0IwOgWbR0QW0/naBBOIuYJjpwfQdi0Bad4OMq3JATCG9CLIOSfFwvrhYKYivbi1+MVBETdl+ocWu/5zooqo0hdBegqXyZdvYNbnniy92+NPC4ecWV2aU2urg9qGHBrY5r0nKoPRehqDDIuszkFqgZvMWWR0t9+y74xWZHTrWqBZ2LVWEF/8GDt7SsVXfd9CKP6OXrvkyfgkmoreEQF6GA9maJQV8LavSYZqpItAT9SuLxJUYwwqDMmdipoYCxXT0PEh9EkCg2aKz4CFiAGD+xvi90xShfyVSQiuK6mk8PzHl01bpbo4d470r9HM/S0xCDRLcbUzcRMsbR/LvFAn36cGc9//Ib+6gfD83t3iBYm25d4Smddp5qQWpoN0dXeLC2LlIVs+q1PBcyxSjEblydgUZQh5uuRjo4OFW9ICQiJ2RjenPU2/OPb4VGhPeqh3321Lg3V+/r7HEU/RD3W1x5hazkKaJ3mTCSDWooM3QV5La+KqzAE+pm0MrUm6eeI3VV7Dw3boNzNCshpQC4eRrZJhlKCVG83X8xz4xX+o7doc6lUiW9WJc2jZBV0=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(346002)(396003)(366004)(39850400004)(451199015)(6506007)(316002)(41300700001)(45080400002)(66476007)(53546011)(52116002)(2616005)(44832011)(6512007)(36756003)(4326008)(6486002)(66556008)(478600001)(186003)(2906002)(6666004)(7416002)(66946007)(8936002)(5660300002)(86362001)(38100700002)(31686004)(8676002)(31696002)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?RVhoUFpNYlNkSzBaNGRJc2RKSE05V1phWEQyd3pPNVRPYmxHeUJ1QmxSSlBV?=
 =?utf-8?B?WnBmdElCd1dGV3N0MnJaSDh0WU1NZm5HSUN2WE9rQU91SDNVaXdpRlExWnBy?=
 =?utf-8?B?dGRvaW0xOGJhcGtYT0tLZWhma0NRK3NLMDZudXV3d3RJemlzRTJ3eE45Zk5p?=
 =?utf-8?B?dFdPMWNNNWgzNUhBYW90UTZ1YmtwL2diWVRLOXNseUthMGx2dGo5Nkp4Vi9V?=
 =?utf-8?B?cEt6UjNZaUE4RE1Bc2JKQXlmNkpVMllYbGxGS0pROTV4bnN6ZEZwcmtMMXls?=
 =?utf-8?B?czIrSDNzc096cm5oaGttbGxteVpZbVdUVDRNSWd3blJqeTJzLzRlMmR3UUU2?=
 =?utf-8?B?TDNDZjZvTDlXNDFQU00vTUNLcEZYdVhiNHFQNmY5eE00UmlyNzNuNVFXRExQ?=
 =?utf-8?B?WHc0U09sRFRXalVKczdRa1lYU0E2VmNlbnQvYjJIR0tlNlZabFA0STNhY2Iz?=
 =?utf-8?B?S3hFeWZmNHFSMktuUXhUNFdxWlkzNlo1OEN0NkZXYzk4VjRncmNxMEpZSHVL?=
 =?utf-8?B?WkEweDdLMk5mNUJNWm9CVDMrM2w5aWRKTFdhUm5VL3V1SlZqQ2pFMlFSRi80?=
 =?utf-8?B?ektJSHR5dFR0d044NzlPVTVJMmpZOWgxemR2UUZFWjRWUXVKVnM4Y09IY1ZT?=
 =?utf-8?B?aEdRZWZCUnRNYmZ4MDNIRysvaTNVaFNrdWwrdDlNSmJTNUhMeGlpd20rSW5z?=
 =?utf-8?B?eVAzelAxNVZGN3VRSXJURnVsWGVsdkNvYjRHRjBmS1FXTVNZNmlNTHVGQ0xz?=
 =?utf-8?B?aUJRRXRscnZlUU56M0djeHFXMlhKSUF0THE0V293TkI3TEk2ZTRmd2JVSjZJ?=
 =?utf-8?B?dnMwUk5OcTlwZStXWmxFT3pMdlN0L2YrMHhqMGxFbVFXaHpneGhSUllacHM5?=
 =?utf-8?B?YUMvdEJlZWpQby9pZVovWmZXUG84dFd1WkVCdFo5TDVCQmZwcWFRVmxPRDAz?=
 =?utf-8?B?MXBEa2psOWhaVGFsd0hOSzBZeXR1cG1pQlhrTDFWek9wbis3Y0x3WEZyL0RK?=
 =?utf-8?B?TmJqaW9YUjI3R1hTRFc2VUwzNDN0ZGs4eFl5bzg1c2x5cERzTlJvTjFCbzFq?=
 =?utf-8?B?WHpiRzE4dC9IUFpQc1pxQWEzdVhCcjducmszaG5ERjdxOEw4cmpJOXpWK2Fr?=
 =?utf-8?B?eHlsU2lyMVdwQkI0Y0VwNDVZMm9HeVZYQnpwa04vVnBzYThlZVNFaXYxYUk1?=
 =?utf-8?B?czQrb0IwaGcxRUpnYm1qVTVzZlJ2emtFZ0Z2OGthZEZ4dVJNbHhUNC9EV1h1?=
 =?utf-8?B?cDZoZGg2ay95YnpUU1FmbTQxRnRHRlBCUTNtZHp6NVFvYURZWjZTVGI2UDZX?=
 =?utf-8?B?VjYrdTcwM0VyRzJ1ZnJMTnVGWVk2QWNBZWFzVzhDTE9tcFpCZ2JLVWFKSjZD?=
 =?utf-8?B?Zkcwd2NHQVU4VzJpcmJYSnN2UjhuTG4zb1ZXYUVYdjY2d0NONVM3S09YNU5z?=
 =?utf-8?B?OHlxVHFvVklnbjFPZzJHZHYwWVlKeHIvWFNNaDJROGtMUTVtbU0vS3V5eGx5?=
 =?utf-8?B?M1VuSnBNTG5qLzhJSVJzT3FDVGt2azFOcEdFK043SkJUeGpZdkJJcU8xQ3Nj?=
 =?utf-8?B?RzdiNkt0NUYvOWRyVmxwV01EZmp3bkthVEhHbm4vemp2Q1hkUTZwQW1XbDFB?=
 =?utf-8?B?b2MrbHdROURsSW4xaUgveUdncURQWmZITlhWM3JsY1IrU3VkZnhQbThDNVpO?=
 =?utf-8?B?MzQ2TXM0T0Vtb1UzRXlCWEVqMnVTZjBVZUlmSHp4WHJLNzAxeG16Z1dWZ05E?=
 =?utf-8?B?QURhOXhVMXVqcm0zQW5jdFViRkRnNUxoUER0L0NrLy91bjU0SlpOMzVSQ0Fl?=
 =?utf-8?B?RXJGNm5MU2ltaGduOVVvdEs0N3BEWVN0a2R2bE8rVVpyN3BEK29jUTFnc3hs?=
 =?utf-8?B?NWc5Vkk3eU9LVlpvb2NlNkJyNWpFVmhSZkFYNWpJSXdsSEkxUXJzUmVwV1c2?=
 =?utf-8?B?UGpRcjNZdE54ak93Rm94TTZ2OGlsZWdvTzV2YkNGYVVvU1FqQ1M2UDZoZmxh?=
 =?utf-8?B?Qi9meC9jRnVENVIwTDQzNDYyV1g3VEI1cVZCQTJkVlp4VzFXbFlpeUN4Rk03?=
 =?utf-8?B?VEh1bFlPTk5yZXU3Tlp5am9wRUNiVHBQV01DNmlZMGtkYTlkYVgxeWpVUWhQ?=
 =?utf-8?B?TWY2Y2Zqd2tMbk9mUkoyWk9LOVpvYTJtWDZoSUtYZVU4d3cvc3ZCSjAyME1N?=
 =?utf-8?B?a3BnYXRGbnM4UDF1MW1IblRjM2NpejdJL09JQXJYYjZLWXdMekRSU3hoTnBk?=
 =?utf-8?B?ZG12QzhXNG5mV3JVajJFZC9vaFhRPT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 485a0a5c-5a97-414e-7688-08da960cb0ea
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 04:50:47.9525
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: INpyhdYDaWl8AwhqlUfAft0m92qeEkciKKIJokcGcJ2rHQA0/S9FAfH2NJGwg4qkhswjh2MNYGhRgDq4YE+z6Nb++ClisF7GAwr+9TDsV6M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6668
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_215052_150037_B500B35E 
X-CRM114-Status: GOOD (  16.76  )
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

Thanks for your efforts, nice work!

A few minor comments below:

On 9/12/22 22:56, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This adds the DSI controller nodes and DSI-DPHY controller nodes to the
> rk356x device tree.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 72 ++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 319981c3e9f7..d150568fde82 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -699,6 +699,54 @@ vop_mmu: iommu@fe043e00 {
>  		status = "disabled";
>  	};
>  
> +	dsi0: dsi@fe060000 {
> +		compatible = "rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi";
> +		reg = <0x00 0xfe060000 0x00 0x10000>;
> +		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-names = "pclk", "hclk";
> +		clocks = <&cru PCLK_DSITX_0>, <&cru HCLK_VO>;
> +		phy-names = "dphy";
> +		phys = <&mipi_dphy0>;
> +		power-domains = <&power RK3568_PD_VO>;
> +		reset-names = "apb";
> +		resets = <&cru SRST_P_DSITX_0>;
> +		rockchip,grf = <&grf>;
> +		status = "disabled";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {

We'll have to reference that port in the board dts, right? A label would
be helpful, e.g., dsi0_in.

> +				reg = <0>;
> +			};

Would it make sense to add the dsi0_out port at this point?

dsi0_out: port@1 {
	reg = <1>;
};

> +		};
> +	};
> +
> +	dsi1: dsi@fe070000 {
> +		compatible = "rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi";
> +		reg = <0x0 0xfe070000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +		clock-names = "pclk", "hclk";
> +		clocks = <&cru PCLK_DSITX_1>, <&cru HCLK_VO>;
> +		phy-names = "dphy";
> +		phys = <&mipi_dphy1>;
> +		power-domains = <&power RK3568_PD_VO>;
> +		reset-names = "apb";
> +		resets = <&cru SRST_P_DSITX_1>;
> +		rockchip,grf = <&grf>;
> +		status = "disabled";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {

Ditto.

> +				reg = <0>;
> +			};
> +		};
> +	};
> +
>  	hdmi: hdmi@fe0a0000 {
>  		compatible = "rockchip,rk3568-dw-hdmi";
>  		reg = <0x0 0xfe0a0000 0x0 0x20000>;
> @@ -1594,6 +1642,30 @@ combphy2: phy@fe840000 {
>  		status = "disabled";
>  	};
>  
> +	mipi_dphy0: mipi-dphy@fe850000 {

May I suggest to call this one "dsi_dphy0" (analogous to "csi_dphy")?

> +		compatible = "rockchip,rk3568-dsi-dphy";
> +		reg = <0x0 0xfe850000 0x0 0x10000>;
> +		clock-names = "ref", "pclk";
> +		clocks = <&pmucru CLK_MIPIDSIPHY0_REF>, <&cru PCLK_MIPIDSIPHY0>;
> +		#phy-cells = <0>;
> +		power-domains = <&power RK3568_PD_VO>;
> +		reset-names = "apb";
> +		resets = <&cru SRST_P_MIPIDSIPHY0>;
> +		status = "disabled";
> +	};
> +
> +	mipi_dphy1: mipi-dphy@fe860000 {

Ditto (well, "dsi_dphy1" obviously).

Best regards,
Michael

> +		compatible = "rockchip,rk3568-dsi-dphy";
> +		reg = <0x0 0xfe860000 0x0 0x10000>;
> +		clock-names = "ref", "pclk";
> +		clocks = <&pmucru CLK_MIPIDSIPHY1_REF>, <&cru PCLK_MIPIDSIPHY1>;
> +		#phy-cells = <0>;
> +		power-domains = <&power RK3568_PD_VO>;
> +		reset-names = "apb";
> +		resets = <&cru SRST_P_MIPIDSIPHY1>;
> +		status = "disabled";
> +	};
> +
>  	usb2phy0: usb2phy@fe8a0000 {
>  		compatible = "rockchip,rk3568-usb2phy";
>  		reg = <0x0 0xfe8a0000 0x0 0x10000>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
