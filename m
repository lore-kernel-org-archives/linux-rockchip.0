Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4402BCDB474
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 18:41:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m5kv1Am3RaGN209UhAE3Jj7smUMxdvtSmd5hP/f9PBs=; b=B0XhQn6JqX4Nom
	wAhfGBWcZJbfIFpssAVkkmLOAOMNMzTEJBzR6Ao4f0iAFZWRstSeIh8ahpprqvn2mTyNNyOXQTCkZ
	CBzMGeIqimZs7Vl5TgXXm5DDv5MsrgjrJp4TB74goSFZRMF8WTxK32p6tm90UpSjwE8IjQlSfnwrs
	hI0wJ8R9y1pzFUrUDaAKVBZzXEY7B3U84uCCrqlnDXV+6UGOR6FRH6aja8Q17O37CAX7ZhM32vEjx
	bQxaCf8n3utDgmOPt+jvSjQ0ob460W1XjgRbrtczhBg9WY4IdZcS/kdv5IBsOWKSLXTbuLlpqqjPl
	8cdF0dfHoNQLTstyGHSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsSX3-00ALcl-2v;
	Mon, 16 Oct 2023 18:41:37 +0000
Received: from mail-dm6nam04acsn20808.outbound.protection.outlook.com ([2a01:111:f400:7e8b::808] helo=NAM04-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsSX0-00ALc9-0N
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Oct 2023 18:41:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WVeRnHXFOTeM5PyNS+iGvEiA//K4GBKJgHY9dgA6QvrknZ0/puZGurrsD6ArCi8WSPdKhENVP9yXhbDakaMx7LqgTK2Y8XyTj39g4ugHDE+ecwtmaUtLpUtYmWTFSXdwMK2evTwBn0LCf07s62FC7yTUb5AShUBjxO8DZdaoY5NP9P9vVBDH/Nrzur24gfeqIpCuF6/TVQJkMzVz1KRl8aNdaa8kMnGstVg/59oLzYbZW0oCvad4nkcEvQfeUWGyaB1dCbJ+PoW+k2YLqgMdbGkL6eK3JSN2AHBZPZQFk0fp047+6CQD2QWBeGd93WnxCfJB17ExXkFUi886d5HmlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NvJ4mfik3XzEi/okf1swtRB4K+RlxRRGjhOGzAREJew=;
 b=ELhnGqv7P50pr+H4NA1X+VcZIKx+X1SdpEEjfADfHdO5XYdiZv4y7emPGKAnB4G2y2m/DgwLuSHMtucFRkS2D1pkBE81uRTsIMiasse6LMahifZOvkzZjONvbUcADhGzUIuz21MT4o6mETVXyMY253dL3Zps/Bc8s5fWKdlcAlFl5FqLIB2gRTQdeoF7fQcLOJbgSb6RJVBooskrT8Ufu46d4xot5o1BC0fKPXHfp9kRpgUi1sEKksZuN/oyC7phdonMz0hQA8SeVJ6rGK7yjALl1iv/FsiGETk5km1xUOLjxn9hwZfNegfRU0j648wFnmOSvvKLuS9Cpk7WQmgb+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NvJ4mfik3XzEi/okf1swtRB4K+RlxRRGjhOGzAREJew=;
 b=Fp7TXLtPYn0mUjTvGS7o2N4Zn5Sn804r+fyIbPiZDzNmthBpm8/52Bhjt6xTJPwk2+Pa6VuTHvVpz1G8ohnBY88VQHlG7GALHSVV0k/WV+rT612VMpZz+VLWK2K1SytrwVuWeqBe5lAaNuA+OiPlqvDA6dkZlwhNmcx8ON8jS1Zec+jNoMWT3zu3LpZvIKOtZshQBnqkAMRwXf/g8jfpkzAK1lCv0iHC7xm6dEpfsVqj+UNzrb/KpbwZMIIB85ElUrsyIiXntz51Es9uruUXA4DjWB7tUCholRDFc8dEkK49Ij69qq4/CknRICS2bgJarxpR0ke4cLYjmLltf6ZYhA==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by PH7PR06MB9041.namprd06.prod.outlook.com (2603:10b6:510:12c::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.35; Mon, 16 Oct
 2023 18:27:01 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::c40c:bbc8:b103:459c]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::c40c:bbc8:b103:459c%2]) with mapi id 15.20.6863.032; Mon, 16 Oct 2023
 18:27:01 +0000
Date: Mon, 16 Oct 2023 13:26:58 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Guido =?iso-8859-1?Q?G=FCnther?= <guido.gunther@puri.sm>,
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
	andyshrk@163.com, jagan@edgeble.ai, daniel@ffwll.ch,
	airlied@gmail.com, sam@ravnborg.org, neil.armstrong@linaro.org,
	megous@megous.com, kernel@puri.sm, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH 3/5] drm/panel: st7703: Add Powkiddy RGB30 Panel Support
Message-ID: <SN6PR06MB53428A7534F1AB449688AA67A5D7A@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
 <CADcbR4+i_B26g_gLrjTm8dxVzprb-WHRrx=r07wKhcJuei+96w@mail.gmail.com>
 <e52152b6783e3fce9aebb64a553c6922@manjaro.org>
 <2140189.3Lj2Plt8kZ@diego>
Content-Disposition: inline
In-Reply-To: <2140189.3Lj2Plt8kZ@diego>
X-TMN: [3FMJltSazDMsTNBWqX/5n9uRmOQr5BMP]
X-ClientProxiedBy: SA1PR04CA0017.namprd04.prod.outlook.com
 (2603:10b6:806:2ce::22) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <ZS2AcgCVHNJj/iHZ@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR06MB5342:EE_|PH7PR06MB9041:EE_
X-MS-Office365-Filtering-Correlation-Id: 0129c36d-066e-4fba-223e-08dbce757d3d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m5/yBApDdhOKlQPt9E1EK01hFPb3jDhNMjt/xvgaNhbyVaBHnFDHcRdkqQbSQus+q2D99GDM8uCSPhIhB1k1XeGSVoWwcibCKd8tCYQLV172hHRrHxcsMIPDBnIc41ogmEwFuEKIHgmv5yPuUmXLIXi9Liug7KQRNGhXVt4pLN0NkCptzkKaehK58D+oLJ87nSvJIDHYoWdyyYLOTGl3yU4FVc15o31KvCKVy4I++FSBFIlo+9u/Sdx4mKjJWg5LVfGfBNAnIJ2NcCfG/Q+SeMoZ7CmHYbqv+sZks4QEhZ5lOP+KRj7ceLX73yqp8mLz2uFiJmJgMY6JHE2dV8rewdrrD6Ys8UIkrycmcImdmSZOvqlbVSz/nlIcUDAush2THuWk45VpM5UfHF/LNFJYpHwY4CuOsiK2kMKAy5jyNpLrFTMufJlNzWVUH4513ZKc2DGD43ugndGa7VIHZUOFnmK8Az5KxXQYbZcE2nrPaflCHlvFTKAgii2KBGtaOiVI/X6dwtVFZViM9hT1etlgEIumylmGiPwyRJXH6gzfEO4=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEV3RzNudkcyU1VLc2lIbTBiUG5BajJFQlppb0ZVdmJ1WEsra2J5L1lzNVJX?=
 =?utf-8?B?b1FxTEpTRHhIMTFNYkwyMnJXclVaUDBFbHVrbE90VS9xKzR3b2xUbU5CcnVT?=
 =?utf-8?B?VUptNUhhSmxLQmlPN3M2ZExYYlF4TERqZ3poYWJOeGtaaG1lOWtBRzhpRWVL?=
 =?utf-8?B?RkF3bzR0MkZQV0tkM0N1K0NOalZNeVpVVHh6d3NrbXpEcXFvRURKZEQ2RE84?=
 =?utf-8?B?bXpOZEZsWW84bHhCUWxtV09WRTNwVytJSGx6aXhNRTh2aUFSR3lJcmZwSHJ4?=
 =?utf-8?B?S2t0S21UMFdTV2hGR1ZOYmhLajc5TTJHclpCbUJ5cHZiRFBSWDAyT3ltQ0FR?=
 =?utf-8?B?cVJHQmh3UWp3ODA0NGExa2JHOC9kaXlJRGx2amJyQVQvbTM0b0RFaHlFNXpm?=
 =?utf-8?B?VWVaTFkvNDNSTlN4SWpvTXl5b2U3RURkTUUyU3FVVzBNdkU2YnlPdllXU1M3?=
 =?utf-8?B?UzROVU91NWF5SksxNkUwb3djY21mNzhqYnFTRjlmNnpaeiswVkIzT0I0U0tJ?=
 =?utf-8?B?R3pQUlhqQ1lvbXVKVVFqaEV4NC9zRVBHaW1DZnc4OFJRaVJxZjFPT1l3eFBQ?=
 =?utf-8?B?SC9tbWRPNVlFazk3RzVneVRxaW1FMEMyYTQ4QUZtcloyOFB5aGkzK1dPN2ls?=
 =?utf-8?B?MWkxc2dUeHlicTV3ZTQ3SUlBNDZ2RlRUVUN1NEJFNGxSb3JkOWMyREhnaEl1?=
 =?utf-8?B?bGdYbVBWVlN2NW44TDNacWN4K25qaC9DOFF3TWYxa2Z3cko5ZitwOHdxdGpx?=
 =?utf-8?B?NlNWQVEwUElyZ29DLytldVpEQ1Q3K1U0WlFlbTdqNFhpeUpFL0RBM21nWkVq?=
 =?utf-8?B?V2F2bmdPN3dqT3dXaktkTTBNTkFCWUt3ZVFtVG5vNzQvNUR3K0V6ZW81RkZ1?=
 =?utf-8?B?WThsTkRHZ2FvZ1B4ZjJFdWxocllvL01MN1Z5RjBhZWlTVU1zemdiL2k1V1N0?=
 =?utf-8?B?YWNaQ1BPTkMrdEVwY0VMKzlXUFpLSmJCd0Y5NnZVbGZISU9ydUdMNjVPb2Y5?=
 =?utf-8?B?Ym83L0pXMXRDeU5MVmRqZk5uNjcyMitoWmk5amF3ZXF3SXZsQnBheUdML3gx?=
 =?utf-8?B?ZU9LQ1FTNkVYMnNYSExkYXViT202U2R5TmxGaTZTTVQ2WTY1QzRmc2swV3RM?=
 =?utf-8?B?R2ozckF0dVNsVkoyVGc5RzRjWWd3OVJxNWQzenQ0Y2oyVS9KOE4xb2krSFI0?=
 =?utf-8?B?eThBQW9HaDNaaStJMjJpWHVTQ1NtMmpEWXR1TE5qS1ZSbVFXaGxJVDZkYUhv?=
 =?utf-8?B?Y01KaXpiQ2FMaTVZaTcxTTkwMG5vQnRxajFJZHRPZ3BsSTMyZjdNTkdTZXRX?=
 =?utf-8?B?dUVka3ZEVWU1NngvRU1OUS9lVFk4U25NbkVuYzFtTytmdlQzei8xM3lsM1RF?=
 =?utf-8?B?QWNmZFBZVmFQbEJneWNQOXc3d2JGWGRBOUQyT0R1bWl1bFNqZEJhUHNFanVa?=
 =?utf-8?B?OVNYclRDdTdLaTJjazhUenEyOGhWRVllN0JJVzd1M29WTHI4Z2d4YTE1Z3pk?=
 =?utf-8?B?NkpZQm9SL05PVmI5YkRpT1RPVUUraVBWaXpMcVRoR3oxa01vL1VPd2lVdHc4?=
 =?utf-8?B?V0w2Zm4zTEV5UFlBSlBDSTgvNFNvN3lpNWppSGhLaHB4MStXNjIwRVF0cjdB?=
 =?utf-8?Q?zkpU0ZrdHftBN1XEf174yttHNXWMzC38XBhg3tw0WwQo=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 0129c36d-066e-4fba-223e-08dbce757d3d
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2023 18:27:01.7951
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR06MB9041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_114134_168532_D85598E5 
X-CRM114-Status: GOOD (  23.57  )
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

T24gTW9uLCBPY3QgMTYsIDIwMjMgYXQgMDg6MTg6MjVQTSArMDIwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gSGksCj4gCj4gQW0gTW9udGFnLCAxNi4gT2t0b2JlciAyMDIzLCAxODowNzo1MiBD
RVNUIHNjaHJpZWIgRHJhZ2FuIFNpbWljOgo+ID4gT24gMjAyMy0xMC0xNiAxNzo1MiwgQ2hyaXMg
TW9yZ2FuIHdyb3RlOgo+ID4gPiBDb25maXJtZWQgdGhhdCB0aG9zZSBwZW5kaW5nIHBhdGNoZXMg
RE8gZml4IHRoZSBwYW5lbCBzdXNwZW5kIGlzc3Vlcy4gCj4gPiA+IFRoYW5rIHlvdS4KPiA+IAo+
ID4gQXdlc29tZSwgdGhhdCdzIGdyZWF0IHRvIGhlYXIhICBQZXJoYXBzIGEgIlRlc3RlZC1ieSIg
aW4gdGhlIG9yaWdpbmFsIAo+ID4gTEtNTCB0aHJlYWQgWzFdIGNvdWxkIGhlbHAgd2l0aCBoYXZp
bmcgdGhlIHBhdGNoIHB1bGxlZCBzb29uZXIuCj4gPiAKPiA+IExpbmtzOgo+ID4gWzFdIAo+ID4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8zM2I3Mjk1Ny0xMDYyLTFiNjYtODVlYi1jMzdk
YzVjYTI1OWJAcmVkaGF0LmNvbS9ULwo+ID4gCj4gPiAKPiA+ID4gT24gTW9uLCBPY3QgMTYsIDIw
MjMgYXQgMzo0MeKAr0FNIEd1aWRvIEfDvG50aGVyIDxndWlkby5ndW50aGVyQHB1cmkuc20+IAo+
ID4gPiB3cm90ZToKPiA+ID4+IAo+ID4gPj4gSGkgQ2hyaXMsCj4gPiA+PiBPbiBGcmksIE9jdCAx
MywgMjAyMyBhdCAwMTozOToxNlBNIC0wNTAwLCBDaHJpcyBNb3JnYW4gd3JvdGU6Cj4gPiA+PiA+
IEZyb206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPiA+PiA+Cj4g
PiA+PiA+IFRoZSBQb3draWRkeSBSR0IzMCA0IGluY2ggcGFuZWwgaXMgYSA0IGluY2ggNzIweDcy
MCBEU0kgcGFuZWwgdXNlZCBpbgo+ID4gPj4gPiB0aGUgUG93a2lkZHkgUkdCMzAgaGFuZGhlbGQg
Z2FtaW5nIGRldmljZS4gQWRkIHN1cHBvcnQgZm9yIGl0Lgo+ID4gPj4gPgo+ID4gPj4gPiBUT0RP
OiBUaGUgcGFuZWwgc2VlbXMgdG8gbm90IHJlc3VtZSBwcm9wZXJseSBmcm9tIHN1c3BlbmQuIEkn
dmUKPiA+ID4+ID4gY29uZmlybWVkIG9uIHRoZSBvdGhlciBTVDc3MDMgYmFzZWQgZGV2aWNlcyBp
dCB3b3JrcyBjb3JyZWN0bHkuCj4gCj4gc28gdGhpcyBUT0RPIGl0ZW0gY291bGQgZ28gYXdheSwg
cmlnaHQ/Cj4gSSBjYW4gcmVtb3ZlIGl0IHdoZW4gYXBwbHlpbmcgdGhlIHBhdGNoLCBqdXN0IHdh
bnQgdG8gbWFrZSBzdXJlCj4gYWxsIHJldmlldyBjb21tZW50cyBhcmUgYWRkcmVzc2VkIC0gb25s
eSB0aGUgc3VzcGVuZCB0aGluZyBpdCBzZWVtcy4KClRoYXQgaXMgY29ycmVjdCwgYnV0IGxldCBt
ZSBzZW5kIGEgdjIgb2YgdGhpcyBpbnN0ZWFkLiBJJ2xsIHJlbW92ZSB0aGlzCnZlcmJpYWdlIGFt
b25nIG90aGVyIGZpeGVzLiBFbmQgdXNlcnMgd2FudGVkIG1lIHRvIHNlZSBpZiBJIGNvdWxkIGdl
dAp0aGlzIHBhbmVsIHRvIHJ1biBhdCBwcmVjaXNlbHkgNjBoeiwgd2hpY2ggSSBiZWxpZXZlIEkg
YW0gYWJsZSB0byBkbwp3aXRoIHRoZSBhZGRpdGlvbiBvZiBhIG5ldyBQTEwgY2xvY2sgaW4gY2xr
X3JrMzU2OC4gSSBiZWxpZXZlIEkgaGF2ZQp0YWtlbiBldmVyeSBjb25zdHJhaW50IGRldGFpbGVk
IGluIHRoZSBkYXRhc2hlZXQgdG8gaGVhcnQgZm9yIHRoZSBuZXcKZnJlcXVlbmN5IEknbGwgYmUg
cmVxdWVzdGluZy4gQnkgdXNpbmcgdGhlIGZyZXF1ZW5jeSBvZiAyOTI1MDAwMDAgZm9yCnRoZSBW
UExMIEkgY2FuIGdldCB0aGUgcGFuZWwgcnVubmluZyBhdCA1OS45NjloeiB3aGljaCBpbiBteSB2
aWV3IGlzCmNsb3NlIGVub3VnaCB0byB0aGUgaWRlYWwgNTkuOThoei4KCkkgYWxzbyBhY2NpZGVu
dGFsbHkgbGVmdCB0aGUgVUFSVDIgYWN0aXZlIGV2ZW4gdGhvdWdoIHRoaXMgZGV2aWNlIGhhcwpu
byBleHBvc2VkIFVBUlQgcG9ydCwgc28gSSBuZWVkIHRvIGZpeCB0aGF0IHRvbyBieSBkaXNhYmxp
bmcgaXQuCgpMYXN0bHkgSSdsbCBhZGQgbXkgdGVzdGVkIGJ5IHRvIHRoZSBkcmktZGV2ZWwgcGF0
Y2hlcyBhcyB3ZWxsLgoKVGhhbmsgeW91LApDaHJpcwoKPiAKPiAKPiBUaGFua3MKPiBIZWlrbwo+
IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
