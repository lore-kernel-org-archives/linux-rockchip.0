Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E411CEB64DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 07:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4uJTYq9q1JQ306DpFleBaY8+x34VH8W1p4b6a/NHUQ=; b=3yemNAABd7Hrcm
	wdV0bmgEW1ZUaantcaJrqQnf6LqVjNswzgFandK6bvW9JN/e0GsDkJdsH183c+VrSjA1Et1VEcEBK
	G79gec03L8seWQZiZRa3k4fL1XxA8zsN7BHXFQOKRaMdjo+ereGaxmLFMJtZEPvN2auUCSwKU/r3S
	J+QwxEaQESQWvio0WZ+Mt3or4RkoE0R+7F24eKOHX8spb3reT/80BquQcmC/MF7lUMHq6Divkm8mK
	aaONGUXyZCiDQ0/sQzQ868FGPBWopYyHrNufeUwXv1+azcqmkMl6NZXnqPJ4YLWp2lEFpIBosBjF/
	En0h+x7IVXSnoajAhwjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMkRM-00DAQW-0c;
	Fri, 21 Jul 2023 07:20:40 +0000
Received: from mga12.intel.com ([192.55.52.136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMkRI-00DAOq-34;
	Fri, 21 Jul 2023 07:20:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1689924036; x=1721460036;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=5G0AYsq6p3xg73pbEOhKZ78RP6CCmhLrU4h4nf/5GcA=;
  b=AT7DqxPb7JTknFitWbSdPVt97DJKoWVQ5Nq/Rp1JRDB4yPISxeRxKfq5
   ilxcsGvtPmS6NLDlAoJd36rPP8VHc1vXH7Bd69mmryk12e/OZQQUCSACh
   yz1xdUx8DkZJjBLpdSnlJOAd2Za0AlInu5xs3wC+BhbyN9iSPbNYhL1Kv
   vzILt0asaVAFOuIeWZgqKW7jq9ou/KPWaCcuC1F25V1ROvx3oEGmCScsM
   qdTfuk0NEKO2rS3vbjvYv4J9gzgRdhTVszacbesGX6nWDTBLlbzdk8kiq
   3JfHPh2ftf2WKCJOlA7afJuCQMqRzjMaw5i0H7WFvLU36QlAcbn+sRvWW
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="346549889"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; 
   d="scan'208";a="346549889"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2023 00:20:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="759856094"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; 
   d="scan'208";a="759856094"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by orsmga001.jf.intel.com with ESMTP; 21 Jul 2023 00:20:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 00:20:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 00:20:23 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 00:20:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mWXFfa/Pm0RO7l7hz8v9X2Nwf2dlQPVuPXCSnYKNxU8JSv3yDWS3/SHnuXzE3vsgui789CYsv+EjkGLDDF3N0klTSZyHdpZOfyx29iqqioaanaOg2IgfwwiMRkd6hYkOQSqQQKOyLWKXgK8+XKX2nIo4D3t7sQrHPqTqmKCLs7BcVd0o+MSL+jMFCYRCuITZQ138bFmM22hAbeOTmW0Y7QNwXIyCX4aG7mE2OktOfbdED6bo/RUlWGA/VySh2lbWwvJRkTIHm7dwAXoko8c0ZYNqEkhvp8Hmeaz5g5V+LymkbKE/DfLM5PcSQgd+IUje5CmBgDYHgi+DL5WOSYAEDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GT4gnAFDDVCN/QjFBrUCw1nQWkqcc5mtOFWKgH/7IQs=;
 b=nymeLyN0jPRANvv3vSUQ1MDJmXr4cpM6/M4MMatpnyy6dwp3c0MwPhnPcgO/n8Vo5/dPt1ALTZcG6cqR1W6zsa7pHwYCz1JhykQSe4ZLMyPeZbd9wwbEe2GMP5wLkzwzo75dS/WCNGe4yx2YYd1KUaqczgRfdMJNbNq7Yok3fBg3lXz7gbigUU2XXtTwHpq+SYEbaIST7qbLC/Sv3WOfWYsDUTdBN4dOvGOKAcOtQIi74CbTjXh0iRZfyGTBJqJZfg3f1DfLmtxWGmdMO1HAxhvwTr//mdN5cqpCulO+MXqae/PHoT3sM1GEN8EaH51dpfeSn6SuG0k2CReO+O1T0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BY1PR11MB8125.namprd11.prod.outlook.com (2603:10b6:a03:528::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Fri, 21 Jul
 2023 07:20:21 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::137b:ec82:a88c:8159]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::137b:ec82:a88c:8159%4]) with mapi id 15.20.6609.026; Fri, 21 Jul 2023
 07:20:21 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Baolin Wang
	<baolin.wang@linux.alibaba.com>, Lu Baolu <baolu.lu@linux.intel.com>, "David
 Woodhouse" <dwmw2@infradead.org>, Heiko Stuebner <heiko@sntech.de>,
	"iommu@lists.linux.dev" <iommu@lists.linux.dev>, Jernej Skrabec
	<jernej.skrabec@gmail.com>, Joerg Roedel <joro@8bytes.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-sunxi@lists.linux.dev"
	<linux-sunxi@lists.linux.dev>, Orson Zhai <orsonzhai@gmail.com>, Robin Murphy
	<robin.murphy@arm.com>, Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai
	<wens@csie.org>, Will Deacon <will@kernel.org>, Chunyan Zhang
	<zhang.lyra@gmail.com>
CC: Alex Williamson <alex.williamson@redhat.com>
Subject: RE: [PATCH 07/10] iommu/ipmmu-vmsa: Convert to
 generic_single_device_group()
Thread-Topic: [PATCH 07/10] iommu/ipmmu-vmsa: Convert to
 generic_single_device_group()
Thread-Index: AQHZuar0x7YypMrhlkqbyXjFrIp/gq/D06Zw
Date: Fri, 21 Jul 2023 07:20:21 +0000
Message-ID: <BN9PR11MB52761FF5AA9D8A24C30A12CA8C3FA@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <0-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
 <7-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
In-Reply-To: <7-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|BY1PR11MB8125:EE_
x-ms-office365-filtering-correlation-id: 770f10a0-3de9-478e-3208-08db89baf186
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hzA30ubbRHkEzfP5OFqwY7AUZMsw5d1vuQEc0FxeNV/Jxn+A8k8j7jOhY/QlQ1xbSfAokn3has1yjq+mXPb4oGwjc762qMVatUB0x7Rughb+shjyljDFhHilknNpMIGl3Jo8DUbXEZJuK7nfbPALbv1qMaDC/lkoSgQMBoQ++cmg7QRnV0K3bgfwAOyO4L2qMrEAY0sWvYcsYJS6nIWpCkQMGwimoXCxZpfYjs7GI50hug796yCiybcvAp9SAhUbhOXDBanMuUq8EDO1uImz/J+xI9ZFlA2s0vHQQ0956hlcg4tpwGi4IhC2TLzUnRqNF6cJkVYGTgsuPgfhnot+lUeAYq7RvedRJpXjgK4MMHAATkz4+f/MM515ZhNa7n4a4nY82CqhuPG04c2IiKNuTWpPa9Co1h3dzRaQdJwhNFhpCcR76Qi4RQ1PhQQLJng0LDS9eFqceupJWZ7nukpH1JYelku4OpW8rJBTmHMHJFKYGtQOzhJvbML/D2pmh5ni7UcfZ1L8tThe/h53IsI+M3BnQUDWZjqy1Sqq9JPONqwzPrXXyRK3pKtwCgwr4+1N/QO3Bao8duPki9R7fM6buZ4MOSUanCS7NA+R28ewBALdQNZCuQePc6BV1jNgT5Cx/tCfiejUgC0U8yAQIXDaBgbaaQsjSrKhoJEmnvck/uA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(366004)(396003)(346002)(39860400002)(376002)(136003)(451199021)(2906002)(7696005)(71200400001)(110136005)(478600001)(55016003)(26005)(9686003)(38100700002)(186003)(6506007)(76116006)(66476007)(5660300002)(66556008)(4326008)(66946007)(8676002)(7416002)(316002)(64756008)(921005)(122000001)(52536014)(8936002)(66446008)(41300700001)(82960400001)(4744005)(38070700005)(86362001)(33656002)(41533002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Aezsv0w6Vfiq5DOFrzj5dt7K3qNUkGS85IhDDSaCjzR1gL57THcIY7S6wSnn?=
 =?us-ascii?Q?RTW+FfLsaGH1KNZmgE7yXeGLrbEeLhtTtzgCA3Maneij2rwO0/VqfS6bt2RW?=
 =?us-ascii?Q?rMWjAx5+/6AbdhsqHwdc6Ks36ARVH+iCCkGvsLoIbSm+MIZPDoJYHaVjaM9v?=
 =?us-ascii?Q?QFxCSHbBY8GZVQBZfSED7Ebp6P7nNl/mSUKHTN5qeaoHZpolh8/O6/hBnjZG?=
 =?us-ascii?Q?wQpJHLSpd3tb8eF+OvABlgJYEPueBRY7pl19jtMih+jp0By1qV5Ndgps1Laa?=
 =?us-ascii?Q?WeoaEswO6MbHrjbFk0/lqYin6x5Fw8YbNrXQINI2dROt3EQywOkghEGYGydp?=
 =?us-ascii?Q?o7cRBQn3mI4WQ+eH058QtGmPeRMu48RPFrqpjKHuaAXhlEdA/HKsqN8ZCXFj?=
 =?us-ascii?Q?ufSeikFgVkKTdfAmGa+aguVusjVpbubYrNXfMmpEtk5/3M8tbbKTCWiQuNk6?=
 =?us-ascii?Q?UU9+In8ZpUVawljyK80EnJPoVcU6m8vyCrXNhJ4HXZ7oqZNBjltzfnirleuS?=
 =?us-ascii?Q?14yN0pI+3gyPLFuevgVlrvgbuPtNJCZt5oK8ytDpWi1e/O9BSEBgZ7QJhRKt?=
 =?us-ascii?Q?ItR7yxDPKRGNwjOhRbwtd44GqclKZUsKHSuGubINN5OzFxUMej7C8ALoek/t?=
 =?us-ascii?Q?rbw4rGxEKd5jDCbL/iWG9/WnFDgiNzaGG8CTDRY3p+GLFQmRpuwj5xXUE0hr?=
 =?us-ascii?Q?yBnjzhDPec5NPUmR7pXUSEwSDgSNYS+6JHLl6mg6iRf0FS6YhbIse3Unp9c4?=
 =?us-ascii?Q?5NfBOdxAdmKhkg5Ra5M5r4Ss50IzQdM0oUn6G3yqRmeDD8Rt5ELx7EjJaX7c?=
 =?us-ascii?Q?iJkJWIt9P/pFiSUiPML28mdXxAouPreT/AjXVDpUbgqdaXpZcX+6KLo9GHrF?=
 =?us-ascii?Q?DUtA3GsHg+AKf8BFi2mYW2UjDbv1+qZ/xD4lxhesDSX+nB9UcDLsEXonRySn?=
 =?us-ascii?Q?nFd73rxxJVg2N13aK0+khBYrel2/qt1xq6A7Kuibu2w/XONqAwQHmc0YUZQn?=
 =?us-ascii?Q?rW1G8xPa0o7UXZeMTamu+pFwg6PaFMgmxIA1G89FmqBRaqkCgJ7YeZGlN+o6?=
 =?us-ascii?Q?JqUCF5x8GYPF6W+SXvOHdDW8tqdg7zL7ywNnacR0/2HFyjqjAJIT/v1Z257N?=
 =?us-ascii?Q?BlGK+2sNX7rU2HHpX6lzjbaIOZJCnAVRhcU53rAl3mewwbEmLhhru36MV0c2?=
 =?us-ascii?Q?n8qod9aA6RF2y4G7KBukNsWlKsDsFWlewoHSb1qCNJI+22cg/24F1Fcq85W1?=
 =?us-ascii?Q?lZLaP7CGnj9sCLK3qzl+wn80cRUZqjmUCbhJqesIQ0IwrjvG7Rv4xBMLl0nS?=
 =?us-ascii?Q?HnNMYS6rqSYsJug/UWkGUsmthQUTYTR12vTv9WAJMCUIEdpA1RFZzcYVsdkD?=
 =?us-ascii?Q?pBJryvmRg03bt43DI+4XuYfEupMrN2BQENI+OoqqX3O7wDkOpoV3dVRRfO1m?=
 =?us-ascii?Q?2f6TubEo5+PfNER3MstYHGS2CocO9paY1w0ZIuRKR+ofg7/YQo474iGChpLH?=
 =?us-ascii?Q?1PoDgqLJY9q7IqOLAiu1ZBxeu99O2sgk3405hdUHKQo06ENKRMRAK8g++AmT?=
 =?us-ascii?Q?NuY7ASJfTpRRxhSRhPpAJ+qaMHXmCnhwaT349+gd?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 770f10a0-3de9-478e-3208-08db89baf186
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2023 07:20:21.1489
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZcFkb9KgsPVjQb7EsolEN1bZs8hV1sbVeNTd0oMaE5LRacfabLREzPpbt+g4+aLR9KRbvi45fJd7bpJhmUhA9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8125
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_002037_029039_FD59C320 
X-CRM114-Status: GOOD (  14.39  )
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
> Sent: Wednesday, July 19, 2023 3:06 AM
> 
> -static struct iommu_group *ipmmu_find_group(struct device *dev)
> -{
> -	struct ipmmu_vmsa_device *mmu = to_ipmmu(dev);
> -	struct iommu_group *group;
> -
> -	if (mmu->group)
> -		return iommu_group_ref_get(mmu->group);
> -
> -	group = iommu_group_alloc();
> -	if (!IS_ERR(group))
> -		mmu->group = group;
> -
> -	return group;
> -}

Looks existing code has a leak w/o freeing the group in ipmmu_remove().

While at it could you add a patch to fix it allowing backport and then this
patch to convert to the generic helper?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
