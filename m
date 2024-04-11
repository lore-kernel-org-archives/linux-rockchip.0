Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60852CD128A
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 10:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DQZIzxqzZiC3dpDruLhFRMFh2GvM8VVH2cPX10hwVgk=; b=A/DVqhHNODBoVu/qjLb8y+5ZuJ
	9lyZrnIRDFPbg4/BZEnqjDBGfnE4ZcFElOgaKHPLRLkQBLIs2GctkUFzB8kzHxH1Ht4G2nk3jdfzu
	eBFbTCiOSrkMqkf2/YLCa2PiV7mzIfbafHDf9jvZhjKKQzcuVC/mvxeFvhJr25J7ghbPoMD9c9/lg
	9/mxRiG5Qo9wF3zkbSHj/RisBqzl7awu+vUrtI5pvtAGnvUFWx5mJmbAexzhABLNhRslMHNCvO5NI
	CS2wufG88KBiTYfh1/dHXfDnGlT15oggi6yQw7ZWFvSEZohLQ/3U9cD54TWu+2p+qPd7x+GDu9Ui1
	wGebJyzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rurMo-0000000BSMP-33ei;
	Thu, 11 Apr 2024 10:09:14 +0000
Received: from mail-dm6nam04on20600.outbound.protection.outlook.com ([2a01:111:f403:2409::600] helo=NAM04-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rurMk-0000000BSJh-34jD
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Apr 2024 10:09:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BKV9gwUqtB5PqX9+aXsrCygBNmMFdpVjqz0jldcwsH7iB732kbi+uqK+fCv7TPAVaFOtFnUZlecK0SBk09Fguj0OEZhgd2oBMOvRLlll+A1gZ81i5tRx9FLj/aycnWKKXDgMI5OjJuNv+3Yann9ZcX86nvbAoCwNaTue1lTJDQS37W32NP3G5hGi57PGpKul6UfZgn6mKJPnjG8veS1+ODXl6SImLi+AXvFWhBQVn7mpIGz4fu6iaJLIyRjbGEM9P9PkJ7DDjuTU4GDqjwWN9EP2QzTB7zu/DjQuEzCsFExYvYTPiFQex3bfnYtDWyIOBWyQUIvceZk3BYyyl9F8aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ap78K8Newm4BnQ3TItEjz2ltOxcvyhhQnJdRIANsFHw=;
 b=GUYHmZfGuM3HdXCI8PK4iKVc5cd+nozpOqoih8qs4k10gplXfMkZllihp168J5Z01HvNyq30J8S0ewiCgRkPO7uU19EAqZxRlUxzC3CedSq0nF23XpimpIRcbOVyjoYHKadAqPAmBKDJfsV+xHZov8e69vOvB+V4vD201myqJHKPWZKq/Q12pZrtFbBZbabCpyVJiY7opSbH3xbHVN60cCvk5UNu4Cjg+YMKfT0UWJK6joPYbarUHe9cjVVXVVOSarl7KTwKxJLWzscBSj2k9sNCAsTyHwvDS7H+uIMUzSHraRd8BpfQkGHNR94t3rca/nZwtvTAcU3qxTpilJynsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ap78K8Newm4BnQ3TItEjz2ltOxcvyhhQnJdRIANsFHw=;
 b=NiO2ZKLKsGdhn9I7NOo5wfQyu3W8LNUinW/gL3k4F3gXBbb/AqE3Zh393XoVWKMoHivJqMOXK6eUGh7McqfQqO/kcjogPDI/hKrPHF351QAMA9HqeQ9WKodxxIvQxaQGMIeIDx+wv2pKWB7GTk8djG4rgrBQINSSgG/nt/SAFdw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by PH7PR12MB6906.namprd12.prod.outlook.com (2603:10b6:510:1b8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Thu, 11 Apr
 2024 10:08:58 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::f2b6:1034:76e8:f15a%6]) with mapi id 15.20.7409.053; Thu, 11 Apr 2024
 10:08:58 +0000
Message-ID: <72ac9781-6b71-4683-a908-c1289a031b01@amd.com>
Date: Thu, 11 Apr 2024 12:08:51 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
To: "T.J. Mercier" <tjmercier@google.com>
Cc: Rong Qianfeng <11065417@vivo.com>, Rong Qianfeng <rongqianfeng@vivo.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, sumit.semwal@linaro.org,
 pekka.paalanen@collabora.com, daniel.vetter@ffwll.ch, jason@jlekstrand.net,
 linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com>
 <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com>
 <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
 <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com>
 <0df41277-ded5-4a42-9df5-864d2b6646f5@amd.com>
 <CABdmKX03Of7OE_9PfAy5DWcCwwvQvJGXDjzAE8c4WRrz_0Z_eg@mail.gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <CABdmKX03Of7OE_9PfAy5DWcCwwvQvJGXDjzAE8c4WRrz_0Z_eg@mail.gmail.com>
X-ClientProxiedBy: FR4P281CA0365.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f8::8) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|PH7PR12MB6906:EE_
X-MS-Office365-Filtering-Correlation-Id: f2111b3f-485e-4a39-5079-08dc5a0f6761
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FJdbTVoM8QYPZiiDWiyQImq2qkWb9QRzUydDa6DJgUPCxUb9c2zTTuox5DVFcmOXIxcm23fXlvDhtq7SJ/ofhxEDkT0ziX5Upf4cuZ5WexxSxWMR3QhkBOoOPx6ucMCyf+TnjX9Pw7PUvsg6147hyriUlYXJhPH7ODciMSNipLK/1veulVfY3QRnzTKc0yItaKUc7LmftAvZqAsQeV7xrJx5APC4TkAxn/mSEXpAg/PtTzqiyGN1KNXfvPoDWtBuiWZ9hqqvTj/cAyGEEbS21bSL7No3QBidi44cnEe7gULmoLSoII5tj2D46UMCnBiSEa8shoaLgsO3A3GpYB9wrC4mvBmL7jpctLU5JFG29yUhwBNOCmmFZXlLujJ0+k0MonTacj6BQx36uyFm7aibDfKESwQAUv8ZW+2lpbBJd6xGJLNikXIsK5ssxYFClMD/+db/UHt6DRXr5FqyKv+hsm547ecVBu6yAZGaYknjvwpMvLReBcpFCqHfjb3vL/DZNYXMnz5EWlWLhzdAyFINzUIwaOLXLB3hFRH8fJ62MRqKeXx+6GUeDe3U/2zsoU1skhjyUguTVTOPhCRegPYR96l5tsLROXnRwZUM04GVDMI=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH7PR12MB5685.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(7416005)(1800799015);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTlRdDB5L053cy9nV0dPUmx2bytPQ003dWY5OTBodTNWSTVuSTlXSzlqMHlp?=
 =?utf-8?B?TlowOHI1dFhYTkZwdktKWVc0ZFJTMFFCVndmZzZsa1dHSzVHZVhZaG9MdVVp?=
 =?utf-8?B?ZG5haThXYitqT2FtVHRYcEsvZG5EdzEzU29iTHV4ZUg2YVpDbWppRkdmNjh1?=
 =?utf-8?B?T3pQNk5tMzZUTTVKM3Z2cEhJYmtQTk00MnRCU3RTVjVLVVhRaytjUmh1ZXR0?=
 =?utf-8?B?NjhMOGYySCs2VExaT0RsVWFoSkNFYnVVdnJKZk1CWWRsSzNOdEhyaGhncjVO?=
 =?utf-8?B?VGVkWkFwVHRtSVpkRXQyU2JlZmR0azFhNithbGxiMURiWTFLWThuL1ZqLzBV?=
 =?utf-8?B?M0tSczhDZGxYb3cyMVNPeHRZTmZYUE9DaGYxZENibUxvMTl1eDBKcU15Tzd6?=
 =?utf-8?B?RC9XQjdRVmtXNzM5dHZndmRJT0F0VUtkV0lhOXN1cGQwRC9RWkFZVXdSbDdE?=
 =?utf-8?B?WjR1MjNsKzZCNmdPUjFGTm91OWpZcGgrd3V2UEE4VEN2b2h5dm1jRjVESkFw?=
 =?utf-8?B?eDhrdUJJQzViTGd6UUt1Q2JNaWxyWnlMKzdHQlpTSDJJbjYyanFMcldGUlFa?=
 =?utf-8?B?TlNhbU9MT2xtcjZueWF2Y1A4cjkxRTFZeVVSNFdFQ3FjSHBmbnVkV2syVjR1?=
 =?utf-8?B?dDFHeitkS3JaMUppclBwc3ZnSHhnNG92dGYzRStpbnJ6b1FzRFhlTzV5WWdw?=
 =?utf-8?B?M0EwUlE0OVFJanJEZHFDUThZU0hzMHRxdWl2U1FnekhCRDRlWW1BbHQ5RDFI?=
 =?utf-8?B?cTZlYVRlTFJ2ODF5NzU0QXVmSktrRHhOc1kwY2s4M0hQQTB5V3dKaHUydGFM?=
 =?utf-8?B?WDI4UVZxVVlpeHFHbFp4WCt4cE1qVTJrTC9QYmE0YTJ4bm1vbnVqTU1WNGdq?=
 =?utf-8?B?Wm9pY05mVnZ3R25qdzZ6WUdkblpOZm04b2hoVWlIaFBrUW41WUowQ1dLeEtY?=
 =?utf-8?B?MkNtcVlZNENBVjdsbmo4MWJZeDBadVFUTlhHQkJPZFFaOXNHa0F5U1pKamV3?=
 =?utf-8?B?YVhORmlwMXErVjRyN0Z3U2pMRXlqaG42WEUzcklueVdZa0piU0hNNk9UVFBC?=
 =?utf-8?B?NHE5RG9lZnNVUVAzaHh6dXVvSmpIRWQzd2dlTys1T0tYdjJmUWlKdzR5NjVD?=
 =?utf-8?B?MzIzUnk4UkJTQjRhYmdxMFVtaGZkb2p1NHhSOVQ4ZDg4OWUwNDNxaE80cmtE?=
 =?utf-8?B?TFJ1WmhsbGJVYUt6RlR1L1RWY0FtVHVjWHUxdUdFRmlUc2MrTk5JVEx5Qkgy?=
 =?utf-8?B?TVVQV0VnYWNwN3VheDl0ZU16K0xWT1RLS0RyOVhSR29saVpDS3Z0N3FLeTFD?=
 =?utf-8?B?cTBqUnVxYUY1cEVZaXpIL3NUb0JBK1ZGRXB4Y0s3L0JCY1BpUHcveDNCb01M?=
 =?utf-8?B?MHo2elphdXVJbGdvSXNtTElJV01LdXdTZVJNMUhnVXRGUGY0ZEQ1eGF4SllL?=
 =?utf-8?B?RENsK3BBbDIxKzVNNlJRd1Z5Uk5zM2QrTmxRYmsrWGZyTkJBek56Tit0OHh6?=
 =?utf-8?B?RzAyZ29jcGRlaXNmcHdQNmpLaWh4ck9NdWptRGlwZjdLak5HdnJjK001RCtm?=
 =?utf-8?B?RTBCVDJLZVMrb05kdWFzNTRvd3RuSndmZFV1azdKVFFVcmtlTVQ1cmh1VDVD?=
 =?utf-8?B?SlBrdS9LUWQyU2tHWWpkMFROYi9pZXlqa1hmcjU5c1hkcFEzZXVGSVdNMmxo?=
 =?utf-8?B?WS9VOWhnUmFqU0NqNXhhZGEyaXQyejV3U0J5czBPY3p2djd2QkthcE5uaUJD?=
 =?utf-8?B?TkR0ZldobXlBdlQ0aVlHRXJ4UWVLZGgyaUVna2owL3FsNDlZMm9aTFNTL0Rk?=
 =?utf-8?B?amlQWjRSN1VJTmYwUkxYdDVDQ09WbzIzUWZ2ZmkvZVRlcyt4N01rSFE3bGRK?=
 =?utf-8?B?M0FEL2JDcER4aStEVUtRSXJ5cjhVMElqMDcyUllBNkVhdEwwekxxdUpOL3dB?=
 =?utf-8?B?OTBKVitmTjNEYktOaGl5Nk5sZU1kaytNaGZMMkhyRXNTdkJpRG1yckdheW8x?=
 =?utf-8?B?dU16a0MrSEVJMy84ZjlOZ0wzemI2d2dDdlZHZmJCNnRwNlpYV050WW5aL0Vw?=
 =?utf-8?B?Ykx6U1ppM2NvWDNYRm9Vck5OZml0bUVnWWpKYnZzQmNhT3FWdUUrWGZacmc5?=
 =?utf-8?Q?Jb+wLTpY4H76yufi8R3Dg9MFH?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f2111b3f-485e-4a39-5079-08dc5a0f6761
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2024 10:08:58.6578
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hZXdlyIy2z1mGlfMOiq6XhB4K9AJSQgkeaGmKubOg1m9fLvmyUVd6BlLabvP+fgl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6906
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_030910_856863_94C68957 
X-CRM114-Status: GOOD (  28.19  )
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

QW0gMTAuMDQuMjQgdW0gMTc6MDcgc2NocmllYiBULkouIE1lcmNpZXI6Cj4gT24gV2VkLCBBcHIg
MTAsIDIwMjQgYXQgNzoyMuKAr0FNIENocmlzdGlhbiBLw7ZuaWcKPiA8Y2hyaXN0aWFuLmtvZW5p
Z0BhbWQuY29tPiB3cm90ZToKPj4gQW0gMDkuMDQuMjQgdW0gMTg6Mzcgc2NocmllYiBULkouIE1l
cmNpZXI6Cj4+PiBPbiBUdWUsIEFwciA5LCAyMDI0IGF0IDEyOjM04oCvQU0gUm9uZyBRaWFuZmVu
ZyA8MTEwNjU0MTdAdml2by5jb20+IHdyb3RlOgo+Pj4+IOWcqCAyMDI0LzQvOCAxNTo1OCwgQ2hy
aXN0aWFuIEvDtm5pZyDlhpnpgZM6Cj4+Pj4+IEFtIDA3LjA0LjI0IHVtIDA5OjUwIHNjaHJpZWIg
Um9uZyBRaWFuZmVuZzoKPj4+Pj4+IFtTTklQXQo+Pj4+Pj4+IEFtIDEzLjExLjIxIHVtIDA3OjIy
IHNjaHJpZWIgSmlhbnF1biBYdToKPj4+Pj4+Pj4gQWRkIERNQV9CVUZfSU9DVExfU1lOQ19QQVJU
SUFMIHN1cHBvcnQgZm9yIHVzZXIgdG8gc3luYyBkbWEtYnVmIHdpdGgKPj4+Pj4+Pj4gb2Zmc2V0
IGFuZCBsZW4uCj4+Pj4+Pj4gWW91IGhhdmUgbm90IGdpdmVuIGFuIHVzZSBjYXNlIGZvciB0aGlz
IHNvIGl0IGlzIGEgYml0IGhhcmQgdG8KPj4+Pj4+PiByZXZpZXcuIEFuZCBmcm9tIHRoZSBleGlz
dGluZyB1c2UgY2FzZXMgSSBkb24ndCBzZWUgd2h5IHRoaXMgc2hvdWxkCj4+Pj4+Pj4gYmUgbmVj
ZXNzYXJ5Lgo+Pj4+Pj4+Cj4+Pj4+Pj4gRXZlbiB3b3JzZSBmcm9tIHRoZSBleGlzdGluZyBiYWNr
ZW5kIGltcGxlbWVudGF0aW9uIEkgZG9uJ3QgZXZlbiBzZWUKPj4+Pj4+PiBob3cgZHJpdmVycyBz
aG91bGQgYmUgYWJsZSB0byBmdWxmaWxsIHRoaXMgc2VtYW50aWNzLgo+Pj4+Pj4+Cj4+Pj4+Pj4g
UGxlYXNlIGV4cGxhaW4gZnVydGhlciwKPj4+Pj4+PiBDaHJpc3RpYW4uCj4+Pj4+PiBIZXJlIGlz
IGEgcHJhY3RpY2FsIGNhc2U6Cj4+Pj4+PiBUaGUgdXNlciBzcGFjZSBjYW4gYWxsb2NhdGUgYSBs
YXJnZSBjaHVuayBvZiBkbWEtYnVmIGZvcgo+Pj4+Pj4gc2VsZi1tYW5hZ2VtZW50LCB1c2VkIGFz
IGEgc2hhcmVkIG1lbW9yeSBwb29sLgo+Pj4+Pj4gU21hbGwgZG1hLWJ1ZiBjYW4gYmUgYWxsb2Nh
dGVkIGZyb20gdGhpcyBzaGFyZWQgbWVtb3J5IHBvb2wgYW5kCj4+Pj4+PiByZWxlYXNlZCBiYWNr
IHRvIGl0IGFmdGVyIHVzZSwgdGh1cyBpbXByb3ZpbmcgdGhlIHNwZWVkIG9mIGRtYS1idWYKPj4+
Pj4+IGFsbG9jYXRpb24gYW5kIHJlbGVhc2UuCj4+Pj4+PiBBZGRpdGlvbmFsbHksIGN1c3RvbSBm
dW5jdGlvbmFsaXRpZXMgc3VjaCBhcyBtZW1vcnkgc3RhdGlzdGljcyBhbmQKPj4+Pj4+IGJvdW5k
YXJ5IGNoZWNraW5nIGNhbiBiZSBpbXBsZW1lbnRlZCBpbiB0aGUgdXNlciBzcGFjZS4KPj4+Pj4+
IE9mIGNvdXJzZSwgdGhlIGFib3ZlLW1lbnRpb25lZCBmdW5jdGlvbmFsaXRpZXMgcmVxdWlyZSB0
aGUKPj4+Pj4+IGltcGxlbWVudGF0aW9uIG9mIGEgcGFydGlhbCBjYWNoZSBzeW5jIGludGVyZmFj
ZS4KPj4+Pj4gV2VsbCB0aGF0IGlzIG9idmlvdXMsIGJ1dCB3aGVyZSBpcyB0aGUgY29kZSBkb2lu
ZyB0aGF0Pwo+Pj4+Pgo+Pj4+PiBZb3UgY2FuJ3Qgc2VuZCBvdXQgY29kZSB3aXRob3V0IGFuIGFj
dHVhbCB1c2VyIG9mIGl0LiBUaGF0IHdpbGwKPj4+Pj4gb2J2aW91c2x5IGJlIHJlamVjdGVkLgo+
Pj4+Pgo+Pj4+PiBSZWdhcmRzLAo+Pj4+PiBDaHJpc3RpYW4uCj4+Pj4gSW4gZmFjdCwgd2UgaGF2
ZSBhbHJlYWR5IHVzZWQgdGhlIHVzZXItbGV2ZWwgZG1hLWJ1ZiBtZW1vcnkgcG9vbCBpbiB0aGUK
Pj4+PiBjYW1lcmEgc2hvb3Rpbmcgc2NlbmFyaW8gb24gdGhlIHBob25lLgo+Pj4+Cj4+Pj4gICAg
RnJvbSB0aGUgdGVzdCByZXN1bHRzLCBUaGUgZXhlY3V0aW9uIHRpbWUgb2YgdGhlIHBob3RvIHNo
b290aW5nCj4+Pj4gYWxnb3JpdGhtIGhhcyBiZWVuIHJlZHVjZWQgZnJvbSAzLjhzIHRvIDNzLgo+
Pj4+Cj4+PiBGb3IgcGhvbmVzLCB0aGUgKG91dCBvZiB0cmVlKSBBbmRyb2lkIHZlcnNpb24gb2Yg
dGhlIHN5c3RlbSBoZWFwIGhhcyBhCj4+PiBwYWdlIHBvb2wgY29ubmVjdGVkIHRvIGEgc2hyaW5r
ZXIuCj4+IFdlbGwsIGl0IHNob3VsZCBiZSBvYnZpb3VzIGJ1dCBJJ20gZ29pbmcgdG8gcmVwZWF0
IGl0IGhlcmU6IFN1Ym1pdHRpbmcKPj4ga2VybmVsIHBhdGNoZXMgZm9yIG91ciBvZiB0cmVlIGNv
ZGUgaXMgYSByYXRoZXIgKmV4dHJlbWUqIG5vLWdvLgo+Pgo+IFNvcnJ5IEkgdGhpbmsgbXkgY29t
bWVudCBsZWQgdG8gc29tZSBjb25mdXNpb24uIEkgd2Fzbid0IHN1Z2dlc3RpbmcKPiB5b3Ugc2hv
dWxkIHRha2UgdGhlIHBhdGNoOyBpdCdzIGNsZWFybHkgaW5jb21wbGV0ZS4gSSB3YXMgcG9pbnRp
bmcgb3V0Cj4gYW5vdGhlciBvcHRpb24gdG8gUm9uZy4gSXQgYXBwZWFycyBSb25nIGlzIGNyZWF0
aW5nIGEgc2luZ2xlIG92ZXJzaXplZAo+IGRtYS1idWYsIGFuZCBzdWJkaXZpZGluZyBpdCBpbiB1
c2Vyc3BhY2UgdG8gYXZvaWQgbXVsdGlwbGUgYWxsb2NhdGlvbnMKPiBmb3IgbXVsdGlwbGUgYnVm
ZmVycy4gVGhhdCB3b3VsZCBsZWFkIHRvIGEgbmVlZCBmb3IgYSBwYXJ0aWFsIHN5bmMgb2YKPiB0
aGUgYnVmZmVyIGZyb20gdXNlcnNwYWNlLiBJbnN0ZWFkIG9mIHRoYXQsIHVzaW5nIGEgaGVhcCB3
aXRoIGEgcGFnZQo+IHBvb2wgZ2V0cyB5b3Uga2luZCBvZiB0aGUgc2FtZSB0aGluZyB3aXRoIGEg
bG90IGxlc3MgaGVhZGFjaGUgaW4KPiB1c2Vyc3BhY2UsIGFuZCBubyBuZWVkIGZvciBwYXJ0aWFs
IHN5bmMuIFNvIEkgd2FudGVkIHRvIHNoYXJlIHRoYXQKPiBvcHRpb24sIGFuZCB0aGF0IGNhbiBn
byBpbiBqdXN0IEFuZHJvaWQgaWYgbmVjZXNzYXJ5IHdpdGhvdXQgdGhpcwo+IHBhdGNoLgoKQWgh
IFRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24gYW5kIHNvcnJ5IGZvciBhbnkgbm9pc2UgSSBj
cmVhdGVkLgoKSSBtZWFuIGZyb20gdGhlIHRlY2huaWNhbCBzaWRlIHRoZSBwYXRjaCBkb2Vzbid0
IGxvb2tzIGludmFsaWQgb3IgCmFueXRoaW5nLCBidXQgdGhlcmUgaXMgc2ltcGx5IG5vIHVwc3Ry
ZWFtIHVzZSBjYXNlLgoKUmVnYXJkcywKQ2hyaXN0aWFuLgoKPgo+PiBUaGF0IGluIGtlcm5lbCBj
b2RlICptdXN0KiBoYXZlIGFuIGluIGtlcm5lbCB1c2VyIGlzIGEgbnVtYmVyIG9uZSBydWxlLgo+
Pgo+PiBXaGVuIHNvbWVib2R5IHZpb2xhdGVzIHRoaXMgcnVsZSBoZSBwcmV0dHkgbXVjaCBkaXNx
dWFsaWZ5aW5nIGhpbXNlbGYgYXMKPj4gcmVsaWFibGUgc291cmNlIG9mIHBhdGNoZXMgc2luY2Ug
bWFpbnRhaW5lcnMgdGhlbiBoYXZlIHRvIGFzc3VtZSB0aGF0Cj4+IHRoaXMgcGVyc29uIHRyaWVz
IHRvIHN1Ym1pdCBjb2RlIHdoaWNoIGRvZXNuJ3QgaGF2ZSBhIGp1c3RpZmljYXRpb24gdG8KPj4g
YmUgdXBzdHJlYW0uCj4+Cj4+IFNvIHdoaWxlIHRoaXMgYWN0dWFsbHkgbG9va3MgdXNlZnVsIGZy
b20gdGhlIHRlY2huaWNhbCBzaWRlIGFzIGxvbmcgYXMKPj4gbm9ib2R5IGRvZXMgYW4gaW1wbGVt
ZW50YXRpb24gYmFzZWQgb24gYW4gdXBzdHJlYW0gZHJpdmVyIEkgYWJzb2x1dGVseQo+PiBoYXZl
IHRvIHJlamVjdCBpdCBmcm9tIHRoZSBvcmdhbml6YXRpb25hbCBzaWRlLgo+Pgo+PiBSZWdhcmRz
LAo+PiBDaHJpc3RpYW4uCj4+Cj4+PiAgICBUaGF0IGFsbG93cyB5b3UgdG8gc2tpcCBwYWdlCj4+
PiBhbGxvY2F0aW9uIHdpdGhvdXQgZnVsbHkgcGlubmluZyB0aGUgbWVtb3J5IGxpa2UgeW91IGdl
dCB3aGVuCj4+PiBhbGxvY2F0aW5nIGEgZG1hLWJ1ZiB0aGF0J3Mgd2F5IGxhcmdlciB0aGFuIG5l
Y2Vzc2FyeS4gSWYgaXQncyBmb3IgYQo+Pj4gY2FtZXJhIG1heWJlIHlvdSBuZWVkIHBoeXNpY2Fs
bHkgY29udGlndW91cyBtZW1vcnksIGJ1dCBpdCdzIGFsc28KPj4+IHBvc3NpYmxlIHRvIHNldCB0
aGF0IHVwLgo+Pj4KPj4+IGh0dHBzOi8vYW5kcm9pZC5nb29nbGVzb3VyY2UuY29tL2tlcm5lbC9j
b21tb24vKy9yZWZzL2hlYWRzL2FuZHJvaWQxNC02LjEvZHJpdmVycy9kbWEtYnVmL2hlYXBzL3N5
c3RlbV9oZWFwLmMjMzc3Cj4+Pgo+Pj4KPj4+PiBUbyBiZSBob25lc3QsIEkgZGlkbid0IHVuZGVy
c3RhbmQgeW91ciBjb25jZXJuICIuLi5ob3cgZHJpdmVycyBzaG91bGQgYmUKPj4+PiBhYmxlIHRv
IGZ1bGZpbGwgdGhpcyBzZW1hbnRpY3MuIiBDYW4geW91IHBsZWFzZSBoZWxwIGV4cGxhaW4gaXQg
aW4gbW9yZQo+Pj4+IGRldGFpbD8KPj4+Pgo+Pj4+IFRoYW5rcywKPj4+Pgo+Pj4+IFJvbmcgUWlh
bmZlbmcuCj4+Pj4KPj4+Pj4+IFRoYW5rcwo+Pj4+Pj4gUm9uZyBRaWFuZmVuZy4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
