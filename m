Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ABEEC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Feb 2022 08:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sanDcQP/VCioBysUuqb2y8VTTCKuNZY/Ozh+qdoFj5A=; b=Y0Gq/6zJkKl5fllOZy78/PAhg5
	KuHgGNQyWGMhB/anBO2BQ1YkXMejSFsHOCja46QeRJOzCjqCeLcPe2blYOloyNe86OqWmnBjec/6V
	bS0x3kmpknlGakMgtD23E+poXWHSi4TXhjgJwGq6ORdIapDJ0BKd3oiYRVlDd+ED6D1U+paJe+LXX
	8EJTBV/nIvoQL3xXkTrp5TZJLRwzwmsovCjMUh8Rx143ELUzdXaCnE6l26hV1/Fz8TUkt3BZocrFd
	TTwfbsOy7nIrRhM1QyWgOJC7A8AnhUUYntRqgzi6+GVxTS3gYnR5Qgh2Sz9WUcfrzTwcyjLifEdq0
	nlsVKA7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMnNV-00DKYZ-3m; Wed, 23 Feb 2022 08:52:05 +0000
Received: from mail-vi1eur04on062b.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::62b]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMnNN-00DKWP-L3; Wed, 23 Feb 2022 08:52:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K1ZC3yGiAAOeIVMQzFnExitsi+SKRh/vjzAj9ns8X7+BiyAinGE1Ad1Wg2Ier0ydOUP1tZlhgPd+H9FTrcLXy66MLthoF3L3HAi7+iuZGf6hbsgdKCZJ/3j8gmUXEWoGxLV59PRPJHwxqIAHSg+HKEHhX/7gmvSTlSDc2ZSFPpVH88XR+4zA7WiWqOZWv6W7SrAK07WmBOpXpMiTEMR9TL4fP8H3vw4wRGoyLeORwyfwsRM+xlQc81l2RFU7Ipmyq4oU30Gl9mbSbbXXflH+HTzrIq90Gkeeuv/tPAZieslekHtFmNORo2xNcFtKyP9i5mzeYksI5ilU95II6D5bwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dlUnIFAQlTnIt3sjEaxzPhDtCA3/AUoQLVFTAUPDQpg=;
 b=bg4IWbF4XOeu5V1EggquqiIJywtGf9x/6Rp35UACD7/Md2+dBHHtBqR99s7sl79tXWLjdxN9MQcSvpWsRarEDkVbtqI665aHIskQN5fo76gV78IgHFt7OGxocPqfbl04+MS/Qe+K59AcV/KqU+y7QXzL/JU8pYhl4DrhTiR4yz5JbEcJTbPh0gd+B1qiemisMhjMWoGZU7NIjnIaCGSu8kGkcL3YaTCwtq36iqboez7kbFPhojfLS96x0UXaUyJ39hRGECYUvdRNWAByp3oQuDjf/MjU5ecGZ92WruWmxZcFKdQToirYA2vxUgF4uoTPFBFGWNc/0GI6ftRnbsDUYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dlUnIFAQlTnIt3sjEaxzPhDtCA3/AUoQLVFTAUPDQpg=;
 b=xPqTQDNDjIcmUf8PTMvf07aXguvRFxmOpLdHCgHmlq7fuCNqhJZNGNB3J1+8/YrfcknMt/dlmWpf7cibujYOs+wvTV3tcDPLL8HXRRJb3ZB6IEMIP2iWAOBW7edvnXa0zLYHi7tcIGKOM/iaRYjOLrd1Pw7J17mphgsLcL84534=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com (2603:10a6:3:e1::23)
 by VI1PR08MB3999.eurprd08.prod.outlook.com (2603:10a6:803:ea::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Wed, 23 Feb
 2022 08:51:52 +0000
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::f9ee:a333:b115:5049]) by HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::f9ee:a333:b115:5049%4]) with mapi id 15.20.4995.027; Wed, 23 Feb 2022
 08:51:52 +0000
Message-ID: <a6145f16-c75d-2045-0a1f-9cf5fcb48464@wolfvision.net>
Date: Wed, 23 Feb 2022 09:51:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 kernel@pengutronix.de
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de> <YcB85mzJHrirUEDA@sirena.org.uk>
 <20211222104036.GY6003@pengutronix.de>
 <baa1603a-a6e2-4a32-a5fb-dc1eff01189c@arm.com>
 <YcMhazsAfU26fCa3@sirena.org.uk>
 <04982df2-29a0-86d5-d4a8-05826916d9a0@arm.com>
 <YcMnNXu9Iun71uCG@sirena.org.uk>
 <73caef1d-7e55-57f5-5912-b056fff73a06@wolfvision.net>
 <YcMq4vF7yKn7iu5U@sirena.org.uk>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <YcMq4vF7yKn7iu5U@sirena.org.uk>
X-ClientProxiedBy: ZRAP278CA0017.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::27) To HE1PR0802MB2426.eurprd08.prod.outlook.com
 (2603:10a6:3:e1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: be99dd73-e3eb-412c-917d-08d9f6a9bc70
X-MS-TrafficTypeDiagnostic: VI1PR08MB3999:EE_
X-Microsoft-Antispam-PRVS: <VI1PR08MB39996AA3A1999C29BB38300BF23C9@VI1PR08MB3999.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RWWkzP3Nw7U0UM/1E4tTuytWKUDw9APIlS4fu5TaEA4jriNQIbAzXIVhtA+bRXro9JEXssGVs0eM3JSYV4inBDYvuf+ywyLXGFJHvaC5sEuktnWzbuLkL4wGINIkyoVbb8oRGHkynMcbEpOf0k1j8VrYoW9cxgWm8OnJOcXiqn0elvsp5ESbGSvL28tQxwuWp30L+45ovki3IvqorepBTn5H4owuQ0vvIZSDnAbKPkx8BXyqVNbFV6kdCkIEnYoyJOwFPY/e8nMgAf0V9LBRJJzERTLG6Cs6YQMZyyC+YsGx9e6r/3HzHI15QnNPxYhZjfEfe4BlCRkyzDmAkjvTsGbeDTgsMtjkdg7rtVPny+TFpOOqF43QdgbOtyaNyVmZU15QdZ9EMyMs4nWpKB0zZT8TXji0U35O62e4/DLQt4hpEghnkbFyigHKwSAS3lMcQELTM7exmuoIEwDpOFbg1PxPsyj4yhlbn0x+s8gQnE7AyFgeKxk3EdIH7UbBTcZPJC3Bhw1A1Ff37ScY/n4lHXjp3WTtmPlW6k0+mALgEozKuMqQ1sitVlmOFJbW+tk1QtZH6j7aExf36yOWha+OWPdZ2rNlQCUbIz0qFrBnN9PeJ+sILtOhRSdcKnuLB9ZJP8PMv+U+f2lWAKf6gZ8gf5eoI0rz5p02Luxn5F0BPHuwmCzQVgrxPlexQXaqXznlslyqLl9wlRHIVgTmX7m+1RZ53LSxw28tsbMoSh2EA3tlGHhiQkvdht1g9d/yvw9g
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0802MB2426.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(396003)(346002)(39840400004)(136003)(366004)(376002)(2616005)(6506007)(5660300002)(2906002)(31686004)(6916009)(54906003)(36756003)(316002)(6512007)(44832011)(508600001)(4326008)(8936002)(186003)(38100700002)(6486002)(8676002)(66946007)(53546011)(86362001)(66556008)(31696002)(66476007)(52116002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnI1a2kwU1VhK0JRTDVLWlN5KzEybHhSbUhJUWVnMnFTZFJCWkg3VmlCTlFw?=
 =?utf-8?B?SWNDWktPZGVVZm5pa2c4QlpzcUVTdmdqSGFYV0V6cEhrVHhyZXlYNUYxd2s5?=
 =?utf-8?B?aHNGOGhsM2hwUHAvTTY1aVFnK256WDUvQnM1TDhJbDk0cmY4c1lFdFQwUFlS?=
 =?utf-8?B?NTNlMVVEU09uNlVjbGNEdjdiUmVkQjludWZDWGhINUQrOHEvczF3S0U1Ymc0?=
 =?utf-8?B?YmNPM2xBVlBIendiZEVROXRja1FTLzVrM3RLcXhRUmVsNGNpWSs4alA0Zm4r?=
 =?utf-8?B?Qngyd3hLN0luRjhob2ZtQUVGTDVuOG45Y0NhZHRadi9YbS84M1RlcWpqWk1M?=
 =?utf-8?B?V2ptdVlSZmJWSEF0cVRJemFVWE5xa2FjZ3hZQzZPNEw1T3U0M1dPbG0zeGdC?=
 =?utf-8?B?KzM2ejdXNEFNbE01Vjd0VWdod2REWjNLUVdwM0pnUGI0NzF1cGFkMXh5b1dD?=
 =?utf-8?B?RDErNFdKSkxXczhjWDNqWDk2SjlZSzJRZmpWUXp4aDlzRHJybFJ0TVA1eUc2?=
 =?utf-8?B?Qkppa3lHYnZpREVrTzh1NEIvSmhkcjVCYkM4ZTM1a0NMeFJ0N2d1TTBsc1o2?=
 =?utf-8?B?YmU1VnpvTWJPK2dmeXRQTGJpenBDcG9kUm91cGN2enN2YWJCRzJZdHE1YmZs?=
 =?utf-8?B?THdlcEZHYW5kYUMyQ1hRSmNHUDhtNXJzbFZQdzl2UEJuNWYyNmRUWC9aUlZN?=
 =?utf-8?B?K3ArYUEyMGpudFFia1A3ME0wSkd2c1pGMTVuaDBkbTh0dXMza0Fna05mSm96?=
 =?utf-8?B?ZWRObjkvUTd5aUFkTXFzdVJNenpsYUZLbXY3dzVMcnZLa3BJT3N3c0dENk5w?=
 =?utf-8?B?cGtpdG9mYUdDbjA3blFhUU96VXg0OHIrL1ZXbUNka00vVFNKSHVBZEJRYy95?=
 =?utf-8?B?NDFKVWxUYmtyVzhPNUZqTS9iSlVranBjK3hGLzU5RjYyWmdkOWhGbUNkK2w0?=
 =?utf-8?B?SHViTC9WWllURmRGWFFwa2lORWkzN2FZTlNzSVdNVTQ1RHV6alBUdXdlMHpr?=
 =?utf-8?B?eHJtd2hCbnZsbHEyMHZIR1VTdlRIcnEyVnFORFMxOHBPcW5PbkZBNWRWUGxl?=
 =?utf-8?B?d1pYODVxY044czNHbFB6dGhkb2dvVGw4U0dmVC91MkJDNTMxaGdVcTY1UDZF?=
 =?utf-8?B?NHpkeW5KcTUxSk4vVnlxQkk0K1l2a252Q3ZYbC8yanA5NFlkYmdnV3FZM1pp?=
 =?utf-8?B?OFRURmNzckdXUEp4MmdxWmUzdXJHOVJBRU5PKzZzdlJCYU9OaVgvNklpbnNN?=
 =?utf-8?B?WUhraDk0dk0zbEJXVTg5dThlS3pyOFg4bnJ5ODdSUDlOaXRBVkZMeTdqMHpo?=
 =?utf-8?B?S25GK1h4bTRrRW0rWDJQdC9rbS8rWlpHemJqNi9hV1BxOXJiMm0ya2FkN2xw?=
 =?utf-8?B?RGY4c29iMzFDMU1LRnNIVGlYYUgrbG41TU9LR2dVS2ZGTWF0N0c5ZjlEUExj?=
 =?utf-8?B?Z0llbEhvN0x6TzVacXhoY1hCYkJGYjBRajAyNEVNdFJsSzlneXpob3RiMEhC?=
 =?utf-8?B?VXRRa2RPaGFCZHg0QUwyK1l0eW96UDY5VWd1bzZweHdEcG5DVG1MSUtqamJx?=
 =?utf-8?B?SjQvSStFZDB3OEhTVmZ5YUhFZXN6dEhGRlhuMEUyV01TUnJJUTZBbHFOWWdz?=
 =?utf-8?B?ODAwQ1NhUmgveEwyWmNocGs5SFppRGJzanNnNVB5VGc1NXRzbFlsVnJIVzNq?=
 =?utf-8?B?V3VOSkFnTDhUS0dXcHNPVDdpWUxacElhVGVYVDd1QWpPK1RjNGNCZnB3RXo4?=
 =?utf-8?B?bE1jTXJBeDRCVWx5TFNHU3VWa2lEWW56Tmo0SGsvNXJkTVdNOGZVQ0V3ZUhz?=
 =?utf-8?B?NC9nTkVwaGtNc2IvdW90NXlBQmdJblo1a3YzKzlPeHc3QzdwWjFxSEdzQW5p?=
 =?utf-8?B?a3kwNXNJTWh5QTRoejBhbmc3LzYzZ0lqdFljWm4rOFU5SDJOTzRVLzJDSmtJ?=
 =?utf-8?B?NXFLOXY3d0prd3RlYVp0d3MyVEFER3BrekJiaDNOTlh1ZlVSNUFwWnI5VnRL?=
 =?utf-8?B?RWxzWkNZUDJvYXRPU2FRN1JVd1JGdjhOd2FBTG12bmhQUGYvakNvazJ4UGN0?=
 =?utf-8?B?WDRGTEJ6MWMwNlBlU25oQndJZ2lIcVk5Q24zcEhSNmlmeVdWZzdiWGxmbDVt?=
 =?utf-8?B?U1huTzFtVjhOak4yYkpwakpEWVQyaUpDTndFNFlodDlTNVFHWDF3LzQwT1lY?=
 =?utf-8?B?RVI3T2ZWS2dYQXNiQVNvNHE1a3hjT2RmVzhYSHFYbWRmUE5acnF5cGxSZ3Jv?=
 =?utf-8?B?K05GckJjcXpDbTRzYmtiSzA4cm03ZUgrRE1qK0NkVFBNaDZmQ2gxLzc5N0lM?=
 =?utf-8?B?STZpanQyQjh3Q0lvTjZUVVR2Wkd4ZlF2eXI3clBKVGM2WmJpdVJBb0NIRHlm?=
 =?utf-8?Q?MQxY1xNxd4YhOz0c=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: be99dd73-e3eb-412c-917d-08d9f6a9bc70
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0802MB2426.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Feb 2022 08:51:52.2754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KPSIqsJq59OoyrvuNSq7+1G07wrGLVCFupyc+RuwjhFnaHIu2zYf7HtRSwbKMOF0RUUmUKL3Z6Db/aiXM8bkPbcI+bPFEXWVU7KDrZx9KYw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3999
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220223_005157_738597_62F8E0FA 
X-CRM114-Status: GOOD (  16.69  )
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

Hi Mark,

Sorry for the long pause!

On 12/22/21 14:40, Mark Brown wrote:
> On Wed, Dec 22, 2021 at 02:29:23PM +0100, Michael Riesch wrote:
>> On 12/22/21 2:25 PM, Mark Brown wrote:
> 
>>> In that case I would tend to assume that unless otherwise stated it's
>>> safer to keep the supply enabled when everything else is enabled.  It's
>>> the default thing and so is more likely to be what was designed for and
>>> less likely to result in nasty surprises.
> 
>> Based on my experience with the RK3568 EVB1 the vdd_gpu supply turns
>> after startup if it is unused and the SoC works fine. Let's take the
>> energy efficient route here :-)
> 
> One of the issues is that it may not actually be energy efficient if it
> ends up leaking current through the SoC from the other supplies (and
> long term that leakage probably won't do any good for hardware).  A very
> lightly loaded regulator can be the better option.

OK, I see. So in summary we don't know the behavior of the SoC and
should go for the safe route (set the GPU regulator to always on)? I'll
submit a patch for the RK3568 EVB1 -- the other boards enable this
regulator always as well.

Best regards,
Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
