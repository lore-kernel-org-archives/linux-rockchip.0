Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78574CD1292
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Apr 2024 02:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kV8zjVFoqL96UfNqPk3k0Tacn5VVEGr4AXAXMMJXxSo=; b=T2Petq93REPvBG
	hNDEyez49RZp0hEkhgFuCEn4xMsJtQC+sMWNt2UhIm+Ug2OShmv95nESEi2x11YzVAaJP0EpPUfqd
	netWOYjlcFj1jx+YMTZR8KSE6ipumUzLdtx3oT9W5iIryIp1oueN0iR+fLg7bDp1TrvUQBisdfct4
	63lIbbsWWYZ3PPDIZpDI3EfdXSPOUbF4z+KpFFPBwZl3AH9OeiD0jIfJCgiXmYkWInxLmfdFzcBG2
	QZPIXrBVJP76hD9/wp6jlUKtKmPXZhyWudG1mO01rpwqj2rTKFIy/jJpCeUIABFKwpO2uM94b7pLA
	N8OTwLScxsNa54WeeK/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rteaV-0000000E1Vr-2k5V;
	Mon, 08 Apr 2024 02:18:23 +0000
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rteaT-0000000E1VL-15qg
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Apr 2024 02:18:23 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
	by mx0b-0016f401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4380qNhQ025815;
	Sun, 7 Apr 2024 19:17:35 -0700
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 3xb5wgbe4u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 07 Apr 2024 19:17:34 -0700 (PDT)
Received: from m0045851.ppops.net (m0045851.ppops.net [127.0.0.1])
	by pps.reinject (8.17.1.24/8.17.1.24) with ESMTP id 4382HUBL014050;
	Sun, 7 Apr 2024 19:17:33 -0700
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by mx0b-0016f401.pphosted.com (PPS) with ESMTPS id 3xb5wgbe4p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 07 Apr 2024 19:17:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CtSosLwrjMGITTn6JB33dMvaawigF9UFsu4H/biTXOxfLWksYMQa45WqNEFikRPrdo8PtlYBlRWLCycygFVJtocs8eXjr/k1oTHY8LTpS9fd0Bx+5yRY6gVgScKPaG1F9kbFMohVCOi7HLUFnyVlVtL3IyGnP2HFV4HHDvxbyiKBqr8MhNP1OjSWhYNUcva60MFLWBderXoQhIRej8ZHMHtJloMJVIGKt7LHGqxBCz+DlU0dZpzc8/9HT6Vb1OlnuzzToGEJOZKxdKTiJ7PtD/ys+ohrGlBFs4MNMJp/zhfFfBHIoh/0yBDBN38FtFlDUipU4n3x7K7VlhC5EKt2/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V003kRjKvlKjhTB152sZrV0XHkU2X+R/OfC6NLinRgI=;
 b=WUbKAwm0Qbik6bkKTasxRb8+WJ85PEPZhepe1jXBV8KiazC7Um8fBEsg9LE8wLZT7MC+NvvWpTPnR2kPGekmom+FEeLhLPLdK+9ef6CVpMoFSn11K8H42Z1xFQnzinCPI9ia6PgIf/RntZmInlc0Sg7Vc4ZCV2CUa0VqCqcv0fhmYJlcyhRsVoZwB0PFgfy4ZgK+uaKeuiEed5iu8VIEANJqf9Z0koRZHXokyC1Qp5qBbICG4RJ8jhoq/25EkVqiQPThEdFbqfYcFBNfsKXZZY3/ytgv4XEbnZrhZCRR4NaJpR+MiET8qk1h6BR5dCeMmqNUWXJe8uAzN/ras31f7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V003kRjKvlKjhTB152sZrV0XHkU2X+R/OfC6NLinRgI=;
 b=Y00T+7oJ31PPds9ENxk96FIfMYrW888wmsb5wJStWylQ9dVGBc9MSlbQ6VmfuAN92/9QqmMrhzKLWfS24TuxJcZFtzgfyYqrhe1uaDBdNSgYmFBd8tIeOveMpItHSS5SrpO4nCAMHnS3UD8Okx/mX1LHffSqRGDJ8SuQAUnjZ50=
Received: from PH0PR18MB5002.namprd18.prod.outlook.com (2603:10b6:510:11d::12)
 by MW5PR18MB5809.namprd18.prod.outlook.com (2603:10b6:303:1a8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Mon, 8 Apr
 2024 02:17:31 +0000
Received: from PH0PR18MB5002.namprd18.prod.outlook.com
 ([fe80::8bf7:91cd:866c:68b0]) by PH0PR18MB5002.namprd18.prod.outlook.com
 ([fe80::8bf7:91cd:866c:68b0%7]) with mapi id 15.20.7409.042; Mon, 8 Apr 2024
 02:17:30 +0000
From: Linu Cherian <lcherian@marvell.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
CC: "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
        "alim.akhtar@samsung.com" <alim.akhtar@samsung.com>,
        "alyssa@rosenzweig.io"
	<alyssa@rosenzweig.io>,
        "asahi@lists.linux.dev" <asahi@lists.linux.dev>,
        "baolu.lu@linux.intel.com" <baolu.lu@linux.intel.com>,
        "bhelgaas@google.com"
	<bhelgaas@google.com>,
        "cgroups@vger.kernel.org" <cgroups@vger.kernel.org>,
        "corbet@lwn.net" <corbet@lwn.net>,
        "david@redhat.com" <david@redhat.com>,
        "dwmw2@infradead.org" <dwmw2@infradead.org>,
        "hannes@cmpxchg.org"
	<hannes@cmpxchg.org>,
        "heiko@sntech.de" <heiko@sntech.de>,
        "iommu@lists.linux.dev" <iommu@lists.linux.dev>,
        "jernej.skrabec@gmail.com"
	<jernej.skrabec@gmail.com>,
        "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
        "joro@8bytes.org" <joro@8bytes.org>,
        "krzysztof.kozlowski@linaro.org"
	<krzysztof.kozlowski@linaro.org>,
        "linux-doc@vger.kernel.org"
	<linux-doc@vger.kernel.org>,
        "linux-fsdevel@vger.kernel.org"
	<linux-fsdevel@vger.kernel.org>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>,
        "linux-mm@kvack.org" <linux-mm@kvack.org>,
        "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
        "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
        "linux-sunxi@lists.linux.dev" <linux-sunxi@lists.linux.dev>,
        "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
        "lizefan.x@bytedance.com" <lizefan.x@bytedance.com>,
        "marcan@marcan.st"
	<marcan@marcan.st>,
        "mhiramat@kernel.org" <mhiramat@kernel.org>,
        "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>,
        "paulmck@kernel.org"
	<paulmck@kernel.org>,
        "rdunlap@infradead.org" <rdunlap@infradead.org>,
        "robin.murphy@arm.com" <robin.murphy@arm.com>,
        "samuel@sholland.org"
	<samuel@sholland.org>,
        "suravee.suthikulpanit@amd.com"
	<suravee.suthikulpanit@amd.com>,
        "sven@svenpeter.dev" <sven@svenpeter.dev>,
        "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        "tj@kernel.org"
	<tj@kernel.org>,
        "tomas.mudrunka@gmail.com" <tomas.mudrunka@gmail.com>,
        "vdumpa@nvidia.com" <vdumpa@nvidia.com>,
        "wens@csie.org" <wens@csie.org>, "will@kernel.org" <will@kernel.org>,
        "yu-cheng.yu@intel.com"
	<yu-cheng.yu@intel.com>,
        "rientjes@google.com" <rientjes@google.com>,
        "bagasdotme@gmail.com" <bagasdotme@gmail.com>,
        "mkoutny@suse.com"
	<mkoutny@suse.com>
Subject: Re: [PATCH v5 01/11] iommu/vt-d: add wrapper functions for page
 allocations
Thread-Topic: [PATCH v5 01/11] iommu/vt-d: add wrapper functions for page
 allocations
Thread-Index: AQHaiVroGe5AZYcZGkCwqMPJQFaIbA==
Date: Mon, 8 Apr 2024 02:17:30 +0000
Message-ID: <PH0PR18MB500222E0231D648123200AD9CE002@PH0PR18MB5002.namprd18.prod.outlook.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
 <20240222173942.1481394-2-pasha.tatashin@soleen.com>
 <20240404121625.GB102637@hyd1403.caveonetworks.com>
 <CA+CK2bDmya+768tOvF0N-BYq8E+RwBw4xS8vC+MmbU9eoOv_3g@mail.gmail.com>
In-Reply-To: <CA+CK2bDmya+768tOvF0N-BYq8E+RwBw4xS8vC+MmbU9eoOv_3g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR18MB5002:EE_|MW5PR18MB5809:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a7LudwNacFIMnFykgcHw/0SqZfy6iXIbqP6hembj7ydS066DeurpvQF/qFZRT2UzK0V/MonKur2jbmGedgdTGrfbeGgkO5R7sS3pPqZQ6+RPlTxr/gA0eo+moOTvsdHLtTgqMyfQCYMWYInjyzf91KKDPu4clMxjaerbx0IzjvUE+9y9OShjm/UBIn9aElvhQNamlMvWpAYjwXnTrX/yMb5CYLPrZpeYv3mxYo1o9d7D0M4inV2CkibAaP4j7f78Iy1WD7fRrigh3P/UI52Zk6iYvweFTBbIOMljzseCDhyenskdUc+g9slZm8AtPQyYLc1SuMdFN7Fc3S5gTxuWToaWGAacxCwYagxbeaUHfwyp/qyeYfeRK5yhDN4SCKdyR62pCQrniUjCTBr1jQ/BJcRNAdtgLT6bnZxSpPggqf9w+TtQv3EjX9qosTmvjST0hkOD6CZzu1sSOXRGOQg+FRirm74NYoj2JHEv+KUzbBvfdsFg/ZSy+eRsiDX24YOzA7FcmQC71r9RHw3ASbeJn36TmWn+V4e42i/zehtH4lDLnTQX3awiWYTs2YxXgWOiibQQWYEOWquXIlQSzfy7vunIqcyRhUB47//jOpvbC4zwxQTaCxfu4YZHUz2DRf4OjTJ2GuxGslDyKnipKRsU8t4bBwc5ISNr9XgukliVgMk=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR18MB5002.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7416005)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VU8rQ2p5bkZqQThRY1JHYjMyMFRCcEp5eTdNWHNzUzRwZXhvSG02Y2lYend1?=
 =?utf-8?B?b0E5ZjQ2U2tEbkYxMDZBckorMU1pVWxDSGdHRGNnenJ3U1FhVWdnNS91ZTZO?=
 =?utf-8?B?TElxKzNTbnBoTFNOMzlDSnRMbnJlcVZXMmZMT1l6UVBrdTUrL0QyNVBpRnpK?=
 =?utf-8?B?ckxISm1aZTNrdmMwd0VGTlllVjFtY0dVVnAwd0YvanY4WUlBd0ZJYms5TmZM?=
 =?utf-8?B?TlNieE1DT0Q3Z21CTGJrbjVFZlA5eUs3S1llakxHVnhOcWxBSWtWS2M2MUpn?=
 =?utf-8?B?MEt1aDhaZm9XWTl1UHlhbHFNelZlakRoZ3d1QjJyS01UcmdwY3kra1ZPUXI2?=
 =?utf-8?B?WGdwaGkwYzYvTWEwQXk5ejlEdllNam1Hc00zTHBKRnNnMXYxVUt4TnRTUzdx?=
 =?utf-8?B?OFZvcjJxZjNaYjdJM3FrMHpIeHFSelNsZXZKUTJQeHhQUVN6K2VNS2pibW5J?=
 =?utf-8?B?RHZHZjhBWGsxendQRWJtQkhhNzM4dGNQR0RBNVFYMmFWREpocnRVRFFvVWND?=
 =?utf-8?B?OUxqQmc4K0lXNm9QS0VHUGpiSmV5cllIeERmeHptcHZ6VTJGNCtpbjdkUjRi?=
 =?utf-8?B?RC81VHoxUzh5aXVZRGhScU5WWEc3NXZYeUVEaFpYdXZDVWxnYm9OWVlnaVlM?=
 =?utf-8?B?dk9FdGFjc0tvYS8xVVJBK09WemJmNy9HQVh2OTFFOG5VbTBmU3Ywd2NaaG9z?=
 =?utf-8?B?ZmtRL0NrY3dPTUl1L0dhYUxjYW85QzhxODZyaDZGcFhtZldtNXF3QlpvelFD?=
 =?utf-8?B?WS9HVjEwRUt2NXNUamVoekdPL2dpWWNIWVhYSW1WNDErT1RUbzkydW5ES1Zm?=
 =?utf-8?B?S0U5c3ZkeHNUMFVuWWoxbmtCQVVKUG14U25uOWVpa3dRaE40czZGYUZyT1dp?=
 =?utf-8?B?R0FadVVQVmZ3OFE0VHQ3a2JsRGdNN3F1TytsU0EvNzVOL1NpV2M3cUQ3dkdi?=
 =?utf-8?B?ejd5NHRjVjBpaGNIdmczbEpIR1RaNU42Q2gvVUh2TmJnK1U1WkkvejhFK0FT?=
 =?utf-8?B?K1ZlL01vMWJYa0laL2hDYjFCT09IeWpSM2NUMnJiTHJVM002R2ZEdTBpVEEz?=
 =?utf-8?B?SDVwRmVkOVhhcHZWdHVyL0hqK1g2QWtEWGVmbCswelhHMmRra3pucE5NR0RI?=
 =?utf-8?B?WWFiRzd4bUdJMGVxUU9OcVhGQnBrMGJ1c3pMSWtmQ1Brb1dlQ1dya21VYzVn?=
 =?utf-8?B?UmlRTTRxWVA5ZS84dmM1Wk5SbFp3WjR4a2dYSUxzcGZzTE1HRlFUYVFOd3RZ?=
 =?utf-8?B?dUdhNDVxY3JoQkZZQTM2Q1lmTDdvSW5jdkQxdXB6ZlBhSmh0ZFpFZVZnOEVn?=
 =?utf-8?B?a1A3eCtxVy9lMHdYS21mQm9ZV1BFSXNWYXZWTFU2RmEzM3RCK1lqYjBUUE1v?=
 =?utf-8?B?VXNCRVFWeThFNjNLckx3Zkg1MmxOcU4yWmZIc2VaNk5vY3VpSVpOZW1zZXRn?=
 =?utf-8?B?NHZkejF3S0IzM01nUkFUUmplUHRoWCtiUUpKMGJMNEtkREYxUzRjbUtMdnVn?=
 =?utf-8?B?aU1ER2VOREdUT25RNHZhb2Q0LzA3N09kc2xuOGNKbTE3MVpSNWZkb0U1ZGFn?=
 =?utf-8?B?aW5wUkl0Q3VPT0hKWEh5SXRna2JxYm1NNTRvYjBuS3E4T1Z4aHJJemRjR1Jj?=
 =?utf-8?B?aHZKdnoxZGkycXRZZFpsb0xvbzVQVHlTdGt2dm5IM1N4SUZwWFBJRUpIQzRp?=
 =?utf-8?B?cW8rellhaS9IOS9QbTNFdEJqYnpZdGlDeWJxZ0JUSkxqMENtMzlTZjQzNW5K?=
 =?utf-8?B?SGR2NklIK29jNHk5N2tVallvN1RVemFLMUdUS2g4ck9qQU9yb0RycFB5RWp4?=
 =?utf-8?B?TWZZUndyNnZ5Z1Q3WVdGOFFJWHRzcEhnLzhvRmIySmJiLzV3cVcxU1ZlZzk1?=
 =?utf-8?B?TGVLcHJ4cTdTZFhTb3EwRjNNL3R4Y3VISHdINGN5ZStVejY5VXN0V1dydnN2?=
 =?utf-8?B?VnkwWjA2cjAzRFJYbFhCd0Vvc2V4R1ozVVlBOExIMnlFU0MyUzF0MmpFaFRI?=
 =?utf-8?B?K0s4WTV1d2NRN2pjbXhBcVJ1cjhHdis4anJJeFZ1bUFQMGdsRy9GVzg5QjJ2?=
 =?utf-8?B?dnZrenlxc0I1N1lNSjZsVGdsZm1jRTdPay9OcDRyMnk2Und3TVBQVlZSMU8w?=
 =?utf-8?Q?VBFzLzwudupxpybOZ5N6oJztM?=
MIME-Version: 1.0
X-OriginatorOrg: marvell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR18MB5002.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 897432dc-8b6f-4957-6c25-08dc57720b4b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2024 02:17:30.6669
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /B/551ZSbXpf/Uk3MbI2nGX/vWR3e3glypYjL1QA34x81LBfSIS6NMmsTm70xF5faDLfn9XTQn1mRroev5pMPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR18MB5809
X-Proofpoint-ORIG-GUID: CIc7-dxqNEkeMU5MHVckXAb8bCOb436Y
X-Proofpoint-GUID: _fqGv58pxyt6WRAvJtJUBmPJzUw5j76K
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-08_01,2024-04-05_02,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240407_191821_526465_22293F47 
X-CRM114-Status: GOOD (  22.95  )
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

Hi Pasha,

> -----Original Message-----
> From: Pasha Tatashin <pasha.tatashin@soleen.com>
> Sent: Thursday, April 4, 2024 7:26 PM
> To: Linu Cherian <lcherian@marvell.com>
> Cc: akpm@linux-foundation.org; alim.akhtar@samsung.com;
> alyssa@rosenzweig.io; asahi@lists.linux.dev; baolu.lu@linux.intel.com;
> bhelgaas@google.com; cgroups@vger.kernel.org; corbet@lwn.net;
> david@redhat.com; dwmw2@infradead.org; hannes@cmpxchg.org;
> heiko@sntech.de; iommu@lists.linux.dev; jernej.skrabec@gmail.com;
> jonathanh@nvidia.com; joro@8bytes.org; krzysztof.kozlowski@linaro.org;
> linux-doc@vger.kernel.org; linux-fsdevel@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-mm@kvack.org; linux-
> rockchip@lists.infradead.org; linux-samsung-soc@vger.kernel.org; linux-
> sunxi@lists.linux.dev; linux-tegra@vger.kernel.org;
> lizefan.x@bytedance.com; marcan@marcan.st; mhiramat@kernel.org;
> m.szyprowski@samsung.com; paulmck@kernel.org; rdunlap@infradead.org;
> robin.murphy@arm.com; samuel@sholland.org;
> suravee.suthikulpanit@amd.com; sven@svenpeter.dev;
> thierry.reding@gmail.com; tj@kernel.org; tomas.mudrunka@gmail.com;
> vdumpa@nvidia.com; wens@csie.org; will@kernel.org; yu-
> cheng.yu@intel.com; rientjes@google.com; bagasdotme@gmail.com;
> mkoutny@suse.com
> Subject: [EXTERNAL] Re: [PATCH v5 01/11] iommu/vt-d: add wrapper
> functions for page allocations
> 
> > Few minor nits.
> 
> Hi Linu,
> 
> Thank you for taking a look at this patch, my replies below.
> 
> > > +/*
> > > + * All page allocations that should be reported to as
> > > +"iommu-pagetables" to
> > > + * userspace must use on of the functions below.  This includes
> > > +allocations of
> > > + * page-tables and other per-iommu_domain configuration structures.
> >
> > /s/use on/use one/?
> 
> I will correct in the next version (if there is going to be one).
> 
> > > + *
> > > + * This is necessary for the proper accounting as IOMMU state can
> > > + be rather
> > > + * large, i.e. multiple gigabytes in size.
> > > + */
> > > +
> > > +/**
> > > + * __iommu_alloc_pages - allocate a zeroed page of a given order.
> > > + * @gfp: buddy allocator flags
> >
> > Shall we keep the comments generic here(avoid reference to allocator
> > algo)  ?
> 
> There are no references to allocator algorithm. I specify the zero page
> because this function adds __GFP_ZERO. The order and gfp arguments are
> provided by the caller, therefore, should be mentioned.

Just meant to remove the mention of "buddy allocator" in the above comments if I was not clear.
Ie. "* @gfp:  allocator flags"  instead of "* @gfp: buddy allocator flags" since that is allocator specific.

Thanks
Linu Cherian.
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
