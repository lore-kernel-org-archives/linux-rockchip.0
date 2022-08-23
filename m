Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0167C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEI5ueOMf6bqk48gLhAECjPii59GZm5AEiWEfnxZoG8=; b=QgYm1QABlu35Dv
	5Cl2Aci87rTrYq+aNUloadya3hz86v6H6VogxH3SRa0J2O7wSsATp9xQDwLZWo3XrMYqr0+Hbx3+F
	9cdQt0tABmkV/+gSg2TMrW/jbB8ig8didlLvKrFsuintPde7B2T088YW97fBJXM26GhsTe37+XQBF
	bfihfqQctrm8c2zEGGKcwDV8dUUg+Z1xq3tkWytAjiFrETEizB2acM6tReu25Wk/5/BbZ7QZmljGA
	H3FMlBTfvpYn2GfFQL4bD+KtevqTSvgDUoIebi7qJrKZDLUEx4iCO8PKIqgYJDB8+LHHoQstsiav5
	BgKsiXlL+3OOS19iZNog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTMZ-0062up-0g; Tue, 23 Aug 2022 12:50:35 +0000
Received: from mail-dm6nam10olkn2082.outbound.protection.outlook.com ([40.92.41.82] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTMP-0062oK-Cr
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 12:50:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lClQvkHyZdtZkV/3zSPlq5ygaZRGHvPPSSSKm4AI6ZmNI3DPAquno4Hl/pK7DhNFoy5WD5ij4RTJag2Ib7q78qcrwc3ZN4khFm337XuKzf/MFNlB2uraN2dh6P9Tc97ehFBLuj4xBJrGfI53rHO7CCVA+5X/mbkrdwu/WJgDMz3O+8gl3Pg+8ExTE4jhtMIHCtLRlYLhWYqu5IEdP6j+Bh5AGhabctKxWoDMxwTHqr3VKYOjbnIyW/r03cAohMXllA7BYCmGFojtnINgabJ499zCuJx6hNllU8l7seVx6D21sz0P9EVr2jpD8bBR9XxE+1y7O4wRBpH2omiw4d3sug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rzxlwHV4nqlXt2BHDRHEeoCjDVVvf1lrH8NMZQANKWU=;
 b=F5JB0rCz0LAq4JCiyEtSceTDDQrIIAslv0IgslTGkU3GrO0y7MI2+20MZ3zvcl49rh2x28/ZztPOdwLVGYm8cj8i2OvyfsbBI6KWeG6AvSJI135T/O6F8I98vkSlCqLLeAg96L80ELL+tHpptHlFbcBr7Jf5bCpeJpqlk+gYqjQucPJSoIOz+ShIFaB5JSoSMwBqGfBIhMLzBiBjxwFTMALY04Ilm0Z5UwUR8EYkA/BHXd7OWv6wVFqNmcC+1xwRKnOgv9VxgZMG0DLUl4rwR3f72bo8lK4lrYz/97HLdraKka1ShCJH25KhgWaXe6f+CxO2/E1YcyQI0ericd7uUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rzxlwHV4nqlXt2BHDRHEeoCjDVVvf1lrH8NMZQANKWU=;
 b=H4gmVDSxeQwAwTJYsz47W/7fIoBMvTFfiECV3vwsW/6e7EEsJJl5siyD1vSVIbvEy8Vt+4DL2tojdSiTycVBFu/UHjxw0Dml19DJFkh6zlSF9uTpXsxh6rGtyoZT7d2LYS38xfa4aaXOCTV9wwrhAjigBaLRliIHpOiCYMMOgN8j5ypOjX6O7yqjyeawcvXHzOD4Y3HMSdhT10ZWuIC4ijvuj0S1FV6lrxsyxdWfL1KRuaz2vnYBJme1eCgxLXl7g0ieVELxXeAl27oN2Bq0Cnu7zj7gbbG237I1HdcjPeS8J2Z5/sSRePxLvPt5Kckhcx8DXWpVE0KYS8bkHURedg==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by DS7PR06MB6936.namprd06.prod.outlook.com (2603:10b6:5:2c1::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Tue, 23 Aug
 2022 12:50:21 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5546.022; Tue, 23 Aug 2022
 12:50:21 +0000
Date: Tue, 23 Aug 2022 07:50:17 -0500
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
Message-ID:  <SN6PR06MB5342F9D5B650EA496CB4CC34A5709@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
 <45694752.fMDQidcC6G@diego>
 <20220823123529.GA9857@wintermute.localdomain>
Content-Disposition: inline
In-Reply-To: <20220823123529.GA9857@wintermute.localdomain>
X-TMN: [5tot2k37aDi73IcrOQlRgYo7CKgCq+sv]
X-ClientProxiedBy: SA9P223CA0020.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:806:26::25) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID:  <20220823125017.GA9917@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 675d1da2-0470-4eb1-9a32-08da850609c7
X-MS-TrafficTypeDiagnostic: DS7PR06MB6936:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	/Z6Y4VwmQ23c+jwjuHuE6eFKNQViuj3S6fC1tZMNr/jDybYEmuSQVzN7OlGUdGYkejCUtpHew5idAfHeTNPtvM5oh2OCmqxC02EYWyq37nLhLlTWJkT8yhVtiuEy7dfT46sGcLC04Jd4RW/BMa0n/yD4/8yuL5jlAhM0FRaQ4rO7ygLX86PKwVqtL5MLQ14QcM+QpsDTOEHoJmOgUu9urIzv/qc73hc+0f5PawNy5QBxQaWSR1gUB/pSdyEZxMFNNOuHIVQqYfdKpTBdthW3OZZe0Wi0mXMish5nwFdoCOPNdreQML1bizTO50jfu8sivSkwMlDn22Xe+ttttBgIlTcCc2z4mx20ICzQvKofu8MecJomTfw8GeUtrrlw0qAlBgBtJ6mStZWQb5RM3ieHagftUbI6fOnOa3CSoL7kprq0X14s7j7+jZgPB0Mo3q22s1GS3/C6rA8xV9pPfD4lU7lwqVlf43gESbTqUdsOQIQGs62w8y4HN+mEja0nVCbKMG//bDiTlsew6aAKL98PeZRIcndkOCe9qy9VQakleVwP9Ot0bDlqPYHZ6igO0bbbDTasIemtcZ3AiJhjG3/088zWU8bEInIsvtbmbmXi+83lFz0JxIHpskjBuL+p0MwigAJ1FKartRysjneFAyrIp0GE1UqiARZke/skJPdAsBIF6Q5Ac7zjpWbXvCoeKPqY
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?d1gwQWVKTVE0TnBiUlJiTHRhOTZPL0NxQjQzakxhOEFDQkJYbzVYTUE3RUxY?=
 =?utf-8?B?cXV2dTRBbnN5djRmTjRxcG1iN0gwYW40Y1FFdHFwTGlteElXNkh6amFaZnA4?=
 =?utf-8?B?SnY1aTNxYnJxbERQM0ZEUjNJS1J3TzRzSDJ5NGJtamdRSGUxeGkrcFg5L0RL?=
 =?utf-8?B?OU5PcDQyYWlGU0o2Nkp5NjErbVZzU1p5OUxybS9QNjRMczZBb2dRTWZudWhH?=
 =?utf-8?B?NVlnVlhRRlVFbFRLTFJQQnBuMUlyazBQVzE4NVBNUUczblIwOGlkc20xQmpN?=
 =?utf-8?B?b09GMDJOVXJ1RHZKUGIzeFd4VzROMWJZLytGZDFVQm56bkt3RTdXdTRCY0F6?=
 =?utf-8?B?MHpFTnBWeEhTYjVCQzJiblcySVVITEx5YXJ4ckdSRzBJdTl1ajZEVkFZaEYy?=
 =?utf-8?B?QUdrZGtIc1VrczdmdFRva1NPalNLLzcreENDUHgwbUt5NVhHNmJ6djROWDFC?=
 =?utf-8?B?MnJzVkxJMWlYYjJZNG1OY1VjQ1Fmd0ZDc0dCSll2QWdTNDFpakNRUEZtTGR5?=
 =?utf-8?B?aTNwNEJxcWJBbE02cjVUanFTRUYzTG4rQWtCNWd0eFVZNm1ZR3dJNHQzV2VL?=
 =?utf-8?B?VHUwQ08wR1p3T0dkV2MrMk9qeFVGNFRidFNaSmMweXZzUEhvYUlnSG82Y3BO?=
 =?utf-8?B?YTRKUGpiWjRZMFhSczZDZmUyUmFJbFJBZGdlVGR2bHJyeE4wVmhyQmUvQStO?=
 =?utf-8?B?MGVic2JkbzR2ZENGaGVYcHNvcktueDFIYXkyenpFdUthUWV6VUR0U05rM2x5?=
 =?utf-8?B?c0x6a0luZmVtMmpmU3ZpQ01rSDIwRkk5OEk3c0c1RlVBVjlidzUvWnJFTW1Q?=
 =?utf-8?B?MmNpUkhCaHpUcTJWbFY2d2tZc2RBOFBXNm5Wd2J5TUN5MzlZT0xUL2N6NWdp?=
 =?utf-8?B?YjhnazZDNHhpSmRGRm56QXRodWtGOUpPM1c5bU41YTRFSFdmREtjNXlOR2Z2?=
 =?utf-8?B?TURNMFVpRHd5bTNGMk1hbHdmUnA4dXlNaUM0cWVMQVY2a1lVQVZDVGNpQkZL?=
 =?utf-8?B?cFRWbGtBVndVL0k3aXBuaE9MYzRzbDVUT1ZraGR3MDJIVE9FMlMxZUxwN0V0?=
 =?utf-8?B?K3F3dTBxbStuS2V5cTAvZFBkRHd6ZVBVWkJUZlczVVdkK1JRdWpsbkp6cFhT?=
 =?utf-8?B?R3NvMmdmVm9KZ3hoYTBwYnlmQzFpSEkvejRqVlcybTVOMlNUajVacnJ2d2lO?=
 =?utf-8?B?VzhLNjFWVm9BUjdNUlgxRzN5ejNRSXhUNGl6RGNrUzI1czUxMy9qVWxCMUVR?=
 =?utf-8?B?YVIwUkJhVW5ZYWQ1WDFrSEQ5d2t2VTRhaThEUU5LejBnUDZ2OFpWN1cxbjI2?=
 =?utf-8?B?V1ZhbXk4NkMwNVgrYUhNdFB3dGE1UGhHM29IZzdzb2pya2V2dTI2OEhRV1dF?=
 =?utf-8?B?NnI1WE5ETitzLzdLQ3JMVUhWay9PdHhlOVBUS3NvRDhkZmJuVysxZ3F6eWx0?=
 =?utf-8?B?a3h5TWtHNmZFYXN1UW1JWFdNTG1RWnhYaFQ4TTAxaEdEZ09sTXhTbTdiVStD?=
 =?utf-8?B?aGhwYW1RS3dzbWFuZ25BRFdlZElMbWIzYVZrdmRXRnBwdUFuNFBQb1FOZVJa?=
 =?utf-8?B?SmxPbEZVZ2JkWk1NalVENUcybGQxRWl2eXl6TWp3WDUzZTZsNldhTGRqdmVE?=
 =?utf-8?B?OTlmRGpzd2tETmhhR1R2K0w0VXJiUUg1K1JGN3BheUxjblhEVjFYWnliYmtn?=
 =?utf-8?B?elVMVWJHY3h6b2ZQNlhyWUxzSDFyWDFuYkZmUTZoVm9Na1kwVWNndHF3PT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 675d1da2-0470-4eb1-9a32-08da850609c7
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 12:50:21.1095
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR06MB6936
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_055026_460842_052A026C 
X-CRM114-Status: GOOD (  42.33  )
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

T24gVHVlLCBBdWcgMjMsIDIwMjIgYXQgMDc6MzU6MzJBTSAtMDUwMCwgQ2hyaXMgTW9yZ2FuIHdy
b3RlOgo+IE9uIFR1ZSwgQXVnIDIzLCAyMDIyIGF0IDAyOjE2OjAzUE0gKzAyMDAsIEhlaWtvIFN0
w7xibmVyIHdyb3RlOgo+ID4gQW0gU2Ftc3RhZywgMjAuIEF1Z3VzdCAyMDIyLCAxMDo0MDozNCBD
RVNUIHNjaHJpZWIgTWF5YSBNYXR1c3pjenlrOgo+ID4gPiBzb2IuLCAyMCBzaWUgMjAyMiBvIDAw
OjI2IENocmlzIE1vcmdhbiA8bWFjcm9hbHBoYTgyQGdtYWlsLmNvbT4gbmFwaXNhxYIoYSk6Cj4g
PiA+ID4KPiA+ID4gPiBGcm9tOiBDaHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29t
Pgo+ID4gCj4gPiBbLi4uXQo+ID4gCj4gPiA+ID4gKyZncGlvX2tleXNfY29udHJvbCB7Cj4gPiA+
ID4gKyAgICAgICBidXR0b24tNSB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIGdwaW9zID0gPCZn
cGlvMyBSS19QQTUgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ID4gPiArICAgICAgICAgICAgICAgbGFi
ZWwgPSAiRFBBRC1MRUZUIjsKPiA+ID4gPiArICAgICAgICAgICAgICAgbGludXgsY29kZSA9IDxC
VE5fRFBBRF9SSUdIVD47Cj4gPiA+ID4gKyAgICAgICB9Owo+ID4gPiA+ICsKPiA+ID4gPiArICAg
ICAgIGJ1dHRvbi02IHsKPiA+ID4gPiArICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8zIFJL
X1BBNiBHUElPX0FDVElWRV9MT1c+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICBsYWJlbCA9ICJE
UEFELVJJR0hUIjsKPiA+ID4gPiArICAgICAgICAgICAgICAgbGludXgsY29kZSA9IDxCVE5fRFBB
RF9MRUZUPjsKPiA+ID4gPiArICAgICAgIH07Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgICAgYnV0
dG9uLTkgewo+ID4gPiA+ICsgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzMgUktfUEIzIEdQ
SU9fQUNUSVZFX0xPVz47Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIGxhYmVsID0gIlRSIjsKPiA+
ID4gPiArICAgICAgICAgICAgICAgbGludXgsY29kZSA9IDxCVE5fVFIyPjsKPiA+ID4gPiArICAg
ICAgIH07Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgICAgYnV0dG9uLTEwIHsKPiA+ID4gPiArICAg
ICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8zIFJLX1BCNCBHUElPX0FDVElWRV9MT1c+Owo+ID4g
PiA+ICsgICAgICAgICAgICAgICBsYWJlbCA9ICJUUjIiOwo+ID4gPiA+ICsgICAgICAgICAgICAg
ICBsaW51eCxjb2RlID0gPEJUTl9UUj47Cj4gPiA+ID4gKyAgICAgICB9Owo+ID4gPiA+ICsKPiA+
ID4gPiArICAgICAgIGJ1dHRvbi0xNCB7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIGdwaW9zID0g
PCZncGlvMyBSS19QQzEgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ID4gPiArICAgICAgICAgICAgICAg
bGFiZWwgPSAiV0VTVCI7Cj4gPiA+ID4gKyAgICAgICAgICAgICAgIGxpbnV4LGNvZGUgPSA8QlRO
X1dFU1Q+Owo+ID4gPiA+ICsgICAgICAgfTsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICBidXR0
b24tMTUgewo+ID4gPiBJIGRvbid0IHRoaW5rIGp1c3QgaGF2aW5nIHRoZSBidXR0b25zIG51bWJl
cmVkIHNlcXVlbnRpYWxseQo+ID4gPiBpcyB0aGUgYmVzdCBjb3Vyc2Ugb2YgYWN0aW9uLCBidXQg
dGhpcyBwcmVzZXJ2ZXMgdGhlIEdQSU8KPiA+ID4gb3JkZXJpbmcgd2hpbGUgb3RoZXIgb3B0aW9u
cyBkb24ndC4uLgo+ID4gPiBJJ20gdGhpbmtpbmcgYWJvdXQgZWl0aGVyIGhhdmluZyB0aGVtIG5h
bWVkIGFmdGVyCj4gPiA+IHRoZWlyIGZ1bmN0aW9uLCBvciBuYW1lZCBhZnRlciB3aGF0IHRoZXkn
cmUgbGFiZWxlZAo+ID4gPiBvbiB0aGUgUENCIG9mIHRoZSBkZXZpY2UuCj4gPiA+IENhbiBhbnkg
b2YgRFQgbWFpbnRhaW5lcnMgZ2l2ZSB0aGVpciBpbnB1dCBvbiB0aGlzPwo+ID4gCj4gPiBQZXJz
b25hbGx5LCBJJ2QgcHJlZmVyIGdvaW5nIHdpdGggd2hhdCBpcyBvbiB0aGUgUENCCj4gPiBvciBk
ZWZpbmVkIGluIHRoZSBzY2hlbWF0aWNzLgo+ID4gCj4gPiBUaGlzIG1ha2VzIGl0IHdheSBlYXNp
ZXIgZmluZGluZyBkdC1lbGVtZW50cyBlaXRoZXIgaW4KPiA+IHNjaGVtYXRpY3Mgb3Igb24gdGhl
IGJvYXJkIGl0c2VsZi4KPiA+IAo+ID4gVGhpcyBpcyB0cnVlIGZvciBhbGwgbmFtZXMgOy0pCj4g
PiAKPiA+IE9uIHRoZSBPZHJvaWQtR28gZm9yIGV4YW1wbGUgYnV0dG9ucyBhcmUgcmVhbGx5IG5h
bWVkCj4gPiBzdzEsIHN3MiwgLi4uIHNvIHRoZSBkdC1uYW1lIGJlY2FtZSBidXR0b24tc3cxIGV0
Yy4KPiAKPiBUaGVyZSBhcmUgbm8gc2NoZW1hdGljcywgc28gSSdsbCBzZWUgaWYgSSBjYW4gbG9j
YXRlIG5hbWVzIG9uIHRoZSBib2FyZHMuCj4gSWYgSSBjYW4sIEknbGwgcmVuYW1lIHRoZXNlLCBh
bmQgaWYgbm90IGxlYXZlIHRoZW0gaW4gbnVtZXJpY2FsIG9yZGVyLgo+IFdpbGwgdGhhdCB3b3Jr
PwoKT2theSwgd2hhdCBpZiBzb21lIGhhdmUgbmFtZXMgYW5kIHNvbWUgZG9uJ3Q/IFNob3VsZCBJ
IGp1c3QgbGFiZWwgaXQKYmFzZWQgb24gdGhlIGJvYXJkIGlmIHRoZXkgZG8gaGF2ZSBuYW1lcywg
YW5kIGZ1bmN0aW9uIGlmIHRoZXkgZG9uJ3Q/CgpGb3IgZXhhbXBsZSB2b2x1bWUgdXAgaXMgc3cx
NCBhbmQgdm9sdW1lIGRvd24gaXMgc3cxNS4gVGhlIG5vcnRoIGJ1dHRvbgppcyBsYWJlbGxlZCAi
WCIsIGFuZCB0aGUgc291dGggYnV0dG9uICJCIi4gSG93ZXZlciwgdGhlIHRodW1iIHN0aWNrCmJ1
dHRvbnMgYW5kIHRoZSBML1IvTDIvUjIgZG9uJ3QgaGF2ZSBsYWJlbHMgKGF0IGxlYXN0IG9uIG15
IHJldmlzaW9uKS4KU2hvdWxkIHRob3NlIHRoZW4gYmUgbmFtZWQgYnkgdGhlaXIgZnVuY3Rpb24/
CgpUaGFuayB5b3UuCgo+IAo+ID4gCj4gPiAKPiA+IFsuLi5dCj4gPiAKPiA+ID4gPiArJnBpbmN0
cmwgewo+ID4gPiA+ICsgICAgICAgZ3Bpby1sY2Qgewo+ID4gPiA+ICsgICAgICAgICAgICAgICBs
Y2RfcnN0OiBsY2QtcnN0IHsKPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hp
cCxwaW5zID0KPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDw0IFJLX1BB
MCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKPiA+ID4gPiArICAgICAgICAgICAgICAg
fTsKPiA+ID4gSXMgaXQgdW51c2VkPyBJZiBpdCBpcyBJIHRoaW5rIGl0IHdvdWxkIGJlbG9uZyB0
byBwYXRjaCB0aGF0IHdvdWxkIGFkZAo+ID4gPiBwYW5lbCB0byB0aGlzIGRldmljZQo+ID4gCj4g
PiBJIHRlbmQgdG8gYWdyZWUgOi0pIC4KPiAKPiBPa2F5LCB3aWxsIHJlbW92ZS4KPiAKPiA+IAo+
ID4gPiA+ICsvIHsKPiA+ID4gPiArICAgICAgIGNob3NlbjogY2hvc2VuIHsKPiA+ID4gPiArICAg
ICAgICAgICAgICAgc3Rkb3V0LXBhdGggPSAic2VyaWFsMjoxNTAwMDAwbjgiOwo+ID4gPiBJJ20g
d29uZGVyaW5nIGlmIHRoaXMgc2hvdWxkIGJlIGNoYW5nZWQgdG8gMTE1MjAwIGJhdWQgcmF0ZQo+
ID4gPiBzbyBpdCB3b3VsZCBlbmQgdXAgdGhlIHNhbWUgYXMgb24gb3RoZXIgZGV2aWNlcywKPiA+
ID4gbGlrZSBPZHJvaWQgR28gQWR2YW5jZS4KPiA+IAo+ID4gVGhhdCBoZWF2aWx5IGRlcGVuZHMg
b24gdGhlIGJvb3Rsb2FkZXIuIEkuZS4gc3BlZWRzIHNob3VsZCBiZQo+ID4gY29uc2lzdGVudCBi
ZXR3ZWVuIHRoZW0uCj4gPiAKPiA+IEEgbG90IG9mIGNoZWFwZXIgdXNiLXR0bCBhZGFwdGVycyB0
ZW5kIHRvIGhhdmUgZGlmZmljdWx0aWVzIHdpdGggdGhlCj4gPiBmYXN0ZXIgc3BlZWRzLCBzbyAx
MTUyMDAgaXMgZWFzaWVyIGZvciB0aG9zZSwgYnV0IHlvdSBuZWVkIHUtYm9vdAo+ID4gdG8gYWxz
byB1c2UgdGhpcyBzcGVlZC4KPiA+IAo+IAo+IEkgZG9uJ3QgaGF2ZSBBLVRGIHNvdXJjZXMgd2hp
Y2ggaGF2ZSB0aGUgb3V0cHV0IHNldCBhdCAxNTAwMDAwLiBJIGNhbgo+IHJlY29tcGlsZSBVLUJv
b3QsIGJ1dCB0aGUgc3RvY2sgYm9vdGxvYWRlciBhbHNvIGhhcyBpdCBhdCAxNTAwMDAwLiBJJ2QK
PiBsb3ZlIHRvIGJlIGF0IGEgc2FuZSAxMTUyMDAsIGJ1dCB1bnRpbCB3ZSBoYXZlIEEtVEYgc291
cmNlcyB0aGF0IG1pZ2h0Cj4gbm90IGJlIHBvc3NpYmxlLCByaWdodD8KPiAKPiA+IAo+ID4gT24g
dGhlIE9kcm9pZC1HbyBJIGRpZCBib3RoIHRoZSB1LWJvb3QgYW5kIGtlcm5lbCBwYXJ0cywgc28g
Y291bGQKPiA+IG1ha2Ugc3VyZSB0aG9zZSBtYXRjaGVkLgo+ID4gCj4gPiAKPiA+IFsuLi5dCj4g
PiAKPiA+ID4gPiArICAgICAgIGFkY19rZXlzOiBhZGMta2V5cyB7Cj4gPiA+ID4gKyAgICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAiYWRjLWtleXMiOwo+ID4gPiA+ICsgICAgICAgICAgICAgICBp
by1jaGFubmVscyA9IDwmc2FyYWRjIDA+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICBpby1jaGFu
bmVsLW5hbWVzID0gImJ1dHRvbnMiOwo+ID4gPiA+ICsgICAgICAgICAgICAgICBrZXl1cC10aHJl
c2hvbGQtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+ID4gPiA+ICsgICAgICAgICAgICAgICBwb2xs
LWludGVydmFsID0gPDYwPjsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICAgICAgICAgIC8qCj4g
PiA+ID4gKyAgICAgICAgICAgICAgICAqIEJ1dHRvbiBpcyBtYXBwZWQgdG8gRiBrZXkgaW4gQlNQ
IGtlcm5lbCwgYnV0Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAqIGFjY29yZGluZyB0byBpbnB1
dCBndWlkZWxpbmVzIGl0IHNob3VsZCBiZSBtb2RlLgo+ID4gPiA+ICsgICAgICAgICAgICAgICAg
Ki8KPiA+ID4gPiArICAgICAgICAgICAgICAgYnV0dG9uLW1vZGUgewo+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGxhYmVsID0gIk1PREUiOwo+ID4gPiBUaGUgcGh5c2ljYWwgYnV0dG9u
IGlzIGxhYmVsZWQgIkYiLCBzbyBtYXliZSB0aGlzIHNob3VsZCBiZSAiRiIKPiA+ID4gdG9vPwo+
ID4gCj4gPiBzYW1lIGNvbW1lbnQgYWJvdXQgaWRlYWxseSB1c2luZyBib2FyZC9zY2hlbWF0aWNz
IG5hbWVzLgo+ID4gQnV0IHRoZW4gYWdhaW4sIEkgd29uJ3QgbWFrZSBhIGZ1c3MgaWYgaXQncyBu
YW1lZCBkaWZmZXJlbnRseSA6LSkKPiA+IAo+IAo+IERpdHRvLCBJJ2xsIHNlZSBpZiBJIGNhbiBm
aW5kIG5hbWVzIG9uIHRoZSBib2FyZHMgYW5kIHJlbmFtZQo+IGFjY29yZGluZ2x5LiBJZiBub3Qs
IHdpbGwgdGhpcyB3b3JrPyBUaGFuayB5b3UuCj4gCj4gPiAKPiA+IEhlaWtvCj4gPiAKPiA+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
