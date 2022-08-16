Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEA86C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Aug 2022 09:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RQJSqPWk6BsNzF0fTYtkoS0ZIijxSNjFl9oTbGeN3CY=; b=gUiSOxmaSWVx934VcALCWi1fD2
	mewwVcqzx2N16j7y2dcozr96s+mEOwkyVCdgwLqTjo0NGKVEcanxbyyJXoI7RSvMfc3nZ9pGo2NG0
	o3+avcl8Vps0LgLhgruzricWUXdEtKkVSRRc7rGQZiAKmH+/j0L8LASR0CvX63rqAwClx/6FBkFBG
	H/FBe76+aHOADdrXH7Lv/R/Z8u8S467eJtqkGRmSWSXPKZc9MaAvaJVTL4pi0fGsRMzV0gztkjDcC
	1VPy4xi6wDtvPOPqPsJF8DI5FxVHKPesaU0Nubb65IjkhtgTCVOd2Va2eYMtgZhy90kGZPIKnRcgG
	NOgLPTNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNskh-000BEm-5R; Tue, 16 Aug 2022 09:20:47 +0000
Received: from mail-eopbgr150072.outbound.protection.outlook.com ([40.107.15.72] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNskN-000AOp-Gq; Tue, 16 Aug 2022 09:20:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MMbjT8bcgjSSUOuQNal2OQ6+BVlJYv/h5G1MS90eJqgK6/j53XkdCOksDXEmvKWxQw3xyA4I3BGja2xqW/JpOBJ2RWdnscgw6FqxwSPbkI8vRUwbO2aisv2J0hW78wUWU10/NUBvH7WU3DJffAypEU9y+5jtKdvO6SA4t/Lsdl/W+yOElpNp9CXomXvkEmSVuGg5Goi+xqG/QtY2mFlF6QbhBS+UAB+X6GINvL+vWIAo7XNlXQYjfNd3Phywms7jXF5zNByYt+ZB/5XOfVRmIvutlKMKZCCgmTWZi+qK3Wu688r9jlumK2FaZlJkb7pnfomq9veGzRf8oIm9csVe4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dF+6d6MfOSIAkE5R6AdVTdVC/mczVEuIJ8B+91gNGW0=;
 b=JtwCGoAZFongzGGYu9L9G3WX+6Ee2qdA4GT2BLs/9bGrRVnNnmFWthmlFCzQauED0gE4nifwQcVJJA8ZYOYGCp/juSDAFD1D7dgwl6zyF537IMRQdEsnJOTxr0BJIICU8Cv9w7Y1B01QG7mkRVL/EXqKvrLCsfAhn85xYwqn+fUjhaeXshhMZJgMPm/cgNgpOLIRRfly6JrZHT9v4JngBqay1twNBXBzUWg6gfe58JaQWfGrsngOU7xSbwQSXfqoUETRZiDj1xwUYH75wl0wDmAdZ44YLZPI1+jeTOeznnDHX6EueuOBVFRP2nDHT6GJNKhBIcTOp3xaS0vEXkeDzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dF+6d6MfOSIAkE5R6AdVTdVC/mczVEuIJ8B+91gNGW0=;
 b=O3VXF+pIT0pfnnyIOg2A1xzyxQPJhRA4HceIqk12ZWpxS67BK8wu+9ipYG4fjZfeokAd8pXqhrDlCw+cBHUDjzF33cXa6IME4b/CKqtK5YkGqFb0XDCEp3hGOPGWT3rSeEzKXwDm/X339+g4uOUmKGZyBSxar7hXt2qcfncGamo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by AM9PR08MB7014.eurprd08.prod.outlook.com
 (2603:10a6:20b:41b::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Tue, 16 Aug
 2022 09:20:21 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::dcaa:905c:ff8:1f5b]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::dcaa:905c:ff8:1f5b%9]) with mapi id 15.20.5525.010; Tue, 16 Aug 2022
 09:20:21 +0000
Message-ID: <ec3d2515-b2a2-8441-2e9a-a7fe664e048a@wolfvision.net>
Date: Tue, 16 Aug 2022 11:20:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [BUG BISECT] phy: rockchip-inno-usb2: Sync initial otg state
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, Markus Reichl <m.reichl@fivetechno.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Samuel Holland <samuel@sholland.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220622003140.30365-1-pgwipeout@gmail.com>
 <88f2de00-32e3-ed74-082f-c0972a81f0f8@fivetechno.de>
 <CAMdYzYoTLjRW1FgwfizUu-+k0R4tCO78qYa7MEpgfz99aj3SvQ@mail.gmail.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <CAMdYzYoTLjRW1FgwfizUu-+k0R4tCO78qYa7MEpgfz99aj3SvQ@mail.gmail.com>
X-ClientProxiedBy: VI1PR0501CA0033.eurprd05.prod.outlook.com
 (2603:10a6:800:60::19) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 88597ab9-7212-443d-9057-08da7f688b24
X-MS-TrafficTypeDiagnostic: AM9PR08MB7014:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	3M6exVgb3+9PR4f3gh3EYbuFFiRyxfvKBa2KmaKKVAwIBgRvX0RZx0+rWTAq00WwJ7nXb7cznOatZ6uLjftSwkQ6UYU98BoGgbWVTY4IbjaNJxhNZgDuYtA4vGEix8vXA8uFHWCnbbm4tHEKEhCjSd/vOoaXypRI4ZPGhrwU/wL8FSa1RX3RViygS20j60tF7u2dKR64zRWMMzpsMg6eh7ABVCH4cO9Q66t6lqNgL3GpDNRgMaRIlczM8Rr8aSyqQlw5LEsj5MXwFtE4ugrPX6FrPz/s2ReIYeYzbst9hdmZQTPeziiGgMqy2kIkvzWI9kEgD5TamSzKFOwWyfSsMx2A8/FYinv91QHdITPqqCodripPO/rf6uWPeA/F0LszIuOlroK/a7wGfOV8J8DDVKzSGEVHJN3CpsSEvWFvKN8z/TAFvO2p8KP0Ss5HN0sQyvIq5LwnfrDUZsNc+A7X8aVBvZef0l4LtfifswrdVRAHmcHp/GtsbIwhwJlymbRbs/EbXZkku0pYZA+oMB6214mAdMIyA/jrRew5dKJIfxuBDABxkz2oeA05VPAEELQ9jtO3vynRz703c7mg+87iVIY/zWRa9XK5DONO/qRG1Qb4WZhj0h1Vwo6c0m41PsOnw57GopDVpUNXMzey3xB15PUP8DwR5wmMZRngHZHA+ugjTLLeMuYqm5v2O3blkHGyk6FyxhNH26B94Y2X/2R4crrUr8jJLpzeuBN5xZrkXH0xBrwG+AqDLHNsaUTZ8zb3RVDwOX/OxF+xrmutFzAuFLiQGioODEybd/f7orYeoVOh9z6JufQ+CMsQvRL5NqVdkCWnYsjiDB8xVXOcnrIrt3IGsJ37KaXlo1jLyVJ0NR2Sz6/92uzocV+91fobcvhF/ZOuIZ0dMmSYoFCM0YxZ/w==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(376002)(346002)(366004)(396003)(39850400004)(186003)(478600001)(6506007)(53546011)(52116002)(36916002)(36756003)(31696002)(86362001)(2616005)(26005)(6512007)(31686004)(45080400002)(41300700001)(966005)(6486002)(83380400001)(8676002)(5660300002)(66946007)(66556008)(66476007)(316002)(4326008)(110136005)(54906003)(38100700002)(38350700002)(7416002)(8936002)(44832011)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?MDZtOG5HUUFpZXdQSXRyTFJOVzNlUHQ5Qk56R0NrYzVDUU94MWlLSzlnSGZh?=
 =?utf-8?B?RTZDdko1UGtBQm50THd5Y1JzeWE0VlpJK2JMNmZTSWpaSU9uY2pZTlhMdy9R?=
 =?utf-8?B?NXQyMEVHZnFJdkJ2amFwWDhQTDJ5VnVWQmgzNWZpSmg2RDJ2OG9wSGZSM3Rq?=
 =?utf-8?B?dVVzYlRpKzJ0VW1DM25sOWk3MWQ4Y2RNRjZJV0JaOTBVV2pOOXZVNzFXVXp2?=
 =?utf-8?B?SUpVYlNkSTc2Z3ZhQWRlbis1TUFwK3BYcXFCM2wwR1RhaEt4akovc0JxdkM0?=
 =?utf-8?B?WlRWSjFzZ0gwNUxpd0FpNDY2dW5RZitmMWQrWk5tMkc3YyszWDhnYjRRNUFK?=
 =?utf-8?B?WUpWMHhDTjZ0dmhZUm5CVU9rY0xvWklyUUVWYXdDRzRqaGlRQzVhMG04QTZG?=
 =?utf-8?B?QXJxUWVUalFHRnI2cGtjeElQRlBnMGV6SGVTR2gxczM1WnFmRy9ETXVzK3R5?=
 =?utf-8?B?a3UxU0ZNcFhZZ0xBQ2ZEQ3dKSHU1SDFOVzRpcXN0eEVEVnViL2RLd1JvK1JK?=
 =?utf-8?B?ZXJUZ3BFWUtFTVhqK1RjbGRCZVRTamVBeW4wS1V2VzhwcWI2YzE2cUFwZkp0?=
 =?utf-8?B?MGJoQ3hvMVl4WU5jMzJSUkxnTk1wYml5cTZ2UFBZM3d4N0tMSVMra090VE9M?=
 =?utf-8?B?SnZpNjd6ZDV0dmNYYW93UElrclQrMEROL013RkptZHNzZHZRWHJXL2g2ZHh4?=
 =?utf-8?B?SEI3UlJLNmVJeFFFQko5RXkzSjNTbHVwU1lYNEM3SitzQXRMVWZLcEpUMndi?=
 =?utf-8?B?VjgrV0kyZU9ZYjl6aVh0YUUveEc2NkdLZEhaRm5BQ2N6cllKdUYyaE45WnZY?=
 =?utf-8?B?bDBUamtzNDlYa0VDMFRqbDZpWEJSOTNZMXNmTzAyQ3Zvc04vVGJZeHNFc1FW?=
 =?utf-8?B?TWFNRDVnTXNGYlZVVTk3M2FpSE1NcW4xTUVOWnhuRkZVZlA5VjZiL2w5bUVV?=
 =?utf-8?B?endJR2ZyNk84U0ZvRmIrVXIxNEJGSzRMVUlJZWFYUEttblFRaEZEd2VDYUJV?=
 =?utf-8?B?K04rMjZjQThVeWdYOGpHSllNV3M3NEdxeHZIL25EWjY3ektGeGRKL25QR0d1?=
 =?utf-8?B?cWp1bW9DcmtFV25xTDZRNlliZjQ1cUVQaE0wNWt2QVlDT2ZSai95Q2pWNmV0?=
 =?utf-8?B?R1A4QmxLQi82NzlmblhkNmRXdURhaWdXVlFaY1NPb0VWSTE4QVBTMkl3aEFq?=
 =?utf-8?B?bzA1UkxNc1lTWnlXTFNRK2w4aFNtYmZFR2xMZE5kYlhhdkV4NzVBaHhIaWQy?=
 =?utf-8?B?aHpjeWJNRDF3Um5teVJMTzg1S3RtV0I5SWNiSU05WmdaMWhxMEpiVFhJaWow?=
 =?utf-8?B?U2dmdkc1bkFsdUhGZ3BEU2I5dCsxREppZktsVzJTRnJRb1UxUVMxd3lvTEhK?=
 =?utf-8?B?TUpwcUprRTRlOUN2RWtDcTVuSlVhRlBxcEl0Q1dPZU1KYmwyMTZ1OUF5aUlN?=
 =?utf-8?B?ZWUyR0JpZnlZNWxMcnF4cG9HQlBlUUNOS0FLNEs5cVhTS2hpdDUrU3BOU0Ry?=
 =?utf-8?B?aWdObnJSaytBUTBnMWpvdjVJN3pwN1VRbytOT2lHaEtIZXlaZ0hvOSszdzNX?=
 =?utf-8?B?QmNpWUdITzRRY0c2SG9MQlZKMWJYZkVCL1hRYUlJZmhJUFVZcGxkNlRSdVl1?=
 =?utf-8?B?dkhMYTRSVEhkZStmc1BiQzRyN0dOMUtrWE92YWR3RThLUzJidVpQVWJFT3Zn?=
 =?utf-8?B?eDRLc3pJb2ZZeklDcnIvb3BLUzB3b1FWUGpoaWIvSFR4U05LcFV3UjVBa1BT?=
 =?utf-8?B?TGJ0WEFySzNTbTJnalVHOU1TWXM3cG01QjhGL1JPNDRad1ZmSGpGZyt0UHFO?=
 =?utf-8?B?Q2RLQVAzbXR5VlI1RWpoSldYK2RqZVdHZWRkR1ZUSDBaR1RydSs1ZzJraTVy?=
 =?utf-8?B?cmk2Zm0rN1lSME9ldG1nYWcvdmJ3MmFzSy9uU0RZS0NSZWxLSll1M2lHRTdS?=
 =?utf-8?B?OXA2ZXhvbEpIS1krWTJ5T2NjR3VTRkwxQ1lpQWNnNjQrUzkwM050NmtFNHph?=
 =?utf-8?B?SnZkZzU4MENRbm5tZDhSZng3c3ovK3o3YWRNUHBmejE0eCtHM1dQemVhQ1hj?=
 =?utf-8?B?STZXUkpjWlJFOFV5b0kxS0VoancyUkMxSGtOSUU4aW9jd3U4SHQwQ2tjQ2Qv?=
 =?utf-8?B?emdHc2grZTNDNTArb0J5SUlZMHNYNnRmU1VsTlNDTmdKd1NjZXk2TnF4eE43?=
 =?utf-8?B?Ymc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 88597ab9-7212-443d-9057-08da7f688b24
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2022 09:20:21.5195
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sVpt2SnbR9id8d/xY/q6vbECswZWEujl/vDB/BveeQCw1g5fxndYDG2/zSFVIwZEtdEo5t+3oLf16ShzeLzHIrm82r4XTivMp88RL4iJkls=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB7014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_022027_866590_8874C5FD 
X-CRM114-Status: GOOD (  21.56  )
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

SGkgYWxsLAoKT24gOC80LzIyIDExOjQ5LCBQZXRlciBHZWlzIHdyb3RlOgo+IE9uIFR1ZSwgQXVn
IDIsIDIwMjIgYXQgMjozOSBQTSBNYXJrdXMgUmVpY2hsIDxtLnJlaWNobEBmaXZldGVjaG5vLmRl
PiB3cm90ZToKPj4KPj4gSGksCj4+Cj4+IHdpdGggbGludXgtbmV4dC0yMDIyMDcyOCByazMzOTkt
cm9jLXBjIGRvZXMgbm90IGJvb3QuCj4+IEJpc2VjdGluZyBwb2ludGVkIHRvIHRoaXMgY29tbWl0
Lgo+PiBCeSByZXZlcnRpbmcgdGhpcyBjb21taXQgdGhlIGJvYXJkIGJvb3RzIGFnYWluLgo+IAo+
IFRoYW5rIHlvdSBmb3IgcmVwb3J0aW5nIHRoaXMsIHNvbWVvbmUgd2FzIGtpbmQgZW5vdWdoIHRv
IHJlcHJvZHVjZSB0aGUKPiBwcm9ibGVtIG9uIHRoZSByb2NrcHJvNjQgYW5kIGNvbmZpcm1lZCB0
aGlzIGlzIGFuIGlzc3VlLiBBcyBJIHdvbid0Cj4gaGF2ZSBhY2Nlc3MgdG8gbXkgaGFyZHdhcmUg
dW50aWwgbmV4dCBtb250aCwgd2Ugc2hvdWxkIHByb2JhYmx5IHJldmVydAo+IHRoaXMgdW50aWwg
dGhlIHJvb3QgY2F1c2UgY2FuIGJlIGlkZW50aWZpZWQuCgpKdXN0IGV4cGVyaWVuY2VkIHRoaXMg
aXNzdWUgb24gbXkgUk9DSzMgTW9kZWwgQSBib2FyZCAoUkszNTY4KSBhbmQKcmV2ZXJ0aW5nIHRo
aXMgY29tbWl0IHNvbHZlZCBpdC4KCkhhdmluZyB0aGUgcmV2ZXJ0IGluIHY2LjAtcmMyIHdvdWxk
IGJlIGdyZWF0IC0tIGlmIHRoZXJlIGlzIGFueXRoaW5nIEkKY2FuIGhlbHAgdG8gYWNjZWxlcmF0
ZSB0aGlzIHBsZWFzZSBsZXQgbWUga25vdy4KClRoYW5rcyBhbmQgYmVzdCByZWdhcmRzLApNaWNo
YWVsCgo+IAo+IFZlcnkgUmVzcGVjdGZ1bGx5LAo+IFBldGVyIEdlaXMKPiAKPj4KPj4gWyAgICAy
LjM5ODcwMF0gVW5hYmxlIHRvIGhhbmRsZSBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNl
IGF0IHZpcnR1YWwgYWRkcmVzcwo+PiAwMDAwMDAwMDAwMDAwMDA4Cj4+IFsgICAgMi4zOTk1MTdd
IE1lbSBhYm9ydCBpbmZvOgo+PiBbICAgIDIuMzk5NzcyXSAgIEVTUiA9IDB4MDAwMDAwMDA5NjAw
MDAwNAo+PiBbICAgIDIuNDAwMTE0XSAgIEVDID0gMHgyNTogREFCVCAoY3VycmVudCBFTCksIElM
ID0gMzIgYml0cwo+PiBbICAgIDIuNDAwNTk0XSAgIFNFVCA9IDAsIEZuViA9IDAKPj4gWyAgICAy
LjQwMDg3M10gICBFQSA9IDAsIFMxUFRXID0gMAo+PiBbICAgIDIuNDAxMTYxXSAgIEZTQyA9IDB4
MDQ6IGxldmVsIDAgdHJhbnNsYXRpb24gZmF1bHQKPj4gWyAgICAyLjQwMTYwMl0gRGF0YSBhYm9y
dCBpbmZvOgo+PiBbICAgIDIuNDAxODY0XSAgIElTViA9IDAsIElTUyA9IDB4MDAwMDAwMDQKPj4g
WyAgICAyLjQwMjIxMl0gICBDTSA9IDAsIFduUiA9IDAKPj4gWyAgICAyLjQwMjQ4NF0gdXNlciBw
Z3RhYmxlOiA0ayBwYWdlcywgNDgtYml0IFZBcywgcGdkcD0wMDAwMDAwMDAxMzc2MDAwCj4+IFsg
ICAgMi40MDMwNzFdIFswMDAwMDAwMDAwMDAwMDA4XSBwZ2Q9MDAwMDAwMDAwMDAwMDAwMCwgcDRk
PTAwMDAwMDAwMDAwMDAwMDAKPj4gWyAgICAyLjQwMzY4N10gSW50ZXJuYWwgZXJyb3I6IE9vcHM6
IDk2MDAwMDA0IFsjMV0gU01QCj4+IFsgICAgMi40MDQxMzBdIE1vZHVsZXMgbGlua2VkIGluOiBp
cF90YWJsZXMgeF90YWJsZXMgaXB2NiB4aGNpX3BsYXRfaGNkIHhoY2lfaGNkCj4+IGR3YzMgcm9j
a2NoaXBkcm0gZHJtX2NtYV9oZWxwZXIgYW5hbG9naXhfZHAgZHdfaGRtaSByZWFsdGVrIGRybV9k
aXNwbGF5X2hlbHBlcgo+PiBkd2MzX29mX3NpbXBsZSBkd19taXBpX2RzaSBlaGNpX3BsYXRmb3Jt
IG9oY2lfcGxhdGZvcm0gb2hjaV9oY2QgZWhjaV9oY2QKPj4gZHJtX2ttc19oZWxwZXIgZHdtYWNf
cmsgc3lzY29weWFyZWEgc3lzZmlsbHJlY3Qgc3RtbWFjX3BsYXRmb3JtIHN5c2ltZ2JsdAo+PiBm
Yl9zeXNfZm9wcyB1c2Jjb3JlIHN0bW1hYyBwY3NfeHBjcyBkcm0gcGh5bGluayBkcm1fcGFuZWxf
b3JpZW50YXRpb25fcXVpcmtzCj4+IFsgICAgMi40MDcxNTVdIENQVTogNCBQSUQ6IDcxIENvbW06
IGt3b3JrZXIvNDo2IE5vdCB0YWludGVkCj4+IDUuMTkuMC1yYzgtbmV4dC0yMDIyMDcyOCAjNDM3
Cj4+IFsgICAgMi40MDc4NjhdIEhhcmR3YXJlIG5hbWU6IEZpcmVmbHkgUk9DLVJLMzM5OS1QQyBN
ZXp6YW5pbmUgQm9hcmQgKERUKQo+PiBbICAgIDIuNDA4NDQ4XSBXb3JrcXVldWU6IGV2ZW50cyBy
b2NrY2hpcF91c2IycGh5X290Z19zbV93b3JrCj4+IFsgICAgMi40MDg5NThdIHBzdGF0ZTogNjAw
MDAwMDUgKG5aQ3YgZGFpZiAtUEFOIC1VQU8gLVRDTyAtRElUIC1TU0JTIEJUWVBFPS0tKQo+PiBb
ICAgIDIuNDExNjM0XSBwYyA6IHJvY2tjaGlwX3VzYjJwaHlfb3RnX3NtX3dvcmsrMHg1MC8weDMz
MAo+PiBbICAgIDIuNDE0MzMyXSBsciA6IHByb2Nlc3Nfb25lX3dvcmsrMHgxZDgvMHgzODAKPj4g
WyAgICAyLjQxNjk0OF0gc3AgOiBmZmZmODAwMDA5MzczZDYwCj4+IFsgICAgMi40MTk0MDZdIHgy
OTogZmZmZjgwMDAwOTM3M2Q2MCB4Mjg6IDAwMDAwMDAwMDAwMDAwMDAgeDI3OiAwMDAwMDAwMDAw
MDAwMDAwCj4+IFsgICAgMi40MjIxOTldIHgyNjogZmZmZjAwMDBmNzc5ZmNiOCB4MjU6IGZmZmYw
MDAwZjc3YTNhMDUgeDI0OiAwMDAwMDAwMDAwMDAwMDBjCj4+IFsgICAgMi40MjQ5NzhdIHgyMzog
MDAwMDAwMDAwMDAwMDAwMCB4MjI6IGZmZmYwMDAwMDEwYzgyNTggeDIxOiBmZmZmODAwMDA4ODhl
YzEwCj4+IFsgICAgMi40Mjc3NjhdIHgyMDogZmZmZjAwMDAwMTBjODJmMCB4MTk6IDAwMDAwMDAw
MDAwMDAwMGMgeDE4OiAwMDAwMDAwMDAwMDAwMDAxCj4+IFsgICAgMi40MzA2MDRdIHgxNzogMDAw
MDAwMDQwMDQ0ZmZmZiB4MTY6IDAwNDAwMDM0YjU1MDM1MTAgeDE1OiAwMDAwMDAwMDAwMDAwMDAw
Cj4+IFsgICAgMi40MzMzOTBdIHgxNDogZmZmZjAwMDAwMDcwODAwMCB4MTM6IGZmZmY4MDAwZWVj
OTYwMDAgeDEyOiAwMDAwMDAwMDM0ZDRkOTFkCj4+IFsgICAgMi40MzYxODVdIHgxMTogMDAwMDAw
MDAwMDAwMDAwMCB4MTA6IDAwMDAwMDAwMDAwMDBhMTAgeDkgOiBmZmZmMDAwMDAxYWE3YTc0Cj4+
IFsgICAgMi40Mzg5NThdIHg4IDogZmVmZWZlZmVmZWZlZmVmZiB4NyA6IDAwMDAwMDAwMDAwMDAw
MTggeDYgOiBmZmZmMDAwMDAxYWE3YTc0Cj4+IFsgICAgMi40NDE2NjhdIHg1IDogMDAwMDczNzQ2
ZTY1NzY2NSB4NCA6IDAwMDAwMDAwMDAwMDAwMmYgeDMgOiBmZmZmMDAwMDAzNTZjODA4Cj4+IFsg
ICAgMi40NDQ0MDddIHgyIDogZmZmZjgwMDAwOTM3M2RhNCB4MSA6IDAwMDAwMDAwMDAwMGUyYWMg
eDAgOiBmZmZmODAwMDA4ODhlYjM0Cj4+IFsgICAgMi40NDcxOTBdIENhbGwgdHJhY2U6Cj4+IFsg
ICAgMi40NDk1NTddICByb2NrY2hpcF91c2IycGh5X290Z19zbV93b3JrKzB4NTAvMHgzMzAKPj4g
WyAgICAyLjQ1MjE2OV0gIHByb2Nlc3Nfb25lX3dvcmsrMHgxZDgvMHgzODAKPj4gWyAgICAyLjQ1
NDY4NF0gIHdvcmtlcl90aHJlYWQrMHgxNzAvMHg0ZTAKPj4gWyAgICAyLjQ1NzA1Nl0gIGt0aHJl
YWQrMHhkOC8weGRjCj4+IFsgICAgMi40NTkzNTRdICByZXRfZnJvbV9mb3JrKzB4MTAvMHgyMAo+
PiBbICAgIDIuNDYxNzI4XSBDb2RlOiA5MTAzNzAxNSAyOTViZTAwMSBmOTQwM2M3NyBiOTQwZTQx
MyAoZjk0MDA2ZTApCj4+IFsgICAgMi40NjQzMzhdIC0tLVsgZW5kIHRyYWNlIDAwMDAwMDAwMDAw
MDAwMDAgXS0tLQo+Pgo+PiBBbSAyMi4wNi4yMiB1bSAwMjozMSBzY2hyaWViIFBldGVyIEdlaXM6
Cj4+PiBUaGUgaW5pdGlhbCBvdGcgc3RhdGUgZm9yIHRoZSBwaHkgZGVmYXVsdHMgdG8gZGV2aWNl
IG1vZGUuIFRoZSBhY3R1YWwKPj4+IHN0YXRlIGlzbid0IGRldGVjdGVkIHVudGlsIGFuIElEIElS
USBmaXJlcy4gRml4IHRoaXMgYnkgc3luY2luZyB0aGUgSUQKPj4+IHN0YXRlIGR1cmluZyBpbml0
aWFsaXphdGlvbi4KPj4+Cj4+PiBGaXhlczogNTFhOWIyYzAzZGQzICgicGh5OiByb2NrY2hpcC1p
bm5vLXVzYjI6IEhhbmRsZSBJRCBJUlEiKQo+Pj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgR2VpcyA8
cGd3aXBlb3V0QGdtYWlsLmNvbT4KPj4+IC0tLQo+Pj4gICBkcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtaW5uby11c2IyLmMgfCA2ICsrKysrKwo+Pj4gICAxIGZpbGUgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1pbm5vLXVzYjIuYwo+Pj4gaW5kZXggNjcxMTY1OWY3MjdjLi42ZTQ0MDY5NjE3ZGYgMTAw
NjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2Iy
LmMKPj4+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIu
Ywo+Pj4gQEAgLTExNjIsNiArMTE2MiwxMiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3VzYjJwaHlf
b3RnX3BvcnRfaW5pdChzdHJ1Y3Qgcm9ja2NoaXBfdXNiMnBoeSAqcnBoeSwKPj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRVhUQ09OX1VTQl9IT1NULCAmcnBvcnQtPmV2
ZW50X25iKTsKPj4+ICAgICAgICAgICAgICAgaWYgKHJldCkKPj4+ICAgICAgICAgICAgICAgICAg
ICAgICBkZXZfZXJyKHJwaHktPmRldiwgInJlZ2lzdGVyIFVTQiBIT1NUIG5vdGlmaWVyIGZhaWxl
ZFxuIik7Cj4+PiArCj4+PiArICAgICAgICAgICAgIGlmICghb2ZfcHJvcGVydHlfcmVhZF9ib29s
KHJwaHktPmRldi0+b2Zfbm9kZSwgImV4dGNvbiIpKSB7Cj4+PiArICAgICAgICAgICAgICAgICAg
ICAgLyogZG8gaW5pdGlhbCBzeW5jIG9mIHVzYiBzdGF0ZSAqLwo+Pj4gKyAgICAgICAgICAgICAg
ICAgICAgIHJldCA9IHByb3BlcnR5X2VuYWJsZWQocnBoeS0+Z3JmLCAmcnBvcnQtPnBvcnRfY2Zn
LT51dG1pX2lkKTsKPj4+ICsgICAgICAgICAgICAgICAgICAgICBleHRjb25fc2V0X3N0YXRlX3N5
bmMocnBoeS0+ZWRldiwgRVhUQ09OX1VTQl9IT1NULCAhcmV0KTsKPj4+ICsgICAgICAgICAgICAg
fQo+Pj4gICAgICAgfQo+Pj4KPj4+ICAgb3V0Ogo+Pgo+PiBHcnXDnywKPj4gLS0KPj4gTWFya3Vz
IFJlaWNobAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
