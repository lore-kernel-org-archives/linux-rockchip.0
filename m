Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2E79CD128A
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Apr 2024 15:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vSm76HndHQfqikCk+GVxLuiKxivnyYAWZ6tH+NkWY9I=; b=ResbO4jIFTQlXi3M77pgonYScv
	s+5evXou4S9qT+evKDTlFkrjkdAOBzOGgb/chMN6nlRpUYs8IOib+wnvo+oEkxaQ+m0GOeeYTE1Fg
	a13u6wv2Y6ylKHkLhN1ZP781Kwbub16I36FbwO/BwGjpQjw+qNfzKevXi/lO6ECrd1IWmJ0wyubso
	RV8bHSV8Uhh0JeG970QI0cZAn52EkTviNQpmM83O8wjq/cC1BdiradokyHroRpRR4bn8sc85p4jNY
	N/POvcOAGyBeTmBmmLDILojHqJmhra4qh4j6O4HPMJH7ZxutdN9l4cP6vP3F80b8c32BOMDxA+MvR
	dF95dXyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruDVJ-00000002jis-29Sb;
	Tue, 09 Apr 2024 15:35:21 +0000
Received: from mail-dm6nam04on20701.outbound.protection.outlook.com ([2a01:111:f403:2409::701] helo=NAM04-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruDVG-00000002jgv-00jm
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Apr 2024 15:35:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TXY7YebFidL3ljwwGxw7QhmtW1P/lcmn94vKqxIpQnpJq2xnljCH4HyLfskCYJ0HO8U4LbwAF/4R1F6SiIGAYSXmSec3k2DbvrWuJAFyMNU6me0gFkIj2Vk/Gr1xpzXiECuPej1nHoukhzKEEdxE3zZoeCWj/xDCMy4UfSvbyo6wBZs89mAWFbuEbqr9wq1xKvafuY7tTMsROlBq3yXvuw49O+lt6t64uKKtksOCFwH8fusM97Y7aI/TUc4K8AgLhbbYsjlGJqHi68FA/JbCUszRyEvokTn2N88n/TrgKkeUAy81XY/U9RPvwimLmsEyKkCJinvPCC7N9gTvpFoiqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IzJMaBu9yeXpH7IyyNCB9XetP04HG0RmYP5kALA8sI4=;
 b=gAjjxQ3BHNP149hudqpVHXFJRMEDbGLIELd/4+9cgU/WH7p6zVmpflO9NpmjOMrSQFSzI4ZErey4wHH7tEahhq0JQ2/EZBAREkUQ9lwRNIuqQUEiKHC6fQCZv9KZ+4wy9suonwNKvvKMnRm7uxYrkX8UUf77AEaFvI/LuG2qLP0lbngcQl2qnYilpypfnoF/wWwDcu19lZqBOVBowGqhXnAQvdhbdoMX7GtAvgeadmh/zzDBqAjHQH9NQQC4rfQuD4rcxiRWOKwgVVELTtrSKbi+BT2SyjWx0zoPMmc3a3975/2CcCoc+gtjgwtdk1ZUmZ0WnIwMOoUbmRZbz328jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IzJMaBu9yeXpH7IyyNCB9XetP04HG0RmYP5kALA8sI4=;
 b=BeLT0oNNCaFHx2W8ldwnfc2f+fCpqMn5VrHjNVACCTzr31yHvzTIYv3/TN6tzvSbzSvHZpQXCYLKkvDRDZO5CF58afN498eBGgidTPpo4PSKp64G4Y/b9bRNr1kkk4l0q8g6fN6ES4xXrE47bL0CJDyn87v32z5ID7jIRPCbwVw=
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB6935.namprd12.prod.outlook.com (2603:10b6:510:1b9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Tue, 9 Apr
 2024 15:35:05 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7409.042; Tue, 9 Apr 2024
 15:35:05 +0000
Message-ID: <42aea61f-52d7-4cea-9944-7130ffcf9c15@amd.com>
Date: Tue, 9 Apr 2024 17:34:58 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
To: Rong Qianfeng <11065417@vivo.com>, Rong Qianfeng <rongqianfeng@vivo.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, sumit.semwal@linaro.org
Cc: pekka.paalanen@collabora.com, daniel.vetter@ffwll.ch,
 jason@jlekstrand.net, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com>
 <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com>
 <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
X-ClientProxiedBy: FR0P281CA0144.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::19) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB6935:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LQwPNWDYyrUqKxONMsorqS+LM1yAzs46r3dJir9uH5EzWYtsZ76S0rRFYYxJBd4nzaSCfzdOYlBsY3Oy/OmrpO16o3lA+41QvPq04bB/986zx05HzKc395n2jUr0iW2Ser5xF4XrTKisInxb/Vko66QGR0aCWWQOqiXk0/YCv0j2ZbdOhWaUt1nT04c2ucLezvvB9MTL3fmQOukU4osyOYWnzMn+glqfd853g/+r4vrDEiHnVduS/rkW2KGkwyr8/UO/AodT/Dlr4CaYis74VFhjK3Mc9QUV0HeBA06HgBYxTcZh+OHfw6oOshScITNZLmZOlQVXY9Mvl4IQut1HeX3OBSu2Rtio7JXayBkYXgaCR7FkK2ulqYcfD/DhzynnN6HooynJmfPirCix0IFAJsUvViiBJ321xhCkql8Vhq52Xt0rizazBzmYFLSG/Fi58/5EcleP6OsVuI0oT6UN0LUirKRCdJ2E6690lwgIhB6H+AUgGgVeJV6LKDIQjlvQqrwqVzS7znypeucRjbOTWb8zQ1X2qJZ/fmRJsVuBHm4AFjwyFhbOUWDAn+cI0iBN70AS9jWU2TADP0uTwmFlSBUZEKR08c18kEL6RgfLcCDirfZCoPRpWp3pJWVAwW75dreiMAenvD3gSI9O2HLcev2Vi1xLcb6qLbmirJnOMUk=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(7416005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SVc4czlmR3lDMCswWU9LQXRHVXo4RHF5ZiszYkI2bnNmZEc5K1g4S3NKY2xm?=
 =?utf-8?B?QS9QV0lib1NIQlY4eDZBZFZWM2pJTXZ3UWdiN2hPanA1NDNKN3VNTzYvVEFW?=
 =?utf-8?B?YnNqTWxJeFcrWUxLdzAwRWFvdCs4NDNCL1dYaWhHeVJmc1hwQ0VKSGFxSDQ0?=
 =?utf-8?B?QVU0OFpnSWkzY2lOeVEvWEdvOHdhZnhRS3hpWXpBSytWOUNQV3NMVWk5cDRS?=
 =?utf-8?B?L1FKUFJwYk5LOVZ1NFlGU3RKeDdnY2ZsWnJscU9MZmtINlNzMERJSFkvNFhx?=
 =?utf-8?B?SmZlUXJNUTdBL2ZCTEFKYzdjNDRSSHpXSTE5L1BDZE9FVFFmRHZaRE85eXFP?=
 =?utf-8?B?dzNDdEpXbk5sOGYwZWY1VTRSVTVGVFd0K3dDVEkwN29ZblM1Yk1wUEl4Szd6?=
 =?utf-8?B?THU1ZmVTTUJveFpWNTM5TVB0d3ppcjR0UVlLTWhpRmt0UC9TeHhpTWIzMGJh?=
 =?utf-8?B?M0FjbHVLNVJGR0NXNTBzVG9kMS96QlJROUhUUUF4a0FtQzVCUTJDeFU5a3pa?=
 =?utf-8?B?bWQ1SWc5ZnlBbjBwZEhtQ0dySUdxdnNvVUdjQytEZTNsb1NxVURQSEk0MCtS?=
 =?utf-8?B?TlpJL091Q3RmbWFxcXJYc1RGb3ZET0tsZUh3aXorcUtyVjdXT1NuT0hCNE1C?=
 =?utf-8?B?Kzk0dmRGV1dOS2hiSXNyOHVITElUWEVKSVRQVGlyUHFXTDVNbGRXNlVMQjNJ?=
 =?utf-8?B?SjZmeERsTjJuRWVkU3NpdkRVSVNIQ2dIMTFCNEZmQVpRVmRXOVFUcERpMW15?=
 =?utf-8?B?VTNwa1FYaXNCQTFmN2g4aExGN2NpQVFYcWVyK3N6Y1p0MlZ2cFlLamVkQXlk?=
 =?utf-8?B?Q0NqMEJvWkJIOXpxSzRzdlNBY05YN3Y2N3FnTkpRejJIUG5zcm5zVTBKMkhv?=
 =?utf-8?B?ZC8ycUpLRy83UjRPQmI3QUFLb0Q0cFpKRlVFM1czZkVrQXNFSkY1U1QzQ0Fj?=
 =?utf-8?B?dEZzc0k1Z3lycVZ2aDhIeW1iZk1iZ3ltYzVnaWVMZkhwZXNrMGdHSnVhYUhX?=
 =?utf-8?B?YW9WZDFCVUlZcFBhcnZEWmlhbmhCUXdqcUNpRk9Ec2g4czI0ZHJ6a3JJRVl6?=
 =?utf-8?B?S25uZTMzcExINE1zVHAyendaZy9oVXJ5TnRZanp6TGNucnduZXRpK3RwYjBQ?=
 =?utf-8?B?bWs3b2x0MVBIbkptcVhxR0l3dDFUZFJQL0wvVHRyb3A3SHkwM3lXSnlRVkNv?=
 =?utf-8?B?dDRkQWNpRVhMNWtOd3F4L3l0djhkc3ZLZFVDVDBQUG0xNURLd3V3bjRET2wy?=
 =?utf-8?B?NlVZNVovLzErRksyYjhzcEFmeFhvOGdCeXMwN09qdHZDNGZNR2w0ZXRjR3BS?=
 =?utf-8?B?TXl6SUNmTys2QUJwcGM4THpUblFmVXZaN0wyVUFDN1crOWNYSk9tZ0pSa3F5?=
 =?utf-8?B?NCs5Uk1SM2tSWktxWVNWaXh1QStraU1FOG90cVZZNkRwbHoycWtOL3BhLzhw?=
 =?utf-8?B?cHprb3NOYWNKOURUMzRDSk8vc00rTnM4cGdCVVFMVWNrdit5c01KL0tsQjc5?=
 =?utf-8?B?UnNrQmZ6cFBjYm5ldm5FeG8ycWpWWWNYa3ZDWE1hZVJGN3VQdktuR1QzZXRa?=
 =?utf-8?B?NDdnMU1BNk82T3orOWdXdHdRWTdyT1RQR05yQUtnUU90Qkg1bHdWS0E5M0NH?=
 =?utf-8?B?bHNvTFc4OVAyMHVmMkhLT0tKaExLSnlvay9VS3I4YVQydklSMGVGa09SNWxy?=
 =?utf-8?B?VzZmVHpMMzJMaFk3cnlaOXlEUFJ3YncrRVFJSVRZbklzaVZ1T3NQTGIzU3F1?=
 =?utf-8?B?WEtMaDB0RTJFK0p6Mk9uZksyVXgrNWJWZmVtYTBSMjNIRUtOYWpobVYvTys0?=
 =?utf-8?B?UnhRUkVPT0pySnNRNTN3dUpQN0N4cG80d001UG8xYkFiWjZCNm91OVgrZExy?=
 =?utf-8?B?ck4yemJwNytmbWVLSCtndW8wWW1CcHpiUUxTRWpMVktVOHJZQ3o0VzVka0pU?=
 =?utf-8?B?NGpZS0VTTVY1aFgwQXlpWmp5akJrVi9Pd2RlaTBYYnBaMTduc2g0a2NBNE5D?=
 =?utf-8?B?alJDbTEvZEtNZ3gxelNXMlh4anVWUFlmRlg5bTBWM0xQR0FMaE93T3ZUWlhl?=
 =?utf-8?B?ejE2MkY5YWw4U1kxL2dtWXlrOGxnTHdiaWd3bGdWeEJUZy9PenI2ZGNORGpi?=
 =?utf-8?Q?6ZFrgaJqwYxD0OtJtShE/LfFi?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd98731f-1ac4-41f3-a20c-08dc58aaa11c
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2024 15:35:05.3677
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XNDwPIN0nNSmxS9YJcOVy7Hv9+yHXg9YW4W5+Uto/FmZfbxgfvqm8XwVpGgQsScm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6935
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_083518_128201_57F0344C 
X-CRM114-Status: GOOD (  18.90  )
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

QW0gMDkuMDQuMjQgdW0gMDk6MzIgc2NocmllYiBSb25nIFFpYW5mZW5nOgo+Cj4g5ZyoIDIwMjQv
NC84IDE1OjU4LCBDaHJpc3RpYW4gS8O2bmlnIOWGmemBkzoKPj4gQW0gMDcuMDQuMjQgdW0gMDk6
NTAgc2NocmllYiBSb25nIFFpYW5mZW5nOgo+Pj4gW1NOSVBdCj4+Pj4gQW0gMTMuMTEuMjEgdW0g
MDc6MjIgc2NocmllYiBKaWFucXVuIFh1Ogo+Pj4+PiBBZGQgRE1BX0JVRl9JT0NUTF9TWU5DX1BB
UlRJQUwgc3VwcG9ydCBmb3IgdXNlciB0byBzeW5jIGRtYS1idWYgd2l0aAo+Pj4+PiBvZmZzZXQg
YW5kIGxlbi4KPj4+Pgo+Pj4+IFlvdSBoYXZlIG5vdCBnaXZlbiBhbiB1c2UgY2FzZSBmb3IgdGhp
cyBzbyBpdCBpcyBhIGJpdCBoYXJkIHRvIAo+Pj4+IHJldmlldy4gQW5kIGZyb20gdGhlIGV4aXN0
aW5nIHVzZSBjYXNlcyBJIGRvbid0IHNlZSB3aHkgdGhpcyBzaG91bGQgCj4+Pj4gYmUgbmVjZXNz
YXJ5Lgo+Pj4+Cj4+Pj4gRXZlbiB3b3JzZSBmcm9tIHRoZSBleGlzdGluZyBiYWNrZW5kIGltcGxl
bWVudGF0aW9uIEkgZG9uJ3QgZXZlbiAKPj4+PiBzZWUgaG93IGRyaXZlcnMgc2hvdWxkIGJlIGFi
bGUgdG8gZnVsZmlsbCB0aGlzIHNlbWFudGljcy4KPj4+Pgo+Pj4+IFBsZWFzZSBleHBsYWluIGZ1
cnRoZXIsCj4+Pj4gQ2hyaXN0aWFuLgo+Pj4gSGVyZSBpcyBhIHByYWN0aWNhbCBjYXNlOgo+Pj4g
VGhlIHVzZXIgc3BhY2UgY2FuIGFsbG9jYXRlIGEgbGFyZ2UgY2h1bmsgb2YgZG1hLWJ1ZiBmb3Ig
Cj4+PiBzZWxmLW1hbmFnZW1lbnQsIHVzZWQgYXMgYSBzaGFyZWQgbWVtb3J5IHBvb2wuCj4+PiBT
bWFsbCBkbWEtYnVmIGNhbiBiZSBhbGxvY2F0ZWQgZnJvbSB0aGlzIHNoYXJlZCBtZW1vcnkgcG9v
bCBhbmQgCj4+PiByZWxlYXNlZCBiYWNrIHRvIGl0IGFmdGVyIHVzZSwgdGh1cyBpbXByb3Zpbmcg
dGhlIHNwZWVkIG9mIGRtYS1idWYgCj4+PiBhbGxvY2F0aW9uIGFuZCByZWxlYXNlLgo+Pj4gQWRk
aXRpb25hbGx5LCBjdXN0b20gZnVuY3Rpb25hbGl0aWVzIHN1Y2ggYXMgbWVtb3J5IHN0YXRpc3Rp
Y3MgYW5kIAo+Pj4gYm91bmRhcnkgY2hlY2tpbmcgY2FuIGJlIGltcGxlbWVudGVkIGluIHRoZSB1
c2VyIHNwYWNlLgo+Pj4gT2YgY291cnNlLCB0aGUgYWJvdmUtbWVudGlvbmVkIGZ1bmN0aW9uYWxp
dGllcyByZXF1aXJlIHRoZSAKPj4+IGltcGxlbWVudGF0aW9uIG9mIGEgcGFydGlhbCBjYWNoZSBz
eW5jIGludGVyZmFjZS4KPj4KPj4gV2VsbCB0aGF0IGlzIG9idmlvdXMsIGJ1dCB3aGVyZSBpcyB0
aGUgY29kZSBkb2luZyB0aGF0Pwo+Pgo+PiBZb3UgY2FuJ3Qgc2VuZCBvdXQgY29kZSB3aXRob3V0
IGFuIGFjdHVhbCB1c2VyIG9mIGl0LiBUaGF0IHdpbGwgCj4+IG9idmlvdXNseSBiZSByZWplY3Rl
ZC4KPj4KPj4gUmVnYXJkcywKPj4gQ2hyaXN0aWFuLgo+Cj4gSW4gZmFjdCwgd2UgaGF2ZSBhbHJl
YWR5IHVzZWQgdGhlIHVzZXItbGV2ZWwgZG1hLWJ1ZiBtZW1vcnkgcG9vbCBpbiAKPiB0aGUgY2Ft
ZXJhIHNob290aW5nIHNjZW5hcmlvIG9uIHRoZSBwaG9uZS4KPgo+IEZyb20gdGhlIHRlc3QgcmVz
dWx0cywgVGhlIGV4ZWN1dGlvbiB0aW1lIG9mIHRoZSBwaG90byBzaG9vdGluZyAKPiBhbGdvcml0
aG0gaGFzIGJlZW4gcmVkdWNlZCBmcm9tIDMuOHMgdG8gM3MuCj4KPiBUbyBiZSBob25lc3QsIEkg
ZGlkbid0IHVuZGVyc3RhbmQgeW91ciBjb25jZXJuICIuLi5ob3cgZHJpdmVycyBzaG91bGQgCj4g
YmUgYWJsZSB0byBmdWxmaWxsIHRoaXMgc2VtYW50aWNzLiIgQ2FuIHlvdSBwbGVhc2UgaGVscCBl
eHBsYWluIGl0IGluIAo+IG1vcmUgZGV0YWlsPwoKV2VsbCB5b3UgZG9uJ3QgZ2l2ZSBhbnkgdXBz
dHJlYW0gZHJpdmVyIGNvZGUgd2hpY2ggYWN0dWFsbHkgdXNlcyB0aGlzIAppbnRlcmZhY2UuCgpJ
ZiB5b3Ugd2FudCB0byBzdWdnZXN0IHNvbWUgY2hhbmdlcyB0byB0aGUgY29yZSBMaW51eCBrZXJu
ZWwgeW91ciBkcml2ZXIgCmFjdHVhbGx5IG5lZWRzIHRvIGJlIHVwc3RyZWFtLgoKQXMgbG9uZyBh
cyB0aGF0IGlzbid0IHRoZSBjYXNlIHRoaXMgYXBwcm9hY2ggaGVyZSBpcyBhIGNvbXBsZXRlbHkg
bm8tZ28uCgpSZWdhcmRzLApDaHJpc3RpYW4uCgo+Cj4gVGhhbmtzLAo+Cj4gUm9uZyBRaWFuZmVu
Zy4KPgo+Pgo+Pj4KPj4+IFRoYW5rcwo+Pj4gUm9uZyBRaWFuZmVuZy4KPj4KCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
