Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7874AC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 07:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=x9jcWysWmT+fHwsFI/rXn4M2YogYGqqrazYNtWdEIXU=; b=ggKYB0ZBQZqyvJIy6ZF8dkSE6E
	G6+qBr3VE0+TzHauOqOB9OVStIgkFxkPARZ6AOhbdfnl5VBGjfW0nd9yMPAIP78Mao6U0WYYxBsN2
	koL4+RzH9z3ALfz+DtLbUDp83WweHWZwAJiyz6cflbQKPLny0+kvWqltBKzVf8l+IjQ4RIYXiWm56
	4ze6iTK3zXoictErqEHZms/FoH15cSp6HpbalYk4gHrTXG66iquO478mj6k1ON7Nrh+CX/KajGRDk
	eRux8yxyzWR6tzD/xWbNH4/tx5xQjMp0cAGM0iVQ43npeGFG0TD0fxJMY5enfIEYrx1h7GvEJo1WM
	oDX73/Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovvPw-002TQZ-7T; Fri, 18 Nov 2022 07:04:04 +0000
Received: from mail-am7eur03on20628.outbound.protection.outlook.com ([2a01:111:f400:7eaf::628] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovvPl-002TOi-8X; Fri, 18 Nov 2022 07:03:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YM8TyAsMClqMMhN/Kw32Hmu/Stf09ml1Vxr/U9BC4GD1ghn/ryqBUhkdLS2jSi/5siSw2MfJLwgWjjix63NyjoVgMYFaJ+RrnpsMy5v1+tMXttuPvyZbIgNmIZjMUXcRQiZCxMecYoVoYApNWC4bT0VsdiX5vUnEbCGHqFGUi+XSxUO25jOsVuT85wSQdm9Wy+v9qNXNF8fPaE6Y/HzAqyM67ulzpjwZ1b1/frCXsmE+SXCqxRd0mj15pa9fPT9R7WAdxeZr02tdAx/XBpQnYaXEeoW7BTkb98rtj4RjQQlXtec9ZXOG3ZNjpwN/I6Jj5J9vgeqtqXQsB6tI2dZRVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jkrcbQpcXNaEcEHymaAhpZalEC4/3PFqC6zO0d4yy+0=;
 b=ijoPSRdxvuo2Fqiwu/bfAqYM+GtaLNXbkFoBZg43UbbskRg0MOLGdLHwpZuA4Yc8jvHTtlcK0DSqR1DE/AgZ9QqQ9g8VJ9JC/3ZQAhImQMEJjxlRbvvTQ/cHu/G6j1iKfS+b1WH5sNq3f/hCsOVG8uotuCaJUJvUu4/OjnoUv80maZXPE9cGHSo3+FIT4ZTMZSqJnd47cO1zTko5jXNCkablzTMipQP4lBcwg/tDGq651pVP+sI5eYK/8rZkS6jIKZhNwpyg8gz5rHLFHZXfJTp5IGaKoKzhNc2T8Wv4rajqX1HoVtHjtE5ZWE8XtfExzQLP4CV9OVMRvw4X4aPJKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jkrcbQpcXNaEcEHymaAhpZalEC4/3PFqC6zO0d4yy+0=;
 b=SXu/AwIpCa/1aswmfKafC/JJN3CnOnsjTY5dUpRwFwGGTkq8xjf5iXF+SwrgikfSmCCnFI+Hdysdj32yxJu2Kkru9SiS7bs9WfB8ASRdKHtf839C9vilOXfYoJxlrOTdNY3YjUTpE6t3WhaUwUJPr5Dh34IYA4oSIuw6eEQ7Owo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DU0PR08MB8833.eurprd08.prod.outlook.com (2603:10a6:10:478::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.8; Fri, 18 Nov
 2022 07:03:47 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::3643:6226:28c:e637]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::3643:6226:28c:e637%2]) with mapi id 15.20.5857.008; Fri, 18 Nov 2022
 07:03:47 +0000
Message-ID: <bdcd2071-8f56-b829-7e78-3fc9efec09fc@wolfvision.net>
Date: Fri, 18 Nov 2022 08:03:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [linux-next-v2 1/5] arm64: dts: rockchip: Fix gmac phy mode to
 rgmii on Rock 3A SBC.
Content-Language: en-US
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221116200150.4657-1-linux.amoon@gmail.com>
 <20221116200150.4657-2-linux.amoon@gmail.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <20221116200150.4657-2-linux.amoon@gmail.com>
X-ClientProxiedBy: VI1PR0202CA0025.eurprd02.prod.outlook.com
 (2603:10a6:803:14::38) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DU0PR08MB8833:EE_
X-MS-Office365-Filtering-Correlation-Id: e9403ec0-0059-438c-cb73-08dac93309d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	vUiocD3Hn8L0WO6WRCr2SNjmFpIHK/YD4jIQUBTZ8cq2WvhHuUaaVtGvg41jDVAm0juznRRsiMWwMX2fueFdyh2GpDoPiA0DSAHPasDB5/vNtBFYkraNULaNVUKdKJH7/v5uo4GEsKmkZX7G9I//wogCmghMiKzZ4+ETv4pGsh3BE0hgKT0M4uI7YgfjiO++K/SHlNnEKHqnAUAzq6bnHKClaqwEZcnOuBpPDn4Qcqx9X+9xBGP0xeJnDYdDuQ9oDEM9y1iD/pjR465elkLMq6mxN0cr6M/B25z2YkChF83sPoTMzdW4W+yZmODqdcfAYB1MMMPhH4T/3Y3+XA0y59yvqvKtpOl28tb17UKDM2YPt7HcRgUOgAz3SW+Sg4xwkkyhj9ZddbKv2d6kelD4OketBv4jg1w6uxFMd332sM/VHw8qGzJHnl9SDF7pyFUv0m91iYmim6uAADw5j2rQJYo/LHTgWYi2tt4BHjvVbEVUKnR/tfIgq9Y4UEM/tAptLY44ce9eHXMpeAse3PAvxBgrNFvKu2fYVnpIfxe39X/yEb5slv4VBHTI3gZyilZMc9kLJo4Rw0SfsoMaaoPOyPdhENouKhug8w7emNU7LjnO1+P5eSCGpH7iG4TiPeVA4MRMyGCrBRL7pSr2qY7SpqWbVH9NKjir9ScWjYYhODEDr2sO2eA//IjT5EOWZ0l3AGWHqJWYZGtopSrc9etSj51DUctbqKla6KvQPXqg35/gL8tJaJtQK8rNfUOkPttT
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(136003)(396003)(376002)(366004)(346002)(451199015)(86362001)(38350700002)(478600001)(6486002)(38100700002)(31686004)(44832011)(36916002)(6666004)(6506007)(83380400001)(316002)(2616005)(186003)(36756003)(8936002)(2906002)(26005)(110136005)(54906003)(52116002)(53546011)(41300700001)(31696002)(7416002)(5660300002)(6512007)(66946007)(66556008)(66476007)(4326008)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?Q3NqWWw5blM3Y0EzY21tSEUvL3NuUGtNY0tVTXVKM2lNaW5pSnFUZ2lNWVJj?=
 =?utf-8?B?UkM3OEhwTks5U1JDQjdFQzJYbjM1Vm0zWkhMekF6QnN3Rk93cmVDL3RnTmV3?=
 =?utf-8?B?UG5rYWFZNjR2OURvL29Ja1RESXkvcTM5eUFYS01VaG5oekg2MklwelRQandJ?=
 =?utf-8?B?c3IydS8wdlgxSUx2c1hYekVSVTU1NTRMQ3psUms0TU03WFBJT3ZkWGRUWUxo?=
 =?utf-8?B?a2tHL0hqU1p5T0VydkhyWTB4VjdDRGlTUGVOV2xkWG40YmpyN3h5RXF4T0F1?=
 =?utf-8?B?dnJCZUZxYXBOT3dESjVzczVSdC9MY0FnQnRITkZvOVlocWNkRUpZU1ovMWxz?=
 =?utf-8?B?MGxWR0tRK2hKSDdXNXkrVStiNjhwMDltVFJncHdyVHZhckRpbE1PUW91emlo?=
 =?utf-8?B?MVJ3R2hmKy9aTFhGbHFhbU5MZ3pNWEJJNTJ5TkdsM0s2S1ZMY2lBRWZ1ay9F?=
 =?utf-8?B?Rm9mVHEvY2NZZE82MTZxVlBZQkJWcFgvcnJxNFZud0dndlcwcHdsVUpndDJw?=
 =?utf-8?B?ZG5ramFlZmV6SFNpeHBCSFVLSmdhTlZlTkNCMDBRR0ZNS0NGbm9WM3lHeFlS?=
 =?utf-8?B?WnNRZ3ZBUWNQWktXd1ZVQlpaQ3pEditpL2FTQ0k5b2doY1I3TUFFaVNjcHdS?=
 =?utf-8?B?Y2RLcXNURUxYNE0xWVBIZENIYnpZdHFjM0N5aXoycmFoSC9OWTF2THRJNW5r?=
 =?utf-8?B?THBVdUR4Rnlta0p5VHo5MUh5UUk4amc3NHNKOFdSazVIRmlaQmhmWkNRZ0hK?=
 =?utf-8?B?VndOdkZURDJuTWE1bU54L0RhRXplV0JFeEQwcHNwOHNGZVNLWHRYVC9nSzFX?=
 =?utf-8?B?UTFsUnNNRXVpV08zcWw5MHE4bis4RnZkYngvQ1FuY3BZaTdpUnFTb1MyVWdw?=
 =?utf-8?B?Vzd0d0J6OHRaM3JoRDk0QlVlQ3kvaFErUVh4WEF1bEE2TnB1TE83QWthOW1i?=
 =?utf-8?B?VFB2VVBWQi9abnlNWU0vTFpjSytSV2RZWVFrZGQ3NndQek5OK0pXeGtNU1Ux?=
 =?utf-8?B?V2pnc0NTOXU2SGwyZ2F3S3NqdWtDcUc4Sk9zT05WRjZ5WGdFWUVadmJUOGNF?=
 =?utf-8?B?Q3JtZDEzaXRxQXJpQ3RaV3N2TWkrejViSWFHT2FBWUF6b3g4WkRJK05kbDdJ?=
 =?utf-8?B?RG8xc1dyblFJckkzb1hFaVRnNmZwblUvZHBTM3F3djhUL3BwVzdZSWZmYnVS?=
 =?utf-8?B?VEJnL2JzZTJHbCsvemg2emRFU0VxVkRDT2gxenNqWldjQ3U3amRWOE13VXpF?=
 =?utf-8?B?OGJ0M0t1UGRoQ2o4RFhGOWZWNU8yQnhQSWcvT1N3WUlVYXkxa3BtOHVYZi9P?=
 =?utf-8?B?d0prdDNIWmw5aWdzSU0zWDVNajBPUy9MVmR2eHR6cVdRL3FtcFdEcDVqd3FV?=
 =?utf-8?B?aGRZQjU1ckp1UmFNRWY3MkZUc3BMZjZlRXVxUEJmWDFUY1ZTbUY1S0l1Z0dq?=
 =?utf-8?B?RGxGNHpBQUo3KzYrNzZlVlpjMEhPWXBSSmV0c1dMa2hvREpNdmZXblpEbkhi?=
 =?utf-8?B?KzJWcDhlcVVGbUVFZVJNamxIbEs1L01ITXZHYkRSdmNWYzhVL1VYbWZES0VJ?=
 =?utf-8?B?a3p5STBrMHM5TW1qUVZUakVqMG1JVDUvNDAzM01xT1FrTmVkR0RlamxQSFM5?=
 =?utf-8?B?ejY3dUQrREtFWUhuaHVtWjdiNUlVdG91aGdMQ2dmdTZHSVJERzV2aWRLek9T?=
 =?utf-8?B?TzlrdHUrRkdjUWp4bmlpSnVHV2VrNGxOK2o5bnF4a09JeUY1cTNQTjZVenVU?=
 =?utf-8?B?YWJKK0ZxbjJzS1h0T2RJSlBPRDJPamgyUzBDbmVZSGF1aU5qZ2lGbHRTNHZE?=
 =?utf-8?B?RVVkZ0tWam10dXV5Unl6MUh6MVBXT1h6eG14Mi9vNFFuTlZVbWVxdGIzWldX?=
 =?utf-8?B?WDJoMitZQmxpVnAwWThjOGVNM2xTNEtGMHlVVUppMWRNeEJVcTd2TWgvSlha?=
 =?utf-8?B?dWsydDV6NkZaUkE0emhLMzN5L3QwbFkrZkU0UmgyRGRPL3JzUWNxNndtNHlU?=
 =?utf-8?B?WXN5dlBoMUtpVDZQUUo0K1k0SHpTR0hrN3FJMzQ3V3Vydk9YK3lIR3ZOaU15?=
 =?utf-8?B?Y3pLaGE2Njc3aHQwMmoxSTh1K2JCVlVOejM0NXl5ajRFamJ6SkVlUnRkV1Nq?=
 =?utf-8?B?OHlPaGhiY0VsdFc1L2MwMGpBUVZjaWYwRVZ3NXZIVjloOXhCelhUSHlGLzNx?=
 =?utf-8?B?M0E9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e9403ec0-0059-438c-cb73-08dac93309d0
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 07:03:47.3258
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4rNbIyW+ghprJoOeOFT6R2/4aNXovoZjX5rmiGCamRjo8XpNa3MZnWyUTq+7DaPdAe5N0qHEpnfXQRl7T4xwKFbXRYcgaf2TeFtfMn0zmPE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8833
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_230353_536619_C3F392E1 
X-CRM114-Status: GOOD (  19.80  )
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
> On rk356x ethernet phy support reduced media independent interface (RMII)
> and reduced gigabit media independent interface (RGMII).
> So set the phy mode to rgmii to support clock delay, also
> add TX and RX delay for phy-mode.

Based on this commit message I still don't understand what you are
actually trying to fix here. If you encounter network problems/stability
issues, please let me know what test triggers the faulty behavior.
Please describe the problem you are facing in detail here or in the
cover letter.

> Fix following warning
> 
> [    7.365215] rk_gmac-dwmac fe010000.ethernet: Can not read property: tx_delay.
> [    7.365219] rk_gmac-dwmac fe010000.ethernet: set tx_delay to 0x30
> [    7.365224] rk_gmac-dwmac fe010000.ethernet: Can not read property: rx_delay.
> [    7.365228] rk_gmac-dwmac fe010000.ethernet: set rx_delay to 0x10

If the only purpose of this patch is to get rid of this warnings, it may
make sense to set them to dev_dbg as Peter pointed out.

Best regards,
Michael

> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> V2: Fix commit message and added the RX and TX clock delay.
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> index ea74ba32fbbd..e1c75532dcee 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> @@ -253,13 +253,16 @@ &gmac1 {
>  	assigned-clock-rates = <0>, <125000000>;
>  	clock_in_out = "output";
>  	phy-handle = <&rgmii_phy1>;
> -	phy-mode = "rgmii-id";
> +	phy-mode = "rgmii";
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&gmac1m1_miim
>  		     &gmac1m1_tx_bus2
>  		     &gmac1m1_rx_bus2
>  		     &gmac1m1_rgmii_clk
>  		     &gmac1m1_rgmii_bus>;
> +
> +	tx_delay = <0x4f>;
> +	rx_delay = <0x26>;
>  	status = "okay";
>  };
>  

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
