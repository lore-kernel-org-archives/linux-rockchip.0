Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.9 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3E5AC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 17:17:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0DD2761440
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 17:17:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0DD2761440
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wNF49cA31N53jH6AVYzAyhKowfu8ZjM/C9HofnHI6tw=; b=g+4+GBkJjrQ2878ZVeVlPKEOG
	m8yqSKUBIww8WbrQHYr0D797bLfjBmBXhJIYF+3F6I4dxgIQy7x3XFlNLHZBTncOnn1uZmtCpoZRF
	xc24m8JSr0iMxaEd4F3IMZZQTIU8N6p5/cT8xuxscHds5DUU/OSmjA6UBq66Sv8durVEWXstWpb2d
	GFvIzqX/uhO6WJ6zyaegwisAEzBeVlPtEekE7N3n1EJCN0QY51J+TpjCQ/9g+xQOdPZqTgHxt3UKw
	yCikofL6RgiRYrQEYkjgpBupTYZ3CIKgYoIxwynb2VhsGAdJqHTymyv7ZmOE/kIETujDHWafJpNHS
	uSw1qnmnw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZGTO-00EqPs-0X; Wed, 21 Apr 2021 17:17:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZGTL-00EqPT-QW
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 17:17:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:In-Reply-To:Content-Type
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5unh9pPs0pJCKIpNHQLcmKwQsGSh9zXNfiouygoEHF4=; b=G3Pu0glU/dbA4Bv/De4qNzv+xX
 KVOvfhKhKnS/dYgLW/MLAc9dWDiifJGbO5sMhc9z3r9zcE3Nfu0tHrl+V6nlJyCA1ayMAY53VR/RT
 vpwfZyKVuLiGbYU9v+MkR82FByhbm1j5Nj/B77BaMJ3eEdB8XLuLAivb3MFKg20wxBvkano3c1j8s
 o5T5+XRMvhmv56SmphtixP0Xp2obDkO8exBrxkCOKDfUN8pGiDKHySM/zsjywrIzg7rjlghZW2nXI
 TvrafR4weOGUCnz1ypoatztJP0K10inQrhg/xER9K0P4++pz3c08GH/dHMZyoWTnlNb5Gn7jqUv1B
 5aEP+0mg==;
Received: from mail-co1nam11olkn2032.outbound.protection.outlook.com
 ([40.92.18.32] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZGTG-00D3Zu-4O
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 17:17:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mi+ZPRFjnrbv8gxZ+5vIhssyYAD/7PzGf4eL3RLyRIg/vT7gKytaNNUmZgKPYSQ5yz3mWpeDsu75/NIQ0C7w4OIkcuq7/LoR8ByJUBnov918JCRg6G0wVya7ZzSCULObWCbNIGcVg0uBkJ8p/1HFba1atXiwIo9hNq1t7o3bq7Doo5NChHDnTlCvK1eU9Vx01UvcZRhlw9EVR7VZ8Z8QshHFR13OtcQ3nnAC8CipC7oeC0A4RyHfrNgzLHWWO03aJO7W/QFOY2hIklFxK7rnsNPhKrhvoRrTIfWzNvTgGc25cPAXBpQKTuStASJ1ov5liJ5RXl1cg9P3eqYL35Q70A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5unh9pPs0pJCKIpNHQLcmKwQsGSh9zXNfiouygoEHF4=;
 b=Lt7nUMBTzDrR39VSttNbM2afUmplKjrhglHJ1axUhGY0eP2ZsdV0ZLgTjFS6LtsRt5xHWMwmR6Ka7fwXNctybtqqZfGWgdi0pEfRAVnjo6oeGalcVUiaaHU1rnHp9ne9q4hrJ+ees0/BQVmihftA89X0Xl9H52aD35vdNLishH23UobtKQEc0E1t5ghTBsUstL9X6Xs9vqFI9eiNAa0/9A9TuNNPnHDe9RWbXx70IM7VYCJdy8ixaDNDvqOXjhROEJiOX8A6kX8pCR1NrMmnp7M38NX3rWLc7tRUp8aHBFLTnnTnDoL9ay0mUoWlwPekCdoGRk+aPa7gHBN/H6rFMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5unh9pPs0pJCKIpNHQLcmKwQsGSh9zXNfiouygoEHF4=;
 b=sHHctoLKiNDN5S9wHjwXD5467aDO4KCjW7pXN8bAMru0YNAA0RM3lpCryr9w2lXVG1x7ljnDiDTcGIfUk1LmLj0e0IEcZ/JDnazeEYGoKrDCrW9yWqgq7ayUyRzUWsRvR+NiQipEXAQaiPgsWoxVW7hyHUWGutIaDoTakCFH+G/Z7O7amdAeDsFgs+q2iQ7817tLhcZkDJCJH3iFOEMRTeaMfRG48Y/jKZ572ZlGCmcOHOdqIPujvBSWCF6WTXwniA4p0MLRMoGZW2PHzNq/U6nDyRg1WunnD7XP2SxnQCkSVfGQ+kICu0oNOAdnu+m1aDSOkiBwv5PxJOduODlvYA==
Received: from DM6NAM11FT036.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::4f) by
 DM6NAM11HT195.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::78)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Wed, 21 Apr
 2021 17:16:55 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 (2a01:111:e400:fc4d::4e) by DM6NAM11FT036.mail.protection.outlook.com
 (2a01:111:e400:fc4d::64) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21 via Frontend
 Transport; Wed, 21 Apr 2021 17:16:54 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:2372569B72899EC2CDD9F766BEFB6B0DE820BE2FF17133B1745BD6F30D44668C;
 UpperCasedChecksum:F678E2B8C45D54A112544C046D150E5375AC09FCDAFE3E64E4559AD35E81DFFA;
 SizeAsReceived:7804; Count:46
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc38:a692:c2c8:f63e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc38:a692:c2c8:f63e%7]) with mapi id 15.20.4042.024; Wed, 21 Apr 2021
 17:16:54 +0000
Date: Wed, 21 Apr 2021 12:16:52 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, alsa-devel@alsa-project.org,
 broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
 perex@perex.cz, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [v7 3/4] dt-bindings: Add Rockchip rk817 audio CODEC support
Message-ID: <SN6PR06MB53421B47D52055B391BF0D49A5479@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20210420160747.22942-1-macroalpha82@gmail.com>
 <20210420160747.22942-3-macroalpha82@gmail.com>
 <375b3145-70cc-9351-76f5-b9a159dc244f@gmail.com>
Content-Disposition: inline
In-Reply-To: <375b3145-70cc-9351-76f5-b9a159dc244f@gmail.com>
X-TMN: [++ub+KGBcKw5u9R1NQEd1KAXUh2XaAo2]
X-ClientProxiedBy: SA0PR13CA0020.namprd13.prod.outlook.com
 (2603:10b6:806:130::25) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20210421171652.GA1713@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SA0PR13CA0020.namprd13.prod.outlook.com (2603:10b6:806:130::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.15 via Frontend
 Transport; Wed, 21 Apr 2021 17:16:53 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 80250e50-2e48-4521-54a1-08d904e94288
X-MS-TrafficTypeDiagnostic: DM6NAM11HT195:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nvdxj0DQQfsz9o2o7h36c2cY1xqtMZUNzEBZ3U9Pyjk8bkv091653XpSrHi301exVqEaBjN5MrRkIGTSAFxep5vlKY5Xx7N8FHvTZ9cIOrdXWzr/tJEmY0KEDYJKNvIPVGCNeVsJfDIlXG454tTTqnnRd660DqlQ1gKsE0FRvUCrwEL9Ilv2h0c9rnn+bj8R7q0v+tWmlhmRcTwBIJ99eNjwR9heRsoiIfc39bw2O5GFcjOSCsiRr218iH/1cn/u7vEvo+5WI2lCb8jddIVS+djLxBNrzCK0WQoYG0+Tg56Y3OS2vfG4TGk7w0kRHw7LRAtZPvHEvhtihfTNfdvdZ/k63U5wgWtcLWqURdqMebPpFxZpS0U0n/FmIXJv7gxiyDsznpIEoJHbtPtHyq2Qow==
X-MS-Exchange-AntiSpam-MessageData: w0PSVXLB2fAXaR04ulGYVwd/SYw2UYL7Olfi2xnp1sBegEqKKLerEH2QnPKS4BVcxGaOkjmvO3SHVnGc6NgRPGPOtpxEXHCknI2XWtNUX8eDwCqknCdKv1A2oRE+6cBKbZ23OsPaK4wa3yJbufwWpA==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80250e50-2e48-4521-54a1-08d904e94288
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2021 17:16:54.5234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT036.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_101702_323876_8CEED675 
X-CRM114-Status: GOOD (  34.96  )
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

On Tue, Apr 20, 2021 at 09:56:35PM +0200, Johan Jonker wrote:
> Hi Chris,
> 
> Some comments. Have a look if they are useful.
> 
> On 4/20/21 6:07 PM, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Create dt-binding documentation to document rk817 codec.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> > Changes in v7:
> >  - Removed ifdef around register definitions for MFD.
> >  - Replaced codec documentation with updates to MFD documentation.
> >  - Reordered elements in example to comply with upstream rules.
> >  - Added binding update back for Odroid Go Advance as requested.
> >  - Submitting patches from gmail now.
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
> >  .../devicetree/bindings/mfd/rk808.txt         | 181 ++++++++++++++++++
> >  1 file changed, 181 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/mfd/rk808.txt b/Documentation/devicetree/bindings/mfd/rk808.txt
> > index 04df07f6f793..31eaabd2e179 100644
> > --- a/Documentation/devicetree/bindings/mfd/rk808.txt
> > +++ b/Documentation/devicetree/bindings/mfd/rk808.txt
> > @@ -63,6 +63,11 @@ Optional RK809 properties:
> >  - vcc9-supply:  The input supply for DCDC_REG5, SWITCH_REG2
> >  
> >  Optional RK817 properties:
> > +- clocks:	The input clock for the audio codec
> > +- clock-names:	The clock name for the codec clock. Should be "mclk".
> 
> #sound-dai-cells:
> 
> Needed for the interpretation of sound dais.
> Should be 0.

Will add, thank you.

> 
> Add empty line
> 
> > +- codec:	The child node for the codec to hold additional properties.
> 
> This is a nodename and not a property. Add below "vcc9-supply".
> 

Will change, thank you.

> > +- mic-in-differential: Telling if the microphone uses differential mode. Should
> > +		       be under the codec child node.
> 
> This goes in a subnode. Maybe add indent a bit?
> "mic-in-differential" is a property specific for Rockchip.
> 

I've moved it after the codec description to hopefully clarify that its
position.

> Ask rob+dt for exact name.
> Maybe this has to change to "rockchip,mic-in-differential"
> Update code as well!
> 

Will do.

> Add new added property names explicit in your commit message, so rob+dt
> can review more easy.
> 
> 
> >  - vcc8-supply:  The input supply for BOOST
> >  - vcc9-supply:  The input supply for OTG_SWITCH
> >  
> > @@ -275,3 +280,179 @@ Example:
> >  			};
> >  		};
> >  	};
> 
> Maybe add separator/title?
> 
> > +
> > +	rk817: pmic@20 {
> > +		compatible = "rockchip,rk817";
> > +		reg = <0x20>;
> 
> > +		interrupt-parent = <&gpio0>;
> 
> Missing in properties.
> 

This one was tricky; I honestly am not 100% sure but I think it's a required
property. I added it to the required properties as I see it used on every
implementation for this chip.

> > +		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> > +		clock-output-names = "rk808-clkout1", "xin32k";
> > +		clock-names = "mclk";
> > +		clocks = <&cru SCLK_I2S1_OUT>;
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
> 
> > +		wakeup-source;
> 
> Missing in properties.
> Is this common for all rkXXX?
> 

I don't think this is common for all, I believe it is optional for some. If I
am not mistaken this is because there is a button connected to the PMIC that
is used to wake/suspend/poweron/poweroff the device. I put it under optional
for now as I'm not sure if every device has this or not.

> > +		#clock-cells = <1>;
> 
> > +		#sound-dai-cells = <0>;
> 
> Missing in properties.

Will fix.

> 
> > +
> > +		vcc1-supply = <&vccsys>;
> > +		vcc2-supply = <&vccsys>;
> > +		vcc3-supply = <&vccsys>;
> > +		vcc4-supply = <&vccsys>;
> > +		vcc5-supply = <&vccsys>;
> > +		vcc6-supply = <&vccsys>;
> > +		vcc7-supply = <&vccsys>;
> > +
> > +		regulators {
> > +			vdd_logic: DCDC_REG1 {
> > +				regulator-name = "vdd_logic";
> > +				regulator-min-microvolt = <950000>;
> > +				regulator-max-microvolt = <1150000>;
> > +				regulator-ramp-delay = <6001>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <950000>;
> > +				};
> > +			};
> > +
> > +			vdd_arm: DCDC_REG2 {
> > +				regulator-name = "vdd_arm";
> > +				regulator-min-microvolt = <950000>;
> > +				regulator-max-microvolt = <1350000>;
> > +				regulator-ramp-delay = <6001>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +					regulator-suspend-microvolt = <950000>;
> > +				};
> > +			};
> > +
> > +			vcc_ddr: DCDC_REG3 {
> > +				regulator-name = "vcc_ddr";
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc_3v3: DCDC_REG4 {
> > +				regulator-name = "vcc_3v3";
> > +				regulator-min-microvolt = <3300000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +					regulator-suspend-microvolt = <3300000>;
> > +				};
> > +			};
> > +
> > +			vcc_1v8: LDO_REG2 {
> > +				regulator-name = "vcc_1v8";
> > +				regulator-min-microvolt = <1800000>;
> > +				regulator-max-microvolt = <1800000>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <1800000>;
> > +				};
> > +			};
> > +
> > +			vdd_1v0: LDO_REG3 {
> > +				regulator-name = "vdd_1v0";
> > +				regulator-min-microvolt = <1000000>;
> > +				regulator-max-microvolt = <1000000>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <1000000>;
> > +				};
> > +			};
> > +
> > +			vcc3v3_pmu: LDO_REG4 {
> > +				regulator-name = "vcc3v3_pmu";
> > +				regulator-min-microvolt = <3300000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <3300000>;
> > +				};
> > +			};
> > +
> > +			vccio_sd: LDO_REG5 {
> > +				regulator-name = "vccio_sd";
> > +				regulator-min-microvolt = <1800000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <3300000>;
> > +				};
> > +			};
> > +
> > +			vcc_sd: LDO_REG6 {
> > +				regulator-name = "vcc_sd";
> > +				regulator-min-microvolt = <3300000>;
> > +				regulator-max-microvolt = <3300000>;
> > +				regulator-boot-on;
> > +
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt = <3300000>;
> > +				};
> > +			};
> > +
> > +			vcc_bl: LDO_REG7 {
> > +				regulator-name = "vcc_bl";
> > +				regulator-min-microvolt = <3300000>;
> > +				regulator-max-microvolt = <3300000>;
> > +
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +					regulator-suspend-microvolt = <3300000>;
> > +				};
> > +			};
> > +
> > +			vcc_lcd: LDO_REG8 {
> > +				regulator-name = "vcc_lcd";
> > +				regulator-min-microvolt = <2800000>;
> > +				regulator-max-microvolt = <2800000>;
> > +
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +					regulator-suspend-microvolt = <2800000>;
> > +				};
> > +			};
> > +
> > +			vcc_cam: LDO_REG9 {
> > +				regulator-name = "vcc_cam";
> > +				regulator-min-microvolt = <3000000>;
> > +				regulator-max-microvolt = <3000000>;
> > +
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +					regulator-suspend-microvolt = <3000000>;
> > +				};
> > +			};
> > +		};
> 
> Add empty line, like the rest.
> 

My mistake, will fix.

> > +		rk817_codec: codec {
> 
> > +			mic-in-differential;
> 
> See comment above.
> rockchip,mic-in-differential ??
> 
> > +		};
> > +	};
> > 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
