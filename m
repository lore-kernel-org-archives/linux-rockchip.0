Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4F32ECAAD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 12:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gudEhadVms7qkFG476mxbGIyGJAAmj7AJYeGNfq+S1Y=; b=lR+6T0AUf7tNA4
	zZDUMSqQP304HoM2NAmDDjVXoB7KqlBHAqdfEW6fHKEREQXibXnBSQ8i77mT7uMvXuIIMggEy05w/
	UVXut32EavgscHfk547LbtQlahGilnGc6b+iMRCgTbWkCVIY74ceizjPvEHBKUW956b6f9+Ajjj3j
	IeUhZrsigpcQRen3UjOjJQPQNrdVSA2ncP09+TwDP9h0Zh1XJGoqc4ETe0DykplZ9Zjw4bEJ4IDsu
	ltupRr5woX/JcjrVjWmhHQB0SzYfnSjZc+/BUb2Hwtc6byiCfYVCMHJ2Gz9cpxDoWJdb4DX+Dwrqw
	+y+onlrGsDyzhaDjqkpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYRqO-00095G-G2; Wed, 14 Sep 2022 12:50:20 +0000
Received: from mail-dm3nam02olkn2054.outbound.protection.outlook.com ([40.92.43.54] helo=NAM02-DM3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYRqL-0008uI-9w; Wed, 14 Sep 2022 12:50:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fcEk62DrM9ZatyIhTe9zlhptG9FqC5Zd6XPJSG2Xd2vhLShsaF83ojZEXff+4VmOF2fMo1aZc5InKLn+vSjL7LjepvQUiK+U6mq0yPnT2Qh9kBRfsR0To2udXoDO75yqxOHDxPw6oeOAcZx8rRYhs3xWq7BVoWd80qn14tiC6VFECw9vp2GDLKWgcRZKS1+lBUJLdJNjrQhVaakk6bw2I1LdgsgzeZ3dFO7JzPSih5vFcFwUUjS9wvMvjY10dA9hxVeUEu/g0UsEBMcXe7uvcyQ6+fY8oSPS100N4u5oUKZShX/Y35gDIXNFg5W5bXXcmR6zGpDo2jJvOvS5wuHiOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cm/wa3N/DQ5ueRmPIS3teIF/3i+5yGblTApUT86SGo8=;
 b=TcEEqydjsBeGbvDHOBoZTTP8Q802r2TIho1uud0WHs4fd+vdw2oNlO3YiheCqyvtttxoI0RRaVWotk7yYWvsCvb5Ib7xSNnYLxXB+gh3pU9qw/wE342RmrNi4VWJZonCPhO6QhXnzMS+RfXB8vlCHgMPYbT0GgkXKbf1kqnsBfAiQUmYkTAqjB5ZvAkgpetyqK41WECot0yyWB40skOHUTxIoi2yPdbKO7OTFxCf3d/VY39YBp6syhdT+/75yRD1C17vL0eORuyU/FM2EJLGhcC8vru4JxHRlqBHdWqEbWYk1nlSRiAkJApN2BD3XCnLwBK8diO6Glp+/kwGIZdMJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cm/wa3N/DQ5ueRmPIS3teIF/3i+5yGblTApUT86SGo8=;
 b=IRbFaOkDXjPb//i3EgdqPLO49ehtemjazPsxSKjqt0g6Kt7/fTtUFpqG7wOTiMZTA+zkA4/SzATJgts/dB+0u/n4F8cCcv32sWuldxOojuvaCwlhaiKTP9/EDOhuet6rib/rLie4s5nrIfQE4j9fmYvymLQPpaeRnP4t7hcqmMlmrhbgMv6EbABAifaCIeRxdFWEU1ook1VAV4wfuLPufEq42yMF+kFh6SebTItGqRhmmaXdfinGM/YqxyoF9QpXxZnp2JOyUWqkiT75Y5Q9qbUNWNjqNZMv+kxvFDfSaoFwqw8jX9M/iRIlCUiMbH5dgeYMMTeHNK0coAkWj9l7xw==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by DS7PR06MB6855.namprd06.prod.outlook.com (2603:10b6:5:2c6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 12:50:14 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::433a:1493:6a39:ee43]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::433a:1493:6a39:ee43%5]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 12:50:14 +0000
Date: Wed, 14 Sep 2022 07:50:08 -0500
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
Message-ID:  <SN6PR06MB5342040C7772D95351DFD22FA5469@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220912205607.5969-1-macroalpha82@gmail.com>
 <1d98ce70-81d5-df92-c881-1d9611042401@wolfvision.net>
Content-Disposition: inline
In-Reply-To: <1d98ce70-81d5-df92-c881-1d9611042401@wolfvision.net>
X-TMN: [uftzgUg1YuARdUxhVyZ0p4OJJw23TOmz]
X-ClientProxiedBy: SN4PR0501CA0100.namprd05.prod.outlook.com
 (2603:10b6:803:42::17) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20220914125008.GA20@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR06MB5342:EE_|DS7PR06MB6855:EE_
X-MS-Office365-Filtering-Correlation-Id: 12952209-7447-4f66-9f29-08da964fa956
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	Ku0ZDlcsNnTbbjF30NLbfSuI3oI7CGVQ+SCIRcTVtg74ywywIFnPub9yuELFVMRo4pOMcS5xPQeRKGp+zuzj55s1jeMKFtKOpREvMTDsggoigRgE6xtnVxspGrIRd08eJaOcHMfrvCfMeMz6TSU2bvAn4Dlucxlp/qGC0/LGgeJbH1Qh3xc+lB1qKPK/EgGmJsv9agGzG0DwTmNVuioRedqkgIIbodAPH5T694eyNxG8A22YZ0eQiYftDUYoId1xE9BGARMCTZznAyTjQJyPH3h3Yx97MWn6BQ4pQbZySVvYqkusBMPd11Hm12HMV1O/5fLtN3hfShhSX5PY8vz1PoXvLk/ERHZNUbAK5P2vLIoqE9JurBRptvP3e5aGJkiw+Gl219By5q8ctOjG94g44i4E5VDLzY4jusHpkFlc6VTrroymY1lfwBy86MpYztPFXmGQds9iuwF7RLfX46mRCEX3yLUTrWDYRip4F29uEUptgmmo6a3HNhVkECfEeDgpT5TBuy/MylXL9H76SxYLog1c52aBJYxsb8MXe1sCjzrbc3DdIfGq8OwST02Lqa7c2vVnhSd26XxQzkBMyHFmPVMO24xgYIBbXgScboUUhpJ0C0gqBUCM/9oXb7ekkz/AJm+iSovsvUxv7AbBVuKRNGCQCmT2bL8SHYAFZVGiVvZFpzbtQ07wzOwPnT+1haKD
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?yeqPo69FuSyxrs29a7G4CYojY9xmaHc2tvjXMAEBechmDXbRMVE4KZWbpLFW?=
 =?us-ascii?Q?OW4+HyHQZJlAdx2Z1AvQiUixlxPfcwTlmywc9z7ucnI0YoFxfSa84FEHmuSO?=
 =?us-ascii?Q?v/EXMtPF08q99wSnI9agU5tMjCb8+ttbadNhvRY3QaB4CQFZGxr03Pxv6Cou?=
 =?us-ascii?Q?fKUfx9/600C1tfMq979eS7qiY8CNlDZ717HjE6G/Gtujte4TdZ9i/mjy/jHH?=
 =?us-ascii?Q?d2dnuZf4OIyPipSjXevpZ5ea5+p+6VvRU2VCtyxBUpChzey639wAPH/Wp18F?=
 =?us-ascii?Q?dxLzZX4NpUZwCX4hXzEMeXRsk95ath66cwhS7kxvJmOdrxKWLo93TAWUXPWR?=
 =?us-ascii?Q?F2EBCCMOym8qrKmqKQI7Vlyy0h9q4/e5lCes5dl2VoDgULR4fiKWpT4C+tun?=
 =?us-ascii?Q?CdDqQoDM1SRNhKjhYM8r8aAzBhO0rBBUDdVKlDtbHEr1JdEv6MVW8cDvs7Nm?=
 =?us-ascii?Q?JxyZAzmjS38l3UUoF+3VSH/TrOSqM85mZm+hPyGiKUZP3xEFD7TT45Q4nIQ2?=
 =?us-ascii?Q?CihYJsscPQhu/DpCeZEsmacOGNR9T4DE0Cxyv2619HYcKEDGaHDUrP7CLmfi?=
 =?us-ascii?Q?YgVbcU+5diSQZhW30q/VI5fRQkXASvG0V+NDCO6dAifWtmlV1O6k03ioO6TB?=
 =?us-ascii?Q?JoFwlg1Aq8LnuQPIOs5fGlF3gHyMiuTFruJ8rBg0gxyMYtJ7AKUD4ImbiR7g?=
 =?us-ascii?Q?7xaaBuREBxSgUzm2V/vI5X6rn5L1oJgIThFrpfTBMsj9wUjBe8czvAMEHhMb?=
 =?us-ascii?Q?BAoBp3bNerOM5zJiMA5Zlvjbzr6fGAcpe1BZ952LBUK85YsPf5/qLF0iva/n?=
 =?us-ascii?Q?JnRJ6nPBIF5PIj/aVZfLR8OtA8oIuALTiAJ9fAMZx0jblJMJUmUF9jAxkVOZ?=
 =?us-ascii?Q?+wv4hAdlXiRSWKO0FjoG2iQtsMvb8dmBZ/2jPhaieIlpPQ6U+cmMzvdqBUKE?=
 =?us-ascii?Q?jOtqAXcGRN3RT3wQg3pI1JHbTQXaUugeUJ6Ie6C8Kf72Nh7h9XPAVE4jaJVl?=
 =?us-ascii?Q?2wNErohfx1cSa3a/Rzb5bv+ehJFdC/XC4zr46b1EitCoF9+1fn1Ms+eFFRG4?=
 =?us-ascii?Q?4GJMza7EXJD1PEKkfE9lWNY5Mvg02kSBbpn41sydG5BHhul/GQ2tbrD2LB3S?=
 =?us-ascii?Q?3RMYa+VOry+wb7ISc9uYU/+JcRJduTyHiNki6f++eHT+87WGCzL1WNYxPdOk?=
 =?us-ascii?Q?7Lx6HRQ8SxnEtR+JY1EIaiQSWHbS6dMiY0prSC57l9kHOhQsup9VgUFCTCP7?=
 =?us-ascii?Q?K+D3bwOQG4aZnOlkybF48AI5rspotUYF/Ekq88C/IQ=3D=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 12952209-7447-4f66-9f29-08da964fa956
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 12:50:14.0047
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR06MB6855
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_055017_424587_C3CEB4B9 
X-CRM114-Status: GOOD (  39.60  )
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

On Wed, Sep 14, 2022 at 07:46:41AM +0200, Michael Riesch wrote:
> Hi Chris,
> 
> On 9/12/22 22:56, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > This series adds support for the dsi and dphy controllers on the
> > Rockchip RK3568.
> > 
> > Tested on an Anbernic RG503, Anbernic RG353P, and Odroid Go Advance.
> > 
> > Changes since V2:
> >  - Removed dsi controller patches, as those have been merged upstream.
> >  - Removed notes about rolling back clock drivers. If I set the parent
> >    clock of the VOP port I'm using to VPLL and set the clock rate of
> >    PLL_VPLL to 500MHz this series works correctly for my panels without
> >    rolling anything back (per Heiko this is the correct way).
> 
> I tried this but it didn't help (neither did reverting ff3187eabb5c
> "clk: rockchip: drop CLK_SET_RATE_PARENT from dclk_vop* on rk3568"). On
> my display the content is shifted horizontally and the colors are often
> wrong.

There's still something wrong with the VOP2 driver, and I'm trying to
get to the bottom of it. Are you by chance enabling HDMI? Can you check
the clock for the dclk_vopx (where x is the port) that you are using?
It should be very close or the same as the pixel clock of your panel.

I noticed on mine that the HDMI was interfering with it. For now not
only have I disabled the HDMI but also put it on VP0 while my DSI is
on VP1 (note that if both are active you'll get a null pointer
dereference from the vop2 driver which is another thing I'm chasing
down). I think this is because the hdmi_ref is allowed to set its
parent clock (which is the PLL_HPLL), so it does to 24000000.

Basically here's what I've done to overcome the VOP2 issues and get
DSI working with this patch series.
1) Disabled HDMI (with it on VP0).
2) Enabled DSI and the DSI-DPHY (with it on VP1).
3) Set the parent clock of DCLK_VOP0 to PLL_HPLL.
4) Set the parent clock of DCLK_VOP1 to PLL_VPLL.
5) Set the clock rate for PLL_VPLL to 500000000.

Doing this allows the DCLK_VOP1 to run at the correct speed for my
panel instead of 24000000 like it would otherwise. When this occurs
I get a correct image. If for whatever reason the DCLK_VOPx of the
port I'm trying to run the panel on is at 24000000 is when I get
the shifted image.

The long term fix I'm trying to work on is to figure out how to
successfully get the VOP2 driver to not crash when VP0 and VP1
are both used for the RK3566 (note this actually should work for
you on an RK3568 board though), so that whole bit about disabling
HDMI might not apply to you if it's enabled.

In summary, check the DCLK_VOPx where x is the port you are using.
If it's not at or very close to your pixel clock that's probably
why your image is shifted, at least it was for me.

Thank you.

> 
> >  - Added additional details about refactoring DPHY driver to add
> >    2.5GHz for rk356x. All other devices still have a max speed of 1GHz.
> >  - Notified Heiko that the BIT(5) for both PLL_POST_DIV_ENABLE and
> >    PLL_POST_DIV_ENABLE_MASK is deliberate, because of how the
> >    phy_update_bits() works.
> > 
> > Changes since RFCv1:
> >  - Identified cause of image shift (clock changes).
> >  - Noted that driver works now.
> >  - Added devicetree nodes for rk356x.dtsi.
> > 
> > Chris Morgan (3):
> >   dt-bindings: phy-rockchip-inno-dsidphy: add compatible  for rk3568
> >   phy/rockchip: inno-dsidphy: Add support for rk3568
> >   arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to rk356x
> 
> I am testing this on a RK3568 EVB1, which has a display mounted on the
> PCB. I'll submit the patches that add support for this setup soon. For
> the time being a preliminary
> 
> Tested-by: Michael Riesch <michael.riesch@wolfvision.net>
> 
> Thanks for your work!
> Best regards,
> Michael
> 
> > 
> >  .../bindings/phy/rockchip,px30-dsi-dphy.yaml  |   1 +
> >  arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  72 +++++++
> >  .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
> >  3 files changed, 231 insertions(+), 46 deletions(-)
> > 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
