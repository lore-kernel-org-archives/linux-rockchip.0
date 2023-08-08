Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E834C001B0
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Aug 2023 13:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VRERLqylhnp5WDEO/umzcISDElA5LOX5Ixd4Vc2LIaI=; b=aCAbG1lQsbTpqt
	tnOKI8Eux6/psSrL604mVjfqY0BQJAqh9xa67IKPyuppL6RYMag6tcc2F8WSDzL4PFqmYLMnX0pGu
	TUSOfMvBFmS8pSfyCJxb53TowHltJh1lyDFM+jahQLRc53Od+yP0u49cXhW3Qb5T6YDROSGQSm+1r
	bgM1M84O2cWm1Lf0zN2vWOYOn3Y8h5Rk+ZIZuKBkEMqxPnXdv+O2YJk2wL2WKi3X81W5QqhbXjdFF
	O1/ILtXaf6P9ffFldmDzrZSI4/UDsvH8m3Oe8DJc8rR2fLgU7cEWOCUw6AhTi+Yh5U00MNHnDrWP2
	xj0NRlHkRpdEB1Vt4yRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTMJy-002b3w-08;
	Tue, 08 Aug 2023 13:00:22 +0000
Received: from mail-co1nam11on20613.outbound.protection.outlook.com ([2a01:111:f400:7eab::613] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTMJv-002b3G-1w;
	Tue, 08 Aug 2023 13:00:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I1hjE6IaP90TCitxaPNkWNsJ3UId0Ajm0CtnUi/+Soo2tLcr2La9Rx2ayzYRrbLD1zKQhwOhovnlkIFWBpFekcDnrxMO7pf2Xam4gI05JFtCjTTUlfs+6fg18LUERt6w58raTMciMCD2FBhDvQdlB7PMMZlh4G+P8VTM3uGhcNZpV1lWg1D63lsAQXNmCc6R8FqURqPRI/yoP+uQAPWZCuqK3YWp8bZz8ck3PfEDOoN4Rotakh9WlMWC/ymbZVJfwFgmM46wjPKgi9uqWhx0zSM0+XwLxwgut7j8TCDtl7lJ4CwjluQfYWlC2CTG/YYMVs7GgfQADbfBWKDMnmeYwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aodyOVhOuHu9bvMhfT504eiJCVe2QReDyr/8PDGRRUM=;
 b=QXV0k1K0OYQIKtlB4Sxr127laQiHafXopYozO0BDh6YEjnoMl+o5Nf7ytuWfbNUPf9DvaniAikPKMD7Zcf3pGiNl+mokhOwKrphjLjNUJVS36WVibd9Iuk0vkJ9crSzX5rUv3u5VEUTZUkFRK86dK/eFAT8B5WFV2sisZwnBkInyV6cjWiZDsFIaYrAAI0bxAa1X3tK6IwY9nXOEK+YlHHbId8k3zz2myWUr5fLm09cpQBQ8Y/pHzJF0eQ4hdrxQV9cNugQop34PGvVwiBa0zZica9+LR75kKyednWtxeDDnO8jY1MSGyAP7+PymwFdIOMeKEgOpxFnY21yU+tj+rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aodyOVhOuHu9bvMhfT504eiJCVe2QReDyr/8PDGRRUM=;
 b=qQXiIvhjccFMH5M1hdsuJkEtxkq30+pAkfcXiOmAfPd0RY9hyf43izufgVBLMQtUEQvYSnch69LGhTZgArrJJhtHOyR/oRm3R1FXDs1byW5jO7Q9tjpB10n8G2O8BjQgTeoA3mWz45vvIvRKf5Ei/AnmkwL2VGkdqC49I4kaLpn1ceHSDQhgNGiVIeyltfYlaNLfDP2ya9JFt26hMwUO4jcH9wb6oFHDC02A8fPe7AND917rIvcAyxlkJGq7OcIurcF1CFnYerzh27+Udleh4mbfOOBWwT0z4b4vVJaOhSrtZL5uJrsJ1chv0/k8LdZx4T81MFmbVMQzq/f3pjeTHw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV2PR12MB5869.namprd12.prod.outlook.com (2603:10b6:408:176::16)
 by CY8PR12MB8244.namprd12.prod.outlook.com (2603:10b6:930:72::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Tue, 8 Aug
 2023 13:00:14 +0000
Received: from LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::5111:16e8:5afe:1da1]) by LV2PR12MB5869.namprd12.prod.outlook.com
 ([fe80::5111:16e8:5afe:1da1%6]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 13:00:13 +0000
Date: Tue, 8 Aug 2023 10:00:11 -0300
From: Jason Gunthorpe <jgg@nvidia.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Joerg Roedel <joro@8bytes.org>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	David Woodhouse <dwmw2@infradead.org>,
	Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
	Orson Zhai <orsonzhai@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
	Will Deacon <will@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
	Alex Williamson <alex.williamson@redhat.com>,
	Lu Baolu <baolu.lu@linux.intel.com>
Subject: Re: [PATCH v2 00/10] Refine the locking for dev->iommu_group
Message-ID: <ZNI8W0hTXraSi/Ne@nvidia.com>
References: <0-v2-b0417f84403e+11f-iommu_group_locking_jgg@nvidia.com>
 <ZNDpfCoeFxA56ZlU@8bytes.org>
 <CAGXv+5E-f9AteAYkmXYzVDZFSA_royc7-bS5LcrzzuHDnXccwA@mail.gmail.com>
 <CGME20230808123250eucas1p19d12a9ae0e530c123ba625189f593b36@eucas1p1.samsung.com>
 <7483d18e-d06f-53eb-92af-beed50674ab0@samsung.com>
Content-Disposition: inline
In-Reply-To: <7483d18e-d06f-53eb-92af-beed50674ab0@samsung.com>
X-ClientProxiedBy: BL6PEPF00013E13.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:22e:400:0:1001:0:14) To LV2PR12MB5869.namprd12.prod.outlook.com
 (2603:10b6:408:176::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV2PR12MB5869:EE_|CY8PR12MB8244:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b4d5eb6-4af9-4ea6-9a24-08db980f6784
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n1im6lIdKhx8CSO+lBPYKPM/UjY6xqIzhfilZNrmz2GcaLfFIf4INsC5ayZzfQVa4z08QX8yq8DhxJSOgjK6wLKdGpdmNqTcjz6Akgs9magC34A/RARpd9fzSH8ug6tQjWu2UHaKXHgw7T4FHn2RwAbvkWuJARDBtZbSL6fTFijOJRcHnPYabLN1qCcRPI3/fanDbvtUrOQB8H9176Y/X7fAP3GrOKHkKkT0i9RtsKyQj2dtEHMM4VbDWlMCXK0Se8udzK4BF3FMgJSVJ9a4brbI0LrrTzdT2Z6Dg9erhZFsCGoA5WN3eBCqDRgvVl0hNkm7/5An6UozyGdOcREeOESDlYx+V+jqxfuY4lYvIn0h0xHCSaKX3GP7fob4PcOEVVJQs9oL4n07Z/2S5Y1O6oP+B29cxawr/ODiP6pFpSJlYAS5ERjq8NpioH7qaL/M30LwCL6fBPbneaiIUImkO2crjU7ot0Q4ULC7nrXwRzqjiSw/zRM/wceK3ZFDcYTVMERwGcqPSsYllY7tRixdFbUPYdbfcUrysWMQ78Ry0ELbrJYTBFAu4fJJnQvRpzRdB3Y7YAUuCM9zvXv0QmZgeyD+273D/8k01TCYgR/0jio=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV2PR12MB5869.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(376002)(366004)(39860400002)(136003)(451199021)(186006)(1800799003)(7416002)(8676002)(8936002)(5660300002)(4326008)(41300700001)(316002)(83380400001)(86362001)(2906002)(6916009)(6512007)(966005)(6486002)(2616005)(53546011)(26005)(6506007)(36756003)(66946007)(66476007)(66556008)(478600001)(54906003)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QnAzOEZURzJqN2pwN1lPaDZGUlRtZlBqWDhIcURreEVSTkNKMlp6bjhwYzZI?=
 =?utf-8?B?V21Fb2J6UVlVNG5BNFZUZTdkQkNySTVFWjVJbkc4blFBU00xM2tVZWxraGNG?=
 =?utf-8?B?Q2JYMG1lQStoNmd0WDhWeXhQN1g2V1RSZlE5ZmxYbXBxaUJ5cmhzMmlxRk4v?=
 =?utf-8?B?ekF5YytpSUUzcWNQalg3cUFMUmJ2TzFSTFJQamdDL3pjalZkb1lIRjZ6TlZ6?=
 =?utf-8?B?T3QxNHp4U1BEYzlXRFV3Uk1zaExtblN0aFJqMkVBL1JoQVZkWFdsN3ErT0Nz?=
 =?utf-8?B?ZmtKODFKSFkyZm1WOWVoQmg1MGlXcE5ZNll4UmtiU1VwTVNKVmJ2SHFHa1R6?=
 =?utf-8?B?akkwaXI5U202M21qZDNQOW5qSXFGL3FkV2x5R3VYNmRDaEc3Sis4MDNDek9Z?=
 =?utf-8?B?UXMvcVFlMXlYSFhDaWV1Sm1aT2dUWU9OSXI5UGgyRmRncUVScDZzYkVLNEdk?=
 =?utf-8?B?UDlMVmZFd0hTc1lLN2xod3hEQ1NyUk5EWTM3UUhqUFlhaXpCS1QveVhJTExC?=
 =?utf-8?B?d1phNTI0WEhLL3J0a1FnMDJkOFhTNTQrRmFJditHN1lGQU9VVjJSa1RBdE4v?=
 =?utf-8?B?dVU2L0sweDhjQW5hcTQvL3NxMTdmMVkzVXozNXJJSm9ISEJST3puQVhTYWgy?=
 =?utf-8?B?WUUzTGlSUmY0NENKYU9kS0lzRE0za0MveWpnOTVxK2pQUnVzSkc3QkFBK2FE?=
 =?utf-8?B?Q0g3UksrM3E2SDN4RktGWnp5dWlTNUs5L3kraU02ajBIUENYOFdXK05QUUlC?=
 =?utf-8?B?MnpPSjBYRUVOcS9FZ29DUjkrZEtXblQyK2RWMlBHbmJ2VmpDWUZRWXVJR3dj?=
 =?utf-8?B?eldpTW1ESExqcmFCdmk1WVpDVmUzSVpKaDkxMVJTTDVhMlQ2SldHdTUzbG5h?=
 =?utf-8?B?TkdLZktrRy9OQURBRmFBVFVXT1dsbVgzWWR1b0prTmd2NldMUFdmWUw3dlNP?=
 =?utf-8?B?dzRDMFdjbHZYUEJtOW1QQmxPRXVPVGZHS2FHLzZLUXJ0N0x5R3YvMmRDZW1P?=
 =?utf-8?B?WE9tRGR4Q3JlMDdaaE1EYk1XOEgveHM3RDd2Qit4ZWgvQytFMm9ialZkTjRJ?=
 =?utf-8?B?S2JHbVpacE91VGhsM2J3dGg2R3ZaRS9WQitVVnI4V3lCdDFLQmUvQ29PNVQ5?=
 =?utf-8?B?NE56S0RjckZMR2dId1dpSXlvS2VvWUlrOTdwaFY1RzkrSmo3R1poNDZTOS9B?=
 =?utf-8?B?a0JPblBJQjdSckJzWXY1T08yaC8wR2NaaHZweUZpQXUweVh1ei82K2hJWGZU?=
 =?utf-8?B?R1dWcHBUSjhEOXRrRjlkekJWQ3RIK0FzVVI3RUhGM2o0QjdVeU52a1pSbHJ6?=
 =?utf-8?B?RUNLcUJhRXpNYUlLRjVMZk5aSnpDZ1BUOVNnMFJ6T1ZEQlMySm1KUE5SY3Bi?=
 =?utf-8?B?ZDhHWVpPbDA2Y1E5TWM0TzBuV1NGWmdkclQ4Snh6OHVlMFhVMDBnb2FYZ3pp?=
 =?utf-8?B?STRiK25uSUFIWWJrcGpyQ2hzMHZabDl5UHhsbEExcGlKTXB1TGRXWVBNbEFl?=
 =?utf-8?B?WWdSVVJnMTNhRzI4S1gxTEg0ZjRrZkVoZ2xLaHpPVlBTa2U4U2F5MjZjSUFh?=
 =?utf-8?B?V0hGTWczQ2xKbk5ibGpYN2lsZTBlK0RNZjNrYU9IVWk1TUk4alZXKzJ5aHJs?=
 =?utf-8?B?RjFOZTA0SEl3MGhmeVFXSzdNNi9kZGd6Q2hSZWpWbjBQVldvUGFyUnBSQnVJ?=
 =?utf-8?B?MzBJYXlmRzlwSmc1NGp5WjVlR1hoR281U0s2c05lL3BZUWpENUEyOHVrckNT?=
 =?utf-8?B?U2dhdFZSbzZ6Z2l4bFc0bTAxOGtpbkltak9SQ0NuZ0VBcTZEcDMzVFc0anNC?=
 =?utf-8?B?S0Y2MFp4U1ZZaXJCYStzL2RXTXh3UURabWJnelFQRlZySjVrbDN3WUxtblZS?=
 =?utf-8?B?WTJDRGRJOGFiNWJTRVdmbzJ6SEJRUHFVbHdxeUVwYXFWMXFoN21xUkZYQUVM?=
 =?utf-8?B?eis1WkRyTXM5UkNhdmpwV05pVkMvVjYzdHFLVmw1TS8vU2dZenA2ZGFvLzV2?=
 =?utf-8?B?d1oreGZjcjNidVdWK2FWclllSnl3WUNCVE85MGorSkd6aE9qdFU2UkQvZlNu?=
 =?utf-8?B?TThkTE9MeGJnS2p1Q1pydHFEaEpETzduMXpWbWFzSXo1K3oyVG45Y0Q4Wlg2?=
 =?utf-8?Q?pxg1CcEXqCx9JE+ekj9fk0/HK?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b4d5eb6-4af9-4ea6-9a24-08db980f6784
X-MS-Exchange-CrossTenant-AuthSource: LV2PR12MB5869.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 13:00:13.8501
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y4p7+miHUMSSh6uPDizKMH4e7TiSwsTRZFmz//cb6X4VRsj7q6uZr4fnC3s742Rt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR12MB8244
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_060019_667003_FA7E1FB5 
X-CRM114-Status: GOOD (  18.26  )
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

T24gVHVlLCBBdWcgMDgsIDIwMjMgYXQgMDI6MzI6NDhQTSArMDIwMCwgTWFyZWsgU3p5cHJvd3Nr
aSB3cm90ZToKPiBIaSwKPiAKPiBPbiAwOC4wOC4yMDIzIDEyOjMxLCBDaGVuLVl1IFRzYWkgd3Jv
dGU6Cj4gPiBIaSwKPiA+Cj4gPiBPbiBNb24sIEF1ZyA3LCAyMDIzIGF0IDg6NTTigK9QTSBKb2Vy
ZyBSb2VkZWwgPGpvcm9AOGJ5dGVzLm9yZz4gd3JvdGU6Cj4gPj4gT24gTW9uLCBKdWwgMzEsIDIw
MjMgYXQgMDI6NTA6MjNQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBlIHdyb3RlOgo+ID4+PiBKYXNv
biBHdW50aG9ycGUgKDEwKToKPiA+Pj4gICAgaW9tbXU6IFJlbW92ZSB1c2VsZXNzIGdyb3VwIHJl
ZmNvdW50aW5nCj4gPj4+ICAgIGlvbW11OiBBZGQgYSBsb2NrZGVwIGFzc2VydGlvbiBmb3IgcmVt
YWluaW5nIGRldi0+aW9tbXVfZ3JvdXAgcmVhZHMKPiA+Pj4gICAgaW9tbXU6IEFkZCBnZW5lcmlj
X3NpbmdsZV9kZXZpY2VfZ3JvdXAoKQo+ID4+PiAgICBpb21tdS9zdW41MGk6IENvbnZlcnQgdG8g
Z2VuZXJpY19zaW5nbGVfZGV2aWNlX2dyb3VwKCkKPiA+Pj4gICAgaW9tbXUvc3ByZDogQ29udmVy
dCB0byBnZW5lcmljX3NpbmdsZV9kZXZpY2VfZ3JvdXAoKQo+ID4+PiAgICBpb21tdS9yb2NrY2hp
cDogQ29udmVydCB0byBnZW5lcmljX3NpbmdsZV9kZXZpY2VfZ3JvdXAoKQo+ID4+PiAgICBpb21t
dS9pcG1tdS12bXNhOiBDb252ZXJ0IHRvIGdlbmVyaWNfc2luZ2xlX2RldmljZV9ncm91cCgpCj4g
Pj4+ICAgIGlvbW11L29tYXA6IENvbnZlcnQgdG8gZ2VuZXJpY19zaW5nbGVfZGV2aWNlX2dyb3Vw
KCkKPiA+Pj4gICAgaW9tbXU6IENvbXBsZXRlIHRoZSBsb2NraW5nIGZvciBkZXYtPmlvbW11X2dy
b3VwCj4gPj4+ICAgIGlvbW11L2ludGVsOiBGaXggbWlzc2luZyBsb2NraW5nIGZvciBzaG93X2Rl
dmljZV9kb21haW5fdHJhbnNsYXRpb24oKQo+ID4+Pgo+ID4+PiAgIGRyaXZlcnMvaW9tbXUvaW50
ZWwvZGVidWdmcy5jICB8ICAzNCArKysrLS0tLQo+ID4+PiAgIGRyaXZlcnMvaW9tbXUvaW9tbXUu
YyAgICAgICAgICB8IDE1NSArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0KPiA+Pj4g
ICBkcml2ZXJzL2lvbW11L2lwbW11LXZtc2EuYyAgICAgfCAgMjIgKystLS0KPiA+Pj4gICBkcml2
ZXJzL2lvbW11L29tYXAtaW9tbXUuYyAgICAgfCAgMzAgKy0tLS0tLQo+ID4+PiAgIGRyaXZlcnMv
aW9tbXUvb21hcC1pb21tdS5oICAgICB8ICAgMiArLQo+ID4+PiAgIGRyaXZlcnMvaW9tbXUvcm9j
a2NoaXAtaW9tbXUuYyB8ICAyMiArLS0tLQo+ID4+PiAgIGRyaXZlcnMvaW9tbXUvc3ByZC1pb21t
dS5jICAgICB8ICAyNCArLS0tLQo+ID4+PiAgIGRyaXZlcnMvaW9tbXUvc3VuNTBpLWlvbW11LmMg
ICB8ICAyOSArKy0tLS0KPiA+Pj4gICBpbmNsdWRlL2xpbnV4L2lvbW11LmggICAgICAgICAgfCAg
IDMgKwo+ID4+PiAgIDkgZmlsZXMgY2hhbmdlZCwgMTM4IGluc2VydGlvbnMoKyksIDE4MyBkZWxl
dGlvbnMoLSkKPiA+PiBBcHBsaWVkLCB0aGFua3MgZm9yIHRoZSBuaWNlIGNsZWFudXAhCj4gPiBU
aGlzIHNlcmllcyBzZWVtcyB0byBjYXVzZSBhIGh1bmcgdGFzayBkdXJpbmcgYm9vdCBvbiBNZWRp
YVRlayBwbGF0Zm9ybXMuCj4gPiBJdCBoYW5ncyB3aXRoIG5leHQtMjAyMzA4MDguIFJldmVydGlu
ZyB0aGUgMTAgY29tbWl0cyBmcm9tIHRoaXMgc2VyaWVzCj4gPiBtYWtlcyB0aGUgc3lzdGVtIGJv
b3QgdXAgYWdhaW4uCj4gCj4gSSBjb25maXJtIHRoYXQgbmV4dC0yMDIzMDgwOCBpcyBicm9rZW4g
b24gQVJNIDMyYml0IGJhc2VkIEV4eW5vcyBib2FyZHMgCj4gdG9vLiBCb2FyZHMgbG9jayB1cCB2
ZXJ5IGVhcmx5IGR1cmluZyBib290LiBJIHdpbGwgdHJ5IHRvIGludmVzdGlnYXRlIAo+IHRoaXMg
c29vbi4KCkFueSBvZiB0aGUgZHJpdmVycyB0aGF0IHVzZSBwbGF0Zm9ybSBkZXZpY2UgYXMgdGhl
IGlvbW11X2RldmljZSB3aWxsCmhhdmUgYSBwcm9ibGVtLCBwbGVhc2UgdHJ5OgoKaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvbGludXgtaW9tbXUvWk5JeiUyRk5WTGI2V3FxdlF4QG52aWRpYS5jb20v
CgpKYXNvbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
