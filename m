Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14904D767D8
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Oct 2024 14:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vC/R1UZkLViWXbGukrxPPxHK84v7wZAEV3CnIBlRO0=; b=f6G0g0PcYqsAvx
	Mwder0a8aqEDRNyEeUOjN6phHs1FBMejjIPL56vdOU4nfKz2iut5r5HZ3inJQM29cRWkR55cla8Dy
	JyIqyGvmr2+om7MwRZSrgX/PPbvI2Pdcs+i7d7eoC6KzisvIN/URtd8HvexZBDUHwT9TNjf91jJHb
	wNMOaTIXTkVTEkOx1rFDmL3LoW0WnV6N9plKOgTjATMFCe2NaSLd29A4eVUTpZrRT1hjkBc+qN99M
	qmMJwz2GXICJ28IRD0vuJQTnE4iJEjrmujbw8MbaPHFRsjudEKvmwL5W1q9ryMH8z68AawX0OMUO3
	rtFpF2EQWA8oizgxImUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Wdx-00000003tBy-3ZOA;
	Thu, 31 Oct 2024 14:59:25 +0000
Received: from mail-dm6nam11olkn20801.outbound.protection.outlook.com ([2a01:111:f403:2c15::801] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6Wdv-00000003tAd-2KxJ
	for linux-rockchip@lists.infradead.org;
	Thu, 31 Oct 2024 14:59:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M5fKuG1UGSJwZJbNz0zP6cxvRJGReBGuXNslC49cMHnH+yLr6Fcnw50O/u0eXaafjzyb5biTokTFP04fXLDVkkm9sr4W6hD0LvSzlfBFr/puTXnTlxUT/dWYG/1i46r5RHTgCM+/HdkUb7wcXVOTVpMWpJibxDgYBa2+v/iPHW8358ds06MudzOwAiPztIjljIY95fe70erbfabURs0Tr5rxC37wTGOTRxVp6XvHodEFx/9W4mTcxEzhHN3aQ5p45f4itigE45r9lIyHYDVpyQDFb7x5bva6V0M9Bq2Vtzwmo6gNikxZjzRzPxdIQLgoogrMSLJUF7LOfpHT6etbhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0vyrKqS14ogx6yDbPPlE7B65QPZ6dqAdR+XUa4Zoe9A=;
 b=joeERtGgXlTORHwaiYLCclyVUlPDl+3mg8gJaMeRRsncUx1JfK9p5vcGzSRSRe6PcaAjmocGHputgfMqR0/YTq0nt7tKGwx572RKckI+nriQvMwW9zE1YMRoSrogOOvkMpa1oyo5xbq17H4AdyWRKQUfdNo0G5RUqeQSSPkbUcerJ6JBrwj6sPmc1IgdCubl2QQ7lKGgQhytBXya+kX9Rz4gatV1HWqzxYzLnSOKf8Pj1xegjMtQ/RZWab0TOQHaNmC00qQj/8XXXldZmCx/K1uaQ3Kl/HzzG+Y7HfwFfpYpdLKFFi9yBtXNtqf62fDDk2Vzwb4+WPToVW4QfPyIOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vyrKqS14ogx6yDbPPlE7B65QPZ6dqAdR+XUa4Zoe9A=;
 b=adFhRt63VrXKxxpKvjm/t0buebP/e/rI6UO3lShEWbFuoImEnL8lEh6M7qksZYtOrFlYPcqa5RIM7SI8lCzQY1HBGlFYaP+uH3p9deuNnF+zIsVOBXXamRRpatnN4lZrCDhUfvCjVQ3T0skgEi2MFIPkVbWsU/Tp920urk1AAMc0hNR29rz1TtFcMpJbmU1tDtqdpMLejmOecH4ml8QOo0KCddSAdeL4wPTaB2tSDM18dDXGqirZPbj0E0xqxlY5K9WmOk/T2igEWbytCFG21tvAEeCK5siyxlHApMkjFfkSIzfqEvIU/yy6uWHToefLtJT+Sl8RB49N5Nf4plD70A==
Received: from MN2PR16MB2941.namprd16.prod.outlook.com (2603:10b6:208:e1::15)
 by PH7PR16MB4728.namprd16.prod.outlook.com (2603:10b6:510:13b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.20; Thu, 31 Oct
 2024 14:59:13 +0000
Received: from MN2PR16MB2941.namprd16.prod.outlook.com
 ([fe80::9d62:95ae:c373:c490]) by MN2PR16MB2941.namprd16.prod.outlook.com
 ([fe80::9d62:95ae:c373:c490%5]) with mapi id 15.20.8114.020; Thu, 31 Oct 2024
 14:59:13 +0000
Date: Thu, 31 Oct 2024 09:59:03 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH V2 3/3] arm64: dts: rockchip: Enable HDMI0 on Indiedroid
 Nova
Message-ID: <MN2PR16MB2941483C0D33369A76A7E910A5552@MN2PR16MB2941.namprd16.prod.outlook.com>
References: <20241030192236.839105-1-macroalpha82@gmail.com>
 <20241030192236.839105-4-macroalpha82@gmail.com>
 <CALWfF7LNN2dAtr00nLyk8rgE-K1vtSXkjhCFMbkVSzxhhSDvWQ@mail.gmail.com>
 <5831051.DvuYhMxLoT@diego>
Content-Disposition: inline
In-Reply-To: <5831051.DvuYhMxLoT@diego>
X-ClientProxiedBy: SN6PR2101CA0010.namprd21.prod.outlook.com
 (2603:10b6:805:106::20) To MN2PR16MB2941.namprd16.prod.outlook.com
 (2603:10b6:208:e1::15)
X-Microsoft-Original-Message-ID: <ZyObN4YgbApNWkYD@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR16MB2941:EE_|PH7PR16MB4728:EE_
X-MS-Office365-Filtering-Correlation-Id: 66302974-1cc3-43ba-8d69-08dcf9bc93dd
X-Microsoft-Antispam: BCL:0;ARA:14566002|461199028|8022599003|15080799006|8060799006|7092599003|19110799003|6090799003|5072599009|440099028|3412199025;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SEVBd0VBLytKcy9Bak5QZmRDVTF0RnFWakQ0NDRSTHozQU9VRG92bTBTNm5a?=
 =?utf-8?B?K0RJSFJuQSt6dXpuMHluODM0cTA5UW1KMERWRWxJWTJDL1dlSGVUUWxwNzJr?=
 =?utf-8?B?UlJvT1BlVGpXRjZnRlExazJIVTlKTVlBVG1DYS9HTk9YcDdVQm5Eczc4NWdD?=
 =?utf-8?B?VXQ1NGJuMFA0S0U4M0RyZ0ZaeC9EWTBFQldtaWlFamRFbXN1K1ByWHRtbXoy?=
 =?utf-8?B?OGdyZ1RuVnBSbWx4QUhiLytHMmR4Qnk1NzdrTTk5NVhYYThrRGdIRkJubkRG?=
 =?utf-8?B?aEJRclN4YkdUOXQ1M2g3dU9qcXpJWVM5dG83Y0xoMEVRNG0rcmpKTlJqenl6?=
 =?utf-8?B?b3BXeUxRUEFvUG1zU0Z0U25rNzhBdWpnUnczc2tqbVRNcHVQbUtrQTd1eXJC?=
 =?utf-8?B?QmJEV0lsRFBTVmp1NjVrVHVNRE02TWYvdHZxR1diQ05BK2VDZ3BwWWZQRUlz?=
 =?utf-8?B?OUYzQzZzUlZ6WklzOEF0KzlmQUF5N1AxT1V6UFpOUUpBeWc5WS9sdS9hemta?=
 =?utf-8?B?Z29UL215aENpY2kxRkRzVDBSWjFOYW1heHJ5OFVKOTV5eXZvVTRlalM2ZUpC?=
 =?utf-8?B?OVB0YXFiWnduL0pOTkF4blo0WGRJbWhXdHgzUmF2cGRSSlZ0VnIzZFFkbVow?=
 =?utf-8?B?SnYyWE9xdGxOYzl4cTRaZ3JFeFc1b2lrWnkrWExlTzdCclR0U3VraGI2RUE4?=
 =?utf-8?B?MTQvSEg0VDA2WVIzV1gxWnR2V1U4eGcrd0FnQjlQblpZenlLdXBVTWgyWGs4?=
 =?utf-8?B?MGU2b1dNc2ZUT3l6cTkxYXZySVhxb3VYNS81Sjc5Z0x1dS9pTXI3OGIwTFBX?=
 =?utf-8?B?QS84Yzg1ZEtSUC9SeEtQWStoWHNXWXdhNUx2blFmdjBmeC9ERGNOVnpKM2cx?=
 =?utf-8?B?SGRKd3hwY05lL1hISW5lcGd2bFN1MVQ3alFnZEV0Wmk3ZXNJVXhIeEFOMWlz?=
 =?utf-8?B?UEJhd2ZCbHJ5b3ZKeEEwS2I5N0VQL2Nhb2JLMXFzbXVsVGxESmxOUUJCK1Ny?=
 =?utf-8?B?bWdRZmVmY0Z0TUtCRCt6OGNVSXdwWUVQMDhuRTJVWHNlVkd6NzBnK3ZUT1Qr?=
 =?utf-8?B?ZXkxWkZwWUhtcGd0aFRzK3ZUWHk0SWZUMG5tR2UrRFpFMUxwcWpvalZBRC9t?=
 =?utf-8?B?SFRiV1Y0MjJrejZwbkJoK3pCSUdtcll2ZVZsV2lYWkF4RThSM0ZuOWtJNUlF?=
 =?utf-8?B?NXdBWE9kMXNFNzUxeGFIRVkwbXBPdEYxbW1DSGxlS0MxUW9YLzZaK3UzNVJB?=
 =?utf-8?B?L21vOHdDOG41eWJFWkxFTkJGcUZPcnU0Kzl6RWNoNGVaMEZzQ09TdG9UaTV5?=
 =?utf-8?B?ODNKZ3U4aVFqSTdPdjduTG1HOGs1WDZlY05FbWZDNHAwVXNKMDZ2WXdoSEQw?=
 =?utf-8?B?dkRKTGNIbkJ4ZE5RZlFMOXA4WHFVcUN0aC91ZnA2SHJCVWJrWlBGWGpkZ1Ru?=
 =?utf-8?B?TWVDajBYM01yWGs1bEZXMVhISGVtUjduNTZ6VEFiOEJzMnl0OE10L3I0RlZj?=
 =?utf-8?Q?guo1XU=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q3dqdVdjSUVzY2h1T25mQ1hKUy9sVCttWk9lM0orQUZ5R0JyeXViUzhxdEhi?=
 =?utf-8?B?VkgrRFZtOHRNb3J4dUZ1MVFadkVHZHMxeFUzZmhHUGZHNmpJbHV2TlZtZGlN?=
 =?utf-8?B?aElLQU5CdDV5RlFYSlNnckdSdjEzdWNqVGZMeDBOTG0vK0tLVWhJMWRnSnFs?=
 =?utf-8?B?alFybzJHTDY5MVNaQXhsNEc4VHNoYlNqY0VOeUhUNU14MHJnb3l5Qk5sT3FW?=
 =?utf-8?B?RkhERXFEaHNpVVczN2lUU2lySUJMTjhzTmR2ZkdFZTl4RE1tZjFJRWZxN1kx?=
 =?utf-8?B?blZiek9NbHRSQWJlQ0N6ZHVvU0lGdi9YekZtb095bWtvaDZrSFBQSSs3RXNt?=
 =?utf-8?B?N05LMzRFcXFUNnhnQjhyQnQ0OHFGaHBwTmlJdm5QbkpNVDk0ZWhGSXA0RjVh?=
 =?utf-8?B?ckU2VU1JM2cwSExaRVRlRDIybWJRd0dpVmhCelFKckVpelRobFBWQnVOblNU?=
 =?utf-8?B?UVZBaXl1RDlvT29ZS1FWZXdid0czK2wvS1Q5OC9XVEo1SGo0MG5mYkNJb3hE?=
 =?utf-8?B?bHZrcllDUStySFFCYlVoc004bkYwMHZ2YWZuVDZwdHY0WnR6dVV3OHJkbG5R?=
 =?utf-8?B?VVVzdExnL2tMbkNZQ0JzeVdtY0NzOU92czV2WkFnd1FyRUlnQnBsWFBXNlFD?=
 =?utf-8?B?dzl2ZTRuNG1MV2k4cngyRU1iNWVxTDYzYzRYY1BvcmpJUmNwVkZkS3JXdDJr?=
 =?utf-8?B?dm1oeWZ4eWY2ZXhXemJ5aGxkOGhWR0VBemFROVl4SUY1UGtiQzlOYnJDc3dB?=
 =?utf-8?B?K3FqNXRUM2x5SlFqM3lSeWk5QmJyZVBsSnJIcERaaTgxbTQrcVJMUmduZFgw?=
 =?utf-8?B?V2l6eCt3dmp1ejdBN215VlRDTVJLOTdjNUswNHNJYWhLclp4TVlDMjR2OXFI?=
 =?utf-8?B?VThFNVdHL2ZGSEVJZEUrTzVkdGtEWjFlbWNNTDlrMzFqWkZWOXd2blpLeVdU?=
 =?utf-8?B?WFZaT2JIaklneFVEeUNSTlBUUWpIaW1iOS9OamxUWit1S0RCYTlmdllBQkdM?=
 =?utf-8?B?eDFQUlduUUZjS2hoK3pCTjFRSk54MkR2UGhHZnpYaDE2eXZPMjdWRk9LczhL?=
 =?utf-8?B?WUJBUE5GcXFzejAwSHlEY1I5dGJqZldYY0FqTEJKd1dxMG1mRmxRQ2RvNUk4?=
 =?utf-8?B?cHM1L0VkTmJyRU5DVjBLVEJMd3BJVnc5UUorNGYyZTZ4NDUxOHIzV2x5TUN3?=
 =?utf-8?B?bnlJYU4vNjdRN0ZReGpmMW5XVlhRbVpPMGtwS2dVSmtONEVKVXZZMUdNRElU?=
 =?utf-8?B?azFEV1NxV2FZVGxHWFBoaFhUNzF6dTJ1WVFSM0VncHc1TXJUQXlNL1JvL055?=
 =?utf-8?B?SzhRQXBBeUtvYnROazU3M29iaEUzTjV0WWprVFhQM3d0NU5VcTNSNFE2Uyth?=
 =?utf-8?B?SU9WbmlMTldDc05ibHI3S3lRdVo1QXFqYW1QS0JwK3hyalBsdGE2Ym12ZXlY?=
 =?utf-8?B?VWVaVG91UVdUcVpRRzVocWJtMFZQNEhpK2RaMDJ6K0tHcG5wemZvUXBXeHRT?=
 =?utf-8?B?dmg2YVJxM0hJR2V4MzdXdW9pL1E5OUFaNWhnUkVURWhkeEc1bC84RU9tSTZ6?=
 =?utf-8?B?UWs4TGVNWERvQ3psMlZXT01CRHFMRkMxY3hYRTNaOEI1NVFSMmpRWWRZZFV6?=
 =?utf-8?B?NHpVZVBhOHVmdC9RWDZLd3VZT0tmVGxOSjhqUGZmR3JzR2orS041SDVuYjNw?=
 =?utf-8?B?RENzY1FTZFhnektxd3cxSEpuOW9zRVNJSlF3ZnoyVmpMc0F1T0d4LzV3PT0=?=
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-559fc.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 66302974-1cc3-43ba-8d69-08dcf9bc93dd
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB2941.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2024 14:59:13.6377
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR16MB4728
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241031_075923_638068_9DD59912 
X-CRM114-Status: GOOD (  22.42  )
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

T24gVGh1LCBPY3QgMzEsIDIwMjQgYXQgMDE6MTQ6MjJQTSArMDEwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gQW0gRG9ubmVyc3RhZywgMzEuIE9rdG9iZXIgMjAyNCwgMDE6NDk6MDcgQ0VUIHNj
aHJpZWIgSmltbXkgSG9uOgo+ID4gT24gV2VkLCBPY3QgMzAsIDIwMjQgYXQgMjoyNeKAr1BNIENo
cmlzIE1vcmdhbiA8bWFjcm9hbHBoYTgyQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEZy
b206IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPiA+Cj4gPiA+IEVu
YWJsZSB0aGUgSERNSTAgcG9ydCBmb3IgdGhlIEluZGllZHJvaWQgTm92YS4gVGhlIHNjaGVtYXRp
Y3MgYXZhaWxhYmxlCj4gPiA+IHNob3cgdGhlIGhkbWltMF9yeF9ocGRpbiBpcyBjb25uZWN0ZWQs
IHNvIHRoaXMgcGluY3RybCBpcyBlbmFibGVkIGluCj4gPiA+IGNvbnRyYXN0IHdpdGggdGhlIG90
aGVyIHJrMzU4OCBib2FyZHMuCj4gPiAKPiA+IFdoaWNoIHBpbiBpbiB0aGUgc2NoZW1hdGljIFsx
XSAocGFnZSAyNCkgZG9lcyBpdCByZWZlciB0bz8gSXQncyBub3QKPiA+IG9idmlvdXMgaG93IHRv
IG1hdGNoIGl0IHVwLgo+ID4gVGhlIHNjaGVtYXRpYyBsb29rcyB0aGUgc2FtZSBhcyB0aGUgUm9j
ayA1QiBzY2hlbWF0aWMgWzJdIChwYWdlIDMxKQo+ID4gYW5kIHRoZSBSb2NrIDVCIGR0cyB1c2Vz
IHRoZSBkZWZhdWx0IHBpbmN0cmwgWzNdCj4gPiAKPiA+IE5vdGU6IFRoZSB2ZW5kb3Iga2VybmVs
IERUUyBkb2Vzbid0IG1vZGlmeSB0aGUgcGluY3RybCBlaXRoZXIuIFs0XQo+ID4gCj4gPiBJZiB5
b3UgdHJ5IHVzaW5nIHRoZSBkZWZhdWx0IHBpbmN0cmwgKG5vdCBvdmVycmlkaW5nKSwgZG9lcyBI
RE1JIG5vdCB3b3JrPwo+IAo+IEkgc3R1bWJsZWQgb3ZlciB0aGUgc2FtZSBpc3N1ZSByZWNlbnRs
eSBmb3Igb3VyIFRoZW9icm9tYSBib2FyZHMgdG9vLgo+IAo+IEZyb20gdGhlIEluZGllZHJvaWQg
c2NoZW1hdGljcywgeW91IGNhbiBzZWUgdGhhdCB0aGUgaGRtaW0wX3J4X2hwZGluCj4gcGluIGlz
IGdwaW80X2I2LCB3aGljaCBpbiB0aGVpciBib2FyZCBpcyBjb25uZWN0ZWQgdG8gdGhlIGhkbWkw
X3R4X29uX2gKPiBmdW5jdGlvbmFsaXR5LCB3aGljaCBjb250cm9scyB0aGUgb3V0cHV0IGZ1bmN0
aW9uYWxpdHkgYmV0d2VlbiBoZG1pMi4wLXRtZHMKPiBhbmQgaGRtaTIuMS1mcmwgbW9kZXMuCj4g
Cj4gVGhlIGhkbWktZHJpdmVyIGN1cnJlbnRseSBvbmx5IGRvZXMgaGRtaTIuMCBidXQgbm9ybWFs
bHksIG9uIG1vc3QgYm9hcmRzCj4gSSd2ZSBzZWVuIHNvIGZhciwgdGhpcyBwaW4gaGFzIGEgZGVm
YXVsdCBwdWxsIHRvIHNldCBoZG1pMi4wIGFueXdheSwgc28gb3RoZXIKPiBib2FyZHMgZG9uJ3Qg
bmVlZCB0aGF0Lgo+IAo+IFNvIGZvciBvbmUsIHBsZWFzZSBjaGVjayBpZiB0aGUgbm92YSBjYW4g
cnVuIHdpdGhvdXQgaXQsIGJ1dCBpZiBhIHBpbgo+IHNldHRpbmcgaXMgbmVlZGVkLCBwbGVhc2Ug
ZGVmaW5lIGEgbmV3IHBlci1ib2FyZCBvbmUsIGxhYmVsaW5nIGl0IGNvcnJlY3RseQo+IGZvciB0
aGlzIGhkbWkwX3R4X29uX2ggZnVuY3Rpb25hbGl0eSBhbmQgZG8gbm90IHJlLXVzZSB0aGUgaGRt
aS1yeAo+IHBpbi1zZXR0aW5nLgoKSSBjYW4gY29uZmlybSBpdCB3aWxsIHJ1biB3aXRob3V0IGl0
LCBzbyBJJ2xsIHNpbXBseSBzZXQgdGhlIHBpbmN0cmwgdG8KYmUgdGhlIHNhbWUgYXMgdGhlIG90
aGVyIGJvYXJkcy4KClRoYW5rIHlvdSwKQ2hyaXMKCj4gCj4gCj4gSGVpa28KPiAKPiAKPiAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
