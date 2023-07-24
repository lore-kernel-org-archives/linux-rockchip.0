Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E6E1C001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jul 2023 02:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rXQYX3vAlwdMN83VpWryVUooY+1iJVvr3IGAeROWHZ4=; b=ZSun9TuLMRuuiA
	b82eczvgYQIAtZO7GBGUGlTtSHhtMQI3pnLHrRRkYA5xg54mb0feZofLBw/ciWpGjVthO/keRGd4H
	9IMuM/z+SgR4C/Znq/yqo/NYFIqw2VUmi5bTheDwh5upLrP/PRwedaK4DoofUHOdKFJfg7gds/dwn
	Nw1y+ABsR4HRs8xDEFyUMB7fqxzgA36QtN9fD+0kLX4E46FN3JpN5nblmuSYwFSJSbXF+B+F0nb8t
	ycYUCD0ettEja8pcUyAJckKyuvNh+MFHp2kwjmn3mQUBpCaGN7G+hp/nBz0RnTaG7+UVmTXMVCBr6
	l2xRauQBUNhsCMEVeCPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNl3I-002VI5-2j;
	Mon, 24 Jul 2023 02:12:01 +0000
Received: from mga09.intel.com ([134.134.136.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNl3E-002VG4-0n;
	Mon, 24 Jul 2023 02:11:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1690164716; x=1721700716;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=0az+wd1nPjdfqRZ3TKl4vvXhgw56frkpzHox2IlzmmE=;
  b=M/HTB3QWTKzTylM3eIZPFpaZnmQoAfidSB4vVpFjSfjAYqdNPmhAMkac
   mW7UaqmE7UBGmUhcD4AmujeDYH+Ikul0D3vvRVzUxkVlsvgMlEVbU6t6N
   TNZlnY1WcbX/3NecXekANbFK3Y76alfxu6teGo4sD50urI2ZatcUdfsuT
   l+KHiVrn4qcARcVuCSmVsPNNzRKKyEjahZAoUu5DxV+rrEnzr9wyRqt1a
   oT7kLm//A4mhrEMVVylmkYne7WQ+O9CgaqxLxsumLFpo1U2CjnUNPr19n
   gqJM44r6IYa9aGGqqtksGzD3ZuDMMJMpUrTNswAixramQwVFUb9KTfnU0
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="370002001"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; 
   d="scan'208";a="370002001"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Jul 2023 19:11:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10780"; a="972092627"
X-IronPort-AV: E=Sophos;i="6.01,228,1684825200"; 
   d="scan'208";a="972092627"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by fmsmga006.fm.intel.com with ESMTP; 23 Jul 2023 19:11:46 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sun, 23 Jul 2023 19:11:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sun, 23 Jul 2023 19:11:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sun, 23 Jul 2023 19:11:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jOUZ3OOZXZtr9dS6+w36ZqQKyX9hnSwwk6LgpQOukcI4Py4voIBFKGiDxsoi+b7+smV7Kro2hoEsk/NQLZDo64FiWpigMa+yajS0pX2QZSXoL9XodMNwanctLqLFJ9MWrvd17Li6J1gT6c+ih0Y/6iTWU0gLR44X5ez6SpY1EUJA60C3N5reiz+ZiZJhTaFN8s3HSCPWV2BnXQ0vBofMMOs0AQQoe/DIC7Vv6ds/trI7zeSA42ON67ZqxP4Gt/pEZlEemezzrZJsD+kZcQbG60gsSZC65/ck2UMpKyeM3Bo5aMHhG5Zr37P3oH0ACtcQtAwimpLq2PcmLFktAke5ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dAJxYnIFWZcaSOSYgRQ1II5ZSiKMa8s1nlxR1KONXgM=;
 b=IBJX6w4v9F4vptf84wS3eJqHmkJV0FxIRWbT9VhLWtrhfEbM1L/YWFB0S1+0nDI5g+Vh818o3v/pd2IFB2uFKkhYnn5iIcrjHtL4DqgFNsdDr2BsPgEsCL1UBh/P6rdrVg+18IEa5TGtbO9gocyMyiqki7IQgCrq4ekXQr9mFFPamqnXUkf/eJK7zC+8EOAKCUpjEs7bvSo5H4J/wb1YFmQl04ua1zxLFUG2kc1/T3PtK6gInriPPyQ2w8ldJvLX9+aPQ3Fs6c3U9pttNn2mFm9sn73s4mHyr0x2TKGA8fWLdbOFio+vC3UkgKBFH3zWsU3TmZuZMNkSsViXBVdwww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by MW4PR11MB8267.namprd11.prod.outlook.com (2603:10b6:303:1e2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.23; Mon, 24 Jul
 2023 02:11:44 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::137b:ec82:a88c:8159]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::137b:ec82:a88c:8159%4]) with mapi id 15.20.6609.026; Mon, 24 Jul 2023
 02:11:44 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
CC: Baolin Wang <baolin.wang@linux.alibaba.com>, Lu Baolu
	<baolu.lu@linux.intel.com>, David Woodhouse <dwmw2@infradead.org>, "Heiko
 Stuebner" <heiko@sntech.de>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
	Jernej Skrabec <jernej.skrabec@gmail.com>, Joerg Roedel <joro@8bytes.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-sunxi@lists.linux.dev"
	<linux-sunxi@lists.linux.dev>, Orson Zhai <orsonzhai@gmail.com>, Robin Murphy
	<robin.murphy@arm.com>, Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai
	<wens@csie.org>, Will Deacon <will@kernel.org>, Chunyan Zhang
	<zhang.lyra@gmail.com>, Alex Williamson <alex.williamson@redhat.com>
Subject: RE: [PATCH 01/10] iommu: Remove useless group refcounting
Thread-Topic: [PATCH 01/10] iommu: Remove useless group refcounting
Thread-Index: AQHZuar/8ffxdhgup0+jp6oCKhjoRa/D0M0AgABSGoCABBHlUA==
Date: Mon, 24 Jul 2023 02:11:44 +0000
Message-ID: <BN9PR11MB527621E6E7D464982B8730118C02A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <0-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
 <1-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
 <BN9PR11MB5276130E7AE8B0BEA43FCC6C8C3FA@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZLpzqVAxxLGJp+L4@nvidia.com>
In-Reply-To: <ZLpzqVAxxLGJp+L4@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|MW4PR11MB8267:EE_
x-ms-office365-filtering-correlation-id: 6a4af6c7-50ea-49ee-b7a4-08db8beb53b6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Yc4/BbdM3uuZN/CQWbB/MCjlnR1lwcP1luEkfpyMuC4b95Lg9y+vcSUg1ZkUPuEh490m8S1o6cUaKCHs7c1AiS32AaxWTZNr4uRYeFpR7bNjgj2HvoGnezGprL5KfjQz3BA3sPyVPW3jvtH3b1jY/SphogPmGpuauFZFGL/jhhlQnz8z/a2Fw5E27PkiyQWm8w7G5woNlco0v0zGvMghbHz1rm47h6ySX4H0zYTEyC1oHjrb6l9NwTUG88dmqqBIMqh7mIxPMAx3pC7L5hniKvGYjiSfhS7S16Adx3cQXMvOblCcQvXuuJHxpoyruAOR3oZ83O0850oUkTdAYnD+kMuVkYOurViGcm0aqgDE0L0LNp+oIV02TTT7zW44xgoIMKLVw3CFsqwaagtZBIidEb4g7rX1vsP418r9mUqBugYHl653+YV08kGI+z6DeMd3b4KQ0/K6cskz+0W/dhozyiHGElUbTHgmYLs9UMJLtn462LPajbjPhncu7qPBZdRbD0JA9x/GfEis6DOocZtJHJhIDm0rB/zDw3ues6Hxn7HKKEjBLeekjjQWJt0nFQouTjqZlNeYDf/IDol70Uen7aznPoHa9LU3TMgp3bWItFYL7J2xhEm4EQWyn1oWHmCH
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(376002)(39860400002)(396003)(136003)(366004)(346002)(451199021)(4744005)(2906002)(7416002)(52536014)(66946007)(8936002)(8676002)(66556008)(6916009)(4326008)(122000001)(41300700001)(316002)(66446008)(478600001)(5660300002)(64756008)(66476007)(26005)(6506007)(7696005)(186003)(76116006)(54906003)(71200400001)(83380400001)(33656002)(9686003)(82960400001)(38070700005)(86362001)(38100700002)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rE3rX/dW3JhM/iBjUWv1SHN2/WmPdTJ96wxUZbCOfmfteOy4q0Ohm/BKk5V9?=
 =?us-ascii?Q?6RE9RD/g+SA11ot9VOxD8/ExVu1gSJs/WVOgjhHiPx9d8mSG2JB/CVzuQ6HP?=
 =?us-ascii?Q?5mY3vDf2YlncHSn6RqT0Kbfs9iRw5hxGfGMC5+G+O9nWF6Cie0lyZ7khD8vg?=
 =?us-ascii?Q?MsN1lc/Ma0uUXNgBEOIg1iOrM5H5U5LyLs3+IVrB1hJ55Eou5qsGp/zF6ofR?=
 =?us-ascii?Q?e9eNN4ajkHknhfHfB+mGPvC/pWwLuAly35E0Lln6ayLpYfpXBOA8VXkNGA18?=
 =?us-ascii?Q?tW30SzcZeUP5Rq7MwhreSkrvNbGYOuug1PnxAbJlKdVD+O57yoriKNvqETrR?=
 =?us-ascii?Q?U3RocIhWWSvBy01oHuSPhYc3noq7yDZ3e9sOGh117Ev2aNi6vzsgfcc5tnmi?=
 =?us-ascii?Q?oV1r9amnyP3TgYBQONJzFMsZwD1ryyN3g9vSee9KJ8WDlRxuuWcOKzB5eG79?=
 =?us-ascii?Q?tStfu/SLv7F5hm2THWQW7l05/ebzfYzmNVijSgnTZWW9nwSDUrsZmKPAH+mz?=
 =?us-ascii?Q?c0IVq2sZLVJhQDaYZLydPg9AJMH7re0ZuWurzBEC/jQqixVTaNFu/haH1zpR?=
 =?us-ascii?Q?pyRtKQjJa77cUDjXrw0/xG7CikHvax5kbWVxFPPJd7eZ4vXYx4yCf8MhDKam?=
 =?us-ascii?Q?t3OUCseiOSBma0uVOxXFwg2Z4sCw4ji8QpCE8h/CaWllp7n6UwfdIMJAZRdx?=
 =?us-ascii?Q?m7ZCcqKaY+ZGoVysfN5+ffXrS1k/ym70x9c12tbtpG7YZ92Srx62cHEZ9hTi?=
 =?us-ascii?Q?2UVCKkEWDV2bxbzWRF04GlhD9NX10g1mlCZUf2qW8K9SEzw3V55O6Pr+BBco?=
 =?us-ascii?Q?fltvEDu9MUvai5PY9GBhzbo2teaue7HQN5blxK+FfqBNuiwrtqDQPNMstUl7?=
 =?us-ascii?Q?5BZN8sqNr7rDzHsKSYxOTLShKdpRDYIgLTdrsnSbSc6IIpRG4V4sA7N15CTI?=
 =?us-ascii?Q?TQXm1/o9BNfT1NRLusiyoPqLc02QaJrgOp9hb7wm/DMhSLYOzPhPb5nnjuV/?=
 =?us-ascii?Q?muLWSU5ayL2KRfESJzeDTgn0vvzLRNWTabRJkPJzBEeEn/5/VNjvUqfVK4Ie?=
 =?us-ascii?Q?z8C0xYX9mEh61nt1P1PJ+kN2a2D18hOLk8IaCCuQj+4QV6Br66jNGw7p10Ij?=
 =?us-ascii?Q?OtQx9o4+TUyCxXYPqgbz7F9cqnCPexoIk+RsuDOQpYalMysh//Vk8Dg+aLL1?=
 =?us-ascii?Q?mHtKAAMIKGN52KQHXAR+/e0UucZ7Y32QZiQbpcHl+q00ub4vkgPgvL/nP96q?=
 =?us-ascii?Q?mMBPTybgOOGd/lsgMhrhiGuhZtmzVAyBj9SruSq7M8fPglt/W9Fv/b5cDlW7?=
 =?us-ascii?Q?zVYDYTEw7MjS7BgOIAno9KS9/kmn2Du/Gt5NvZoSp2xkZ+RK/4Gw8fDcGK9s?=
 =?us-ascii?Q?IjK3tnK7ZOoYOaLknhd1RYvf5vqHS6czlJIRXPAaCqvmUTcMHjJjY50S9EdS?=
 =?us-ascii?Q?QaTVReA2lTU/cDyyfWx43DC5p5uhBWiBmzpTMh8kbjGXI1Az17z/XoPi5dN3?=
 =?us-ascii?Q?LrjscKt11D/MPMaT2WwebMhEbmg/GAkxrTRSMfmPmMuZCA/0692MCY6XTSj7?=
 =?us-ascii?Q?2BE9HKYLU7XcqcSfCHv4yuIpk1mfgCCIU0twSBFn?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a4af6c7-50ea-49ee-b7a4-08db8beb53b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2023 02:11:44.0745
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VeT7uuhoGPHlF9mIWmhggwRtVBmtXIX5ybdNi2PyLcGLcVdPPFhyzPUiQ6kygfBcsoYEopFPU7wKqr8mdQli6w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB8267
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230723_191156_349699_FAB4C2D2 
X-CRM114-Status: GOOD (  18.19  )
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

> From: Jason Gunthorpe <jgg@nvidia.com>
> Sent: Friday, July 21, 2023 8:02 PM
> 
> On Fri, Jul 21, 2023 at 07:10:57AM +0000, Tian, Kevin wrote:
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > Sent: Wednesday, July 19, 2023 3:06 AM
> > >
> > >  int iommu_device_use_default_domain(struct device *dev)
> > >  {
> > > -	struct iommu_group *group = iommu_group_get(dev);
> > > +	/* Caller must be a probed driver on dev */
> > > +	struct iommu_group *group = dev->iommu_group;
> > >  	int ret = 0;
> >
> > this is called in the probing path by .dma_configure().
> >
> > the driver hasn't been probed yet hence the rationale to not
> > refcount is due to device_lock() instead?
> 
> At this point the driver core has partially attached/detached a driver
> so I'm considering it part of the probed driver explanation.
> 
> Really during anything protected by the driver core probe path is
> assured that the group cannot change.
> 

Probably this worths a slightly different comment then?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
