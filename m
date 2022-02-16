Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2741C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Feb 2022 16:58:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lx+ukgW4lhFnonbe6Jc4u/3CLKMkDgYI0ADlG5nC4Ow=; b=ysda2ttlDXFHif
	drDUVeYM2LBoqp+8mU3klyXud7X4GLh6oatvswKu25OvVOUJTABYtPkPu32P6Mz3hYUfVXk3gn8hA
	OlpCjWyEg7nab2gXgOgAPVzrme+JZoxMpB/+BoefPhza9C/BGQ638ukLcP7Ev2V18egr/rLfoPvQP
	o+Zp47AAruWnvU1od687kmtpbVPsRxJFnRbaqpUcZSiFbil9H/C5tjqzfFX5edTnLsDBH54MOD++s
	C6i4Lsx8hLjQGotTLpk6FYEgp+FDPDNic8DhN8L0JDHRZ/fxwoocxXg6ohMjYXIk1waunVkZxMWTj
	NkwtE32IzkwzlI63BtHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKNdG-007p9l-Vt; Wed, 16 Feb 2022 16:58:23 +0000
Received: from mail-dm6nam11olkn20814.outbound.protection.outlook.com
 ([2a01:111:f400:7eaa::814]
 helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKNdC-007p82-9t
 for linux-rockchip@lists.infradead.org; Wed, 16 Feb 2022 16:58:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fr5wGTYDJHgkDmzVfjhuW+ZzIB6zkE3lFCx79D5+VrpyqGyso5DLJk/Ls71bSyoGP6UpFo1pAia3mY6WJADdQZpiyupoYGO3NdOOlQzkWhrCxe9D1t/qKAgVXrx4oUB5wbghmwi2JiHs0heEGS7CTv9GN7dGg3A9Tg66bQEgQZ33XBjG6W3mSr9nWIeSbcbqz4NjW7jWipUYetUhrm8EAxXb5xrJrrIIJio5SAD5prtC1GcGkEBzVDIK5TAcEUIOPMmFHHkFbR1F/pyFYbuNqsueNmL7zOJ3DShyufRSBYsxyk9+k0A2CLd4KHWFFZqK4a0ErrbMeohwpb8sn76znw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u870eslXDfhecN2Svw3KZHDJMGx3HrUHCu8HMcUcO9Y=;
 b=l2RpnG4nnWLYEyBSdSfu7hDbtkuzWxec0f0RTszDu17FHBTWKzjgFJq8zsv9LPbwrdEjakkFdiIocBtRE3MeNuAbdJhpUvyAyoBmbCgtASfA52LCeYI3qfTga5/Q5XEZllluZ8oMvz8+wwjMKz5GRFxSbleKblJtPvQ3CIYNR/HsqtWzIwv2aso7eo41vIx8FmtxKXw+bQmG9MpL9qSKsHfZMEhp4rchSbR8g2p70ksu14oEubvQiElX+oyfmCCaxYbhmIOe1ZCReYWY4ffO9XYagjx0E6Ny/MfwkTUVgvCBc8FOBXTjEfjVgYcUeCL3xHpzLlNG+3hhh1V9nSA1GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u870eslXDfhecN2Svw3KZHDJMGx3HrUHCu8HMcUcO9Y=;
 b=NmHEd8aAQCvcR9ZwBl5CoeRcheeq/ocz+Ru6cYPMbFaSTpNQi31cWyGhz/wxqVx2Yww0G/Krkg2c9HLYz4V1RNKznEudiPZvR3LYwZqqG3MLJrCDIrPe+q0u6f5r6Vx1iyhdiV4yLAwhowlwqVkSqBb4ByWrxHiFNeq9SrR00+qEE0qUlag2ANkk/7Q1JeLw7p2Fet1uskhhP1WahzkbfBeMSKn60p8ZLJNxGxpq0xCWN7MwPxhkmxj6w4iLgwKee6oplhkHeKrSX2tyKGHKdWy71MYqPjMjgMauj5YaqOblO3kKOt3jqiRErujG7b4sRCFyD5susk9vJOezrLSX5A==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by DM6PR06MB6170.namprd06.prod.outlook.com (2603:10b6:5:125::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.15; Wed, 16 Feb
 2022 16:42:54 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc4d:1caf:5746:df98]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc4d:1caf:5746:df98%6]) with mapi id 15.20.4975.018; Wed, 16 Feb 2022
 16:42:54 +0000
Date: Wed, 16 Feb 2022 10:42:49 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
 lee.jones@linaro.org, robh+dt@kernel.org, heiko@sntech.de,
 zyw@rock-chips.com, zhangqing@rock-chips.com,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <SN6PR06MB53426516C0B30CE4A0304A66A5359@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220215211548.31940-1-macroalpha82@gmail.com>
 <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
Content-Disposition: inline
In-Reply-To: <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
X-TMN: [0InUzWOF+0Xgjm3Ag3Qfoh8Tnd+8eXmW]
X-ClientProxiedBy: SA9PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:806:20::34) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20220216164249.GA513@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 001112c2-0449-4147-c3d5-08d9f16b5f3e
X-MS-TrafficTypeDiagnostic: DM6PR06MB6170:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: h+UCDwQtB4feZOBekgqWVSNvbfV7oNX7IG+T3Ine0xM6xURYwDF6ml1DRHGB+/0NgTivBjy9nA+VwzH8mzr47hrboR9i5wZTWiKOiXuUqOD5zx4wIg7d0KQILWX6Y3XFXTyvuG7YS0E/PxDlXtsE2Lo3eiZ/greHiF+At+56laN2WuiKjsHPtNL4MD916EoPcQz5v9tSeMDmqcM/ySr0yqsrO6uIJlar3bRKDHV+EGBRsoRe2kFFJdmLjz0NPb0xvvJq3NCEsCHkPXmv4zCLXOcwFmONVJnEaFBjyl/QPuYXSe51MzcUILjcCbjkdxBZsSladNaevWd1K5RIXqK2bdgdNRgWNJ+mXBiIArpsyP0/agbw3WiWsVLU/31qplzjZsh3D9YgAjgS4iWh+yNEASJEshjfZ8GYJxopahRlE1NWEqbaa/LrLGzqIDrrW+IGKpLmO8xeY9xNhh9MYIZ6+JUaeNv9EeV8b2iMCiMxvl9EoQvmbi0YAfaK1Md7Jumm7m3WszcgjHi9aGRnVtBbalBrb4LMt9DOD4YN0oQ23DZfc+ULuM73nlTig4Kt9u9uwMB9JCTOsYe7OXze+/ioruwVxcWppP/XZXewsGAixX9fBNDZvNCyLLkXy8Sxg93M
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?drw3PRJNZCOsuV6z8GYVrVzzKXol1aRj3IQ2T/OPHoJRwRckoMki2vwAtfah?=
 =?us-ascii?Q?IwmIGp8+Sex7FBX/gBAGovG3+P8IcdLBoxVFhVHh4RgqmNiKr+D5EezgukT7?=
 =?us-ascii?Q?Y1FwPBJMKKaXo+7B+IIYYEDmzBwhMMWx/5TwQ7Ba3CdNSAmIMs6HxwC21acr?=
 =?us-ascii?Q?HdmdzHOjfHKOtJkMtTr7lZHOvToXn69jo3nSOdfXUpc5uuhX+nU77xlK47XF?=
 =?us-ascii?Q?rqXaNynkFERBH5id3nIIwgPUm2XS7bFyiSmaGnIWU2/69x8YTFe40QsAhGM3?=
 =?us-ascii?Q?UT6LnNGd9BD3I9oaqRNkeYgNGUGmPxJinVnaOJbo5pNlw+5RnwmC4HXwVbAi?=
 =?us-ascii?Q?6ucgVh/pNBjB+bO9fmunjdtZZROzOtZZVHyvF/FWYTWMPjPB4w/17Y7aDE8n?=
 =?us-ascii?Q?HsJlCCkpJFBKZFT4b7hv0A+9cEE/HZT19NUG7HmuqLGq5FnsmkZEFOsnkVAs?=
 =?us-ascii?Q?e8OALwUnrAh0aU36czt75jWb2jyER60giyK87lnhl2HWpWaTniIzI61SFEVT?=
 =?us-ascii?Q?UT+V+qjRcjoeKl0VRcTzOQei5fQsb7kjnfY/DGU6YbATOmRTvc9PIqlDdaTM?=
 =?us-ascii?Q?dHt4sjbvuhpbk2vMvtWRZyV7GDw9qweN2RbDplMWC9sa7hQezGVFzNHrb5ky?=
 =?us-ascii?Q?4loSp3C+eOgXY7bMS1dl8UpkWHqtmXWdt1PWXrFBC9efaKefn1hjVLXY+Ycc?=
 =?us-ascii?Q?SB2DB+onz+xPWY+WdRMt1xOrb28JNQAiuE5M+HBZ/FbY0fPccftCqRL9/IMh?=
 =?us-ascii?Q?cGUA0zZ0J6SVAuCYMZL4H9t4MNXtU7+jgIBq//lvr3iyYk9NjrCKrGNngbLf?=
 =?us-ascii?Q?YDkfbZMTxpJ6unI1dy82ozbyV6XyOZliLZwuLzGoQpiQ2pjfR0xz99hUCSIH?=
 =?us-ascii?Q?tWu1SmGa/1oazCUfNRGD1eQOKpqEadETQP8R2bF/mS+0Z7EoH0kL3n7QAIyq?=
 =?us-ascii?Q?VFFYuLQT/fOABRCE6FXz1Q=3D=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 001112c2-0449-4147-c3d5-08d9f16b5f3e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Feb 2022 16:42:54.1533 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR06MB6170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220216_085818_381997_6127E72A 
X-CRM114-Status: GOOD (  36.98  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, Feb 16, 2022 at 12:39:09PM +0000, Robin Murphy wrote:
> On 2022-02-15 21:15, Chris Morgan wrote:
> [...]
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> > new file mode 100644
> > index 000000000000..1b928b94fbfd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> > @@ -0,0 +1,88 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fmfd%2Frockchip%2Crk805.yaml%23&amp;data=04%7C01%7C%7C4b9a90979e484e90998208d9f149582b%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637806119583069800%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=C32SCbOML%2B29SpV3XPn6dfHnncMQpQtlNjeJmr46%2Ft0%3D&amp;reserved=0
> > +$schema: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=04%7C01%7C%7C4b9a90979e484e90998208d9f149582b%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637806119583069800%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=Z6bCBf7CzFrLyMwJY2FyGQn4LKP7X0U5qcVAJlIi0Ms%3D&amp;reserved=0
> > +
> > +title: RK805 Power Management Integrated Circuit
> > +
> > +maintainers:
> > +  - Chris Zhong <zyw@rock-chips.com>
> > +  - Zhang Qing <zhangqing@rock-chips.com>
> > +
> > +description: |
> > +  Rockchip RK805 series PMIC. This device consists of an i2c controlled MFD
> > +  that includes multiple switchable regulators.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk805
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  '#clock-cells':
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    maxItems: 2
> 
> I think this should be 1, since RK805 only has a single CLK32K output -
> ditto for RK817.

This might be another case where the devicetree is wrong, but setting this
gives me an error for the rk817 yaml now (because some boards are specifying
2 clocks when the hardware physically supports only a single clock). According
to the datasheets the rk809 (in addition to the rk817 and rk805) only support
a single clock-out. The driver "supports" 2 clocks for the rk805 in that it
always sets the recalc_rate for the first clock as 32768 while allowing you
to "enable" the 2nd clock, but it's all the same clock. The driver for the
rk809 and rk817 only allow you to control a single clock.

Do you think I should set the max value for 1 for each of these 3 PMICs and
then we address the devicetree errors because that reflects the real-world
hardware?

> 
> [...]
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> > new file mode 100644
> > index 000000000000..f5908fa01a61
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> > @@ -0,0 +1,257 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fmfd%2Frockchip%2Crk808.yaml%23&amp;data=04%7C01%7C%7C4b9a90979e484e90998208d9f149582b%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637806119583069800%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=JFsfLXHDw0y7KI4eAqx8wiOZGeq16Bq1LefNRhkidRo%3D&amp;reserved=0
> > +$schema: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=04%7C01%7C%7C4b9a90979e484e90998208d9f149582b%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637806119583069800%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=Z6bCBf7CzFrLyMwJY2FyGQn4LKP7X0U5qcVAJlIi0Ms%3D&amp;reserved=0
> > +
> > +title: RK808 Power Management Integrated Circuit
> > +
> > +maintainers:
> > +  - Chris Zhong <zyw@rock-chips.com>
> > +  - Zhang Qing <zhangqing@rock-chips.com>
> > +
> > +description: |
> > +  Rockchip RK808 series PMIC. This device consists of an i2c controlled MFD
> > +  that includes regulators, an RTC, and a power button.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk808
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  '#clock-cells':
> > +    description:
> > +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    description:
> > +      From common clock binding to override the default output clock name.
> 
> minItems should be consistent across RK808/818/819 - when two clocks exist,
> either it's legitimate to rename only the first one, or it isn't. There
> shouldn't be an arbitrary difference just because of what existing DTs
> happen to use.

See above. Basically it looks like the rk805, rk809, and rk817 all support just
a single clock. The rk808 and rk818 support a max of 2 clocks. The driver for
the rk805 supports 2 clocks, but it's all one physical clock on the PMIC.

> 
> > +    maxItems: 2
> > +
> > +  rockchip,system-power-controller:
> > +    type: boolean
> > +    description:
> > +      Telling whether or not this PMIC is controlling the system power.
> > +
> > +  wakeup-source:
> > +    type: boolean
> > +    description:
> > +      Device can be used as a wakeup source.
> > +
> > +  vcc1-supply:
> > +    description:
> > +      The input supply for DCDC_REG1.
> > +
> > +  vcc2-supply:
> > +    description:
> > +      The input supply for DCDC_REG2.
> > +
> > +  vcc3-supply:
> > +    description:
> > +      The input supply for DCDC_REG3.
> > +
> > +  vcc4-supply:
> > +    description:
> > +      The input supply for DCDC_REG4.
> > +
> > +  vcc6-supply:
> > +    description:
> > +      The input supply for LDO_REG1 and LDO_REG2.
> > +
> > +  vcc7-supply:
> > +    description:
> > +      The input supply for LDO_REG3 and LDO_REG7.
> > +
> > +  vcc8-supply:
> > +    description:
> > +      The input supply for SWITCH_REG1.
> > +
> > +  vcc9-supply:
> > +    description:
> > +      The input supply for LDO_REG4 and LDO_REG5.
> > +
> > +  vcc10-supply:
> > +    description:
> > +      The input supply for LDO_REG6.
> > +
> > +  vcc11-supply:
> > +    description:
> > +      The input supply for LDO_REG8.
> > +
> > +  vcc12-supply:
> > +    description:
> > +      The input supply for SWITCH_REG2.
> > +
> > +  vddio-supply:
> > +    description:
> > +      The input supply for digital IO.
> > +
> > +  dvs-gpios:
> > +    description: |
> > +      buck1/2 can be controlled by gpio dvs, this is GPIO specifiers for
> > +      2 host gpio's used for dvs. The format of the gpio specifier
> > +      depends in the gpio controller. If DVS GPIOs aren't present,
> > +      voltage changes will happen very quickly with no slow ramp time.
> > +    maxItems: 2
> > +
> > +  regulators:
> > +    type: object
> > +    patternProperties:
> > +      "^(DCDC_REG[1-4]|LDO_REG[1-8]|SWITCH_REG[1-2])$":
> > +        type: object
> > +        $ref: ../regulator/regulator.yaml#
> > +    unevaluatedProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - "#clock-cells"
> 
> Is this actually required (ditto elsewhere)? Technically it's only necessary
> if there are any clock consumers targeting this node, so arguably it should
> be the clock binding's responsibility to validate that.
> 
> It wouldn't make much sense for a dedicated clock controller to omit
> #clock-cells such that it couldn't have any consumers, but given that these
> things are primarily PMICs I think it's reasonable to allow a board not to
> care about the clocks at all if it doesn't use them. I know that the
> original binding claimed it was required, but if we're already relaxing that
> for RK805 here then we may as well relax it entirely.

I can remove this across the board (clock-cells) and resubmit. Let me know
about the other question with the names if you can and I'll fix it all in
v4.

Thank you for your feedback, it was most helpful.

> 
> Cheers,
> Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
