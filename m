Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4EE16EB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jul 2023 02:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbygUk+8c51gEkv2eywPF7beVNX0nlWHZ3tP+B1zkGU=; b=VlarxCHO9MGghF
	3mMWAf7zy/2DsiseTB9/la0NOx24Rg1EaBTUSGTydnRPuXcW5HuhCZTxoE2FB4fKVI8lI/hEY4IWG
	ly50cDXWrT6zxGXmrEEqczLTvDjyHAsbHsKCBNGBsypZrIRVh2zlO3RAr+R/PR/3LY1qnACPPBoH7
	HXgdD17YgNiyur+xLIbl11UJiNLE06xU4X8Ty1ZvjtmnjqtMEOHTjQ644DrDzvqA1cjMud5IMWImw
	5gVxOmwQGmWh7XGXX2TIngu+1Ux043t3MBF/A2vzI8XzedSfmjylGLf5U0dLYzUd7RbzM9/+O6YCy
	o92/xtzz9Htvu4SQanIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qO7Xr-005t86-1c;
	Tue, 25 Jul 2023 02:13:03 +0000
Received: from mga06b.intel.com ([134.134.136.31] helo=mga06.intel.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qO7Xn-005t6n-1C;
	Tue, 25 Jul 2023 02:13:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1690251179; x=1721787179;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=2ZzA8PQhmyEUD1bS/bpO6I57HTXTNUQZMqegoa6huK4=;
  b=H2FFD1pzknfa0Ni7i22K0JdZmT30TVTmHbHYls3Q6cx9JCUY3GXgkj0L
   CtHWfRqtTSSTw1Iim5Zolh/Vnw7+soz8cIg/50vd6RCTOhy/6aWo62l2R
   DSerrj6AfrqpnsEy8U1ffrpeKZbgicDCBlrj7HOFvKsYCCQY9olIgffNZ
   Q64req/AQg3BcB+IOtX6tjbOzEKno9KfsMoI4P8G0L9NG03IfgoziQN1y
   0nBbJU19uiaW20ckmb70H5omL/XUuZHj9Z9TxdDWsuouV4GQ2Y/jKioiu
   238r8kMnt+ulF/lNpQKURmuzF72YiKk5kNpteVEqz8CsDGO1GovfFEmLV
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="431399080"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; 
   d="scan'208";a="431399080"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Jul 2023 19:12:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10781"; a="719888695"
X-IronPort-AV: E=Sophos;i="6.01,229,1684825200"; 
   d="scan'208";a="719888695"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga007.jf.intel.com with ESMTP; 24 Jul 2023 19:12:53 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 24 Jul 2023 19:12:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 24 Jul 2023 19:12:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 24 Jul 2023 19:12:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AWB5hVa7mI9NVM1ZNpOM2FWE7Oxc5KpJZ7LS+/cwnDrOqLVl87Kw4orDwWuI5JTqtrOhIRgrAhuYE6NPKFFJW/N5oOU9wKafpKYx8LCmx2pTpM4JW0yM/eBsZSF3AXRCFKE5zotNeThKLJhCSEOQyc4jEfZBzyT4G5/Eg+MTQDS7ufL48ZgiU9EkiHJ93X6ZqbUVje+koeKVA4cl8BoXj4ah1ETldYpDH492pHPQakPMaBJfDpaQEBe6H0Q4aKguS3fUy/URaUZVlrM5tV5HA8KwNrdOA+Na4y4hKaY4lZZC5UmGirU7jsRcJfCk0kDJsHyuDdKpZ9k5ZKO2MgA/Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OTFTCJLcwUc0k392KwO/QAarBr78QRN9xjsWDQ2yTMA=;
 b=S2MUMfhngJQe6HKLOCkIIRt0k0ZmAyKuMbM81UuybMyfRUN0yhWWetNaYW4JLcS5sgK0fkL0ZqmUW7bJ7ok5AkP0U/R9sU7xBXkTpSSEhNTVG+bZX0i2QebLJJP58d0PXFDGAhUMEKeujFJIP2An9SD2Pz0UuH8uZEKJrKi4dZ/qBr+GdpkewZv8QQK9d2RKB1fG/J81xdDLHuw1NrMYEr5n/h8sXPI2Fadx5OsmRuToGN9jEqso5f2RoCfUyX8FeuFLUMBrw0sQAcbiL5tyuz+k86nwUh7TkrHo8pkJbvv9pwAXmxJJq2YGlJtBen7fszzd4+AF4NnfVbN3E3b+Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by PH0PR11MB4806.namprd11.prod.outlook.com (2603:10b6:510:31::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.32; Tue, 25 Jul
 2023 02:12:51 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::137b:ec82:a88c:8159]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::137b:ec82:a88c:8159%4]) with mapi id 15.20.6609.026; Tue, 25 Jul 2023
 02:12:51 +0000
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
Thread-Index: AQHZuar/8ffxdhgup0+jp6oCKhjoRa/D0M0AgABSGoCABBHlUIABCuuAgACH4MA=
Date: Tue, 25 Jul 2023 02:12:50 +0000
Message-ID: <BN9PR11MB52761B55F0534F92614213858C03A@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <0-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
 <1-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
 <BN9PR11MB5276130E7AE8B0BEA43FCC6C8C3FA@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZLpzqVAxxLGJp+L4@nvidia.com>
 <BN9PR11MB527621E6E7D464982B8730118C02A@BN9PR11MB5276.namprd11.prod.outlook.com>
 <ZL69k24VQdH0LFHk@nvidia.com>
In-Reply-To: <ZL69k24VQdH0LFHk@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|PH0PR11MB4806:EE_
x-ms-office365-filtering-correlation-id: 95e030fd-b1b0-4e0f-dac0-08db8cb4a607
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +JCx4SEB/s1jgOQyoTTxXmvcSFt7RXkWyLtv9qep/VeE9z866JbhZp7hPm+XBZZw38mdlgZhbMKFRLv+UTTu4zZkhG5n8j5kCiN6OW+zrBg6S8V0gBlDiHV6TAWM6ScHuFBzDhyhtcmP4FbV/UvitZxjW3ihN4lIoqoNMzI/O44Ys85ba8f1GcMuz/aLAFNJxNm/35zR+aTWVx8kwX5j1ZYf+FvwRJ+XM9poeyWl6DJD3WSg376kVczgdFOlBSbZErVSuaESXAMCekq0bxNBfMXxJ2W4sRm1dbmoIxVfmuRWz052Gxq/i9WBiogbl3Ug58ANLaDVciKygmMcmndlcpf/UIIuAWysxp28i6Vxza2I2wIxpvlZ7Mu2b5F99rvvjl4drA/2KuzgN3jyDiXblU1nAaAdO2fYbPGmPCsLE0vz+I0KLiC1WjDTkX7tWEOOJ34AByJBYswqpK1sD7MeWI/tv9PI6ZRKvJmaLZ0mQ1EUFDNkn1iaIFmizSNZz2s54QUtReCRIUZkQJirGcV2UmNoUThsLSzUFjtVWQ3XObrO3nFYvFdjwUAwgkJ/a1RXPVSkWR3iP9jSE1M7KBkqtssCAdpVyAF4MOiXRk0/hZFuX1nog8kw1Obyuqcf234+
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(376002)(346002)(136003)(39860400002)(366004)(451199021)(38100700002)(55016003)(122000001)(83380400001)(7416002)(8936002)(8676002)(52536014)(5660300002)(6916009)(478600001)(54906003)(66556008)(4326008)(66476007)(316002)(66946007)(76116006)(41300700001)(71200400001)(64756008)(186003)(6506007)(26005)(9686003)(66446008)(7696005)(2906002)(33656002)(38070700005)(86362001)(82960400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Yw8AMCgk+NRviqWQTt2Su3FSzdUMpAe4zOBy1xPf3H4au/h8J/rdrkS1GYG1?=
 =?us-ascii?Q?ZR/idMzZjqbaSgA85tGJgocQB3Tl/gHMlm25YiDsLwxBU5pdPh7l64ktRVvF?=
 =?us-ascii?Q?aBu0ViOkDT4HPv43QTRIoN0dOHvB62F+T1BpXH708SP4zApKGKOq9ZKOlzbT?=
 =?us-ascii?Q?LwrmCKTUQhMBNNFOY4kE7K1jogYiFiefU3xd1w5EC9qZAN+/QEvXpNSYbnxp?=
 =?us-ascii?Q?4dz+mx+DR3tGq/POozj7i9PLE5g35XMqXFttOYbprxsjEI4JAr14Dx5DcQWL?=
 =?us-ascii?Q?xW/SO4cfqN3p/QcZ1QSCjGrjZkPHcnVGpuMy0JYLA2wvAYiTEaBQSjMem144?=
 =?us-ascii?Q?WwL4liFPZc53Ct3ZkUg3o9T42IMTkH8lBEFwUBG30nAojmz0iHh4gqckDvRF?=
 =?us-ascii?Q?LWe9+U/6c+EdwVSM5RIelcKjX0BUoae9j4Tp7Sji1XYVu4WvcVXACnh72FdJ?=
 =?us-ascii?Q?TF61o2tRUqspbrFDC1Z10EPf0LM5KXJK28KIdByEaM4bG7frJcx34A4Z2Wg5?=
 =?us-ascii?Q?KgKpVB6LS1cnv9FWDBzCpr3mA61C33CYBrQWktoUC1vx9C6M4M/5oIMDREuv?=
 =?us-ascii?Q?unGXNWGi/hbvX8q2bIU+NT0rEaR8In9O5a/cPHLFb6/IP6kipwpRvNdQqyoz?=
 =?us-ascii?Q?hG4ar8uLTfmRzM8lYENlN9e9snJ19cTWXptOZvk2smZ6InTPDxfv/Vfxnqwy?=
 =?us-ascii?Q?LTQE/2F93dLukqz8pNKhjqvgI4rXRjqUPfDCx/CnewVVI1wx9yDChsBTe8IP?=
 =?us-ascii?Q?dNHb/XbjMWWgi3PEb8rzClqVCN+Elm+QZzGPSBc2UhfrgeAPIFaR/It927Ge?=
 =?us-ascii?Q?aPcvJXhllSDGwH0at6vS10To70o1tBeOCSe0olsaerGSAkxoKqxOfIZPek3T?=
 =?us-ascii?Q?l9G0ISnZphRBOp0ryCvatJsC6eu2/tq2HGubE/HGjjpziocrde/UlLVewMuo?=
 =?us-ascii?Q?sh910t9y/83iNrukXoANabrGqKFLM6NoQi5miGH23COUU+JM1N+rIok9vq7n?=
 =?us-ascii?Q?ybMkVXCkEYDM1k75uDTb2EuXnLvSy3+DZj7AfUe5O3mvjaix5vY8USWXW4op?=
 =?us-ascii?Q?jsfm9DP5rGolHvRPFg+YguULcdt/i0UQbgGVnvPw1CuGV8e9ibRw9xU2uS2Y?=
 =?us-ascii?Q?4NUfZ21wMbznneD3V1KeK9hQMtr0z7UHdB5U4a2ff2EQzUpZLnW6U1MLKnHD?=
 =?us-ascii?Q?kLnIezd6uNDuoUdet0FANf4lkL61gwutmCK9AVsETxkVxSChKJvReV/xFjH4?=
 =?us-ascii?Q?lFGbKDAub43KN6Y9wcwUA8U+mhhwudHCTDA2ePISSFEtZNrL3Z4I8ay/8zOk?=
 =?us-ascii?Q?MLzibx6IShuu5CfKUWz/GFoU4xAewJRdHyozrriNibCsYDcRky74IH4JzP5p?=
 =?us-ascii?Q?/QVctZm+3WgO9Hw4Z0WIYCOZavAbJT2FX3gCgKKkLlXiyKhYEPkZ1LqGxs+q?=
 =?us-ascii?Q?v+6eOpAqg0ID4bTN02tzxJqcpwPt2XoihjyeUWojOXCOC4bO+uWbKMvKNnYb?=
 =?us-ascii?Q?wEbLrgKf5vKH5PEy8yHnEa0hmx/jLrXnAid8xdaWh/HW9V31VBaJxwJFB9t8?=
 =?us-ascii?Q?At/TPKqEsbqcznr73qKmVx8rYuVqGkPrZBP5b2RK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 95e030fd-b1b0-4e0f-dac0-08db8cb4a607
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2023 02:12:51.0050
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KITvbMrdKsX4Ma4JKHk51xmg3vbFiyrcZXMpSu2erMR1zj+95vAY2xX8ubWlgb3W9yYbDSn1aU5cdj+AmUgN8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4806
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_191259_507961_5FCFB834 
X-CRM114-Status: GOOD (  20.82  )
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
> Sent: Tuesday, July 25, 2023 2:06 AM
> 
> On Mon, Jul 24, 2023 at 02:11:44AM +0000, Tian, Kevin wrote:
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > Sent: Friday, July 21, 2023 8:02 PM
> > >
> > > On Fri, Jul 21, 2023 at 07:10:57AM +0000, Tian, Kevin wrote:
> > > > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > > > Sent: Wednesday, July 19, 2023 3:06 AM
> > > > >
> > > > >  int iommu_device_use_default_domain(struct device *dev)
> > > > >  {
> > > > > -	struct iommu_group *group = iommu_group_get(dev);
> > > > > +	/* Caller must be a probed driver on dev */
> > > > > +	struct iommu_group *group = dev->iommu_group;
> > > > >  	int ret = 0;
> > > >
> > > > this is called in the probing path by .dma_configure().
> > > >
> > > > the driver hasn't been probed yet hence the rationale to not
> > > > refcount is due to device_lock() instead?
> > >
> > > At this point the driver core has partially attached/detached a driver
> > > so I'm considering it part of the probed driver explanation.
> > >
> > > Really during anything protected by the driver core probe path is
> > > assured that the group cannot change.
> > >
> >
> > Probably this worths a slightly different comment then?
> 
> How about
> 
> 	/* Caller is the driver core during the post-probe path */
> 

sounds good

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
