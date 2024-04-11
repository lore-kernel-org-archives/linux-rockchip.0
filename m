Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4B5FCD1292
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Apr 2024 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4V8M+NJhtO7c1Q4ndh6j5+EUPxavpzjDanlouqUKfZQ=; b=riRGlWRqW9ou1IqJa1x63Dvued
	I4qUvvSN3A5fX6R2dCuWXX8CbjX65bJN6xIWBj6WVyIOWahDqF0all735sTpFjmRdzw6WW1Mq0kQ1
	/3UP8ap24n/5DwyRJwXCvjjjaO5vm0aHbQnh1ekAwgBy2t7/ipi+Oo96yOgr+jBsoNykoqJEAgid6
	tBU/xfq07T54OGWd7a1lW4FFgOQDSEerbo9y0dkGrzl51IOSfhvfBUtpoDkbuWMPcI5PB46JqGSJR
	n/WB4UAtuuQp1GkZLHFDJ0LFFHvaAIoUxfnNpAVeok/mN6uaQoCt2JRYYGnYdAFCut3c9nc8oZZQm
	URjNFcJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruph0-0000000B3v5-0dqD;
	Thu, 11 Apr 2024 08:21:58 +0000
Received: from mail-sgaapc01on20614.outbound.protection.outlook.com ([2a01:111:f400:feab::614] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rupgx-0000000B3s9-0vXV
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Apr 2024 08:21:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FFLY4IMkRyIU1B7Xsb1Bh4T6ReeLXtf7HEY0u+K823k/l+ALlKsFii3ytVskQwFh9oYU2R6fGMITkp4SmbEtAxo6gpTxQwxLV/kx79jfrRSW+twR5G5QyzWzrbcr8y5qbM2EpkKuaYeEx2fI/Rasw+i3vnLgIs4ltYSRo/6etSgQH9EgwewaXRI7WrULkN4tbaMl95cRyl5X7bn/MBI1SEVK2hJIZkmhguauAdQUMNkvWWGQMYOas3qCUFkuhcCOHd0OFv7IIlesJJAVCjJ2txTIKuIM8Gz3LiJJUS1PVogyYzzEcC+AJYydb8VYz8GeypahvMy8Y8o5a4tccfA6Jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/hPcPS95zttMrz0qxfz2tjAHVxiJ4U3XtIdvYHu9DLI=;
 b=CiznLYhQOv9NUV/3TszJGSk/5UcZE/3W5gw6Z3L7w9HMmk/Y8/RRpYU8o0+H6phob+fauS0fffAoYQn6luBTFLVt4ZmOBHHBzmeaXd6psrYNspNlAHZ8/i9DT38qmBFjpMwRW1EijU9TAndJ9wO9ldZLB+gQN2JOvEDsW6IgLpD3qAof3YPU/IGJa4YsAb+J1FDFcLJCjZ8zFxQGuTWNLRIMXll7/IHCjodr1oHWGNuio73TTDywVgQtUysY6BBN5Mkw9PDwi3lb9wpE6mvzfSuL3aa9IGghRno0bU03F4y6ROknfGvYpTssi5ITNrwZzRk0r9TqSzpZf8qZMxm51Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/hPcPS95zttMrz0qxfz2tjAHVxiJ4U3XtIdvYHu9DLI=;
 b=YLVJghjWvj8T9izYxqqwWpe37h781/1xGrIykOtxaiJgVWUevcdPCbPMgAfWaqYbi4Hvldy9ZBvEQawYCogTGEdvm67hg5tkrDCTpDZhgJD4msyO2zsWLeV4rOQ/Q8PdnJ7S6d3CkNWSGxqaAW3ZX+SrVrmM+lwTW82C3wN9u688s/TwcrWSZSiX//WUy83okfnijLfYR/tbql1u/UKRACEzuko/Zki39vFhh2ZKzIGG+ncA5WyAp75kFNf3Y3zn3BDuedO/FM4Wf/8gBQcQQ4T5Z1yeP77//DbNX+vTzy/MZAGnBhjdKoz4CuvvNg/XvEdUsnSBdfFY0szPYQrG9w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com (2603:1096:4:1af::9) by
 SEYPR06MB5790.apcprd06.prod.outlook.com (2603:1096:101:b9::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.54; Thu, 11 Apr 2024 08:21:40 +0000
Received: from SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::a60c:298:c201:e4a1]) by SI2PR06MB5140.apcprd06.prod.outlook.com
 ([fe80::a60c:298:c201:e4a1%3]) with mapi id 15.20.7409.053; Thu, 11 Apr 2024
 08:21:39 +0000
Message-ID: <da21fe55-2ffb-4c8e-9863-2f27aa18cf5c@vivo.com>
Date: Thu, 11 Apr 2024 16:21:37 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dma-buf: add DMA_BUF_IOCTL_SYNC_PARTIAL support
Content-Language: en-US
To: "T.J. Mercier" <tjmercier@google.com>
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Rong Qianfeng <rongqianfeng@vivo.com>, Jianqun Xu <jay.xu@rock-chips.com>,
 sumit.semwal@linaro.org, pekka.paalanen@collabora.com,
 daniel.vetter@ffwll.ch, jason@jlekstrand.net, linux-media@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20211113062222.3743909-1-jay.xu@rock-chips.com>
 <1da5cdf0-ccb8-3740-cf96-794c4d5b2eb4@amd.com>
 <3175d41a-fc44-4741-91ac-005c8f21abb8@vivo.com>
 <9e6f1f52-db49-43bb-a0c2-b0ad12c28aa1@amd.com>
 <5c7ac24c-79fa-45fc-a4fd-5b8fc77a741b@vivo.com>
 <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com>
From: Rong Qianfeng <11065417@vivo.com>
In-Reply-To: <CABdmKX1OZ9yT3YQA9e7JzKND9wfiL-hnf87Q6v9pwtnAeLHrdA@mail.gmail.com>
X-ClientProxiedBy: SG2PR04CA0191.apcprd04.prod.outlook.com
 (2603:1096:4:14::29) To SI2PR06MB5140.apcprd06.prod.outlook.com
 (2603:1096:4:1af::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SI2PR06MB5140:EE_|SEYPR06MB5790:EE_
X-MS-Office365-Filtering-Correlation-Id: 72f537aa-b87f-4435-924d-08dc5a006980
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ybecs4ZzUde41V0oN5ffbAyMWIO80R55gIjIYH9v8xWkJjjFnlalT+is9pyQRK685WrVDM5iteI4HKjOZuluIozu1ejDhSx5I6emLClGvGo09y38JawQMZZGWCGb3whfGA5FjGI2fgrebGRDqspD1YivSFzAKsro5cEYAJlG4flkjrMcs6A+muHuTsZDriETac58d5dnYSddO7JT0q8CY93dS3H5yfF3eoXVqPMUxzJvCNwIhj8BdUWkzFXB3mmRZQ1zpmlMD7JqSPnb15hATtlITGwV9NlL6AndpGlhecu64dwY6cB/OBfVoOsi17cSu77xsmo7Dsdh4Il6ediGQ17Xgv5hKGNvGtXri1QK6+NoFLQUlBocXe/G0OPvSBzTYRl+4Rc3yEqnnxdMSo+Qhwv3NtqGl9NHoSdSzWyBFGGLU7wKh9s4hBH+uRCqYU0hTSnCbjjjspicMCcv1L696P2fAX0ytDgAQW+Y5OKhV5OicNfq1/FSnfofifPiVqOgyMHPjptV+eLHXBoCZHzt6L1u/TXTgMYQ4KCYumwQ/5sHp04BbVq9JultB95P9xUF4kS9x3px5FsOsSdYOLskRLiATq7NVudfZxpSv0EjYBy7EMIiyI2kkZdjofsglMd3iAVcRCts/HItn9cuA8YJTak0nLVOOMNTQyKuYg1nCOisDtzxfbmuIKfUdXzYXgq4
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SI2PR06MB5140.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(7416005)(376005)(52116005)(1800799015)(38350700005)(81742002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2dRdWpCbktTSXdDb1pFUFlsa1dybnZZeThCQk1ZeEdaNlgvYVBGb3B0WDRp?=
 =?utf-8?B?anR1QmtHQTBYNVhWUndMRTFnaUVrNWlCZWNKVWpHNmNMa0hDODhHeVEwUUdQ?=
 =?utf-8?B?L05nNFNaVDVOMTRLNUExZ21ndlR0OGdxajlRY3BWcE1SeERPTmtUSjR2aFpx?=
 =?utf-8?B?S1VoVFZlRUx2aVhvNTBYU3lhVWkvRUN2RW45WG1oNVhvdDlTOGozejQxajRJ?=
 =?utf-8?B?RzFoeXFLSEpJeGdlekFoVjNnaWhoQVJrVHUvSWY5dkJzd3JaZ0JtTmVvWS9P?=
 =?utf-8?B?RjMzUmxJa2toVjFGTVAvNk5vMDQrU2NQaUIveUMrV0FqSzhrbE5YT1hQY1JM?=
 =?utf-8?B?aUduRGtTNUdDSTVCNldEdFd1bUEwb1hleXozR3VLQ3FtakpDdVFSemxHbktv?=
 =?utf-8?B?QmRjUDY4d05FcHlrdGliWVl1a1F3R0g3Zk9EOFZBTnprb0UxSTRLWGpydG9O?=
 =?utf-8?B?SHhldERXTEZ2K1lxVE1VRDM5TGl6Rml6cjVxKzllTG4veGd0enV2eExLMUdM?=
 =?utf-8?B?TUxTa1JNMitBSEZ1L0h1NTNHQzMxZTRKVjZpb0xMU1hFOTQ4WExxT1I3NDZK?=
 =?utf-8?B?TkRZSFgvU2t4Tml3ajFUd0tGWFdtdytiU2NEcjh3c0E5Kytqc2xEakEyaGpr?=
 =?utf-8?B?NnlSYzd6dFViY3RoWHJ1QURMRWNCcUZTSksvckUycGNCVnhyaGZ2N1ZEZ3BT?=
 =?utf-8?B?eDNickJvMDkycFdTNmZOLzRYR05rc0FvMjhMMDdsaHRwdFk1d1RTU2o3dzgy?=
 =?utf-8?B?NW9RZWltYkNldFFlQlQzTEhjSXZDYWhPZE5VODFLMWo0TTI0M2dGaWt4L3pw?=
 =?utf-8?B?a1F5eFlWQU1obWl2NDJTMUFvQzQxRHNZK2NCUUtUcEFySkVucy9zamRHT0ZY?=
 =?utf-8?B?SXRUd24ycmhpRmVPSHAyVk1XSXgwWGcvbWQwV3RXMElCVmdOR2k4SEFWR0ly?=
 =?utf-8?B?Q3dWQ3NzdDIrR1crQ1hkQXQ1VCtZb3ZlVWZ3N3ZPTkMwVUVBeEdpQUJieGxs?=
 =?utf-8?B?MDhtcGhBdFlITVdqU1FaY25uYVJMeUVBM2J0ajBiNWJKV3A1bS9OSlU3aFh1?=
 =?utf-8?B?WURnMTFCR21ObUJIVXZwWFR3Wis3QTNUMjE2SlAzeTZzODJDczVpWjYrV2pW?=
 =?utf-8?B?Ni9iMFl0Ymk5akVMM1ArZTcraDlkNS9zbUhpcUMwUWM2L2ZiQXFkRHFuMzdQ?=
 =?utf-8?B?TExrZk5yTFFaVitEdjZucE5BczJFVDBHQmtFTDA5L25ibWF1RXQzdFFITEU0?=
 =?utf-8?B?OUpLcnBBN2tieW1LdGpsN0I5NHdWZStyS1p6bzFyU2Y1Sm4vZ2oxdWFwUmNU?=
 =?utf-8?B?RnAzUHlHdEhSaWkrUmhDQWdETlJjcUUrVE1RMXJWOWhoSkI4ekExVWljMkds?=
 =?utf-8?B?KzExb2tjQnBteURKYjdycGZRSEp3c0ExczcwYUwrVzJydUFkS0laeis3c1hw?=
 =?utf-8?B?d0RKV0RjUDl1RXgyMTZUNFZTMmpmNVZHNWpmbEl4SEdJb3p0Q0Q3QmM5ZlFG?=
 =?utf-8?B?dmlRTzcvWFlJL1BWa05BOEVCVGdTNXhsMUZkamQ2YkhVV05EWFBkNXVqQXl2?=
 =?utf-8?B?NWpUQ3JOei9DVTF6SGpYSFc4TS9pWmFaVTIxQzh1UjBYOTBFWHd0OHVHWFc0?=
 =?utf-8?B?ZXRQYmkya1ViTWp3VDdubVdOYWpRY1ZuUUdmcm9EMFZXVDQ3WW9keTB0R005?=
 =?utf-8?B?SmJpK1FFL3hpRy9SQ2RXTDF3RTE2Ulo3aTB6OVR0cjJRUHgyNHJGV080WUw5?=
 =?utf-8?B?c0ttN01oTTFyK1Y5T0xpR3VwVUkzZFNjWXptWnJ5YjJtTG90YU9KNkhUcWlM?=
 =?utf-8?B?OUx1Mi9WQ1hNYU1hT1JHenhZTDNUbDl0bUlMVnlhRGdZVVBiZFBDd1ZaR0hs?=
 =?utf-8?B?RHdOOUFQQkRxTllJUCtwZjhzRkJiY3dUZXZMYXpXZ0dHNmliOTZaRXVENkhL?=
 =?utf-8?B?WUtqOHN0R0I0b3pZV3ZWeU9JZUxJMjdKWFplekg4cGZHSzRiUlhuSEhMUEEr?=
 =?utf-8?B?MTNwN0RlYUE2bWcrMUxrb2NlT1lhR21LTVBOZFgyVlljT3E4WUJzSncwVlBE?=
 =?utf-8?B?aW83aUtVUkVIWm1abEJ1VkM5Z1lqaktHQUtsRXppbGJwYWF3dzFNTmc0a1h6?=
 =?utf-8?Q?HrcqIDZmktTlGj17cR2wZECy0?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72f537aa-b87f-4435-924d-08dc5a006980
X-MS-Exchange-CrossTenant-AuthSource: SI2PR06MB5140.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Apr 2024 08:21:39.7731
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k8uH721oj1dwx/gr2g/2HvfkiIP/Y2M7M9H2hZd31+r991GUgRO6sqM0uJeuce+zvZ5OjkHctwCoh98iiCofIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB5790
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_012155_290707_C1DD205B 
X-CRM114-Status: GOOD (  21.07  )
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

CuWcqCAyMDI0LzQvMTAgMDozNywgVC5KLiBNZXJjaWVyIOWGmemBkzoKPiBbWW91IGRvbid0IG9m
dGVuIGdldCBlbWFpbCBmcm9tIHRqbWVyY2llckBnb29nbGUuY29tLiBMZWFybiB3aHkgdGhpcyBp
cyBpbXBvcnRhbnQgYXQgaHR0cHM6Ly9ha2EubXMvTGVhcm5BYm91dFNlbmRlcklkZW50aWZpY2F0
aW9uIF0KPgo+IE9uIFR1ZSwgQXByIDksIDIwMjQgYXQgMTI6MzTigK9BTSBSb25nIFFpYW5mZW5n
IDwxMTA2NTQxN0B2aXZvLmNvbT4gd3JvdGU6Cj4+Cj4+IOWcqCAyMDI0LzQvOCAxNTo1OCwgQ2hy
aXN0aWFuIEvDtm5pZyDlhpnpgZM6Cj4+PiBBbSAwNy4wNC4yNCB1bSAwOTo1MCBzY2hyaWViIFJv
bmcgUWlhbmZlbmc6Cj4+Pj4gW1NOSVBdCj4+Pj4+IEFtIDEzLjExLjIxIHVtIDA3OjIyIHNjaHJp
ZWIgSmlhbnF1biBYdToKPj4+Pj4+IEFkZCBETUFfQlVGX0lPQ1RMX1NZTkNfUEFSVElBTCBzdXBw
b3J0IGZvciB1c2VyIHRvIHN5bmMgZG1hLWJ1ZiB3aXRoCj4+Pj4+PiBvZmZzZXQgYW5kIGxlbi4K
Pj4+Pj4gWW91IGhhdmUgbm90IGdpdmVuIGFuIHVzZSBjYXNlIGZvciB0aGlzIHNvIGl0IGlzIGEg
Yml0IGhhcmQgdG8KPj4+Pj4gcmV2aWV3LiBBbmQgZnJvbSB0aGUgZXhpc3RpbmcgdXNlIGNhc2Vz
IEkgZG9uJ3Qgc2VlIHdoeSB0aGlzIHNob3VsZAo+Pj4+PiBiZSBuZWNlc3NhcnkuCj4+Pj4+Cj4+
Pj4+IEV2ZW4gd29yc2UgZnJvbSB0aGUgZXhpc3RpbmcgYmFja2VuZCBpbXBsZW1lbnRhdGlvbiBJ
IGRvbid0IGV2ZW4gc2VlCj4+Pj4+IGhvdyBkcml2ZXJzIHNob3VsZCBiZSBhYmxlIHRvIGZ1bGZp
bGwgdGhpcyBzZW1hbnRpY3MuCj4+Pj4+Cj4+Pj4+IFBsZWFzZSBleHBsYWluIGZ1cnRoZXIsCj4+
Pj4+IENocmlzdGlhbi4KPj4+PiBIZXJlIGlzIGEgcHJhY3RpY2FsIGNhc2U6Cj4+Pj4gVGhlIHVz
ZXIgc3BhY2UgY2FuIGFsbG9jYXRlIGEgbGFyZ2UgY2h1bmsgb2YgZG1hLWJ1ZiBmb3IKPj4+PiBz
ZWxmLW1hbmFnZW1lbnQsIHVzZWQgYXMgYSBzaGFyZWQgbWVtb3J5IHBvb2wuCj4+Pj4gU21hbGwg
ZG1hLWJ1ZiBjYW4gYmUgYWxsb2NhdGVkIGZyb20gdGhpcyBzaGFyZWQgbWVtb3J5IHBvb2wgYW5k
Cj4+Pj4gcmVsZWFzZWQgYmFjayB0byBpdCBhZnRlciB1c2UsIHRodXMgaW1wcm92aW5nIHRoZSBz
cGVlZCBvZiBkbWEtYnVmCj4+Pj4gYWxsb2NhdGlvbiBhbmQgcmVsZWFzZS4KPj4+PiBBZGRpdGlv
bmFsbHksIGN1c3RvbSBmdW5jdGlvbmFsaXRpZXMgc3VjaCBhcyBtZW1vcnkgc3RhdGlzdGljcyBh
bmQKPj4+PiBib3VuZGFyeSBjaGVja2luZyBjYW4gYmUgaW1wbGVtZW50ZWQgaW4gdGhlIHVzZXIg
c3BhY2UuCj4+Pj4gT2YgY291cnNlLCB0aGUgYWJvdmUtbWVudGlvbmVkIGZ1bmN0aW9uYWxpdGll
cyByZXF1aXJlIHRoZQo+Pj4+IGltcGxlbWVudGF0aW9uIG9mIGEgcGFydGlhbCBjYWNoZSBzeW5j
IGludGVyZmFjZS4KPj4+IFdlbGwgdGhhdCBpcyBvYnZpb3VzLCBidXQgd2hlcmUgaXMgdGhlIGNv
ZGUgZG9pbmcgdGhhdD8KPj4+Cj4+PiBZb3UgY2FuJ3Qgc2VuZCBvdXQgY29kZSB3aXRob3V0IGFu
IGFjdHVhbCB1c2VyIG9mIGl0LiBUaGF0IHdpbGwKPj4+IG9idmlvdXNseSBiZSByZWplY3RlZC4K
Pj4+Cj4+PiBSZWdhcmRzLAo+Pj4gQ2hyaXN0aWFuLgo+PiBJbiBmYWN0LCB3ZSBoYXZlIGFscmVh
ZHkgdXNlZCB0aGUgdXNlci1sZXZlbCBkbWEtYnVmIG1lbW9yeSBwb29sIGluIHRoZQo+PiBjYW1l
cmEgc2hvb3Rpbmcgc2NlbmFyaW8gb24gdGhlIHBob25lLgo+Pgo+PiAgIEZyb20gdGhlIHRlc3Qg
cmVzdWx0cywgVGhlIGV4ZWN1dGlvbiB0aW1lIG9mIHRoZSBwaG90byBzaG9vdGluZwo+PiBhbGdv
cml0aG0gaGFzIGJlZW4gcmVkdWNlZCBmcm9tIDMuOHMgdG8gM3MuCj4+Cj4gRm9yIHBob25lcywg
dGhlIChvdXQgb2YgdHJlZSkgQW5kcm9pZCB2ZXJzaW9uIG9mIHRoZSBzeXN0ZW0gaGVhcCBoYXMg
YQo+IHBhZ2UgcG9vbCBjb25uZWN0ZWQgdG8gYSBzaHJpbmtlci4gVGhhdCBhbGxvd3MgeW91IHRv
IHNraXAgcGFnZQo+IGFsbG9jYXRpb24gd2l0aG91dCBmdWxseSBwaW5uaW5nIHRoZSBtZW1vcnkg
bGlrZSB5b3UgZ2V0IHdoZW4KPiBhbGxvY2F0aW5nIGEgZG1hLWJ1ZiB0aGF0J3Mgd2F5IGxhcmdl
ciB0aGFuIG5lY2Vzc2FyeS4gSWYgaXQncyBmb3IgYQo+IGNhbWVyYSBtYXliZSB5b3UgbmVlZCBw
aHlzaWNhbGx5IGNvbnRpZ3VvdXMgbWVtb3J5LCBidXQgaXQncyBhbHNvCj4gcG9zc2libGUgdG8g
c2V0IHRoYXQgdXAuCj4KPiBodHRwczovL2FuZHJvaWQuZ29vZ2xlc291cmNlLmNvbS9rZXJuZWwv
Y29tbW9uLysvcmVmcy9oZWFkcy9hbmRyb2lkMTQtNi4xL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9z
eXN0ZW1faGVhcC5jIzM3Nwo+ClRoYW5rIHlvdSBmb3IgdGhlIHJlbWluZGVyLgoKVGhlIHBhZ2Ug
cG9vbCBvZiB0aGUgc3lzdGVtIGhlYXAgY2FuIG1lZXQgdGhlIG5lZWRzIG9mIG1vc3Qgc2NlbmFy
aW9zLCAKYnV0IHRoZSBjYW1lcmEgc2hvb3Rpbmcgc2NlbmFyaW8gaXMgcXVpdGUgc3BlY2lhbC4K
CldoeSB0aGUgY2FtZXJhIHNob290aW5nIHNjZW5hcmlvIG5lZWRzIHRvIGhhdmUgYSBkbWEtYnVm
IG1lbW9yeSBwb29sIGluIAp0aGUgdXNlci1sZXZlbO+8nwoKKDEpIFRoZSBtZW1vcnkgZGVtYW5k
IGlzIGV4dHJlbWVseSBoaWdoIGFuZCB0aW1lIHJlcXVpcmVtZW50cyBhcmUgCnN0cmluZ2VudC4K
CigyKSBUaGUgbWVtb3J5IGluIHRoZSBwYWdlIHBvb2woc3lzdGVtIGhlYXApIGlzIGVhc2lseSBy
ZWNsYWltZWQgb3IgdXNlZCAKYnkgb3RoZXIgYXBwcy4KCigzKSBIaWdoIGNvbmN1cnJlbnQgYWxs
b2NhdGlvbiBhbmQgcmVsZWFzZSAod2l0aCBkZWZlcnJlZC1mcmVlKSBsZWFkIHRvIApoaWdoIG1l
bW9yeSB1c2FnZSBwZWFrcy4KCgpBZGRpdGlvbmFsbHksIGFmdGVyIHRoZSBjYW1lcmEgZXhpdHMs
IHRoZSBzaGFyZWQgbWVtb3J5IHBvb2wgY2FuIGJlIApyZWxlYXNlZCwgd2l0aCBtaW5pbWFsIGlt
cGFjdC4KClRoYW5rcwoKUm9uZyBRaWFuZmVuZwo+PiBUbyBiZSBob25lc3QsIEkgZGlkbid0IHVu
ZGVyc3RhbmQgeW91ciBjb25jZXJuICIuLi5ob3cgZHJpdmVycyBzaG91bGQgYmUKPj4gYWJsZSB0
byBmdWxmaWxsIHRoaXMgc2VtYW50aWNzLiIgQ2FuIHlvdSBwbGVhc2UgaGVscCBleHBsYWluIGl0
IGluIG1vcmUKPj4gZGV0YWlsPwo+Pgo+PiBUaGFua3MsCj4+Cj4+IFJvbmcgUWlhbmZlbmcuCj4+
Cj4+Pj4gVGhhbmtzCj4+Pj4gUm9uZyBRaWFuZmVuZy4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
