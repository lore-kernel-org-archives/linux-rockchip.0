Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC40AC25B08
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Aug 2022 08:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n4eVngq/WZlljX3F9ZO17MM/dbIsx+b94W0Cz4GAYJ8=; b=iv/3zb44TStuopfYqF8K0Bj1vZ
	6GlLx7gkBu9LNc2Gwp9R3I7q8TitLFZVLT4lQOVahrzYisbKSQvJJ2XJRyLttSBupfFOuWDYoyG0c
	g2ndhQm8NzNYRtRgQUoiKK4/WdmfXZU4wBzbyws3Pvpqan/XkFincUwXeKg/BjlO5NpDnJL+wpl2K
	YnwHWzV/zDAqIYE4bMpnZd2FAynulUf7WMb1bWA+PGACSi8jvXG5MutbVxW/LSSytanZ5gWmnoO6o
	0o51qVKTwoZhZ8fpnWOXtpt4KA5SgnJ1b2oowf69hW9Hs4ou+91Q5sI0qLmmLBDroyhmnEZE5iKsL
	XxJhEp+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOENi-00F1Lr-04; Wed, 17 Aug 2022 08:26:30 +0000
Received: from mail-am7eur03on2072.outbound.protection.outlook.com ([40.107.105.72] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOEMp-00Ezlb-9V; Wed, 17 Aug 2022 08:25:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BVE5d+duYK6qMJiR+HmPh+WG9PhKW2lk95KwUQtCvsSq8SwzPFeBi/AzlK5eiSYTW6kZWL+B+Mw3xc7X46SKVTG+LoSllVBzaxDWLp1sMjwAS1b7bpgADaORpl5B01DIu3OFsT1a00K3wvQKP+uT8fSYRBy1nRyD2RRnKzco1SHHwQFUw2rqwFUNNUpoxnVUNE3Ctyeng2sAiVQxiELGMHwh6UOrdfiuKb76RTl3MKxdWspdhfmOnepo4ftBA5wW8Ve3OyNXfZnqDHMO7OIPSS84I8hZo4GeWZ8/0sEASIMXJBOMUuZD3Aur7hQVFB5h1m9kCA9shh0E2bk9Q0X49Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fJKGFfPBzwMYQagWwIMnsQET+AnPFF5JiUdptd67fUs=;
 b=ji6rbu5usn9mLSQvDHgPndOSsaXSKxG0CrPBDz/KMBcvKk8MA7a0m8j8BiC46pxE1Oky6LlcIWPaPQbwe1BWwF/3ztUMtzNoBxBanP4muVYElI35hAK1tzo8vWqEUIw0lWXOl4K/kF6RGPNr5cd7dnFz357IK7zAPEBggO1kcTleXF2XSuV1UAWH+00BYeqTLKGFbcd1sJ8j86+9+4Kt4JRKJ0gSDYhJj1ydvdowwy4GhtChijvAtU3GJOn6sQUkAO/6nCHAAzfw6PBm/BUiEkcz1c+LwYTG8GxsxPYQ2PQFpUM630ls1VkYDREDzO8FpOgq/d5qoFURW/8lUdt+nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fJKGFfPBzwMYQagWwIMnsQET+AnPFF5JiUdptd67fUs=;
 b=jJEZAp9ysCEPjmxXgY1G679tKEOJjYE64l2E6mGf0xnt3OG6Nigu92H6LkrU2cWaFcqeFFe8MQtONaNmjzQhBnsZfbQMxWX5XXFdN5ltdbqlvsp6Y1tfXhqCBUg8Ti71Nhu7rAJw03IUpp/+RtPrvDMs0yDbN2uo6JVbBuO97g8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by AM0PR08MB4354.eurprd08.prod.outlook.com
 (2603:10a6:208:13e::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Wed, 17 Aug
 2022 08:25:31 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::dcaa:905c:ff8:1f5b]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::dcaa:905c:ff8:1f5b%9]) with mapi id 15.20.5525.010; Wed, 17 Aug 2022
 08:25:31 +0000
Message-ID: <88e9c256-b930-d26d-63b4-9d0f132ae962@wolfvision.net>
Date: Wed, 17 Aug 2022 10:25:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [BUG BISECT] phy: rockchip-inno-usb2: Sync initial otg state
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>
Cc: Markus Reichl <m.reichl@fivetechno.de>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Samuel Holland <samuel@sholland.org>,
 "open list:GENERIC PHY FRAMEWORK" <linux-phy@lists.infradead.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220622003140.30365-1-pgwipeout@gmail.com>
 <88f2de00-32e3-ed74-082f-c0972a81f0f8@fivetechno.de>
 <CAMdYzYoTLjRW1FgwfizUu-+k0R4tCO78qYa7MEpgfz99aj3SvQ@mail.gmail.com>
 <ec3d2515-b2a2-8441-2e9a-a7fe664e048a@wolfvision.net>
 <CAMdYzYo1nm76ti3PCYk4DYtEnjWD731bybHaQV3ODBZi4SMvRg@mail.gmail.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <CAMdYzYo1nm76ti3PCYk4DYtEnjWD731bybHaQV3ODBZi4SMvRg@mail.gmail.com>
X-ClientProxiedBy: VI1PR10CA0117.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:803:28::46) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 612f0e4c-cfbf-4198-40f5-08da802a0c5a
X-MS-TrafficTypeDiagnostic: AM0PR08MB4354:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	4i0BScIQKhQTi5wsQ2uWLFwvmuwlkyDqPwS0G88TFnmD09HWJUstgNaJa6RiuflKREI8Et6lubaw5JgzZ5vT26uud2FZIcwYaimzdG4FB/K9uTscwTWkvpQ3hiXLffIkcZu8eYdlVr8U40BjoJhEIy4KFniFStJ6/uKvy9zE4PHrG/BQXEY/0bHpb7HUNI3iWOU+Eg1QElb10jsHsF3zQk5hGcmnsNhiWb1uU5Ta6styf8cBgXSLDdqB5IHXyI/9ZkqG3UtK9uh/W5W38LhZDurnZ1Z+eZrfBFaAvLEjr3X7qMLhPfe6M62bcLxm/nYiIJoH4Daej6xK168yzjmsv6LERyi/KLDPRAM2tWeWQAaBNJKd1jRe1EEEVsfttbklZzYtw4juljIgeGTSur9YuUpnw5oL/kFpMnVxxqFKTHVEDiPPekUeI53zm3B6IVwFnX6wADoHgkJ5IxYuzDqeMVV8hDGyFzi1JoYxvjTZkgexQnWgCBx8lvpkoRNt4NonBMDbHWiIkSfwN+6VNTQP7LQwWfU+dMVlGwa4/sEHXv5jr9OJus0v4ZgYlaAdKGlAulxnqfzlOFwpY/OjMZg3skIo9ZS63poVluYKDwcjfpGUvwKFeID6ALoojACfzHYPnsrEiqDkxkUN22qmE2kawmBV0/KuDenv+W9YjUYhIw+fW3rvHHFCpXN9BBH4J7IR7vOO32GYgASx16k05+hp91SYMlOJXECUErRVp/0AN2yaTFSKOC1cR06lhpwzwL74ptrc+F6DpwXsT7b7+ZvG9Ahm9/PM+nVQmWqX3POtLbxYAB0jNvaO8Sgc7tzp9cRxLdd3Q760EQqz0/akRs7GhONMbN3GTdD8wZhc0VLjlYGltfI1tq76/6U7Vb+e/j0MTPijkKRjP6yczjY7UoncQNHbkp4+0bxuUCJP4j9xEeg=
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39850400004)(366004)(396003)(136003)(376002)(346002)(5660300002)(6512007)(36916002)(26005)(53546011)(478600001)(41300700001)(6486002)(6506007)(83380400001)(52116002)(2616005)(966005)(186003)(44832011)(2906002)(8936002)(7416002)(54906003)(6916009)(8676002)(45080400002)(4326008)(66476007)(66556008)(66946007)(316002)(38350700002)(38100700002)(36756003)(31686004)(31696002)(86362001)(10126625003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?NE1FQ21wTk9XaDVKSFZCTlVDVTRQM1lieXEzUzhwQWJ0Yi9aT1hQVUFXN0NN?=
 =?utf-8?B?Z2RiWlBQQmhRY0ZHT0RqV2dzdzVXNkYydlRYbnRnVzNWdTNhNytXOHdKQmRs?=
 =?utf-8?B?R0lFUVYxNGRsRSs5YWhRYjc0VDBsY0J2WmRGN2dlWkNUMEM5Sk1aWXBHVmhi?=
 =?utf-8?B?bmljdStLQXA1RVYxNTcwMmNxclRBUld5STNDdi91L3Q4anM4cDhRVkFQdnZK?=
 =?utf-8?B?aThhbk5VdzBmYXkzVlhmWUhNSGdQMVU0UnJBeC94VVR1TWVjZEJteVQ3bWVn?=
 =?utf-8?B?d0VOOWZhT0h0N1FBS2oxVFZUeGN0Z1RzR0ozMEV3ZXpCT2VodktmVTRNTlNZ?=
 =?utf-8?B?bE9NcmUvMWd5RkFvQS8zOE1HbGFnWDdPTEFsTXl4dGduejFrRkFDekE4ankw?=
 =?utf-8?B?Zm9vZlJGSStRZXRtNjZWcVN1b2xmaDZqMlUzOVZPa0J5STFxY0ZCY0dnSFFs?=
 =?utf-8?B?U1dwOG5iRzlyTUJ3SktucytrRllUeG9YTEs4MVBKQ3V4bjlDWWtPMzZ1ZWsw?=
 =?utf-8?B?eTN6WVMzSE96UXluL2wzK3JMVTNLU25PSVpXUkpVZ0FQTjh6Qld6Y3lVMlp0?=
 =?utf-8?B?WkRleVg2c09yV05hcUFoVVgwQXV4ZGRrZVNTWXNudmJZY0pKcUxBVVJNTytl?=
 =?utf-8?B?Ly8rQnlkUng4NlhqVEZxSkNDY21CN09WN2JUNjVic2kxSU1UMnlSZlVjakJB?=
 =?utf-8?B?QTFhc1JuMDA0OW5oMEVLZHhvZ2Q4RHVwaFBMRXdYYmZzOUUrT09wTWk1TDBq?=
 =?utf-8?B?QzZubE5jc1U2SXB2RlY2MjE3L1VCalI2RVNtNmRsN2haOXZhK2NsTnMxM0dC?=
 =?utf-8?B?UCtQN0Q0a3ZWUXFFUnE3TjJsNUhqMlVjQ05OeWVZU0JLbUkrMEhlQUR5dFhM?=
 =?utf-8?B?WFZJYWJuZk9wSmRncWRHRTdKOGtsbHRQeGxjSzF3VTAyRkFpOWtrZmtQMDBr?=
 =?utf-8?B?U1B4Z3FhT3piVjlYeWRTRDhlTzluVXNsOE1TK01xVXFqQS9rVmVrVGVDQkV6?=
 =?utf-8?B?SE9MQkZ4N1BHYkgwQVB6L0ZsWGZmOG15NGRXTUtrWHlrcE5GWVJMMUpJOGpy?=
 =?utf-8?B?bkZGVUxQYmpWeTFNVXljTWVCTUFkQytGZXlGSmhXRFBaSS9Eck1WLzZ0ZHlj?=
 =?utf-8?B?WjdsWXZSOHVZOTBpWjNZNEF0SU5sOVN6WHRTbEsrTVdWY0ZMZFVFbVRSL25Z?=
 =?utf-8?B?R1dhc3J6N3psSlp5WlBXcDc1dlVmRUNud0tFRGF4ek1abGxtSFhtSU03MDhm?=
 =?utf-8?B?cVd5RXBUSEkzVHJROEUxenU3RjVLZ2o1OVpkcjhOMWlyRy9kYlNZSEExSDFK?=
 =?utf-8?B?Y0VjRDlwTUFPNnRTalBFbDNmTGJFSkRCQUlWeU1RRUovSmNTb2Vrc3ZJVkw4?=
 =?utf-8?B?YUdQQzI4S0lGbHdQLzJRL00yZFIvenZJNjV1dTdCNE45SWtMS3BYQldxTHRS?=
 =?utf-8?B?ZDNYOVliUUM3ZG9pZ3FMeHVxWm9QQlpJeHJveGdtZmpNV2M0SmtuOXI4MjFY?=
 =?utf-8?B?UTB1TUxZZGJGa1V1TS9JeTBzRU1NTXIwUm1Ickp4R3o0WHFtRER4cWc5QUR0?=
 =?utf-8?B?d3g3Tk8zeWI4bm1jWmZlQkVTTFZtd2pJRDlkOUVOelJzVC84azJWakViZ1lK?=
 =?utf-8?B?T2xkbThDcjlBNi9CcTZmYVIxMWQvRHFkSzMvOWNScld3MExScHRkRkVleExo?=
 =?utf-8?B?UlNxSHFVQ3RqQmVYVUJoWVhrd3pOdVJhR1d2eWlodTIvK3NxWXdicjF6bHpq?=
 =?utf-8?B?NlFBSnMrUUppM0pndzgyQWc3QnBJT3FSd0hkbVdhNDlROHdjRlQ2a21mc1Ri?=
 =?utf-8?B?bVpHZjQ3TGw3TDIvREdVd1NWMGtZRmJ2M09DS2Y3V0xWVzJ6ZVNvZ2JNZTdN?=
 =?utf-8?B?QVhBTU84Zk0yaW53bDYxYkxZZVcvS1ZqWnl0d2FsazFyRHI0Z0tMS2w5TEFj?=
 =?utf-8?B?TVMxZkZYWnFDeFBJaEp2clZmOVJuc0lSTG80emdOb1A2UHhTdmFBT1l4cDEw?=
 =?utf-8?B?d3dnYml0eDBzaUhETmpBbmJocmdMamRxYnlmU25nVTAzczV0ZUJOUmV5aFda?=
 =?utf-8?B?MzAyTDdvcytBN3RmVUw4Z0JTem1pT2pUcHlGREhnRDVzdnphZFczb1RGcUNX?=
 =?utf-8?B?UjVFa3NIUHRWa3BLQlpkRi95eFlSa0JzS3dRMHJmRjlvU2JBQzNJYmRCTHNK?=
 =?utf-8?B?MkE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 612f0e4c-cfbf-4198-40f5-08da802a0c5a
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 08:25:31.1663
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iBixlhtBo3zlHu1huYAhqWoFRt9D4Ri2kZbJf6zAqPeAGAaf+1hxDwokDy6vxTY5qMfwHgM0NbRex1lqIQekr3T3o+LEQRcXv3Q3IkmBlRw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB4354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_012535_765292_EEDF0335 
X-CRM114-Status: GOOD (  31.29  )
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

SGkgUGV0ZXIsCgpPbiA4LzE2LzIyIDE3OjI3LCBQZXRlciBHZWlzIHdyb3RlOgo+IE9uIFR1ZSwg
QXVnIDE2LCAyMDIyIGF0IDExOjIwIEFNIE1pY2hhZWwgUmllc2NoCj4gPG1pY2hhZWwucmllc2No
QHdvbGZ2aXNpb24ubmV0PiB3cm90ZToKPj4KPj4gSGkgYWxsLAo+Pgo+PiBPbiA4LzQvMjIgMTE6
NDksIFBldGVyIEdlaXMgd3JvdGU6Cj4+PiBPbiBUdWUsIEF1ZyAyLCAyMDIyIGF0IDI6MzkgUE0g
TWFya3VzIFJlaWNobCA8bS5yZWljaGxAZml2ZXRlY2huby5kZT4gd3JvdGU6Cj4+Pj4KPj4+PiBI
aSwKPj4+Pgo+Pj4+IHdpdGggbGludXgtbmV4dC0yMDIyMDcyOCByazMzOTktcm9jLXBjIGRvZXMg
bm90IGJvb3QuCj4+Pj4gQmlzZWN0aW5nIHBvaW50ZWQgdG8gdGhpcyBjb21taXQuCj4+Pj4gQnkg
cmV2ZXJ0aW5nIHRoaXMgY29tbWl0IHRoZSBib2FyZCBib290cyBhZ2Fpbi4KPj4+Cj4+PiBUaGFu
ayB5b3UgZm9yIHJlcG9ydGluZyB0aGlzLCBzb21lb25lIHdhcyBraW5kIGVub3VnaCB0byByZXBy
b2R1Y2UgdGhlCj4+PiBwcm9ibGVtIG9uIHRoZSByb2NrcHJvNjQgYW5kIGNvbmZpcm1lZCB0aGlz
IGlzIGFuIGlzc3VlLiBBcyBJIHdvbid0Cj4+PiBoYXZlIGFjY2VzcyB0byBteSBoYXJkd2FyZSB1
bnRpbCBuZXh0IG1vbnRoLCB3ZSBzaG91bGQgcHJvYmFibHkgcmV2ZXJ0Cj4+PiB0aGlzIHVudGls
IHRoZSByb290IGNhdXNlIGNhbiBiZSBpZGVudGlmaWVkLgo+Pgo+PiBKdXN0IGV4cGVyaWVuY2Vk
IHRoaXMgaXNzdWUgb24gbXkgUk9DSzMgTW9kZWwgQSBib2FyZCAoUkszNTY4KSBhbmQKPj4gcmV2
ZXJ0aW5nIHRoaXMgY29tbWl0IHNvbHZlZCBpdC4KPj4KPj4gSGF2aW5nIHRoZSByZXZlcnQgaW4g
djYuMC1yYzIgd291bGQgYmUgZ3JlYXQgLS0gaWYgdGhlcmUgaXMgYW55dGhpbmcgSQo+PiBjYW4g
aGVscCB0byBhY2NlbGVyYXRlIHRoaXMgcGxlYXNlIGxldCBtZSBrbm93Lgo+IAo+IElmIHRoaXMg
aXMgbm93IGhhcHBlbmluZyBvbiByazM1Nnggd2hlcmUgSSBrbm93IGl0IHdvcmtzLCBpdCBub3cK
PiBjZW1lbnRzIG15IHRoZW9yeSB0aGF0IGl0J3MgYSBzeW1wdG9tIGFuZCBub3QgdGhlIGFjdHVh
bCBwcm9ibGVtLgo+IFBvc3NpYmx5IGEgcmFjZSBjb25kaXRpb24gd2l0aCB0aGUgZ3JmIGFuZCBy
ZWdtYXAgY29kZSB3aGVyZSBpdCBpc24ndAo+IHF1aXRlIHJlYWR5IHdoZW4gY2FsbGVkLiBUaGlz
IGNvZGUgcGF0aCBpcyBjYWxsZWQgZXhhY3RseSB0aGUgc2FtZSB3YXkKPiBsYXRlciBvbiB3aGVu
IHRoZSBpcnEgZmlyZXMuCj4gCj4gV2hhdCBjb25maWcgYXJlIHlvdSBiYXNlZCBvbj8gSSdtIHJ1
bm5pbmcgYSBzdHJpcHBlZCBkb3duIHZlcnNpb24gb2YKPiB0aGUgYXJtNjRfZGVmY29uZmlnLCBi
dXQgaWYgeW91IGRldmlhdGUgZnJvbSB0aGF0IGl0IHdpbGwgYmUgaGVscGZ1bAo+IGluIHJlcHJv
ZHVjaW5nIHRoZSBpc3N1ZS4KCkkgcG9zdGVkIG15IEtjb25maWcgaGVyZTogaHR0cHM6Ly9wYXN0
ZWJpbi5jb20vUDFBczBXNGsKCkZXSVcgdGhlIFJPQ0szIGJvYXJkIGhhcyBhIHN3aXRjaCB0byBz
ZXQgdGhlIE9URyBwb3J0IHRvIGRldmljZSBvciBob3N0LApyZXNwZWN0aXZlbHkuIFRoZSBOUEUg
ZG9lcyBub3Qgb2NjdXIgd2hlbiB0aGUgc3dpdGNoIGlzIHNldCB0byBob3N0LgoKQmVzdCByZWdh
cmRzLApNaWNoYWVsCgo+IFdlIHNob3VsZCByZXZlcnQgaXQgdW50aWwgaXQncyBpc29sYXRlZCwg
YXMgd2VsbCBhcyB0aGUgcGF0Y2ggc2V0dGluZwo+IHRoZSByazM1NnggdG8gb3RnIHNpbmNlIGl0
IHdpbGwgYWdhaW4gYmUgYnJva2VuLiBJZiBzb21lb25lIGNvdWxkCj4gd2VpZ2ggaW4gaGVyZSBh
cyB3ZWxsIChJIGN1cnJlbnRseSBkb24ndCBoYXZlIGFjY2VzcyB0byBteSBoYXJkd2FyZSkKPiBp
dCB3b3VsZCBiZSBoZWxwZnVsLgo+IAo+Pgo+PiBUaGFua3MgYW5kIGJlc3QgcmVnYXJkcywKPj4g
TWljaGFlbAo+Pgo+Pj4KPj4+IFZlcnkgUmVzcGVjdGZ1bGx5LAo+Pj4gUGV0ZXIgR2Vpcwo+Pj4K
Pj4+Pgo+Pj4+IFsgICAgMi4zOTg3MDBdIFVuYWJsZSB0byBoYW5kbGUga2VybmVsIE5VTEwgcG9p
bnRlciBkZXJlZmVyZW5jZSBhdCB2aXJ0dWFsIGFkZHJlc3MKPj4+PiAwMDAwMDAwMDAwMDAwMDA4
Cj4+Pj4gWyAgICAyLjM5OTUxN10gTWVtIGFib3J0IGluZm86Cj4+Pj4gWyAgICAyLjM5OTc3Ml0g
ICBFU1IgPSAweDAwMDAwMDAwOTYwMDAwMDQKPj4+PiBbICAgIDIuNDAwMTE0XSAgIEVDID0gMHgy
NTogREFCVCAoY3VycmVudCBFTCksIElMID0gMzIgYml0cwo+Pj4+IFsgICAgMi40MDA1OTRdICAg
U0VUID0gMCwgRm5WID0gMAo+Pj4+IFsgICAgMi40MDA4NzNdICAgRUEgPSAwLCBTMVBUVyA9IDAK
Pj4+PiBbICAgIDIuNDAxMTYxXSAgIEZTQyA9IDB4MDQ6IGxldmVsIDAgdHJhbnNsYXRpb24gZmF1
bHQKPj4+PiBbICAgIDIuNDAxNjAyXSBEYXRhIGFib3J0IGluZm86Cj4+Pj4gWyAgICAyLjQwMTg2
NF0gICBJU1YgPSAwLCBJU1MgPSAweDAwMDAwMDA0Cj4+Pj4gWyAgICAyLjQwMjIxMl0gICBDTSA9
IDAsIFduUiA9IDAKPj4+PiBbICAgIDIuNDAyNDg0XSB1c2VyIHBndGFibGU6IDRrIHBhZ2VzLCA0
OC1iaXQgVkFzLCBwZ2RwPTAwMDAwMDAwMDEzNzYwMDAKPj4+PiBbICAgIDIuNDAzMDcxXSBbMDAw
MDAwMDAwMDAwMDAwOF0gcGdkPTAwMDAwMDAwMDAwMDAwMDAsIHA0ZD0wMDAwMDAwMDAwMDAwMDAw
Cj4+Pj4gWyAgICAyLjQwMzY4N10gSW50ZXJuYWwgZXJyb3I6IE9vcHM6IDk2MDAwMDA0IFsjMV0g
U01QCj4+Pj4gWyAgICAyLjQwNDEzMF0gTW9kdWxlcyBsaW5rZWQgaW46IGlwX3RhYmxlcyB4X3Rh
YmxlcyBpcHY2IHhoY2lfcGxhdF9oY2QgeGhjaV9oY2QKPj4+PiBkd2MzIHJvY2tjaGlwZHJtIGRy
bV9jbWFfaGVscGVyIGFuYWxvZ2l4X2RwIGR3X2hkbWkgcmVhbHRlayBkcm1fZGlzcGxheV9oZWxw
ZXIKPj4+PiBkd2MzX29mX3NpbXBsZSBkd19taXBpX2RzaSBlaGNpX3BsYXRmb3JtIG9oY2lfcGxh
dGZvcm0gb2hjaV9oY2QgZWhjaV9oY2QKPj4+PiBkcm1fa21zX2hlbHBlciBkd21hY19yayBzeXNj
b3B5YXJlYSBzeXNmaWxscmVjdCBzdG1tYWNfcGxhdGZvcm0gc3lzaW1nYmx0Cj4+Pj4gZmJfc3lz
X2ZvcHMgdXNiY29yZSBzdG1tYWMgcGNzX3hwY3MgZHJtIHBoeWxpbmsgZHJtX3BhbmVsX29yaWVu
dGF0aW9uX3F1aXJrcwo+Pj4+IFsgICAgMi40MDcxNTVdIENQVTogNCBQSUQ6IDcxIENvbW06IGt3
b3JrZXIvNDo2IE5vdCB0YWludGVkCj4+Pj4gNS4xOS4wLXJjOC1uZXh0LTIwMjIwNzI4ICM0MzcK
Pj4+PiBbICAgIDIuNDA3ODY4XSBIYXJkd2FyZSBuYW1lOiBGaXJlZmx5IFJPQy1SSzMzOTktUEMg
TWV6emFuaW5lIEJvYXJkIChEVCkKPj4+PiBbICAgIDIuNDA4NDQ4XSBXb3JrcXVldWU6IGV2ZW50
cyByb2NrY2hpcF91c2IycGh5X290Z19zbV93b3JrCj4+Pj4gWyAgICAyLjQwODk1OF0gcHN0YXRl
OiA2MDAwMDAwNSAoblpDdiBkYWlmIC1QQU4gLVVBTyAtVENPIC1ESVQgLVNTQlMgQlRZUEU9LS0p
Cj4+Pj4gWyAgICAyLjQxMTYzNF0gcGMgOiByb2NrY2hpcF91c2IycGh5X290Z19zbV93b3JrKzB4
NTAvMHgzMzAKPj4+PiBbICAgIDIuNDE0MzMyXSBsciA6IHByb2Nlc3Nfb25lX3dvcmsrMHgxZDgv
MHgzODAKPj4+PiBbICAgIDIuNDE2OTQ4XSBzcCA6IGZmZmY4MDAwMDkzNzNkNjAKPj4+PiBbICAg
IDIuNDE5NDA2XSB4Mjk6IGZmZmY4MDAwMDkzNzNkNjAgeDI4OiAwMDAwMDAwMDAwMDAwMDAwIHgy
NzogMDAwMDAwMDAwMDAwMDAwMAo+Pj4+IFsgICAgMi40MjIxOTldIHgyNjogZmZmZjAwMDBmNzc5
ZmNiOCB4MjU6IGZmZmYwMDAwZjc3YTNhMDUgeDI0OiAwMDAwMDAwMDAwMDAwMDBjCj4+Pj4gWyAg
ICAyLjQyNDk3OF0geDIzOiAwMDAwMDAwMDAwMDAwMDAwIHgyMjogZmZmZjAwMDAwMTBjODI1OCB4
MjE6IGZmZmY4MDAwMDg4OGVjMTAKPj4+PiBbICAgIDIuNDI3NzY4XSB4MjA6IGZmZmYwMDAwMDEw
YzgyZjAgeDE5OiAwMDAwMDAwMDAwMDAwMDBjIHgxODogMDAwMDAwMDAwMDAwMDAwMQo+Pj4+IFsg
ICAgMi40MzA2MDRdIHgxNzogMDAwMDAwMDQwMDQ0ZmZmZiB4MTY6IDAwNDAwMDM0YjU1MDM1MTAg
eDE1OiAwMDAwMDAwMDAwMDAwMDAwCj4+Pj4gWyAgICAyLjQzMzM5MF0geDE0OiBmZmZmMDAwMDAw
NzA4MDAwIHgxMzogZmZmZjgwMDBlZWM5NjAwMCB4MTI6IDAwMDAwMDAwMzRkNGQ5MWQKPj4+PiBb
ICAgIDIuNDM2MTg1XSB4MTE6IDAwMDAwMDAwMDAwMDAwMDAgeDEwOiAwMDAwMDAwMDAwMDAwYTEw
IHg5IDogZmZmZjAwMDAwMWFhN2E3NAo+Pj4+IFsgICAgMi40Mzg5NThdIHg4IDogZmVmZWZlZmVm
ZWZlZmVmZiB4NyA6IDAwMDAwMDAwMDAwMDAwMTggeDYgOiBmZmZmMDAwMDAxYWE3YTc0Cj4+Pj4g
WyAgICAyLjQ0MTY2OF0geDUgOiAwMDAwNzM3NDZlNjU3NjY1IHg0IDogMDAwMDAwMDAwMDAwMDAy
ZiB4MyA6IGZmZmYwMDAwMDM1NmM4MDgKPj4+PiBbICAgIDIuNDQ0NDA3XSB4MiA6IGZmZmY4MDAw
MDkzNzNkYTQgeDEgOiAwMDAwMDAwMDAwMDBlMmFjIHgwIDogZmZmZjgwMDAwODg4ZWIzNAo+Pj4+
IFsgICAgMi40NDcxOTBdIENhbGwgdHJhY2U6Cj4+Pj4gWyAgICAyLjQ0OTU1N10gIHJvY2tjaGlw
X3VzYjJwaHlfb3RnX3NtX3dvcmsrMHg1MC8weDMzMAo+Pj4+IFsgICAgMi40NTIxNjldICBwcm9j
ZXNzX29uZV93b3JrKzB4MWQ4LzB4MzgwCj4+Pj4gWyAgICAyLjQ1NDY4NF0gIHdvcmtlcl90aHJl
YWQrMHgxNzAvMHg0ZTAKPj4+PiBbICAgIDIuNDU3MDU2XSAga3RocmVhZCsweGQ4LzB4ZGMKPj4+
PiBbICAgIDIuNDU5MzU0XSAgcmV0X2Zyb21fZm9yaysweDEwLzB4MjAKPj4+PiBbICAgIDIuNDYx
NzI4XSBDb2RlOiA5MTAzNzAxNSAyOTViZTAwMSBmOTQwM2M3NyBiOTQwZTQxMyAoZjk0MDA2ZTAp
Cj4+Pj4gWyAgICAyLjQ2NDMzOF0gLS0tWyBlbmQgdHJhY2UgMDAwMDAwMDAwMDAwMDAwMCBdLS0t
Cj4+Pj4KPj4+PiBBbSAyMi4wNi4yMiB1bSAwMjozMSBzY2hyaWViIFBldGVyIEdlaXM6Cj4+Pj4+
IFRoZSBpbml0aWFsIG90ZyBzdGF0ZSBmb3IgdGhlIHBoeSBkZWZhdWx0cyB0byBkZXZpY2UgbW9k
ZS4gVGhlIGFjdHVhbAo+Pj4+PiBzdGF0ZSBpc24ndCBkZXRlY3RlZCB1bnRpbCBhbiBJRCBJUlEg
ZmlyZXMuIEZpeCB0aGlzIGJ5IHN5bmNpbmcgdGhlIElECj4+Pj4+IHN0YXRlIGR1cmluZyBpbml0
aWFsaXphdGlvbi4KPj4+Pj4KPj4+Pj4gRml4ZXM6IDUxYTliMmMwM2RkMyAoInBoeTogcm9ja2No
aXAtaW5uby11c2IyOiBIYW5kbGUgSUQgSVJRIikKPj4+Pj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIg
R2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+ICAgZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIHwgNiArKysrKysKPj4+Pj4gICAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4+Pj4+Cj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMgYi9kcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMKPj4+Pj4gaW5kZXggNjcxMTY1OWY3Mjdj
Li42ZTQ0MDY5NjE3ZGYgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+Pj4+PiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtaW5uby11c2IyLmMKPj4+Pj4gQEAgLTExNjIsNiArMTE2MiwxMiBAQCBzdGF0
aWMgaW50IHJvY2tjaGlwX3VzYjJwaHlfb3RnX3BvcnRfaW5pdChzdHJ1Y3Qgcm9ja2NoaXBfdXNi
MnBoeSAqcnBoeSwKPj4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBF
WFRDT05fVVNCX0hPU1QsICZycG9ydC0+ZXZlbnRfbmIpOwo+Pj4+PiAgICAgICAgICAgICAgIGlm
IChyZXQpCj4+Pj4+ICAgICAgICAgICAgICAgICAgICAgICBkZXZfZXJyKHJwaHktPmRldiwgInJl
Z2lzdGVyIFVTQiBIT1NUIG5vdGlmaWVyIGZhaWxlZFxuIik7Cj4+Pj4+ICsKPj4+Pj4gKyAgICAg
ICAgICAgICBpZiAoIW9mX3Byb3BlcnR5X3JlYWRfYm9vbChycGh5LT5kZXYtPm9mX25vZGUsICJl
eHRjb24iKSkgewo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgLyogZG8gaW5pdGlhbCBzeW5j
IG9mIHVzYiBzdGF0ZSAqLwo+Pj4+PiArICAgICAgICAgICAgICAgICAgICAgcmV0ID0gcHJvcGVy
dHlfZW5hYmxlZChycGh5LT5ncmYsICZycG9ydC0+cG9ydF9jZmctPnV0bWlfaWQpOwo+Pj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgZXh0Y29uX3NldF9zdGF0ZV9zeW5jKHJwaHktPmVkZXYsIEVY
VENPTl9VU0JfSE9TVCwgIXJldCk7Cj4+Pj4+ICsgICAgICAgICAgICAgfQo+Pj4+PiAgICAgICB9
Cj4+Pj4+Cj4+Pj4+ICAgb3V0Ogo+Pj4+Cj4+Pj4gR3J1w58sCj4+Pj4gLS0KPj4+PiBNYXJrdXMg
UmVpY2hsCj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+Pj4gTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
