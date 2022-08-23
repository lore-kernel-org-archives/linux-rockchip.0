Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58D16C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 13:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NkplH+tLw4wVKteuI6wtJXfScIf33CFEJCVFeAQVUAU=; b=1QI0me7j78+hi8
	PyKmz6kgwzHQ3fr+6Ac6bbHOW1QRaV5oCc/ehcTCy997r2Z+IJAlQUy/gTB6w4xrDQuePZGZ09iV2
	Qp1VjJyJKE/fmeHjhpVkQVuFJQ3bqSQvgOL41dPT6pAPxe0oD4YTec4Y02SMeYjBUY9XAKjY6crjY
	qJypTnEmh8amXIp4cjs38R82Zj3vE4FOMyBURIZaqQkS+IEI8b0kM5x4VNF9+1QLLYCCWU1MnkE/l
	T810qFpNv0G1YNBxLR3zuoNeNqr4R7ZcPjZpAaHfj0N/flUIVrLH4ENhGW/DvV5Anx7KAtARXibgo
	k06FhBkcPGzMz80on7WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTyS-006K6k-2n; Tue, 23 Aug 2022 13:29:44 +0000
Received: from mail-mw2nam10olkn2064.outbound.protection.outlook.com ([40.92.42.64] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTyN-006K3S-OO
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 13:29:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MTTYTP/ur2cdJ3rj0+uU5olBTyQZIpY+jFNwJnMLtv8ASdp2wvZjDierorHiDlsg8MwAb11HpyHaIuoAvlAc1Kwm9Vt3rJAUSRswRfOwJ5/RyDwbb0GQ26Nr5BqQrka+SaAMwqmUw9feKAjrrxYxMKLsRrM6C0BYcLSovTzg71m4CijezADeRx6Gs5yzWj7eG5wJufbabg0Ig37CiR4maO0aBeNChLgzscqFHG+y4hHejYj7M5DrzK4znA+N2hTy9ofSMqC40D+A9jDzuP90kZt5Xj8+NNvcKLO933VbhFf5FipTEnGxImmULvZV2UfFVIGPdS6LKhmzPHgXQ261Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gzmN1Kl8ab4ixmsyfDq1tXpE6zB8F4vrpZB4rJv+WzA=;
 b=jdu7hnNvvgLAVRi/XjYPPvtdzrnqNM8wi3I90Q9L+gnNysXzcBKtmpdN7Wfz1wp6mKUGIguAVbH13YWy7COWQdeqWCI2L1eP/WlFGQ6hSGTQg3zPDxjZDxzvuEqkgrw3/OkWRRt54QaV3+6pvlZZ4+oOKOe09g6ia86Y+x3TEiIxQBQi8XBLbqdTw9fH4Ehhs8ndzwPfQWVhf8vStgD5kReQ2bXTSWdrbpizFNAmkomDPpbcFSv+1eijuv4siqST+uG+E1FemPi+VSI6OjogdUExnCOgJ7uSEWPMSSQJqh5pOhJIf1xcdVLmIxriDY+Slqr5dLqPJTZ483Y2BxnUEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gzmN1Kl8ab4ixmsyfDq1tXpE6zB8F4vrpZB4rJv+WzA=;
 b=JGIt8SWyn1lz4+qBGRb1dvUkhL8PqheSjA4v0p17N1VONucD6ky+koXaYmgSHndiJIEAmUfLmW2KJiMv0eicsPvVp5yGLa518MEn7svQZInXg4pe5WxucOdFHFT+gw3I/ya9vNyBE2r3Xsg6tTJ3qSs2ouQQ/hPWGFgIVHeh7+Ay2Mqp6qY00pCKZenaR9oWBGMdAtxmHsfHsLGYOYlN59CTmQKrZuaQUkncQ7ZNPW1F8ajgXmb2LDzsBcz29BeGidUxMJ4JznpU+Qb4jNVosOIxdpFzWR7HTg8k1WeUfpHNMVggxKzefugYP0s48K0+0fgI25VTBdOCMC2M0giJZQ==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by DM8PR06MB7797.namprd06.prod.outlook.com (2603:10b6:8:39::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.19; Tue, 23 Aug
 2022 13:29:35 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5546.022; Tue, 23 Aug 2022
 13:29:35 +0000
Date: Tue, 23 Aug 2022 08:29:32 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Chris Morgan <macroalpha82@gmail.com>,
	devicetree <devicetree@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Peter Geis <pgwipeout@gmail.com>, Chris Healy <cphealy@gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Message-ID:  <SN6PR06MB53427782CA5417F2FE3B9B32A5709@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
 <45694752.fMDQidcC6G@diego>
 <CAO_Mup+D7B+GJcUpy+JpaNFsxC=nxnNTYCdzkyT7qSdRS-JcSA@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAO_Mup+D7B+GJcUpy+JpaNFsxC=nxnNTYCdzkyT7qSdRS-JcSA@mail.gmail.com>
X-TMN: [Bnp8AgAEXU+MgUob/kOdbVulRe+CzlBI]
X-ClientProxiedBy: SN6PR2101CA0021.namprd21.prod.outlook.com
 (2603:10b6:805:106::31) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID:  <20220823132932.GA9933@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f95e2424-0183-47ad-db55-08da850b84ec
X-MS-TrafficTypeDiagnostic: DM8PR06MB7797:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	XAzO4Kwoc6q3EFdr/FVOdUt4Q+v1JOF6tEQJRfrMDECgnY2glZN8UFms/I0ikXHz2rxssH+VhRVV4W+s4ZFfp4Bp4MMxIvPONbACekdp/IwpJr4JjXWQIpbVn5Y1Zgdt3C4z4rf1xYjitiaQrmPRIwKlwTvLrF4+WQnfJkWmju/+zIiIffvg7zN6slLOmotQOyJftB6S3DPL77vNk5Y0dspDdtZe4dWiwv37jsvGb44nwX5GQx09I9iif+leJyh2y7L5R1oSeVQkbHczG/F2Nhg7gB+hwgDxdrg/VoS9YmrVTxyJRGqL1vOLqJgtl2T/5/CEWMR/X+D2rUf5q4nhFBZ6kLhmyaOOglir//6zceVsK2GrcUDfJXmbta4AXYO/e2HkrhHpZrkgQ93PfksXPpLZaqJcYFL+OVZhrA+2e0m3lyPLL5sR6DYreoS0gaT+T3/DWhnkoSS4PYiDUDVvsVr+atFSpKKN2FAO2JK/I645fuqFSkNm8/MMVMPtHGVfnQAtMlzNXtp5a7GwOKnB0YNX1X3SO0Buh/XUhVhsCG7UwScz+/00FCjDJ/6vziBwFENl18NNt0ql4Rj4OHoAXWBzXLf1xrkwiWUzl+HRCFVdd7uW+0Ttsj9oFx0u9hjw/FGK5hbd3mPBxnM2YnFdceo7nNiyXipr4TsqO5UIcYaD52lRo/tCaq7/68sbn672
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?d2V6eFBrNWFjWVJLUjZ0U2NnUHVIYjBmbEpZaDN4VWVVUGZyeWhCQSt5UGk2?=
 =?utf-8?B?VWdDQU13dDVFZ3NHRDVMRlRGNEh1WHBBbzR4aktUYW54WlQ0NUhGVks4Zkk5?=
 =?utf-8?B?L0pFemJNRnJ1T0FrZ1V2TXA1dDFldlFReklFTWJROTFVN1N3eE1rOFZlKzMy?=
 =?utf-8?B?RFBlSDZyY1dGblVCdVduMUI4Y2hXSU4zbEJwV0lVTlF6SXU4ZzVYMmV3UlhY?=
 =?utf-8?B?azhWQmwvNld5WnVrZnI4Z2l5Z0RTS3llNUMyWVZyYmRjNFpvZEZjR3N1OXRG?=
 =?utf-8?B?OERFcXBHa0d6NWxSSDk4U2pITi9lcllJa0wxZkRpNCs0TFRwRTVCMkREajQ0?=
 =?utf-8?B?cmVtUC9DdFNpMURxN0FyS0ZqUGxtaXdEVXVTazF0K3Yva0ZoTEZSNllodjJw?=
 =?utf-8?B?TFNkckNVbFhkYTRqeHlmSHJLVmlhQi94aUw3UzQ0bFpJZUVFbVEwaVNvRkNR?=
 =?utf-8?B?b2lXRXNnK3hDMExZaktXNTZEUUVORE1oemV6NEVRWFE4aS9jcnFDbngwKzRG?=
 =?utf-8?B?aVpHR3A3bnU0ZkhZbHZtVUJXbVNISDJUN0x4Q3Q0SXdidHpVeGdlVVhna1Y4?=
 =?utf-8?B?WWtHcDNWTFRFVXNCUTcxNkl3R05rWUhhUXZ2UGIvVWE2RllJYml0QXNYYVZt?=
 =?utf-8?B?blJXQmsrUm0wQlgyWm5tZ0FrUHZOTG5pd25HYXZQRVN6NXpJbWwzUTNPOHFU?=
 =?utf-8?B?NTdSaWtEcFJVejRNU21jOG1TVFA3OExrOFVmdGxJQUl2My8wdXJIYlhFVEI4?=
 =?utf-8?B?VjJOR0RlY3E5bWl0ZHJwOWVLOUg0UDhpa3lWSUozU3NCZThyZTNZUVlibEtz?=
 =?utf-8?B?WVNjMDVxeVdwZ3Rrc0FLTFFFb1E4eHBqREk0S2FnQVVRMHpKQS92OEpUSDBU?=
 =?utf-8?B?TDBmUFdMWU15SWV1OCthY1NVcXBkbzRVYVZjTjlGZXFEZ1ozRkp6UklYT1Ez?=
 =?utf-8?B?WlFMOUhUQnZJRWM4cTY4MFFIQm1wS3ViTjBUVTBSTkVCRDBDZUttdzFJT1BB?=
 =?utf-8?B?MVVzdUlQVFFmYUc1NStXdXlnUDc3UWRmWmRhVlVOTXk4MkRyNURQZHJnb1hl?=
 =?utf-8?B?alM1ZDY1amNEL1pzajR5K0NESjluR3dPMXN0NG90NTNvajU2NVJlZUppdDFP?=
 =?utf-8?B?Qnl2WDNDQ3lTb3JhTkNOL21LdldjVXVmSFF0Z3I0a1J3NVY5Q2pqb2gvZW1U?=
 =?utf-8?B?b3MyV2tsUnI5R0hTSW9JOTFob0p0WEhmTHVsSzUyQWR4cXBTU2xUdi9HWk5q?=
 =?utf-8?B?N2lFQklkdFg3Q2hoOG5kY3JFakJiK3JYaXFSeW1jYXVsWUtnczZUaGs0MDFV?=
 =?utf-8?B?ejNvNWE5S2NNdy9IdzhFbXAySEZpRGtPWlYrUm4ydVhCMXBjOExydmFWc1hB?=
 =?utf-8?B?UDV1ekptdDVxUlhENkNPNDNxZ2tNK3ZscVBvcmdyT1JSWlZ4a3hPMS9YcS9u?=
 =?utf-8?B?YkxSendFYmE3bUk2SXRaM3VwQjN3NkpSZjJUMXlmZ1cxWVRvYmNrNktCM2M4?=
 =?utf-8?B?YlFZKy9uOWJiSURvZmRyOWdVVHJVSkxMbEs2R2doYUs3TmV4Ulk1b2NmbjZ2?=
 =?utf-8?B?eTBZckt2TG4vSUpyckhOc0VKUWZDMDlmejNEcnlvTWhOTmNWZHQ3WkQ0MUlN?=
 =?utf-8?B?TW5EQkZrZCtqL0Ixb1VhM3MwRDhwVDBFcjlqRDZxd2tscXRSNGFEaFNFdytD?=
 =?utf-8?B?SHZOd2wvQ1l5NTJrV1hRcU1ZZnhFZEhqYkM4ajcwMEk5Q2lwcUttU2NRPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: f95e2424-0183-47ad-db55-08da850b84ec
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 13:29:35.1970
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR06MB7797
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_062939_845855_21E23533 
X-CRM114-Status: GOOD (  40.00  )
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

T24gVHVlLCBBdWcgMjMsIDIwMjIgYXQgMDI6Mjg6MjdQTSArMDIwMCwgTWF5YSBNYXR1c3pjenlr
IHdyb3RlOgo+IHd0LiwgMjMgc2llIDIwMjIgbyAxNDoxNiBIZWlrbyBTdMO8Ym5lciA8aGVpa29A
c250ZWNoLmRlPiBuYXBpc2HFgihhKToKPiA+Cj4gPiBBbSBTYW1zdGFnLCAyMC4gQXVndXN0IDIw
MjIsIDEwOjQwOjM0IENFU1Qgc2NocmllYiBNYXlhIE1hdHVzemN6eWs6Cj4gPiA+IHNvYi4sIDIw
IHNpZSAyMDIyIG8gMDA6MjYgQ2hyaXMgTW9yZ2FuIDxtYWNyb2FscGhhODJAZ21haWwuY29tPiBu
YXBpc2HFgihhKToKPiA+ID4gPgo+ID4gPiA+IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3Jn
YW5AaG90bWFpbC5jb20+Cj4gPgo+ID4gWy4uLl0KPiA+Cj4gPiA+ID4gKyZncGlvX2tleXNfY29u
dHJvbCB7Cj4gPiA+ID4gKyAgICAgICBidXR0b24tNSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAg
IGdwaW9zID0gPCZncGlvMyBSS19QQTUgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ID4gPiArICAgICAg
ICAgICAgICAgbGFiZWwgPSAiRFBBRC1MRUZUIjsKPiA+ID4gPiArICAgICAgICAgICAgICAgbGlu
dXgsY29kZSA9IDxCVE5fRFBBRF9SSUdIVD47Cj4gPiA+ID4gKyAgICAgICB9Owo+ID4gPiA+ICsK
PiA+ID4gPiArICAgICAgIGJ1dHRvbi02IHsKPiA+ID4gPiArICAgICAgICAgICAgICAgZ3Bpb3Mg
PSA8JmdwaW8zIFJLX1BBNiBHUElPX0FDVElWRV9MT1c+Owo+ID4gPiA+ICsgICAgICAgICAgICAg
ICBsYWJlbCA9ICJEUEFELVJJR0hUIjsKPiA+ID4gPiArICAgICAgICAgICAgICAgbGludXgsY29k
ZSA9IDxCVE5fRFBBRF9MRUZUPjsKPiA+ID4gPiArICAgICAgIH07Cj4gPiA+ID4gKwo+ID4gPiA+
ICsgICAgICAgYnV0dG9uLTkgewo+ID4gPiA+ICsgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3Bp
bzMgUktfUEIzIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIGxhYmVs
ID0gIlRSIjsKPiA+ID4gPiArICAgICAgICAgICAgICAgbGludXgsY29kZSA9IDxCVE5fVFIyPjsK
PiA+ID4gPiArICAgICAgIH07Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgICAgYnV0dG9uLTEwIHsK
PiA+ID4gPiArICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8zIFJLX1BCNCBHUElPX0FDVElW
RV9MT1c+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICBsYWJlbCA9ICJUUjIiOwo+ID4gPiA+ICsg
ICAgICAgICAgICAgICBsaW51eCxjb2RlID0gPEJUTl9UUj47Cj4gPiA+ID4gKyAgICAgICB9Owo+
ID4gPiA+ICsKPiA+ID4gPiArICAgICAgIGJ1dHRvbi0xNCB7Cj4gPiA+ID4gKyAgICAgICAgICAg
ICAgIGdwaW9zID0gPCZncGlvMyBSS19QQzEgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ID4gPiArICAg
ICAgICAgICAgICAgbGFiZWwgPSAiV0VTVCI7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIGxpbnV4
LGNvZGUgPSA8QlROX1dFU1Q+Owo+ID4gPiA+ICsgICAgICAgfTsKPiA+ID4gPiArCj4gPiA+ID4g
KyAgICAgICBidXR0b24tMTUgewo+ID4gPiBJIGRvbid0IHRoaW5rIGp1c3QgaGF2aW5nIHRoZSBi
dXR0b25zIG51bWJlcmVkIHNlcXVlbnRpYWxseQo+ID4gPiBpcyB0aGUgYmVzdCBjb3Vyc2Ugb2Yg
YWN0aW9uLCBidXQgdGhpcyBwcmVzZXJ2ZXMgdGhlIEdQSU8KPiA+ID4gb3JkZXJpbmcgd2hpbGUg
b3RoZXIgb3B0aW9ucyBkb24ndC4uLgo+ID4gPiBJJ20gdGhpbmtpbmcgYWJvdXQgZWl0aGVyIGhh
dmluZyB0aGVtIG5hbWVkIGFmdGVyCj4gPiA+IHRoZWlyIGZ1bmN0aW9uLCBvciBuYW1lZCBhZnRl
ciB3aGF0IHRoZXkncmUgbGFiZWxlZAo+ID4gPiBvbiB0aGUgUENCIG9mIHRoZSBkZXZpY2UuCj4g
PiA+IENhbiBhbnkgb2YgRFQgbWFpbnRhaW5lcnMgZ2l2ZSB0aGVpciBpbnB1dCBvbiB0aGlzPwo+
ID4KPiA+IFBlcnNvbmFsbHksIEknZCBwcmVmZXIgZ29pbmcgd2l0aCB3aGF0IGlzIG9uIHRoZSBQ
Q0IKPiA+IG9yIGRlZmluZWQgaW4gdGhlIHNjaGVtYXRpY3MuCj4gPgo+ID4gVGhpcyBtYWtlcyBp
dCB3YXkgZWFzaWVyIGZpbmRpbmcgZHQtZWxlbWVudHMgZWl0aGVyIGluCj4gPiBzY2hlbWF0aWNz
IG9yIG9uIHRoZSBib2FyZCBpdHNlbGYuCj4gPgo+ID4gVGhpcyBpcyB0cnVlIGZvciBhbGwgbmFt
ZXMgOy0pCj4gPgo+ID4gT24gdGhlIE9kcm9pZC1HbyBmb3IgZXhhbXBsZSBidXR0b25zIGFyZSBy
ZWFsbHkgbmFtZWQKPiA+IHN3MSwgc3cyLCAuLi4gc28gdGhlIGR0LW5hbWUgYmVjYW1lIGJ1dHRv
bi1zdzEgZXRjLgo+IEkgZGlzYXNzZW1ibGVkIG15IGRldmljZSBhbmQgRFBBRCBidXR0b25zIG9u
IHBjYiBoYXZlCj4gc2lsa3NjcmVlbmVkIGxhYmVscyBVL0QvTC9SLCBmb3IgdXAvZG93bi9sZWZ0
L3JpZ2h0LAo+IFNlbGVjdCBhbmQgc3RhcnQgYnV0dG9ucyBhcmUgbmFtZWQgU0VMRUNUIGFuZCBT
VEFSVCwKPiBhY3Rpb24gYnV0dG9ucyBhcmUgbmFtZWQgQS9CL1gvWSBmb3IgRWFzdCwgU291dGgs
Cj4gTm9ydGggYW5kIFdlc3QgYnV0dG9ucywgVGhlICJGIiBidXR0b24gb24gZnJvbnQgb2YgdGhl
Cj4gZGV2aWNlIGhhcyBGIGxhYmVsLCBidXQgb24gUENCIGl0J3MgIlJFQ09WRVJZIi4KPiBBbmQg
VFIvVEwvVFIyL1RMMiBhcmUgbmFtZWQgUjEvTDEvUjIvTDIgb24gdGhlaXIKPiB0ZXN0IHBvaW50
cywgSSB3YXNuJ3QgYWJsZSB0byBmaW5kIGEgc2lsa3NjcmVlbiBsYWJlbCBhcwo+IHRoZXkgYXJl
IG9uIHRoZWlyIG93biBQQ0JzLgo+IAo+IFZvbHVtZSBidXR0b25zIGFyZSBTVzMgZm9yIFZvbHVt
ZSB1cCBhbmQgU1cyIGZvcgo+IFZvbHVtZSBkb3duLgoKVGhhbmtzIE1heWEsIHRoaXMgaXMgZm9y
IHRoZSAzNTNQIGNvcnJlY3Q/IEkgd2FzIGxvb2tpbmcgYXQgbXkgc3BhcmUKNTAzIGJvYXJkIHRv
IGdldCB0aGUgbGFiZWxzIGVhcmxpZXIuIE9mIGNvdXJzZSwgdGhpcyBicmluZ3MgdXAgYW5vdGhl
cgppbnRlcnN0aW5nIHBvaW50Li4uIHRoZSBsYWJlbHMgYXJlIGRpZmZlcmVudCBvbiBlYWNoIGJv
YXJkIChhdCBsZWFzdApmb3IgdGhlIFIvTCBidXR0b25zLCB0aGUgdm9sdW1lIGJ1dHRvbnMsIGFu
ZCB0aGUgcmVjb3ZlcnkgYnV0dG9uIHdoaWNoCmlzIHN3MTEgb24gdGhlIDUwMykuIERvZXMgdGhh
dCB3YXJyYW50IHNlcGFyYXRpbmcgdGhlbSBvdXQgZGVzcGl0ZSB0aGUKR1BJT3MgdGhlbXNlbHZl
cyBiZWluZyBpZGVudGljYWw/Cgo+IAo+ID4KPiA+Cj4gPiBbLi4uXQo+ID4KPiA+ID4gPiArJnBp
bmN0cmwgewo+ID4gPiA+ICsgICAgICAgZ3Bpby1sY2Qgewo+ID4gPiA+ICsgICAgICAgICAgICAg
ICBsY2RfcnN0OiBsY2QtcnN0IHsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICByb2Nr
Y2hpcCxwaW5zID0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDw0IFJL
X1BBMCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiA+ID4gPiArICAgICAgICAgICAg
ICAgfTsKPiA+ID4gSXMgaXQgdW51c2VkPyBJZiBpdCBpcyBJIHRoaW5rIGl0IHdvdWxkIGJlbG9u
ZyB0byBwYXRjaCB0aGF0IHdvdWxkIGFkZAo+ID4gPiBwYW5lbCB0byB0aGlzIGRldmljZQo+ID4K
PiA+IEkgdGVuZCB0byBhZ3JlZSA6LSkgLgo+ID4KPiA+ID4gPiArLyB7Cj4gPiA+ID4gKyAgICAg
ICBjaG9zZW46IGNob3NlbiB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIHN0ZG91dC1wYXRoID0g
InNlcmlhbDI6MTUwMDAwMG44IjsKPiA+ID4gSSdtIHdvbmRlcmluZyBpZiB0aGlzIHNob3VsZCBi
ZSBjaGFuZ2VkIHRvIDExNTIwMCBiYXVkIHJhdGUKPiA+ID4gc28gaXQgd291bGQgZW5kIHVwIHRo
ZSBzYW1lIGFzIG9uIG90aGVyIGRldmljZXMsCj4gPiA+IGxpa2UgT2Ryb2lkIEdvIEFkdmFuY2Uu
Cj4gPgo+ID4gVGhhdCBoZWF2aWx5IGRlcGVuZHMgb24gdGhlIGJvb3Rsb2FkZXIuIEkuZS4gc3Bl
ZWRzIHNob3VsZCBiZQo+ID4gY29uc2lzdGVudCBiZXR3ZWVuIHRoZW0uCj4gPgo+ID4gQSBsb3Qg
b2YgY2hlYXBlciB1c2ItdHRsIGFkYXB0ZXJzIHRlbmQgdG8gaGF2ZSBkaWZmaWN1bHRpZXMgd2l0
aCB0aGUKPiA+IGZhc3RlciBzcGVlZHMsIHNvIDExNTIwMCBpcyBlYXNpZXIgZm9yIHRob3NlLCBi
dXQgeW91IG5lZWQgdS1ib290Cj4gPiB0byBhbHNvIHVzZSB0aGlzIHNwZWVkLgo+IFllYWggSSd2
ZSBoYWQgdHJvdWJsZXMgZmluZGluZyBhbiBhZGFwdGVyIHRoYXQgY291bGQgZG8gdGhlIGRlZmF1
bHQKPiAxNTAwMDAwIGJhdWQgcmF0ZS4KPiAKPiA+Cj4gPgo+ID4gT24gdGhlIE9kcm9pZC1HbyBJ
IGRpZCBib3RoIHRoZSB1LWJvb3QgYW5kIGtlcm5lbCBwYXJ0cywgc28gY291bGQKPiA+IG1ha2Ug
c3VyZSB0aG9zZSBtYXRjaGVkLgo+IEkgdGhpbmsgd2UgY2FuIGp1c3QgdXNlIDExNTIwMCBiYXVk
IHJhdGUsIGFzIE9kcm9pZCBHbyBBZHZhbmNlCj4gYWxyZWFkeSB1c2VzIGl0LCBhbmQgaXQncyBs
aWtlbHkgdGhhdCBpdCdzIHRoZSBmaXJzdCB0aGluZyBwZW9wbGUgd291bGQKPiB0cnkuCj4gCj4g
Pgo+ID4KPiA+IFsuLi5dCj4gPgo+ID4gPiA+ICsgICAgICAgYWRjX2tleXM6IGFkYy1rZXlzIHsK
PiA+ID4gPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJhZGMta2V5cyI7Cj4gPiA+ID4g
KyAgICAgICAgICAgICAgIGlvLWNoYW5uZWxzID0gPCZzYXJhZGMgMD47Cj4gPiA+ID4gKyAgICAg
ICAgICAgICAgIGlvLWNoYW5uZWwtbmFtZXMgPSAiYnV0dG9ucyI7Cj4gPiA+ID4gKyAgICAgICAg
ICAgICAgIGtleXVwLXRocmVzaG9sZC1taWNyb3ZvbHQgPSA8MTgwMDAwMD47Cj4gPiA+ID4gKyAg
ICAgICAgICAgICAgIHBvbGwtaW50ZXJ2YWwgPSA8NjA+Owo+ID4gPiA+ICsKPiA+ID4gPiArICAg
ICAgICAgICAgICAgLyoKPiA+ID4gPiArICAgICAgICAgICAgICAgICogQnV0dG9uIGlzIG1hcHBl
ZCB0byBGIGtleSBpbiBCU1Aga2VybmVsLCBidXQKPiA+ID4gPiArICAgICAgICAgICAgICAgICog
YWNjb3JkaW5nIHRvIGlucHV0IGd1aWRlbGluZXMgaXQgc2hvdWxkIGJlIG1vZGUuCj4gPiA+ID4g
KyAgICAgICAgICAgICAgICAqLwo+ID4gPiA+ICsgICAgICAgICAgICAgICBidXR0b24tbW9kZSB7
Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiTU9ERSI7Cj4gPiA+IFRo
ZSBwaHlzaWNhbCBidXR0b24gaXMgbGFiZWxlZCAiRiIsIHNvIG1heWJlIHRoaXMgc2hvdWxkIGJl
ICJGIgo+ID4gPiB0b28/Cj4gPgo+ID4gc2FtZSBjb21tZW50IGFib3V0IGlkZWFsbHkgdXNpbmcg
Ym9hcmQvc2NoZW1hdGljcyBuYW1lcy4KPiA+IEJ1dCB0aGVuIGFnYWluLCBJIHdvbid0IG1ha2Ug
YSBmdXNzIGlmIGl0J3MgbmFtZWQgZGlmZmVyZW50bHkgOi0pCj4gU28gSSBndWVzcyBpdCdkIGJl
ICJidG4tcmVjb3ZlcnkiIGFzIGl0J3MgbGFiZWxlZCAiUkVDT1ZFUlkiCj4gb24gUENCLCB3aXRo
ICJGIiBsYWJlbCBhcyBpdCdzIHdoYXQncyB0aGUgdXNlciBzZWVzPwo+IAo+IEJlc3QgUmVnYXJk
cywKPiBNYXlhIE1hdHVzemN6eWsKPiAKPiA+Cj4gPgo+ID4gSGVpa28KPiA+Cj4gPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
