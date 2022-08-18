Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C18C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 16:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I9Twb7jVWsZJoL4un4CA+7m/ZaLmwr7SaJYlFc1YoTY=; b=UQifIiLVReDhlq
	xci+0ENU+H/Ysxh7HnYbUabqI+vk9eIlu5oYye9F40tlbM+bPjYttFTF5Y8cpFnpIr0eJ8Xp71X/O
	TT+jmFZg6VKKsFSJJH0VoJz80XCC/1iaG7oEV3q/7JoIqSI0EeYOrYqflGnP7sOm3RsmfRJICJ11I
	kD/NHEKve5nPum9KeteBX4I0R9wxWtaB3Ckp2Ksvsl5zSWDsXCe8Z00/nuAzYLVCI+VbZKKq4lvsJ
	qMks0HrcfZK3hIXTd5rPi05nDlUv0FP4Ag1EVjLK/lEFXS/f2QM5X2caKq78Lf/Wh6hnLXG6tS8hm
	wTHoXBqYjKkItrie7A8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOint-007JAL-BM; Thu, 18 Aug 2022 16:55:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOiT6-00798Z-LU
	for linux-rockchip@bombadil.infradead.org; Thu, 18 Aug 2022 16:34:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:In-Reply-To:Content-Type:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=F2HhM3Z6Bws6TCI9aXLA3zPaMhwDWu1yaCFSC/hvXKY=; b=f/ORguZT8G4aVxziW3cMlEhdED
	M9TwNmIydybNGJaFvz2/SsBEVjju7nzslRxNjujoJi7RW4Dgzg2PbYEia4roa8VBOEIrhXUgeWyqh
	vbSOnGn3sROrL5kUQZ8L+6pRFyUHKTmFEt8OvNdd10mfIMHKKjenaDGr1ri81xfyriqTGHhx09jmE
	oIcZrtQTsgqZ4CstgBy5YAu8TzM4xi9zE9/ZziUB5AsP9DipexXqgkyaAxXnmCH8dKAixYIsO6Jpl
	txhI6OY4RWt5bjEwkN6fNlITDzuOVVKYf/PhcAjiF1ayW5pwF5mv8RZtPMwRpcFm34bAOu+TIFdMA
	PzY14N8w==;
Received: from mail-dm3nam02olkn2078.outbound.protection.outlook.com ([40.92.43.78] helo=NAM02-DM3-obe.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOiT2-003dVD-09
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 16:34:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I1ITgybrP4KYtvnkxCj6lr1cmvlCi25CTV0zkC0vtX4TuIxgrz9qY5GnCCeQXfXm2WLf4tsCbhtJCdo6nUy3ONJZ+nnUFe2MEskRhS19F31NSKTIgSW8vm8aX6CWJWCZRlvqAjbovPPoJdWJP0+YV3owUU2cKRN2QmzxMyBF/NSxhnB6MqD5AOtLz7bQY8VmcZhNA7PZ0EcCiQpxX6eyb86ruP9OZU8Cp718lvBv/mHH0M3vJi3QE0Uim5M24DsS5W/oH5Qtu24qN89dtGprQJ2TZgAEu8Y1oMYyFKMrnj+kQSUVfrDGIrZ5fpajaktw7S2B1jsDWU/IPU0MG9xZmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F2HhM3Z6Bws6TCI9aXLA3zPaMhwDWu1yaCFSC/hvXKY=;
 b=g0sCyTP0qwkaTAM9OnShuhgUTKjzRRXYPOfauPYI5FXg/PK0otIMyQrg748aMFkVT6V/wr6Dul8EIK1qLivvxbiyv/ldJs9eJS07XXlA4YNy7+t9SuOhYCI7kEwV0vHHhwUuOGyPnhkXKk5VEXkyekQOBLJE74NupQWkggaiqvoURFAKaL7SSKbwle1w8rB8MefLb8FNjD4RoTw8aODHS2FkRR2UmBROOQOZwmpPmDOpq3BHUJJ2VHSj0sTaHbkwlWNX4l3u53JK7ziP0siDgiLY+rWnQUjv3PxLkQ0QpJhARxeLtI24CkSg6sw9JQkpnz2HFfppJ7/owWJEtDYVng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F2HhM3Z6Bws6TCI9aXLA3zPaMhwDWu1yaCFSC/hvXKY=;
 b=m1Js43B9tju+VAW+DxKx7kIKsa3eWnb2rgz0VVWEwD96YRI9tuawNr7FMwVL7k+nfHJ/PpsCbt6S/GwiJiqQlrFutoWl+DKD6t0q35hnyfnEAtxJCVysVcl9HJQkP/wMROKHH3/sD09oHKLR3oviipQNCqYrU6og5RXFiBUC+3h2J7LekAgSzYsgj19YGCyN12dPowi837g3FlNCIr8p5flEXe7/uhuLGPD7xeFC1GUDY/CvxZceC6jRMM9oKRsUFv6XJCu8FSp1HMszT69QOtr3i9A8QwXqsDLDf+X+b/tM8NDMjPFEH24KhJzIIbvzsxO6uqNcEmawIAE90nd4xw==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by PH0PR06MB7624.namprd06.prod.outlook.com (2603:10b6:510:5a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.16; Thu, 18 Aug
 2022 16:33:49 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5504.028; Thu, 18 Aug 2022
 16:33:49 +0000
Date: Thu, 18 Aug 2022 11:33:44 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
	pgwipeout@gmail.com
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add Anbernic RG353 and RG503
Message-ID:  <SN6PR06MB53424AA16DDA579063D11A46A56D9@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
 <20220817204954.28135-4-macroalpha82@gmail.com>
 <e30e41c6-04b4-bf48-b034-b722f950ac90@linaro.org>
Content-Disposition: inline
In-Reply-To: <e30e41c6-04b4-bf48-b034-b722f950ac90@linaro.org>
X-TMN: [FDwrmqTd3RgPOEbZHK99KaB9WxEWS8KH]
X-ClientProxiedBy: SN7PR04CA0165.namprd04.prod.outlook.com
 (2603:10b6:806:125::20) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID:  <20220818163344.GB3920@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1743091b-a13e-4b41-ab07-08da81376dc9
X-MS-TrafficTypeDiagnostic: PH0PR06MB7624:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	2EYX2esXGUemuS1k8cNto7VdDGkLpczkFe59XwX23XgL5Yv7+3ktK5ZxCV+t7MLM3f1MnbLe3zdfgzgi8mhNH+LhUePtHJYhyn1uG4R05952EU5QGKVshTZXVwzP4WdWj6YRnUBH093/aQR2/Jl4DW74b6jgXbN1sAOoKUChRe2P56RUYh4Lzxr3jg2wUu36tFpf0QjVoa3AsW39/Px32cnvQqrr81HyMyou8KB57K2yFqhfKDSao0Qz++eBApErhQaswN7/q06AlFJi8FFKTFzUYI/Qib0nwmkAwUclRIZO6rL+WXsg0e/AI7pJz7tu4fzODlt0Ki8kUjckUtDtTopK+TGvR7H3euRt9HY28RODg5FBoaWLwnvvFWFW7ojldgJBMrdC9TXdKeK9iHr2y6h8moMimsIBR3KD3pamh+d/O64za1L9Rxicl9kfYhOzb7WLRplfbyqGe3H2jfGJoiJzvfYsE+Vq1OkPaHIu5t2qQ2fBRxX7HenQDwRfq7+/jCQlYLXhVOfDUAPLx3Ybo/5BRTObQ1LtmDgNltfqjQFCHgyYncYWbw6KiExOQeS7Qc1M5rwRyWmlWsvQlO08mFpwcW+UIhYswC5I+2eaPEg629NCwXAslh/MCVTPRRSanI1ixr21gEx3KQuyOS0P3Q==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?gImcjT0iCZICX1ZS+GiCSmihN3MtxMbVlNIhaMysl0+eTuiRCPyRmfbYwLrQ?=
 =?us-ascii?Q?0VQEVjlqvxZwPCxSck2BKcoBKLLkSm9ouUydAys7dhO88f1UVNCsXx+hda5I?=
 =?us-ascii?Q?0FQkqcQBoLh/NjCvXG3JzcbUI0UIhF3n6kSWl7YqOLMQLnN2OA+/x2H8pxrC?=
 =?us-ascii?Q?tL01vMrBbAW1mCndpgAB4hGOV+DQMzXgQisAwUbblRBGuPoEGBc38xsvfzTm?=
 =?us-ascii?Q?bMh5BdnP8odFwRizx3NTPkysSw7gYpORUzlzUtNyPDRQ1NYXYxcPUyhs9P+K?=
 =?us-ascii?Q?r1dD+Tficn9+rDNIk46PEJIox1dzrmjdt4bKpxOIVOyjo1kS5dIziAuGsbii?=
 =?us-ascii?Q?w/nofLVlNZ2xB5Gm8mxD1w/dncaDvE6XJaTYHOyS97BPgaIikuSOPWPD/EBb?=
 =?us-ascii?Q?qFGa1J4lLzF99Zmg06s3kH6S52y6MLOKcqyrU+HmRzcPJNLuZXdRxx881Qh0?=
 =?us-ascii?Q?4eosNam3BjwR1EM64kUKSN1B6RpBl6RfbS/J9P2Mjm6u53mrzhiCAbtTZ5Pl?=
 =?us-ascii?Q?f1urX6ck0tlZyGj4b8AtMMhe2B/A7VK61mgr0XV2FdhrL4MuygwtOERVHBgL?=
 =?us-ascii?Q?+t5ZPKTLomd2sicvnsVpyZBY5JRm/bxATvLlqhlUDfuk31wPYNztK8RrAIw7?=
 =?us-ascii?Q?xzJeT3Oe19KNmO589nkJEhFGbESTHvvcOQgCqhmBL4ES7zNYBu6SVBFP94Qg?=
 =?us-ascii?Q?cXrPtpEjL3qlmtKVoOowBknIidDbYuYbOrRg8tIM8Uari1CY4V5YT3MCOEyg?=
 =?us-ascii?Q?eVUY51OoW5Y//D7/6xfB53VLszRceRIJBym76XwV2mFXaS9TyfihsxCyiPaW?=
 =?us-ascii?Q?moBzcq7rLRTlyL2TO9czBwmnTwXOw6WELkDjvZMEDHmOmRDUuk+h/KenAtpu?=
 =?us-ascii?Q?HiKg9sdtm/TnmBXCHFtiZZOca+HYmcO+8QSavlRGyq6MYUOummIGRnLE7wvd?=
 =?us-ascii?Q?H6v9zhRhUU7cFSmqsnoWrzTRR2RzNSk6DRIQ+uXfU6uSGWwebKeEwvXgF9HZ?=
 =?us-ascii?Q?f//ZqL4L1IDol4YWx8XIas3d8qCuQhK+88C5nuWpFe9+afTixmY9ytT1llwX?=
 =?us-ascii?Q?BKgct73PEpHpd/VYrgMNo+/V1aengUOZ/PAYnhTHT/SWludSrQ2EEgVZhest?=
 =?us-ascii?Q?7gHoYcrjI04WveahV+IM/GoWLx+6U2GdDl5LxrLhNVCf8lKN/1+YRIU874Fb?=
 =?us-ascii?Q?/VK7zKdB3nxYKrygUhEjkdJ0VbpNRxh4mEMoQYnPQypbgp2UMliJm80EhoSU?=
 =?us-ascii?Q?dWU6AKJ7u3mUNbE+1BBQMAArlfnqOWi8FrebvjqtwA=3D=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 1743091b-a13e-4b41-ab07-08da81376dc9
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2022 16:33:49.5682
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR06MB7624
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_173400_328577_C8D8DAB9 
X-CRM114-Status: GOOD (  15.72  )
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

On Thu, Aug 18, 2022 at 11:14:17AM +0300, Krzysztof Kozlowski wrote:
> On 17/08/2022 23:49, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Anbernic RG353 and RG503 are both RK3566 based handheld gaming devices
> > from Anbernic.
> > 
> 
> Thank you for your patch. There is something to discuss/improve.
> 
> > +		red_led: led-2 {
> > +			color = <LED_COLOR_ID_RED>;
> > +			default-state = "off";
> > +			function = LED_FUNCTION_STATUS;
> > +			gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
> > +		};
> > +	};
> > +
> > +	rk817-sound {
> 
> just sound
> 
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> 

Acknowledged. I just cut and pasted from a different tree, but I'll make this change.

> > +		compatible = "simple-audio-card";
> > +		simple-audio-card,name = "anbernic_rk817";
> > +		simple-audio-card,aux-devs = <&spk_amp>;
> > +		simple-audio-card,format = "i2s";
> > +		simple-audio-card,hp-det-gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
> > +		simple-audio-card,mclk-fs = <256>;
> > +		simple-audio-card,widgets =
> > +			"Microphone", "Mic Jack",
> > +			"Headphone", "Headphones",
> > +			"Speaker", "Internal Speakers";
> > +		simple-audio-card,routing =
> > +			"MICL", "Mic Jack",
> > +			"Headphones", "HPOL",
> > +			"Headphones", "HPOR",
> > +			"Internal Speakers", "Speaker Amp OUTL",
> > +			"Internal Speakers", "Speaker Amp OUTR",
> > +			"Speaker Amp INL", "HPOL",
> > +			"Speaker Amp INR", "HPOR";
> > +		simple-audio-card,pin-switches = "Internal Speakers";
> > +
> > +		simple-audio-card,codec {
> > +			sound-dai = <&rk817>;
> > +		};
> > +
> > +		simple-audio-card,cpu {
> > +			sound-dai = <&i2s1_8ch>;
> > +		};
> > +	};
> > +
> > +	sdio_pwrseq: sdio-pwrseq {
> > +		compatible = "mmc-pwrseq-simple";
> > +		clocks = <&rk817 1>;
> > +		clock-names = "ext_clock";
> > +		pinctrl-0 = <&wifi_enable_h>;
> > +		pinctrl-names = "default";
> > +		post-power-on-delay-ms = <200>;
> > +		reset-gpios = <&gpio4 RK_PA2 GPIO_ACTIVE_LOW>;
> > +	};
> > +
> > +	spk_amp: audio-amplifier {
> > +		compatible = "simple-audio-amplifier";
> > +		enable-gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-0 = <&spk_amp_enable_h>;
> > +		pinctrl-names = "default";
> > +		sound-name-prefix = "Speaker Amp";
> > +	};
> > +
> > +	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
> 
> Node name:
> regulator-vcc3v3-lcd0-n
> vcc3v3-lcd0-n-regulator
> or just regulator-0

Does this restriction only apply to node names for regulators, or all
node names? The docs I looked at suggested that it was okay to use an
underscore, but I'll defer to you.

> 
> > +		compatible = "regulator-fixed";
> > +		gpio = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +		pinctrl-0 = <&vcc_lcd_h>;
> > +		pinctrl-names = "default";
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		regulator-name = "vcc3v3_lcd0_n";
> > +		vin-supply = <&vcc_3v3>;
> > +		regulator-state-mem {
> > +			regulator-off-in-suspend;
> > +		};
> > +	};
> > +
> > +	vcc_sys: vcc_sys {
> 
> No underscores in node names. Same comment as above.
> 

Ack.

> > +		compatible = "regulator-fixed";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <3800000>;
> > +		regulator-max-microvolt = <3800000>;
> > +		regulator-name = "vcc_sys";
> > +	};
> > +
> > +	vcc_wifi: vcc-wifi {
> 
> Same comment as above
> 

Ack.

> > +		compatible = "regulator-fixed";
> > +		enable-active-high;
> > +		gpio = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
> > +		pinctrl-0 = <&vcc_wifi_h>;
> > +		pinctrl-names = "default";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		regulator-name = "vcc_wifi";
> > +	};
> > +
> > +	vibrator: pwm-vibrator {
> > +		compatible = "pwm-vibrator";
> > +		pwm-names = "enable";
> > +		pwms = <&pwm5 0 1000000000 0>;
> > +	};
> > +};
> > +
> > +&combphy1 {
> > +	status = "okay";
> > +};
> > +
> > +&cpu0 {
> > +	cpu-supply = <&vdd_cpu>;
> > +};
> > +
> > +&cpu1 {
> > +	cpu-supply = <&vdd_cpu>;
> > +};
> > +
> > +&cpu2 {
> > +	cpu-supply = <&vdd_cpu>;
> > +};
> > +
> > +&cpu3 {
> > +	cpu-supply = <&vdd_cpu>;
> > +};
> > +
> > +&gpu {
> > +	mali-supply = <&vdd_gpu>;
> > +	status = "okay";
> > +};
> > +
> > +&hdmi {
> > +	status = "okay";
> > +};
> > +
> > +&hdmi_in {
> > +	hdmi_in_vp0: endpoint {
> > +		remote-endpoint = <&vp0_out_hdmi>;
> > +	};
> > +};
> > +
> > +&hdmi_out {
> > +	hdmi_out_con: endpoint {
> > +		remote-endpoint = <&hdmi_con_in>;
> > +	};
> > +};
> > +
> > +&hdmi_sound {
> > +	status = "okay";
> > +};
> > +
> > +&i2c0 {
> > +	status = "okay";
> > +
> > +	rk817: pmic@20 {
> > +		compatible = "rockchip,rk817";
> > +		reg = <0x20>;
> > +		interrupt-parent = <&gpio0>;
> > +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
> > +		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> > +		clock-names = "mclk";
> > +		clocks = <&cru I2S1_MCLKOUT_TX>;
> > +		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> > +		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
> > +		#clock-cells = <1>;
> > +		#sound-dai-cells = <0>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&i2s1m0_mclk>, <&pmic_int_l>;
> > +		wakeup-source;
> > +
> > +		vcc1-supply = <&vcc_sys>;
> > +		vcc2-supply = <&vcc_sys>;
> > +		vcc3-supply = <&vcc_sys>;
> > +		vcc4-supply = <&vcc_sys>;
> > +		vcc5-supply = <&vcc_sys>;
> > +		vcc6-supply = <&vcc_sys>;
> > +		vcc7-supply = <&vcc_sys>;
> > +		vcc8-supply = <&vcc_sys>;
> > +		vcc9-supply = <&dcdc_boost>;
> > +
> > +		regulators {
> > +			vdd_logic: DCDC_REG1 {
> 
> No underscores in node names, unless the PMIC requires it.
> 

Ack.

> (...)
> 
> > +
> > +&pinctrl {
> > +
> 
> No need for blank line

Ack.

> 
> > +	audio-amplifier {
> > +		spk_amp_enable_h: spk-amp-enable-h {
> > +			rockchip,pins =
> > +				<4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		};
> > +	};
> > +
> 
> Best regards,
> Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
