Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64EFAEED61A
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Sep 2023 17:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qaPwwKeEIid+zCOXBKPfzzaIckGxcjZxusxLccX01SM=; b=VnfeXWH8t5Syef
	nuiOA/CXAJJMQbvOklkODVz/Sz0EbiT3aB9iHHP7FiCBseWqtNwCf6H91NAfmko2M1wa/AMzTDr4i
	HYQ0J/kzM9YxCevE0vEAHmcnt12Xs6pojWIPW654UDPHk5jnUFeYhO4fY74mi9/TVYbt4hZHHZI/t
	kDHyiBcSVetk8Kdf4AQ/Yn1BeAnoPq1E6TKvJZeM3o6kqy9IIeuEjQbd2Pk/EqkqB6V6IE5rRISYY
	4USxYkHwmustip1a7PpWs6bMUz5v9ib1xPJDr2O8zMPrXi7zdGed+27HFBxk5DzkL4/pVx1/kCyVI
	1wIqdzsExOXNw8y1Fsow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qhCV2-00B82u-1h;
	Fri, 15 Sep 2023 17:21:00 +0000
Received: from mail-dm6nam10olkn2081f.outbound.protection.outlook.com ([2a01:111:f400:7e88::81f] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qhCUz-00B82X-0a
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Sep 2023 17:20:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cgkUD2ukmHluT/w6x2/IUkoGljZiylsFEpV1AJXcG5BVjQnW+339Mx7XI/AmGnwYwm89J084oYzzV6302kgQZKdR6TAlyPMX9kCZXwWXx2ydkGclPveeeSZWXj2VhIKiqpb7VN+a4dCnAfbgY21wGw6rfv/Qjc/nNyflU2mYRZl/1wLc1lz1J/TI+JrrRXsWuJwCMF1Go6r4qoS/rHL+aminWf/HZ1lhBoUk/Ud9dkQWbGehXecVr0wZ0z9OS3hiTxds30O1E9iFOpYFUI+eumdWXOeOlFDn9JIYsHErCCezoQfCSGR0j5gO+6pCXxfqGNO94MiEiGQeni0+rKm4kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zxa+qq4AjaCxvCTxSQH/ZFvwMEClzmxwD6D3k3yvy/s=;
 b=NHkLdGsmXVR7CyHzvt1XZ9PCxVWdQjP3Wdw2eGsqq7Lnj1pvdvh1yyYPiOf3sozCBinKr2CUvY7z77QDEl0yUqc4p+dRQTGddygz7gzbzaOKoi8OrPL/JzMgPavWa81Llb5WGf9cHIlVKSZnsb4Nl53a1U7r5+ddWw1fhuEDXqLYkN8C+42rdL8f+aieXFlAxpOkHdYpSv2tpFnZFGwIFz6CK1TvwBqD4ZDEYrZu49AL4QaJSXEY0GvjrI1Wl/XJUVuArcFFSwc5o/tu2slP0dMbH5qhFcblAAZSc8dtXDETCCzH4c7YjqXZ+/LC7gZaUGRnh7cQb5TMs0OGO+FPOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zxa+qq4AjaCxvCTxSQH/ZFvwMEClzmxwD6D3k3yvy/s=;
 b=dJKzaedM95H0UoBJMHL3JFhI8SPmQ9rDbMFu94U8r5nI0kKX8NqBAn/PdpBV1qNuKwUwUDjEO7ZCjaK7c73Y3SRL5eENHkFrc0/yGhWu2vPJNEGxYI9gHHi9Ke0ChVjINxXhoNwzzr5XzJ0YroGL1FeBPL5OpTAkk7DC4xgP1r6bkuaJsxV/u0ajuKUS9Q1nzFpnHL1oEkQLo+XlclD8HudvcHmJmDglZqjNhXDyIIqGndYGsvG099GvfW0hOy0eMC4xyPuFA4aUyUFePA64Po5ZpGF/p0lm0Q/YCUe8Tm6f/VyckrR9yHLp1ywjMAB9UK4JqAFevsRJgpUPWR0dwA==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by SA2PR06MB7337.namprd06.prod.outlook.com (2603:10b6:806:140::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.21; Fri, 15 Sep
 2023 17:06:01 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::c40c:bbc8:b103:459c]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::c40c:bbc8:b103:459c%2]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 17:06:01 +0000
Date: Fri, 15 Sep 2023 12:05:57 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, jagan@edgeble.ai,
	heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add saradc node to
 rk3588s-indiedroid-nova
Message-ID: <SN6PR06MB5342FE6A2C144600656701E4A5F6A@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20230908164156.2846-1-macroalpha82@gmail.com>
 <20230908164156.2846-4-macroalpha82@gmail.com>
 <488e1f3b-e12b-c278-ed04-a2a5c807bc72@linaro.org>
 <ZQSK/+cOMhtu5Al0@wintermute.localhost.fail>
Content-Disposition: inline
In-Reply-To: <ZQSK/+cOMhtu5Al0@wintermute.localhost.fail>
X-TMN: [ME7U6sXO7P2xbb98anbr9cCjVeuWa5ep]
X-ClientProxiedBy: DS7PR03CA0193.namprd03.prod.outlook.com
 (2603:10b6:5:3b6::18) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <ZQSO9eLgYHkQYXT0@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR06MB5342:EE_|SA2PR06MB7337:EE_
X-MS-Office365-Filtering-Correlation-Id: 49f93ecc-9cb4-44ee-a816-08dbb60e0956
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IiLJaJUKk1/jktEhSh7LXWP/uqT/asnxob4Fex7Jt/KSS1sYknkhUsh5DSUvecOrl89a9dsnjXTLoVMQzEWFuI+rZAtbRUXTX4TW/zunAilRsEzl1fDzgVLgrl9VDdyEUKQ+lm0U+H22YtQoLji8Kk1M6ow1u4Ka/sJjPce5giHI7JaoLk6ILP3zfat1bnqhtOTwfxc5fQFDUvyfNzh4RV26tAW4K0Tu2hFnYkJLjnrdfumYDODc5gMDFan8lRSiaj5b8jxnTNLt1dHma/aIXo96m62mQsHbfI5+sPHch1lGrBqjNK+CGIcezBc0D6aoqPtpO9mDJR8Egt9sY2YzWHQJB2VLgZddNZsycLB4HfYej9EhTZjr9SYfr2jcEB2TYyhri1nUbIWTr95wt3jQa2fBl2AbIFmqFLvl5HSQBSFAOqbsfN2wOPuk3QdF9mXosZcVt8p0frdOGWhMeIgzB3ff5NFTrbK16LAYYrj3unJnHzv4AsSz1SaHY0ol7NyNoqaqZShAjRoCe3b1kyVEvdPQebaZ0lni1ysYMRIy2zO02ggjYh0Y2ZodtztojWnZ
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qbj7McGuIpYvZzjFWGHY4PusfhPCzzozMenafqmlgePPKBitSCr2xnE+9RtF?=
 =?us-ascii?Q?3Nlu6qXrNO3e6MjyjQMOd9evecw9NCfuJ+k7brU/7WWXaIlXWoDdzbSrRfRG?=
 =?us-ascii?Q?ZcQakgvVefCvV8nO6RMz8iiV6Nrgqz38AIT5hmzoeyJOWdwDKxXiNyTdY3YP?=
 =?us-ascii?Q?+szWwXQTueRzY6LKiVrzT1tIPFCs6yNN3kreIX05lEIMQjejlAGlT4iIc/tk?=
 =?us-ascii?Q?jtP6n1zFgisctKbozvSlzjYHho1EYouu1adMG3sRudD7O3FBGD3JaEt+G3y5?=
 =?us-ascii?Q?3qZ+yoGB3XvnL/B3iNBo45IPzOodTLQ38I8p1BC8y9gq7qTQCA7ehaGZPR7G?=
 =?us-ascii?Q?41qQSAIPJ6A3Xowf1PFstHJfranIIPRLiaIY9gFtGogYsNGP3fv+nqnbvCaz?=
 =?us-ascii?Q?YKMda0OpMg78iIT+BJNr884ZcGt8kr1IT11nfuuYdZ2SaWFZKJoVv1KypXoV?=
 =?us-ascii?Q?FusaYBjF5hW6BiE8rgikni5kTw8E1778frpyOWjSN/pdHRSe2pPhyu5gJFeu?=
 =?us-ascii?Q?r3iIAGW31YFGCwquN3SrPps+9nNon7iUIeem7XVDwyI14unNCHkf7vhd4hHU?=
 =?us-ascii?Q?UjjiQqKTHijnmKlyBdGefG0EPJJCSH2khX9/Tfww6nZ+Ws87XMBAFJH7ZpaP?=
 =?us-ascii?Q?KfO9+aa8pjeSGT4rODA5pZAMaW0vijOrDrOyr/emasdmNGLfXrlEgzT22vHV?=
 =?us-ascii?Q?C4ca5TMKFgMxyPyfB5gkLwKdpq+LCtjxAwl1fN/q2hF5G8GKIYYIlhw1RN2g?=
 =?us-ascii?Q?YZcihGSfDbDR7r0XdItfr+M7cWJ0XI41B/rqbLnZiX4aQkZ5EkRR6htouQIt?=
 =?us-ascii?Q?mwJFivnDVzeYpjvTH2mm/nbwwaJaYoDO1X8zd/5baz4E2lf9FeHnsza2mQw+?=
 =?us-ascii?Q?/3PIsdGP227kVgND2Bdpyc2XSGMaYlT6qbpEgW3gJYewByq0nSLVYeXJ+y8f?=
 =?us-ascii?Q?O88GCutYXJPVoOwl2/EYtHZDWB9WBH+Pa55pjel3mICNWKsVEGtFKn/9/wUw?=
 =?us-ascii?Q?X0gBVTTRAjBdiegzp4SiXLf1f11gy2JieJjEA6UNQ9vMlAwsnCYJjvN7BQSo?=
 =?us-ascii?Q?FmisbftN9csjsJBMgGtSIwd67Iv9auJTT4sem26glkYnKU91E3mOtr0k+ILa?=
 =?us-ascii?Q?AW2Wp93oDziriikKSxF6e6UnCiWyAYu9wi28XF24jSZ5lMm6Ub93AIiuRFvJ?=
 =?us-ascii?Q?G6B/19X0jsH6YjFUg/DhZPM2d+fOspvs+O5CujI1lk6/nBB4UN7DorC86yY?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 49f93ecc-9cb4-44ee-a816-08dbb60e0956
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 17:06:01.7427
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR06MB7337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230915_102057_247845_C7B14010 
X-CRM114-Status: GOOD (  24.85  )
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

On Fri, Sep 15, 2023 at 11:49:05AM -0500, Chris Morgan wrote:
> On Tue, Sep 12, 2023 at 10:31:19AM +0200, Krzysztof Kozlowski wrote:
> > On 08/09/2023 18:41, Chris Morgan wrote:
> > > From: Chris Morgan <macromorgan@hotmail.com>
> > > 
> > > Add ADC support for the Indiedroid Nova, as well as the two ADC buttons
> > > found on the device. The buttons are documented as "boot" and
> > > "recovery". The boot button is used by the bootloader to boot into USB
> > > recovery mode. The recovery button use is currently unknown.
> > > 
> > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > ---
> > >  .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
> > >  1 file changed, 34 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > > index 1e2336d3065b..4c2d662d9c97 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > > @@ -3,6 +3,7 @@
> > >  /dts-v1/;
> > >  
> > >  #include <dt-bindings/gpio/gpio.h>
> > > +#include <dt-bindings/input/linux-event-codes.h>
> > >  #include <dt-bindings/pinctrl/rockchip.h>
> > >  #include <dt-bindings/usb/pd.h>
> > >  #include "rk3588s.dtsi"
> > > @@ -11,6 +12,34 @@ / {
> > >  	model = "Indiedroid Nova";
> > >  	compatible = "indiedroid,nova", "rockchip,rk3588s";
> > >  
> > > +	adc_keys0 {
> > 
> > No underscores in node names.
> 
> My apologies, I should have known better...
> 
> > 
> > Suffixes usually are after -
> > 
> 
> Thank you.
> 
> > Best regards,
> > Krzysztof
> > 
> 
> I'll correct this and resend.
> 
> Chris

Sorry, one more thing. I've checked for examples of adc-keys naming and
in every instance I see it as adc-keys (or adc-keys0 and adc-keys1 in a
few examples). Is the proper way going forward something like key0-adc
and key1-adc?

Thank you,
Chris.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
