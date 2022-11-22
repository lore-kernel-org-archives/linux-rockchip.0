Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3767DC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 16:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dkrCXXZwM8OioMVfSYj1vf92SL4TuEydWOK+vRl0GC8=; b=TVg2pl/9T7FDQUZ3YmVviecqeK
	lx7zAHfMliXqc46PYamNodGnfdnKQ3wrqt8jtyXricJtz0TJkM120NAwHPKnRJGZo3FGTlid2VhQm
	xK1GIOwB+Nb6oEfGoJVRJgCUhxf1o6sDBVkp70CdxiNMqXKGtiNLHD3e96H+OB9SVLjxLlEPK1XWF
	mCK+wN8sHlzvt7H2/7hxPjHTKbPSIytuxJlmplZhDxbXJjg/v3nmNLZYmRjGVfJ91kca+q9EKAd67
	yTcZ70XWUINWYrdZ/HdlA0TqG1EN3N9Q+8NayWm7G+EGLNc3F2RZ+gTjiS7B7X4WlIoGhSMoFBlSG
	lt4uVHuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxWQ3-00Apt1-6d; Tue, 22 Nov 2022 16:46:47 +0000
Received: from mail-db5eur02on2060a.outbound.protection.outlook.com ([2a01:111:f400:fe12::60a] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxWPr-00AppY-Qt; Tue, 22 Nov 2022 16:46:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eAoEPTbgqeDAZFN8TUzcjflCrFx9cegc0C+gobHsixrCtmoxNb3VhwidFNIBDyp3WS9+om9g8rBZkSHLOKPVtrbbUJwlDNddxu0KUaXGMle2OWhpeiwAMWfMeZi9cHUDgFlE6SzgeIBDP4R2MtRdl7KAZ2u0Iu4+siyTU0sWArnQd6liCAytYKUdzJcF63MQw8rnECmHkDww2/W1BRsc2noDQFv1n1WzZs5riKjQYbpTX9QJMAVWOu3O4rU2tXEw0YFTN7S06aAUFWlba6u7SuRsBochOI4WubcYpF8keas35Fh7NJy19dmBy6Fp4OK6gKCY/3DrPXZvuJ/4wdFaIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/BfsNqNSDuULbl13qwdUaRAizeIlWxJBMyk1qP5vJXU=;
 b=O3jZboUb+9td7aRyAnWWXLWfx3M+wyBlPkhOfipiRE42kdwMqC0ZEpV44z1B+kocpgaiQHGApQuuRDXga/kFdVZac+geFIFfWyUnG4o7fySXfd47t0eerDauwJUuri9lVIdR8iCK+qgybMBrbjTSDOlCnyqP6cOc/I5QqoQx4MG73ej5g3M7fDD8pZenWFiucFH1JGe98bwlu7qaUaFvKUspJAHY3HjLx57N+gVraWDuN4enzKah/tfpTn7MNl9OB3jtnF6OC3arNqj9s1qnbGf+xWdOSecpajqRimkRDy1fBOCO7J4Qo0vZde1OH9E0Y1olBjEtXy/Zk3pR5CkmHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/BfsNqNSDuULbl13qwdUaRAizeIlWxJBMyk1qP5vJXU=;
 b=UtNPLiyWHCqwe4TDj07GuHDiyANJgxJUbDHY8RM1q0jSWdhLJ4O1hUGRHy+COVJ5ilEoOyV2/i7nzRvPrHsHZbXdWzb/qk03jWNppeeldvTqTSqI7NX0sWaw31cRHueGkuXf/cVixV4hXwMcFk2MqMkGS1Lzm1cR7xPUqNFUtBM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AM8PR08MB5780.eurprd08.prod.outlook.com (2603:10a6:20b:1c4::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.17; Tue, 22 Nov
 2022 16:46:30 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::3643:6226:28c:e637]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::3643:6226:28c:e637%3]) with mapi id 15.20.5857.017; Tue, 22 Nov 2022
 16:46:30 +0000
Message-ID: <0f0c87d9-cff5-3bc8-07e2-7022a190cc86@wolfvision.net>
Date: Tue, 22 Nov 2022 17:46:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [linux-next-v2 5/5] arm64: dts: rockchip: Add missing of
 ethernet-phy-id to reset the phy on Rock 3A SBC
Content-Language: en-US
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221116200150.4657-1-linux.amoon@gmail.com>
 <20221116200150.4657-7-linux.amoon@gmail.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <20221116200150.4657-7-linux.amoon@gmail.com>
X-ClientProxiedBy: ZR0P278CA0023.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::10) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AM8PR08MB5780:EE_
X-MS-Office365-Filtering-Correlation-Id: 5fbddf52-a960-4733-a893-08dacca91b40
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	/lROc+y7LV8o/0tWfwq7UjZRSF1m8zo1f+Oux/Oo1rbpDRKXif4ABCA6RZeCMxBAepoo5ZL81PJyNsxkKKcXQiM27oZkas8XLjIxgEXLsOV77IkjjWul9cH+++RS/f/L/3TJdUA/s4Kz3Xz8gZRzlE/1weGwxPUZWJqTrbRZM8vZ8m+8SKW7rHrLPHhcU5vK17a2vYoVPbsnoLoFk9r6eJHz7Mj5wGqsNgaAoKHokYskKypfPayxYB8tepY1Kawwq4XgHUypl00WBG1A0j5TGW+1A9Xr/mwOfbcEmKYHMY3cMVtdlVjmbu9ue2nmf9hfkGn1RUzQ1Gz5HYMOtMItIC+rv5ahtD7Dt9FFonYi53z+tV/HbDrFR0E4b4PrLpqcmw0qmRahEhaRosSRtTMqdbQBUdgJevvnpt5exB89baI1x5kcyFn/ee0siGrA97BNz7uuJnQN7jP1i3ZxwFyOa6R+oqHsYr25gjcmotHy4IyNCLvaO2O08LtOoQxgaOOuav4u/1hCeG4oPxLf34xtwxHbyYAS1PeGVTV82ZtxcKfeOVtWHGp52s75WYwLQJd9fvu4/+RXZEeKqNDx5XRhlhFCKN902KH/keUTDu7NlOZwEZJuJKNTKyRUCWOu0l9A73YDb/alqy5+WiC6c2aBxKoMI8RLwxEA4Ay4Jd8BNoiVT6rFz21sE8qUEBBadDxCQuZ9VCzEaBDdNuljc9953wKfAnp71SO1O2b4D5CNSKQ=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(376002)(39850400004)(136003)(346002)(366004)(451199015)(6486002)(478600001)(110136005)(53546011)(2906002)(54906003)(2616005)(83380400001)(38100700002)(36756003)(186003)(6512007)(6506007)(316002)(52116002)(66476007)(4326008)(66946007)(66556008)(8676002)(8936002)(44832011)(7416002)(5660300002)(41300700001)(31686004)(86362001)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?SWdvSHljSUQ4anFQODlYUUhPaWFqTGU4YzMyS2c4QnE1UXRER0YzOGY5SFVY?=
 =?utf-8?B?dTg4OHpDZWtMUmIrT1U3UHBSZzk5KzZiTTB6SWYwY2dyV1JHdjBFeTVNT0pQ?=
 =?utf-8?B?TE43VFFwV05XdFhnTitvM2xtZnQwczFZUTBWc1U4LzRDL2piN1RmSGlSa2JZ?=
 =?utf-8?B?UldRVEdvZE84RkNQb3ZOd0lQK2VGRUlwTHZKejJrRzA1L0R6cGJhM2IxZm4v?=
 =?utf-8?B?d3c1OUt4cmhNRjduZUluYUNMN1lhVXhtbHdBcU00ZmQ2R0FtZm9DbFEyS1JZ?=
 =?utf-8?B?YnpCbldXZTNyUTM5RkNQZXZqTEcvODN0WWRKN3lKaTVqK0pJNVNXK1B0eXdL?=
 =?utf-8?B?aW1sQVM4Qm42dENDVTlEWEwxMlRIY0dqalA4a1REb296NHhUUkRPMjRVUVhU?=
 =?utf-8?B?U1RRdVpnNGEzaDNtekVFcU5ENWlYbm1CeWhmb016bkdFOERhRWUyTjJCRGc3?=
 =?utf-8?B?VHZVbVZvU3hYaC9FQ3NFc0NQbGRkVmNMQ1I2WGNnRXdCVVpjNEFKRGlSb2d6?=
 =?utf-8?B?dHd3Zk5lL3VFMWlIS1BOaDBWanBaMUpqQmIrRmczK215ZktMbEVNajBBWStJ?=
 =?utf-8?B?MVEwYnQ3VS9rMWVzamdhY3hiVTVQaG5OSHZIUEEzTVJGcXZ6cmJHSzBYS1Ru?=
 =?utf-8?B?Rzh5YWtmbmhGYVlDM1d4QmRvTDZNYjBnS2pJOG1zMnBWZnNZdWxrdHlCdURV?=
 =?utf-8?B?QW5rWGp2YzJrL2tCMlUvekZTMk11TFVkOE93YUJrc1BLQTFLOE1ubnJoZkRr?=
 =?utf-8?B?VWs4UGZ1WW9zMDZPdWxPeXNBU1M0QXk4YklPSXJlZFhFTW1PNEF6VHBrR0to?=
 =?utf-8?B?bm9pa09ocEk0eHgxdEhhTWJGaTVKdW80QmRFa1lTVzJSM1F5Z3N0REV5ZEI0?=
 =?utf-8?B?bE96bEc1U3FVT1oydmpucmlUNEgyemhvYzhYUDBGOVpxek0vUEJlenRPM2dU?=
 =?utf-8?B?SkVrL0Q4aUxRZGE3bTFDbmdkMU1jTC9kdTFKT2grd3d1dUFnVndXM2ZqQ25u?=
 =?utf-8?B?SUJHNitFR2NRZkJzWGdGZW9qK0ZsRVVWQmdIMUJRU1c0SFNZMHd5YktMNko2?=
 =?utf-8?B?WHhxa2k5amNTVkw3ZVJCaW53S2NoaFozQWFrQlFQMVJZOEFvSHpQZzZuQWVF?=
 =?utf-8?B?OUZQMXYzdE12K1BmaTVvTFF2a3pGVWRtM25UdGlFWkJSaW9oL2trUUtROERl?=
 =?utf-8?B?Z3dNazZLRGZpcFZKSW90NlhabTlyMkQyWDhRMEZpZnQ1OFVtMmswcVZiNEdt?=
 =?utf-8?B?Z0pyc0NidmN5cElsSjRQbVVaYzNkRURUd3ZxdGpIc1VBVGl1MGo3MGVyWkdQ?=
 =?utf-8?B?cGphU245c2hoeEJJQVdpcTVORXRLb0VvRitXTlBpSjBGS2xWV3FmZDd5Kytz?=
 =?utf-8?B?NVRHeXBKUnJGSTZ6RC9iNUNlOFJ5RitVdDlGTm1wRmRod3NSQW9CUklmRENj?=
 =?utf-8?B?dU9NUktsOFBBOHlyb0hkMWNkTC8yclRDRWNLSEZlQU5BUUhPV1FaUWV6dVAr?=
 =?utf-8?B?dGxHMEV4YjZZSUMxUmdaTmxRQ0JQSVNBT0hyemJNcnR0WHNnL0ZxaXhIWXJn?=
 =?utf-8?B?UDVROFJDa0xBR280aXRKNlFMMXFNbFl2d1YrS3N3WERXZGpua0pLK3Y3MDNV?=
 =?utf-8?B?Vk1iZSswYVYvS0xhTi9rbkVKaGQrSVcxYkF0ckxOM3RmTEpkdHhqekp5eVpB?=
 =?utf-8?B?WnRSYVloMEdtYVVWeFNZMm5kL29zVmZBdklBS01nYUxsYVl4ZUQ2ZWZLN0Yv?=
 =?utf-8?B?TlVESWMyY3h6bGxieWI3cGNhQXNBUW5ubGpqZFExbzZhU2c4Y1l3cWs4M24y?=
 =?utf-8?B?TG5VU21nb3U4WnlPQmpEMjhOM0k1Z2FGSTc0WEZOZ2ZPK0N4VEprVmdmL0hF?=
 =?utf-8?B?dlVXdU1GUmF6d2VCNFRCVUlFQktNdFZNcUZtR3dOMDdJZksySWUrSS9JU2Ny?=
 =?utf-8?B?eVoxb3ExdENOQWtHK1IveFUrQkhSMTdyVmZ0VlRHV1I2RkcvOHpuWDljcnlj?=
 =?utf-8?B?am81cGZvVUNTa1B4MytnVFl6WG9POVhTWTZUT2RMb2VyNFNxRmc2MlpjcUFQ?=
 =?utf-8?B?S1VjalVkelBqaUp6OThqWmdTWjNIc3dRQmNVU2tLeEtrbHQ5WEE2NGJHVG1Y?=
 =?utf-8?B?Uzgzd0dxS1Z4RkRGK2czNWhEVWhxU0xONCtEejlnUmxmNFp6Ym0rMEJnaGRW?=
 =?utf-8?B?eVdkalg3ZzJsSW1jajBoeWVxU3V1U0NST3RsZGdEeElxM2VUZmx1R1JLR092?=
 =?utf-8?B?d1RmWm1UTElBZE9ablBUQjF6Z1FnPT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fbddf52-a960-4733-a893-08dacca91b40
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2022 16:46:30.6357
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F6fCOSn4Y+29fUnPCiitTo88LLSOR56Yuk/qzc9JvZtMEXTOCQRCUCHhQzs674KmNXYXW9o1jTnhd+Nk+XLGtqXkl+P8PBDZsFzE+woK0eU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5780
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_084635_932989_63501530 
X-CRM114-Status: GOOD (  20.56  )
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

Hi Anand,

On 11/16/22 21:01, Anand Moon wrote:
> Add MDIO description with ethernet-phy-id compatible string
> which enable calling reset of the phy. The PHY will then be probed,
> independent of if it can be found on the bus or not,
> and that probing will enable the GPIO.
> 
> ethernet-phy-id is read from ethenet register dump reg2 and reg3.
> 
> Fix following warning.
> [   12.323417] rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
> [   12.324078] rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
> [   12.324099] rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)

Without this patch, the phy on my ROCK3A is properly detected:

[    1.494963] rk_gmac-dwmac fe010000.ethernet eth0: PHY [stmmac-0:00]
driver [RTL8211F Gigabit Ethernet)

but with the patch applied, only a generic phy is recognized:

[    1.398674] rk_gmac-dwmac fe010000.ethernet eth0: PHY [stmmac-0:00]
driver [Generic PHY] (irq=POLL)

This does not seem right at all. NACK to this patch!

Best regards,
Michael

> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> V2: new to the patch series.
> 
> alarm@rock-3a:~$ sudo ethtool -d eth0
> [sudo] password for alarm:
> ST GMAC Registers
> GMAC Registers
> Reg0  0x08072203
> Reg1  0x00000000
> Reg2  0x00000404
> Reg3  0x00000000
> Reg4  0x00000002
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index 9f84a23a8789..fe36156a5017 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -585,7 +585,7 @@ &i2s2_2ch {
>  
>  &mdio1 {
>  	rgmii_phy1: ethernet-phy@0 {
> -		compatible = "ethernet-phy-ieee802.3-c22";
> +		compatible = "ethernet-phy-id0000.0404", "ethernet-phy-ieee802.3-c22";
>  		reg = <0x0>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&eth_phy_rst>, <&eth_phy_int>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
