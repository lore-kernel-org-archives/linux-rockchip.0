Return-Path: <SRS0=rMIB=JR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.9 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5153FC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 14:46:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6BEB1613C7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Apr 2021 14:46:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6BEB1613C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FL/SlphgZUCq6tkysCtgIU4Kd6P3ixxJzx+PumcFpWk=; b=dQ88NsTvRvrXyu6CG95rftvWy
	sx5sf2iQwW2nXnFUA6upkkolp/dLj1vaS1pqVm3QyrgUn/+RJHH1zCr1nFhF8IIrpEAC0YeY5OzQO
	IbmL9xANvWj74NthYLPmiUdHcrF6wPDlG4YqtoWJG/0CSBzjD7dwfEzoSnvkIYtAjZjwuFaGW0yzQ
	hoBBAj5DR5MB3oMSzLFj+IpOoMeATv5btj50hXTLlcNvZmwgmbVo3qjiFIraQiIW5drtMIWcRCxnS
	T5B3iJ05EyOh0cK8UBToojYYYya83Npzu0YDhlPWl6rwI0atfrrVyH6RAqiBkipSO4JuJ6g1u1wYs
	7uVSypRLQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYreN-00CNvy-IM; Tue, 20 Apr 2021 14:46:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYreM-00CNvp-0S
 for linux-rockchip@desiato.infradead.org; Tue, 20 Apr 2021 14:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:In-Reply-To:Content-Type
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5zIJzvnsgvD9WtnM7Zkc/0lhfLhVONLve1otw7575l0=; b=OX5CRX0LnAx5Yipx3S0kAVqkya
 /DSzzF/ZP9KiyY8MixDgAVLPOZISwK+rpZ54hBIfV7+v2ol87gU+sdr7TjtrDVsc10FJz33tI3BCu
 0Rcz2iT1xxCyhVqpUQil9mQzU5UAfH5L30WAVZBmWRA5HiOTkb1ymC+1OJ2mW/MNv2yCMEEmY5mGQ
 Ft08phRidegOehRIJH70u1BoZrRa7EsuocK9/GHBdekhzyevkZuP2e9HdQlqQWtJAp3XW8HDozxVh
 qOUbCvhHUEzDaMAD8AF0+T7cF5hz5zDd4nRI/7zMiExsYXQIdwoBhUB2gmYaolRRslJTzDYX5G5RQ
 YuzIAW5w==;
Received: from mail-oln040092003034.outbound.protection.outlook.com
 ([40.92.3.34] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYreG-00CCmp-Nq
 for linux-rockchip@lists.infradead.org; Tue, 20 Apr 2021 14:46:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nputi9yWoOzWZjD8pQ480IYqP8fHeAvYx+Jt7EGHIte/Bluz1NGt77oIb/lcHSPnp8hgTEFEdFbQerRb1GSjc2TcaflII0twbd7FE6bp5WE/ZMQBUDuaKhCoCFCSnwD4uaKKkW7c0k3EZgUE1Bm3Ym3hhn36sgnp64dq0Lgq5ONWIWBzzfeeVHf4IBzltnOFLb3r+ekqjKYY7kYbFmcI05RoUvrtpdyZ4bEHgAJX+W7SSjRF85g7mXP5ON2AKhUrZhfR97ShDw7QR/NpkisVvb9xtZK5EAHCV4OyYFe6UJKxf/LXsJh/AwrCmumMlHzKDHT+D0IN0ZUxMf/++ZLjbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5zIJzvnsgvD9WtnM7Zkc/0lhfLhVONLve1otw7575l0=;
 b=LdSRB52xgL5kgDWetzLiOtxGMIn6r2bQs4BRQPIMchcpRg+D65WROskJTqmq32DbkC4zNjTjQaw/YlrMWvzsevQQTjQNcd0yTUn7ajEO5NW6HOuT6WYWklaQLhF5UeFquN9LsX9TRd+/78jXm5G18AORK5rDK9vQOY9nVY+/cQsJihhWgjJLKFQpevHz2lPROWayZgBvI7p42isfZU3hPODarQB4qH0fuqcM5GkqT6oTFLYpekez4g5xxWRkh4t/7UsiP0GbcjmgofnSWy7q4i7V4OoOyV6DjWFYwIY+0yRvA3wT2/q9xiZ9r3eLX+mZOvBFMNyKMpSObWaTl8cFLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5zIJzvnsgvD9WtnM7Zkc/0lhfLhVONLve1otw7575l0=;
 b=BSqPJnWQYBx/Vq6atYrOf42sIucMeHJFlbQsYLayuTpv3PfE7V1j/vOISb8TulJagRG77ZB3RlfvE6PgbmLMDOcgvTAKisS03WlFJ28JcCCVSVA1VlVOD2cxeahBF2nkJRdrWKiGrjjFzKJsH4/S4+FWL9RY958GIQbLjPPJ+kBpaQbHn1EwmxaJjIMK9DZcdllrCZ+LgAgvpl9w2S6haku2DxBc8YUX9ma2swc8b7zt3rnLfbXxg2PWjoVTao177fvXhaKuWB8D7t2cLP9D5dg+FLxGcfo33342tJ10Jb1rjLGLqC1FJoCtD2Ft3YofvXPgvz6KOC46r96jeVEecw==
Received: from CY1NAM02FT031.eop-nam02.prod.protection.outlook.com
 (10.152.74.55) by CY1NAM02HT044.eop-nam02.prod.protection.outlook.com
 (10.152.74.198) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.19; Tue, 20 Apr
 2021 14:46:42 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 (2a01:111:e400:7e45::43) by CY1NAM02FT031.mail.protection.outlook.com
 (2a01:111:e400:7e45::436) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.19 via Frontend
 Transport; Tue, 20 Apr 2021 14:46:41 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:59D83F73EABEC8FD674E2737EFEA4B5CDA519AE032A4E9F50E1677BABC18B226;
 UpperCasedChecksum:D28FB22E71F37FA37382931E1E1ED75ECC3B612642BB09C1D89C037C9668712A;
 SizeAsReceived:7776; Count:46
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc38:a692:c2c8:f63e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc38:a692:c2c8:f63e%7]) with mapi id 15.20.4042.024; Tue, 20 Apr 2021
 14:46:41 +0000
Date: Tue, 20 Apr 2021 09:46:39 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: alsa-devel@alsa-project.org, pierre-louis.bossart@linux.intel.com,
 heiko@sntech.de, devicetree@vger.kernel.org, tiwai@suse.com,
 robh+dt@kernel.org, lgirdwood@gmail.com,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 lee.jones@linaro.org
Subject: Re: [v6 3/3] dt-bindings: Add Rockchip rk817 audio CODEC support
Message-ID: <SN6PR06MB53425F044B5696A9443B469BA5489@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20210419155718.17348-1-macromorgan@hotmail.com>
 <SN6PR06MB53420A0E831C17342A73188BA5499@SN6PR06MB5342.namprd06.prod.outlook.com>
 <5cad7e70-89ca-6e4c-47cc-1248250108c7@gmail.com>
Content-Disposition: inline
In-Reply-To: <5cad7e70-89ca-6e4c-47cc-1248250108c7@gmail.com>
X-TMN: [t6fCGqx5QCqoYh4OSq7BZNCVpcWaxmbn]
X-ClientProxiedBy: SN6PR05CA0006.namprd05.prod.outlook.com
 (2603:10b6:805:de::19) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20210420144639.GA25513@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SN6PR05CA0006.namprd05.prod.outlook.com (2603:10b6:805:de::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4065.6 via Frontend Transport; Tue, 20 Apr 2021 14:46:40 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 9a9de985-faac-4493-9e6b-08d9040b1c10
X-MS-TrafficTypeDiagnostic: CY1NAM02HT044:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sqivxNwTP2HrmV/U5wwBefxLNybfCZ6m7kvJX7tULHswPOOhCFfIyOMkS/+zrBuj6jtTK5NzCZhG05Q5+h9sasPTJuCJZzr01R7+/qxGF8hnn+pTvinF11wdslQ+skESZCmmjonns5DZI124LT2HvT7b4fKM0kEKVKNLvw3s1PNP2Rjfi8SaKtKmhTyzipW+zqVQwTdXxf8zslfefyacx5xhiVUE+GHM9zg3RRD+kB4cIpRZm2pxncqs85PSyhU/KeapdXxJq2wtRf+f025pScSIs0VGuoXWBev5zPbgj0tGRdvtKA0h6ia5kGeUw6uBERcelXhTt0nP4EdOpIfiifRuzM3CxeafauXkaw5elMslJJeFr8qOl0T7GRONIUKpuZZcWSIikMxVJ684xLfUwQeGdWmHnwkVBgzjKyRNndE=
X-MS-Exchange-AntiSpam-MessageData: bzdh0lxEHN+wMmNnroiTF9oONJNOXtj/awDA+NEpO9BxMJ0xzzjMLdoOlrPqlGi0MaQ2FKCVt11gACeQ+mjQJXBYyCpqd924nW1kODxVg9WJ0zcB3pIgBlQo7F4pRCSEa1S0r3H8//TGSNp+NZDPZw==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a9de985-faac-4493-9e6b-08d9040b1c10
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2021 14:46:41.9014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: CY1NAM02FT031.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1NAM02HT044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_074644_951632_70FF7B3B 
X-CRM114-Status: GOOD (  32.61  )
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

On Mon, Apr 19, 2021 at 08:37:57PM +0200, Johan Jonker wrote:
> Hi Chris,
> 
> Never use hotmail.com for sending patches.
> They corrupt Message-ID, so use for example Gmail.

Understood. I'll get a gmail set up as soon as possible. Sorry if this
message comes through funky (still on Hotmail, been using it since 96).

> 
> X-Microsoft-Original-Message-ID:
>  <20210419155718.17348-3-macromorgan@hotmail.com>
> 
> Message-ID:
> <SN6PR06MB53420A0E831C17342A73188BA5499@SN6PR06MB5342.namprd06.prod.outlook.com>
> 
> ====
> 
> If you like rk817.txt should be converted to YAML, which is beyond your
> serie, so move these changes to rk817.txt instead for now if rob+dt
> agrees. ;)

Will do, assuming everyone agrees.

> 
> ====
> 
> Include the dts patch back in, so we can compare it with the
> documentation changes.
> 

Acknowledged.

> On 4/19/21 5:57 PM, Chris Morgan wrote:
> > Create dt-binding documentation to document rk817 codec.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> > Changes in v6:
> >  - Included additional project maintainers for correct subsystems.
> >  - Removed unneeded compatible from DT documentation.
> >  - Removed binding update for Odroid Go Advance (will do in seperate series).
> > Changes in v5:
> >  - Move register definitions from rk817_codec.h to main rk808.h register
> >    definitions.
> >  - Add volatile register for codec bits.
> >  - Add default values for codec bits.
> >  - Removed of_compatible from mtd driver (not necessary).
> >  - Switched to using parent regmap instead of private regmap for codec.
> > Changes in v4:
> >  - Created set_pll() call.
> >  - Created user visible gain control in mic.
> >  - Check for return value of clk_prepare_enable().
> >  - Removed duplicate clk_prepare_enable().
> >  - Split DT documentation to separate commit.
> > Changes in v3:
> >  - Use DAPM macros to set audio path.
> >  - Updated devicetree binding (as every rk817 has this codec chip).
> >  - Changed documentation to yaml format.
> >  - Split MFD changes to separate commit.
> > Changes in v2:
> >  - Fixed audio path registers to solve some bugs.
> > 
> >  .../bindings/sound/rockchip,rk817-codec.yaml  | 57 +++++++++++++++++++
> >  1 file changed, 57 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml b/Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml
> > new file mode 100644
> > index 000000000000..0059ef54d6b5
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sound/rockchip,rk817-codec.yaml
> > @@ -0,0 +1,57 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fschemas%2Fsound%2Frockchip-rk817.yaml%23&amp;data=04%7C01%7C%7C7f2c986dc85e4a835aae08d9036242b2%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637544542817084121%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=Dlh0Gn0DH%2FLwLWGr%2BxqAmVU7mUVwzMrsX2LYiIyGDtU%3D&amp;reserved=0
> > +$schema: https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Fdevicetree.org%2Fmeta-schemas%2Fcore.yaml%23&amp;data=04%7C01%7C%7C7f2c986dc85e4a835aae08d9036242b2%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637544542817084121%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=82MFRpHilkJCkQKT1Esi6UX1F4WZJEE4%2BOOZL0bFQpg%3D&amp;reserved=0
> > +
> > +title: Rockchip rk817 audio codec
> > +
> > +description:
> > +  The rk817 codec is an I2C codec integrated with every Rockchip
> > +  rk817 PMIC MFD.
> 
> If you want to convert rk817.txt to rockchip,rk817.yaml then add
> 
> maintainers:
>   - Heiko Stuebner <heiko@sntech.de>

Heiko is on here anyway as I believe he has one of these devices to
test and asked previously that I include him as I upstream things
for the Odroid Go Advance.

> 
> > +
> > +properties:
> > +
> 
> > +  "#sound-dai-cells":
> > +    const: 1
> 
> Move things with "#" below as much as possible.
> 

Ack

> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    const: "mclk"
> > +
> 

Ack

> > +  mic-in-differential:
> > +    description: the microphone is in differential mode.
> > +    $ref: /schemas/types.yaml#/definitions/flag
> 
> This is part of a sub node now.
> 

Correct, will update this when I move it to the rk808 documentation.

> > +
> > +required:
> 
> > +  - compatible
> 
> Add compatible "rockchip,rk817" to properties
> 

Will make sure I note these updates as "optional for the rk817" in the
MFD devicetree bindings. The "compatible" is listed there.

> > +  - clocks
> > +  - clock-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +rk817: pmic@20 {
> 
> > +	compatible = "rockchip,rk817";
> 
> Without rockchip,rk817.yaml this example will generate notifications.
> 

I'm afraid I don't understand.  I'll update the rk808 documentation to
show the correct bindings, if it's still incorrect please let me know.

> > +	reg = <0x20>;
> > +	interrupt-parent = <&gpio0>;
> 
> > +	interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
> 
> add include for IRQ_TYPE_LEVEL_LOW

I do not understand, I'll update the rk808, if it's still wrong please
let me know.

> 
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pmic_int>, <&i2s_8ch_mclk>;
> 
> > +	#sound-dai-cells = <0>;
> 
> Move things with "#" down below the list in possible.
> 

Acknowledged.

> > +	clocks = <&cru SCLK_I2S_8CH_OUT>;
> 
> add include for SCLK_I2S_8CH_OUT
> 
> > +	clock-names = "mclk";
> 
> ----
> Heiko's sort rules:
> 
> compatible
> reg
> interrupts
> [alphabetical]
> status [if needed]
> 
> ----
> 
> 
> > +
> 
> > +	........
> 
> remove
> 
> > +
> 
> > +	rk817_codec: codec {
> 
> 
> Move to rk817.txt example.
> 
> > +			mic-in-differential;
> 
> > +			status = "okay";
> 
> Never use status in examples.
> 

Acknowledged.

> > +	};
> > +
> 
> > +	........
> 
> remove
> 
> > +
> > +};
> > 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
