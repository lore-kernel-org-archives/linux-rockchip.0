Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7743C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kyQp56CZNipEfRnLdWZeNnTdrbqNUmQVgpSI/T8mV+E=; b=055AJyaTZqhrFn
	NB9dK8siDfz5/X0Joi97m9tpMGMW5To20IglquL4GLmR5yPaHXEO2/IkTpmseDmXxEl6E0FTQQj05
	T5ObFaq9BJHXPjMshkOIe8ftTE1A0V+5HT/okNPVFIs4RlMpqkFHelSzkfNWER7ScHTCqWZTaFET2
	ZJmWj/jtGAsr/3eHqh0MLUNU7f+R/NhM4dMbhp/rah1hFSaaErK2CMDPQ2oVxx/uadGi3eeLt2999
	7Z0l7z+E4D1ihRob78fA1SrvmuuVwrmNM1TDPgkZFf9Hn92P9pIdMk2ZiLzwikngDTiZyvohDKKJf
	cRTJ26PKXWMAFyGyRIWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTE6-005y3q-6O; Tue, 23 Aug 2022 12:41:50 +0000
Received: from mail-bn7nam10olkn2075.outbound.protection.outlook.com ([40.92.40.75] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT85-005vAN-Jp
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 12:35:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kDT5Or4We2sKpTJemuu3gk7LPv6YdEu4CGIn1D4ztnpSthPKEGEstwVyPKSDrWLdj86c3HhePIMAqQ8m8bsozZOlLsYpQC5DWSdG90m0YC+bTzszLhY/+LdUW8V3ez7KzCXwQACc7eRwjIoJrR1lZHUobKBlGrsu050kBvqMPUgbBazFl0K/y/B2+FOLirfShwD64z7CMAqGd9q/SKt4uDeChjvX14LyQlbJ0Pq0ReMyqQO3R0Pl6JfkewSdN0uzxl6omQ9EZwQp7Uwlddil1Sj8V+m/CuM5I8/aTIbORuBSP7Zrj0KMOIADneX8I6VAlR7pAYPvVDsXF8GhBsOBQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iCERFIL5N3LFljk4hX2TjAGmNpjZ8PwxI2dZvKkw1y8=;
 b=lsUfTOYIJrylfoSEVBAhmJ38x2k/o9qwmZXBh2mOKWU2Ounz+XUqHUgEBeryTXUWpjuCfDGMBlx1/Ypv1/rJ8L4WxRl7L9J7pOUUC7RSRrNmSEyEqTDUhO6eNvfCj11BNiiF1861zBDLSdY+TwTr3QRmUb0/3pRACOssE32qH6D5a29H9zlXkKkDV/slVFRK2Ws3ZYr0MEbMswOtCKGbTHQ7s+prUZe9/HxaRKO5JZK1+KSwEPQR8X2Sg+ZU1RNy4hjDoAYefR8g/JXodgqltkggEb3EEEKAbfNJ/+RzIald4XFuGAPsusstrScQjNeG+gsN2X3/RtmlUbyC4at+vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iCERFIL5N3LFljk4hX2TjAGmNpjZ8PwxI2dZvKkw1y8=;
 b=eboKljoU1Ej9rtF4Qz9/fJgBTtvFFtrF4G7PllaDyXacY5vWxDG2X8AQ899RXJ/+RNv4reQjL9qirEaB7Lm8i4YhM3j1vJ9x2BEs7KcJOW9aIln++w2x6X5//xoAXoWIhZGQeFRIGnKSacTUIXb01nEp6JCDy2BfOfyZu/0owZ3Evbq4qaFB2NwzdNhCt/IKeqFNAWZJSmxRwmHCaHHf2zSASeNjoMDg856WOHYkHuRju2WRhDqMtsMW3R/j/+gC4/m5vxyVof7KOSBr0y62CQ2W2jcTFYcmSJ6XxNCTaaE8S7x746lHufXmEwTWnHZeaF8la0ge76AI7VAOD9iljw==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by BL0PR06MB4401.namprd06.prod.outlook.com (2603:10b6:208:4c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Tue, 23 Aug
 2022 12:35:32 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5546.022; Tue, 23 Aug 2022
 12:35:32 +0000
Date: Tue, 23 Aug 2022 07:35:29 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree <devicetree@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Peter Geis <pgwipeout@gmail.com>, Chris Healy <cphealy@gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Message-ID:  <SN6PR06MB534234586EE8AE8C708B4150A5709@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
 <45694752.fMDQidcC6G@diego>
Content-Disposition: inline
In-Reply-To: <45694752.fMDQidcC6G@diego>
X-TMN: [fn/nT76ss9j/s8H9cWl9cdiHKpUH+AMY]
X-ClientProxiedBy: SN6PR2101CA0010.namprd21.prod.outlook.com
 (2603:10b6:805:106::20) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID:  <20220823123529.GA9857@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d7498571-e57b-4d78-dd5f-08da8503f82a
X-MS-TrafficTypeDiagnostic: BL0PR06MB4401:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	Osax65BwOfQagDHCqtKzljTvfVNdoWC+ok2qp71XTvilOPzb2Gr7+2P+lNAbqjs9l2Lr23Bzvfg99e8KHnxzos4JcmGiz85BlrNz4o3IwWnK85C6E0R7IhRTufwhAgVlLvNqvTa/v7c9sPF47kwkqOcLf3kGkceACC/PiDelFtSKwl4zFLiy2B+NAiNd78PnZ9QOEsT5x2G4bwbFZqnBqIgMbLAv0hEaAeuJABkAR/DROVuBNOivnt6tGNCs6WEq+1QdY4TEgxrLmNtpRnSnWbWBM80GZb5sw7PkMFzJv7CIQtNr91oGCKRB8OeULmqjQAAMYrukCUIXRlinbM2rGQNmgKhJd9QXJfiWcXOZmPJRLGqOUp8z2IzBazZgvylr3bI233v9/hbZ9sUwBZYTYWf5gCYqD0N1ooFuHB1xPNZbdTZ1t0ovip9mMfL6OxL9rGthehWIGR6UTnbL87g3S225zXIMeqp+Cjb513IQjrc9s8VtxDnqU/UaNpNa0ki7LRHX7KcyBUNcWyLtnNJxcOyKb/Ga4i2VQEq8wn6ld1vE92M0Ne0AuSMtmso6Rxjuwz9Nt1z8CtGzQ3ShDkf7isRw74we+5zXbrUbm2EQG6zSX7cAL2BNF0uQ3zHLYo4vncGQunE0ASwWS+H0gTWJuwgZQWczY4diINGd7DoXCNsvndtNp9v6ajU7nvqNUZvK
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?YW5sWk5HaytqSSswaWwzeExVayt1UkdqZDZKbndOeEpmeXNBU2YwWDZpcmRI?=
 =?utf-8?B?Z2l0M0hIK211WVBqU01KK2U0dnIwakxvWC81eTE0M1RCZEdzS09PYnJzRDNT?=
 =?utf-8?B?M0JmckVMNXJmaUZpLzJpbW1XSStYSkF0cWhNR092NmRoTXhwUTlJT3pUTy9E?=
 =?utf-8?B?ZGRySFc5dEorZVRsNGtDQmdNVnNHK1IvRzQ4MGdTRTI1d09DQnplT2pQenhz?=
 =?utf-8?B?aVdaampjeUtxNGFMS2doZmVhVEtkRUNuSjE1OWxGc2ZYUlJoSEw1ak14bnhx?=
 =?utf-8?B?NS9OcXhFN0NjYlhFNmpsNzBZcE5NWW1VWC9TUmI4MzVGMWtUeWZlL1RpWWN5?=
 =?utf-8?B?dnlIWjJLZDlQTGQzcy9CS0FCN2dSb3dNd0l5ODUyTGZoVHNpOEh1RWsxaWdG?=
 =?utf-8?B?VGNsSlFDd0grZUVmM3Z2RXQxTXdwZm5MQThjaHJIT0Nuem0vYll4VW9XM244?=
 =?utf-8?B?TGFSRko5T2RwdmxSUTRXZkc3MkhDV1FQY0IxbVZac2ZZeVdoeWVhSlNpc0Nt?=
 =?utf-8?B?U3NtYUFXNHJzSi9FdWxLT3BXbUZPa2srQ0REVTYrL3NnY1h4THYwc2xQTmQ2?=
 =?utf-8?B?cjA0WUxEM2JHWWdYdFQ2eC8vWUZrOGV2Yi9yc0xEWkRGbmI4TjVidDFYV2I2?=
 =?utf-8?B?SS96cmpPTlhXMDFMLzZpanV2dDdXajYva3d6UFd6RWY4UDRXb21lT01CTDJM?=
 =?utf-8?B?cWU2VzRZbjE4a1hoZ0t6OVFLc2laNWt3OVkrdWE2d1hLekwvdXBzZENkY2ZN?=
 =?utf-8?B?TjhvRkhKanQ0cm5LeG91SnpEN2ZPNDlxdWV4d1dENG1Gd1pZYnBVUG5nelcr?=
 =?utf-8?B?emRFb2NZa0wzR0hmM21IL0g2blhvRTJBSFN2ai9ESWMyN3YrVnF5Z0txeFBj?=
 =?utf-8?B?Y2VPbDAvbWpJVG0zcWE4K1Nld0RvQ1p0YVRuOEk0eTYzbTVENThpQlFoSW1R?=
 =?utf-8?B?TEptZTAzM2o4cTVUTVVwRURIdGtONDRHRFMvNVk3NG9qcHB5bEorZHlmL1Q1?=
 =?utf-8?B?Nk1PV1JBb0pCSTEwVE9rcVFPSUhXZGJZZlFLNVlUaXFUaURiM2dveFhxQmlu?=
 =?utf-8?B?S0VKVmtNSC9DOTVzM1ZDRlBNd0huUUFZVlRLczExczR6dElvNU9MV2ZTbytm?=
 =?utf-8?B?NFp3bEJnVTZIZ1ZOQm52WUhyUnpyUnNKbXFuVFU4Q3A0SnAxQ0lDKzFFYkdi?=
 =?utf-8?B?cUlkYjlRK0UwdkJZdDZWVUxxNVB5djFRa292enFQZWVOUXhwa2tacWdOS3NI?=
 =?utf-8?B?Y29xUjR2Yy9vVG5RbDlUQ1NNd0RWVjdmK1pNU1FqUzlhandRM1NDa1Yvc05l?=
 =?utf-8?B?ZkFzVWFmRVRzQmZKc3ZrZnF1aEhRMVlFdUJBbXZwT3FyS3QrVTBtd1BFQ0J4?=
 =?utf-8?B?Z01aNjkrN1VjL3hubkdwL0VFcmx2Y0lpQ0lVdTFaZ0ZiRlY2YzQ5TGVFT3N2?=
 =?utf-8?B?OWlQOVczbkRCRmF4bUpmMzFPWHcxMGFnN3NjSzNxdlVvby80a2ZnNVZoamds?=
 =?utf-8?B?RTN0eEpiK0lKK1BJY1VsQmtITFRkdzh6NUFzQ2doTHVQaklnbnBHRHUzUXU0?=
 =?utf-8?B?Q0pJWFZJSFFjSFBia2FvQmhOVmlpSUVsY2U5NTVHT1UzS1EwbFBWczhlTHY4?=
 =?utf-8?B?NU9vS2FPSUtvQjYwMGdBdTVMZUM2WkJPQ2Vwd3h5RzJQdFAzU0pQRDUxMzRP?=
 =?utf-8?B?a29ic290dVE1cGgwclRGOTdGVU5OUVNCSmxwR1J4RVRHc2V5TysrU2ZRPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: d7498571-e57b-4d78-dd5f-08da8503f82a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 12:35:32.6925
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR06MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_053537_821953_68928777 
X-CRM114-Status: GOOD (  34.33  )
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

T24gVHVlLCBBdWcgMjMsIDIwMjIgYXQgMDI6MTY6MDNQTSArMDIwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gQW0gU2Ftc3RhZywgMjAuIEF1Z3VzdCAyMDIyLCAxMDo0MDozNCBDRVNUIHNjaHJp
ZWIgTWF5YSBNYXR1c3pjenlrOgo+ID4gc29iLiwgMjAgc2llIDIwMjIgbyAwMDoyNiBDaHJpcyBN
b3JnYW4gPG1hY3JvYWxwaGE4MkBnbWFpbC5jb20+IG5hcGlzYcWCKGEpOgo+ID4gPgo+ID4gPiBG
cm9tOiBDaHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IFsuLi5dCj4g
Cj4gPiA+ICsmZ3Bpb19rZXlzX2NvbnRyb2wgewo+ID4gPiArICAgICAgIGJ1dHRvbi01IHsKPiA+
ID4gKyAgICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMyBSS19QQTUgR1BJT19BQ1RJVkVfTE9X
PjsKPiA+ID4gKyAgICAgICAgICAgICAgIGxhYmVsID0gIkRQQUQtTEVGVCI7Cj4gPiA+ICsgICAg
ICAgICAgICAgICBsaW51eCxjb2RlID0gPEJUTl9EUEFEX1JJR0hUPjsKPiA+ID4gKyAgICAgICB9
Owo+ID4gPiArCj4gPiA+ICsgICAgICAgYnV0dG9uLTYgewo+ID4gPiArICAgICAgICAgICAgICAg
Z3Bpb3MgPSA8JmdwaW8zIFJLX1BBNiBHUElPX0FDVElWRV9MT1c+Owo+ID4gPiArICAgICAgICAg
ICAgICAgbGFiZWwgPSAiRFBBRC1SSUdIVCI7Cj4gPiA+ICsgICAgICAgICAgICAgICBsaW51eCxj
b2RlID0gPEJUTl9EUEFEX0xFRlQ+Owo+ID4gPiArICAgICAgIH07Cj4gPiA+ICsKPiA+ID4gKyAg
ICAgICBidXR0b24tOSB7Cj4gPiA+ICsgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzMgUktf
UEIzIEdQSU9fQUNUSVZFX0xPVz47Cj4gPiA+ICsgICAgICAgICAgICAgICBsYWJlbCA9ICJUUiI7
Cj4gPiA+ICsgICAgICAgICAgICAgICBsaW51eCxjb2RlID0gPEJUTl9UUjI+Owo+ID4gPiArICAg
ICAgIH07Cj4gPiA+ICsKPiA+ID4gKyAgICAgICBidXR0b24tMTAgewo+ID4gPiArICAgICAgICAg
ICAgICAgZ3Bpb3MgPSA8JmdwaW8zIFJLX1BCNCBHUElPX0FDVElWRV9MT1c+Owo+ID4gPiArICAg
ICAgICAgICAgICAgbGFiZWwgPSAiVFIyIjsKPiA+ID4gKyAgICAgICAgICAgICAgIGxpbnV4LGNv
ZGUgPSA8QlROX1RSPjsKPiA+ID4gKyAgICAgICB9Owo+ID4gPiArCj4gPiA+ICsgICAgICAgYnV0
dG9uLTE0IHsKPiA+ID4gKyAgICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMyBSS19QQzEgR1BJ
T19BQ1RJVkVfTE9XPjsKPiA+ID4gKyAgICAgICAgICAgICAgIGxhYmVsID0gIldFU1QiOwo+ID4g
PiArICAgICAgICAgICAgICAgbGludXgsY29kZSA9IDxCVE5fV0VTVD47Cj4gPiA+ICsgICAgICAg
fTsKPiA+ID4gKwo+ID4gPiArICAgICAgIGJ1dHRvbi0xNSB7Cj4gPiBJIGRvbid0IHRoaW5rIGp1
c3QgaGF2aW5nIHRoZSBidXR0b25zIG51bWJlcmVkIHNlcXVlbnRpYWxseQo+ID4gaXMgdGhlIGJl
c3QgY291cnNlIG9mIGFjdGlvbiwgYnV0IHRoaXMgcHJlc2VydmVzIHRoZSBHUElPCj4gPiBvcmRl
cmluZyB3aGlsZSBvdGhlciBvcHRpb25zIGRvbid0Li4uCj4gPiBJJ20gdGhpbmtpbmcgYWJvdXQg
ZWl0aGVyIGhhdmluZyB0aGVtIG5hbWVkIGFmdGVyCj4gPiB0aGVpciBmdW5jdGlvbiwgb3IgbmFt
ZWQgYWZ0ZXIgd2hhdCB0aGV5J3JlIGxhYmVsZWQKPiA+IG9uIHRoZSBQQ0Igb2YgdGhlIGRldmlj
ZS4KPiA+IENhbiBhbnkgb2YgRFQgbWFpbnRhaW5lcnMgZ2l2ZSB0aGVpciBpbnB1dCBvbiB0aGlz
Pwo+IAo+IFBlcnNvbmFsbHksIEknZCBwcmVmZXIgZ29pbmcgd2l0aCB3aGF0IGlzIG9uIHRoZSBQ
Q0IKPiBvciBkZWZpbmVkIGluIHRoZSBzY2hlbWF0aWNzLgo+IAo+IFRoaXMgbWFrZXMgaXQgd2F5
IGVhc2llciBmaW5kaW5nIGR0LWVsZW1lbnRzIGVpdGhlciBpbgo+IHNjaGVtYXRpY3Mgb3Igb24g
dGhlIGJvYXJkIGl0c2VsZi4KPiAKPiBUaGlzIGlzIHRydWUgZm9yIGFsbCBuYW1lcyA7LSkKPiAK
PiBPbiB0aGUgT2Ryb2lkLUdvIGZvciBleGFtcGxlIGJ1dHRvbnMgYXJlIHJlYWxseSBuYW1lZAo+
IHN3MSwgc3cyLCAuLi4gc28gdGhlIGR0LW5hbWUgYmVjYW1lIGJ1dHRvbi1zdzEgZXRjLgoKVGhl
cmUgYXJlIG5vIHNjaGVtYXRpY3MsIHNvIEknbGwgc2VlIGlmIEkgY2FuIGxvY2F0ZSBuYW1lcyBv
biB0aGUgYm9hcmRzLgpJZiBJIGNhbiwgSSdsbCByZW5hbWUgdGhlc2UsIGFuZCBpZiBub3QgbGVh
dmUgdGhlbSBpbiBudW1lcmljYWwgb3JkZXIuCldpbGwgdGhhdCB3b3JrPwoKPiAKPiAKPiBbLi4u
XQo+IAo+ID4gPiArJnBpbmN0cmwgewo+ID4gPiArICAgICAgIGdwaW8tbGNkIHsKPiA+ID4gKyAg
ICAgICAgICAgICAgIGxjZF9yc3Q6IGxjZC1yc3Qgewo+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICByb2NrY2hpcCxwaW5zID0KPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8NCBSS19QQTAgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gPiA+ICsgICAgICAg
ICAgICAgICB9Owo+ID4gSXMgaXQgdW51c2VkPyBJZiBpdCBpcyBJIHRoaW5rIGl0IHdvdWxkIGJl
bG9uZyB0byBwYXRjaCB0aGF0IHdvdWxkIGFkZAo+ID4gcGFuZWwgdG8gdGhpcyBkZXZpY2UKPiAK
PiBJIHRlbmQgdG8gYWdyZWUgOi0pIC4KCk9rYXksIHdpbGwgcmVtb3ZlLgoKPiAKPiA+ID4gKy8g
ewo+ID4gPiArICAgICAgIGNob3NlbjogY2hvc2VuIHsKPiA+ID4gKyAgICAgICAgICAgICAgIHN0
ZG91dC1wYXRoID0gInNlcmlhbDI6MTUwMDAwMG44IjsKPiA+IEknbSB3b25kZXJpbmcgaWYgdGhp
cyBzaG91bGQgYmUgY2hhbmdlZCB0byAxMTUyMDAgYmF1ZCByYXRlCj4gPiBzbyBpdCB3b3VsZCBl
bmQgdXAgdGhlIHNhbWUgYXMgb24gb3RoZXIgZGV2aWNlcywKPiA+IGxpa2UgT2Ryb2lkIEdvIEFk
dmFuY2UuCj4gCj4gVGhhdCBoZWF2aWx5IGRlcGVuZHMgb24gdGhlIGJvb3Rsb2FkZXIuIEkuZS4g
c3BlZWRzIHNob3VsZCBiZQo+IGNvbnNpc3RlbnQgYmV0d2VlbiB0aGVtLgo+IAo+IEEgbG90IG9m
IGNoZWFwZXIgdXNiLXR0bCBhZGFwdGVycyB0ZW5kIHRvIGhhdmUgZGlmZmljdWx0aWVzIHdpdGgg
dGhlCj4gZmFzdGVyIHNwZWVkcywgc28gMTE1MjAwIGlzIGVhc2llciBmb3IgdGhvc2UsIGJ1dCB5
b3UgbmVlZCB1LWJvb3QKPiB0byBhbHNvIHVzZSB0aGlzIHNwZWVkLgo+IAoKSSBkb24ndCBoYXZl
IEEtVEYgc291cmNlcyB3aGljaCBoYXZlIHRoZSBvdXRwdXQgc2V0IGF0IDE1MDAwMDAuIEkgY2Fu
CnJlY29tcGlsZSBVLUJvb3QsIGJ1dCB0aGUgc3RvY2sgYm9vdGxvYWRlciBhbHNvIGhhcyBpdCBh
dCAxNTAwMDAwLiBJJ2QKbG92ZSB0byBiZSBhdCBhIHNhbmUgMTE1MjAwLCBidXQgdW50aWwgd2Ug
aGF2ZSBBLVRGIHNvdXJjZXMgdGhhdCBtaWdodApub3QgYmUgcG9zc2libGUsIHJpZ2h0PwoKPiAK
PiBPbiB0aGUgT2Ryb2lkLUdvIEkgZGlkIGJvdGggdGhlIHUtYm9vdCBhbmQga2VybmVsIHBhcnRz
LCBzbyBjb3VsZAo+IG1ha2Ugc3VyZSB0aG9zZSBtYXRjaGVkLgo+IAo+IAo+IFsuLi5dCj4gCj4g
PiA+ICsgICAgICAgYWRjX2tleXM6IGFkYy1rZXlzIHsKPiA+ID4gKyAgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAiYWRjLWtleXMiOwo+ID4gPiArICAgICAgICAgICAgICAgaW8tY2hhbm5lbHMg
PSA8JnNhcmFkYyAwPjsKPiA+ID4gKyAgICAgICAgICAgICAgIGlvLWNoYW5uZWwtbmFtZXMgPSAi
YnV0dG9ucyI7Cj4gPiA+ICsgICAgICAgICAgICAgICBrZXl1cC10aHJlc2hvbGQtbWljcm92b2x0
ID0gPDE4MDAwMDA+Owo+ID4gPiArICAgICAgICAgICAgICAgcG9sbC1pbnRlcnZhbCA9IDw2MD47
Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAgIC8qCj4gPiA+ICsgICAgICAgICAgICAgICAg
KiBCdXR0b24gaXMgbWFwcGVkIHRvIEYga2V5IGluIEJTUCBrZXJuZWwsIGJ1dAo+ID4gPiArICAg
ICAgICAgICAgICAgICogYWNjb3JkaW5nIHRvIGlucHV0IGd1aWRlbGluZXMgaXQgc2hvdWxkIGJl
IG1vZGUuCj4gPiA+ICsgICAgICAgICAgICAgICAgKi8KPiA+ID4gKyAgICAgICAgICAgICAgIGJ1
dHRvbi1tb2RlIHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgbGFiZWwgPSAiTU9ERSI7
Cj4gPiBUaGUgcGh5c2ljYWwgYnV0dG9uIGlzIGxhYmVsZWQgIkYiLCBzbyBtYXliZSB0aGlzIHNo
b3VsZCBiZSAiRiIKPiA+IHRvbz8KPiAKPiBzYW1lIGNvbW1lbnQgYWJvdXQgaWRlYWxseSB1c2lu
ZyBib2FyZC9zY2hlbWF0aWNzIG5hbWVzLgo+IEJ1dCB0aGVuIGFnYWluLCBJIHdvbid0IG1ha2Ug
YSBmdXNzIGlmIGl0J3MgbmFtZWQgZGlmZmVyZW50bHkgOi0pCj4gCgpEaXR0bywgSSdsbCBzZWUg
aWYgSSBjYW4gZmluZCBuYW1lcyBvbiB0aGUgYm9hcmRzIGFuZCByZW5hbWUKYWNjb3JkaW5nbHku
IElmIG5vdCwgd2lsbCB0aGlzIHdvcms/IFRoYW5rIHlvdS4KCj4gCj4gSGVpa28KPiAKPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
