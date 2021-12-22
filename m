Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29AAFC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 13:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LYOOZlur09q/hiFe2cqkj8d4Ios0Hc399stmWzCH56U=; b=M09z9+qA13Bd6T+N4GfXdt3Y9E
	Rrw9JFKjFSQVIgLpbNNU9L07T8MD2uLzZzkFfszSQnkMmWV5xj/zZvZhMoZPezR3SE40cqISy9bD0
	p1y3bnP04GojZzPPQycN5NYwJ/80fiAomZd7wQeKNhITjrJN0aD4gGcnZPKIIaQ9FIzzweRURAPZ6
	tQUtWCJRxYz0Yn4pv0pFz/MEnjH3a3obFb975yfXlLD4toQIggf/jyBPXlYc5+bc20o0//Tp5ewHi
	kI/YnLJOAH4xWX8VIqitRYO4gg5HWfqVX2uSeZEfXJsqdKUmXbnIwMjFrMo5Etu9Ejc4c4YKoG3Dq
	dCgWqw8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n01o2-00AZja-UN; Wed, 22 Dec 2021 13:37:22 +0000
Received: from mail-am6eur05on2074.outbound.protection.outlook.com
 ([40.107.22.74] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n01nz-00AZin-Rs
 for linux-rockchip@lists.infradead.org; Wed, 22 Dec 2021 13:37:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k0GkCw6d3A7QQZTYoYwlM8PiLk0lEPHXXbgnPV9ASTN7fJDQgM7ydS6Fu80kAXSTfIJEjnr3tjCGlVO+5tNA8YetHyPEjvYGucNk1Fj6GuH/ZboFZT9HOlKkD8h/qP/ervWyDlG/5ycR20v0m29g31qIDRd+qqS/kGMgf7GdtOVfWxEI4TyLBHHMPKdHmuPPq0mqc8/VI6ApTV6VrU2kZaX1cATtm2jHmN1hz6FU0kbMv4XfYQkXYkklOAEO27TvBKsbIxbEF69kflf5l7UFO8QG8wcVudEJP+KKGUphoR7cY1LR8mExNUEFo2HoETP1OjwXmvCk/XginwfBFuBVVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2WCSI9q/s5OZ9b+rt92suWuUucMI8dax4ASou7gtTnw=;
 b=DfyuKQ2DK+Tj9IoSw6pRNBsNCkSA8ckzWM8ZislNm4cEEBrWPXDiFbwPaMd9MOiLjYUfvm+bexlR3+bI+9dpVzaGryq51jtmeBRPF5dH+beG1C/LonHP4yOUQ4EtRvE2u4ElDKVxo2nrOT458a0iWVRV+ZAsoyoIAP8K9BbaV2/OyYH8YljRaR3DpekRhdEppQKG/8zZgqUIGw4aDnldo01BYcFfp8Cf0uG3+my1uHhsN6UITY6Fek3L4DAp6lFZT+Fih2YmEquYqf7D6bwzerRXgJi++wA2Q3gwpv/Uhd49wHZ1+9e3gMjK4aJmjhEOyjpsFX5rNJTI3hyurfzwPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2WCSI9q/s5OZ9b+rt92suWuUucMI8dax4ASou7gtTnw=;
 b=SXCeSXW86xbxD7pFhmZ3N3VAddcXo5bdUVSNgInpD9niQpQITPYcM1ZTovbg2fWMf9ijJUlrgnO88fmY6EHd+knx5vTbWGRzGA3eXSBQo9So90pY/eeyCdmaSfnEOxnEgCRAsVD6PLiOa+ZkWe9vKG7lfazkQWwTsfMVl5slQsU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBBPR08MB5223.eurprd08.prod.outlook.com (2603:10a6:10:f6::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4823.18; Wed, 22 Dec
 2021 13:37:15 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::81d1:d448:4016:1956]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::81d1:d448:4016:1956%4]) with mapi id 15.20.4801.023; Wed, 22 Dec 2021
 13:37:15 +0000
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
To: linux-rockchip@lists.infradead.org
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de> <YcB85mzJHrirUEDA@sirena.org.uk>
 <20211222104036.GY6003@pengutronix.de>
 <baa1603a-a6e2-4a32-a5fb-dc1eff01189c@arm.com>
 <YcMhazsAfU26fCa3@sirena.org.uk>
 <04982df2-29a0-86d5-d4a8-05826916d9a0@arm.com>
 <YcMnNXu9Iun71uCG@sirena.org.uk>
 <73caef1d-7e55-57f5-5912-b056fff73a06@wolfvision.net>
From: Michael Riesch <michael.riesch@wolfvision.net>
Message-ID: <022e5196-bef7-cf7e-6d6e-f874f805f29e@wolfvision.net>
Date: Wed, 22 Dec 2021 14:37:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <73caef1d-7e55-57f5-5912-b056fff73a06@wolfvision.net>
Content-Language: en-US
X-ClientProxiedBy: ZR0P278CA0172.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::6) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c05f73ee-2b84-436d-cef3-08d9c5502a4c
X-MS-TrafficTypeDiagnostic: DBBPR08MB5223:EE_
X-Microsoft-Antispam-PRVS: <DBBPR08MB52232F40D709D016C97EFEF7F27D9@DBBPR08MB5223.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ITYU6iwmHMHtbCcbdNKLq9fyBeIG5arxBihay4Fixxik4dTPqXOjgUTqkakzCncMuIyBduYBN6Hem/kTcIKMwUf/dCuui08tzENNdwsFZthcgxzx2FARlTM3z1MmCuINE3Q1YaA90vIa8CNjnvGEntiROj8bX1tkz9m6a/lZsDtLNaoZJRJR53bdcXNAgxqNzMe5LRZy/Lb75z7luzuMD7HNrAan0e8PT/zi0RrZm0e4T7u0+TdjdaWuhgtakT5LktpK3hrgkbqFiY/AHCPhO5fxJfUHPWoKErzh+Ouc2ggAhUNVZDRLzQgCBItM4sGENM4WAWTBWutZH9NrEfHybDNFcESenu4iog85kC2CHhU91vO7EzPB7GgzSa069NpMhdy0DW45XzYoneZ2G98PTHHsIdf/XhoTZ0+kfDI1CFqaXiXlPCkgYpljGNEDHpKJ8Wlf2CmA/2ggO8V7JzASCbLnPoq2cDno1osSbZq15ny9I/QIzovfL1WgBK7k1yIm7AjmPveX6COKoS4p634Ysa3jZbaMZoyqhjdpGSyeRVBCj23HYGpZjv6oOXl3vOQx9GaCXCddKFkBQ9zUb4fXhfiesFJuq+eH3xqWxpcSjJ6oQzXGheiCP/dFrYAumfEZD2+BDta1pVHUSCz3MVvBbOe3suOzNRhBFOyzLi7f4dKMe3tMM1PSviwCwpAZusZHze8hN6Rupw5YGoowe3lxLt/EqxllE5DVLx+O2R9nK28vaBVwZcdPHOz3srxDlf7tL4WL2+ufLu1gYlVzCisAbGnwHRZzaN6kEYGpKeMLgWGN2VbPQh6FtVA+vuGRXRLO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39850400004)(376002)(346002)(396003)(366004)(136003)(6486002)(6916009)(31696002)(52116002)(316002)(186003)(966005)(6506007)(53546011)(508600001)(8936002)(8676002)(2906002)(86362001)(38100700002)(4001150100001)(6512007)(66476007)(36756003)(2616005)(31686004)(66946007)(66556008)(5660300002)(44832011)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STBtdFVPQmk1bnBhTk5KZ29rQm13VEUxK1JuTm9oZnM2OSs3cTR0UzFYMys5?=
 =?utf-8?B?S0RiT0lSSDVjYXFLQXJHUlB5ZVAvZHpreXAyQm8rNmllNTVBQkRCVVlJYzd0?=
 =?utf-8?B?OEFDSy95aFh5cXIwaXJnaElkb2ZBM0JkN0R4NVFqRkhCNEVOU3M1K3E3bWtM?=
 =?utf-8?B?WVcwOXpKMGZicC8yWDFBaWswR1h4SXdCSmJoSzhSUjhzRkZMdjJxUGcrWnU3?=
 =?utf-8?B?MzBRVmczOUtSTHkyRDNManQ3cytQUVptQ3hVYlBHQUxkTXhPaDZqQXRFS2Uv?=
 =?utf-8?B?QXNMekxDSFZ4b2pSRG1pRGtGU1RTcW9EbVQ3Z0VJOUZxT2FuRFZJWnpDcExx?=
 =?utf-8?B?eDBOTjdWME9zckwrMUlScU9WWExKeVgwenQzMDRYZjVrRVFBUjA3TkxlTDAx?=
 =?utf-8?B?SUliM2RWVkxJMVZQYWl5a0IxZlVISDcvWWYxamd0NmR4akhMM2xnUithVnh6?=
 =?utf-8?B?R0lWSXFmQiswZEVRZDg3SHYzVWNrTWx1RGR2Njdmdi9EbGNiR0tITFdRbHFu?=
 =?utf-8?B?OCsyYWMwYWhnL1N6aE90QWVBY01FdWpucUVNOWRSQjBXUWpNUTJaOXZFdlUr?=
 =?utf-8?B?S2JDZjRhS05hSG1HVDNuZHRsOC9oUFc4QUZtRkRxN3V1STFteENtd2dlVVNa?=
 =?utf-8?B?bFBINGFkWEN3UDAwRDZabFpRUXFtRGp4akdUak9kbmpPMnBGVXdkTU9WRTds?=
 =?utf-8?B?OExwVU1rTHpuRTRxKzBFUk1GdmxyVW83TEUwV1J2ZjdqOGg4VTUzdkxwSTli?=
 =?utf-8?B?UVloRFNSdGdQUWlEQVd6V2hRTzdYYmZxdnc2NEtrSEYzU1dxSTEyRFhXYlUw?=
 =?utf-8?B?K2w4c1dYT01QNlFSOUJacXpZOVRmNUlsQVhUVzN2ZFBTM1ZoTGFZY1dsV1dC?=
 =?utf-8?B?WVRBdTBQRUVRM0ZteWFraW1aVW1VNWJJVWhuV3dPaUtRQjJDRHVubEtNdzZi?=
 =?utf-8?B?NDZMR0N6MXdWdmFMYjV1RTBhTG9DTU8vUHI4ZnlpU1pzUlVIalFPcS9WZ3dC?=
 =?utf-8?B?b29SaFRVL2JBYkNxQ2ZTWDBIU2VNMWhHVzlGK29uTFFrS3JWRTRyajZydXNq?=
 =?utf-8?B?UlpnTjNkWEYwbDI3L3dqWmxsRWdQcU9id3ptNkI2TTYzV1YvR0hPcEpYTENl?=
 =?utf-8?B?WFhaQldaZm5JeHlUYzRBZHlFeWV1WlhXUERQbm5XVXdCNDcxNkZabGt5cjhl?=
 =?utf-8?B?YlV3cnltZkRRc2RITnMzK3QxSmdla3RqdU1NQ29xUjhxTlVLZVMxQndEaG1Z?=
 =?utf-8?B?alE5eVMxcTlhZW90THFsYklrL082QUFYS2IyRVcrNkloRGZhN1luWXp4QWZy?=
 =?utf-8?B?bzY0cGx1NER1QkM2NWdTTEhlTE8vRHBrY0toVEFqVDlGaFZ5ZXlObmpPSWY3?=
 =?utf-8?B?NnAzL3BJRmNOb3poVThwMHZmVVBvaGZ6UW9Lc05xRGExWS8xWkFzcE5qMHBM?=
 =?utf-8?B?NHBHZGhHa2RRZ2tpYmZ3c3NERTF2VmNvL2JrTkl0dytaY09VWnpNVUc2c1JY?=
 =?utf-8?B?OE9pQ01TVGhrWjdpNFdnMm83MFJJTXlPR1VIVzJMc3BkSmJVV29zWFgwSEds?=
 =?utf-8?B?VklldjRkdCs1VHNRZmQ1bGxlWk40bWR1OU5RMklrV2t2dTBwenF6OHBKN3Nl?=
 =?utf-8?B?VENoY01FTEFtZ2h0VGplTnp0K2VvbXBVYjJBajM1V0w5QWJVQTFrbFk4UVRL?=
 =?utf-8?B?YWM3OHZ4RDZ6S01tZnRVTWZxbWNqSkpnK0lUTzl6c0RocVdJbzduZk5HWmxH?=
 =?utf-8?B?WTExQ2FvK0pXUUFtcHJBbFNPL2dlOUpmOWE2dG94eWU5cVREWDVkYVc4dVZK?=
 =?utf-8?B?T2RWUHBmYmFEQ2hrYWJ0VlBEV0huWkVuVWJSQW80ZWxybHR6amdnazdSMHRM?=
 =?utf-8?B?Q0ZOVkFKSnk3b1B5Z29DVXlhNzYwVTVjeFVjbnIwUlYzblZzeWZmWWt4U3l1?=
 =?utf-8?B?Uk9YSUwwb29MQVVnQTVLdElWNGNZVFRKUzVkNTBPZ3owRmp2UGV1SEZZT2ho?=
 =?utf-8?B?TTRXaURHeDVyaXpLdkE3SFg3cSt0U3BORjJ1TGNTQ3djR2RqelFmcHRTb3F4?=
 =?utf-8?B?SkowRGVac3JiYjhQeHB2Y2tDM2pEWC9BWTVsVXlvb0ZrVUx5dGpLMWYzSnZZ?=
 =?utf-8?B?OG12VkxMTmRYNXFCeFhPM0RVMXI2WVBoYmNkazhCSjYzRVFZV2NhbHFlM0xU?=
 =?utf-8?B?SVdJNlo3RWlZa2tEaXhTQ0JnMFZmZmtjY0Q5MXRnZThBVUFoSHFwNU45TVRv?=
 =?utf-8?B?cE1HQXZOTFhkU3VVNStuK0tXRzN1MUpjU0t1UnV2Qk5HZ1c5VFBtQkRIdzYw?=
 =?utf-8?B?d1kwaWE0ZDM3aWVWVmxQV0NXN0hXaXJuOUdVTlhRU2pLY2hRdEZDUT09?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c05f73ee-2b84-436d-cef3-08d9c5502a4c
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Dec 2021 13:37:14.8557 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nWYoMmOo/P046EPuCtUWbJlK+ZEScT73JsYfk8EDP28eEAzxbwG1wiX2VI/IT41q3LcRJFAnif8DwU8eNzMeKnnq5/8C6Nq6GBpHrUa5+rs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB5223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_053719_943248_CFE2A77B 
X-CRM114-Status: GOOD (  17.76  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 12/22/21 2:29 PM, Michael Riesch wrote:
> Hi Robin and Mark,
> 
> On 12/22/21 2:25 PM, Mark Brown wrote:
>> On Wed, Dec 22, 2021 at 01:19:23PM +0000, Robin Murphy wrote:
>>> On 2021-12-22 13:00, Mark Brown wrote:
>>
>>>> Does the SoC actually support the supply being completely off in
>>>> operation?  A lot of devices want everything powered even if idle during
>>>> full operation since keeping voltage differentials smaller makes it a
>>>> lot easier to design to avoid leakage current type issues at the points
>>>> where the different power domains connect.
>>
>>> I don't know TBH - the available documentation doesn't seem to go into quite
>>> that much detail.
>>
>> In that case I would tend to assume that unless otherwise stated it's
>> safer to keep the supply enabled when everything else is enabled.  It's
>> the default thing and so is more likely to be what was designed for and
>> less likely to result in nasty surprises.
> 
> Based on my experience with the RK3568 EVB1 the vdd_gpu supply turns

[edit] turns off, of course

Best regards,
Michael

> after startup if it is unused and the SoC works fine. Let's take the
> energy efficient route here :-)
> 
> Best regards,
> Michael
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
