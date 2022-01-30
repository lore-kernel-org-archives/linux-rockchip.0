Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6B51C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jan 2022 09:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QZtH8J/iy/H7mtTyejopB6SByddvl35mKSiiHkX644s=; b=maJOs2KT04ft1doYWM04QqJcEm
	MOlD9blpIhu4um3FiSxGvbHd/O7biGReN4WnvzEKo1rXRp5e6Z1/o0pwpa2OrtksJreIuHiFUuoB4
	HhvzOIMKfbkAP/pwG/ZIpYTPmUikanSHXy0N7XZB8MEUQYHtgK+nU+M38R5DQ4eprePZYJp9SM5yq
	34Yax5co/bF1NPwb6eu0cpqINVvgIDw3ZwnTmVemKRYEYW8uo9m0gI8PzXGcZErTLIVz12E/ETcZ4
	h6arkWugJjJEmWtap5E12jPE4PGuBVqsfPg3KvrTs4DGPWFxwpPqjLQnCMoJfXWx8h6oozalrOnvw
	AesZF61Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nE6wh-006KNa-Jw; Sun, 30 Jan 2022 09:56:31 +0000
Received: from mail-eopbgr70045.outbound.protection.outlook.com ([40.107.7.45]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nE6wU-006KKM-9C; Sun, 30 Jan 2022 09:56:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XkELyuP4/wcKJyj2eDJG6Qtx1X71Zz2h70AGRGooo1OEK3yKPxSSixooof4/gI6Ugu53nR3LeUd/DmzRK8LFjZVXQ4emjGG1z5jybStvsTeziyVOBAE7OZdV5Q7A4BvC6+BekHPvTi61PbGV5tFtluCSf86FSY4Dq0cVlCMLhTTRzc0h5wIQBEopj8i3eDH64ebIxSesDFPHCi/oypHs8gMkkNLfAMfo0fedUKarxbTrZgfikfuX08FodAk3h9WOoWAkaRdx1HUBSz55A6MsehzlyA1/xgwoDKrdI6MmCGliehZ5PsI0Z3taTILln0Eni4i9rntNV0O5uCnTbIbsvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lCcGRgG5pkGYsUfYK8GU1z+mM7ORwIOl/GAzMXRAsdY=;
 b=Xeh8Wu9Awiu7Y+mYujDGFeGj6zcRbFgqXe5q0Z2ViPRsJobiJixJwKo/DjG8TTuHcJF1K8fDjP5plOX6IraO7CvEplVK8Qs1dtlGEEch4wIGrop/j2PaeAzkMYj5U/u0qSM7MXC3QpLlj3SZD+VJC9a8oCHrw38NOfowDdw2wZygxMT9XGXKovs+UlpkFHQyW7uTiDAqE9VG8hiJBzWLcaHykC2eNtotNf8t2moqP+wh2/DfGOlwGHSRPc6+SmvEmQTNSeJH36FoJxYp6U9mz1KUKHpT0+GX9KLlFhfNyq6vpyY44b24pbBmj5oKQFoL3JgehBEXdxUrDebsIwbkVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lCcGRgG5pkGYsUfYK8GU1z+mM7ORwIOl/GAzMXRAsdY=;
 b=X+g2WeXp0k+ocKUI853u4B7VU82EyyC/BiKp9gF4Gyv4mEafBanMp4vxz+fTrQSQBXH9epSH6tnyrMJN03La4ITjPHifnvwAYond5WHQk11Vzkz4+Z5jIFTdUwRlyrPE9Hk/0vQL+/ubj9XhcdvTAsZQzabZ+4I3ffaIi/mQuko=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com (2603:10a6:3:e1::23)
 by VE1PR08MB5661.eurprd08.prod.outlook.com (2603:10a6:800:1b3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Sun, 30 Jan
 2022 09:56:12 +0000
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::e14f:197:5001:4c56]) by HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::e14f:197:5001:4c56%3]) with mapi id 15.20.4930.020; Sun, 30 Jan 2022
 09:56:11 +0000
Message-ID: <d203569c-bae1-c35a-204a-53617170d3b3@wolfvision.net>
Date: Sun, 30 Jan 2022 10:56:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rename and sort the rk356x usb2
 phy handles
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Piotr Oniszczuk <piotr.oniszczuk@gmail.com>, Peter Geis <pgwipeout@gmail.com>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liang Chen <cl@rock-chips.com>
References: <20220127190456.2195527-1-michael.riesch@wolfvision.net>
 <FBB7C392-C5E0-4E34-AC17-5323414623F5@gmail.com>
 <64f539b5-30b2-c0b7-17bf-c448b507713e@wolfvision.net>
 <3736463.EBuT6JFcjP@diego>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <3736463.EBuT6JFcjP@diego>
X-ClientProxiedBy: ZR0P278CA0136.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:40::15) To HE1PR0802MB2426.eurprd08.prod.outlook.com
 (2603:10a6:3:e1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c46e7fe6-52ad-48d1-73c5-08d9e3d6bef3
X-MS-TrafficTypeDiagnostic: VE1PR08MB5661:EE_
X-Microsoft-Antispam-PRVS: <VE1PR08MB566185489174AE1892A33AC8F2249@VE1PR08MB5661.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tqFRGz56Q12qDLXzNSnOYGbsWd9n9HS5vRXNJfQu4pQNHwHurU7yOaWgT6RPhpbpceSSPN5x+gm6C6VbAYDhNa4W2Xk/WiUMQcIT1rlnIYONhuy4Il1piJ6q/lYt9B//Z7hS8qn+6RdF8FH1aiJYmbyb+l/IOKRfrJETAZRSHe5NZkZr4pQfCJC2J2K2Z/oC2ebiSDdD7Y43On3qpWfAfJCTuPPVz8WwTjipSR4cuSqRWUdUOG4k8GhXKFMCsVc0XgbL/271i+80l/O18MjpGwcrYnKR73O5LPK0htK91k8kVRgegiBqeeMwX7yMJ4xeR5n/h4P37SnuJbzc2Vpf4kEscxwVPDktAyHncRBIfw0OUkm/vIP9ST/K41Axn5qZBOxjSTx4w6lyTenPCxkPHN8ybHRUSs9rtAmDxL9RKS/nKh9NnGJGxJecJGNsz77ZSPWHSMalek4YizGmydQuphn+GqvQ1imakMwCrJR2RY+CvtRdsmdLzBBST6ZTumeigI2c8B+ZLMv2ZUk07cmzhJ9z5VDkkE3dVMtJ7QhtsDWhWsNQ1J5AHPNyJZMe0lxHvE+m3+qUViZCvULFenIP+MgEAH0UDWG1OEbl9bd5Op+M8AvKQxT6U++8H/gyNodeP4VINi2goTzm5xEPSSihXh1ULTD9X2alb1Z2gGzdo7mnK+oFMIwKAcUN7JZFBdKL8U/eokY1w6XHPaqhFtHQkjKQSrak1AQuWaYUv0eulqzV8FypWwyeYwle+yXuxGVx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0802MB2426.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(31696002)(8936002)(66556008)(66476007)(86362001)(4326008)(8676002)(66946007)(38100700002)(53546011)(52116002)(7416002)(6512007)(5660300002)(6506007)(508600001)(6666004)(6486002)(54906003)(316002)(83380400001)(2616005)(2906002)(44832011)(186003)(110136005)(36756003)(31686004)(43740500002)(45980500001)(20210929001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEpIWmFUeXhwTnQ5TWVreDJwTUUyV3E5K3dveTNqR0gwQXlsUU5KSXpNbXZG?=
 =?utf-8?B?b2JEeE9uWWp3YUc4WTM3eVdIbDVhak5LQ0QxcGFzbXVteTJZUnBkNjM4QTlW?=
 =?utf-8?B?cnZudUJJblJMS0crcE8zY000eld5aU9KVWlNY0ZySlNoTmhZSzdIbThTQUp2?=
 =?utf-8?B?enVEeTJlUFlkOWZzRGZMeGUraUpJTG5BQll2S1preUkwdzZJNUlMUXZDbTZD?=
 =?utf-8?B?SE1sU0FpbnJSUjNOZG5pb2NiSmxjQzlJN1FTN3F3dXlKNTFZVjdFWmlNWVFx?=
 =?utf-8?B?Ykl4N2E2TVhyYk1Hd3lwU3l2elZOVzNxZ2JGeUlmYmFyd3RkZUNjeUVVT3JB?=
 =?utf-8?B?T00yS0NTd3VNS2ZjYXBrbC9YRHpDcjY3Q09PbXkxYS9yNElzYzRSNXhndThs?=
 =?utf-8?B?WmlBTGw5Nitwb1ZraVBOTGNtL3hmTDE1QmZqZDFBa0tydTIwbGVWbFMxSzNM?=
 =?utf-8?B?aGtGYVl1bFUySkVQbGxpQW9MSHNXeU5UZmpId3RwQm9IRTdFV2pQU2RJWmF0?=
 =?utf-8?B?UGY0QVh1dE52eTJTOHBOZDNHSWd1SWQ0SkJ1Vjg1QTRJM3kzN3d3UEs4MWRr?=
 =?utf-8?B?WGlVN3lTYm9KclNRcUZ3ajIvMHBHUnc4RVg0bHZaMmhtZ01rai9aWlR3d0RO?=
 =?utf-8?B?NXNvWkwwVkd1VVVhTk1hY25senh1czFZVHBGMWFlUFo0Y0RZWjJhRTBZRWtO?=
 =?utf-8?B?QlRKR3ZYTHhDVlJJekpoV2UvVTBMTDFLbmhHUXB4Lzc0UWxLVGNkTUliTnZh?=
 =?utf-8?B?Q1NvOVJmMjBuTjNwTzRPcmV1MEx6cERzOURDRzF4elB6NkhtM0M4cjFnU0E0?=
 =?utf-8?B?YTgrY0NPVmd0NHVObzdhbmVtQjNMbUlMSmFwWTRNSjB2SFBlWStGZGhkZzFt?=
 =?utf-8?B?Qk0rU2c4Y1B2bnhwVWlQalJkNWRQSmNlakp3YzRob0JoNTVPMEI0d2s0QTY3?=
 =?utf-8?B?T09CbDBvUzlQcEpIaWJmWis0NW1SbzVuUW1Mbk5ZbnVtZ21kSytKOVJ1WDJO?=
 =?utf-8?B?WXF2OCtlYjNCMnpnNktmeGdOVzNuRFFNSmV0RU84ZlZHMmEvbG5hSlBtalQ0?=
 =?utf-8?B?ZkgvcFRYbnBxZVRGV3pEQTVsRHhxdG5kcHR4QmROYlRFRkUxTitpaUxVYmxS?=
 =?utf-8?B?eS93OFJYTUdJVjA4WEs0NVZyb092dE9TNE4xRTRKNGJNeDVoek8yMmI4MFE2?=
 =?utf-8?B?bXo4N3htSjAyV20xaTMrbzdrTGRCK0ErODcvQThkVE0xY1kvd2V5R2cyUTFo?=
 =?utf-8?B?TzhDMHcvbUJMMkQ3SS8wOTB1eGUraEZlWXNHWUZUSThBdmNVbjcvQnNLQThL?=
 =?utf-8?B?c0JsRHZQbXJJSEJaZjQrYUxac3BENVhFdTVzK3ZjU3Y2b1g5RCs3eWtkNjN0?=
 =?utf-8?B?N3V1NXp5VWVzSWhTTjFta0ZaRjdZUVl3dnpDSHpVKzFBSWpqR1NqWHFhVnRq?=
 =?utf-8?B?aHBtK2k1aHFFRjRGM0dGMlZEVUxEd3FhdXFaY3JjNndwRHhWdmtzYUUzZzZ5?=
 =?utf-8?B?RG9lMyszQk52SGZ5Y3Q3eEMxZ2NjZU8wWlZ0a3p2SHo4RUdINXlIOHVGTFpq?=
 =?utf-8?B?N1BoMmRkVm1uRmErTEt5enNHUzg0YUYwZm4yK3V1RStSWFpUR2hBcm56QWZv?=
 =?utf-8?B?M2ZSdWxSaFlBKzBPcUVBRVJiWVgrbi8xYWJhNkJPeEYvdzRDM1JSY05zYzZi?=
 =?utf-8?B?VUV6d1c3anBTZ3VGWEhlR2VYL0FvRW83OU56SXhsZXRpa3dOaXM1Tyt5ZzV1?=
 =?utf-8?B?Y2IyeGs4WFBDWm84WWc4Ui9ON212VktZbmZYOTZyOW9IcmpvVDRBWFFMbFVm?=
 =?utf-8?B?WUFaVzBodlJsOXYrRGJqeUluOEo3L3pIMG02TnV2QVNrT2JWNSt1OFhKT1Vu?=
 =?utf-8?B?cW5JdDRxVTNvU2V5dUVySWdKWEQ0TFJwb1VxMmxXK2I2RlZrZ2tUYU5QTUhW?=
 =?utf-8?B?a3JtaWhRYnRZYVhKZ2Mwa2VYYndCZnFlT095dXRxanM5SmJybTg0YVRuODky?=
 =?utf-8?B?K3REMDdnUFpzckhsS2hObDl3UzBhSldGRk4vS2w1VitJU3BPNWpuRjFvalF4?=
 =?utf-8?B?Ky91TUt3OVNMaW1sQVlEdHVaaXRNUTlCY1dVdGh1OHk5bTBXc3dEcit6dWpX?=
 =?utf-8?B?UDVZb2FVWTJobFYrT3BjWmMvcW95U2RqQnR4M3h2WVJnVjBKckg4dWxCRk84?=
 =?utf-8?B?cVFERTZFMUhzQjh5cE5jbjZtNUlQVTRjUlV6RWxLZVAwWVVHWXhteXZwWkpG?=
 =?utf-8?B?WnRMeXZUd0RtSjhKcXdFamt6aFByWG4rVlh4RW50WTFpWVkrcTFMdUYyV3M3?=
 =?utf-8?B?SXZiS0Q2OW1sRFZaV1UvQXpLMjFjR1BKazNyWE1BV3E0RnpKcW0rdWtsRzVG?=
 =?utf-8?Q?6VSzo/H3zpcbKn7s=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c46e7fe6-52ad-48d1-73c5-08d9e3d6bef3
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0802MB2426.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2022 09:56:11.7643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AFFbtriAQeaAS4NGEhZj3oemPkb/mFaEIIa9CvOXtsdt1P7qwhDqKTlfS4gfzz2KL61OyJkiTf2QUqU8sw+Q1OAcBex8TSYBKBVwEYvhbG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_015618_355087_BAB37C8D 
X-CRM114-Status: GOOD (  27.46  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGVsbG8gSGVpa28sCgpPbiAxLzI5LzIyIDE2OjI4LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBB
bSBTYW1zdGFnLCAyOS4gSmFudWFyIDIwMjIsIDEwOjU5OjMyIENFVCBzY2hyaWViIE1pY2hhZWwg
Umllc2NoOgo+PiBIZWxsbyBQZXRlciBhbmQgUGlvdHIsCj4+Cj4+IE9uIDEvMjkvMjIgMTA6MjMs
IFBpb3RyIE9uaXN6Y3p1ayB3cm90ZToKPj4+Cj4+Pgo+Pj4+Cj4+Pj4gR29vZCBFdmVuaW5nLAo+
Pj4+Cj4+Pj4gV2hpbGUgSSdtIG5vdCBhZ2FpbnN0IHRoaXMgaWRlYSwgbXkgbWFpbiBjb25jZXJu
IHN0aWxsIHN0YW5kcy4KPj4+PiBJIHNwZW50IGEgZ3JlYXQgZGVhbCBvZiB0aG91Z2h0IG9uIHRo
aXMsIGFuZCBkZWNpZGVkIHRvIGdvIHRoZSByb3V0ZSBJCj4+Pj4gZGlkIHRvIG1haW50YWluIGNv
bnNpc3RlbmN5IHdpdGggcHJldmlvdXMgZ2VuZXJhdGlvbnMuCj4+Pj4gQXMgc3VjaCwgSSBzZWUg
b25lIG9mIHRocmVlIHBhdGhzIGhlcmU6Cj4+Pj4gLSBQdWxsIHRoaXMgcGF0Y2ggb25seSBhbmQg
ZGVwYXJ0IHJrMzU2eCBmcm9tIHByZXZpb3VzIFNvQ3MuCj4+Pj4gLSBEbyB0aGUgc2FtZSBmb3Ig
cHJldmlvdXMgU29DcyB0byBtYWludGFpbiBjb25zaXN0ZW5jeS4KPj4+PiAtIERyb3AgdGhpcyBw
YXRjaCB0byBtYWludGFpbiBjb25zaXN0ZW5jeSB3aXRoIHByZXZpb3VzIFNvQ3MuCj4+Pj4KPj4+
PiBJIGFzayB0aGF0IG90aGVycyB3ZWlnaCBpbiBoZXJlLCBhcyBvZmZsaW5lIGRpc2N1c3Npb24g
aGFzIHByb2R1Y2VkCj4+Pj4gbWl4ZWQgcmVzdWx0cyBhbHJlYWR5Lgo+Pj4KPj4+IGp1c3QgcHVy
ZSB1c2VyIHBlcnNwZWN0aXZlCj4+Pgo+Pj4gKHdobyBzcGVudCBsYXN0IHdlZWtzIGNvbnNpZGVy
YWJsZSB0aW1lIHRvIGRldmVsb3AgRFQgZm9yIHJrMzU2NiB0dmJveC4gOTklIG9mIG15IHdvcmsg
d2FzIGJ5IHJlYWRpbmcvbGVhcm5pbmcgZnJvbSBvdGhlciBib2FyZHMgZXhpc3RpbmcgRFQncy4g
QW55IGluY29uc2lzdGVuY2llcyBpbiBEVHMgbWFrZXMgd29yayBmb3Igc3VjaCBwcGwgbGlrZSBt
ZSBtdWNoIG1vcmUgaGFyZGVyKToKPj4+Cj4+PiBGb3Igb3B0aW9uIDEgLSBpIGRvbid0IHNlZSB2
YWx1ZQo+Pj4gRm9yIG9wdGlvbiAyIC0gd2hhdCBpcyByZXdhcmQgZm9yIGV4dHJhIHdvcmsgbmVl
ZHMgdG8gYmUgZG9uZSBvbiBhbGwgb3RoZXIgU29Dcz8KPj4+Cj4+PiBzbyBvcHRpb24gMyBzZWVt
cyB0byBiZSBuYXR1cmFsIGNob2ljZS4uLgo+Pj4KPj4+IGluIG90aGVyIHdvcmRzOgo+Pj4KPj4+
IGZvciBtZToKPj4+IG9wdGlvbiAxIGJyaW5ncyBwcmFjdGljYWxseSB6ZXJvIHZhbHVlICsgaW5j
cmVhc2VkIGluY29uc2lzdGVuY3kuCj4+PiBvcHRpb24gMjogZXh0cmEgd29yayAtIGJ1dCBjb25z
aXN0ZW5jeSBpcyBsaWtlIGluIG9wdGlvbiAzIChzbyB3aGVyZSBpcyB2YWx1ZT8pCj4+Pgo+Pj4g
c28gb3B0aW9uIDMgb2ZmZXJzIHRoZSBzYW1lIGNvbnNpc3RlbmN5IC0gYnV0IHdpdGhvdXQgZXh0
cmEgd29yay4uLgo+Pj4gIAo+Pj4ganVzdCBteSAwLjAyJAo+Pgo+PiBPZiBjb3Vyc2UgdGhpcyBj
aGFuZ2UgaXMgcHVyZWx5IGNvc21ldGljIGFuZCBpdCBpcyByZWFzb25hYmxlIHRvIGFzayBmb3IK
Pj4gdGhlIHByYWN0aWNhbCB2YWx1ZS4gSXQgaXMganVzdCB0aGF0IHRlY2huaWNhbGx5IHRoZSBx
dWFydHo2NCBkdHMgaXMgbm90Cj4+IHNvcnRlZCBhbHBoYWJldGljYWxseSBhdCB0aGUgbW9tZW50
LiBUaGUgdTJwaHkqIG5vZGVzIHNob3VsZCBiZSBidXQKPj4gYmVmb3JlIHRoZSB1YXJ0KiBub2Rl
cyB0byBmb2xsb3cgdGhlIGNvbnZlbnRpb24uIE9uIHRoZSBvdGhlciBoYW5kLCBpdAo+PiBtYXkg
YmUgbmljZSB0byBoYXZlIHRoZSB1c2IyIHBoeXMgYW5kIGNvbnRyb2xsZXJzIGdyb3VwZWQgaW4g
dGhlIGR0cy4KPj4gVGhlIHByb3Bvc2VkIHJlbmFtaW5nIHdvdWxkIGFsbG93IGFsbCB0aGUgbWVu
dGlvbmVkIG5vZGVzIHNvcnRlZAo+PiBhbHBoYWJldGljYWxseSBhbmQgZ3JvdXBlZCBsb2dpY2Fs
bHkuCj4+Cj4+IFRoZXJlZm9yZSBJIGhhZCBvcHRpb24gMSBpbiBtaW5kLiBJIGRvbid0IHNlZSBh
bnkgZGVwZW5kZW5jaWVzIGJldHdlZW4KPj4gdGhlIGRpZmZlcmVudCBTb0NzIGFuZCB0aGluayB3
ZSBjYW4gbWFrZSBhIGZyZXNoIHN0YXJ0IGhlcmUuCj4gCj4gY29ycmVjdCA6LSkgLgo+IAo+IEkg
ZG8gc2VlIGVhY2ggU29DIGluZGl2aWR1YWxseSBhbmQgd2hpbGUgSSB0cnkgdG8gaGF2ZSBwZW9w
bGUgZm9sbG93IHNvbWUKPiBzdHlsaW5nIGd1aWRlbGluZXMgZXZlcnl3aGVyZSAob3JkZXJpbmcg
b2YgcHJvcGVydGllcywgb3JkZXJpbmcgb2Ygbm9kZXMpCj4gSSBkb24ndCByZWFsbHkgd2FudCBw
ZW9wbGUgdG8gZmVhciB3aGF0IHNvbWUgb3RoZXIgU29DIGhhcyBkb25lIGJlZm9yZS4KPiAKPiBC
dXQgZXZlbiB0aGVzZSBydWxlcyBldm9sdmUgc29tZXRpbWVzLCB3aGVuIHNvbWV0aGluZyBzZWVt
cyB0byB3b3JrCj4gYmV0dGVyIHRoYW4gYmVmb3JlLgo+IAo+IFdlIGhhdmUgbm93YWRheXMgOSB5
ZWFycyBvZiBSb2NrY2hpcCBTb0MgaGlzdG9yeSBpbiB0aGUga2VybmVsLgo+IFRoYW5rcyB0byBn
ZW5lcmFsIGR0LWJpbmRpbmcgY29udmVudGlvbnMgbW9zdCBub2RlcyBoYXZlIHNwZWNpZmljCj4g
bmFtZXMgYW55d2F5IChtbWNALi4uIGV0YyksIGJ1dCBmb3IgZXhhbXBsZSB0cnlpbmcgdG8gcmVu
YW1lIHN0dWZmCj4gaW4gb2xkZXIgU29DcyB0aGF0IGhhcyB3b3JrZWQgZm9yIHllYXJzIG5vdyBp
cyBmb3Igb25lIGVycm9yLXByb25lCj4gYXMgTWljaGFlbCBwb2ludGVkIG91dCwgYnV0IGFsc28g
aW50cm9kdWNlcyB1bm5lY2Vzc2FyeSBjaHVybiwKPiB3aGVuIHRoZXNlIG9sZCBTb0NzICh0aGlu
a2luZyBvZiByazMxODgsIHJrMzI4OCBhbmQgZnJpZW5kcyBidXQgYWxzbyB0aGluZ3MKPiBsaWtl
IHRoZSByazMzNjgpIGFyZSBlc3NlbnRpYWxseSAiZmluaXNoZWQiIGFuZCBtb3N0IGxpa2VseSB3
b24ndCBzZWUgdGhhdAo+IG11Y2ggYWRkaXRpb25hbCBzdXBwb3J0IGZvciBzdHVmZiBhZGRlZC4K
ClNvLi4uIG1heSBJIHRha2UgaXQgdGhhdCB5b3UgYXJlIGdvaW5nIHRvIGFwcGx5IHRoZSBwYXRj
aGVzIGluIHRoaXMgc2VyaWVzPwoKT3Igc2hvdWxkIEkgc3dpdGNoIHRvIG9wdGlvbiAzIGFuZCBy
ZS1zdWJtaXQ/CgpUaGFua3MgYW5kIGJlc3QgcmVnYXJkcywKTWljaGFlbAoKPiAKPiAKPiBIZWlr
bwo+IAo+IAo+PiBPcHRpb24gMiBpcyBub3QgcmVhbGx5IGZlYXNpYmxlLCB3ZSB3b3VsZCBhbG1v
c3QgZGVmaW5pdGVseSBicmVhawo+PiBzb21ldGhpbmcgZXhpc3RlbnQuCj4+Cj4+IE9wdGlvbiAz
IGlzIGZlYXNpYmxlLCBvZiBjb3Vyc2UuIEhvd2V2ZXIsIEkgd291bGQgc29ydCB0aGUgbm9kZXMK
Pj4gYWxwaGFiZXRpY2FsbHkgKHUycGh5KiwgdGhlbiB1YXJ0KiwgdGhlbiB1c2IqKS4gV29ya3Mg
Zm9yIG1lIGFzIHdlbGwsCj4+IGFsdGhvdWdoIGl0IGlzIG5vdCB0aGF0IG5pY2UgSU1ITy4KPj4K
Pj4gU2luY2UgbWFueSBib2FyZHMgd2l0aCB0aGUgUkszNTY2IGFuZCBSSzM1Njggd2lsbCBwb3Ag
dXAgaW4gbmVhciBmdXR1cmUKPj4gd2Ugc2hvdWxkIGRvIHRoZSBjaGFuZ2UgcmlnaHQgbm93IChp
ZiB3ZSB3YW50IHRvIGRvIGl0KSwgYXMgb2YgY291cnNlCj4+IGFsbCB0aGUgYm9hcmQgZmlsZXMg
bmVlZCB0byBiZSBjaGFuZ2VkLiBUaGVyZWZvcmUgSSB3YW50ZWQgdG8gYnJpbmcgdGhpcwo+PiBt
YXR0ZXIgdXAgbm93LiBMZXQncyBhZ3JlZSBvbiBzb21ldGhpbmcgYW5kIG1vdmUgb24uCj4+Cj4+
IEJlc3QgcmVnYXJkcywKPj4gTWljaGFlbAo+Pgo+IAo+IAo+IAo+IAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
