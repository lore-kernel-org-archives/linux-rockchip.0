Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12609EED619
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Sep 2023 17:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9n/JnYnTaFMILLjQ0i0lcVAND7TVZi4ewad7DvON/s=; b=rnmsWAJ/p0ROLP
	Aw7MIXrOCRVKfME81YzhOmwxa61XUO5jU6D8yUHjaVW8ze3mu0xTLOXAYGri83DE62nY32iIiSP8F
	u6IRYOq9KOtJ8C9fEhG7cDH6wMWe+kQrAOi2WDeecfzcRfuqpfBIv1qZfFNpolnWgCvycsss2sj1N
	YPjjmAz2DtgJCHNamayBlAbHwWAccUT8I4JO7T7QdYm3jRTCQ+eSZzTgJsWl9dg9ZUOdHiHC5e0Rz
	w92kil+2eD8xgy89epKUoskVhbbD3lBb0z6EugZ/etJNEwI0m5NYp7Kj7hw4lkm7KGRR/9SPlzHrj
	EXzFVBiKNTkAq33kn7wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qhCEF-00B6PP-26;
	Fri, 15 Sep 2023 17:03:39 +0000
Received: from mail-dm6nam10olkn2080d.outbound.protection.outlook.com ([2a01:111:f400:7e88::80d] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qhCED-00B6OO-0x
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Sep 2023 17:03:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J+/7rg5ztWVRDz5ZSc1ld7TVEerdsHNpehVLDV0CjDCnZ8qUEUrPlluskq29JEjTBR+ZLyZjiUjVl9YyH4f1Oqbzaps0QVcmUQajO3iHddjKpaq0Pbbt0Ny6Yi6wA2UTmRBTV5mr5/7Ireo94xRwAOAICETXqKAg5WQxudWgHEWuHB/rKCFlU6YUT4rzBWvVXd1d8w13VCwjlawlLWEHLtlPD1hMMIrb3jsWSteCXMiL8v1aRDUIAZR6NHgSVuZtQxYkeA2EQs+bDNaHefPJFEzHMAL4gjbypkdlkEdqfnlhhT9vJDOrdczhXjpbmplOiLtBFiC/98o512WZ02AuMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qswcvbZNCaZAyk91zo/2DO5lt12ErmcTcYW+DJ5nI4s=;
 b=iUY12cpkG5y1fCLGkZiWjL0Ea06YSGQyd9rXmnRV2JHhZJbkKqoKP2iS2DzibGvuYEI8T3wtTZ8WLQhThxI9AMUxhC59vqVB9ExNYWdttLS0977OvHczgTD8FDUenlBNg6sWdVmkWIdiiKimc5MPbtVi3fLbRqy+Vt/1rwWdKhA5x1MIJvirMLFiRwuXmKKO0mfwWzOnpEgC1jV4KoTvIoVrmnPA3m7Tq/MX/GKgfolp7P4ScP7Cf7TtVuB66oX4IjeNP1YKOE3+7PWDnnY+HQl21JdcvLsXz640JF2waPUFU3t85/v8DjIxLNLLsVEZ8FeBhtVbhjY1Gy5dkWyIMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qswcvbZNCaZAyk91zo/2DO5lt12ErmcTcYW+DJ5nI4s=;
 b=YXZUoKYe+Ai/PFh4cHiP9GSdT7FXieTLIVB1rr33MP37tVX3FiueXNaMMa7Vj/hGa4OiofutRX3kRH0ALqLkxqL/4gIKxOLXsyRrvUW2QA2sCEVI+aEGDZspYEXc/IRo+dkxTVvHxancKHbnlGgMrxmPrmbfWpyPAiL3xTZC1YXS/81+RzRjOS3bq5+Rzg+j+cFUdw19eVHF0mIrg752I34BK849Q8V6QMgSP90l1iM1Dp3Furqq6vZxrMN46iQsGTzZ+MceS+zda1qujZxsYZRqRaJ9gTBt98edZ1x1WQRD5EF3Cd3y3PxHAtPnjPgxBIQdq1Hd5GTcY5ORuJQIWw==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by MW5PR06MB9029.namprd06.prod.outlook.com (2603:10b6:303:1ca::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.40; Fri, 15 Sep
 2023 16:49:08 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::c40c:bbc8:b103:459c]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::c40c:bbc8:b103:459c%2]) with mapi id 15.20.6792.021; Fri, 15 Sep 2023
 16:49:06 +0000
Date: Fri, 15 Sep 2023 11:49:03 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, jagan@edgeble.ai,
	heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add saradc node to
 rk3588s-indiedroid-nova
Message-ID: <SN6PR06MB5342AFD2AE1ECB1462AAD894A5F6A@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20230908164156.2846-1-macroalpha82@gmail.com>
 <20230908164156.2846-4-macroalpha82@gmail.com>
 <488e1f3b-e12b-c278-ed04-a2a5c807bc72@linaro.org>
Content-Disposition: inline
In-Reply-To: <488e1f3b-e12b-c278-ed04-a2a5c807bc72@linaro.org>
X-TMN: [q/y4iLP7qm01YXAOomiYiL0Tb3UIbIhU]
X-ClientProxiedBy: SA9PR10CA0018.namprd10.prod.outlook.com
 (2603:10b6:806:a7::23) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <ZQSK/+cOMhtu5Al0@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR06MB5342:EE_|MW5PR06MB9029:EE_
X-MS-Office365-Filtering-Correlation-Id: cb1482e1-107c-4e8b-75dd-08dbb60bac89
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0OB2YIzvhmi7bQ2YNhxaPL8C9zJkB9FlDqq8T3Vd5lQWZO/G5tYtaspSGk7I6xVChbRefbp/ICfGHaByhYnjRzZ5//VX0l4rJiRipArD4l90XAqk2iogfyNQ7GZ5l4tVJEQZnVxu/cRuBYF9x++Ipbx+XlTg4E4aFmwvQO75SRnriWr0rfHmSZG4hN9o3MRofgbbsEuRsl0RvrB0EVdqubN1a+uLSft/AEj9VKWLw+ziPpKq6kMWNfUy91ML9CVJn+ytzLvtri9ndb69Zi+380OFE9y56QNB0kBNEp3yHJJUUCj3oBa0UnH/6mRQ9ZbUKlSxyVx7Y9MQyiyLc3ePoKw8n77nPvG6OHmMfX4HOThujVz76wFt/zKhtBZpuCtgygbQkrYgJLI6/kMPKRtDZfYl3ltRepwN/Ma2D5EBeKMXfRECBQ2JVCzb/+CGaRtbcIYzrIrxURFTeDv8H4StrvQfWAtFkXpZH+STpp6KPP8oJR419qCaarFUULao/fMlo83VpgUtJXYAQO/HUrjkjBFLv6jmBb0iy+oA/ThCiHTPSJcaPcxyCzNEfxoSSa39
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z0f5aN+oyAgRKND+DxjV/R2HPZbcKbOiYzZDYrcdknTiapiiLIOoMGpWcNOP?=
 =?us-ascii?Q?rOgQdnEZ//3PZ3A0lDzMVYt28HPrNHk1jvcjz+i0+ELftu9kBapKW/010ek2?=
 =?us-ascii?Q?ewdUfxMIZyLbnhKylFySp5iJfjnn6VX7VaJKHDsoZtigG+fi6pXpdv8vIK6L?=
 =?us-ascii?Q?xv2JVWgWNcsPBt/PVIRTVmH1ksxhx6nYnh45c8mX68L1eYMrdC/6EsfHgY+p?=
 =?us-ascii?Q?YAm2oUA5UpzU0KepBd+g+UdZj3UDQlSVGNRdAM1htiGvCnC0yKr7BwipCraS?=
 =?us-ascii?Q?TvvQdKylrMKReeYBJzbDxheTbcMjpoecz0+pcMNYlM/NdUh4zoRRvO0B6rhC?=
 =?us-ascii?Q?nmuzA1xeHHdg/ZsXR7oa9mNMgtRtdpNG9uFgkBitG+FykzPW3Uogmbwxy0mc?=
 =?us-ascii?Q?IbPpHo4122aPTp4A8UDnyxrhy1Az1A1VX55w/n/nvbqLxpoB+Nw0tCELuFDC?=
 =?us-ascii?Q?PNf19wh9StGq1fERZIHYBEAy7I14cWOYaiNQ2ILHBiG6IOGCeeB50qcZvZzi?=
 =?us-ascii?Q?rNc/HRaGNnpSbG6cJrkT5G3AkGQPJ9ESTRHfSeIuib8tHzgJsQNtMcvHSIor?=
 =?us-ascii?Q?K/nN6AVZaVgSYm+kvNL76D4SoJ32aRDyI+PcYFDfbM7/A5rfKNA63zK//5lU?=
 =?us-ascii?Q?X8P7gqdSSoCBz73FNG4ORjrsHgEkRzCDGkgqXQWOCtPlpezbnsQDOCv1v4A8?=
 =?us-ascii?Q?9s3RRUp7DU9dySD+w+HqnuTAej3pYhwubfdl1LWftUFm5YNLDrUanUBmJuuz?=
 =?us-ascii?Q?mDouC8RCpDUwjoi+Tq55wcb6DnkV2vjcvCOVSEQjUi+4tFI4nk67uwxRiyp7?=
 =?us-ascii?Q?0y/h3MjgpcIt3jeCIdjykaSivfTOmLEFYGiP5y8vMFPaRBtgIyMKEECqd/Ax?=
 =?us-ascii?Q?3KCicGxla2PF0I705QI7KMeyc5TniHAy8r93jx703LZZ5Td/4PZ9vlAk8b7V?=
 =?us-ascii?Q?1tTa1tYuPbMgqUtdjC26FgH+vPSncnXS26H4WFj8K3Idun+bWqxl5llymeZ8?=
 =?us-ascii?Q?JSNolrW1esE6ePOUgrYHW+TXg+aWWRH0Tgd6n/IbIH4SV9id9za3plJf8pt1?=
 =?us-ascii?Q?YLdI9qcSx/HGqGA8dzsGsMKNv10gkWM2G8mB0jPCrJAEU8DcEAtLmIAs5kOv?=
 =?us-ascii?Q?ToHIuXufg5KOqGfp0eJhqIVGC7sCD6+uHpuQJi4x04/1SZigNfGxrsKRd8rF?=
 =?us-ascii?Q?23AoecmwwT2/z+sNFJR5K9ei1rNd7w5lzMQDCTCAxZa2QinJupI1yX+HS8g?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: cb1482e1-107c-4e8b-75dd-08dbb60bac89
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 16:49:06.3702
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR06MB9029
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230915_100337_344326_4C468D70 
X-CRM114-Status: GOOD (  20.13  )
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

On Tue, Sep 12, 2023 at 10:31:19AM +0200, Krzysztof Kozlowski wrote:
> On 08/09/2023 18:41, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add ADC support for the Indiedroid Nova, as well as the two ADC buttons
> > found on the device. The buttons are documented as "boot" and
> > "recovery". The boot button is used by the bootloader to boot into USB
> > recovery mode. The recovery button use is currently unknown.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 34 +++++++++++++++++++
> >  1 file changed, 34 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > index 1e2336d3065b..4c2d662d9c97 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > @@ -3,6 +3,7 @@
> >  /dts-v1/;
> >  
> >  #include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/input/linux-event-codes.h>
> >  #include <dt-bindings/pinctrl/rockchip.h>
> >  #include <dt-bindings/usb/pd.h>
> >  #include "rk3588s.dtsi"
> > @@ -11,6 +12,34 @@ / {
> >  	model = "Indiedroid Nova";
> >  	compatible = "indiedroid,nova", "rockchip,rk3588s";
> >  
> > +	adc_keys0 {
> 
> No underscores in node names.

My apologies, I should have known better...

> 
> Suffixes usually are after -
> 

Thank you.

> Best regards,
> Krzysztof
> 

I'll correct this and resend.

Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
