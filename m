Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9017FCD98CE
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gvA3YIDkYxZyU/UZchmz3eDxIgzFCZsCwZKtzDz6nmM=; b=KELTUA19148zHo
	G8hglRF1oG9J6/wPFc/U/dHMv0NsJjm+ej9wP+8fndi2aaV2PBFx0ttHQQeC4EJbsL5tqreNqsqxs
	njR0LSAbygaDSP94dS1ySHDuWDeukkIFNXcDYGRuY+NI9fEl0iFeidqZzHCUxCODt9aeaKA3KG1o2
	1Coex6/J1MtWvAElGW3RvlZnrMowI9zII0l8lO6yY3pSyTNDLWzOW0hYn/m9OxciUN0ZiwsVR/NHH
	COZsk5liP46uaL0oK8KBnl7Ow1P/SBTwE+3B2Cac6RagaJRfK5cJermjAAIs3odnc37cSiaxQoYrR
	Jd7OIuHxaIAOYFsUmW9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXgSg-00000009an6-2zWD;
	Thu, 11 Jun 2026 14:32:50 +0000
Received: from mail-centralusazolkn19011028.outbound.protection.outlook.com ([52.103.13.28] helo=DM5PR21CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXgSb-00000009amX-2EqY
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 14:32:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qWv8m0bM6nSlox5GAyiai+EHg6MdcK3t6qtqatBDA3jeZd8Ii+UYsTN4mJGzl1rLzdo8AgHD+YKYOGjRYQukacgcl5SBZ3ljpQNnJ2Z6IYDfluMLoJdV4J4CvOnQBgUm9r51JTgJRHw0gaCJ8O1T+aU4D2iPuY1+dT5J8c262jt+/TPOkucQ2mWaggs7Uy7AxGlqpUu/vhzHFneqC5ogzF3st/SUt1X86u/cG2iKyB2UBxXfxatPFtAP18KsR84wNYFH8g64e8PLacqCtDnBOb2TnJtxLnWd8o8zBD2SflTtoI/0+vT/mGnV6Gt1TGYxnJjKpus4fiuHlM7leqBHPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6aRRH1Y03OwAr6FrPfCnNOXa8Vg16ot/bXgZM94jKp8=;
 b=Q48X4+C473K+9rxlo2GTq92jbC7NJcreRhgOGpUm1KOlbUkSiXYn0z4nco2syISj2ksgbsShjyTpj28fdZjtMwNf2oD/NeZulYZoQf1MvpHJan8H2kfh+KwE4XoRpucxg35TOLARTGRmU5rU+MImvLpeFlcCdRHJ8jqb3M0BOkUe6/XfM766nDE5xutaxQ7ZL8uZh4GeBKYfmCgWRbpxKD0KdlJJQWHmPQrIiBKQFBGZLjLMHg++LOPw1eZeHqfr8Anxvzjwon7FT83dA9PYnu2vWvKBtZR2GtKeYe3dzQ1rWz9BmZJeMOhGp8suWrwFO2InGvfF01mffWfFcv599w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6aRRH1Y03OwAr6FrPfCnNOXa8Vg16ot/bXgZM94jKp8=;
 b=Ndge7FWdu85mfVb/FAbYcWedw4Iuqsaz38mtkD2XqHXcag2ZwHmhc4uGY6sFfwukjDU1KLJjPyhid3SDOZyAoE7lb5OErgR3XPRuG0RGbuCSM1Wrrr1bFDElrdV5+UEdQtZWpwaFVe2pY7WRhN04Cvz7A1ljgGn3K/Nc/IUxXEn4lo0wGfyPcKDA4r/tvOs3H4Z055sG/d3hUzXvcj+Xplm7xxmRocRvDl3GfaN225E1RZ+e9RG5UHDTexjBVKe9EUjXA2QmAA4LREboK5Tv0thyI203nNqlhPROFOHmbH4G49Watu72tQUWXMfkToURcyons65YE8tPlZoQaLQBsw==
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18) by DS3PR19MB9221.namprd19.prod.outlook.com
 (2603:10b6:8:2e3::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.17; Thu, 11 Jun
 2026 14:32:41 +0000
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172]) by PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172%6]) with mapi id 15.21.0092.011; Thu, 11 Jun 2026
 14:32:41 +0000
Date: Thu, 11 Jun 2026 09:32:38 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com
Subject: Re: [PATCH V11 3/9] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <PH0PR19MB9973387E29375D4E8F28C6B9D9A51B2@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
 <20260610175455.19006-4-macroalpha82@gmail.com>
 <20260611120943.7119975b@jic23-huawei>
Content-Disposition: inline
In-Reply-To: <20260611120943.7119975b@jic23-huawei>
X-ClientProxiedBy: SA1PR04CA0011.namprd04.prod.outlook.com
 (2603:10b6:806:2ce::18) To PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18)
X-Microsoft-Original-Message-ID: <airHBo-pUr-5ExS6@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR19MB997338:EE_|DS3PR19MB9221:EE_
X-MS-Office365-Filtering-Correlation-Id: 1012fc29-59fa-41a7-5223-08dec7c64b00
X-Microsoft-Antispam: BCL:0;ARA:14566002|19110799012|6090799003|41001999006|51005399006|15080799012|8060799015|37011999003|5072599009|23021999003|13031999006|24021099003|25031999004|12121999013|40105399003|440099028|3412199025|12091999003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/0dSTdMGkRLnMkApNZbebjAWCY30h/dDcEfP5ugpkh3uxyyvGCcAt8WjO1Rw?=
 =?us-ascii?Q?eItaQp4Mq9g3yjeeEV+rt8ZYBVXkaOIp+CnEPc35gr4vomsgBDT5xgz/S8al?=
 =?us-ascii?Q?kU3mgNFMB8EGcY5XTDWI7kaGgFlMfx9esW373b8sTTIMnMXc4MMUDYAfnlaL?=
 =?us-ascii?Q?6Ubfns8HrGAt7Cog3/bpRtQqg+xfT3CrdUFdAJ3Yjz8JvtzBUfvbKe4qj2iJ?=
 =?us-ascii?Q?0bBVKavzBEZXUryZfU85eKdhv56N+B/eDekr1/7h7u2zU98oqm61k/Z+7ArY?=
 =?us-ascii?Q?GciBZqqlDAOJZ3ROIOcIc/WFYCSlrg+NJwJQ9OTu9+Vj5iNw2zVb5OR3A7RX?=
 =?us-ascii?Q?lTeF71IIRC/eU7RA4sX26IXntTRVl6weHfhhh/WghAbW7O6sl7ksG0LLnnUx?=
 =?us-ascii?Q?YVeKlaudxx62tly1jfiJ+SvNQEor5LZElwBtFOM3gkinqAIJ5ad32NNMZRCd?=
 =?us-ascii?Q?2MN8F62+N8tSP9IMlbd5p3UE4dF8kodXQS6bxYB6/KcxdwzWBoA1c8m4E7Ns?=
 =?us-ascii?Q?2MEEzWu20LjxCzCTYtUOH2XyJBwBW9C8Pd5g+VhDFnCVlGHir1brKwxfyvkH?=
 =?us-ascii?Q?bZ+4hPlGv8UdgmjiX9USRh1PIgAoE/U0lvhUwgky2iqm5PSpCdq6Nw/jdDwE?=
 =?us-ascii?Q?wbfkkTetK/ySlnvQmh5arfhcVq9A7WeHamZYtFWfN5tRmUnPG3r7xk872yHk?=
 =?us-ascii?Q?TUyVWPu1GKj2dfmpuYm/4R08z22guPhiFlTYEgIMPComJ+ZMNV/kByHgzNko?=
 =?us-ascii?Q?uhix5fywTqhuR1VkS4o+MXZxphyX2ALL0mrO46/RvD0tIuC85xrhOfoDgHjg?=
 =?us-ascii?Q?7HK+SDJAOpU8HRcsvbgRkYvkQqLAoSfvIYUu/mR/nICvbzE4OzApLOVKZuE/?=
 =?us-ascii?Q?F6fRFxqCMumRlUXWBtWECGYVKP0q19ejUwwki0G8JUHPz6TdsgBuhcOWrH3T?=
 =?us-ascii?Q?3fo9xxqT6Yf31zrBmHaRz50cW4rEee2NWvP5hXwMMhtALusaKAApYe/7PJW8?=
 =?us-ascii?Q?yq3POnaskUcWT0rUtLhyG9RszzVLoN/MJDnsR5DvHJe16Zwrbzos4DzutTIV?=
 =?us-ascii?Q?icLfxLDSyYkL4ujC+JD20jetfpNsne2HAIqCN31VvbTM+4O0/P3pfIXu3wfx?=
 =?us-ascii?Q?X/icrj6t0XcMwDQS7SlUp0thuI2qnWkUUw=3D=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LWXlq1buGp3TC6tNrX9JSTtDE+tEWkjfalINTRoDtoTZN540Prig4LGq+zpE?=
 =?us-ascii?Q?VL7mSRq7d/ri/04hScJJ4oQEDtnnc1YdJz/rEXYrYFywKMtX+3sSlxklRs9M?=
 =?us-ascii?Q?cpfnnn3/qMoDVJbI4GqsVadC45hLjRRCDFYlnu1KBMEgL0AWuwWFxQnkit6r?=
 =?us-ascii?Q?V/WCUCaIGkS90y2QawUO46MNJLT544N7TR5fiQWWZtsmJNgGvTN+b78lhqyl?=
 =?us-ascii?Q?D+GhUissRE9wIThIokois4XmDkSBBochOEoIawIFXl0N6quXu3OaiH4HbC0j?=
 =?us-ascii?Q?Xn2U5A1IpsFEziSULn8cevQPAaqdwh6q3elBdAdoNWpehX00iJy2ufa+V2TX?=
 =?us-ascii?Q?awP4vPVDKWIX9Id3mevdoh7/EqhQUrCJ6jnkwA46/PZtpMjA9atqr6UHq+3a?=
 =?us-ascii?Q?2yIEd7+HLW5c5zTF0wxLAijnhSXFLiM1efEt1R7y0WxhHpPOOfnZuBQZEFPS?=
 =?us-ascii?Q?SUx79wCwmuu/o8r6CFG2dRwYu8t8jtxGC5LG/0FJMOxy8pJVX3ri6LSgcJ2R?=
 =?us-ascii?Q?XaoiLxv+Qk2klwP4DcRlm0TLfPWf3quu0ZBJmtEKZ0xHKS4L34snJK+gXPY+?=
 =?us-ascii?Q?I1plWdiFgNarT2j07plmAgVRS1IU5UQmqcfvPouQ7xcVxLonui7fjT4jVs/e?=
 =?us-ascii?Q?xMovYPaoLuteqLWJMowv/qpqvoS2605JHJ/IE/PRfH0aZE3wJMeuHQ1zBULj?=
 =?us-ascii?Q?yO83VLGa+dUPFX9f6I8oJ3S6H1wY7NOZse8O06+w1dj8xBy/fdkQedEuPLIf?=
 =?us-ascii?Q?eYL6SWrPrUrV8BmlThL7fx/ugBvrmvZ/QVAg21y3oxk/j686ul9cYwvtKx3c?=
 =?us-ascii?Q?oPO+D0HqUR3PrnPzSYPS46opG0w3I2UOdRbfUMgB6vyjAQjfevVFEE4/Hv2W?=
 =?us-ascii?Q?2GyjwieFPiGwqdTS6oplPS6bYVZUpJlEVl8nnqEZP0SlDyCAFNHuv7wGXfrS?=
 =?us-ascii?Q?2mh1F5938EyhHQFs449+eDsZNG9zImBOTjXFQzrzoH0dcf/wkahRV1ERJujb?=
 =?us-ascii?Q?TkoZA0PJ/IRxPGioSh9DBlOr78gMs2bKZza91x3p/25uwFVNezKBuFVzdfjo?=
 =?us-ascii?Q?HUyouy4/3XMPk/B3ReaJesIKj2Xv5wFtV7KaC6Ua9k1u09KHPcVahpqA/UKp?=
 =?us-ascii?Q?IZ2ELOVwNI4y4nyX6oPmeCFAU5Ra0ryPYbooFc8Il6pKjWT+5oylPF6/ktPe?=
 =?us-ascii?Q?vzR2Uwsp9CPVEQUJlEFTyuO/bJDSVdyYSLdF+XT5rpd7V0m3lbCy8IlpL9Bw?=
 =?us-ascii?Q?Ib773IwKwbEFB15yH70L/ALGJ3qOBYFhXlji5QUZ+J5QKc0JDc6S2WP0fmUj?=
 =?us-ascii?Q?L081WJGC+Cf6QiyiS5CEC2DGH/x7HBx2QQ4VWzDKSW4gzJPpUxs61ZnGNJ9J?=
 =?us-ascii?Q?oo9Bmnkkq5ZPHm9TQcEYaA1etObrBIdiLyKCDeizCTiv7oagTw=3D=3D?=
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-990eb.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 1012fc29-59fa-41a7-5223-08dec7c64b00
X-MS-Exchange-CrossTenant-AuthSource: PH0PR19MB997338.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2026 14:32:41.1139
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR19MB9221
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_073245_581842_06F515A5 
X-CRM114-Status: GOOD (  33.17  )
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

On Thu, Jun 11, 2026 at 12:09:43PM +0100, Jonathan Cameron wrote:
> On Wed, 10 Jun 2026 12:54:47 -0500
> Chris Morgan <macroalpha82@gmail.com> wrote:
> 
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add the core component of a new inv_icm42607 driver. This includes
> > a few setup functions and the full register definition in the
> > header file.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Hi Chris,
> 
> A couple more minor things from a fresh read.
> 
> Thanks
> 
> Jonathan
> 
> > ---
> >  drivers/iio/imu/inv_icm42607/inv_icm42607.h   | 334 ++++++++++++++++++
> >  .../iio/imu/inv_icm42607/inv_icm42607_core.c  | 197 +++++++++++
> >  2 files changed, 531 insertions(+)
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607.h
> >  create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> > 
> > diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607.h b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> > new file mode 100644
> > index 000000000000..716fc0f1c3fd
> > --- /dev/null
> > +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607.h
> 
> > diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> > new file mode 100644
> > index 000000000000..334264120b42
> > --- /dev/null
> > +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> 
> > +
> > +static int inv_icm42607_setup(struct inv_icm42607_state *st,
> > +			      inv_icm42607_bus_setup inv_icm42607_bus_setup)
> > +{
> > +	const struct device *dev = regmap_get_device(st->map);
> > +	unsigned int val;
> > +	int ret;
> > +
> > +	ret = regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
> > +	if (ret)
> > +		return ret;
> > +
> > +	/* Warn, but don't fail. */
> > +	if (val != st->hw->whoami)
> > +		dev_warn(dev, "Unknown whoami %#02x expected %#02x (%s)\n",
> > +			 val, st->hw->whoami, st->hw->name);
> > +
> > +	ret = regmap_write(st->map, INV_ICM42607_REG_SIGNAL_PATH_RESET,
> > +			   INV_ICM42607_SIGNAL_PATH_RESET_SOFT_RESET);
> > +	if (ret)
> > +		return ret;
> > +
> > +	fsleep(INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC);
> > +
> > +	/*
> > +	 * No polling interval specified in datasheet, so use reset time as
> > +	 * polling interval and 10x reset time as timeout period.
> > +	 */
> > +	ret = regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
> > +				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
> > +				       (INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC),
> > +				       (INV_ICM42607_RESET_TIME_MS * USEC_PER_MSEC * 10));
> > +	if (ret)
> > +		return dev_err_probe(dev, ret,
> > +				     "reset error, reset done bit not set\n");
> > +
> > +	/* Sync the regcache again after a reset. */
> > +	regcache_mark_dirty(st->map);
> > +	ret = regcache_sync(st->map);
> 
> Sashiko raised the point that you don't have a writeable register list for the regmap
> and so potentially we at very least write a bunch of stuff that isn't needed.
> I doubt it's actually a problem or you would have seen it, but nice little optimization
> to reduce what is written.

I will add such a list, I'd put it in patch 4 unless you think I should
merge patch 3 and 4 to make the driver compileable at the first commit
of code (will push the number of lines to the ~850/900 range though).

> 
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = inv_icm42607_bus_setup(st);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = regmap_set_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
> > +			      INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> > +				 INV_ICM42607_INTF_CONFIG1_CLKSEL_MASK,
> > +				 INV_ICM42607_INTF_CONFIG1_CLKSEL_PLL);
> 
> That should have a FIELD_PREP() to save us having to got check that
> the MASK includes the LSB.  

Okay.

> 
> > +	if (ret)
> > +		return ret;
> > +
> > +	return inv_icm42607_set_conf(st, st->hw->conf);
> > +}
> 
> > +
> > +MODULE_AUTHOR("InvenSense, Inc.");
> > +MODULE_DESCRIPTION("InvenSense ICM-42607x device driver");
> 
> Why does it have a trailing x?  Whilst a wild card is less harmful
> here than in many places I'd still drop it.

I think I missed it from the very beginning. I'll drop.

> 
> > +MODULE_LICENSE("GPL");
> > +MODULE_IMPORT_NS("IIO_INV_SENSORS_TIMESTAMP");
> 
> Do we need this yet?  I think it only gets used later, in which case
> move it to the first patch that needs this.
> 
> 

No, we don't need it at all anymore. I think I can safely drop this now
that I'm no longer calling that code. Was a vestige from the buffers
code.

Thank you,
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
