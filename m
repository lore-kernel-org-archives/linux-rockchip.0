Return-Path: <SRS0=cphG=MV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MSGID_FROM_MTA_HEADER,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB3BEC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 09:08:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 886576023F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 09:08:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 886576023F
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FLCxMqeMPOt1BntGtgOQYesukfopL30hUs+tWqkBlkQ=; b=iHYQcGPjyekINs2/74TSn3xBuh
	8P1DuPhnS21PN2Po8Qg7Qy6zaWEwvW0eLLY2+emY5ETfUw3qxXgRe2jHSf1enlFrCmEU4dTtmPKk2
	bfDI1MEzOJg00CLrLxiKzscAUS8kpYsniHvEEBY9RwVlC/ftgmnHvkyHiZQf3BxVAf7CnzUS0rbS/
	kGHKthaYAlz+8H7qjD29SJS5kAQ3TaEmM5nBAW6zFTzczgB8uwwO9Ork8wS39WUF1geRlGD6Ne+s2
	nq3sLB+n1LobEBV5PBWYcRLQB195yTekbGEPf5i9SOJfyi70eghWUdWP3U112KhFRzvFrFsNwLRgS
	q4/9K6zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m921N-003c7S-Aw; Thu, 29 Jul 2021 09:08:05 +0000
Received: from mail-he1eur02on0608.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::608]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m921K-003c5r-CN; Thu, 29 Jul 2021 09:08:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KGi8X0ByfzdBm9EReBYgtjtX2QKPuLU5swT7EURZ7UA3wXhsRY6VWNjTskNklNDzdsdT8SAq8c39aTzKhEYe8fhbo/dNH2hZvGJrWNbeR+FbGT8yV9LKh6f1k/xrwv7Rz5ffLdTR3wacFnCn+4OPaRIyA9PmFttuNgHWcFLn2TWY9OZvMT0CAa9DgCFPIzUkQFJOhVELlcfncgqGIbvrDrnYYA/rF4IeIQmi97gs05nEdvZjp4zJ4gdl110cpOIRoWF6EcW16YQ2FXJKO71OmCG6mguuS/6skcaCJSurvxzEPX5sqMBl5SguxNz/Dq6Tc1MofArAwi77q8IAhXwcEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g+dlEyhVkpW9k3iK/hAVEwk/c/8LG3g62mGiG7XnXVs=;
 b=AOh3LzA2dPu03Tw5Y7wb3+MJziPCfOe9+9PuynQdgK48Cn7H+tLMVsx65uX6mPTspcGhvitLPS/hZFLTsA2EBGIsNnvztR3fOJyorAoN17LrXoF6IcJyE6k+XtSkUNlIsHVR/efSj1MJUHfhHBh8uJwLdjJ3B8RTpBALZq/sRpQo/QWwYqZRwmkQklh5poGFePiNJa6fSwoCFkbEgklScU64ik0omurU6zly4A9fZdyJIvx+Wzop3v4QWIjeB2XHB5NKDnI60x2pCjshpq/6ydndzbJtPa/Q5GyiMeh25+C4MCA4eJl8IkT+rrBWB1BUNyM6wFdLsQnCNOn4Y8KS9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=g+dlEyhVkpW9k3iK/hAVEwk/c/8LG3g62mGiG7XnXVs=;
 b=oJwClmMVSMbDLl6Ac6Ax7PdFaFjX3gjc6acrPCTCMSm3Q54DNRlTdZx+088diblM8ttZCAXHl9fGHCDaWsYybIxEfLI2H0a/IRDAEpfp5vHtXKXOyO1WJzuynZeydmsNNvr3WJO7+qayjfhEuSPeBppjF652YFC+GEt9+v/4Z/M=
Authentication-Results: rock-chips.com; dkim=none (message not signed)
 header.d=none;rock-chips.com; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DBAPR08MB5670.eurprd08.prod.outlook.com (2603:10a6:10:1a6::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Thu, 29 Jul
 2021 09:07:52 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4373.019; Thu, 29 Jul 2021
 09:07:52 +0000
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3568-evb1-v10: add ethernet
 support
To: Andrew Lunn <andrew@lunn.ch>, Peter Geis <pgwipeout@gmail.com>
Cc: devicetree@vger.kernel.org,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
References: <20210728161020.3905-1-michael.riesch@wolfvision.net>
 <20210728161020.3905-3-michael.riesch@wolfvision.net>
 <YQGaAFvqqc7wXrWD@lunn.ch>
 <CAMdYzYo8zf0wjtAxTuYQnZQsBtw38prNuAA0j0sBEamcbzZbfA@mail.gmail.com>
 <YQHAHmMmysBVpF+m@lunn.ch>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
Message-ID: <a01e7faf-4cfc-dc04-44ea-2b1e0724778b@wolfvision.net>
Date: Thu, 29 Jul 2021 11:07:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <YQHAHmMmysBVpF+m@lunn.ch>
Content-Language: en-US
X-ClientProxiedBy: AM6PR08CA0026.eurprd08.prod.outlook.com
 (2603:10a6:20b:c0::14) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.100.125] (91.118.163.37) by
 AM6PR08CA0026.eurprd08.prod.outlook.com (2603:10a6:20b:c0::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.18 via Frontend Transport; Thu, 29 Jul 2021 09:07:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e72ca8c5-32a5-40bc-c39b-08d95270582f
X-MS-TrafficTypeDiagnostic: DBAPR08MB5670:
X-Microsoft-Antispam-PRVS: <DBAPR08MB56702BF1C25651C100E33046F2EB9@DBAPR08MB5670.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Nby37xrPybM9HZYbqXoGKiXdtRFujjh0MUGS1kZQ0bU1uNgXcl5vnMj+HjUO2FE9TfIoM8Pis98taJmbUTXoKnYraEW6Um2VAbgdObEMHkcGxQFU7kw4t+n90sBTPs2CPNiql6imLk494u67rUTKau0hrvY2pIkj8ZpsSjRt8sDTHiRFdV8/TKUCWI8SggZU8VelRE9YZ49o4hVvx+vwUyPuUpRXBvzJTXLZd0SzhxGQXQoYdR2pll/lxKnD5QuKKrVljOdL1Y60L/8EAEk89I3BD56E+4CBKhcoEJmLv0vywAI8uFK1cwTeOdF2/GvVq5EUHOrmUgo1Wq6MPcaKqWnhh6RVN7Kyqc/UNTd3mtLphYlcVHEp+lPITrLI7e0TJ8JhGqMIWAUD9NCUA24R7ee9lsWCv2MKImJOlKAsWj1mRNZRjW5vfV2A/kBNwld3qQMifwQehbq4ULIKsvYe3uSgvm1ryARLAxhrVrJNCj9UwvQ7WdMke3ACsDndDJtTYrE+J85H0TmarYQS1aZSPLWAldfQ0tOb+im9ZIweviVHvjwSg1Pu+MJYcif37TIoJx/Xu688M/a38jJyT3V219r7xbJ/984RTDjV3zQ8UlcmlDb6KQXfzV/ifpj++XEFFRWCwwokxBx3HFY0HzPJpgH9r/RpjBJ2XLyMEBGJgojMMX34b/k7iwR+MQiRg6vPBxAvnGw2YrMWx3MqKAQYE02BCBFgiraPrXpeMpdMNjfl45WzsDsy/cbybgTqIniptzxYG3IAlELkS5zGGutUJg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39840400004)(396003)(346002)(376002)(366004)(8676002)(2906002)(7416002)(66556008)(66476007)(8936002)(53546011)(2616005)(6486002)(956004)(36916002)(31686004)(52116002)(66946007)(86362001)(44832011)(36756003)(478600001)(110136005)(4744005)(38350700002)(38100700002)(4326008)(5660300002)(26005)(54906003)(186003)(31696002)(316002)(16576012)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHV0MmVualRHZUVwVTlTdmtlVEpUMWw1RlNLM0ZTYkttaWJrRStGTlppVitU?=
 =?utf-8?B?VlVyYWdDU1kyY0xYeWh2cWg0cmVmaXZWdUc5eTQrRUR6Q3pPUXVnVndRS1RS?=
 =?utf-8?B?N2ZlSGZXdEczbjlJTHRkWERMQkJTY3hvRVAzK1M5V0orWGhCemltSkFicEJo?=
 =?utf-8?B?WEwxazV2R294c3h6N2dDNUZCaXZiM3lRRFZPMU95SFRIWjlETThXL0VvUUxR?=
 =?utf-8?B?L3VTMmIyM1VOK2NtQ0gySTMvTzBkRy9jQmhYSlBlNjBCOTEyTlFmMlVWeHNk?=
 =?utf-8?B?b29tVVhYZlB5YlRvQjltMkRrYzlBRmgrUWRUQVFYUFZvcEMxNnZ3VWN5SG9o?=
 =?utf-8?B?Z2ZreTNINmNveGNXWXhXVTNQVUhaWFArQURUemgwNTZPUVN3blowOHlCQzZC?=
 =?utf-8?B?MjUwV21oenZzcFcxNTJMZE1BajNTVEl5SnVJWFppVWFBa2VuR3JuTnNKZTZq?=
 =?utf-8?B?SEpDM0tRNWY2ajdxU24zQ1VzUGxrV1phdXBmaU13USs0RGY0eE9ZdkFvZlFl?=
 =?utf-8?B?aTJwdmFRZmRxVC9mUk1lTllrN0RIdm1wSHJhYzNIczcvQW5RcCtwMVVJQXZ2?=
 =?utf-8?B?RFNrVGJxYWpBQ2RoREVHSlp3QUcxYW5mUDNyU2t3bnEzVVhyY2J3RzY5SG41?=
 =?utf-8?B?cVloay9vZ3V0cEdpeTgrVkprUDNCYm5SWklXdXZ0TmtQcjU1MjR5eXd0a1JN?=
 =?utf-8?B?cDhzU2xCMkt1MTAxQmtYNnAzQWhJWHlxcFBYMndpbEFPZFMxYU9UWERQaDZW?=
 =?utf-8?B?TlVPZDlyTVhaTFdGdVVUdzBMVkxkTWxxR01QTzRhcVBxZzBXWUtiYmJmSWZF?=
 =?utf-8?B?VFgyTG8zZ05JRkIzMHNEdG9TVE1qZFRBWnQzTnhTYzludk40dUhlMXp5WXQ0?=
 =?utf-8?B?cXRBY2ZJSklveDIzbHNFeEo1cFU1SUlUR25RbEdYaDVmckxHWDRDQ09lVzAz?=
 =?utf-8?B?Uks3d003RnNUSkRUQTNoR2o5aGwxMkJNSXVYWEtDSC8xbG9udCtTOW95Skh3?=
 =?utf-8?B?N0ZNZTBLRENWRkdnclI5a28zdmowVCtmZ0w4ZkFjemNTU0lCTkUzR3lLSVk3?=
 =?utf-8?B?d29oV0I5YW1ESEpuTkpERE9vUHFvTXdjMTZIYitpSDBwS3AxaEtSaWpzelVE?=
 =?utf-8?B?dWtVb1dTOUN5TzU2K3NaOHh1ekMzc3hBalhnRXlwdlRzUzFvT1RDdFg5UHpO?=
 =?utf-8?B?c2QvU2t5Nyt6bVF4cW0vYlFtL2pRSjV2MnUrMCtLTHhRcitzUk4yTWZOa3Rw?=
 =?utf-8?B?MFM4YVRNTGcrVitTYkdvZUxmeVZjSmc1MGE1Z1ZYcU91VHl1cW16eG5HTjRP?=
 =?utf-8?B?cGp0cHo4NDhoWTFmTmxqMTVTblJuaVNuTDZsaTV2TzJNMTZ5bmRMQUZUbHhH?=
 =?utf-8?B?VlhvTlhIOVFjQys4czRPOTRodHVLVmtFZUYrMVQ0Y3YrTloyeG45WEFDdnUr?=
 =?utf-8?B?aFc2STQ3dGVyakxLVEcwQm52LzRIczN1eFpGR25VcFVtVFQ0VDdUNWNWSFJP?=
 =?utf-8?B?am9DR3FuVmxCVVpDSU14ek9tQThaQ3BBd3gva1M4dXlmdGttVzZVaXFXWUNk?=
 =?utf-8?B?OVVWRk9aZC94QkUwaXNzSDlMS3pqeVJ6a1h3RTlHWFhBKzhiQ0JVcEROZVMr?=
 =?utf-8?B?R3dPTWdrRTB0MnNqUHBWTzVMem0vaEgzdGJTOFRsdC9USjlBN2E0V2ludlN3?=
 =?utf-8?B?THB6WGVEN2xYcG1ScnRhTkY1VkU3NnJod3NIMGtHd3d1Y3IwdnhLalVySnRz?=
 =?utf-8?Q?x9v99CRGVwFUB9IXvEu9R0ElVmfwzzptXoyHGfn?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e72ca8c5-32a5-40bc-c39b-08d95270582f
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 09:07:52.0614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eg2xglsIdnwEDt8f9VJ0UsvpZI9bnAcdl6U7yq1YY5pzt+lsCTrDiugcFSPJ9oiqfQIyItUZboUmHrXPIMKlyxkP8dPFlZE7ppvB/05cCz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR08MB5670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_020802_482057_4347DA95 
X-CRM114-Status: GOOD (  11.77  )
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

Hello Andrew, Peter,

On 7/28/21 10:37 PM, Andrew Lunn wrote:
>> Generally all rockchip boards use this value instead of the rgmii_id,
>> I imagine because it's more consistent to tune here than the hit or
>> miss support of the phy drivers.
> 
> Most PHY drivers actually implement it correctly, since by default,
> most systems get the PHY to do the delays.
> 
> But if most Rockchip boards do it this way, there is a lot to be said
> for consistence, so this is fine by me.

I have tested a dts without the delays and with phy-mode = "rgmii-id"
and it seems to work just fine.

Although consistency with other Rockchip boards is something one should
consider, I think I'll go along the "rgmii-id" path since this seems to
be a more general convention.

Thanks for your comments, I'll submit a v2.

Regards, Michael

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
