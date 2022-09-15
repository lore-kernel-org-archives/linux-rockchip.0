Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E42F9ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 14:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aguxcQHkowLO3H0B4uRkrClhpr3jnNLqDJLUjTQVmRs=; b=qB8Rn0Gk5cBbWb
	XRYbLx2Hor63Fmpk3jQKoZs4rk6RDrbBmS/cT9HSJrS4weQju50Vow/4OXiBb72Q7mT6u2D1jDBJZ
	iJ9yBSvVpG2H01XC9VL/fIUrOe8IB5dG7f6biew8eZhF/drbPaXxnF/oUUZYafWFXISDdw9C3Hgcu
	PuAbhK9kZl/ZsHFcjvd5qDZZjN/C68MaNwsxoioFy3lRbjsmeDR+MSLfiOA6IlE2jpID05dkI15M1
	Nk3BW75KULXvuKxSGMVpRR4IYSyy7US7IVQW6vENITcBe4zbL+O952Bmjh4mJD+rCY8cN5lGQD+vb
	Tw8rGLU05bgKENRyj6dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYq9c-00BRR6-UZ; Thu, 15 Sep 2022 14:47:48 +0000
Received: from mail-dm6nam10olkn2012.outbound.protection.outlook.com ([40.92.41.12] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYq9Z-00BQks-TY; Thu, 15 Sep 2022 14:47:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=anQWWv8cRoBGGzkLn1Sc9uqz32id6i+zIAFMoiR9IEulnvL7gVAXYpqPJVZfYUhHmA53qMaELCAjuG+PVedMjK/CwnA6X/H+KdTQqCcIbRMk5shJEnnZHe6BF7zC+wXti2b111Z5rX4aQPzOj4nmEy1Ia1mu7v0sLXBorlNU0vmfKnyjmxzULShWEsbOvL4917ZvQ2+SJc2aLPuqbSvIqzKZsPKePEaS84fHEzyRFae1lzWGYcPO83WA4ydTHNb3LbO7E3JdhWJrz2R9WFhhjUoYqF9NLMTH/qQAfYV8ALVXEzKBcvhxbPHQfQbqC/24Knm/DUhQLJvuNn62+mDT2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q9OaK/5Nm/wE0jknN7oS+nKGw2CXSfoQ9rfkimpPpyY=;
 b=ZzN+ldk+3OQW0TDroJ0x4XF+GDnMx6pCta80MPdRj0K1c0h0CPNxNyHYpoVnhGgPH/Bts4o95qdpTeUy9EOv91S0z6Hzm8YtdDGQ4R3IZf1gQojXeScBWYU345svOQJs1oBKo3XOEv7vUYXlRN2rjPpVX5Q6PLHHM0yxESTIjZ4pR1Kw1wfENnBeYU7UEalyVtbAhTomIFtBu+BdwF1qP2y9Ui8opa6OQufVAhdEEnXxHykSmDTa82yqH3ykY7qItmJKYlfi2/6sNKW46IOQW7/wCpXxUFuHeXiYiAj/H+Ymf+jxgon5tG+dslyI+J9QZ/IrchrICHNjdbxPhXAr+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q9OaK/5Nm/wE0jknN7oS+nKGw2CXSfoQ9rfkimpPpyY=;
 b=HUB94L/3wxKoxWNQTKJOamHFC+jMOUaGXzLvOQd7X+eVyeNS3VfZo0m47Ezd8/jdVQYU/U0tgJrCSutZ39VJPkV3BvNCXzLu8aXNxuXy78a5jp5zBRnaRwy07riOvLWU14yiwa0NGIZ2NXgsYFN6AVuzsTSX2up4tgKpCN8DzaWWAxCYxmWURnKGJt0R5IjVvy3/QJN6F1RJ44FvCkYp5azvcwVU4SXWxDNZ7i2uoFP+4rrNY5D6uVfE+WWWt0ZcVcHmx7p0c6cjctYyd1ciYBWPvHkS659aL9zSSn5vCXR/kZ/OakqycWb7R1GOh46eroks41jNhB/MDhkd/rvdIA==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by DM6PR06MB6314.namprd06.prod.outlook.com (2603:10b6:5:131::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Thu, 15 Sep
 2022 14:47:39 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::433a:1493:6a39:ee43]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::433a:1493:6a39:ee43%5]) with mapi id 15.20.5612.022; Thu, 15 Sep 2022
 14:47:38 +0000
Date: Thu, 15 Sep 2022 09:47:34 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, cl@rock-chips.com,
	s.hauer@pengutronix.de, frattaroli.nicolas@gmail.com,
	pgwipeout@gmail.com, heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	vkoul@kernel.org, kishon@ti.com
Subject: Re: [PATCH v3 0/3] rockchip-dsi for rk3568
Message-ID:  <SN6PR06MB5342CDE25078215CBA6CA339A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220912205607.5969-1-macroalpha82@gmail.com>
 <1d98ce70-81d5-df92-c881-1d9611042401@wolfvision.net>
 <SN6PR06MB5342040C7772D95351DFD22FA5469@SN6PR06MB5342.namprd06.prod.outlook.com>
 <a49e5a9b-7b11-934a-8a98-577f2ba1a4b0@wolfvision.net>
Content-Disposition: inline
In-Reply-To: <a49e5a9b-7b11-934a-8a98-577f2ba1a4b0@wolfvision.net>
X-TMN: [uOi57VLQyQZHGJfhTLUVIG69Sr8YkFBH]
X-ClientProxiedBy: SA0PR11CA0054.namprd11.prod.outlook.com
 (2603:10b6:806:d0::29) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID:  <20220915144734.GA24036@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR06MB5342:EE_|DM6PR06MB6314:EE_
X-MS-Office365-Filtering-Correlation-Id: acbf8f82-b778-441c-3a30-08da97293bb8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	3GiwRAMpW7W72oaQx+FBtuwMgGIpboDnY8Ku8MC8asAgCrH1P5NdKgoU8sJ/m8+RhmZ7EZyiofjG4aeQF/VIwyrO+60eWDypv04faK8s3xqwPwaMz1IaVRJuPFl4Dy++3fuZA1ueWrf4nlWHhSJ3roT5VIatrDu5ILNiHl+TZagpwpuAgE5e3T411EcTyeWoYGOgzV2hPf2XJz4Id6pQz30WC+izZouAMLeLuOUyQxl73DaA/o0FjK3fsmmUDnMwUyxheKG9T9MiC8nMyZXvZyf3mAOYgJ9S8qLOosZaNcQnc9aSeu6hF2snMrTpYmm9qvE+EtcVdenb1cJ1CMK2qrJoDh2gapxmXzPrWADerx0VkXxu4j1vpR5ss8Nk5dSTPECNNPwbbqdB3ZW/f225iktBPllwz+0LH93c2L/kvTh0NwUtqPQHBx9rzFPm9sAkBO0PW8r3hFzh9WtZD5JMxsIUmS3NRAbbgalyKTogjk8557AqwiyMq9sSVttGCVw0nyrixRjwbtsAdIrkgwzNNSzVl1/yZOUe2aOWmDJzRTJX6hd75X/eU/qO7WwqkSM/aeJfT9bUAwYmf8wGPBqCknL5w4vmTLtUjq6aQ8rMIeicWnh9hsYsgCq76Hhv5YmjrzwAqSwfV4Otv1O686synAMHyhiU/4GQ6dnvtGG4euDoDwspAa7ssJm8BJzjbfrp
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?nn4V5sXGepgBFwO2F//ypoRwoztLvOZREwiAHKAGr4bigSppe3gyxz+zyh+V?=
 =?us-ascii?Q?Aso921MEtfLrZ9wjfwrayE62wu/m+AdmDBMSJgxpANBqKT4hPWtpyWvyueOJ?=
 =?us-ascii?Q?RD9CIs3Sry+dZEIYHN9C1PFbYw7Hd9YVD5va+prZy6XWSCMtJPmBPRkjJLrP?=
 =?us-ascii?Q?piAF5GWR4PU8ObQkCOQPB6c9f4fxv8FKRMW2QWWrCPLNBppjuhC6vt1glsxo?=
 =?us-ascii?Q?TVM5vgh3Kb52ptvr5JCYG3H4/dedRabW7flFV6aSwm8viSfO3EkypTAX6FjT?=
 =?us-ascii?Q?4SweNxQJCuZohD1tp0BTVmqiDpq39y6ka+aqOUaRUtE2pTkBmhIXo5gbc3z7?=
 =?us-ascii?Q?s3wQQdyl+WXVVOZqoL8yVBwmJfzqtdN4KgoOi2PIv2FaIhnxLLfwC9W+/8WC?=
 =?us-ascii?Q?Ol004oH+jODZrAyQgU5ieV5LtYBEorvmbgNhNyewy9LN26UY5QTPs1kx68aZ?=
 =?us-ascii?Q?V24UsmLMfNQtSWkz4w3ir3uFxfaW7UJIzsf9DD7ru2jJCBIn5HRf3GYNdLJM?=
 =?us-ascii?Q?SMT14nsL9qWNw5mhTEjaT40p1bQTJTgHGGaE7Jqb9HnHRQXJQIIoWB0+qEi6?=
 =?us-ascii?Q?Oyq50rTgwaf/GF62s3hHmO6EegssmE+ip4ycHK0GWUNgwRLW5TGJAQNfR0Hz?=
 =?us-ascii?Q?QztEBMOejnkjD6zKeN8B861P+2LEFDWgVjK8O/Z8fpaAHfDvY41aoeyCOD0y?=
 =?us-ascii?Q?39LCpdn3tBkpZrnEBfOEResYyi4rSxeJ9C8FDZ7rc91fIRmHLe6of/PSysAM?=
 =?us-ascii?Q?8TxRyIbwaSCzSf89lz5kTKDgEIAqZxomejJaG5e7Ph4gBq0GzaW2vIj/WxPu?=
 =?us-ascii?Q?CHRfZMxiCopwTj6jgHpEeW7I41aNy4QipzstBHsSJHevjt6rRO+bzICrvaiV?=
 =?us-ascii?Q?SQlDUt4RJU7kdwZ8Ct41YxH5aMCaXhM7RwpvuXE+NYN7RPLM5cAZCujf3B8Q?=
 =?us-ascii?Q?NNAw4wm//mQzXOeagdsMWPUE5ZGsFzhVQjFShY4yPqWznG7YcszYYLDq8JZX?=
 =?us-ascii?Q?ATTdf1r23klxWyEpg7VLpBro+zLjoyA2FJaqKoKVrdUKS4ZPKjoRvkpAPJmb?=
 =?us-ascii?Q?ZarvOuyerf9qS+ILc67gDkP6rh7fY5K54IovGx9EaoVU9Giyu0yKr00NW99O?=
 =?us-ascii?Q?dEtFwDEzVZ7eh/fEJuygRaraH20/jzOx8pCLCVT5bB8c0LslZ8+FnUOl8BoB?=
 =?us-ascii?Q?pg1Toz4VJHM65n1f5ucPXWD4Fj43FszAPIqYcTVkvU4SrOPDOvBFBWcJuiT/?=
 =?us-ascii?Q?kt3SIbch9A5SHD7KRBEQwoio+DatOt8jI8s6GwpWhA=3D=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: acbf8f82-b778-441c-3a30-08da97293bb8
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2022 14:47:38.8665
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB6314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_074746_015364_781FED3B 
X-CRM114-Status: GOOD (  60.17  )
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

On Thu, Sep 15, 2022 at 09:16:47AM +0200, Michael Riesch wrote:
> Hi Chris,
> 
> On 9/14/22 14:50, Chris Morgan wrote:
> > On Wed, Sep 14, 2022 at 07:46:41AM +0200, Michael Riesch wrote:
> >> Hi Chris,
> >>
> >> On 9/12/22 22:56, Chris Morgan wrote:
> >>> From: Chris Morgan <macromorgan@hotmail.com>
> >>>
> >>> This series adds support for the dsi and dphy controllers on the
> >>> Rockchip RK3568.
> >>>
> >>> Tested on an Anbernic RG503, Anbernic RG353P, and Odroid Go Advance.
> >>>
> >>> Changes since V2:
> >>>  - Removed dsi controller patches, as those have been merged upstream.
> >>>  - Removed notes about rolling back clock drivers. If I set the parent
> >>>    clock of the VOP port I'm using to VPLL and set the clock rate of
> >>>    PLL_VPLL to 500MHz this series works correctly for my panels without
> >>>    rolling anything back (per Heiko this is the correct way).
> >>
> >> I tried this but it didn't help (neither did reverting ff3187eabb5c
> >> "clk: rockchip: drop CLK_SET_RATE_PARENT from dclk_vop* on rk3568"). On
> >> my display the content is shifted horizontally and the colors are often
> >> wrong.
> > 
> > There's still something wrong with the VOP2 driver, and I'm trying to
> > get to the bottom of it. Are you by chance enabling HDMI? Can you check
> > the clock for the dclk_vopx (where x is the port) that you are using?
> > It should be very close or the same as the pixel clock of your panel.
> 
> Yes, HDMI is enabled (on VP0) and works fine. MIPI DSI is enabled on
> VP1. The clocks dclk_vopx are:
> 
>     pll_hpll                          1        1        0   148500000
>        0     0  50000         Y
>        hpll                           3        3        0   148500000
>        0     0  50000         Y
>           dclk_vop2                   1        1        0    37125000
>        0     0  50000         Y
>           dclk_vop0                   2        2        0   148500000
>        0     0  50000         Y
>           clk_hdmi_ref                1        1        0   148500000
>        0     0  50000         Y
>           hpll_ph0                    0        0        0    74250000
>        0     0  50000         Y
> 
>     pll_vpll                          1        1        0   500000000
>        0     0  50000         Y
>        vpll                           1        1        0   500000000
>        0     0  50000         Y
>           dclk_vop1                   2        2        0   125000000
>        0     0  50000         Y
> 
> The pixel clock of my panel is 132 MHz (1080x1920@60). Could this
> discrepancy be the cause?

It's too low which likely could be the cause, (honestly not sure) but
otherwise everything looks correct. Maybe try setting the PLL_VPLL
rate to 135000000 to force the panel to go faster (135MHz instead of
125MHz)?

I know for one of my examples the panel's pixel clock is 33500000
and I'm running it at 33333333 and it seems to be okay. The other I
am testing with runs either at 25000000 or 50000000 which evenly
divides with the 500000000, which is why I use it.

You can also experiment with different rates, any rate defined in
rk3568_pll_rates[] should work (though the datasheet says for VOP1
don't run the parent clock over 500000000, and then in the BSP kernel
I see the parent clock in my example it running at 503000000 so who
knows). If need be you can also define a new rate and add it there,
but you'll have to consult the datasheet for which rates are supported
and at which dividers (and also the VPLL and NPLLs don't support frac
rate setting).

Thank you.

> 
> > I noticed on mine that the HDMI was interfering with it. For now not
> > only have I disabled the HDMI but also put it on VP0 while my DSI is
> > on VP1 (note that if both are active you'll get a null pointer
> > dereference from the vop2 driver which is another thing I'm chasing
> > down). I think this is because the hdmi_ref is allowed to set its
> > parent clock (which is the PLL_HPLL), so it does to 24000000.
> > 
> > Basically here's what I've done to overcome the VOP2 issues and get
> > DSI working with this patch series.
> > 1) Disabled HDMI (with it on VP0).
> > 2) Enabled DSI and the DSI-DPHY (with it on VP1).
> > 3) Set the parent clock of DCLK_VOP0 to PLL_HPLL.
> > 4) Set the parent clock of DCLK_VOP1 to PLL_VPLL.
> > 5) Set the clock rate for PLL_VPLL to 500000000.
> 
> I tried to reproduce this. When I disabled HDMI I realized that the
> regulators that produce the 0v9/1v8 image voltages are not turned on.
> They are required for the MIPI DSI TX block, though. Could you take this
> requirement into account and model it in the device tree?
> 
> After setting the voltages to always-on as a hack the result was pretty
> much the same: the clock tree is the same as in the case with HDMI and
> also matches your description.
> 
> > Doing this allows the DCLK_VOP1 to run at the correct speed for my
> > panel instead of 24000000 like it would otherwise. When this occurs
> > I get a correct image. If for whatever reason the DCLK_VOPx of the
> > port I'm trying to run the panel on is at 24000000 is when I get
> > the shifted image.
> > 
> > The long term fix I'm trying to work on is to figure out how to
> > successfully get the VOP2 driver to not crash when VP0 and VP1
> > are both used for the RK3566 (note this actually should work for
> > you on an RK3568 board though), so that whole bit about disabling
> > HDMI might not apply to you if it's enabled.
> > 
> > In summary, check the DCLK_VOPx where x is the port you are using.
> > If it's not at or very close to your pixel clock that's probably
> > why your image is shifted, at least it was for me.
> 
> OK... I am starting to think that I experience a different bug here.
> I'll clean up my patches and will try again.
> 
> Thanks and regards,
> Michael
> 
> > 
> > Thank you.
> > 
> >>
> >>>  - Added additional details about refactoring DPHY driver to add
> >>>    2.5GHz for rk356x. All other devices still have a max speed of 1GHz.
> >>>  - Notified Heiko that the BIT(5) for both PLL_POST_DIV_ENABLE and
> >>>    PLL_POST_DIV_ENABLE_MASK is deliberate, because of how the
> >>>    phy_update_bits() works.
> >>>
> >>> Changes since RFCv1:
> >>>  - Identified cause of image shift (clock changes).
> >>>  - Noted that driver works now.
> >>>  - Added devicetree nodes for rk356x.dtsi.
> >>>
> >>> Chris Morgan (3):
> >>>   dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
> >>>   phy/rockchip: inno-dsidphy: Add support for rk3568
> >>>   arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x
> >>
> >> I am testing this on a RK3568 EVB1, which has a display mounted on the
> >> PCB. I'll submit the patches that add support for this setup soon. For
> >> the time being a preliminary
> >>
> >> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> >>
> >> Thanks for your work!
> >> Best regards,
> >> Michael
> >>
> >>>
> >>>  .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
> >>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  72 +++++++
> >>>  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
> >>>  3 files changed, 231 insertions(+), 46 deletions(-)
> >>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
