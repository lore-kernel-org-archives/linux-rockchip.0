Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1349F54ACF
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 15:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r95fGLSOw1SNyeUfXqUykh8OCALJXrwuDfsFn+bzbZI=; b=l9sFY1zbA4DJ2f
	wPupJEhEp/LHAagGcpQPi6Mr4TAb9APdtaS8DUg+ZXQI5rLxmPX/hY8VX2r6xnivQKkCWYuq4+jw2
	NToE0ukpWlqpEOixljmpFGkCusUsJmbrS5CYohk6V3bGCPq/TUYuDBgAyO/ZnzawFqYoocD1Q5Az4
	/xbuM/zm+UU01L0TTDUb2uhgKpw0iNsZG/st/hhZEp0WGhH3nmZVgThfiPiCcIE56mfhwWEpTao3G
	tSTtUd0BunpbFj8zjmdITBV4jJJKUOy1Fltz3EtfvdikI9v/BbjJWH6lFqXtdoIUZsP5cmIU6LIn8
	YE332D0Fihfc7cnZqWJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w53dN-00000001kyK-0GDN;
	Tue, 24 Mar 2026 15:25:33 +0000
Received: from mail-centralusazolkn19010000.outbound.protection.outlook.com ([52.103.13.0] helo=DM1PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w53dI-00000001kwt-2Y9I
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Mar 2026 15:25:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oGn2+YiygUKH6Dl7fe1vQeciN80F47Q7H+Me8bX5kEamHNYY+PsN+xeHXIiaw8jjOxITcCF8CbAxcFgNaF+khaXjpEAPg6ocGv0vGXu/8dzHu1GszpX11tBA6qfNxc9V0/DOjlgTHiFHaeJKia3BpBBmBgy/6eWI7KUTwxOgd+JO4aRJ2eie9FE8CKKtvHcTdw1QV2YOBBbR6cJB6+n7PSo+QJS3yHyyMQh1+0DLS7nuE9l+wbkUjTdeuQdK/gmVRcAH/ipqOfP5Z9L+uw6JTb+QXHO4cYAcPwglTvu6v071O7w9+Y5TRxp16NmWEVLkNq4fn2BnBf1kPQpD02WHCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HjFl6ZofEOE43CJCTjzXrMpzeoVO3dAyGChQnU+Dt2c=;
 b=OqQj87KofMvOHo7m2zVYR9MPJRrL+zr2ZnFekGYoO75dgodPsTD1X024yVJNfMhlGzW5lhdyzmpYcshkNgZ5vzgSuRQ3/lwHzNgm4Psr4zC9ZtswBXfFCW/JFVfQhRbBhl060QxNn1NBUxyCBMJM5hp+1WRubk01eAHV0WsVTgDMU+Bq2JEMOD7GQN67hcM66pPrxyT4LS4RDqxEfMHhAD2i1XnkvAshmXx6BgxgI57OcviJ02gvWTv5yQtc5V/fAzLpcel3SzQNFDWxH2P4wCKcgHt6xQK5met3yVNkLbX8qJ4I95dNupfiRhhd+dn4QTfDpCXgcnx8RjxRplQ07g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HjFl6ZofEOE43CJCTjzXrMpzeoVO3dAyGChQnU+Dt2c=;
 b=r+A3hgGC0Jad7y4m+p8X+9KLMKAe/K7yhBphzGzhtITKyxhWLm7DiF5vaXugiz80KCNyVIKEm8VwqHA2ojmJtaZ+nhPbbbTkkwk2ALZNjZSs3Yi7YkxVmfTHSqI7IVECjvNiwF9Xylu7EPoJHX+FbEru5emWtTMfaXaKfcYN1cllnafNSgTcwNO7VYUM+3gHQD/XWOzepWMcHdPJdVniBTpSzBYmcZ3rRshDN2fjlwl+5w6c7hRve9/u85ugeT/Zfx6Cw2IukFCfd/pAub9qh+V5W204jzs7mSjqqBXRMGLMvPrYgoVbjumrufO9htj+jS28L+1A9BiDIbeDQenxpw==
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18) by CO1PR19MB5061.namprd19.prod.outlook.com
 (2603:10b6:303:f7::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 15:25:21 +0000
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172]) by PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172%7]) with mapi id 15.20.9723.030; Tue, 24 Mar 2026
 15:25:21 +0000
Date: Tue, 24 Mar 2026 10:25:18 -0500
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
Message-ID: <PH0PR19MB997338F89E780686797B1D14A0A548A@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20260319182956.146976-1-macroalpha82@gmail.com>
 <FR3P281MB1437798EE08EADF674E42526CE4FA@FR3P281MB1437.DEUP281.PROD.OUTLOOK.COM>
 <abxrQ7MUw4QXnYZG@wintermute.localhost.fail>
Content-Disposition: inline
In-Reply-To: <abxrQ7MUw4QXnYZG@wintermute.localhost.fail>
X-ClientProxiedBy: SA1PR02CA0009.namprd02.prod.outlook.com
 (2603:10b6:806:2cf::14) To PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18)
X-Microsoft-Original-Message-ID: <acKs3hV9Q4COyeMC@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR19MB997338:EE_|CO1PR19MB5061:EE_
X-MS-Office365-Filtering-Correlation-Id: 5aa12630-336a-4b4d-3f94-08de89b9903a
X-Microsoft-Antispam: BCL:0;ARA:14566002|12121999013|6090799003|19110799012|23021999003|51005399006|5072599009|37011999003|15080799012|461199028|8060799015|25031999004|40105399003|440099028|3412199025;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?akxKN2kzYVN5MVA1MVJjQm16dTRSNUswOEJXTVVIYk5xcnFMWDVsd2pURDlF?=
 =?utf-8?B?Y1VBM3JUdzE0RllQZ1dteStMWWVkT0VjZ3podG1HZUV2bUxTVDE5bzBBWndU?=
 =?utf-8?B?YVNyVGZBc213aW80N3IrWitscVVtTTJMVDRKOE9WVUhlNUxVWGlScUEyYjVi?=
 =?utf-8?B?M0Q2WlMrSksyanNZcWNVYWdGTWRCano3eHRqaUNGZGF2QlN1bXhmWm9OdTVy?=
 =?utf-8?B?L2V2YlpzaHVaeUl6aXhpemx5U2xwS1RCODFaWTc5TGsyUXcxa2xGL3hlYXRs?=
 =?utf-8?B?ejRiZnVNaElnb1hMSFpJVjNuQTMzWUJIRVptRXpmcThLbnRadUJUSVN1VHgw?=
 =?utf-8?B?aDNTZjhxSGwvRGNRcU44NVR2KzJyNlRJWkpWZlBteWtOZ3JNeHNSNmVRdGVN?=
 =?utf-8?B?L1dLSVhXSmtqUXdseTlKS0Q0SUx2MW4zVXRqaCtyRWlKa01mVzltYkMzODdC?=
 =?utf-8?B?aXluc1lONDRzNFMxM0haZDhGV1lhbFhqeTJ4TGZRb3hFbVgzenJYeE5uZ1Rv?=
 =?utf-8?B?OVFGS1BzZkhGeDVZckxMYXArSVlUdUJFeTFzVFMyYjVoaXFIY3pEM1RCTkxD?=
 =?utf-8?B?UTAvTlREY3oxdlBzcVNwUE5yeVl6WU1lMVFNWGN3SzlrYXpjVzZFSnY2bDla?=
 =?utf-8?B?YUxTNnhzWGRCNVhVWUppUithMXFmeUM5elVJRnVBMjNHRjZMOG1XeWFsRmpJ?=
 =?utf-8?B?dTFMMkVVQTNER1k3Q3dyOFdRZE15MjlIWXNINjBHY1kzUVU3RUI3ZFpxSE5j?=
 =?utf-8?B?MnRSeDMxVm5sbjRaZkJvaTV1MGxVT1N0U1JsdnV3UEV5NEU5TU5zVXBkd29w?=
 =?utf-8?B?WHJvanZrcUY3d3VoUTVucmY0b0gwT3p4Y01sOFNhSVhPWTRHMDJ2RzhSVW9G?=
 =?utf-8?B?WjdVc0ZHVXVNNTNrbnpCQlZaMVBzZERvSCtGSFNzOGk4OGlGNFZBLzBLbFhX?=
 =?utf-8?B?UmgwVW9uZGlwQ2ZtRW5PcTltS21NOE9nOUhpRU55OHBkay9NK1pTTmtyQWdj?=
 =?utf-8?B?dU9yeVZaalRYSmRmdjA5M3l6Um1CN2gvT2o3MExHM1hoUDFkNm5YVGQvZ2ts?=
 =?utf-8?B?TmliZEZpRk5qanhybmJLRk1WVVZ2dHhDUGcxVFp5S0NLaS80dUpub3Q3dGho?=
 =?utf-8?B?dnNFVU9HSEI1bVpGWHR0NUEzVUpPRDJpY3l5WW52bG1DZ1VVSVVTS25jYWo1?=
 =?utf-8?B?WmlsQ1M4b1dRZ1Bhb1FjeFBQamtqZmtJM1dBVnBYZGx3aW02Mm9KSmxMeWdY?=
 =?utf-8?B?Y0I3MlBheFIrTm50RlE0M2txVEhmVFU4ZnhmRzVCdVVTWWxGMkVVa2RpNlhN?=
 =?utf-8?B?bjlrWEtvczZGdW5qRGdBd21WY2ZVWUVCS1FDVlVmK3BmOWZnY2w3SUpGQWpl?=
 =?utf-8?Q?sNSoGpO/rUn6MXV/vZzgbkTzJb50N6xE=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUxDamhnQ1Q0OWMxa3pBeld1V1lRVjJXK1VlQ3ZVM3h0Ync1WnBZeWFzbXRq?=
 =?utf-8?B?SEJnWndiRzZjNjh0dTBEZ0YvQ3V4ZGZ6WmdrZ0IwbUI4YmY4eEtpUEJRWTZ0?=
 =?utf-8?B?dWZaMnUzR1lRVmwyclpPWjc3RnNPL05TaVgrY3BWT010cytjazNsVDZiL1ll?=
 =?utf-8?B?WXpZWlkzTytJamlIRG5yWExrdlVSUjRWQXBCWG1QeFFpK1NrbHNjRW95dWh0?=
 =?utf-8?B?YUpRaEpUQXd0ZUR2S1hIZkVIZW43bjBtSERoTlptOWt0Z2VHZjdqSys4Z2kv?=
 =?utf-8?B?cm5WZXFBNkMrZWpjQVlqNXBHZWJuYlJMek9hTTZtNDdUODhhM25HNHVHYWFH?=
 =?utf-8?B?dHFwSHRrUnN2emxaazRIeStBYnpGWFNvWXZnWiszTXJMVE1odmJOMUlLUHVi?=
 =?utf-8?B?KzBFZ05WZ08yc3V4M2ZLM2hWTHJET0hldmtrQ3pBRlNxMU9QWE1NT0p3Vitv?=
 =?utf-8?B?cFVTeFdoRENkQUJHbTJzVWc4U2MvSFRDNFZ3SVVFM3J5S0UvWk5RUUxzMjMv?=
 =?utf-8?B?NGlrTktLNWJmS3FLeUJNVUMvL2k4Smc4TVJsMzRLS1B3K2luU3VQMWJwR2FL?=
 =?utf-8?B?QjM1SS80YmR3bzAwQjIzdXNDZWdhZE9URkszWko0VEVGOGx2aXhvbkczRkRC?=
 =?utf-8?B?ZVlWb3NIa2dPYmRUbUlQRkptQy9hWGxPNVBta1AvVFp5R29BeEw5YUtrMy9C?=
 =?utf-8?B?RjlvV2U2Q0U0UXdrY2pveFR5ektvYWxldG1rWjM3cGcxYmtTaDI0QUhmU0sr?=
 =?utf-8?B?QWhSeEs2TUNVTnE2WklEYVA4SkwzU3MzeGxxRVZ0MkNBcGRpNjJRemRPZkF5?=
 =?utf-8?B?TXFreXZKM3NhWTNrZ0g4SGpHT3VSbXdxdHFNWTl0ZjlyUVExdFdodDhnVW1p?=
 =?utf-8?B?aFR3ZDR2b0RidXpkajBZVHp5QUtrYlI1ZURyQ2JqM3Zla0xReHJlMllLSjBs?=
 =?utf-8?B?cW0yZ05MTzUyOEtGS29BaUpRSVZvaXJDT1JUNG9VZHREdFpPYU9ESmJsM2JI?=
 =?utf-8?B?QmZWbnFmRVV6N09jYkZiaWx3bXp3TXJXR0FBSkdRZmlqOWxmcDllL1lZaFF4?=
 =?utf-8?B?MkpwQkEyRStubUhZZnBQZFR3Yk9RbE10Ykw2QnNoQnpMT3VzaDdTbzZieXlm?=
 =?utf-8?B?TXBkekovK0JmakFpdEFRYzViZmU4WkFpK3lybkdkcDRsRmx5TXZxenRydEN3?=
 =?utf-8?B?TE5qdGpFM1l3b2JzcWNIZjVqcUpnL1JOQ29Ca0lOa0w4dDVMY1hYZGFIM1ll?=
 =?utf-8?B?dU5NNVNNZWVSbkNXUjBVUVc0cjFEb1ljVU01UDh4SlBtWmNyU0NSUDFUVDE5?=
 =?utf-8?B?L2d5dmtoelIvRXpTOTBkN05LVmFzRkVGRU5VUEVZZEd2Zm9uVTlkWkdZTDFQ?=
 =?utf-8?B?ZTZBRzdBZ1BBeCtRci92RG9wMlM4cVA5eVJadnVxemw1YTAxNDFvaEwwQmdT?=
 =?utf-8?B?NTA2SGZUbWU0REpoNjYxQXE5Y0NvbTdsRXljY0UrN1pTaGZORHF5WTUyUmtS?=
 =?utf-8?B?Z3RUbUlZaEVRcDJZb3YvRGZlT2dGdk1KaUdRNnN5bDVYMG1QSlYzZmR2L0RT?=
 =?utf-8?B?SUFBUFFOSzNEN2tyRkg3Z1VWcGoxVXR5QlVBUnhHRXZ6TTdzanBBUzYzZHdU?=
 =?utf-8?B?QWhFWVJjRXIyaXNUVlBzU3VBbTFjMGlZSW9OQjVFNEFYWHk2L3FNdzdPbG12?=
 =?utf-8?B?Q3VseDlTc2FBK1JVU04vU2VNcGcxc1pTcHNPaXEzbEVFd1l3Z3I3bnU2WXlD?=
 =?utf-8?B?UCs2ZzN1RDMrNTh5YW5CdisySUxxb0lIYTVaclYvM0tUYnZlMVExWFdvaWFq?=
 =?utf-8?B?cEpQZEY2THV1d2xGSFc5d0VhSUc5MWF1bys3M0txRjZvMDFlaUgwUE5XRnpt?=
 =?utf-8?B?dUdhdG00WDYyQ2cvc0ZSV0hCRk1RM1RuOXowT3ZidGUvMHFDQUZScjQyckw3?=
 =?utf-8?Q?l7yyGWLDIpk2mYOzZCtP9g/tyUznvyWj?=
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-990eb.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aa12630-336a-4b4d-3f94-08de89b9903a
X-MS-Exchange-CrossTenant-AuthSource: PH0PR19MB997338.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2026 15:25:21.7106
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR19MB5061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_082528_660274_88C956BB 
X-CRM114-Status: GOOD (  39.75  )
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

T24gVGh1LCBNYXIgMTksIDIwMjYgYXQgMDQ6MzE6NTBQTSAtMDUwMCwgQ2hyaXMgTW9yZ2FuIHdy
b3RlOgo+IE9uIFRodSwgTWFyIDE5LCAyMDI2IGF0IDA3OjU1OjE5UE0gKzAwMDAsIEplYW4tQmFw
dGlzdGUgTWFuZXlyb2wgd3JvdGU6Cj4gPiA+Cj4gPiA+X19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+ID4gPkZyb206wqBDaHJpcyBNb3JnYW4gPG1hY3JvYWxwaGE4MkBn
bWFpbC5jb20+Cj4gPiA+U2VudDrCoFRodXJzZGF5LCBNYXJjaCAxOSwgMjAyNiAxOToyOQo+ID4g
PlRvOsKgbGludXgtaWlvQHZnZXIua2VybmVsLm9yZyA8bGludXgtaWlvQHZnZXIua2VybmVsLm9y
Zz4KPiA+ID5DYzrCoGFuZHlAa2VybmVsLm9yZyA8YW5keUBrZXJuZWwub3JnPjsgbnVuby5zYUBh
bmFsb2cuY29tIDxudW5vLnNhQGFuYWxvZy5jb20+OyBkbGVjaG5lckBiYXlsaWJyZS5jb20gPGRs
ZWNobmVyQGJheWxpYnJlLmNvbT47IGppYzIzQGtlcm5lbC5vcmcgPGppYzIzQGtlcm5lbC5vcmc+
OyBKZWFuLUJhcHRpc3RlIE1hbmV5cm9sIDxKZWFuLUJhcHRpc3RlLk1hbmV5cm9sQHRkay5jb20+
OyBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnIDxsaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnPjsgZGV2aWNldHJlZUB2Z2VyLmtlcm5lbC5vcmcgPGRldmljZXRyZWVA
dmdlci5rZXJuZWwub3JnPjsgaGVpa29Ac250ZWNoLmRlIDxoZWlrb0BzbnRlY2guZGU+OyBjb25v
citkdEBrZXJuZWwub3JnIDxjb25vcitkdEBrZXJuZWwub3JnPjsga3J6aytkdEBrZXJuZWwub3Jn
IDxrcnprK2R0QGtlcm5lbC5vcmc+OyByb2JoQGtlcm5lbC5vcmcgPHJvYmhAa2VybmVsLm9yZz47
IGFuZHJpeS5zaGV2Y2hlbmtvQGludGVsLmNvbSA8YW5kcml5LnNoZXZjaGVua29AaW50ZWwuY29t
PjsgQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiA+ID5TdWJqZWN0OsKg
W1BBVENIIHYyIDAvNV0gQWRkIEludmVuc2Vuc2UgSUNNNDI2MDcKPiA+ID7CoAo+ID4gPkZyb206
IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5A4oCKaG90bWFpbC7igIpjb20+IEFkZCBzdXBwb3J0
IGZvciB0aGUgSUNNNDI2MDcgSU1VLiBUaGlzIHNlbnNvciBzaGFyZXMgdGhlIHNhbWUgZnVuY3Rp
b25hbGl0eSBidXQgYSBkaWZmZXJlbnQgcmVnaXN0ZXIgbGF5b3V0IHdpdGggdGhlIGV4aXN0aW5n
IElDTTQyNjAwLiBUaGlzIGRyaXZlciBzaG91bGQgd29yayB3aXRoIHRoZSBJQ000MjYwNyBhbmQg
SUNNNDI2MDdQCj4gPiA+WmpRY21RUllGcGZwdEJhbm5lclN0YXJ0Cj4gPiA+VGhpcyBNZXNzYWdl
IElzIEZyb20gYW4gVW50cnVzdGVkIFNlbmRlcgo+ID4gPllvdSBoYXZlIG5vdCBwcmV2aW91c2x5
IGNvcnJlc3BvbmRlZCB3aXRoIHRoaXMgc2VuZGVyLgo+ID4gPsKgCj4gPiA+WmpRY21RUllGcGZw
dEJhbm5lckVuZAo+ID4gPkZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5j
b20+Cj4gPiA+Cj4gPiA+QWRkIHN1cHBvcnQgZm9yIHRoZSBJQ000MjYwNyBJTVUuIFRoaXMgc2Vu
c29yIHNoYXJlcyB0aGUgc2FtZQo+ID4gPmZ1bmN0aW9uYWxpdHkgYnV0IGEgZGlmZmVyZW50IHJl
Z2lzdGVyIGxheW91dCB3aXRoIHRoZSBleGlzdGluZwo+ID4gPklDTTQyNjAwLgo+ID4gPgo+ID4g
PlRoaXMgZHJpdmVyIHNob3VsZCB3b3JrIHdpdGggdGhlIElDTTQyNjA3IGFuZCBJQ000MjYwN1Ag
b3ZlciBib3RoIEkyQwo+ID4gPmFuZCBTUEksIGhvd2V2ZXIgb25seSB0aGUgSUNNNDI2MDdQIG92
ZXIgSTJDIGNvdWxkIGJlIHRlc3RlZC4KPiA+ID4KPiA+ID5DaGFuZ2VzIFNpbmNlIFYxOgo+ID4g
PiAtIEluc3RlYWQgb2YgY3JlYXRpbmcgYSBuZXcgZHJpdmVyLCBtZXJnZWQgd2l0aCB0aGUgZXhp
c3RpbmcgaW52X2ljbTQyNjAwCj4gPiA+IMKgIGRyaXZlci4gVGhpcyBuZWNlc3NpdGF0ZWQgYWRk
aW5nIHNvbWUgY29kZSB0byB0aGUgZXhpc3RpbmcgZHJpdmVyIHRvCj4gPiA+IMKgIHBlcm1pdCB1
c2luZyBhIGRpZmZlcmVudCByZWdpc3RlciBsYXlvdXQgZm9yIHRoZSBzYW1lIGZ1bmN0aW9uYWxp
dHkuCj4gPiA+IC0gU3BsaXQgY2hhbmdlcyB1cCBhIGJpdCBtb3JlIHRvIGRlY3JlYXNlIHRoZSBz
aXplIG9mIHRoZSBpbmRpdmlkdWFsCj4gPiA+IMKgIHBhdGNoZXMuIE5vdGUgdGhhdCBwYXRjaCAw
MDA0IGlzIHN0aWxsIHByZXR0eSBoZWZ0eTsgaWYgSSBuZWVkIHRvIHNwbGl0Cj4gPiA+IMKgIGZ1
cnRoZXIgSSBtYXkgbmVlZCB0byBjcmVhdGUgc29tZSB0ZW1wb3Jhcnkgc3R1YiBmdW5jdGlvbnMu
Cj4gPiA+IC0gVXNlZCBndWFyZCgpIGFuZCBQTV9SVU5USU1FX0FDUVVJUkVfQVVUT1NVU1BFTkQo
KSBvbiB0aGUgbmV3IGZ1bmN0aW9ucwo+ID4gPiDCoCBwZXIgSm9uYXRoYW4ncyByZWNvbW1lbmRh
dGlvbnMuCj4gPiA+Cj4gPiA+Q2hyaXMgTW9yZ2FuICg1KToKPiA+ID4gwqBkdC1iaW5kaW5nczog
aWlvOiBpbXU6IGFkZCBpY200MjYwNwo+ID4gPiDCoGlpbzogaW11OiBpbnZfaWNtNDI2MDA6IEFk
ZCBzdXBwb3J0IGZvciB1c2luZyBhbHRlcm5hdGUgcmVnaXN0ZXJzCj4gPiA+IMKgaWlvOiBpbXU6
IGludl9pY200MjYwMDogQWRkIHJlZ2lzdGVycyBmb3IgaWNtNDI2MDcKPiA+ID4gwqBpaW86IGlt
dTogaW52X2ljbTQyNjAwOiBBZGQgc3VwcG9ydCBmb3IgaWNtNDI2MDcKPiA+ID4gwqBhcm02NDog
ZHRzOiByb2NrY2hpcDogQWRkIGljbTQyNjA3cCBJTVUgZm9yIFJHLURTCj4gPiA+Cj4gPiA+IC4u
Li9iaW5kaW5ncy9paW8vaW11L2ludmVuc2Vuc2UsaWNtNDI2MDAueWFtbCB8IMKgIDQgKwo+ID4g
PiAuLi4vZHRzL3JvY2tjaGlwL3JrMzU2OC1hbmJlcm5pYy1yZy1kcy5kdHMgwqAgwqB8IMKgMjAg
Ky0KPiA+ID4gZHJpdmVycy9paW8vaW11L2ludl9pY200MjYwMC9pbnZfaWNtNDI2MDAuaCDCoCB8
IDMzMyArKysrKysrLQo+ID4gPiAuLi4vaWlvL2ltdS9pbnZfaWNtNDI2MDAvaW52X2ljbTQyNjAw
X2FjY2VsLmMgfCA0OTcgKysrKysrKysrKy0KPiA+ID4gLi4uL2ltdS9pbnZfaWNtNDI2MDAvaW52
X2ljbTQyNjAwX2J1ZmZlci5jIMKgIMKgfCAyNDAgKysrKystCj4gPiA+IC4uLi9pbXUvaW52X2lj
bTQyNjAwL2ludl9pY200MjYwMF9idWZmZXIuaCDCoCDCoHwgwqAgNSArCj4gPiA+IC4uLi9paW8v
aW11L2ludl9pY200MjYwMC9pbnZfaWNtNDI2MDBfY29yZS5jIMKgfCA3OTUgKysrKysrKysrKysr
KysrLS0tCj4gPiA+IC4uLi9paW8vaW11L2ludl9pY200MjYwMC9pbnZfaWNtNDI2MDBfZ3lyby5j
IMKgfCAzNzkgKysrKysrKystCj4gPiA+IC4uLi9paW8vaW11L2ludl9pY200MjYwMC9pbnZfaWNt
NDI2MDBfaTJjLmMgwqAgfCDCoDUzICstCj4gPiA+IC4uLi9paW8vaW11L2ludl9pY200MjYwMC9p
bnZfaWNtNDI2MDBfc3BpLmMgwqAgfCDCoDU5ICstCj4gPiA+IC4uLi9paW8vaW11L2ludl9pY200
MjYwMC9pbnZfaWNtNDI2MDBfdGVtcC5jIMKgfCDCoDY0ICsrCj4gPiA+IC4uLi9paW8vaW11L2lu
dl9pY200MjYwMC9pbnZfaWNtNDI2MDBfdGVtcC5oIMKgfCDCoCA0ICsKPiA+ID4gMTIgZmlsZXMg
Y2hhbmdlZCwgMjI4OSBpbnNlcnRpb25zKCspLCAxNjQgZGVsZXRpb25zKC0pCj4gPiA+Cj4gPiA+
LS0gCj4gPiA+Mi40My4wCj4gPiA+Cj4gPiA+Cj4gPiAKPiA+IEhlbGxvIENocmlzLAo+ID4gCj4g
PiB0aGFua3MgZm9yIHRoZSBwYXRjaCwgYnV0IGJld2FyZSB0aGF0IHRoZXJlIGlzIGEgbWFqb3Ig
ZGlmZmVyZW5jZSBiZXR3ZWVuIHRoaXMKPiA+IGNoaXAgYW5kIGludl9pY200MjYwMCBjaGlwcyBm
YW1pbHkgdGhhdCBpcyBwcmV2ZW50aW5nIHRvIGhhdmUgYSBjb21tb24gZHJpdmVyLgo+ID4gCj4g
PiBpbnZfaWNtNDI2MDAgY2hpcHMgYXJlIHVzaW5nIGRpcmVjdCByZWdpc3RlciBhY2Nlc3Mgd2l0
aCBiYW5rIHdoaWxlIGljbTQyNjA3Cj4gPiBjaGlwIGlzIHVzaW5nIGluZGlyZWN0IHJlZ2lzdGVy
IGFjY2VzcyB1c2luZyBJUkVHIHNwZWNpZmljIHJlZ2lzdGVycy4gU29tZQo+ID4gcmVnaXN0ZXJz
IGNhbm5vdCBiZSByZWFkL3dyaXRlIGRpcmVjdGx5IGFuZCByZXF1aXJlcyBwcm9ncmFtbWluZyBz
cGVjaWZpYwo+ID4gcmVnaXN0ZXJzLiBUaGUgbWVjaGFuaXNtIGlzIHNpbWlsYXIgdG8gdGhlIG9u
ZSBpbiBpbnZfaWNtNDU2MDAgZHJpdmVyLCB5b3UgY2FuCj4gPiBoYXZlIGEgbG9vayBpbiB0aGlz
IGRyaXZlci4KPiAKPiBJIGRpZG4ndCBzZWUgYW55dGhpbmcgaW4gdGhlIGRhdGFzaGVldCBmb3Ig
dGhlIDQyNjA3UCBpbiByZWdhcmRzIHRvIHRoZSBJUkVHLAo+IGJ1dCBJIGRpZCBzZWUgc29tZXRo
aW5nIGluIHRoZSA0MjYwN0MuIFRoYXQgc2FpZCwgbmVhciBhcyBJIGNhbiB0ZWxsIGZyb20gdGhl
Cj4gZHJpdmVycyB0aGF0IEkgdXNlZCBhcyBhIHJlZmVyZW5jZSBmcm9tIHRoZSBSb2NrY2hpcCBh
bmQgTGluZWFnZSB0cmVlcyB0aGlzIGRyaXZlcgo+IGRvZXNuJ3QgYWNjZXNzIGFueXRoaW5nIGZy
b20gdGhvc2UgcmVnaXN0ZXJzLgo+IAo+IFN0aWxsLCBJJ2xsIGRlZmVyIHRvIHlvdSBvbiB3aGF0
IHlvdSB0aGluayBpcyBiZXN0LiBBcyBsb25nIGFzIEkgY2FuIHVzZSBteQo+IGFjY2VsZXJvbWV0
ZXIgdGhhdCdzIGFsbCBJIGNhcmUgYWJvdXQuCgpTbyBjbG9zZXIgbG9va2luZyBhdCB0aGUgNDI2
MDctQyBkYXRhc2hlZXQsIGl0IGxvb2tzIGxpa2UgdGhleSBoYXZlIE1SRUcgYmFua3MsIGlzCnRo
YXQgd2hhdCB5b3UncmUgdGFsa2luZyBhYm91dD8KCklmIHNvIEkgY2FuIGVpdGhlciByZW1vdmUg
dGhpcyBhbmQgY3JlYXRlIGEgbmV3IGRyaXZlciAoYXMgSSBkaWQgd2l0aCBWMSksCm9yIEkgY2Fu
IGp1c3Qga2VlcCB0aGUgNDI2MDdQIGluIHRoaXMgZHJpdmVyIHNpbmNlIGl0IGRvZXMgYXBwZWFy
IHRvIHVzZSBvbmx5CmRpcmVjdCByZWdpc3RlciBhY2Nlc3MuCgpMZXQgbWUga25vdyB3aGF0IHlv
dSB0aGluayBzbyBJIGNhbiByZXdyaXRlIGFuZCByZXN1Ym1pdCBpdC4gSSdsbCB0cnkgdG8gYmV0
dGVyCmJyZWFrIGl0IHVwIHRoaXMgdGltZSB0b28gYnkgc2VlaW5nIGlmIEkgY2FuIG1ha2UgdGVt
cCwgZ3lybywgYW5kIGFjY2VsIGZ1bmN0aW9ucwphbGwgd2l0aCBkaWZmZXJlbnQgY29tbWl0cy4K
ClRoYW5rIHlvdSwKQ2hyaXMKCj4gCj4gPiAKPiA+IFVzaW5nIHRoZSBzYW1lIGRyaXZlciBpcyBu
b3QgcG9zc2libGUgSSB0aGluaywgc2luY2UgcmVnaXN0ZXIgYWNjZXNzIGlzIGRpZmZlcmVudC4K
PiA+IAo+ID4gQW5kIHRoZXJlIGFyZSBhbHNvIG1vcmUgZGlmZmVyZW5jZXMgYmV0d2VlbiB0aGUg
MiBjaGlwIGZhbWlsaWVzIHRoYXQgaXMgbWFraW5nCj4gPiBhIGNvbW1vbiBkcml2ZXIgcXVpdGUg
ZGlmZmljdWx0IHRvIGRvLgo+ID4gCj4gPiBUaGFua3MsCj4gPiBKQgo+IAo+IENocmlzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
