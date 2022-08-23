Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19462C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 12:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9gVjdJog6jCXUf7RPHGID3oEgOdKbPBcQbxEGh1Wtc=; b=MxCnBfsPe99/mp
	Hq4pq4jHYcIUamNMZRvu1VWJcUt+mBEsVD9UiumJQn4vxU0YbBP0NE0etNJe6zGlk6/58/TtiEhK2
	M/ihKjWMNJYwJzPyPzJNNGD/N7KwVS/wxK7wLHcmQzCX+9TKaKniCZl5EL2FcFg8nKqnYfNbEOQfW
	gbsUXBzphe72FTZvDrcd7rM5cUfMi7ZNRQzp6EpgVuwKbmIojiA++TQvINyxYhpqiBBrHaOf324ZG
	Mr1Ato2xA7MfwqRBIos5PlgkOaEmmDcp/1Q+nfF5jkHevdIzciPT14RVJW6EjNLWWKmk0QKSwt2zr
	0zy9anjoru4kUHk6NGnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQTEM-005yDb-Jd; Tue, 23 Aug 2022 12:42:06 +0000
Received: from mail-bn7nam10olkn2096.outbound.protection.outlook.com ([40.92.40.96] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQT8y-005vYZ-5F
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 12:36:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X2H22B/kXGTuz7IjrTxr/jSdnVVKtZiphGBf3aN1X7SofjAPNvqkDGE0R4cDLxM5RGpw0sZrHo5WdOgTttzww+Rk9o0HaPbgSh/vPLkOYBdElpyAVSj61nK0gnWyNzioRdU9/QIvFD3gtgOjqr5eQy1pfxw7ir4UtNKkv+xEahffQvdDWpzSBffqOrev2Uv5y5sYSPIPclr5KKNEarfO5owwUYp6OrDjFlePqjLHd7YlY6u6Hvcc/vkgAdsN+DrmgVKRIGnX6UVJYuqKSmd1tEwu5c3Xe+KIWslYna4qho8f9R4ekn4h0VMt58P3znqbpVbS4/K9WJULRlZWwdB5Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FFi9DZBF/NOyuz1BnptFpW06gAjN0kAyHsNQ7P4nbt8=;
 b=XDYjKbkQ42hRzosPFb50g+7AYowRXd2LYc5Gq8Xp3YuzEFhBc/nUfWnMi9Mr5yPmmdUwiD/u6J+N0/gqVrU6CsbjBVFnL05dZCWddyjSWn1LhxAV4GtlkqgKVzyo6j/IVnFHurpWp3mMirmRLFoOTkypo6+axaJPxQs4PLn2FS282hLLX/ymAVt9fP/xvJvsKmcA5litPumQVZEduqolm4JdCfWzP6Rdx1rAZTI3QJj1NLjOvh0oDTh7TN1sHazPOYZKYQUZn0JHmd1wKyHWoNwcaCGQ4I1T5BJqtIqOFakzGVuSj1UrLCTvpUReXfUruCkOpWDJXTbAmGb34bxVJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FFi9DZBF/NOyuz1BnptFpW06gAjN0kAyHsNQ7P4nbt8=;
 b=B+k3v4MxZfWsLHksmJV7Ts7ASmgnXvV6zC4evXZGF2zzlQvqkcGibLbp1zH9OucfE+xDhNe1MPLD1qOZQp2/YkKVHZ8eKTrSGTdYYZukZplooHmjVJ9rSykNL+AAZzaisSIyb0DsgwnBA1pKoIaXlKuL2SzchAE9p6BgfcdCLhpLVh50aY9OHc9kV3x0KJDXzTsuufUDKwJlkqO/8T81mcpRJQpE5FyoTycNvd0TMZDpyl0KQmHgU6azdT5eYica/rgpk7CX0VTgobGSjZHyhxaWnXpD+5DtPv6WmXqTx945gEsY353DET7n8KzSSqOQAtva4lPmvB6gPvp75U5BCg==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by BL0PR06MB4401.namprd06.prod.outlook.com (2603:10b6:208:4c::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Tue, 23 Aug
 2022 12:36:28 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::20e7:bc40:7e9d:b46e%4]) with mapi id 15.20.5546.022; Tue, 23 Aug 2022
 12:36:28 +0000
Date: Tue, 23 Aug 2022 07:36:25 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Chris Morgan <macroalpha82@gmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	devicetree <devicetree@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Peter Geis <pgwipeout@gmail.com>, Chris Healy <cphealy@gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: add Anbernic RG353P and
 RG503
Message-ID:  <SN6PR06MB53420ACEDA3DF63A64F18A21A5709@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20220819222520.3069-1-macroalpha82@gmail.com>
 <20220819222520.3069-4-macroalpha82@gmail.com>
 <CAO_MupKkmbEjEqkrUQ2DtY=SA4ULv8CLVWPD92hxrMPuRYsS+w@mail.gmail.com>
 <45694752.fMDQidcC6G@diego>
 <21c798fc-bfc5-ed67-bcea-a213890e5ef1@linaro.org>
Content-Disposition: inline
In-Reply-To: <21c798fc-bfc5-ed67-bcea-a213890e5ef1@linaro.org>
X-TMN: [XCrjC9AoBWMK2H9raE4O0gsNfblFpOtx]
X-ClientProxiedBy: SN7PR04CA0060.namprd04.prod.outlook.com
 (2603:10b6:806:120::35) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID:  <20220823123625.GB9857@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 89a1da64-3900-4fdd-e89e-08da8504198f
X-MS-TrafficTypeDiagnostic: BL0PR06MB4401:EE_
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	hWtq9A22NiAQPlRUCzasFvJqLHa2a4Z92Ko52FSHcH6G3LSLRZZ44JM6KubS8t0r/fisjAVhQVkiackuaHQOMFgsUScApBWJivqHeMkbHbUAqVu3Dt+NCdjg+9ENV3PAJxhGLyeFnsJpR8k/XcHGah/CpwM63Lw4A+qWsabEUvUB7GH0vFXBIssptMRDNyGBJOaUQE8CdBhdlTnJL/YCG5unxqzsQgo6R5j3bYUxDAjrUI2vfZHPApU1zNy/WiofqaefmNLMrmXVsiDpu8YYeglJWgFRKaBDOwBGUDQhDNLPkYhl+gNNjaqZ/al8kc4ruBoRM9hj8QbEXAYq2gL/PPU2xNcgs7Kenaa4L3CMx3Q+6dcN1lXC+DtBnG+BHtlF9ymkO/P9H+KyTHdqPjhoWIKCfmGG0+RAtcWBIB3T2jdt39iF7wCUPvJ82+IQo5vKeiGxVINXCBNZPuKYXI3xhNFol8ghRZED/QAkJq2FGn60XfuzEz+8v1JLzLf5BK6v4yL3aOTKdlQk+Qt6IO247H9Nj+fs/EIYzlcT/KT018x4mKuwmzEr6aRm3a+bvfaa37CK0ZJp2XYgu/zbbLf5CFCh6tCCSIrthZg+c7Tl11PC6Y17fg6ONhgJPUGM/mNl8Obx5ef0LcIZ2aQUuZjFlZQ9QmvOuU8kMVcpv3irWXZWbJMAdFfGq7PHHCHT/bb5
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?WkhFOGRlcnJoaGsyNmFxZVFuZWNNYVZOenpGQlBoOGp0Z1QrcWVXMEppWlhr?=
 =?utf-8?B?M1FjZm53NTRaUGoxYXd5dzhNNlBldlZuYktZN1ZBMUkwSHlQekcyOHdsRUw2?=
 =?utf-8?B?NUlrNGUwdHQ0OGlqOEdLVWpsMjNuV1lQS29OSVRjUjg0Mm82OGRCb29Zemh3?=
 =?utf-8?B?SFJ0Y1JjcDI2NDZ4SlVTNzMvOFJFK2VRTVFsSWx4ejBaMmhRMkdiazhQNUth?=
 =?utf-8?B?NEtMRk14WE1xMWJCQkR6eW9POS9pZE1zcDFzNHFESG5jN21URURGenhTbDlI?=
 =?utf-8?B?aVFuTkpSNFNNTHo3S0hhWXRzZlJiLzhpZVI5NlU0SXllcW9lcGFzY0dlL0lM?=
 =?utf-8?B?T091eWIzMFZuRzlQTTk2MkQwZmQ4WHlyc0ViOTFJMFdHcklOTUJxdFFHYzVC?=
 =?utf-8?B?S1FaTkVqKzdrZ21nWG9HTGtYOGJKY0szMDB2VndGY2Y4YSszOUVjUklYVXZi?=
 =?utf-8?B?dFk3dW5WdzBtajZHbE9icFhkcS9yN1JUUVFqUWk3T3Blczdmb3lOb2VsYTly?=
 =?utf-8?B?Y0RPZkcxSnc5YjJscnJSZVY4TnR6b0NINTYya0twWnJpRk9sTElwcUJnMkhX?=
 =?utf-8?B?YnpKZGFvRDZLSVMwRk1pYU1ZOUx2dUVLVlFod29FdWVIYXhVajVTZW8rNDhM?=
 =?utf-8?B?a0tRVHBiQnNOZjJVQjZTNzlUYzZXa1RQV1c4WkxZZWg2VitBOVNpd0xySThV?=
 =?utf-8?B?ak5aWE80MzgrV1ZCVlBuWmlCVTZwU3lHTXZDQ2c2aVZMRXU2THYva1ZBc24v?=
 =?utf-8?B?a3J0aEdacDBqc3FkMFJ1S0grL2Fxc0tDM0h0Y3N5REJhSlVpQ0wzSk4xbGpZ?=
 =?utf-8?B?Mk9SaHpETnluRUlueXlDUEpNa2VGcGx5NEFDdGtPNmVxb0dHNEFLcjg4ajhw?=
 =?utf-8?B?K3o4ZzhxNlZwNEw0REovemNqSHVjWmlsWnpidFEwWCt3LzEvcUMxYXNtMmNa?=
 =?utf-8?B?dDhrcmtWU3IxMjRmM3RDbGdQS1Q1TmpzZVpnZ3BFUEhZQWU2OVVZTUFFd3M0?=
 =?utf-8?B?K05yT1c0K2FGVkpBUEQwaGxsWTdvVFc3eXZ3enFhMTRuTGZIbzJKZm0xRUFN?=
 =?utf-8?B?aWVrbk1xS1RvbE0xajBZYzZlb2s1LzdGamNhT3NwTTRHMnRoemNuQkVjYjll?=
 =?utf-8?B?VzFvOHIrM2QvU0tHUkY3bHhjZ09pbnlMQjlKbEZMT2k5bEdLWWdZcFlTczRq?=
 =?utf-8?B?em1iT3dwSkFQdXFDa08wZjR0MkR6VGY0WGtLMkZJcDd0ZTI0VHlWNm56MVVS?=
 =?utf-8?B?blBHVU8rd1JBRlFucWJFWUVxMi9PSE1uOExycGtiS2w4Tll1MkoxZlM0bWpU?=
 =?utf-8?B?UmpvdEFvYUV1WEVWclpLbk82bmRTVWZWT0cwcFdqTHpCSXZKZ2V5SlpYeWtX?=
 =?utf-8?B?OWpiMDZZRHFVZmNDM1d5MkdPZGNibVE4eFpJd1ViOEV0b3lsM0o4Z05HUkx5?=
 =?utf-8?B?VzN5bURVbzhiazl2RTR5bHRYeFc2QXhUemNRYy9jYkFJa0tQMUZHdzMwemN5?=
 =?utf-8?B?cEtIMDBGK3JLKzJmdUp3WWpxWUNTTVlCY25zL1ArL0VEbWZvczRoK3p4bGNT?=
 =?utf-8?B?Y3BENUFEZlJ6WHhsblgzdlBDejZOZUkxRmJVNzlTNXg1SVpUMm5Ea3MyVUl0?=
 =?utf-8?B?akxFdVlDa1duNlhQR1JNWVVrRm1LL3duSWJRTFhIVVVad1lOK21NSGtSamFF?=
 =?utf-8?B?MEpSV3Z5S2dYODZGeXEvVUR3bmNJaUJnbU5lVFMyeWlqcVMzTTEzTWNnPT0=?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 89a1da64-3900-4fdd-e89e-08da8504198f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2022 12:36:28.5164
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR06MB4401
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_053632_241665_47BA642F 
X-CRM114-Status: GOOD (  17.89  )
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

T24gVHVlLCBBdWcgMjMsIDIwMjIgYXQgMDM6Mjg6NTJQTSArMDMwMCwgS3J6eXN6dG9mIEtvemxv
d3NraSB3cm90ZToKPiBPbiAyMy8wOC8yMDIyIDE1OjE2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiA+IEFtIFNhbXN0YWcsIDIwLiBBdWd1c3QgMjAyMiwgMTA6NDA6MzQgQ0VTVCBzY2hyaWViIE1h
eWEgTWF0dXN6Y3p5azoKPiA+PiBzb2IuLCAyMCBzaWUgMjAyMiBvIDAwOjI2IENocmlzIE1vcmdh
biA8bWFjcm9hbHBoYTgyQGdtYWlsLmNvbT4gbmFwaXNhxYIoYSk6Cj4gPj4+Cj4gPj4+IEZyb206
IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPiAKPiA+IFsuLi5dCj4g
PiAKPiA+Pj4gKyZncGlvX2tleXNfY29udHJvbCB7Cj4gPj4+ICsgICAgICAgYnV0dG9uLTUgewo+
ID4+PiArICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8zIFJLX1BBNSBHUElPX0FDVElWRV9M
T1c+Owo+ID4+PiArICAgICAgICAgICAgICAgbGFiZWwgPSAiRFBBRC1MRUZUIjsKPiA+Pj4gKyAg
ICAgICAgICAgICAgIGxpbnV4LGNvZGUgPSA8QlROX0RQQURfUklHSFQ+Owo+ID4+PiArICAgICAg
IH07Cj4gPj4+ICsKPiA+Pj4gKyAgICAgICBidXR0b24tNiB7Cj4gPj4+ICsgICAgICAgICAgICAg
ICBncGlvcyA9IDwmZ3BpbzMgUktfUEE2IEdQSU9fQUNUSVZFX0xPVz47Cj4gPj4+ICsgICAgICAg
ICAgICAgICBsYWJlbCA9ICJEUEFELVJJR0hUIjsKPiA+Pj4gKyAgICAgICAgICAgICAgIGxpbnV4
LGNvZGUgPSA8QlROX0RQQURfTEVGVD47Cj4gPj4+ICsgICAgICAgfTsKPiA+Pj4gKwo+ID4+PiAr
ICAgICAgIGJ1dHRvbi05IHsKPiA+Pj4gKyAgICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMyBS
S19QQjMgR1BJT19BQ1RJVkVfTE9XPjsKPiA+Pj4gKyAgICAgICAgICAgICAgIGxhYmVsID0gIlRS
IjsKPiA+Pj4gKyAgICAgICAgICAgICAgIGxpbnV4LGNvZGUgPSA8QlROX1RSMj47Cj4gPj4+ICsg
ICAgICAgfTsKPiA+Pj4gKwo+ID4+PiArICAgICAgIGJ1dHRvbi0xMCB7Cj4gPj4+ICsgICAgICAg
ICAgICAgICBncGlvcyA9IDwmZ3BpbzMgUktfUEI0IEdQSU9fQUNUSVZFX0xPVz47Cj4gPj4+ICsg
ICAgICAgICAgICAgICBsYWJlbCA9ICJUUjIiOwo+ID4+PiArICAgICAgICAgICAgICAgbGludXgs
Y29kZSA9IDxCVE5fVFI+Owo+ID4+PiArICAgICAgIH07Cj4gPj4+ICsKPiA+Pj4gKyAgICAgICBi
dXR0b24tMTQgewo+ID4+PiArICAgICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW8zIFJLX1BDMSBH
UElPX0FDVElWRV9MT1c+Owo+ID4+PiArICAgICAgICAgICAgICAgbGFiZWwgPSAiV0VTVCI7Cj4g
Pj4+ICsgICAgICAgICAgICAgICBsaW51eCxjb2RlID0gPEJUTl9XRVNUPjsKPiA+Pj4gKyAgICAg
ICB9Owo+ID4+PiArCj4gPj4+ICsgICAgICAgYnV0dG9uLTE1IHsKPiA+PiBJIGRvbid0IHRoaW5r
IGp1c3QgaGF2aW5nIHRoZSBidXR0b25zIG51bWJlcmVkIHNlcXVlbnRpYWxseQo+ID4+IGlzIHRo
ZSBiZXN0IGNvdXJzZSBvZiBhY3Rpb24sIGJ1dCB0aGlzIHByZXNlcnZlcyB0aGUgR1BJTwo+ID4+
IG9yZGVyaW5nIHdoaWxlIG90aGVyIG9wdGlvbnMgZG9uJ3QuLi4KPiA+PiBJJ20gdGhpbmtpbmcg
YWJvdXQgZWl0aGVyIGhhdmluZyB0aGVtIG5hbWVkIGFmdGVyCj4gPj4gdGhlaXIgZnVuY3Rpb24s
IG9yIG5hbWVkIGFmdGVyIHdoYXQgdGhleSdyZSBsYWJlbGVkCj4gPj4gb24gdGhlIFBDQiBvZiB0
aGUgZGV2aWNlLgo+ID4+IENhbiBhbnkgb2YgRFQgbWFpbnRhaW5lcnMgZ2l2ZSB0aGVpciBpbnB1
dCBvbiB0aGlzPwo+ID4gCj4gPiBQZXJzb25hbGx5LCBJJ2QgcHJlZmVyIGdvaW5nIHdpdGggd2hh
dCBpcyBvbiB0aGUgUENCCj4gPiBvciBkZWZpbmVkIGluIHRoZSBzY2hlbWF0aWNzLgo+ID4gCj4g
PiBUaGlzIG1ha2VzIGl0IHdheSBlYXNpZXIgZmluZGluZyBkdC1lbGVtZW50cyBlaXRoZXIgaW4K
PiA+IHNjaGVtYXRpY3Mgb3Igb24gdGhlIGJvYXJkIGl0c2VsZi4KPiA+IAo+ID4gVGhpcyBpcyB0
cnVlIGZvciBhbGwgbmFtZXMgOy0pCj4gPiAKPiA+IE9uIHRoZSBPZHJvaWQtR28gZm9yIGV4YW1w
bGUgYnV0dG9ucyBhcmUgcmVhbGx5IG5hbWVkCj4gPiBzdzEsIHN3MiwgLi4uIHNvIHRoZSBkdC1u
YW1lIGJlY2FtZSBidXR0b24tc3cxIGV0Yy4KPiA+IAo+IAo+IE1hdGNoaW5nIHdoYXQncyBvbiB0
aGUgc2NoZW1hdGljcy9ib2FyZCBtYWtlcyBzZW5zZS4KCkknbGwgZG8gbXkgYmVzdCAoaW4gcmVn
YXJkcyB0byBib2FyZCBuYW1lKS4gU2NoZW1hdGljcyB3b24ndCBiZQpwb3NzaWJsZSBhcyBBbmJl
cm5pYyBoYXNuJ3QgcmVsZWFzZWQgdGhlbS4KCj4gCj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRv
ZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
