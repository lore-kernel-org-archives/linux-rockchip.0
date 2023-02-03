Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89D91C61DA4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Feb 2023 06:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:From:To:Date:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nQjge0QPBQP8b+py9WncaJMPetjwhn7UdWirLom58ZE=; b=ryZIPsfxxIR/Hx
	k0DQGmxt4uTo06zBnzjeh6LJNN6stDkYJ/jKQRMcPjD3wPZqgyVnAF+ZkhWkS4PKkKhiClozqPgSg
	rQVfX+KXqUJr1CM0tzwXCLERYDlXbEPNFcYaGbWx1ZxgiOqHfFDQcMEEyPVsCOP1W1qP/OjCXrRAm
	19dYBBkgqOt4QmjCVk0d0EyDez3WgQxs6qX4O1yaNj1WlGuGICA9Nb2rY8TIVmWKE9JeCe+gSAXQo
	EyUmc3rtXkMUbpdfzMHRHl+RwyIUjhvx2ctqpggbk3zdV6ok5zqhfbIwDKKQFCQVAXAU9CrAMkdTp
	ot0VZw4HF/UwqRsdgBww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNphk-000aYg-8I; Fri, 03 Feb 2023 06:37:48 +0000
Received: from mail-he1eur04on062f.outbound.protection.outlook.com ([2a01:111:f400:fe0d::62f] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNphZ-000aTu-3S; Fri, 03 Feb 2023 06:37:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J+rD6/qUIONcoQbH5kj0Xn47OATNbVlXtIm/FaBFhO8bUUHidzAEUz9aQRp7ZUnL3CK2aSnIiM3o0mISjASq/o1j7FLNHmR5/Px6Wn0/ho9TcO/Vkrghyp/+4saoP2IisT/wkTOvgZoUtWe94U7W/3pip4gzD1w8yc+t5a3DzPoV7uHNNpktcNDUJX5WizDmpstAqhLMLl3zc2jorSFLWL8AktIT5l+ip6Q4nSTLtQJLpBODfB7LAdSaYgz9Jmo+NjV3KuSMXhf1K19JL0HtblkDwX6aIN8y4R3hQBaa3N9n5dkF67dmoeGgQl3YUU90CfKl4WdPZ5JEUWppDtQtrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vKoAu76ZedJJ4XMcaWdcHVB3Gh62AqMc2kS7SEU1lJI=;
 b=audRDcAvOrrpqGmI5bv/AljQXWIf9SLKNRRMB1mboAouCt0UNogWv4H0RNThYiT0kj9GfgjZXsOV1Y1EdhLhyYqRE+e4/tCukslKaQ5MfMU13+2UNcYXXvlRA51JJS89iu6QebC+82/T8kYLf43WT0kUtarQT3YT+pQQ51Lm4yRsBbmkedfi2d9ROinQdZkcanPk4+hv5Tn+knEtgtlxrykH6sRBBiFkqMpAAgczyKN1DFnRLkQb5Gsp6gzwQAt0CZskJsIj3obFHX16CZH+1Ay3DHQFzQA5VbJphEjbzKpS6rEGQXWiDiK7G0I9t/qgbPEdVSPAEOWNMeqLvNanPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vKoAu76ZedJJ4XMcaWdcHVB3Gh62AqMc2kS7SEU1lJI=;
 b=acj7iCG4saM52P+1kLCOJAzEHusG3lNk3XFhR0KR+nBHaWi3ChSlKxq/UQOk/1BkeyBcOPn3OVmpJ+XB4G2g9MyAThWhB0DaaVQYrlxVAHfX/MBFD1FSTUsbVJtl1QhapuaJj6Jxr5A6MoJEQq4RLuT16IoobYcERyyedmgoQG/jAIWozg3e+saSqgjhPmTWQc4PSU171wlNZoep7cO5yAFeNihjxt5SLASEyhJ8ahSyIf2N4g6b+HyRLMdyeNY7mpmIot3+Za/p1FQuLQyEbrOJbegaZd0h7YppeszEsYX+u431G9aRaUJqnCd9MjYSXltoPOipRvrOkrlKhyQ7EQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=suse.com;
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com (2603:10a6:20b:348::19)
 by AM8PR04MB7298.eurprd04.prod.outlook.com (2603:10a6:20b:1df::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.29; Fri, 3 Feb
 2023 06:37:32 +0000
Received: from AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::5c50:6906:e9a4:5b9f]) by AS8PR04MB8465.eurprd04.prod.outlook.com
 ([fe80::5c50:6906:e9a4:5b9f%9]) with mapi id 15.20.6064.028; Fri, 3 Feb 2023
 06:37:32 +0000
Message-ID: <bb615285-65e4-e033-f265-05e75f3a56c1@suse.com>
Date: Fri, 3 Feb 2023 14:37:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Content-Language: en-US
To: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 yifeng.zhao@rock-chips.com
From: Qu Wenruo <wqu@suse.com>
Subject: About the Naneng combo phy differences in 3568/3588.
X-ClientProxiedBy: SJ0PR13CA0033.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::8) To AS8PR04MB8465.eurprd04.prod.outlook.com
 (2603:10a6:20b:348::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8465:EE_|AM8PR04MB7298:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f2b86e3-0f4b-48f9-d7f9-08db05b12094
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	sHAXv4vk3pLBVJhQZyvchVmtnl8K9XC5uzyGdGmRpcB4JSY08Eun0IDjszoakyt1alrh52OrJJ+bTJnUj5iaOjC7EPST5IlD+GF1ySi02ap5RzmzGK/G1BBNKMld+m95/Y+9xx0EVSZZvBjkSeyy4c11qWhUP7e1gq/MS4pNtzPPowRosnlzarOIARHEvCpp//9oGMdFqSXDa1tSiexiw14colIy8W/YddEaaBDQPxPvlxeHcRbybrSLIYBp8n1KGW3/RIxb+E/jRYQp4XW6BrgGvSXb+mAIjDIjF5m+tvLN1QDy1tfKQvu3tLouvRwi3JxKrQQkt3U/HROvRroK57HG555XSzgsV0x2lJ1sosaAzW+s2b6rAkCGsDtTroIscs6LkX0gbfvqR0gZSZn02Gw/IV393/hfMHqJYeaTvBCK/5OA1+BO1lJdZUMkaJrpDXJ25C5A/aKyzBiCMrt9qhalgvM/BoTf3lmICcDWYaVgdRbsaeBur7WC2qQjPhr8lhcbRxcPobpy3osC38aKAKE1njPfGUAx4gZvsCANCbUg6pQKut7O2Dzv8etfr78U3YlkGYgMsIlakJtlJOQjVEeDk7Z/ov8uZUTVyaDGgi8d68qv+d/JhCIcBBpXCo4MpTSKekDGQevRIHgFsiR3shfkxmgePiVlhb1CtV3Bi19BaU9aE2KP+OssbptbSUP0awKvQezTST6Lk00Aek70ATQU6iDYbbgunPjC2Rh3IDc=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8465.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(136003)(396003)(376002)(366004)(39860400002)(346002)(451199018)(110136005)(316002)(478600001)(66946007)(66476007)(8676002)(66556008)(6486002)(8936002)(41300700001)(31696002)(31686004)(6666004)(6506007)(186003)(83380400001)(6512007)(86362001)(5660300002)(2906002)(2616005)(36756003)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?U0l0MmxqcWt1MTVmZGUyVUlwS2t1SVJGdWhnelAyZ01oVC9xMndSREpHcVdx?=
 =?utf-8?B?WjBtRXNoUGwzV1BWWUU3YW04VWd5ZkwvT0crL3pudFR1MXdEZTFYMmpZUGpr?=
 =?utf-8?B?ekFQcG5Kd0RoVGpFTUVoN0xXRmhJRlV4dkIxYVdMSWU0NHdXc0EwUlpKazVr?=
 =?utf-8?B?M0UyUk5nNm95TlhFZjhGNVhETlo2SWYzYjQ1L3JLZjJTdWpjRkZqbmUyMjIv?=
 =?utf-8?B?STRzd0p5SHhFNmpJS1lqQUFyZzU2Q21kcXZTSjEwVG1jVUNkdC9kc1ptelQ1?=
 =?utf-8?B?ZUtDWTljQTJLTU90V3k4UWpBSUwxZWpVSGtkRXVmNHJEd0F2WlA0RDRiT3Z1?=
 =?utf-8?B?YktyTkdhTU9GY3BQRnRjdFlmdDkzTHdzVFA2dVYxblB2ZDZPalJnRG1qTFNJ?=
 =?utf-8?B?NmppRUJyUlVKRmJPTzBzWXd3VnVmOTRZQi85bXNzYXZQM2h6QUlyaEQ5aGJK?=
 =?utf-8?B?eS9aQzJiaGJ1dENnYnRpR0xzd2QvQ01uWUg3a2JBNzZ3bEQ2SkRlSjlUSmh3?=
 =?utf-8?B?TUFUVHlrYlVtSi9OVUdXTjJMVzJTdnhVU0swUjJXdko2TEh0UUloUUpUUnFN?=
 =?utf-8?B?c1ZGV0lTbzZYQ3dDb2VWZi9Sc2VrcTc0b3NHK21nUEZpa1IraGhmWlRRUWlj?=
 =?utf-8?B?OU9KRkRvYmRxa1M4MWZxbW9lN3VnZXBFRnVnaVA3WEhWRHYrWUs3MDJncCsv?=
 =?utf-8?B?Nkx0WlYrWGVxazFaMVYrL3M1ZkZHV05GbjZtUTVvcHdUeVFvejFSQ21heHBD?=
 =?utf-8?B?KzFiSDNoOEpiODNIS2NVb01laHFFTTF5a3R1cHhpNnIremRzL01qTW5MZ05H?=
 =?utf-8?B?YTgzNklNVHZRTnZIS3lLSGg0a0pTTlpVcnNoVkdiZFFrbnlIWWFtRU9wQWFW?=
 =?utf-8?B?aUZ0amM4VmZDKzVhNVpVQytSSFF2Zk0xTFY2V0IrTXpvdHBaODEyWDFscWpU?=
 =?utf-8?B?RW8vVmtCdjdWZ1hnNXVxLzBaN3lzM0RYWVVGT0pSbU0ycWZtWExnMVF4UGtl?=
 =?utf-8?B?bWp6emxzQncxeWRpZ0VvV0xtYnlQQTdUMSs0TGZWNFBIWkpwOUdOUzFqWWpm?=
 =?utf-8?B?SXhhN2xzVFR6dHhFN1kzWFAvZEFVbzM1SGM0Snk2TUNkYlovenBoNnRLUmpo?=
 =?utf-8?B?SlFrSStjZk1HUzhDa1BDWUt1LzBpZVRqVW03cEZWa0sxWXRiWGJZbGtjQUND?=
 =?utf-8?B?MXBMeUtiODU5eW5OSGJXNHR6QXY4UEpvQzJoRWpPb2VSNXZibHpnWnJsYlRD?=
 =?utf-8?B?dkJYa3dvWkFNR01hYktNbDRCV2l1cHBEWFFKNkREMHpHbUZTY3pUWWUyMVVj?=
 =?utf-8?B?Q0NmUXZYZVQrYWZTZnJGUkhOVGFHTzE3a2l6WHVSZnhJbUdZVFRObUMwYXMz?=
 =?utf-8?B?cU56Q3NFSnlCazErUklQZXpOTUgyWFBrMGNTNFFHT1BRYk5XdVBCeWd2YXFu?=
 =?utf-8?B?NUU5b3V2ZXhyaEFReEpxRHVFUnB4bjM5SE8vRjZxSUlseTFZZVNpanNtbTJE?=
 =?utf-8?B?dkZRYzlOS2RMK1NFcldWL0NVUE9ueHQ3MGtnOVh0OXYwODFybmV3dnI5Mkl1?=
 =?utf-8?B?Y0tnWGp6Njlrc3EzdGdlQ3JXaUZzdVhTTExRZ3U4clRSb2E2SCtRNUQ4WTEy?=
 =?utf-8?B?TXdQc0NhbG1qRmU3aXpQQzVFSFdNYnhIVXd2Nmh4bXl6T1hiL1JGRlpWaThh?=
 =?utf-8?B?SnNBcFUxQXRiZWJMTnpYc29Fb0NYbEFaVGozNkJPSXM0YzFJYktXeUhOZ2VM?=
 =?utf-8?B?eTZ0cTQ4bWVjYWxsaCtxaXZUVzdhc1Y2MnlwVlk1bFRsRnB6OENsalFtMEVj?=
 =?utf-8?B?NlZVV3RxYVFWdGVxeHNTcGZxcmM3WGNlalQxb2xXTWM5VUZkMEovNmZJUlJs?=
 =?utf-8?B?aUhZeFd2SWlGeXorcXpTUVpRb2FhSEh4dWttT3VwVU5MWDdqWGxpOVNoY2xE?=
 =?utf-8?B?YXNwcHY2anJ1dlJmRTYraUU1UHN5RXdYRHcrbi82UWZkb1JpVElyVUFNcmlm?=
 =?utf-8?B?ZWNCWEpvWVRjTXVzYjhZeUZsSW81OThPSlE3MUZKV0RLbEs4VkVVSy83VHlY?=
 =?utf-8?B?eVVvSnA4OVZLRm9SUFZNUlZMNitaT0twaEUvalIxNmJCa2gxS2xhMjFORVRw?=
 =?utf-8?B?eTVCL2RDYmthT0RBR2NJOEg5YUY1WDVtN1gvUkdMd0NRTFcrQ1l3dWxkS0Yy?=
 =?utf-8?Q?a9BQMSuAvSCCW/Wer/r0NlY=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f2b86e3-0f4b-48f9-d7f9-08db05b12094
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8465.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2023 06:37:32.0135
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oezDKv8q6VKEsyyzcGUTFQ2V4FdJa+j25bc6fUz3egh6Qi1aBbVtVoMTrQjZQhIb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7298
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_223737_416199_0B39BF7A 
X-CRM114-Status: GOOD (  10.57  )
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

Hi Sebastaian and YiFeng,

Thank you very much for the contribution on upstreaming the RK3568 SoC 
and the incoming RK3588 SoC.

During my (uneducated) attempt to add RK3588 comb phy to upstream, I 
found something unsure and the data-sheet would be way better to make 
the code meet the upstream standard (Either Chinese or English version 
is fine to me):

- rk3568 and rk3588 grcfgs have differences starting at con0_for_sata
   Otherwise members before that one are sharing the same values.

   I guess it's just some expected value changes, but just want to make
   sure it's indeed the case.

- SCC downward spread spectrum only applied to 3568 combo phy
   But not for rk3588. Is it due to some EMI changes?

- Needs data sheet for various register values
   The downstream code involves the following registers for rk3388 combo
   phy for PCIE mode:

   * PHYREG30 (0x74)
     For "gate_tx_pck_sel length selection for L1SS".
     And I'm wondering if ASPM is involved in the downstream kernel crash
     during PCIE initialization.

   * PHYREG28 (0x6c)
     For "rx_trim: PLL LPF C1 85pf R1 1.25kohm."
     (Sorry, I can only understand the last 3 words)

   * PHYREG10 (0x28) extra bits
   * PHYREG11 (0x2C) extra bits
   * PHYREG14 (0x34) extra bits
     For the "su_trim: T3" for PCIE initialization and with extra
     refclock.

   * PHYREG26 (0x64)
     For the ".force_det_out" setting.

I really hope I can help on upstreaming the PCIE controller, so I can 
run upstream kernels on my Rock5B boards.
(Since the R8125 ethernet controller is on that combo phy)

Thanks,
Qu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
