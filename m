Return-Path: <SRS0=DXbu=JQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D287C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 17:51:31 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 073F66108B
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Apr 2021 17:51:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 073F66108B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Cw69popy41GBpCj6BYpK9R281ktOyP4WfHN9pnLS5FU=; b=GAeY8IMGEXi6QcsdDSPqQ0Ilz
	U5JbguIdORScsWDu19CpsIcgPkTaOJHgf/8AJE7GhP2CgpWjArrz5wsfsS3PXjn9DqBtoHAHiBie6
	A0jToqPZ4l8TE6K/CiFMDqWTMXDlXlxr/H8VoOkNTM2wKk8MJastBJ3ils5pWjmAEWbJV8aDWTP+2
	ArADZ+prCGk6ZqK1OMuAttcLOv1/7QdSE8u4+0VNCnKWIzbAYhcI0cLdoLtELmf2wSzmjRWBsKunT
	Vng4W7ZYKnyLk1lA1pnQRDnjbzx9TgDmRcHDfSOuFpDsCeFZqIU2kVsU3uZVDN9lYq/BjxC4H0Y6B
	ko2SlKjnA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYY3Q-00ANTk-IK; Mon, 19 Apr 2021 17:51:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYY3O-00ANTP-Jw
 for linux-rockchip@desiato.infradead.org; Mon, 19 Apr 2021 17:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:In-Reply-To:Content-Type
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=BlkeXtSPvowXnIutjh+j8W5/w8bmuoOVQOqq1uDVsKk=; b=r6K7e60WZ/jA9ODo2aOFaE2Ia5
 K3TmYK8MI636LnT8JBNOVVjM2A7HEfNt6Ho8GS4LlDKeIsMc7W7MEdraZNdqMvox+Bi6E4P+Y5Cc9
 6gpY1XKUche72cPPxgtZXH+pnGYKy0pxVuZOmcIE56ljbXlTkB+nK4wtVzRRUsPzsCvXjR+X5/clW
 /ewrQm6zNJtvMW9XRhNPA2cigdio2K+88fW7jdoXbHdpb0FApBi6Kqm0+oeNNHsUsjWWOi2TnGztG
 dUHwHPWfHzBLoktLpNaFdpZKYHav0wdRWLwWyJRum/wXAlZ4/kCBQYIgheqsY+4kcIcB4CRCFgNHR
 9MVifmZQ==;
Received: from mail-mw2nam12olkn2075.outbound.protection.outlook.com
 ([40.92.23.75] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYY3I-00BZQd-SM
 for linux-rockchip@lists.infradead.org; Mon, 19 Apr 2021 17:51:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XrkzjKc7veqOVQrlGSi6QYhIVTKKmxmcsmzNI3/fJ/CpKiz4jLZe5ro0VxDiLrtzuGAGXa8zCXDzlTr5SLpALG+Tv8GGX0nNDkMEIYyvKq/OHYNazArX4HY/TgC27EHNYGKfq0hqz5KOm+6K+zp8MtBK4/UOMg3XcfONhchHrTBGcoFP4CRPVgzjvSR1UUfRtUXuamBImFG8hfEQTKRj4+f/Dx6pJgtIhxSA3w5+U9eqBYzbEYViwH7TVarqYR9ntEjLx0esX/z9r1+by+N+f20ZREXtbXZKIzWjFFzelg952PfRH3ULJtBGoSULj/PvY9m/fsNUF0dz2o57BmyJpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BlkeXtSPvowXnIutjh+j8W5/w8bmuoOVQOqq1uDVsKk=;
 b=JWnZYsXtiaWp+I+x2bGC2Zc2qJepHf05eBBJZBwEf/jN8EAGPTsfqhdIHljkUSim6b0xnreBkHMMoCR6IePOsNvHV2oVvNQCWnnpDO66lKl5jkTdbJFr1BJfWynrDuT1x/Ryzi5UAd+5pEt+wXdYNxlthNxR0Z8glaxgODGhgY3fiXlWSivnSxqFzgTggs0y/d5UBSQDR8SN8gof5sMAZZbNUI66WMvy9LWMAzlg/b3mHgKIn+UKEcHPs38ZXnrh+O1Qzq8gwYmjsDmXlEJ+va7yjIkEu7o/RTQyorXj4FK5WxD9ogEuAhJ+3fHSXncRxVNWEKtQ3XvWNNStpqE/GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BlkeXtSPvowXnIutjh+j8W5/w8bmuoOVQOqq1uDVsKk=;
 b=UWnyIZuqQyzeqK1ESOCl95BTLBvQ46Tjl2BPbzMhp5KnQtNUXKteiqafpd6R/LLXg+a3dF1Ax0xbPSJm6Old+VkWV3gxci3snqLms40pczNF3H1TQGL7uMWKsorXhB0KOqAAfjziDn9b7N7IfmAZzCs065XD8lhwdNfq1BSDVw2/U8ITDZXxZtb/eJwokSQgM9/HWk+XGodllh3rF9l6R+9LMTufP91D2/IaGye7NcaOWqOZMxAqlkOix6JndRdTeMCFRuZsghMiauwlprH8DJpC6RqnztQ70hLp46XwcTz/3VYBMGHboNnLITocQSvdz3IACXGC17i+Sq2Xv4KYIQ==
Received: from DM6NAM12FT020.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc64::43) by
 DM6NAM12HT003.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc64::81)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.7; Mon, 19 Apr
 2021 17:51:15 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 (2a01:111:e400:fc64::4f) by DM6NAM12FT020.mail.protection.outlook.com
 (2a01:111:e400:fc64::477) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.7 via Frontend
 Transport; Mon, 19 Apr 2021 17:51:15 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:05E40A2F629A017658140987131BC96C834252B9EE480337C8429E96BDD12759;
 UpperCasedChecksum:1CF589E05C1EB96F4ECD69531523B8736EEF2D97DCDF27518027D624B8A04A86;
 SizeAsReceived:7687; Count:46
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc38:a692:c2c8:f63e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::fc38:a692:c2c8:f63e%7]) with mapi id 15.20.4042.024; Mon, 19 Apr 2021
 17:51:15 +0000
Date: Mon, 19 Apr 2021 12:51:12 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Mark Brown <broonie@kernel.org>
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, lee.jones@linaro.org, robh+dt@kernel.org,
 perex@perex.cz, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [v6 1/3] mfd: Add Rockchip rk817 audio CODEC support
Message-ID: <SN6PR06MB534296C9BA80C56C0AD694FAA5499@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <SN6PR06MB5342B036562B085C95BDAB42A5499@SN6PR06MB5342.namprd06.prod.outlook.com>
 <20210419165116.GE5645@sirena.org.uk>
Content-Disposition: inline
In-Reply-To: <20210419165116.GE5645@sirena.org.uk>
X-TMN: [qJPUzAm7GWazMbLeSGeB+NQaIm6ePloK]
X-ClientProxiedBy: SN7PR04CA0043.namprd04.prod.outlook.com
 (2603:10b6:806:120::18) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20210419175112.GA26491@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SN7PR04CA0043.namprd04.prod.outlook.com (2603:10b6:806:120::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18 via Frontend
 Transport; Mon, 19 Apr 2021 17:51:13 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: cf218391-f480-4a16-4f03-08d9035bb9c0
X-MS-TrafficTypeDiagnostic: DM6NAM12HT003:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EZNiFslrXtfU/4CNEOANQVZ2wtx68g2xdmeA5JVZgigDJ0qZgwg6SJnvVpsazADdG4JPNzDQZCanKqW10StxJdi4CogV2YepLAFbYF9W4NukuDifhK8B5xeh8yeDpwU5xLwm3swlRucisZvYrB40D7IECYBpa7PthFYtRVejZeSqH0iYNemnmy8B9D+zO1rTTmzJjMTy/UL6lThh3ltNRVmBLR0CBBZHDpFV+MRiz1kqgHYHYqujWKvr1/ux2khK8/NQnaphR5QD9hdMEKvtChaDiYX0zvktX1ee8/lPOCucvYjz9oMTRI3BMKQ0EUOjat7SWMRoF0ZfWHRxbbwOja/MOgz3Nr85iX8VCcU0DV+I1vRC7MDsimXow6rCCXve
X-MS-Exchange-AntiSpam-MessageData: veNpCVTKZnxR9DKbNIU7r4IAB2EUmMuI83z6wvDcLB1NoEWiqXfucnCFcxtEcuH8+ciesjo2SuQit+9fQL0fIR4FtgXyf0UNqSiKbOOkoPNGs51PtkvTzXRsmI5xEVCnTvWFtYeagDBuXJ+6/SxW+g==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf218391-f480-4a16-4f03-08d9035bb9c0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2021 17:51:14.9847 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: DM6NAM12FT020.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210419_105117_026767_2910BBC3 
X-CRM114-Status: GOOD (  15.15  )
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

On Mon, Apr 19, 2021 at 05:51:16PM +0100, Mark Brown wrote:
> On Mon, Apr 19, 2021 at 10:57:16AM -0500, Chris Morgan wrote:
> 
> > +#ifdef CONFIG_SND_SOC_RK817
> > +	case RK817_CODEC_DTOP_LPT_SRST:
> > +#endif
> 
> The register map of the device isn't going to change based on the kernel
> configuration, I wouldn't expect any ifdefs for it.

You are correct, but I was thinking that I should make the codec bits optional
in the event someone had a RK817 and didn't want to use the codec. If you think
this or the rest of the bits should not be optional please let me know. I still
think it's best that at least the cell be optional so users can build a kernel
without the audio if they so choose (I tested both building this module and
audio codec with no devicetree entry - you get a dmesg log error but nothing
else, and building with the devicetree entry but no driver - nothing happens).

If we enable the regmap bits unconditionally, is there any potential harm?

Thank you.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
