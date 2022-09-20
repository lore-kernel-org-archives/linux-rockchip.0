Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5CF7C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 07:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O0noMBLdUtwnYuw3BZfcDre8RJ9ERblv52xqz3etMPQ=; b=4LQr2uUCapiGSrUP5UJVjsoxVj
	iWsDw1RFb6Zbx8rKIAClnFyEvaeo5+HEaL+SsA15BlMnHCXh0TpZG2m0WaJD4inBwJH2SVgFTOj8U
	hPdARru0yqubhx2XML8UHK1ziluXPq9/nQazHow/xIyHyBnhW5G4iD8BHsoYChzV1h3F6Xbj7o4FT
	fC9H99qJ5prGA+pZLJ16GbUfibsuUzrdRfKrL0bDSb4EI/8aEzXT2n5tvOsuawup2je6xQEX5EKmJ
	mJTEhWSJlZHJrmlMy6ySFPEUAv1Fy2tRUpp6aOJ9hHQFRr0WFe0CDu2edK60Zvikw/RmZZx564bLJ
	rZHi5i0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXIM-001DvS-5W; Tue, 20 Sep 2022 07:03:50 +0000
Received: from mail-am7eur03on2060.outbound.protection.outlook.com ([40.107.105.60] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaXIG-001Dqr-De; Tue, 20 Sep 2022 07:03:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sd/3SP+tozsSMp8XEPiIqYH3Ae6b4My9DLf9XPU+eykZXNvjRBW7MFqghZ/Nynd2rHHFyucza1flDlz3YSbQ6akpEs+FpkzxfPn1c1ysCeU0fcYj30waVT8oivmjFVM5Hy8PBWxho+5Un6F6tee38Xj4Fu70TK1PsufjT+IFwnqGCbEFWBn2rl7ezhWQ5C7scriZbuOGQu0lDSzRyBsuqYdg70LqGxbergxC3ED4v1jm4LMghajoSaABKMc379SYg0aGbRV/0KCSM5J+JCmvP2hAaMubUjg4ka3frAnaep3yhFUbmY7UnEFphU/ooOmZ7k6jNKNVcMjwImQSl1iBgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r9VKX4jM7So95zeIO8Z4x+fK0kffvapoEWygtRFcx6U=;
 b=nIq9o3jKmDD35jMqQ9YrimNXZdJasc58XKGFZNhBwhYnijZ+eCR8DHIHAJX00LEvKBiuffZ9rGKY+MO5ik+v7rteLRmSPZ13zhP1wsPgjr8UU5W/f4E4R7IvjobawGkP8VKT8NwKxX1EVSa5ZR+5RiFKHOk8wZCZMtvdxZKSgQ7O7+KEx3vMcA9r5FmnACw3y92A9proX6CBHF+qnErIBhnijIsRbqj2+Am9ZrI7hTw8q3D0eb8JVs6I/b25A3XVuQASMggXMNYbYkyP/ftiv/jPPrFBQNC2welkJLqu3TLWaskIkUS3iOBohvwdsXxJ8xDEruD+DVpIuEdWoaZQOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r9VKX4jM7So95zeIO8Z4x+fK0kffvapoEWygtRFcx6U=;
 b=kTkWDmmjeOv1Tzd9EP/xtWaJ5tJHokkrl/ilY+fZok9af8YSl6sVq5bRDoPXGqo0qZn82p+DfKCR59so3iY4uOzfYdzaS1ULvHlj3O/or8GIKnKxqL+8RLaaDZVixKm1CuD/qYGFKrlp2R5paKACbg6Hvf0pvJmC805YnLEKuNU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV1PR08MB7348.eurprd08.prod.outlook.com (2603:10a6:150:23::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.15; Tue, 20 Sep
 2022 07:03:38 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5632.017; Tue, 20 Sep 2022
 07:03:38 +0000
Message-ID: <52913420-8cda-a1dc-1169-9d66b62ffe89@wolfvision.net>
Date: Tue, 20 Sep 2022 09:03:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH V4 3/3] arm64: dts: rockchip: Add DSI and DSI-DPHY nodes
 to rk356x
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 jbx6244@gmail.com, cl@rock-chips.com, frank-w@public-files.de,
 s.hauer@pengutronix.de, pgwipeout@gmail.com, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, vkoul@kernel.org,
 kishon@ti.com, Chris Morgan <macromorgan@hotmail.com>
References: <20220919164616.12492-1-macroalpha82@gmail.com>
 <20220919164616.12492-4-macroalpha82@gmail.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20220919164616.12492-4-macroalpha82@gmail.com>
X-ClientProxiedBy: VI1PR06CA0169.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::26) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV1PR08MB7348:EE_
X-MS-Office365-Filtering-Correlation-Id: f738e73d-2b3b-4fc6-78e5-08da9ad63e20
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	0Fn66a6ScBH0AqTg3rTZUS0v2WO3oTDxbHa8wu4PejfKJp4itsL2NyiGcdBkgJal7WytjPNiIcRZ78prqnB0nFquyG6N54+jx4YtQqVJ57K7+64MYUVyZ1UVvmrKIbgYyIz4XIe8Icz2Rde+Ot87R5d69dNUKB0JgwdFvqXZN7goyHUYvLnv2LgfTNajiXqfDxJ2VVR5LAfj5RoOqWtWJ8dWlTuUlkhbFRkhC5K3aLQbY+6xpYMKPdLQmNuK/6r7tdDSFZDbSI3qJltcWBTZltqIRqfn1mlVjRJ24vYKuRR5+La80BoHi8ttEdCdqXT2Kt9lfxWx3rigfyw9lSrzAsP9ciMF1MpGCIw3rsvotV4WoT5eK6fk5DJHP9xCn3apvIjRiE/yUl8bpLcwYo6MKgHfsfWIyHo4CgdntqolmXGlcFgfUC5Y/C/F5aDVK6iNZ98kXWkjLCb+3hJHViXKD+49ad14DU/gBJUubofXh1R3fho8HXz1CkvKc0fk8eSRYqkTaDF6uD3Xs0482BgBqgxaKN4+CHSntqIyzWRYbwDddL/XhbVIKoD0mk0l1R6WZEvICTVvcR3vsDn6mgH39YiRDiHiOCk+UlksLvuWf66uUuR/sKpCv6bFBHm8uCNEJKC3TNVg3QZSpurzXxrEBNaCXWn4QW1GkW75pjvkd3NGXKhE5djHotr2CPUvpmoXSAQBf2CQPgdqmzKduNynWAcdMIDiLrqCmQC2m7a2aD62UxBu+MyQysZQhoQLGSQMcfGJDhU/JRgpRwNs8UzKn9MuxG+Q+1MIVNuMGADlQw/q9b6Dj40BbvRuHR+hY8uN
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(39850400004)(396003)(136003)(366004)(451199015)(41300700001)(8936002)(2906002)(5660300002)(7416002)(6666004)(83380400001)(478600001)(44832011)(6486002)(186003)(26005)(36756003)(6506007)(6512007)(53546011)(38350700002)(36916002)(86362001)(31696002)(2616005)(52116002)(38100700002)(31686004)(316002)(8676002)(66476007)(4326008)(45080400002)(66946007)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?MmIxT21hMEYwcGJiTk94ZEdlTW5TOFV3TTBpUGlaQUdSVWtJN0xkYXFFYUNQ?=
 =?utf-8?B?V2E1UDdjVG5FWEhNTzYreW43bDV6a1hTT2h3eVp3QnlKZHBFQWtBd3lRVmhw?=
 =?utf-8?B?Q2R2c0VHc3lVb1cwdWhRenlLSWh5L296Qkt0SVRRcTFWei8zK0ZXYXJjRFFq?=
 =?utf-8?B?dEwxejJQb0RmWFRJMnlzQ210YUVuM1NKTTFhOGJFNzZRcW44cXIzWDAxRklt?=
 =?utf-8?B?V2x5dWFkTi93WThwclpzTHNPOEdrTDVpRGc0Y3hEMk1QaVpQb3lpSGJyaWZB?=
 =?utf-8?B?akN0S0lqdmtYNlBCOThwUktMQlVzeFg3TGh6aEx2cnJWN2loU0cySzdidmph?=
 =?utf-8?B?SmljMVg0ZFE0cUg3VjJDQ0hvM1l1MGRiTzlFUzNwTWh6bisrd3dJM2V2eDIv?=
 =?utf-8?B?UTE4cHQ5dHgxcFF5U1N1RmNFMk1rRTRBRkFibi90QWxPWlN1WDVUZThXRnVi?=
 =?utf-8?B?MnUxajFJcm9JUVF6VHhXditKQVNKcFRxWllhTGJMZEsrWjBBejNrWm9ia3BP?=
 =?utf-8?B?MHBTTVhoZzZ3VGo3TUZJaWJoTCtDYiswRWRuM0krT0pVRkZtVUc0anloZW51?=
 =?utf-8?B?NWNSakNhM2QwNGxJc3FJMVpMc1dkTmJrbWp3dDFCazdvbExycHpDZnd0dGx2?=
 =?utf-8?B?a2VTZm1YUzdCSUIweGticXhmZ0tWd1FLbXRobFNTYklWY1RHazRTTkRWRHdV?=
 =?utf-8?B?ZkE0eVB1Y0ZaUXpLWVZ2MHZhSjh6VkRPTVI5eHp3UUpMcHNpN25qL0VxZG1J?=
 =?utf-8?B?MnZkSkMybVJvVE1NZWJIcFd3aGxkZE5yRnJqbUx5RDBLQk4wbGp4Z2NTTW5w?=
 =?utf-8?B?RVozTW9ZMjd6RDV4dWZ1R0t1U1lyNHBRMzBaK09aUFExdk04YWJTZm96cDg0?=
 =?utf-8?B?MmcwQzFZa09Ed2JGY05OWjV6UHMvUUNNLzVXNTNvOXRWaDF2UUs4TkdxRWU0?=
 =?utf-8?B?Y3V3Nm9sQyttTzVjN3liaVcyeWpOeFZ2QjVnZjJlQVJHNW9HZUFKZUl2RGxY?=
 =?utf-8?B?U3ZzUHN1K2NudWZLYzdNT3dLc3RKQ2tlRy91VDh2ZmlYTjFYU054NTY4N3lW?=
 =?utf-8?B?cnpNdWhZQUZwbWVuR2loakl5T0RLUjNFSDM4WXpXSDJ5SVVVU2dwSjVnZnZp?=
 =?utf-8?B?d1Awb2d1emhOcXdXcUs0bHhNbUxUaXF1TVp6a1ROaUhlRlkxQ3R0NmFZamt0?=
 =?utf-8?B?RjlrbVczQVdhenNBNmZiMVdqY0pnOUpPRlVtYVVCYnZuNEp2aEtyWU9keFRz?=
 =?utf-8?B?SmRCaEJNaWNmVHlFQUpBMkwzeHI3SnNidzkrRkRGaGQxdTFxdTd2aFlEOTQ5?=
 =?utf-8?B?VUEyVXZKNGhPaHdPL0tZMjFqaW1sSDcydk15bG9uMkU4STRYb3ZjS2R4MWpJ?=
 =?utf-8?B?YjE2cE02SnpKMjE1eDRScElNZVhCcnE0eDJTUE1FUTVUcUNpOHJaekUzNjlD?=
 =?utf-8?B?SEhncUpVREI2ZEtJeDAwTko4MU1RdThGNlNNSXhmclpyTllkSGY0Q1ZkRXho?=
 =?utf-8?B?MHExTGllMHd2bWZ0ZWUycU9LdnVIcWNmWHJIK3cyT1MzaSt0eWFGcEhmOFRC?=
 =?utf-8?B?bS9DcEd5OG45emFpeGFyMmtZREE1R21HeDJETVNQVWFwVXZUOWU3Z1I4bE4x?=
 =?utf-8?B?NG1ocyt6OHRlT0FPWEtpMmZiMkM3amJXTnpoZ2xQWHB4bmZxZTBmWW14WTMr?=
 =?utf-8?B?KzhsZC9TcndPakZEZVB0MjQ1ZkNQWmdLMWk1ZkI3L1ZqaXhzMzVzYXhuanNu?=
 =?utf-8?B?M2wyd2t1bnNpd21hWGRpZk1ZUHNoeG1wc3ZGRlBSaitGd0wydXV5RXluQTFs?=
 =?utf-8?B?VFIzUXZHbGJmUVBCd0ZqQ3BzZWtIdTZaVjRDcFdzVjZQQU1vM1lUbmlKcU1F?=
 =?utf-8?B?UitHaU5uWHpCcXRFOVRLQzFJcWt1YUtyS2dpS1o0N3RXUi92dVZJK0FhWHlM?=
 =?utf-8?B?S0g4Q3ErMjlpcE9DY3lzc0lzd3B6YjlmWFFwaW5NcGFnbzVnamxuN1l2dGJ2?=
 =?utf-8?B?MlZyWUp6a2lacUZCemNFRVd5Uk85YUlZZDNzekZkRWY3RDJPZkRtTjhYOVgv?=
 =?utf-8?B?cDRibFZtdEZIakp1RXhzc2crMDFiYXlLNDFodkpQMDdDZG9XMU11dHk0ZmQ3?=
 =?utf-8?B?d1c5MnlkQnZlZllyWEE5bVlhay83dG9WbTI2dUxad2lhMFQzL1FSOEhEMitl?=
 =?utf-8?B?VHc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: f738e73d-2b3b-4fc6-78e5-08da9ad63e20
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 07:03:38.3278
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mCUlNMaGvi/ygwevM7p6D1cvpI/2r8FywvHPglQ+jII0i9iLxQbJt4d52MJC4GJIQmJ8PfKMTsQF+1lKdSgPzRFKuQlBMuDM3KthNbHW+EM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7348
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_000344_880856_B4629BD9 
X-CRM114-Status: GOOD (  14.19  )
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

Thanks for my comments into account!

On 9/19/22 18:46, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This adds the DSI controller nodes and DSI-DPHY controller nodes to the
> rk356x device tree.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Acked-by: Michael Riesch <michael.riesch@wolfvision.net>

Best regards,
Michael

> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 80 ++++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 319981c3e9f7..0473d7ee2668 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -699,6 +699,62 @@ vop_mmu: iommu@fe043e00 {
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
> +		phys = <&dsi_dphy0>;
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
> +			dsi0_in: port@0 {
> +				reg = <0>;
> +			};
> +
> +			dsi0_out: port@1 {
> +				reg = <1>;
> +			};
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
> +		phys = <&dsi_dphy1>;
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
> +			dsi1_in: port@0 {
> +				reg = <0>;
> +			};
> +
> +			dsi1_out: port@1 {
> +				reg = <1>;
> +			};
> +		};
> +	};
> +
>  	hdmi: hdmi@fe0a0000 {
>  		compatible = "rockchip,rk3568-dw-hdmi";
>  		reg = <0x0 0xfe0a0000 0x0 0x20000>;
> @@ -1594,6 +1650,30 @@ combphy2: phy@fe840000 {
>  		status = "disabled";
>  	};
>  
> +	dsi_dphy0: mipi-dphy@fe850000 {
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
> +	dsi_dphy1: mipi-dphy@fe860000 {
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
