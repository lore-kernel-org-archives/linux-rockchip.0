Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12978C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 09:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PkOLeqBaNEzEiQ9igWV8kIlJvK8jIqUadViCrBzm2U4=; b=UeVHjL3N4dYBvubHULZdiGw63R
	DVaOlqAeIpsalo897dX9fGMfq6tb4JNhoVVVQ5F6GecKLClAU3APOduQvKAeltBmAM8v/8esQPy0Z
	5wwmQLGbppKHXaAff6ATY6XriYLbTOPCtMzIpWRzlevlFnk0BQzXQnL4KB1dmKcluZDJXISsfxQzU
	hedt1p557I3BU/MkP9Qk5s8DO2HyTvG47BhW3X8Lx7kZR3IPtpAySGBYoOmBT58MawbcUlZJgZeTF
	Z6RNu462GTnIMdZGtzVI3Shg0YDIcIj+Ji43Z2NgK2jLQ7kEkkwPZPB258hpzgNPPLOGa93gy12SB
	yTfklI+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAMD-00000006PCn-3LYH;
	Wed, 14 Aug 2024 09:31:53 +0000
Received: from mail-psaapc01on2071b.outbound.protection.outlook.com ([2a01:111:f400:feae::71b] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAHb-00000006NQR-25SJ;
	Wed, 14 Aug 2024 09:27:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PW3hF2QkIjRCKJF8WkrUZ2wIBinmKidTZLq03ybLMl+RLiM3XDL1lOLf7DExC8gy+KgFW2SJtYy6Ua0aJhHoYASyhBUzlljPYx430qsfGGZrB4lGOk0TAUdfSRW8smSE3buLfcw67L8PiT5f8paEC5Xwk1GzppqqbvLrmQ4KaqzR/DxMQjbQmj+xHZ64F8UGW1RqnkwH3pL0TNKHS6Tm2M+CTH5fiAuwDulI2wlATWH1ZLgIOTs/cGcqD65KbqsNKbTa1+Zm89fYuilEg+f31UBdSdr5kISd2GmPisS0OUJ/W/WeJ/SpoiiJs0Ifc62lvmiF+eV3K2fX9+SqC8oiwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rlLxjTwwGMWcFVvyf3jskWsnJNGBlBI3VMLO+42+7VY=;
 b=ye7YAKoXmXuDVCCJM2USzyZV1p+u/6HfoaBZyVxDIFGtY/RO5q3bTzGtaYPglotrMvmDXv9RSoE7fK+Lh3WxClPBx4sJzhRlme/brNQuV6oib/d2x2TUdXnML91IKM3hatlDbWTfKZeHPqpx7OKPx/2nOtWvncsk9zM3xybvf1HTfAqtHD5Utml/clWJMTb1F2svt3/ZmXrmTsgd7ECg9nWIGfZxEkvKXP+5GEyXPpDqnyox0QrC+vQxvWRVY8tizH5b6y/xQV89zEUPa7TybEBg3sviVDyUUrKXghna5UFTlLq1DfoJGwuwOKlvzXJCIWpwNEazP45tnXBCEeTY+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEZPR03MB7486.apcprd03.prod.outlook.com (2603:1096:101:10d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7849.20; Wed, 14 Aug
 2024 09:26:57 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7849.019; Wed, 14 Aug 2024
 09:26:57 +0000
Message-ID: <fa019ee9-3f4d-4bea-92a7-929713518dc9@wesion.com>
Date: Wed, 14 Aug 2024 17:26:51 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
To: Alexey Charkov <alchark@gmail.com>, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org,
 linux-rockchip@lists.infradead.org
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, arend@broadcom.com,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, megi@xff.cz,
 duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net,
 brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com,
 nick@khadas.com, Sai Krishna <saikrishnag@marvell.com>,
 Arend van Spriel <arend.vanspriel@broadcom.com>
References: <20240813082007.2625841-1-jacobe.zang@wesion.com>
 <20240813082007.2625841-5-jacobe.zang@wesion.com>
 <721da64c-42ec-4be6-8ad3-e2685a84823a@broadcom.com>
 <2269063.vFx2qVVIhK@latitude-fedora>
Content-Language: en-US
From: Jacobe Zang <jacobe.zang@wesion.com>
In-Reply-To: <2269063.vFx2qVVIhK@latitude-fedora>
X-ClientProxiedBy: TY1PR01CA0201.jpnprd01.prod.outlook.com (2603:1096:403::31)
 To TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|SEZPR03MB7486:EE_
X-MS-Office365-Filtering-Correlation-Id: 54935c16-6a7b-438c-22fa-08dcbc433e18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7416014|921020;
X-Microsoft-Antispam-Message-Info: M99gbZqljmCwhryxh2XTlKZLHIonOZKR2SNmLdx7D4j3k4/6UdmEvJvU58THBpM+MsyGMTcGObY8/KfK8mcjPMkknexXYmwyOfoNDv22AADKmCGxW5pEvzmAkRf2uva15N8RDoDfTR+tXoqW5m+4WMRC6h9eqrbjQ83XHeaKLm9iZKo7xdMVBi+Vkh9xGg0PYpeuEX4nPTpT2n+9sey2PPzenBaQoEmrpy8rW2TUvSFqoqcpNVI3mkH2y5JO61xwAevDT1Sdrron5PrPHwYebZdlcnFfHnvThyn0mFrmZu7soYKNAT8oPW/pwR7LDJRwnOjh5A9whEaYsBgQf+7sNaOfGhiEpdvAvC8DAcVtsPzOOnEvRFENRWQNvpWxZVo6ZBw7sNEezrEqz+mCdyzEwBkcMKWG5cEk9Yd7NHCoatDwaPdu/3z/rRnirhnw+KARbCZKMfcL4hEI41gUUNjFWsjuShZMRYaQ42bBucBFp1Kz0OBGBENmCiPff/ZpSmcryIpNMAOfxvs2sosPku3Yc0eEUZtnRsl5u0nj6cAbSLKGgDCk6uYHa30oDhDfZ63METnXZC2Lfq5U94m6EpyGQgbnR1LQCJ596s0Zf+Pa6BM5D4RF/F5/ziOZoS9gnT4UZyuVdUfftEWpkXwcKfPTcIDzOqsA/rhWhE+qPPQJRIhQ9gbvWvZ33g5Xq5XYmaiTPsrqPumO1q8NpbMJR/IaOw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7416014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejhjcDJWOCt2aHdldkFzOHdqWVk4MVZnS0tKd1BwdXR5Vk5FMEQvTFd6bmds?=
 =?utf-8?B?cWNNdE54aWh1czc0MGozM0VwQUVEejRadXJ4TVlqY25xTTRhSThicFV6VFVi?=
 =?utf-8?B?VzlHa0pwMGFCeGFsckswY3lUNDd3UTFOTHMxUTQ0TTIxY2lQeko4cmZxSjVR?=
 =?utf-8?B?dkZySTFhK3dxeEVpWXZiTVRqR0hPNUY1bmpmaWV6QUJKOFVOeTNCdDZ2UGxh?=
 =?utf-8?B?TmlFTzlURVI0L1JJcmN1ejFORDNkeXJ2MG5ZczUxUENGbEc5MGxaNEpUZElp?=
 =?utf-8?B?MUhkb3FhUFliTEdYN2s2bUlpRkVPajdyNURCTG5kOXNpSGlFclFoY0hDT0Z1?=
 =?utf-8?B?N1JCNEJtNFlLSXFsVWRMaVBJNGFsSXU4VGtNWjl3bnZtZDFHRTBEaW5UUlFj?=
 =?utf-8?B?RUE5a1lCRVF1Y0RVUXlSQUlxZDNZUHNwQWRRTHk1eVQ2Wkp6N2o1WFhpaTEw?=
 =?utf-8?B?ZXFmUTZSMDEwdnZPSnJDaitnVWFaUXVGWkhsRU8vb2prUHFwVHFMTkRVcHZG?=
 =?utf-8?B?VTFmTExsbGJaNG1CaC9teTdXVkhIekkyVW5xdHZvclFEcDRaSnVLVktHbVo4?=
 =?utf-8?B?UXJFWS90VDd5bWlZaHlTK2k5RmthSWJYOFEvUGx5bGVsQUhwSWhWbDgzdkt1?=
 =?utf-8?B?UUxEZXBUOGtTQmkzWnNQeGNNRmF5c1FTcTVyYmFGOE5OazUwRGVrQzl0YnRa?=
 =?utf-8?B?Q05hVXo1UDM1ZEVkTjdmNnBERkFIRXJmdmZ4bTdyQkpJeWorTklWT3UzV0tV?=
 =?utf-8?B?S1ZlaXhJbXk4MTNPVXFIV0IzS3I3RE82ODU0T3diekE3eFBXMkJjbXdSL1Ew?=
 =?utf-8?B?S2ZtY0VxZVM4WjBuNFhocVBXTVArVG1XYTdsckRPeUFYWGhJSVhhUEE1LzZZ?=
 =?utf-8?B?TFd4a0VaSmY2QldNUGR0Z2JnaEluZlJYUnFKMkZBNnAwWTNMeUFSK1kwZmdL?=
 =?utf-8?B?KzI3cUQvaTZKMUtXMzBtY2xNbFpLYmxUSXptd2ttVUwwQ20ycFc1Mnp0TDVl?=
 =?utf-8?B?dkJHcTRDTUZ5LzVhOENXQUZYSC8wc3k2b1VZTzA5SFljdWE3azBNRWRWdmwr?=
 =?utf-8?B?KzhKYU1OeklIUFVmRDM4eEZWdlpOY0U1SkNYdlN0dCtmVWJTSUk0bnFEKzEx?=
 =?utf-8?B?N3BuZ2VLa0IrcHNkMzJsU1ppUEtTZlJQd3lKUjZnMEFCZWhXd2FTWFViN0xX?=
 =?utf-8?B?S3ljYk1QZWw0TFVhWElubU9VbW9ZcHZFZm1uSFlaY01OalZlTzlJVWZIOWdx?=
 =?utf-8?B?ck9zczBaMkx0OUMra3dtZzdOV3R3YXRGWmFCQWVNVTRReWx3Z25GTWtXaUlo?=
 =?utf-8?B?WGtrSURjK3RsNkl4N2VaZnFBUzNGRExoaSt0R241bzNXZWs0bmdHTkZFWjd3?=
 =?utf-8?B?RUdyTUk3ay93dXdnUlUzblNxcEU1QXA3Y2QxQ2o4M2hwRzlaN3BNYWxidklO?=
 =?utf-8?B?Y0wyYnRXRmJCZDdtVUJweGpBMW1neHluZEJTc2NpRC9JVm9weVNlRXFZV0lZ?=
 =?utf-8?B?RzBkcjNDSHAzL25BMno4RUNGQmdBcjN0SUJOYjBvOWhXa1ZMTDVEMnpSazZX?=
 =?utf-8?B?Q1NkUGdzMFV2WUFiRlphb3hDeDU4alZHSUVpY1BFUHhzWXhvMmd1cUxjbjUw?=
 =?utf-8?B?eHVEaVc1dHE3NUI4KzVDYy84SXlCaERZV3F1WTNVdk9KcThVdk5ZQ0hNK0NN?=
 =?utf-8?B?cW9uSm5FTmdTeWxxZnkzV0J6bm81MXVmWkVuOWc3TzdJUmkyV1h4RzRmU25p?=
 =?utf-8?B?NThiOENxSzl6ODlkREhqZ2dYQjI3SXJaOWFFUW5qK1NhQXJ4eWoxZktIajNF?=
 =?utf-8?B?NjlXVUI2Rm9XNW11MWJhT3Qxb2VDT1BkUG9lWUN0Z2dkVm5OQ1EwQ2wxdTFE?=
 =?utf-8?B?YlNLWkYzY0srVE1vSC9nZEcxZDQ4ejNYM081OTBEQituMlAvdFFoelJpNzdQ?=
 =?utf-8?B?ZjI4Qk5OUUZvMVJCYitTRFl3TElmVzhrSEZ0UnFzS3lFOW1uWHhCTXVDNW96?=
 =?utf-8?B?WWNmcDRiMUNUYWFreXZZOFhhbGY3aDNxeC9iYmlyZDhMNGVCZHFFME9ZMTF4?=
 =?utf-8?B?RVlWZ0VOU1pMODJKSXphZnU3aUlWaDl4MDY0b0wxVTl5N1lrdVpULytsMy95?=
 =?utf-8?B?bDhTdWphL00xQTh6OVorK1lXcldIWFFvdHlsMFRRN0NTZnE2SnR0T3VKUkdZ?=
 =?utf-8?B?Snc9PQ==?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54935c16-6a7b-438c-22fa-08dcbc433e18
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2024 09:26:57.1229
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: w5fW5SUxFkY8d1j8XgTW0+aV3NQFQH6SHTkBh6aRzCx7dX4h2KSWW3AKGzni2rMCtP3X+H3fBwdbl/5OTBdFJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB7486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_022707_562155_E5BB540E 
X-CRM114-Status: GOOD (  26.07  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgpPbiAyMDI0LzgvMTQgMTY6NDcsIEFsZXhleSBDaGFya292IHdyb3RlOgo+IEhpIEFyZW5kLCBK
YWNvYmUsCj4gCj4gT24gVHVlc2RheSwgQXVndXN0IDEzLCAyMDI0IDI6NTc6MjjigK9QTSBHTVQr
MyBBcmVuZCB2YW4gU3ByaWVsIHdyb3RlOgo+PiBPbiA4LzEzLzIwMjQgMTA6MjAgQU0sIEphY29i
ZSBaYW5nIHdyb3RlOgo+Pj4gV2lGaSBtb2R1bGVzIG9mdGVuIHJlcXVpcmUgMzJrSHogY2xvY2sg
dG8gZnVuY3Rpb24uIEFkZCBzdXBwb3J0IHRvCj4+PiBlbmFibGUgdGhlIGNsb2NrIHRvIFBDSWUg
ZHJpdmVyIGFuZCBtb3ZlICJicmNtLGJjbTQzMjktZm1hYyIgY2hlY2sKPj4+IHRvIHRoZSB0b3Ag
b2YgYnJjbWZfb2ZfcHJvYmUuIENoYW5nZSBmdW5jdGlvbiBwcm90b3R5cGVzIGZyb20gdm9pZAo+
Pj4gdG8gaW50IGFuZCBhZGQgYXBwcm9wcmlhdGUgZXJybm8ncyBmb3IgcmV0dXJuIHZhbHVlcyB0
aGF0IHdpbGwgYmUKPj4+IHNlbmQgdG8gYnVzIHdoZW4gZXJyb3Igb2NjdXJyZWQuCj4+Cj4+IEkg
d2FzIGdvaW5nIHRvIHNheSBpdCBsb29rcyBnb29kIHRvIG1lLCBidXQuLi4uCj4+Cj4+PiBDby1k
ZXZlbG9wZWQtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+Pj4gU2lnbmVkLW9mZi1i
eTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4+PiBDby1kZXZlbG9wZWQtYnk6IEFyZW5k
IHZhbiBTcHJpZWwgPGFyZW5kLnZhbnNwcmllbEBicm9hZGNvbS5jb20+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBBcmVuZCB2YW4gU3ByaWVsIDxhcmVuZC52YW5zcHJpZWxAYnJvYWRjb20uY29tPgo+Pj4g
UmV2aWV3ZWQtYnk6IFNhaSBLcmlzaG5hIDxzYWlrcmlzaG5hZ0BtYXJ2ZWxsLmNvbT4KPj4+IFNp
Z25lZC1vZmYtYnk6IEphY29iZSBaYW5nIDxqYWNvYmUuemFuZ0B3ZXNpb24uY29tPgo+Pj4gLS0t
Cj4+Pgo+Pj4gICAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9iY21zZGguYyAgICAg
IHwgIDQgKy0KPj4+ICAgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvY29tbW9uLmMg
ICAgICB8ICAzICstCj4+PiAgICAuLi4vd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21m
bWFjL29mLmMgfCA1MyArKysrKysrKysrKy0tLS0tLS0tCj4+PiAgICAuLi4vd2lyZWxlc3MvYnJv
YWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmggfCAgOSArKy0tCj4+PiAgICAuLi4vYnJvYWRj
b20vYnJjbTgwMjExL2JyY21mbWFjL3BjaWUuYyAgICAgICAgfCAgMyArKwo+Pj4gICAgLi4uL2Jy
b2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9zZGlvLmMgICAgICAgIHwgMjIgKysrKystLS0KPj4+
ICAgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvdXNiLmMgICAgICAgICB8ICAzICsr
Cj4+PiAgICA3IGZpbGVzIGNoYW5nZWQsIDYxIGluc2VydGlvbnMoKyksIDM2IGRlbGV0aW9ucygt
KQo+Pgo+PiBbLi4uXQo+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jy
b2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jCj4+PiBiL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jIGluZGV4Cj4+PiBlNDA2ZTExNDgxYTYy
Li5mMTlkYzczNTVlMGU4IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJv
YWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmMKPj4+ICsrKyBiL2RyaXZlcnMvbmV0L3dpcmVs
ZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jCj4+Cj4+IFsuLi5dCj4+Cj4+PiBA
QCAtMTEzLDMzICsxMTgsMzkgQEAgdm9pZCBicmNtZl9vZl9wcm9iZShzdHJ1Y3QgZGV2aWNlICpk
ZXYsIGVudW0KPj4+IGJyY21mX2J1c190eXBlIGJ1c190eXBlLD4KPj4+ICAgIAkJb2Zfbm9kZV9w
dXQocm9vdCk7Cj4+PiAgICAJCj4+PiAgICAJfQo+Pj4KPj4+IC0JaWYgKCFucCB8fCAhb2ZfZGV2
aWNlX2lzX2NvbXBhdGlibGUobnAsICJicmNtLGJjbTQzMjktZm1hYyIpKQo+Pj4gLQkJcmV0dXJu
Owo+Pj4gLQo+Pj4KPj4+ICAgIAllcnIgPSBicmNtZl9vZl9nZXRfY291bnRyeV9jb2RlcyhkZXYs
IHNldHRpbmdzKTsKPj4+ICAgIAlpZiAoZXJyKQo+Pj4gICAgCQo+Pj4gICAgCQlicmNtZl9lcnIo
ImZhaWxlZCB0byBnZXQgT0YgY291bnRyeSBjb2RlIG1hcCAoZXJyPSVkKQo+IFxuIiwgZXJyKTsK
Pj4+ICAgIAkKPj4+ICAgIAlvZl9nZXRfbWFjX2FkZHJlc3MobnAsIHNldHRpbmdzLT5tYWMpOwo+
Pj4KPj4+IC0JaWYgKGJ1c190eXBlICE9IEJSQ01GX0JVU1RZUEVfU0RJTykKPj4+IC0JCXJldHVy
bjsKPj4+ICsJaWYgKGJ1c190eXBlID09IEJSQ01GX0JVU1RZUEVfU0RJTykgewo+Pgo+PiBEb24n
dCBsaWtlIHRoZSBmYWN0IHRoYXQgdGhpcyBub3cgaGFzIGFuIGV4dHJhIGluZGVudGF0aW9uIGxl
dmVsIGFuZCBpdAo+PiBvZmZlcnMgbm8gZXh0cmEgYmVuZWZpdC4gSnVzdCBrZWVwIHRoZSBvcmln
aW5hbCBpZi1zdGF0ZW1lbnQgYW5kIHJldHVybgo+PiAwLiBDb25zZXF1ZW50bHkgdGhlIExQTyBj
bG9jayBjb2RlIHNob3VsZCBtb3ZlIGp1c3QgYmVmb3JlIHRoZSBpZi1zdGF0ZW1lbnQuCj4+PiAr
CQlpZiAob2ZfcHJvcGVydHlfcmVhZF91MzIobnAsICJicmNtLGRyaXZlLXN0cmVuZ3RoIiwKPiAm
dmFsKSA9PSAwKQo+Pj4gKwkJCXNkaW8tPmRyaXZlX3N0cmVuZ3RoID0gdmFsOwo+Pj4KPj4+IC0J
aWYgKG9mX3Byb3BlcnR5X3JlYWRfdTMyKG5wLCAiYnJjbSxkcml2ZS1zdHJlbmd0aCIsICZ2YWwp
ID09IDApCj4+PiAtCQlzZGlvLT5kcml2ZV9zdHJlbmd0aCA9IHZhbDsKPj4+ICsJCS8qIG1ha2Ug
c3VyZSB0aGVyZSBhcmUgaW50ZXJydXB0cyBkZWZpbmVkIGluIHRoZSBub2RlICovCj4+PiArCQlp
ZiAoIW9mX3Byb3BlcnR5X3ByZXNlbnQobnAsICJpbnRlcnJ1cHRzIikpCj4+PiArCQkJcmV0dXJu
IDA7Cj4+Pgo+Pj4gLQkvKiBtYWtlIHN1cmUgdGhlcmUgYXJlIGludGVycnVwdHMgZGVmaW5lZCBp
biB0aGUgbm9kZSAqLwo+Pj4gLQlpZiAoIW9mX3Byb3BlcnR5X3ByZXNlbnQobnAsICJpbnRlcnJ1
cHRzIikpCj4+PiAtCQlyZXR1cm47Cj4+PiArCQlpcnEgPSBpcnFfb2ZfcGFyc2VfYW5kX21hcChu
cCwgMCk7Cj4+PiArCQlpZiAoIWlycSkgewo+Pj4gKwkJCWJyY21mX2VycigiaW50ZXJydXB0IGNv
dWxkIG5vdCBiZQo+IG1hcHBlZFxuIik7Cj4+PiArCQkJcmV0dXJuIDA7Cj4+PiArCQl9Cj4+PiAr
CQlpcnFmID0gaXJxZF9nZXRfdHJpZ2dlcl90eXBlKGlycV9nZXRfaXJxX2RhdGEoaXJxKSk7Cj4+
PiArCj4+PiArCQlzZGlvLT5vb2JfaXJxX3N1cHBvcnRlZCA9IHRydWU7Cj4+PiArCQlzZGlvLT5v
b2JfaXJxX25yID0gaXJxOwo+Pj4gKwkJc2Rpby0+b29iX2lycV9mbGFncyA9IGlycWY7Cj4+PiAr
CX0KPj4+Cj4+PiAtCWlycSA9IGlycV9vZl9wYXJzZV9hbmRfbWFwKG5wLCAwKTsKPj4+IC0JaWYg
KCFpcnEpIHsKPj4+IC0JCWJyY21mX2VycigiaW50ZXJydXB0IGNvdWxkIG5vdCBiZSBtYXBwZWRc
biIpOwo+Pj4gLQkJcmV0dXJuOwo+Pj4gKwljbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWxfZW5h
YmxlZChkZXYsICJscG8iKTsKPj4+ICsJaWYgKCFJU19FUlJfT1JfTlVMTChjbGspKSB7Cj4+PiAr
CQlicmNtZl9kYmcoSU5GTywgImVuYWJsaW5nIDMya0h6IGNsb2NrXG4iKTsKPj4+ICsJCXJldHVy
biBjbGtfc2V0X3JhdGUoY2xrLCAzMjc2OCk7Cj4+PiArCX0gZWxzZSB7Cj4+PiArCQlyZXR1cm4g
UFRSX0VSUl9PUl9aRVJPKGNsayk7Cj4+Pgo+Pj4gICAgCX0KPj4KPj4gQ2hhbmdlIHRoaXMgdG86
Cj4+ICAgPiArCWNsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFibGVkKGRldiwgImxwbyIp
Owo+PiAgID4gKwlpZiAoSVNfRVJSX09SX05VTEwoY2xrKSkgewo+PiAgID4gKwkJcmV0dXJuIFBU
Ul9FUlJfT1JfWkVSTyhjbGspOwo+IAo+IFBlcmhhcHMgaW4gdGhpcyBjYXNlIHdlIHNob3VsZCBn
byBmb3IgSVNfRVJSIGFuZCBQVFJfRVJSIHJlc3BlY3RpdmVseS4KPiBkZXZtX2Nsa19nZXRfb3B0
aW9uYWxfZW5hYmxlZCB3b3VsZCByZXR1cm4gTlVMTCB3aGVuIHRoZSBvcHRpb25hbCBjbG9jayBp
cyBub3QKPiBmb3VuZCwgc28gTlVMTCBpcyBub3QgYW4gZXJyb3Igc3RhdGUgYnV0IHNlcnZlcyBh
cyBhIGR1bW15IGNsb2NrIHRoYXQgY2FuIGJlPiB1c2VkIHdpdGggY2xrX3NldF9yYXRlLgoKSSB0
aGluayB3ZSBkb24ndCBuZWVkIHRvIHNldCBjbG9jayByYXRlIGZvciBjbG9jayBpcyBOVUxMLiBT
byBpdCBzaG91bGQgCmJlIGNoYW5nZWQgdG86CgorCWNsayA9IGRldm1fY2xrX2dldF9vcHRpb25h
bF9lbmFibGVkKGRldiwgImxwbyIpOworCWlmIChJU19FUlIoY2xrKSkgeworCQlyZXR1cm4gUFRS
X0VSUihjbGspOworCX0gZWxzZSBpZiAoY2xrKSB7CisJCWJyY21mX2RiZyhJTkZPLCAiZW5hYmxp
bmcgMzJrSHogY2xvY2tcbiIpOworCQljbGtfc2V0X3JhdGUoY2xrLCAzMjc2OCk7CisJfQoKPiAK
PiBUaGlzIHdheSB3ZSB3b24ndCBza2lwIG92ZXIgdGhlIGludGVycnVwdHMgaW5pdGlhbGl6YXRp
b24gYmVsb3cgaW4gY2FzZSB0aGUKPiBjbG9jayBpcyBhYnNlbnQuCj4gCj4+ICAgPiArCX0KPj4g
ICA+ICsJYnJjbWZfZGJnKElORk8sICJlbmFibGluZyAzMmtIeiBjbG9ja1xuIik7Cj4+ICAgPiAr
CWNsa19zZXRfcmF0ZShjbGssIDMyNzY4KTsKPj4KPj4gQXMgc2FpZCBhYm92ZSB0aGlzIHNob3Vs
ZCBiZSBtb3ZlZCBiZWZvcmUgdGhlIGlmLXN0YXRlbWVudDoKPj4gICA+IC0JaWYgKGJ1c190eXBl
ICE9IEJSQ01GX0JVU1RZUEVfU0RJTykKPj4gICA+IC0JCXJldHVybiAwOwo+Pj4KPj4+IC0JaXJx
ZiA9IGlycWRfZ2V0X3RyaWdnZXJfdHlwZShpcnFfZ2V0X2lycV9kYXRhKGlycSkpOwo+Pj4KPj4+
IC0Jc2Rpby0+b29iX2lycV9zdXBwb3J0ZWQgPSB0cnVlOwo+Pj4gLQlzZGlvLT5vb2JfaXJxX25y
ID0gaXJxOwo+Pj4gLQlzZGlvLT5vb2JfaXJxX2ZsYWdzID0gaXJxZjsKPj4+ICsJcmV0dXJuIDA7
Cj4+Pgo+Pj4gICAgfQo+IAo+IAoKLS0gCkJlc3QgUmVnYXJkcwpKYWNvYmUKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
