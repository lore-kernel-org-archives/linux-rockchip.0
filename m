Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFF121091926
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 21:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Choy7VueVHqPooU3gbQNuBrJQBJHCuoDd7LdUvBwdHw=; b=QYnJma/VYUBG5y
	D1zrQ+iRY8A6yUFIWUF6CzZhv5gFUeAmlmvzRLkS8L4/N19bw8qWL4zpyrKyPXgK/aDsg3771QB1Z
	6rjdH2sX2e6FQ0CCspG4vZf4GRsL2k6ZP2hkWc3yYV1kJIliYTHSHut2xfzzGdeJDB7InMnCVD1k3
	aGEw2H7R31NCJKMdtV8SsnaC9dDnBaY7QMNG9RfHOXBnoUbeqATRpzXUmOgvLKcdw9LTCOjYPkOfj
	CM8usuVK8/VmMtJbdVhfvC4fC0ezJxydrftrRD8d8gR/E3dhgr0aIewveYzIm3UWU0sbaVEGAGCO6
	O1gEAB0LCdQ+JZTOGHeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3KyF-0000000Baru-2GSG;
	Thu, 19 Mar 2026 21:31:59 +0000
Received: from mail-northcentralusazolkn190100000.outbound.protection.outlook.com ([2a01:111:f403:d111::] helo=CH1PR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3KyD-0000000Baqw-2cv5
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Mar 2026 21:31:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mDAS4vsksEBtRy1ejCSSKxSPril8OilmuqDomAJi5JC/9y36DF4LQqZsGaHO/tJZAhDeqTWOnDClsJRKS7/VrcLw9A9H3eBO84amesYGCiC5aInd8dWQz+IRHsUe0uju8+MS+1HhN1WPL3mq6kqQ8C+Dp/8Usehy515EVy9o6xdjzZCjoAlVHqhthBeiBb8QXp0KuGEpZ2qqVYuN/3xkeOE1XFzg9QEqtjHEdk43wAFxhWtTiQTEvWqQDiNWwjbGpJ5wJEzRWMx8ip2m7oh+Zm5JwmyWHc0XnKzBX5eLPIpHR8gOHMr2ylnpt4MzzN1WvkE6V3NTgVfg/30EkZimLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4ZYIgU7DUucChD5Dg9JZHSe2+3z0A9kP4u/+OCFLMjU=;
 b=Xaz1QTUgSSFcQM7pkUFsXTIgIVGWNzk9fiEElcQuAyWzL4XdxR6PNTIqeYVWvD3rPqM6d2Sptf8a3DZMckwLaPZPtINjbdM9R9pYsKhtxp817Ljsl+2UcFTtZ2YahVWQ73PY1KeeERukxlz1GCo2Gkw5g+tkluY0ekF4u18RNNABMggJsAp4XBkxwwJ+eZlkychOk89e/hPV0hEvNC6ratE+aQTZKpBfJi6kQumASEHBwx9CwqtSpvN9ZlkX0aBPgvcmzFxMTIauWwYOcSgK19ObsBz4eoIHdqRU1kj4QJBQdRtN5vLP3a7b7j00iUe4cn+9M4Qp4wNd8iddbYzj5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4ZYIgU7DUucChD5Dg9JZHSe2+3z0A9kP4u/+OCFLMjU=;
 b=jGALhFstb0xWE3Qh+ZvdkLu602klQ9J3GzGeHtQqdZpdELDQcDkH+jnBrwDPxcBVKN8EjsE/wN/9w08aQbCNGPr74cKAXON3qy5nuX4odR9HZIvSnedmb/moqxxqv2WJ0LISpGMIP3sdyNCp2QRNlI5QuwWrk0UVrGlHhAK1xgSCFlp9Oq2XL+zPkBhCjsU0WPQieveGQeuE2QA4h+I20oAQe1vsnEYniE80hGAguFyjX9NEWhib2fdc/5rlnbcFuwGCopINOuF6acACSw5maIUmzYBH6bCbsEu/LX4eIpLmWYIADX2qUtvdNjoWFHzdMdK7ws7HWNFMrzFCXxxt7Q==
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18) by BN0PR19MB5264.namprd19.prod.outlook.com
 (2603:10b6:408:153::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.22; Thu, 19 Mar
 2026 21:31:51 +0000
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172]) by PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172%7]) with mapi id 15.20.9723.019; Thu, 19 Mar 2026
 21:31:51 +0000
Date: Thu, 19 Mar 2026 16:31:47 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Jean-Baptiste Maneyrol <Jean-Baptiste.Maneyrol@tdk.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
	"andy@kernel.org" <andy@kernel.org>,
	"nuno.sa@analog.com" <nuno.sa@analog.com>,
	"dlechner@baylibre.com" <dlechner@baylibre.com>,
	"jic23@kernel.org" <jic23@kernel.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"heiko@sntech.de" <heiko@sntech.de>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"robh@kernel.org" <robh@kernel.org>,
	"andriy.shevchenko@intel.com" <andriy.shevchenko@intel.com>
Subject: Re: [PATCH v2 0/5] Add Invensense ICM42607
Message-ID: <PH0PR19MB9973383B1E6959992D365EA4B1A54FA@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
 <FR3P281MB1437798EE08EADF674E42526CE4FA@FR3P281MB1437.DEUP281.PROD.OUTLOOK.COM>
Content-Disposition: inline
In-Reply-To: <FR3P281MB1437798EE08EADF674E42526CE4FA@FR3P281MB1437.DEUP281.PROD.OUTLOOK.COM>
X-ClientProxiedBy: DS7PR05CA0068.namprd05.prod.outlook.com
 (2603:10b6:8:57::20) To PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18)
X-Microsoft-Original-Message-ID: <abxrQ7MUw4QXnYZG@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR19MB997338:EE_|BN0PR19MB5264:EE_
X-MS-Office365-Filtering-Correlation-Id: 408ea85a-30eb-4ccf-80d7-08de85feef2a
X-Microsoft-Antispam: BCL:0;ARA:14566002|6090799003|5072599009|461199028|19110799012|8060799015|23021999003|37011999003|12121999013|25031999004|15080799012|3412199025|440099028|52005399003|40105399003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WFB5dGVrWEM5KzNTTXM0MDFuRWVoc01LQkpueFEzY1J1QTRWVnp6dmh6OGxV?=
 =?utf-8?B?eTR5RXFtMzBRV25TRnJwbWJKSzFOMU00S0VvelZSbS91Q0JzU2NsOHdiSmdk?=
 =?utf-8?B?eHRYdCtNblNhc2dkNXE5RTkzU3J3ZEtqeUJhc0hyU1lCS2Z6d0gzemlyL3Fa?=
 =?utf-8?B?T0xNZ0RHVS82dDc5Y1ZxOWowUG9iOXJUZWsvL0dOVkdZVjVJRmZOYnVMYUNR?=
 =?utf-8?B?NHFyak4reURiNmcwdmdITkxoZkV2V3ZhTU9PMzJWNkRndGg4Wlk2N0lVR2Ft?=
 =?utf-8?B?Q1NvRzgwc3l1cG80UlBlMVN2aHpBTTViT3lZWXJVTDJVcnZmSEgwRVR2eWRs?=
 =?utf-8?B?bHpBR2VKUExsZlB4em1iNTJWMEEzZ0xhMzJ3TGZQeEZEemVWT05kVTkyaFZp?=
 =?utf-8?B?emR5aURDbkxLUHFiQit5SkpTNnhkSEx0U1B4ZGtCSUZxcmxhWTBFYXNQdjZn?=
 =?utf-8?B?SlRDdWdUN0hzUnhFb0Z2MEtWNWhTd0c4K2JzbGVLWk9IdUh4VHdmUFhyL3Fv?=
 =?utf-8?B?cTNwTmVnQlJvOUZ5dVRTZmdZM2hqUHZ2OHhmdW8xY3BxaXM1cGFPYnBoSDNp?=
 =?utf-8?B?Tk1IZlVMM0xnQkppOGtSalMwVEZaemhSdit3RTZ2WDVWckxUeTFuVVpscnpn?=
 =?utf-8?B?NzRiODVZdExqeDJRMURSaGpaaEFvUWMrMStqNkFuR2ZQUnVXdXMzMEVuSHBo?=
 =?utf-8?B?NENyY1dPZThSdnZOeTdseXVsNy9SNjRpUkxYb0ZGVHhwRTBydGJMR05acHZo?=
 =?utf-8?B?R2xTSEpmSmRLbFhJU1YyQTZkQTlUQjh2YkUwY29XU29qZ1IxS1UvbkpxSlZP?=
 =?utf-8?B?WXZPM0VBRnlHT0s3a1BBODczdG1NV0NBOFIxWTN6S0E0dGMyZ2RhT25pNytP?=
 =?utf-8?B?MXl0Z0NrSFYzWTJYSlRZdExZa3lFWnhMa1lwamxvQUdkcEEydnhHdDl0Lzk1?=
 =?utf-8?B?bFFIbWYzbmVhblFrSjh4eTdkT3dMVU1tcGcrcEIxcmlnT2FWUDhBa0I5N1pr?=
 =?utf-8?B?WVZWdWFQOWJjdXJ4d1NLbDMzNXRMaHAreWhHZ0ZYQSswZVZpNVdZNEZxZ0JG?=
 =?utf-8?B?dEFXVDA5VEJVbVk2elpCcm1KcTRMTFVSbEd3QUdCZWdPZUxrTVFZR3Z2Ry8z?=
 =?utf-8?B?MWZKdWxIZDB2eW5GeWkzajFVRlZaQzZIZVFrZ3FFV2p0OCtUZWRqL2hYOTYz?=
 =?utf-8?B?cTBXV1JMdzJEeXUzMVhuSCtpUTlTZUpvSGF5blViRFJpaUgvWTBDYlRNays4?=
 =?utf-8?B?VjNKajZydFFPTUttSnZyOXNOK0ZWM2ltTEZmUlk1VWdkdStDT0VEcmVOT2hE?=
 =?utf-8?B?dHJMMWk4Y1QrRDhkQmdCelJsYmd5SHh2c0lJaVNNS3prWGMyVWduS1RBWElq?=
 =?utf-8?Q?8MED3U6Y3bcRUwTMV4dAAmaPcX4ZVujI=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MUZrR1AvcjF4MzVJMjFzMXliRUZvajNWYWFTNVRBbExzaWt6VFNoOGgwZW8z?=
 =?utf-8?B?Zi9uUk41djNYRGhWam90SVFuTXdLY0tyM3IxdVFraGI2cEpOOUJvNUk5Tmln?=
 =?utf-8?B?bU9JZW5aWHJYSm9qZ040MEcxRDByRytKQ29qbkxRMWY5L2RhSjZUT2V2RU9p?=
 =?utf-8?B?ZEd5R1lGQ2pNa0pPWnhucnVWSXUvejhmdzgxQ3V5cmRub2hraUh5TGxhZkl5?=
 =?utf-8?B?UVA2cURkWHhTbmV3bm1vMkJSU1NKQXMvMVNFWU5Fa0cxakd2U1R4V2s1Y3lC?=
 =?utf-8?B?Uk04L1dQWXdkdllHT0ErRHpoZjdDQmRzcEtJYzRtQmJVSDZDL2g0ZGpHM0Fj?=
 =?utf-8?B?Rk5kL0JaVzJIMmdRUHVkT0pvUUhkdjNYUzk0VW5pc2Z4cnI4VW9mWnJVaVlD?=
 =?utf-8?B?WFdJSGZwZ3Y0YTY2T0wxSjc0R0V4Nzd3Uk55amNNbmd3L2RTRUlEWU1HWFRO?=
 =?utf-8?B?aVpMV0JVdUtsNTFpeEpFL1djVTJlZWgvcDc2TTRtSmZvZ0ZFaDB4NDhxdDdq?=
 =?utf-8?B?MmNQTDIyeUhzV1Arc3dVOEwwNm9mNVE5TDB6dDdwMUhqVGtjOVJ6ZHdjQnFM?=
 =?utf-8?B?bFRxMnVJdVdPVWRhWG1xOWNPdEtzcmd1bUE3TnVPRkNPL2ZCK2dLRWpPR2xE?=
 =?utf-8?B?QkNyaFZJM2xXMmpBSnhjVi9zYTlicjZWbnlCbFVRQWlpa3FmUDArenhVNllC?=
 =?utf-8?B?bXdrQ0gveFozNDJpYWFQcER5SCtNdU4vVmRKdE5yeG5yQnoxNVpyN2p6Q29L?=
 =?utf-8?B?MER5bVM4OEV5djVQS0NRZy9ucjJHR1B2NGdXL0hPQmF0dGQ4a3dTcjE4OXo3?=
 =?utf-8?B?ZkRFenIxa2g5OFJDQ1NOU2pPZGpKQUNNVytPamtlNFNSQ3BpR0N4cTZxVWt2?=
 =?utf-8?B?bUV6dzZNUEVhOXdnNG1LdXRpVld2ZmdsUmcyRmpDYVd4K2JlOHZ3b2haUXQ0?=
 =?utf-8?B?cHE2T0FrSVZrWExaNHBCQURqTW9PUWszZHFJYTFlTTZJYXYrYTdFZ0RkeGZF?=
 =?utf-8?B?NmlqZmdTRzhEY082WENQRGJtbXEyVi9CcnVScHdKcm1qR0hOamxxWndSVWxU?=
 =?utf-8?B?bk9VRXZlUVRZVVVPYVFzam1vcmZ2ajhuTUpXeUZYaXlVT0JyV2lVZG14QWhr?=
 =?utf-8?B?dmljdlBVTGdablpsLzkrdHBNaFBYZ3pBYktTd2tnR3ErU2ZicWlqdjhNYVlG?=
 =?utf-8?B?bnZLOGtvcnV3clVCUFJXMnNRVTA2UHJaUWh0SlpZRVpETjQrWjlTYmdmcGxj?=
 =?utf-8?B?ZFp0eXFOenZCZTJSd3RNcFZvaEdXTEJsS2lxU1ZYK1FJYThXQkdNdmMreXlx?=
 =?utf-8?B?d0tEU2R2UVlleG43SnRncFZoNTZubHF0WXdmVVROMHkwSTVvdjY5b1kza05o?=
 =?utf-8?B?Q2hNdWluRjVpQUNocTdod3ZQbWdETjZWRzVQb3dzWlYxc2JLV3FYTkZneFk1?=
 =?utf-8?B?T1ZlSW9HOEZya3BRMmV6UitzNThZTXJERWRNL3pqZHlOMGU1M29tY2hUYUNs?=
 =?utf-8?B?cWtGVmNSdW1PdEQyVEdSSEZ6WGp6RXJXWVdjUlJMcEtES041Y2FSdFFyRm1H?=
 =?utf-8?B?ZUgxVXVKKy9BSEpSVmh2TGV6N3NDQW40YzBubWFlMUMwMVp5RDBpR3lzQng5?=
 =?utf-8?B?WElLNWlJLzZ2Nm1Bbm1mQmxnYjdBNDZsUjdHVCtpMDZIaGQwK05YaVA1TWdK?=
 =?utf-8?B?QjFmWjNxc3hEUVZxTlg4ajJ1RUVxbWR0ZjdlTmdxUCtYajEvVzl6ZUIwc012?=
 =?utf-8?B?WXFhT0RJbUZsRmVoRlZZdVlIaGNoUy9GSGlVdlVoeTQ1cGJ6UEdTM3BPZUND?=
 =?utf-8?B?YkJ0TGRpRUEvZFp2ay9TRDZLdVZKUnVVUE5FUEJQbkZEd0kzS0VmU1BrN2Mz?=
 =?utf-8?B?enI1ZU56K2ZnYlhIWVBpbjBiNWxvZFlnVFAyTzFoUEFvYVE9PQ==?=
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-990eb.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 408ea85a-30eb-4ccf-80d7-08de85feef2a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR19MB997338.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2026 21:31:51.5967
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0PR19MB5264
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_143157_698963_7D321C32 
X-CRM114-Status: GOOD (  31.63  )
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

T24gVGh1LCBNYXIgMTksIDIwMjYgYXQgMDc6NTU6MTlQTSArMDAwMCwgSmVhbi1CYXB0aXN0ZSBN
YW5leXJvbCB3cm90ZToKPiA+Cj4gPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiA+RnJvbTrCoENocmlzIE1vcmdhbiA8bWFjcm9hbHBoYTgyQGdtYWlsLmNvbT4KPiA+
U2VudDrCoFRodXJzZGF5LCBNYXJjaCAxOSwgMjAyNiAxOToyOQo+ID5UbzrCoGxpbnV4LWlpb0B2
Z2VyLmtlcm5lbC5vcmcgPGxpbnV4LWlpb0B2Z2VyLmtlcm5lbC5vcmc+Cj4gPkNjOsKgYW5keUBr
ZXJuZWwub3JnIDxhbmR5QGtlcm5lbC5vcmc+OyBudW5vLnNhQGFuYWxvZy5jb20gPG51bm8uc2FA
YW5hbG9nLmNvbT47IGRsZWNobmVyQGJheWxpYnJlLmNvbSA8ZGxlY2huZXJAYmF5bGlicmUuY29t
PjsgamljMjNAa2VybmVsLm9yZyA8amljMjNAa2VybmVsLm9yZz47IEplYW4tQmFwdGlzdGUgTWFu
ZXlyb2wgPEplYW4tQmFwdGlzdGUuTWFuZXlyb2xAdGRrLmNvbT47IGxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcgPGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+OyBk
ZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZyA8ZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmc+OyBo
ZWlrb0BzbnRlY2guZGUgPGhlaWtvQHNudGVjaC5kZT47IGNvbm9yK2R0QGtlcm5lbC5vcmcgPGNv
bm9yK2R0QGtlcm5lbC5vcmc+OyBrcnprK2R0QGtlcm5lbC5vcmcgPGtyemsrZHRAa2VybmVsLm9y
Zz47IHJvYmhAa2VybmVsLm9yZyA8cm9iaEBrZXJuZWwub3JnPjsgYW5kcml5LnNoZXZjaGVua29A
aW50ZWwuY29tIDxhbmRyaXkuc2hldmNoZW5rb0BpbnRlbC5jb20+OyBDaHJpcyBNb3JnYW4gPG1h
Y3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+ID5TdWJqZWN0OsKgW1BBVENIIHYyIDAvNV0gQWRkIElu
dmVuc2Vuc2UgSUNNNDI2MDcKPiA+wqAKPiA+RnJvbTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdh
bkDigIpob3RtYWlsLuKAimNvbT4gQWRkIHN1cHBvcnQgZm9yIHRoZSBJQ000MjYwNyBJTVUuIFRo
aXMgc2Vuc29yIHNoYXJlcyB0aGUgc2FtZSBmdW5jdGlvbmFsaXR5IGJ1dCBhIGRpZmZlcmVudCBy
ZWdpc3RlciBsYXlvdXQgd2l0aCB0aGUgZXhpc3RpbmcgSUNNNDI2MDAuIFRoaXMgZHJpdmVyIHNo
b3VsZCB3b3JrIHdpdGggdGhlIElDTTQyNjA3IGFuZCBJQ000MjYwN1AKPiA+WmpRY21RUllGcGZw
dEJhbm5lclN0YXJ0Cj4gPlRoaXMgTWVzc2FnZSBJcyBGcm9tIGFuIFVudHJ1c3RlZCBTZW5kZXIK
PiA+WW91IGhhdmUgbm90IHByZXZpb3VzbHkgY29ycmVzcG9uZGVkIHdpdGggdGhpcyBzZW5kZXIu
Cj4gPsKgCj4gPlpqUWNtUVJZRnBmcHRCYW5uZXJFbmQKPiA+RnJvbTogQ2hyaXMgTW9yZ2FuIDxt
YWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+Cj4gPkFkZCBzdXBwb3J0IGZvciB0aGUgSUNNNDI2
MDcgSU1VLiBUaGlzIHNlbnNvciBzaGFyZXMgdGhlIHNhbWUKPiA+ZnVuY3Rpb25hbGl0eSBidXQg
YSBkaWZmZXJlbnQgcmVnaXN0ZXIgbGF5b3V0IHdpdGggdGhlIGV4aXN0aW5nCj4gPklDTTQyNjAw
Lgo+ID4KPiA+VGhpcyBkcml2ZXIgc2hvdWxkIHdvcmsgd2l0aCB0aGUgSUNNNDI2MDcgYW5kIElD
TTQyNjA3UCBvdmVyIGJvdGggSTJDCj4gPmFuZCBTUEksIGhvd2V2ZXIgb25seSB0aGUgSUNNNDI2
MDdQIG92ZXIgSTJDIGNvdWxkIGJlIHRlc3RlZC4KPiA+Cj4gPkNoYW5nZXMgU2luY2UgVjE6Cj4g
PiAtIEluc3RlYWQgb2YgY3JlYXRpbmcgYSBuZXcgZHJpdmVyLCBtZXJnZWQgd2l0aCB0aGUgZXhp
c3RpbmcgaW52X2ljbTQyNjAwCj4gPiDCoCBkcml2ZXIuIFRoaXMgbmVjZXNzaXRhdGVkIGFkZGlu
ZyBzb21lIGNvZGUgdG8gdGhlIGV4aXN0aW5nIGRyaXZlciB0bwo+ID4gwqAgcGVybWl0IHVzaW5n
IGEgZGlmZmVyZW50IHJlZ2lzdGVyIGxheW91dCBmb3IgdGhlIHNhbWUgZnVuY3Rpb25hbGl0eS4K
PiA+IC0gU3BsaXQgY2hhbmdlcyB1cCBhIGJpdCBtb3JlIHRvIGRlY3JlYXNlIHRoZSBzaXplIG9m
IHRoZSBpbmRpdmlkdWFsCj4gPiDCoCBwYXRjaGVzLiBOb3RlIHRoYXQgcGF0Y2ggMDAwNCBpcyBz
dGlsbCBwcmV0dHkgaGVmdHk7IGlmIEkgbmVlZCB0byBzcGxpdAo+ID4gwqAgZnVydGhlciBJIG1h
eSBuZWVkIHRvIGNyZWF0ZSBzb21lIHRlbXBvcmFyeSBzdHViIGZ1bmN0aW9ucy4KPiA+IC0gVXNl
ZCBndWFyZCgpIGFuZCBQTV9SVU5USU1FX0FDUVVJUkVfQVVUT1NVU1BFTkQoKSBvbiB0aGUgbmV3
IGZ1bmN0aW9ucwo+ID4gwqAgcGVyIEpvbmF0aGFuJ3MgcmVjb21tZW5kYXRpb25zLgo+ID4KPiA+
Q2hyaXMgTW9yZ2FuICg1KToKPiA+IMKgZHQtYmluZGluZ3M6IGlpbzogaW11OiBhZGQgaWNtNDI2
MDcKPiA+IMKgaWlvOiBpbXU6IGludl9pY200MjYwMDogQWRkIHN1cHBvcnQgZm9yIHVzaW5nIGFs
dGVybmF0ZSByZWdpc3RlcnMKPiA+IMKgaWlvOiBpbXU6IGludl9pY200MjYwMDogQWRkIHJlZ2lz
dGVycyBmb3IgaWNtNDI2MDcKPiA+IMKgaWlvOiBpbXU6IGludl9pY200MjYwMDogQWRkIHN1cHBv
cnQgZm9yIGljbTQyNjA3Cj4gPiDCoGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgaWNtNDI2MDdw
IElNVSBmb3IgUkctRFMKPiA+Cj4gPiAuLi4vYmluZGluZ3MvaWlvL2ltdS9pbnZlbnNlbnNlLGlj
bTQyNjAwLnlhbWwgfCDCoCA0ICsKPiA+IC4uLi9kdHMvcm9ja2NoaXAvcmszNTY4LWFuYmVybmlj
LXJnLWRzLmR0cyDCoCDCoHwgwqAyMCArLQo+ID4gZHJpdmVycy9paW8vaW11L2ludl9pY200MjYw
MC9pbnZfaWNtNDI2MDAuaCDCoCB8IDMzMyArKysrKysrLQo+ID4gLi4uL2lpby9pbXUvaW52X2lj
bTQyNjAwL2ludl9pY200MjYwMF9hY2NlbC5jIHwgNDk3ICsrKysrKysrKystCj4gPiAuLi4vaW11
L2ludl9pY200MjYwMC9pbnZfaWNtNDI2MDBfYnVmZmVyLmMgwqAgwqB8IDI0MCArKysrKy0KPiA+
IC4uLi9pbXUvaW52X2ljbTQyNjAwL2ludl9pY200MjYwMF9idWZmZXIuaCDCoCDCoHwgwqAgNSAr
Cj4gPiAuLi4vaWlvL2ltdS9pbnZfaWNtNDI2MDAvaW52X2ljbTQyNjAwX2NvcmUuYyDCoHwgNzk1
ICsrKysrKysrKysrKysrKy0tLQo+ID4gLi4uL2lpby9pbXUvaW52X2ljbTQyNjAwL2ludl9pY200
MjYwMF9neXJvLmMgwqB8IDM3OSArKysrKysrKy0KPiA+IC4uLi9paW8vaW11L2ludl9pY200MjYw
MC9pbnZfaWNtNDI2MDBfaTJjLmMgwqAgfCDCoDUzICstCj4gPiAuLi4vaWlvL2ltdS9pbnZfaWNt
NDI2MDAvaW52X2ljbTQyNjAwX3NwaS5jIMKgIHwgwqA1OSArLQo+ID4gLi4uL2lpby9pbXUvaW52
X2ljbTQyNjAwL2ludl9pY200MjYwMF90ZW1wLmMgwqB8IMKgNjQgKysKPiA+IC4uLi9paW8vaW11
L2ludl9pY200MjYwMC9pbnZfaWNtNDI2MDBfdGVtcC5oIMKgfCDCoCA0ICsKPiA+IDEyIGZpbGVz
IGNoYW5nZWQsIDIyODkgaW5zZXJ0aW9ucygrKSwgMTY0IGRlbGV0aW9ucygtKQo+ID4KPiA+LS0g
Cj4gPjIuNDMuMAo+ID4KPiA+Cj4gCj4gSGVsbG8gQ2hyaXMsCj4gCj4gdGhhbmtzIGZvciB0aGUg
cGF0Y2gsIGJ1dCBiZXdhcmUgdGhhdCB0aGVyZSBpcyBhIG1ham9yIGRpZmZlcmVuY2UgYmV0d2Vl
biB0aGlzCj4gY2hpcCBhbmQgaW52X2ljbTQyNjAwIGNoaXBzIGZhbWlseSB0aGF0IGlzIHByZXZl
bnRpbmcgdG8gaGF2ZSBhIGNvbW1vbiBkcml2ZXIuCj4gCj4gaW52X2ljbTQyNjAwIGNoaXBzIGFy
ZSB1c2luZyBkaXJlY3QgcmVnaXN0ZXIgYWNjZXNzIHdpdGggYmFuayB3aGlsZSBpY200MjYwNwo+
IGNoaXAgaXMgdXNpbmcgaW5kaXJlY3QgcmVnaXN0ZXIgYWNjZXNzIHVzaW5nIElSRUcgc3BlY2lm
aWMgcmVnaXN0ZXJzLiBTb21lCj4gcmVnaXN0ZXJzIGNhbm5vdCBiZSByZWFkL3dyaXRlIGRpcmVj
dGx5IGFuZCByZXF1aXJlcyBwcm9ncmFtbWluZyBzcGVjaWZpYwo+IHJlZ2lzdGVycy4gVGhlIG1l
Y2hhbmlzbSBpcyBzaW1pbGFyIHRvIHRoZSBvbmUgaW4gaW52X2ljbTQ1NjAwIGRyaXZlciwgeW91
IGNhbgo+IGhhdmUgYSBsb29rIGluIHRoaXMgZHJpdmVyLgoKSSBkaWRuJ3Qgc2VlIGFueXRoaW5n
IGluIHRoZSBkYXRhc2hlZXQgZm9yIHRoZSA0MjYwN1AgaW4gcmVnYXJkcyB0byB0aGUgSVJFRywK
YnV0IEkgZGlkIHNlZSBzb21ldGhpbmcgaW4gdGhlIDQyNjA3Qy4gVGhhdCBzYWlkLCBuZWFyIGFz
IEkgY2FuIHRlbGwgZnJvbSB0aGUKZHJpdmVycyB0aGF0IEkgdXNlZCBhcyBhIHJlZmVyZW5jZSBm
cm9tIHRoZSBSb2NrY2hpcCBhbmQgTGluZWFnZSB0cmVlcyB0aGlzIGRyaXZlcgpkb2Vzbid0IGFj
Y2VzcyBhbnl0aGluZyBmcm9tIHRob3NlIHJlZ2lzdGVycy4KClN0aWxsLCBJJ2xsIGRlZmVyIHRv
IHlvdSBvbiB3aGF0IHlvdSB0aGluayBpcyBiZXN0LiBBcyBsb25nIGFzIEkgY2FuIHVzZSBteQph
Y2NlbGVyb21ldGVyIHRoYXQncyBhbGwgSSBjYXJlIGFib3V0LgoKPiAKPiBVc2luZyB0aGUgc2Ft
ZSBkcml2ZXIgaXMgbm90IHBvc3NpYmxlIEkgdGhpbmssIHNpbmNlIHJlZ2lzdGVyIGFjY2VzcyBp
cyBkaWZmZXJlbnQuCj4gCj4gQW5kIHRoZXJlIGFyZSBhbHNvIG1vcmUgZGlmZmVyZW5jZXMgYmV0
d2VlbiB0aGUgMiBjaGlwIGZhbWlsaWVzIHRoYXQgaXMgbWFraW5nCj4gYSBjb21tb24gZHJpdmVy
IHF1aXRlIGRpZmZpY3VsdCB0byBkby4KPiAKPiBUaGFua3MsCj4gSkIKCkNocmlzCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
