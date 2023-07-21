Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE48CEB64DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 07:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiDQVyeQi4QWdyCBpb7D6pdQuS/UdqbTSVTTYXMwZro=; b=MOrM3rEOt2+XCJ
	vgs31qYI2k0S+Bn5jYgVkEtzREMgdLJsqPefmLIssKBymLESJP1raVP3WRIR2R7mWBb4Y1f8DYdoa
	4PtiZoJoqy7O5Zv3Dr34jVqTzGHVVAu8qLQoEbnQHvOYwvLOYS8uBuSOnTeRtdCTdBjNHbvNKVKeO
	zxGgVVXjrEOYlVewA3HdoY2CRYHbqDqRjCTRbybeU2XunfRUKnJ5OOMIGxxVHJnIYZlQNTFm9DkHT
	TlVYqwW1tioAxXjlWOKWccc1h/K8LuBfWgPvWhbxoYaLWzYrj0YRbYi4SsZ+TVXXjLfT1OejFHgCi
	/LX3qAoMzd2hoO+Em5eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMkOg-00D9pb-2J;
	Fri, 21 Jul 2023 07:17:54 +0000
Received: from mga11.intel.com ([192.55.52.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMkOd-00D9oc-0o;
	Fri, 21 Jul 2023 07:17:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1689923871; x=1721459871;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=3oQA70thrE4R1FxkqSpbw6xa3Af4MQLwbkUnWx8/jCo=;
  b=f1LIgy7t5QS04UZW65zwxkWYxutJAItePnNKxQlRXlR1LvwJ8vk6TGiv
   AeVq7dpGin+gmoga1eGjFG2chVhHRV5reM8LcyJEjZLJ8/SYqn5gXXfvk
   +GZNXYt7A+qdChMu9eD1114WZSkmlwX6haIAQXTypMligM/FwPnZLWIB5
   Qt/Dk5FZrAK9tW7Zoxr9YWX5REmoIARHkavhuTakLdC53S+w4uOwu97N/
   rnplTjnp5FGawlFbfNE/vrLdUieKjCAhu9ILsv/XVGSJbi0MAwuNtNi7W
   I8vbhBKQ4UZHX9ij2S9DD3AelDJRAySRX7j33V62Q2p2ibBwbB1YAo8jJ
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="364422664"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; 
   d="scan'208";a="364422664"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2023 00:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; 
   d="scan'208";a="868137316"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by fmsmga001.fm.intel.com with ESMTP; 21 Jul 2023 00:17:49 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 00:17:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 21 Jul 2023 00:17:47 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 21 Jul 2023 00:17:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 21 Jul 2023 00:17:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iLG2tHbkHAjCqB1Ob0iQneEqm5OM9v1RCHbfNeGEG7ToaRP8WzPyMHpKFCr+MXcfbtbH7iZicE2AZWjcDO6m98ZcAt+9d4y2DrZGzfI/FbKyrNCGqg7CrZdJx5i06D481HYvvvUjQB7Nk/ws15ywiXw8NcEuzFyHwfCOfUkuGuQhNdJCWC4SFLuhhYpNzClXh+7IQEtl0QT+D/BjL+ayVMZ7+UuToadEMvXCgLpPMHidZX4whFFHjGfzK4JdKRO+WA1yUOZWw5ZCa/uFBpLzlm7z6cTkLzpxVTpT3Q1UqWyJFBGRBvQDZiFBXKq3GlBtlfQm475gp0sxE4KdvbVbOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3oQA70thrE4R1FxkqSpbw6xa3Af4MQLwbkUnWx8/jCo=;
 b=Mb8MeKUSVIuMasDfu6hDufAGJ1F1/DvrIBVo7vctjD3rFxCQImnavfunwHrvVI5Nv7W7rpBj1NcybA6n5XPm1xDwy/MvuIVUaLSEWuzCmrxYEvaMNWaJVj/yATzjsovYvXEmYoF5UNM2U4DXOSOlKSLFwHbrFz1CNHejzTlHIKACt1YJGNago1hMfYTyDkP67tFYvgUWZjeJrkCEsh0q0uPubDGh82sn4rSWgxdHIbgVX8Kalxx++yw1fiCuXYngvfelySIanXTTRxTRY+ygx0+ynnqXEsBY3PlEjt0Kj6NgbT8JssvHQ8E3iLw7L9nLVDgaJFujpRMS+/Z7LIdy7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.24; Fri, 21 Jul
 2023 07:17:39 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::137b:ec82:a88c:8159]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::137b:ec82:a88c:8159%4]) with mapi id 15.20.6609.026; Fri, 21 Jul 2023
 07:17:39 +0000
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
Subject: RE: [PATCH 03/10] iommu: Add generic_single_device_group()
Thread-Topic: [PATCH 03/10] iommu: Add generic_single_device_group()
Thread-Index: AQHZuar/FQacb56ktkyvM1UHs6j6yK/D0ipg
Date: Fri, 21 Jul 2023 07:17:39 +0000
Message-ID: <BN9PR11MB527636B9607D852373836ED68C3FA@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <0-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
 <3-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
In-Reply-To: <3-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|SA2PR11MB4969:EE_
x-ms-office365-filtering-correlation-id: c06bd8e5-c08d-4863-edae-08db89ba9147
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CdPwsM0MHRq8rn+w4maxLInp6d3voeVJPCoZIG1ISDtwRygvBu4fK7aPUy+Qa/fJ5SzTEAxnSSpZkrADNcwMlup7kciYSP1kEFKJC+yBc94gN56e3VvMy3J2W+zbpw1q300OhDWXFNZEASqTC+EX21s46BeP6Jc/GTsdGKlf3pYHyOovjXlyk6VJQI9f3yveMHptzhk2yuBZwXboe5hQ2IUBDBK1HtMJZNT6QgVwgbwNfAQ3j8Sh4+WNoxyvU+wevImLImT8eZ34zJHoR9IABsIXyJPGwMsoxTErGcYPZNtyklQtX1exuQtH9QQSHcYvtR2cMgNybaLgerE68o/9dRK6x2kPU1PeaCOAwtMFWxtCRriQHEJbrbToinNZiCS05mj/l4luY1632OoKh5THf6RZX5F96PeQnwQPhSzFr868vIOt5ZUH7dPxsAbSW8i04tO2RnPWiRNEyLl0RzjUpVy5OfFOKeqcIcHsce97tzXrSDT9RmKkjH5O0aMksigAi2J3VYrqya4qIGydh+miBvn/0832pGTjXCYLwo+qZTzAAzC4DaCo+g6fOPN0pkLwOuWNSAxEmJWkBkFH6/QjvxyqJsTAhoNhSiL75Um5lO27oAHNKZ4ZYd6xehKJzLdBYm2ffebNRsUcMisOXoYoyqFYlNrVDQyciOUFovcxePo=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199021)(7416002)(82960400001)(8676002)(52536014)(5660300002)(38100700002)(38070700005)(316002)(66446008)(66556008)(4326008)(64756008)(66476007)(66946007)(122000001)(76116006)(83380400001)(8936002)(2906002)(33656002)(41300700001)(478600001)(9686003)(7696005)(55016003)(71200400001)(26005)(6506007)(110136005)(186003)(921005)(86362001)(41533002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MXRtQ3NNcW43VFlwSUNXSm9RdzNpenJPekd4cFdzZEd2OW5VaEpJVWszSlZR?=
 =?utf-8?B?Q1lqWXQvenZ3OUJTdGdzeE9scnByM0RTNmtLU0hZNXAzRzg3OFlVbVFJTGFV?=
 =?utf-8?B?elhieVI4bVVIMHJ4SVVDQ0tYZXBaaHVzVmhlbHN5VzJJOVRRNUNCTjJrLzBS?=
 =?utf-8?B?cGJuL1dhVnNDdEtyZkI1a2lBK3Rxa3UzVUNUUkRpaWtRL3BQY1NQWXZuUG1L?=
 =?utf-8?B?ck40TDVURUJUdFZPMUdpbjJmY1RhSzBZVmd2c2NLTk1OTWxtakVoQ3BJZU91?=
 =?utf-8?B?R1J5NFBrVnpicDZGZWlacGlBUnN0SG1rZzJvYldqOVdVdERzYTQ0ZFZ4dmMr?=
 =?utf-8?B?Zy9oTUVCcjkrdUxzbmZ5aWtWWFpQL0MxbEVpak1HR0xYa0krR0laaWgwcmJD?=
 =?utf-8?B?VjFBRDBBNlNlVFR6WVhpd2c5VUtPQzBXcjZBRkVuOTBVR2N2NjlkMUl0NzFJ?=
 =?utf-8?B?cGJTWXhPdmJTcHRQMXRnellLb1BsVGU0ckV5VTgybmE2U3kzZ2NnekNBZ21x?=
 =?utf-8?B?QWV5NDZad3FCemlLejlUV0tIWTZzdzVTS0ZKbUNIaTNMblMyRHI4dkhWZjRw?=
 =?utf-8?B?WlBRVVVsS0hpeFBWcDRrK0VyeVZqU1VnZVhHVWpLNHVkN1ZJckU4SG1IbVBP?=
 =?utf-8?B?QlVCMWNEaCtoM2ljOUZzR1ZTRTdHek5rVXM1U2U3VHB6aWpLQlhjbllnSCtQ?=
 =?utf-8?B?TFZrZ010NlZaaStJaGRSdVJZbWxmWFdWMU9TNFFoWVhxUTFoNjBOMDIrbnQy?=
 =?utf-8?B?TW5haGpNSFVvUTJMTlhhQ1VZK0VnbC9pbXNrRU9zWjhVR2FmV1NQVTE3aHpp?=
 =?utf-8?B?VzREdG9YOG4zQjZIWS9QRWI1c2E0STJBVi9Tb0tpYzdCWVVrNi9UK29vM2hC?=
 =?utf-8?B?bXlKc1FRaWk3N0dSeUFmY3ZwNEI0MTlRYjNScWNDZlVrYjlCSjlxSUVQV0t6?=
 =?utf-8?B?c1lGSzZDZWFNVVR6VFVyclZtaUYrMjRHL3I0ZHRCQUJFVEw2WUQreC95SHdR?=
 =?utf-8?B?YUM0L2tEL0FVeDVDZnRwbUJGZmhTenJra1BzSjQ1WjlvdDNUb01MTzAyeU9I?=
 =?utf-8?B?Y1R5TU0xaFVBM0pEOTNSUG95bUlqRm9IN0ZrNnUzT2I0UWltMGEzcXZQeVdk?=
 =?utf-8?B?cUV0emZkTFF0QVVCK1FTWXYxczlqVFdvVlJ5cTBpZG1xRU9LMGJ4ZEg2UzUy?=
 =?utf-8?B?Q1U0OGpHNTJlQzUvWVRzQzFDUk9xOTVpT0h0QW1ic3JOdlJrUEw2Q1l2VVY0?=
 =?utf-8?B?MURXSkJRak5NVjIxa3JNK0ZZUEkyd1lhekYydVQ1RmwxMU5XZzBBRVJ4Yk5t?=
 =?utf-8?B?ZEw2L09zMlJNbWZYdEVteFZnL2pWV2Z3Rm1kTExrSlRIVUlPYXI2Zk95REZi?=
 =?utf-8?B?RzhmWVNHVDRvMU85ZThHcXlVSTR4MTVOWHR6bXJ4OHR0bUNqeWdhZ2QzKy9W?=
 =?utf-8?B?OWFzbW5JZXd0Vkl2SStnRWFGUVRuOFUvZmxOZzUvQXdabXdRd2lNblY4cCtr?=
 =?utf-8?B?YUpQQkZUSUIrT1g5d3AzR3ozWVdHUlZyb0hGS3BnRktpcTdmZ29RTlBPTzRR?=
 =?utf-8?B?d3NoN2FaM09mTnJEOFAydEI1MENOOE9XdXc5Znc4N3BocG16RGczKytuQm1m?=
 =?utf-8?B?KzZJT1NSYm04SzcwVlRRQzhJSWlEOHZOaE8zbVZhVnBpTlh2a3V4VzNpS0xT?=
 =?utf-8?B?SHlOT3pjelNzRkR2OEFwZEdTemNaRVRSMElsNnJNUFRDbVUyZ2FTM1oxSUZu?=
 =?utf-8?B?SmRpd0Rzc25CdEdOWnhMejlHSEg3eDZUczg0ZFUrOWdzSzZxaXE1TDFTcjIx?=
 =?utf-8?B?Rml1R0I4VVQ5OGVsaEVGTmVoWXlRQjlRL1Fkd2FvMlBNR3IzOGRsMTI1QXZ4?=
 =?utf-8?B?RkVpcFdYR3BuSkJEakw2NjFoTWhmQVhDMU9ZK2wzRXduclJhQ3BqU3JBOWRi?=
 =?utf-8?B?SllEdjBUK1JNVkpwdFd0NE9PMC9NVCttdGJwSWRQL3cxQUw2ZlBEajJHc0RB?=
 =?utf-8?B?NTdFaldadW8yYklWZXRyc3pCa0cxMWlTTE9WQ1dKZTE3aGtrb2FxUkYvOFRU?=
 =?utf-8?B?dHNTamY3bThwbGk4QVh3c0ZNYTNPWHJnMkNQL0ZpVDUwMnVIMVF0cVJ5Ulpx?=
 =?utf-8?Q?fnfeveXX61cmyJMF745ttq+L2?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c06bd8e5-c08d-4863-edae-08db89ba9147
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2023 07:17:39.7314
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cqcqBKvr/n76pdLaQ+fQT4XSSUvmvsw02BhgOAPXP+pQ7y5jTXv0KM/ZfbuVTXFbaX8abniKl9Q3iMLlXYyYpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4969
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_001751_323175_4D5CC53E 
X-CRM114-Status: GOOD (  19.28  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PiBGcm9tOiBKYXNvbiBHdW50aG9ycGUgPGpnZ0BudmlkaWEuY29tPg0KPiBTZW50OiBXZWRuZXNk
YXksIEp1bHkgMTksIDIwMjMgMzowNiBBTQ0KPiANCj4gVGhpcyBpbXBsZW1lbnRzIHRoZSBjb21t
b24gcGF0dGVybiBzZWVuIGluIGRyaXZlcnMgb2YgYSBzaW5nbGUNCj4gaW9tbXVfZ3JvdXAgZm9y
IHRoZSBlbnRpcmUgaW9tbXUgZHJpdmVyLiBJbXBsZW1lbnQgdGhpcyBpbiBjb3JlIGNvZGUNCj4g
c28gdGhlIGRyaXZlcnMgdGhhdCB3YW50IHRoaXMgY2FuIHNlbGVjdCBpdCBmcm9tIHRoZWlyIG9w
cy4NCg0Kc3RyaWN0bHkgc3BlYWtpbmcgaXQncyBwZXItaW9tbXUtaW5zdGFuY2UgZ3JvdXAuIPCf
mIoNCg0KPiArLyoNCj4gKyAqIEdlbmVyaWMgZGV2aWNlX2dyb3VwIGNhbGwtYmFjayBmdW5jdGlv
bi4gSXQganVzdCBhbGxvY2F0ZXMgb25lDQo+ICsgKiBpb21tdS1ncm91cCBwZXIgaW9tbXUgZHJp
dmVyLg0KPiArICovDQo+ICtzdHJ1Y3QgaW9tbXVfZ3JvdXAgKmdlbmVyaWNfc2luZ2xlX2Rldmlj
ZV9ncm91cChzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+ICt7DQo+ICsJc3RydWN0IGlvbW11X2Rldmlj
ZSAqaW9tbXUgPSBkZXYtPmlvbW11LT5pb21tdV9kZXY7DQo+ICsNCj4gKwlsb2NrZGVwX2Fzc2Vy
dF9oZWxkKCZkZXZfaW9tbXVfZ3JvdXBfbG9jayk7DQo+ICsNCj4gKwlpZiAoIWlvbW11LT5zaW5n
bGV0b25fZ3JvdXApIHsNCj4gKwkJc3RydWN0IGlvbW11X2dyb3VwICpncm91cDsNCj4gKw0KPiAr
CQlncm91cCA9IGlvbW11X2dyb3VwX2FsbG9jKCk7DQo+ICsJCWlmIChJU19FUlIoZ3JvdXApKQ0K
PiArCQkJcmV0dXJuIGdyb3VwOw0KPiArCQlpb21tdS0+c2luZ2xldG9uX2dyb3VwID0gZ3JvdXA7
DQo+ICsJfQ0KPiArCXJldHVybiBpb21tdV9ncm91cF9yZWZfZ2V0KGlvbW11LT5zaW5nbGV0b25f
Z3JvdXApOw0KDQonc2luZ2xldG9uJyBpcyBhIGJpdCBjb25mdXNpbmcgd2hldGhlciBpdCBtZWFu
cyBhIHNpbmdsZQ0KZ3JvdXAgcGVyIGluc3RhbmNlIG9yIGEgZ3JvdXAgaGF2aW5nIG9ubHkgYSBz
aW5nbGUgZGV2aWNlLg0KDQpJIGRvbid0IGtub3cgYSBiZXR0ZXIgbmFtZSwgYnV0IHByb2JhYmx5
IGp1c3QgdXNpbmcNCmlvbW11LT5ncm91cCBpcyBub3Qgd29yc2UgdGhhbiB0aGUgJ3NpbmdsZXRv
bl8nIHByZWZpeC4uLg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
