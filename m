Return-Path: <SRS0=Y7pG=FI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E18C4361A
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 12:01:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC69B2251E
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Dec 2020 12:01:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EC69B2251E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:Message-ID:References:
	To:Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E3+baoZU66QkKBcLoExLiF1cV7jTSJwnjhe/erKYlhU=; b=Tgp/cSNnf/HyTsS0q1nwbQv9t
	/+yCJOpdmFVyORSYGMJ9d1bjucghaA4vAT8+UcXWdNJ+4QS/orlEY7KW5DkTYkMF4wKO1HGVG1j3l
	TpQ5TICcQkZ2nEknzFbdmnBLUmua3tRn4x3n11QiSnwWVFoBpv9zND+p7DOw1POmor59Hrnz/fOi8
	K6HVGOQ+WjD/7GzfnPdeLTzE+VIwexvOjC96r3so5vdvsMO8FHqNhF1SiN6P3AdFZI6Iy1exbQ9Io
	JA6C3QYVznnBfjBcbC7PmFsj8an6hq0LNwELnDIkOmZetEFNvE7TzLDKkaIvu5S6OGMb4oo4/7vXi
	ztiJoEqoQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kl9mQ-0003GH-G7; Fri, 04 Dec 2020 12:01:42 +0000
Received: from mail-eopbgr140044.outbound.protection.outlook.com
 ([40.107.14.44] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kl9mM-0003Ev-HC
 for linux-rockchip@lists.infradead.org; Fri, 04 Dec 2020 12:01:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D4daYTy7Fl9xqPf7+mEBxTz5AEb+QRMojGlRCNmwVKM=;
 b=VyF8TGxqLhMHpYSYYS82TGmufvNR4dIFroVQuARWjP9PoD0BfFJR2jPRIy77iPeqHdW8iGPDsQrt5Q2ietTJb1gOwkQ5monLmq9dlqkLH1mvgQobtxFJSSalhbmH2yvpwimpYIopaGTJLR38VpPX5KikKEnVTuJZWBK2SHQ0ezM=
Received: from AM6PR0202CA0059.eurprd02.prod.outlook.com
 (2603:10a6:20b:3a::36) by VI1PR0801MB1711.eurprd08.prod.outlook.com
 (2603:10a6:800:4e::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.21; Fri, 4 Dec
 2020 12:01:32 +0000
Received: from VE1EUR03FT019.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:3a:cafe::3d) by AM6PR0202CA0059.outlook.office365.com
 (2603:10a6:20b:3a::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17 via Frontend
 Transport; Fri, 4 Dec 2020 12:01:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=pass
 action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT019.mail.protection.outlook.com (10.152.18.153) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.17 via Frontend Transport; Fri, 4 Dec 2020 12:01:32 +0000
Received: ("Tessian outbound 665ba7fbdfd9:v71");
 Fri, 04 Dec 2020 12:01:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 191d8e1ff2e7974e
X-CR-MTA-TID: 64aa7808
Received: from d6e0987e917a.1
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 301BA7A7-7EFD-495E-9ED4-DF1C081C6DC5.1; 
 Fri, 04 Dec 2020 12:01:15 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d6e0987e917a.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Fri, 04 Dec 2020 12:01:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WP4Qohk7JVzfd3I7Tl4+YjjSZUAVYnJ7k9CFV/nyOTC43nkNhyGYCzJCydwys03k6jDBDGJOl+BvpMsL9FzlcKVPxXJg+OccM/HLz01UsL3slSfSKN9vd+38UYSosE7A+WpZn4CBZvpKu9Z+HmfcJ9wx7uMBOYiL64HFjkrHOxsTOnCnkndSlDaFt+oz14N6L4VTQqbS3JoRfRPM0d5cP74iL4A4Pb5I5gVwuRnXkzjyWzGNEb/JltYzadPRE9iHZ1+8xGAI5dJhHCrJr9UBPz1M5Yem7Pv/EjB01pk2n+EtM05jixKj6tT8WopQL5otY8pxhMPC6Dfo7NqarGja3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D4daYTy7Fl9xqPf7+mEBxTz5AEb+QRMojGlRCNmwVKM=;
 b=jdFsJu7rA3ANIYPfg/5UVMyswlkjYvJwixD1lwa0pYlzjWMITfGCvHHTVs93cC5GURgiqdZy4k3+bz3uQjTM49Y7AHxen7GO0bW3nrgu32TUihgIP3Gfqs2WKltZOEk9o2r0r3mGBGG9uXVPqKNi+1R2aH0hEJvx7AjBo5ja7B5vIxeKD4vB7t5W0T98PL4cMkYhSP2GUrEWYqWYgiVoA6dJSakmbTkWqNADqGXX1qPRcAFlyjMKzpjcHKDwXkzfGtbFlMPQB7VN7MswHz8a7JJOtwe+TXxTu8cltcgmpyjLbzRrqqfOk4x16ZccXuopwFWi2o4lgsAGOP+XdNnytg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D4daYTy7Fl9xqPf7+mEBxTz5AEb+QRMojGlRCNmwVKM=;
 b=VyF8TGxqLhMHpYSYYS82TGmufvNR4dIFroVQuARWjP9PoD0BfFJR2jPRIy77iPeqHdW8iGPDsQrt5Q2ietTJb1gOwkQ5monLmq9dlqkLH1mvgQobtxFJSSalhbmH2yvpwimpYIopaGTJLR38VpPX5KikKEnVTuJZWBK2SHQ0ezM=
Authentication-Results-Original: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
Received: from DB6PR0802MB2360.eurprd08.prod.outlook.com (2603:10a6:4:8a::12)
 by DBBPR08MB4380.eurprd08.prod.outlook.com (2603:10a6:10:cc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.19; Fri, 4 Dec
 2020 12:01:13 +0000
Received: from DB6PR0802MB2360.eurprd08.prod.outlook.com
 ([fe80::8549:74ad:4f7a:7906]) by DB6PR0802MB2360.eurprd08.prod.outlook.com
 ([fe80::8549:74ad:4f7a:7906%5]) with mapi id 15.20.3611.025; Fri, 4 Dec 2020
 12:01:13 +0000
From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix iomux for PCIe on rk3399
To: Vicente Bergas <vicencb@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Douglas Anderson <dianders@chromium.org>,
 Carlos de Paula <me@carlosedp.com>, Sugar Zhang
 <sugar.zhang@rock-chips.com>, Shunqian Zheng <zhengsq@rock-chips.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-rockchip@lists.infradead.org
References: <20201201150522.923-1-vicencb@gmail.com>
Message-ID: <deaf148f-f8a1-0411-db40-192c4913d945@arm.com>
Date: Fri, 4 Dec 2020 12:01:10 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
In-Reply-To: <20201201150522.923-1-vicencb@gmail.com>
Content-Language: en-GB
X-Originating-IP: [31.125.108.76]
X-ClientProxiedBy: LO2P123CA0006.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:a6::18) To DB6PR0802MB2360.eurprd08.prod.outlook.com
 (2603:10a6:4:8a::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.123] (31.125.108.76) by
 LO2P123CA0006.GBRP123.PROD.OUTLOOK.COM (2603:10a6:600:a6::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.17 via Frontend Transport; Fri, 4 Dec 2020 12:01:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: b6bc9aee-00e3-4071-6fed-08d8984c574e
X-MS-TrafficTypeDiagnostic: DBBPR08MB4380:|VI1PR0801MB1711:
X-Microsoft-Antispam-PRVS: <VI1PR0801MB171120CA99B7E7FBF241C66F96F10@VI1PR0801MB1711.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
NoDisclaimer: true
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: DbU+eph3/hDWbv6mEqifWjn/e1Z23Iv0Klbvrln6f2Pl/81UxvqjylwVc+su+qP/tuYPAY4WexMWTxafUE+fEId09X5ngMmTM8lqN6Mfa7p4KvTxHhluQ0jQq8M6+1GDZNBZdB+1VEXa1e55LLIKSnBEv/e+/CeHbi34XNaqaE3FJa8EKXCLl/1vKMtK2FkIEjSxqwoyBWwmvt/acqHKOXCMVzGYEx2g8NKQ+65tMzmWCXoVVtZOqkTc9lQHOg6fPLc7ZXy8/ZYWj46/5Sl7sh352FxmZCkjGI2Je6DquR37x/rrwMbepHWfXGNDgqq7XOs/Igcn6vy1OiejcvYd//fh288xl25k4/uHp42Yw66xyePRmAP0jFbHYTYo12Zuk+zOZvNwZXo69j/ju4G6W4cfDKbzpA6Mb5iz8iuEAEwnFa616VmB77z6suXnQdF+glTiutrgXH4Zz7eDgcGRFPGJg/B9mVvhMApf9WsesdrXbaDOLllxE6dLnpXvynPE
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:DB6PR0802MB2360.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(366004)(376002)(396003)(136003)(346002)(66946007)(8676002)(921005)(66556008)(86362001)(5660300002)(66476007)(16576012)(316002)(110136005)(52116002)(36756003)(53546011)(31696002)(2906002)(7416002)(6486002)(2616005)(83380400001)(966005)(26005)(8936002)(44832011)(956004)(16526019)(478600001)(4326008)(186003)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?U1hjZlZSUTgyYmgzMmVKV2tBWUF1ZzZBbkJjSFBZT0h6TG11Y3M2N0FIbFF6?=
 =?utf-8?B?STc4M3llZ3l0NCszRlN2c2JyVU1QTTRwdU1VUW9Mc2dJNXNPdzllTWNHMzk5?=
 =?utf-8?B?VzQzaW1vN1J1cjA5eHVrTE16cndrNUU1MFI4RW5QM215Q0d2cUlxVEJLWHNa?=
 =?utf-8?B?bWkrekh2cnRLOEtvdmh3K0ZNUm56VWEySkdNb3VrN3pId0hwQ0YzTWZ6TzNJ?=
 =?utf-8?B?R21mVkJwbmJVR0hFbm9GLytoL3Qyb3JVK0Z0NG8yam90Z3daTjhZZk8rNHdw?=
 =?utf-8?B?SFdrRE4zWThMMllxYU04anRxT1cwbGZQOVlqdElRUmNlZDZldzVPZXRiTDA1?=
 =?utf-8?B?ZVJBUnJoNFRPRnVadW5LazNpRmpBTFFCekNNZmNBMEV5V25LNHZuZk9QYktS?=
 =?utf-8?B?QkpkMFlyMkpyWERsV3QxZWVscElHa1dXaHlvb2txcU5kdmNLMXVzVXpGbW1Y?=
 =?utf-8?B?L3N5SkwraEhBbVJROXFsaTBZQjVZVUZqMmE3U0FrRmo5WUQvcG9JUjVzeE4v?=
 =?utf-8?B?cTBBNmxlTnlXSGZoc0RiMzVzSVIvRkdXZW8zZ0JXU0xmTmdVWUNwTkl2T3Ji?=
 =?utf-8?B?QXg2WUdiUE5LVXd6M1dlV3poWURvTzIzYTRFeUNxRHVpcEEvVUt5SzJOTHA1?=
 =?utf-8?B?YXBYUWUvaklyNjliTE1YWDIyK05wZVM4dzRVcDBlczFob0lnaVpQZDFRaVJM?=
 =?utf-8?B?dXhsVytWQi9wODNERVFaZkdKM1NmWlZ0M294ZkZyS0IySW1OS2M3RnVSQVVY?=
 =?utf-8?B?TjBuNnQ5QUlNK3NIeXBLOGt6WlZQNms3b1dDKzA3c2JSamtrd0RNQXk5YmVJ?=
 =?utf-8?B?OXh4cUZmS3BhNEprZXFuVFRUaUJXU3BGQWJOeVdkdFhFN3pucGJody94a2ZH?=
 =?utf-8?B?b2lUQkJJajZpWWJTcmlQMFRPblFNa0lrb0NWNWJMQzBuVTVzVm82QmRLdTlk?=
 =?utf-8?B?NjFmWG5FQjk4NDlIZnI1RzllVmZsQ05wclZEWDhmSlZCcnF4YkxqR2VLTzAx?=
 =?utf-8?B?VzI1VVBnTWV0WGE2ckhvQ3oxWVRqNjFjVVVhcmQxZmd0b0taS3VUR05TTHR4?=
 =?utf-8?B?c2hOeVVkcm91b1lRb1owS0pzRjZxVTkwRDBxdzdXUytIZlZkcVYyTThHdTds?=
 =?utf-8?B?b2RvdTQ1VkZuNEp1dUhMYjFEbzBvVGlDRjdwWE1wTlptQ0VYcHJIT0loSmlK?=
 =?utf-8?B?RzR1cStuakdQUVI2cUtMN0lleWxkVm1YUS80TmpGaC9hUUg5SkRxUDV0dGZj?=
 =?utf-8?B?MmRMaUJsQm9qemJ4TzRFbThRVUJLVVp3aUQrcXMyRmV1cnB5UUtEWUtiMHFo?=
 =?utf-8?Q?ePZEBapehHkq4n90QK06b1wj5OU8LUMVCU?=
X-MS-Exchange-Transport-Forked: True
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4380
Original-Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT019.eop-EUR03.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: a8b0ad07-5ad2-4dc7-854b-08d8984c4b4f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VgxcDx6WGNCgQHxDDbxMpbHK5JArIXuG/A93kxG6DKMd2E3CDQsJmkqkLuzSaVlIF1nzjTmG/hqJ3DLg6dLSCod9D40arUMffHr63CPQNZ2ARJ3/F7QQD+F5IhfTq8UKC6s0XjigshL23oSDCqaLc+HXryAMpeUvO5ctTamADqBn8wYSqRDMIAf8HX4RRFa2uxsjO1y0qdHcXEUCgd++0/FfydEdJZQQD2mc9Y15tPjBxuk6JG9WS7hr//XmofQgYFbNH4TMnkRG+I7p+eZ0qaAc93KtX+vtLM5GmqSiP/BYCf2FBiDBJl3IoL5OW70dpP2d01ai9oVMpKL37cVLdhGPrwwJ5fHeYxIzl46BY8/UkvfrXccPJs+YVDdgCq9Iqd7oan5EXQDxOn1Ymt+yt1nhm5Com8xJqbNXf4Z9/rAlv85d1U7AxTZ+ogBMRJ/Jeyf1LyGideFqDV8k/uk9dHt8QGLwLqIosG03kEnurq3NAYKxRfKi/KJ7re0wvrO43wu0aFAhCGFmUeNEWPuRkQ==
X-Forefront-Antispam-Report: CIP:63.35.35.123; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:CAL; SFV:NSPM; H:64aa7808-outbound-1.mta.getcheckrecipient.com;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; CAT:NONE;
 SFS:(4636009)(346002)(136003)(396003)(376002)(39860400002)(46966005)(478600001)(83380400001)(86362001)(81166007)(5660300002)(6486002)(16526019)(356005)(921005)(2616005)(31686004)(53546011)(956004)(8676002)(31696002)(82310400003)(966005)(70206006)(4326008)(8936002)(82740400003)(16576012)(336012)(186003)(26005)(47076004)(70586007)(36756003)(2906002)(110136005)(316002)(44832011)(43740500002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2020 12:01:32.1300 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b6bc9aee-00e3-4071-6fed-08d8984c574e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR03FT019.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1711
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201204_070138_719005_7F18352F 
X-CRM114-Status: GOOD (  16.42  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: nd@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-12-01 15:05, Vicente Bergas wrote:
> Fix PCIe pins according to the documentation
> http://opensource.rock-chips.com/images/e/ee/Rockchip_RK3399TRM_V1.4_Part1-20170408.pdf
> in page 301:
> GRF_GPIO2D_IOMUX[5:4] gpio2d2_sel
>    0: gpio
>    1: sdio_detectn
>    2: pcie_clkreqn
> and page 313:
> GRF_GPIO4D_IOMUX[1:0] gpio4d0_sel
>    0: gpio
>    1: pcie_clkreqnb

What exactly is this fixing? Commit 461a00bb9d53 explicitly removed pin 
configurations for these functions on the grounds that they apparently 
don't work. FWIW it looks like they might also be related to some magic 
in GRF_SOC_CON7 which nobody's touching either.

Robin.

> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++----
>   1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index ada724b12..b37dac094 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -2666,13 +2666,11 @@ hdmi_cec: hdmi-cec {
>   
>   		pcie {
>   			pcie_clkreqn_cpm: pci-clkreqn-cpm {
> -				rockchip,pins =
> -					<2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> +				rockchip,pins = <2 RK_PD2 2 &pcfg_pull_none>;
>   			};
>   
>   			pcie_clkreqnb_cpm: pci-clkreqnb-cpm {
> -				rockchip,pins =
> -					<4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> +				rockchip,pins = <4 RK_PD0 1 &pcfg_pull_none>;
>   			};
>   		};
>   
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
