Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ABBFEB64DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 09:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iIrVA8HSFVicwlrHs6w7MC4i7GIEKBJcmlgaoCXuB5I=; b=ASH2B21t2SGDZ0C/esaQK+M6Xn
	VnzzbkayIZK9CZK/jjHp+0f73su3bb5sy/X/R/rYRteFRcSR9r5OHBWQEQU7juayHka7ZDYpxB8EV
	bcrRlAYgapLHhLql6OZywRdCkYP+uMzn/YnPoSq0wQMnNiaJFheAxTDDdglJpkAcaKuo7jl0Wwe3N
	eH+zhIrU2ixODVsKCmEaxbSaSX/wauwfMGEb2VY8Os90OYPnQev0XYhRv+zjBx4LSXGQ2Wq8t6o6c
	jwrQdxRX2AtdSeOt/c1VmQl48BDR3Rzj5S9LEFGPJb/CYzMK3+ei13vm7kQUa5Qrxcb9EQ+2S2I5I
	QAqdGvug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9gr-00EI8c-0Y;
	Tue, 11 Jul 2023 09:29:49 +0000
Received: from mail-am0eur02on2061d.outbound.protection.outlook.com ([2a01:111:f400:fe13::61d] helo=EUR02-AM0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9go-00EI6e-1d
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Jul 2023 09:29:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=foftYVNorFMAFgQQNpnQJyloX9EvgSTK3sLEpSCKRVb7lfXC1vSxH8u/HCIk+YZXpzojZ2JbPmqcesc+2pEbJLG9up3N0AKoJ1T5NzTjDOl4omn8HkDWiDeRqfRTBit5jDDbASfVjB7iqqrlB5kD4L5Je4eCpKNY6H9oxoQRNJmtrF/PWI2n0L5QpgTqV81TKEO7p/xD/XKrmcdGhhWoxqjvA+TH/Skt+lvJ636iRtDDY6uFsT4/iNqUgTkDaWSxTY41aSfFLCbwe0eZd302EtRDRVlps2fR/tfSSsn0Uv2THRhMddwbvmd9NOSZVFoe0knM1ec9Ravanjl5HdTxLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IpRHu06VdFWh+Km/mu/6Hr56zTvgfFKlIqV7F7LmbAQ=;
 b=WAfkP+z9xdDbVoqIAE+VxW7DebD3OoJwyV1hnFiSQ9YlslgdeiSk1g+jcwwx4Y2b53Ixhq80ATgZQcN4O2TIf89yr4ZqHgjPv5Pvnouz7WoRcP1006gg1h437HYrv+db9kecNLQ2FkMl/i6vk+elgFMUC/eF8GViEN1ZUeMGVoqAoquF6qBlEaSs49F3mf0EnrXoe7Vlx8rfVyq28IyOVxqsgseTem6YJCip4U2qWjvPI6294LMrt0w/0gHfiGhZakCwOk+GHE7BkokoTqmBIZfBi5iJ9Cs9N3PhoMOVmEBpIU38nIaCHWMwG8ZmiG5jiKUPARnDuLUGrVa+opVvUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IpRHu06VdFWh+Km/mu/6Hr56zTvgfFKlIqV7F7LmbAQ=;
 b=vlCbJ5StCFoi27RaPrqYZwUonhWSw43U42KejgrcGtZuthZ2usaNr5G2owszwXAoZR1XdUYJpdRXdV5QpYHMumw1jKrvHPSMWN8vZF8DKPeOwl/Mkn5ulAnB4svN/9sYBbi8Ji8q/HDlufpWNdae8+pt5jux1mNNlfGmqva3Ieg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by AS8PR08MB9018.eurprd08.prod.outlook.com (2603:10a6:20b:5b0::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Tue, 11 Jul
 2023 09:29:38 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::b3e9:fa7c:106f:7f3f]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::b3e9:fa7c:106f:7f3f%3]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 09:29:37 +0000
Message-ID: <85ffc0b2-efbb-5d70-ab75-e3e9f0c74bf9@wolfvision.net>
Date: Tue, 11 Jul 2023 11:29:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: Seeking guidance for Adding ISP Driver for RK3568
Content-Language: en-US
To: Yogesh Hegde <yogi.kernel@gmail.com>,
 Dafna Hirschfeld <dafna@fastmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: skhan@linuxfoundation.org, ivan.orlov0322@gmail.com,
 kernelnewbies@kernelnewbies.org
References: <ZK0ApOXkmkSO98kM@zephyrusG14>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <ZK0ApOXkmkSO98kM@zephyrusG14>
X-ClientProxiedBy: VI1PR0102CA0015.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::28) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|AS8PR08MB9018:EE_
X-MS-Office365-Filtering-Correlation-Id: b5d361fe-07f8-4c81-429f-08db81f15846
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: He7eMX18VqD/njSJz1XBdfyWeUM/y0QIhLPzIe38FNbtPAZ6WgU/qYndt2yrkmKb/Gk0tga0V9Ah8qqu3VdF8g1ZlbJ9+TAqxH454PXJx/uf+24m/sk5zd4vdxXzR3l15huPPMsf1kAqqL2GDsnlJDBKc/ltjh/Jvf5NbnUCaKnCSNuLyG0m6wzTlw/2fWaJ2LS4kZdRABvRG5rCldARqWmvLIvLGPebIWiJE5Kj2UrPZwWi06hugVH5aA0Wloy70ccbTyrh8usPI94U5xIPXxRmDGuZ9R4qDJJ/OlgfFql+peSXTiZSzGEZPeVtLwguofTl/SMxR++7Vjhh9RWuGAwi10A3sjcz8/ZRSeoyktgDhm+qnhzFFbs/osqpprs8phVRrZ7gNO//mdeFOJz+jnSZNHSY5aN5aBH7RsUIvcmBNi/QIk808XebBE0ZU471HglWp6PeifZD4ed3giaQsA9J6fwNcvz15myK2AtbVyaICI2eQYPYVH+PTq4Fiys3ehakJHIANF9apSwPiVYlugBYaEbLpM1yISKK/gocyEHxbJxmlgtvauQRg360Dd00g8noq1FJ/hrDw7PmVObVyU5PS+Bso6ZTiOE5CxMr/yhE97WlWlNvd4PfPl7gFCQjod38M1QvIOkpPTGGVIY8xZl8PlX1zyY+Eu6yGBDpI7A=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(39850400004)(346002)(396003)(136003)(366004)(451199021)(26005)(186003)(53546011)(6506007)(41300700001)(966005)(6512007)(83380400001)(31686004)(2616005)(36916002)(6486002)(478600001)(110136005)(6666004)(4326008)(44832011)(66946007)(66476007)(66556008)(38100700002)(316002)(86362001)(31696002)(5660300002)(8676002)(8936002)(36756003)(2906002)(43740500002)(45980500001)(50394004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1FzVThKdHRGSXN4eS9XakVGQ3hjSktoUXVKNEdiSXczQmZUVWlTNUUzQXBL?=
 =?utf-8?B?TEVNWGI5aEJtbVVUdjIzQ1QzdHROMnl0TDErMWFSYmpZeEZEQXZHMzNUZHVW?=
 =?utf-8?B?NG9nV1l3K1E0Nk96cE1HeG1ia1lQRHU5Q1hGZXdtRkluaXZ1Q3hKT2RzUThE?=
 =?utf-8?B?RmhjdGRNZGMyQ1NNOGR5aXBhQ1dycERCbE5qcHZsTjV4S1dxK1Y5b3AxSnha?=
 =?utf-8?B?RDZhcFZIZW1rbkdQWGlYMzN1UFZjZm5CTHEwMmFmN210SElKYkV4bHBGWFhU?=
 =?utf-8?B?dFNDT0JlYkZMSE5PdlJXWWIwT09wdmV4VEd2UUdKb0paMXl6TGJUaWFUVjl4?=
 =?utf-8?B?ZXUyT202YWxIQmc0WkFtM005ZU96OEJwbEhPTVNOdnJqV2toK3VCbVBHSHY0?=
 =?utf-8?B?WE9rUFlXQnpkenNWTXN1NWo0VXpJUmRnSktsL0JBbHB4Q1NaNUFEOGwyY3FO?=
 =?utf-8?B?djh5SDJpUGttVzNpb0s3YU5sNGQ0ZkhseTJteDhIc1FzYURTUm51N3Uwc3Rh?=
 =?utf-8?B?Qm9Mek5WM1ByR2hmT2hiZW5BVnZrOXN4MlpnRDZSUmRtOWVFZGxBQnFyZEhj?=
 =?utf-8?B?NURjOStSdVVPN0ZtUW5KaHpBamwxcTRGVS9VaFBXeFF6bDFwNWNaV1lnYTlM?=
 =?utf-8?B?dGRQUWJBV3AxWCsyZi9YSEVNMHJrT1dRdEs1L0o3RXVTYUpoS3R1bFc2WVNB?=
 =?utf-8?B?NUZkdE5odUloS3pRU2JrWlgreFNRcFNMMEpZUE5Ra01RcmZiUEFBOXFFdWIr?=
 =?utf-8?B?c3A4S1AySDQ0Q2M4aXZyZkhQWWprVFdhSklCekZmWTE5VjB2eWlLNVlaQldM?=
 =?utf-8?B?b0FmRENWOTEyelBPcm1CYXI4aXlISm9zNEw1TjZYZldZNWt6eXhQK0lpTXdG?=
 =?utf-8?B?eS83ZUFEUjlxSDZkRE5zcERRdWlFc1BhYklMKzBTd21oaGF5ZExLbE5UUWl5?=
 =?utf-8?B?SmR1YWF1L05CRHpldXViY1N4ZERDNFNHa1Z0T0VnTTE4ZW13ZHhvYnZhb0dk?=
 =?utf-8?B?c0pvM0U0UVVTNUI5UDBmWUJvOWlTR0hFMWlFcGFHUzBYNVFIT1JBcnZLb1oy?=
 =?utf-8?B?dGtHWlYxZGdYZ3B6RXEyd2d2VTJ1Vk9UWS81TmVPc2NrQ2taNjlEZVFocGFo?=
 =?utf-8?B?N0lXKzg2ZHQ1OUlSK1NuVyswa0VoSVJWRmNMZi85WU5TYzhpZytjNVMvS3FE?=
 =?utf-8?B?SnNrSGF6Q2kxZmM5WWVqZnF6YmhEWDRLNkVpaHYzRWNhU2RodFhaV2RBbVVO?=
 =?utf-8?B?NWd2bzNTRzFrSExUT01yRkwrV3lzWGl6MlVpc2NENGg4dmJKRTk5NmRhWnMw?=
 =?utf-8?B?MjJINGdyaUsvWHU1bzVUZGc0aFNYSTF6UHA1UXVnckRqNHd2M3VPa2VOd2ll?=
 =?utf-8?B?a21CQ2RsQUtOWHh5MkRPdjY5V0ZyMDFObVA0NDduQmtpMnc0Q28vQmJNc1dU?=
 =?utf-8?B?dUJaN2NjMUJSSi8rU2NVWXduZWFIbDdwK2pKMkhxVDMvNS9OdlNNSVhNSEt0?=
 =?utf-8?B?WHd5N3A1NWJCRzJrblBBYmovMmhSb1VMT1JEL2NObDV6REdBdjgzOU81aG5E?=
 =?utf-8?B?M2pySHJOa0UzNWVHMll4RjFHU1NhMXd0clNQMmVKeE54VWZxS29PaXhQVTIy?=
 =?utf-8?B?aW5YVkFRaWppSmR4N1FET2dTb3BXdk5RalQ5Rks5MTd4UncvZmRSRVhINEQ5?=
 =?utf-8?B?NWIzei94MDVCdmIzS2thLzU2bzVrNm53MTVWTlcxU3dBT0FxdDJyejMweUhp?=
 =?utf-8?B?Q2VxdVo1aGxXNVJRNWdnS0hIYTQ0VjRCTE04MHc3RFJVODFNcUlEaTF5QXBD?=
 =?utf-8?B?eXNxNFl6SjRBWVk1RjI2YkVrbHZ6OC83VkRacXpKUDRjeG9SWEkxT0YyL3hX?=
 =?utf-8?B?VlY1OSsxNTJ0ZXNFckF1TTA5V0I2TkdtNHRQWWZrZWdnR29VSjJBcDFESG9z?=
 =?utf-8?B?ODRuQWVic2dUeE5VM09PNWV1eVBrYUJMWnEwZXBjK3paY1hFQmQ2d1hrUzlH?=
 =?utf-8?B?M21DYXR2NS9QNGtJZk5ldC9xSkc2VkRmYlg0T2NuY2tiemMwVFZ6TDhDTGJs?=
 =?utf-8?B?cjlmc2RrWmZ3a3lCWEJGbG90WmY3a0Uyc1RqMHJwL1NkWlhUbUQxVzRuNlN1?=
 =?utf-8?B?UWZhZHdCeUYvOHV2d2xJd1ZEQ29OSVRwTkV1ZytvYUZ1d3RRVkEyK0RXSWRD?=
 =?utf-8?B?SGc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: b5d361fe-07f8-4c81-429f-08db81f15846
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2023 09:29:37.2607
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tmw1F0oRK4kBK6p2XX/FpaPvYJkTHmp7QbQzQAhD6QtMA5BC5fNb84PPz01xX6VOLwLvFBiNtbDaCZOMoHi++b6e2SlkYb6IpD+7RxHviuA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_022946_565308_870491F4 
X-CRM114-Status: GOOD (  32.37  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Yogesh,

Cc: Laurent as I had a chat with him about 1.

On 7/11/23 09:11, Yogesh Hegde wrote:
> Hi,
> 
> I am seeking your expert guidance and assistance in adding the ISP driver for 
> RK3568 to the Linux Kernel.
> 
> Before I start, I have a few questions regarding the process of 
> adding the ISP driver for RK3568 and upstreaming it to the Linux Kernel. 
> I greatly appreciate any insights you can provide on the following points:
> 
> 1. Integration with existing RK3399 ISP driver: Since the ISP driver for RK3399
>    has already been upstreamed, I would like to understand if the ISP driver 
>    for RK3568 will be added to the existing RK3399 ISP driver or if it will be 
>    a completely new driver ?

That's a very good question, but unfortunately there is no clear answer
to it. We were able to hack the existing mainline rkisp1 driver so that
it works with the RK3568 ISP (rkisp v2.1), but the result is far from
being mainline material.

I would say that there is enough overlap that the RK3568 ISP code should
enter drivers/media/platform/rockchip/rkisp1/ but on the other hand the
differences are so significant that there should be separate
rkisp2-{csi,params,...}.c files.

Example for overlap: With some refactoring applied, rkisp1-capture.c
could support the RK3568 ISP as well.

Example for significant changes: the CSI subdevice is fundamentally
different, so most likely there will be a rkisp2-csi.c.

Example for a mixture of both: a new stats/params interface to user
space will be required for the RK3568 ISP, but if this is designed to be
general enough, it might be reused for the older ISP versions at some point.

> 2. Upstreaming process and staging: I would like to know if the upstreaming 
>    process for the RK3568 ISP driver will involve starting with the downstream 
>    driver and adding it to the staging area. From there, would it be merged 
>    into the media subsystem or follow a different process altogether?

I think the tendency is towards skipping staging, but I don't have a say
on that one.

> 3. Permission requirements from Rockchip: To ensure a smooth upstreaming 
>    process, I would like to know if I need any permissions or approvals from 
>    Rockchip, the manufacturer of the RK3568 chipset. If permissions are 
>    required, could you please guide me on how to obtain them?

Downstream code is GPL'ed, so it should be fine.

> I would also like to mention that while this is my first time upstreaming a 
> full driver, I do have some experience working with the media subsystem.

Cool! Just be aware that you picked a complex beast for your first full
driver.

> I am willing to devote the necessary time and effort to learn and contribute 
> effectively to the upstreaming process also I have Rock 3A development board, 
> which will be helpful in testing the ISP driver.

What camera sensor hardware do you have?

Best regards,
Michael

> 
> Thank you very much for considering my request. I eagerly await your responses 
> and any direction you and the mailing list members can provide.
> 
> Thanks & Regards,
> Yogesh
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
