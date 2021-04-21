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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 564B1C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 17:19:50 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 991A061440
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 17:19:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 991A061440
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x9dQ1F8yoiKJz4EzhbS63IFHWx54fl0Ex7d3+zjC31s=; b=cv3LpSG2bXOT6QDu2DYJWbLqL
	JitV8uIRRpczKBlVeyHzlUoESOfNWT3qo9ULj9cylzEH6i7injvV5mYd1es8g6b5lE8mIigjiarkr
	taOQpT517GId1I2q9Q2V75Q84fil6T5ILngvtFma5qn4LbHNUcQgBRJ/zUar3yTDB3Rj9C8kVVrni
	1cBVKiVtNOSDh7C5B/sGsio8+V0AQe86WXE0K+Sf42CAK7PFJw6GrNJMsauDZwmZl5RfF1/A4DwVk
	G6EKLV2Fj2falQaoSnYH+cGI6Aa8VUmtj2tUknevvKdE/H5Y863LdhyEiZbnUYcDQ1FEQwzf6rVn6
	XMBlYv+AA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZGVs-00Er7w-CC; Wed, 21 Apr 2021 17:19:44 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZGVq-00Er7b-TI
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 17:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:In-Reply-To:Content-Type
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=NB0yfNvWyMp26wFDNA2XtrNmmbRd+2Zm3l0zr1Pm8so=; b=ApGhrDD+A0AHK2PV8F9aufF35i
 tOqGpalVJr4mzZhK2x9MwujlmkZkfPK62FAwxXD2LCZKqJFngAigkoeA3zHWoP4rCa3jXF263O2RR
 c2JOrq5MQugFD8uSW+v8fYFE96+tEIDJHImZergH68wzF0WqUnf7QxZWY0CSoDTk/qojEr8EXDqJz
 UUlNp97L34p4cM06A/wanB9ZIxMX7gW/3sENzWly/ZY2rbYrqyIlbCTE63XceNxXMtpOHnGq8iynX
 cBbDWo6dssOy5pHxcvqDMN6UDm1NLJd6mGluNXG32EOn7/zKWpOtAocZ/8Sw1IBF/7VBW3AbcxKyW
 bQYxaomQ==;
Received: from mail-co1nam11olkn2010.outbound.protection.outlook.com
 ([40.92.18.10] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZGVl-00D3g3-Cc
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 17:19:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a9JovvAh7SqxsaYX2CElN2QsmN4CfKh06Wth2FX5X6npu0FkvqDR06yaffhsp3O63pZkaSJjw/spNMPaLE2Nr/tNwrtVbUYlMjC+E+ejKcBY6WNqtIoGDCUnqae+RVe8SKkfn6WG89sDFiMQvf1pQIu+omy+knUE/YJM2Ls//Og8KvG0F+rWfWlyPt63tX4UXSDeA3jIG2vv3qdaOXQw7TuXnptiG5iXXC4cFGS9eLbVoMuIM1FTY7viU2QEb2kZPk0Vocm6bl+v+0HG1+yi7A2HsPNuPScA0YnWMvii5jCVQ4aBjgfUUEHpZZ+Op1HqMZx0IsHSSxIc8ASk48YI3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NB0yfNvWyMp26wFDNA2XtrNmmbRd+2Zm3l0zr1Pm8so=;
 b=XBvM+GmVuq9Q1q6f9/N7a0u+TNAUvMcn800DTkQLVhiix/fmcqnMoA7XbQfU2ZKvdfgYGSS5efyorUXshrTToGwBUW5GuH49XAlDuZnD4yojao4vs8EGC7ifHA2VJxttMwBrzyFHzqlslgW3fRtJLrkvC90TGRbqDngFeyFAaLD6RRYqpmCegl9aUCAW87rSYUZfiaPPK4EPsBCtnl6K8Fd9aVaReaPZGR/srxGfY7Avr18+56ODxfhS95knBH7SxIg5mRaykRJ+i0JKQ2Hxp0fbRrmis0xDRoqzSsFqaiWORN5ZVHDeLK0efrynj/Jq7NHohyRBX41QGzlxlZc3BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NB0yfNvWyMp26wFDNA2XtrNmmbRd+2Zm3l0zr1Pm8so=;
 b=kT2xVhKxbs05lNmPAFNtwplZUcQRLhxL7Cm8r/edltWlhQCwglsTnLYDJtDviQKpED2fVFqgzTRao+A4D3DA7eKf/V1B7Bf8HHvHr5raUhkUtSAPbUspJWumSs0JDZUdXEDUYdnRE7nUDLUXLqKK9shOPTD35z6hCLUGv1ExDKYU5zPvLchcD8SPaF4Ls4maDb+01Ak9peW7dN/AZV5TgBBuMq8X7xA1Ovaa0pkAprNEwksH+GEQo/mouAJBwWS4uWlrea/ryfwylqVKq0bG7d2kV+UFaENJ6gr/D/s90x36X+SUHZKLBQe8TYxj8VDYqrXqq0w92cp8FsLw8wfe+A==
Received: from DM6NAM11FT012.eop-nam11.prod.protection.outlook.com
 (2a01:111:e400:fc4d::40) by
 DM6NAM11HT180.eop-nam11.prod.protection.outlook.com (2a01:111:e400:fc4d::105)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16; Wed, 21 Apr
 2021 17:19:34 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 (2a01:111:e400:fc4d::48) by DM6NAM11FT012.mail.protection.outlook.com
 (2a01:111:e400:fc4d::365) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21 via Frontend
 Transport; Wed, 21 Apr 2021 17:19:34 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:4B758E55213042BA89874B91152A28AFFE9AB132BFA3A83AE098443655A32332;
 UpperCasedChecksum:D0632CD6D7291639C1EA76EE9CB62DF5E1DEC8A94E5098530E1B7ADABF90C90D;
 SizeAsReceived:7812; Count:46
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc38:a692:c2c8:f63e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc38:a692:c2c8:f63e%7]) with mapi id 15.20.4042.024; Wed, 21 Apr 2021
 17:19:34 +0000
Date: Wed, 21 Apr 2021 12:19:32 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, alsa-devel@alsa-project.org,
 broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
 perex@perex.cz, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [v7 4/4] arm64: dts: rockchip: add rk817 codec to Odroid Go
Message-ID: <SN6PR06MB5342DB86A948FAADA4B175C7A5479@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20210420160747.22942-1-macroalpha82@gmail.com>
 <20210420160747.22942-4-macroalpha82@gmail.com>
 <c31c3417-0ded-3274-6879-bbd56f26a2aa@gmail.com>
Content-Disposition: inline
In-Reply-To: <c31c3417-0ded-3274-6879-bbd56f26a2aa@gmail.com>
X-TMN: [DVhHmNP/xhzOFpjDsclT0nqyWZDEr+nh]
X-ClientProxiedBy: SN6PR05CA0032.namprd05.prod.outlook.com
 (2603:10b6:805:de::45) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20210421171932.GB1713@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SN6PR05CA0032.namprd05.prod.outlook.com (2603:10b6:805:de::45) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4087.16 via Frontend Transport; Wed, 21 Apr 2021 17:19:33 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 4f6d8efa-a751-4af3-f8b3-08d904e9a1de
X-MS-TrafficTypeDiagnostic: DM6NAM11HT180:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6DPAn6mz32mRJI11R08mJp04DtEamkXkS768XT97cpmYzBLhUzMY9PbU+XVtuz5AB7lWt8dPNvMgxrqDrMpmcY0r5dJxgFootxnGLKDos8+rLozj6ShsU9ZeTUUVZFfGxxBiRz9ZGZOPFcGmKy5rHJMdJ9XQSDWY3W3pgz8yudKvgW56u9WNbx6SHO1p1hV5z9TPUqhFlN7ivmCOlZBHGLPtJS3g5a7uTyFhlbl9Eh+BgHvyNwj/6sLUDgdj9ArEz0JfsOeZRAg1iow5/bUX/SGX41qDCpehPf/BSqVNzI/zwxelF5H1ROdYrQBh7axtw+aWILuPVxXcI58q5vl04F6tD7X/azcerq3mpj1YCjZdtH07HDCfev4WSEoUiehp2+7P/tNImVzy+LpoWIPZeA==
X-MS-Exchange-AntiSpam-MessageData: eehreRASYGtnGzeNH5cILR+YWKGsMfVlUtrOO1J52FGQ1AD4b5ffdf78MhUnse7pCmgTTJHprmvkdTERvawr3YXkfl1uAb/7IpOQfUwcMY8qmIPxSge79um920e+2+bWXDP6oX/tbfWG40Hl88hXag==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f6d8efa-a751-4af3-f8b3-08d904e9a1de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2021 17:19:34.3219 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM11FT012.eop-nam11.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM11HT180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_101937_466208_1F2583AD 
X-CRM114-Status: GOOD (  27.64  )
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

On Tue, Apr 20, 2021 at 10:13:38PM +0200, Johan Jonker wrote:
> On 4/20/21 6:07 PM, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add the new rk817 codec driver to the Odroid Go Advance.
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
> >  .../boot/dts/rockchip/rk3326-odroid-go2.dts   | 36 +++++++++++++++++--
> >  1 file changed, 34 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > index 97fb93e1cc00..5356bcf6d99c 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
> > @@ -161,6 +161,29 @@ blue_led: led-0 {
> >  		};
> >  	};
> >  
> > +	rk817-sound {
> > +		compatible = "simple-audio-card";
> > +		simple-audio-card,format = "i2s";
> 
> > +		simple-audio-card,name = "rockchip,rk817-codec";
> 
> "simple-audio-card,name" is an exception to the Heiko's sort rules.
> Move above all other "simple-audio-card" properties.

Will do.

> 
> ===
> 
> "rockchip,rk817-codec" is too long for the "aplay -l" command.
> Maybe keep it in line with other boards
> 
> ?? "Analog" ??
> 

I can do analog if you want, or maybe just rk817-codec? I notice that several
boards (such as the pinebook pro) do have longish names (21 characters versus
20 for this board). Happy to change it though, your call.

> 
> > +		simple-audio-card,mclk-fs = <256>;
> > +		simple-audio-card,widgets =
> > +			"Microphone", "Mic Jack",
> > +			"Headphone", "Headphones",
> > +			"Speaker", "Speaker";
> > +		simple-audio-card,routing =
> > +			"MICL", "Mic Jack",
> > +			"Headphones", "HPOL",
> > +			"Headphones", "HPOR",
> > +			"Speaker", "SPKO";
> > +		simple-audio-card,hp-det-gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
> 
> Add empty line between nodes.
> 
> > +		simple-audio-card,cpu {
> > +			sound-dai = <&i2s1_2ch>;
> > +		};
> 
> Add empty line between nodes.
> 
> > +		simple-audio-card,codec {
> > +			sound-dai = <&rk817>;
> > +		};
> > +	};
> > +
> >  	vccsys: vccsys {
> >  		compatible = "regulator-fixed";
> >  		regulator-name = "vcc3v8_sys";
> > @@ -265,11 +288,14 @@ rk817: pmic@20 {
> >  		reg = <0x20>;
> >  		interrupt-parent = <&gpio0>;
> >  		interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> > +		clock-output-names = "rk808-clkout1", "xin32k";
> > +		clock-names = "mclk";
> > +		clocks = <&cru SCLK_I2S1_OUT>;
> >  		pinctrl-names = "default";
> > -		pinctrl-0 = <&pmic_int>;
> > +		pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
> >  		wakeup-source;
> >  		#clock-cells = <1>;
> > -		clock-output-names = "rk808-clkout1", "xin32k";
> > +		#sound-dai-cells = <0>;
> >  
> >  		vcc1-supply = <&vccsys>;
> >  		vcc2-supply = <&vccsys>;
> > @@ -428,6 +454,10 @@ regulator-state-mem {
> >  				};
> >  			};
> >  		};
> > +
> > +		rk817_codec: codec {
> 
> > +			mic-in-differential;
> 
> This property name might have to change.
> 

Yep, will do.

> > +		};
> >  	};
> >  };
> >  
> > @@ -439,6 +469,8 @@ &i2c1 {
> >  
> >  /* I2S 1 Channel Used */
> >  &i2s1_2ch {
> 
> > +	resets = <&cru SRST_I2S1>, <&cru SRST_I2S1_H>;
> > +	reset-names = "reset-m", "reset-h";
> 
> Remove.
> "resets" and "reset-names" have no support in mainline.
> See rockchip-i2s.yaml
> 

Did not know that, will remove!

> >  	status = "okay";
> >  };
> >  
> > 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
