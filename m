Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F819C4725D
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 11:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YAoRXtk+ljx505QdM2dQnEp0XQLDuGRQX62mZSpDYig=; b=RTYt2rYbOUKA54XYjnWH/uTkc1
	GhxNr+1Qxp/ZxcdBPQxfokgSZWgGRyoIBwPH/yMyS+z49dYC4XThRUrgMspJG5Ycv3gWf4NAdAN7L
	IHg34emkYxlLLolgrxAW8XRT/ES6XIZ097lL/pk7QCKsuntTIrpsiE3w2i7STwXn/0lWcEESeBfZ2
	YwD99NQscOR+TR6HBupLW6STeY3OvnihdyRLW6Nn+NkB2abgGm1iZSeoLYgjvFMNCg3hj/o8kHF62
	+qtaiZKZnS4T+EJN3/d7ja0LWjZIa8SRUP9PcO+Z1zftUvxAP7cRemrgHkXquGEE9YK6HJz8doYiZ
	wQIRbxGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRsQ8-00BkKX-0v;
	Mon, 22 Jan 2024 11:24:52 +0000
Received: from mail-db8eur05on20610.outbound.protection.outlook.com ([2a01:111:f400:7e1a::610] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRsQ4-00BkIQ-28;
	Mon, 22 Jan 2024 11:24:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eP5sHE+KdpFlYRLlSdAV2owC1uiRDkzIakLgdQ9SqQtt5cqJPYmFr/2SYLQLXRpLmdznDES+VuOltuEF1a68QoRZ6FmJywJ1Vh65rs34GlCne7Joft9wlDb9JXtwxWYPxrM9Fd6DNqouDz19Gy5Pijyi82kcCbhtwuRvU25f+bs3n6pH0VQaCvtcpScCkDZ6aFS1Jm3bn/58LdqBHwE3mG5G8pKsLFSUrN9rIKYZvMKqm2woOhWRz9EvFDXKbuAR06pLnHFl5uJytxaPg9oQCEn5vf+/njlFdxS2zjXShF80fPYr1RIes4VQykVxz0IrXb3lK1yW9VqldOrggj7ASQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VBM07z3+8XQBE4Y2lor65BnTO+d7pu+YJ25Ku5+YIXY=;
 b=kx+V9oRemKtgt64DcUKpUwaMlDIX+VnCd6fysNM1a1PFsn+Cdmmmt2Boph2fV65jHnFUZSVlAlddszVYPN0GVYUn1+ynffTWQA93HG19hJfGLVrecnvBSXWXhFSwYniuz7Yl650mhTwgGVoMKutxZmwHBtjw4B/iQEjxnln63iyeSo3wgnx/jBK6uwmbnnAIHkAaXaMBUWW6TkARn81BkGo/Hs/B/2x5BZJhDj2KOPw4Xq4MNGJXm/akSKm4xFHYL1ZnhOxKogrFrgd14QWmVDfRDlLcf891MDApQBw1WVJcSqyYBeA+rBg84fqj4SCdl8yhahju+hjAVJremXD96Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VBM07z3+8XQBE4Y2lor65BnTO+d7pu+YJ25Ku5+YIXY=;
 b=IsINlVz0mlWZ5OTbRgcD5aUlhdqJYlGe1fUT2GnPynrk19MhE6H8TIndgbIujS8zvDpX5I9oy0/09PIHZ2gkIxayQNFVxK3/F/rMp19uaJoLuEN1i8F1JmoHpqczWxOFRP8pdMX3bkNAHwZ7/flagzZAK3CB1z5PYKF+O4F+Q/0t0woCU0hTWi7l5o7xbUYuYq2FeJIbIdkFG0hFr/f836us/QnNDqkXM7AadHnGIKDi8CV86p8OWITKo/PdEaJdkE+40Wp/nvmE6JxEwSpXFn2v3X3UZXlqPjlKg5FVkA1PK3+tKEym29ZB+R+DrXzGaGUVWsqh8m3HHCdlRcNUYw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DBBPR04MB7545.eurprd04.prod.outlook.com (2603:10a6:10:200::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.24; Mon, 22 Jan
 2024 11:24:40 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ee0:71d6:cd29:289a]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ee0:71d6:cd29:289a%7]) with mapi id 15.20.7202.031; Mon, 22 Jan 2024
 11:24:39 +0000
Message-ID: <a7884548-3b8c-4bec-ab79-543dd3521c35@theobroma-systems.com>
Date: Mon, 22 Jan 2024 12:24:38 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: set num-cs property for spi on px30
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240119101656.965744-1-heiko@sntech.de>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240119101656.965744-1-heiko@sntech.de>
X-ClientProxiedBy: FR4P281CA0285.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e6::19) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DBBPR04MB7545:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c865323-dc9a-4914-b88d-08dc1b3cb908
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q2mukS89vn9HFF39Ge01cHLDZNjg9cN/WkY2tFkE6sAHeqBR6dtHI0/+20vkuv25tJhQKOktbSWrW6Hld5kUG2C3Bv6C11J9j9K9prHahZR7vvn8lHuaz5dn3eu8117xQujdLpauqiILzurlIT/4sd49hANF0ShHJO30/6c313S4RzZVpBYWumIwqiwoPZhZBQ0vCn8H54PwasO/b1wwEzn/tQDBqN1JVe/ytS4bZRyyMy7zBJCv9fyL5SV4s6LW0z3ZfiyKrh+VissGLz7kESHNlnQr+vWuOjNFDEIvJi3VRDWgpwVbsU5JnqY4coLyAGgK5KZiRnyQu25k6khfvrPloCA4EV/DJbq4Jk0qSxYOraX5SmdVmTlAihFCu0LM0t5tkEOZ1KPrmqqAKbss4DIGCqNevt5ewIs/UPM7Dqbi6k5f+k7pPDtNL5cIVPJi3lEwtSC0Xl0qKzkbUojkA3ZuVdTKeaQ9jtxSIHimL9q2Cn+gDVb0YySMLFz7jydiUa2MyOQkU2gQ8IZ9BbpzRuCaie8EzsXf+cwYWKXKgQKa6XvxoLNGxspoY8w/i+IjzC5HdZfjQRkMTUiimpXqrxgVlJ/YtGVgAW4xkg3mGrtdWd31/qJPAuLKTHV/nXOpXmX41UrFNeyOyS+C9EN3CA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(39850400004)(396003)(376002)(346002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(66476007)(66556008)(6512007)(6506007)(478600001)(66946007)(8676002)(8936002)(6486002)(316002)(6916009)(2616005)(26005)(107886003)(53546011)(4326008)(5660300002)(4744005)(2906002)(44832011)(41300700001)(36756003)(86362001)(38100700002)(31686004)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alAySmIwTHZBeTdXL205aTljY2ZXblRrN0llUXlla1o4OU1lSHplenVzMmpI?=
 =?utf-8?B?VzRDaDBBemxZdHpuYUl2T1VmcXhwU0NJcGVTVU95L0tZSDZyd3FlM2FFYTRn?=
 =?utf-8?B?aEJRK2xIZHMzbmhPWWcyb1FpOXJXbGV0Zmh1eUVBZHNiMHVYYmxuTXVnOUtr?=
 =?utf-8?B?dVlRVUFrU2g1MDg3VmZCQmpTbU1FYW1WQWllS2loMzJUY2cxVWEweVpoTFRk?=
 =?utf-8?B?RCtsbUYvd1VTSCtWLy8wODRPRTNzcVpGc01WaUJwaGhMWThnSi9uaXNpM2xN?=
 =?utf-8?B?eCtMRTd0TEIwME1QMUtGNU10REdCNGwwN0VNblBFb0lsZUxRTlp0MVVBRE9O?=
 =?utf-8?B?VlhDZE54UU9mSGpPRFk2OC9uZ1hwbVhIc2pxb0JpMWxXMlpLdDZ0L0NTM1J1?=
 =?utf-8?B?cEFJVlZVN0lGcWVMdjhNOGhueVFvMUtiU1BkSDlVSGVHNmhoWjBIZ1RocUJh?=
 =?utf-8?B?UGVqQmFOck4vRXN2SUVVL3JjSUM3bWpnbG43VEVuQW1mSlFqRXFsYXNrWTV0?=
 =?utf-8?B?M2t6dllCNXowNG1Bdjg0VlJGa3IxTFV0TW51aDh6OXUvM2VSK0RKM3RtODlm?=
 =?utf-8?B?UklCY2FYc0thcFk5eiswZitNSjRaVmRTYmNuRmtKYmZFUjZRKy9JOEFHbXp0?=
 =?utf-8?B?dmhoQy8vaTd3YkFHSUluSENJY2xJMjEzc0xhUUI5VEZnYlZvVkR5bEM3b1lv?=
 =?utf-8?B?aGFVZWtTbmtHZ2o4a2hUOUo3SFlVUnRMYiswbHdVMVQrdGRrQmQ0Qmx1NkZJ?=
 =?utf-8?B?RnZxdzJuOFpZOGMvUDJaTW9SbW5SQjdvR1NFOCt2TnkrWG50ZWxWRnRzLzJQ?=
 =?utf-8?B?bzZ4ZjIxd1ZUUGgzNDZLbDRYbUtVZXJyTTFvN09sQVZiYUdFaDlsRlZrVysx?=
 =?utf-8?B?blZsUWZ5WnJTWUcvTkh5OWlSZzVTRUJ5S0hxWTB5S3ZZTXFUK0RoRm9NYzBx?=
 =?utf-8?B?MUxiOGxGenQrQzV1NUsrWmRlaUw1eWJFQWNGMVl0TEdFUzk0VHltMnFCZzcy?=
 =?utf-8?B?RkpwSjV5U205VUluZWFjVlU4RXE0ZW1ybjZERDhFQWhlZStCem1oMDVBdTdw?=
 =?utf-8?B?NmcwSjFjUGE3T0xZQVA1UW1vbTRqQi9Bakg2L2E5RzdpcXhMa0NHUC9kMjNJ?=
 =?utf-8?B?RHJEdVpRdVFUZVlZcDI2WGRGZll1NFRYSlVVQVBSc2hyRlVKZlJpajRrdWw4?=
 =?utf-8?B?aWNpU3NUNXVUUGdmb2JUeGc4RkR0cTFTSlVXUWZuS2JJRTJiVjlVaFdGRjJC?=
 =?utf-8?B?OElLekh1eFdXWWJtQTYyVWpXQTN6RmtTZGQ5eGVpZEhPc0cybjhCalh1NTha?=
 =?utf-8?B?bDVGdlc5UUVnTTZyMnE2WlVUdWFmMzZyUXRtZ1VZOEJVZ2w0VVNBU1VQci9v?=
 =?utf-8?B?U0NRMXYzbXdxb1BVSGpRZk5FYVVtdGFWVS9nclhyZG8yNDdXbE8wYU1LVFlI?=
 =?utf-8?B?ZE9tNk9zbGE2L0d6TllxVng0S0ZhUVdrdFl0dDRZQWk4TFZlTUllUk00Yzcv?=
 =?utf-8?B?cVcxOUd0cWt2UmVEZWFpeWRjcDFaWnBsaVZFalRiVGtrRWl3c2h5UTFEY085?=
 =?utf-8?B?YU9Ob2o1T000NVdrcENoYVBlTytTQUQrTmJjUm94Q0FsN1hSUHFjS01SaWE1?=
 =?utf-8?B?cHpzdjhrRHo4MGdLMUF1RGZrNkRieW9UOXRNd082alZucVlOU1BHVWJJMllt?=
 =?utf-8?B?bEFPTC9VSlpqMzE0WWRXRVhGSXpMVjdkT3RjeDJwYkJJaGVBTVdyOCtxZVZz?=
 =?utf-8?B?d1BOTjVFZ3duKzdpT25oNkM0WFlYVW5lQ3A4K0IxK3Jtc3gxbHh0MUFtV0RD?=
 =?utf-8?B?dFBXTlVJVzdzVXQzTFhDWE4xYXlGblR0bkFVYm96SjVaT2lXWmprV0NtL21r?=
 =?utf-8?B?YXJPcUJtenl1NjB6MFB1enR0RmNUMUN1V2ZucnhqSWg3NURWeGhmV2RYUUxz?=
 =?utf-8?B?Y3hyUWFLY0NlZmhuSS9pYzBFb0dlWE5GRTBzS3E5MkxaNnV0aTdXRjFQcGg5?=
 =?utf-8?B?dWEwT0xxTnk0RWNwTkJGWnVWQWg3M1dDVi84MmZvMGFkOTFUWVVkNkhmckJM?=
 =?utf-8?B?R3dtYXFSZGt1MEVMaVh5bWVxb1cvSHJSbFJmeEE1M2ZpNXYyTVFOdjRGMmdl?=
 =?utf-8?B?MVpScWVER0RwcXZxQ1ZyaXkzRmVSeG9aS3orYklJNUdnN1l5VlZnQmpITWFs?=
 =?utf-8?Q?wHMRZ6zPh79g5LMeIezYoMs=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c865323-dc9a-4914-b88d-08dc1b3cb908
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2024 11:24:39.8853
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9QmEDLIdJTT+QyD2/6npVVDNKBXY4XiXX8aPFtOU1lXZWgGT49Myk2+wvGzXRTUUJxGEdFHGFFgg7KbetEfK+0PLMQ+L+KzY8rUBeuChiWL/C0em/ycGq0bqs1lUQBlr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7545
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_032448_722750_E031C24F 
X-CRM114-Status: GOOD (  11.03  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

On 1/19/24 11:16, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The px30 has two spi controllers with two chip-selects each.
> The num-cs property is specified as the total number of chip
> selects a controllers has and is used since 2020 to find uses
> of chipselects outside that range in the Rockchip spi driver.
> 
> Without the property set, the default is 1, so spi devices
> using the second chipselect will not be created.
> 
> Fixes: eb1262e3cc8b ("spi: spi-rockchip: use num-cs property and ctlr->enable_gpiods")
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Cheers,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
