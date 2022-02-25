Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BEE2C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 15:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EBOAbtYVi15NvJVYyAnI9sA0abvpk3dyN8aXDBH75mA=; b=KFDYLeguxRExXyJ/613uXHf5VP
	sMJDTs7+4xe29vBdPVy6IPV1N3FHUQ+Fl1bGUG4vpJAnE6q3zj5XoG+geNtec1pP+86yPwlMfAb/1
	onVQkA4FdA5dGOQ2hTy1ipRi1kkA3U+SZJhRwh3ORb3lNXooZPOYyAFayPzgHQM0lry1YeBDbhC9u
	v9KSkdwCxsgcRCz2Q7B55dRg1oy7VosDdOwV5US2thwbkFHw9U8AOhcNYlCJzsHMZeBKa12RwSIjp
	PDGhdKz3ohIW3jOAg2Lkss0dEGkPj9LyHuE8PQx/n3EzDxzISeDxSrdYq02jb6FUJWbXLxwMjmIqE
	l8XYl7Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNcmC-005gBo-EX; Fri, 25 Feb 2022 15:45:00 +0000
Received: from mail-am6eur05on2062f.outbound.protection.outlook.com
 ([2a01:111:f400:7e1b::62f]
 helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNcko-005fgV-0p; Fri, 25 Feb 2022 15:43:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gomPrv3Up4a4Xy5wJ+JreUN1YZSMKeFlesmFVJ0mfKcDPDN0U2bhiiGuXqOvDu7AGoSRYRECsN9Pf/Yt+3fIbHvxkyf1FEzpM+sQQO6APgD9Ex7Yki35hDIrcUJRZtcwq7o0GBckyGzeW0H0guEEfkcBw3pgJ2cxQFIy+apxQqF2iHlU7Fd2KFbSxaaHxOhuIVlEHE2Et3chW0v9rB3Kjmd7vZOGuI5qlLvUuVq+Oli8cYuAQHQslQ0ZRsamtusmt/xhktev7r8e2dfItSqfEyRHYima3Gn3jwhSAczesPUbGvh0LJjluxjhz3T4iDptylJNfWQHgW7aP4CWUSaTew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/PFWIGMLBVFYyRoRqOy9GZLLhCqdluI4o57L2C3p3z8=;
 b=HJcC9sXcPiIuAug+7VAQvG/dct9+uFt+keyvCRj5Am4Pa+jfwvsS3iB37J372WFAODsXUBIxf3JTogTO8wzTY2us57e9mgqE0Fgnlhfr1wGpwdWoICrhO8XSQz/UceB2lnFq43Z35KF2lhN6L8Eoe6lbop9KJs2FbiD3QOChQBokXcMGArzr6xWcy6OSTzXYArtRa15o2mjPxQvKxhCbibrFujvb908u1pny6peNyLY2C4UTovI0uvwIrhCxJjPtiSMHZKSmyPqY1w3D2IMffLFLqPubd6mEmDSd3kmPtdJONGcSgppRbruOIScicLBb9RSLbm9YtuZfgzXfuK0Ilg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/PFWIGMLBVFYyRoRqOy9GZLLhCqdluI4o57L2C3p3z8=;
 b=LRsoWl3/9ZxPH8mt3nCv9iR6mKCogHdMYBdFaYwIjU1FRX+SgdGzd56CDwq/nRrOCx8T8bzu5NpMguY4EdUc0ntt4AAxKsme6Fz2CBkxdikU8d3eIxQ2Bb4EDU+vPe63Tx9WTWG74jWdZLwttUWmm3MNWxPsTLxHt3XU1VCKKBM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com (2603:10a6:3:e1::23)
 by PAXPR08MB7004.eurprd08.prod.outlook.com (2603:10a6:102:203::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.25; Fri, 25 Feb
 2022 15:43:30 +0000
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::f9ee:a333:b115:5049]) by HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::f9ee:a333:b115:5049%4]) with mapi id 15.20.4995.028; Fri, 25 Feb 2022
 15:43:30 +0000
Message-ID: <53bf7d2c-baed-75fc-41e9-63166beec414@wolfvision.net>
Date: Fri, 25 Feb 2022 16:43:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v2 1/4] arm64: dts: rockchip: move power domain PD_PIPE to
 rk356x
Content-Language: en-US
To: Robin Murphy <robin.murphy@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Frank Wunderlich <frank-w@public-files.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Simon Xue <xxm@rock-chips.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
References: <20220225131602.2283499-1-michael.riesch@wolfvision.net>
 <20220225131602.2283499-2-michael.riesch@wolfvision.net>
 <2939d801-586d-85fd-97ef-d42925ddecce@arm.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <2939d801-586d-85fd-97ef-d42925ddecce@arm.com>
X-ClientProxiedBy: ZR0P278CA0049.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::18) To HE1PR0802MB2426.eurprd08.prod.outlook.com
 (2603:10a6:3:e1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 719b27e6-8ea6-4ffc-4f13-08d9f8759225
X-MS-TrafficTypeDiagnostic: PAXPR08MB7004:EE_
X-Microsoft-Antispam-PRVS: <PAXPR08MB700439749539E055ED5194FAF23E9@PAXPR08MB7004.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ecWDKdp2Os6WSif4MCppkA9qJ89f1PzaNkD+VrET0LCkzwkymKsmwGSfVyaeq7vpRCtxFH1nThfIqrWSQml4fVZdkJ+0wbgmoYFmv/x6OaQIi02SrWQj/4PjqWaP/dP96BwHOkcKmIRe8eK9NMVsGmOqXDykXPeClLVsO4U04okktaILJNV/aldJF063zoPU9E78bbqtGZ5FeBrTT8Vdm5jFRVdnirRaevp03fwFelRZJ6/GI3/MWHBxuVAwoIX55yy+ulMQkO7GZLtwgiVHTcBuc+30lQRex79XEviAQG206lB2VPaq+8/QM0J/Uzn7cFuc/4wOiUXvqUfORMr9rzrhuftM+rEvNTvbOgv6jsQxNMmXhaa3uM1EiO87nobqriTDob+5ZgXNhJasPjxj7Zt537CVF6lXacEJDatyu8yGh1HG6BBPgQvpYIlLQEqz0FFtGwA+SM4XtgJOiJNq06Gc3olzbKnK2c+wWwpeGq5aKsLy8XNwp6fDXbaPArW3rZB5rfRyGQiA0zKX2H1rpmfh7znR2Ndc84EtsONsyxNjJF3TV+G5kQHSCzkZc/ZnYguKMzHCH+UN2Jyy4UWreWCbL7Gw35GDcEyCQMhS0KNTTu2Hy/BvfPhhr/0rD8T/z7i+NNi8Ota7eWOMnyUF85Imeli28TI8ZOjLxuCVhIQnfZb9rLkO2BxfOBHkcHqOwswc74bqhB62N2fGkpN8p/0GhcYspzSKze2roNRgRHzieDZPViVs8DHZi2Q/INaKxdrFVf83evXSQ0g+YQp9ZT1qHVwOVp0NcT4igHRF4Ls=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0802MB2426.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(39850400004)(376002)(366004)(346002)(136003)(396003)(44832011)(2616005)(6512007)(8936002)(83380400001)(31696002)(6506007)(31686004)(508600001)(53546011)(6666004)(316002)(6486002)(54906003)(86362001)(36756003)(52116002)(5660300002)(4326008)(7416002)(38100700002)(186003)(66946007)(2906002)(8676002)(66476007)(66556008)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UFU4aGhvVmZlUVo1MlMwSUM0NE1Eckk5SmwxdSs0b2VoM0dON3JuZFdodG1j?=
 =?utf-8?B?ZWc1aVdaOWFnakh4MHpIeEsyVUVDVHhhNCt6TWltVkZ0Zk5EdUg1SXRQZUQ3?=
 =?utf-8?B?M0xJQ2xLTTdiWnc0dTA3SzM4SE52NUhVVkxEUzYwWjZlSkhPb1BHbHU4bDNq?=
 =?utf-8?B?c3RRR2tiblU3SUswNFZaWklzVGp4b1ZBZG93RWJqeVBhVjRrdGZNdkprcUkr?=
 =?utf-8?B?bTBuRS9WbFFKUitMVXp3QlJNSnJIamFuNlhHazFyVTRMZTVSOHpSZ0kxYmtD?=
 =?utf-8?B?ajZoMTNzK1NsV1hBTnkzc2xkazBldFZNYkVjdXdkTm13eCs3ZUplOGIyYXRP?=
 =?utf-8?B?T3VSL3V1dmoraWRleXdjOWduSnJONHB2bGdwYUZTRDJwYVpnWmlwcHRkditK?=
 =?utf-8?B?Mzk5YVZ6cHZicVBYTzZQTWJQMTNaWHNUR2YxS3l1YjFIbVZLQ1NXYm1PbG1V?=
 =?utf-8?B?TDBYVWlWdGZ0Y0Z4MGZLTFBIcVRPZTJkeTlFV1VFZUo2bUJaam1BU2FJRFZH?=
 =?utf-8?B?QUNHMkFSUWhsaTU5Z1MwNU5IN2NWdmhjVUdqRDd5VFMzRkhSVEZsQmdQdG83?=
 =?utf-8?B?T0MxWndWNURUV1dldnpEZ1FqWjdZcVNmZGk5cmpReHI5NkNGeElZbnkzQ1dQ?=
 =?utf-8?B?UGs3bHFCNmNqOEJaUzkwZ0UxdmpyNEExeGF1dGE5TFg4U2g4amdJVm9hN1FS?=
 =?utf-8?B?aTA3d2IzWmg5RW1KUnI5Ky9tWDBHZ1J1RnJISDQ5UjlsWUFvVUxnVDlDbW1l?=
 =?utf-8?B?NmkwWElDZkN3QlQvL2QzQS9jdGNYbk9wbnprTEZZa1FMcGtERDJmbGR2bVF5?=
 =?utf-8?B?ekhnVEFQSjd2WDVXa3FsNjNmRzd4VDNjK0xsU1hBOHowOFpxMWhsdG5Id29H?=
 =?utf-8?B?bDMwLzZ2aFJMbHhVbXVESEtDYWU3OTV6VHkzaW8zOWl4a2ZGZ2J6U3lLMHoz?=
 =?utf-8?B?dnJ1ZjREKzhXUEt0Rkg5WUV2Q1ZOV0ZOMnQ4SVEzaXZtUVo3RDZYRFhHdWRM?=
 =?utf-8?B?bGdyZXdJbzZxeHV3cEMzUVIxNlhqOEZ0SmVDR0JJN3dSU09Ic1FKNTZGTDdZ?=
 =?utf-8?B?Qm1vYVNxRHhDUXJGZW5CYW5ZVUovdUM1TTBBWnZWVVJmZWxkZndLZUtQK2cz?=
 =?utf-8?B?MGVhVGNxc0RSQXNMckQ2WFljcUE0b1g3WFdNUHl1WDJ1L2szM0NGV1lTdjhC?=
 =?utf-8?B?UzhHM2hEdW5JQlgzNVZ1dmpQRis3TkdWcTl5ME9hSEZWUjVWUnNhVnNKK05M?=
 =?utf-8?B?U2s5aCt5UlBvUDJNeC8xTWM0dEdrNDlLaXY0c3J4d2xzZWlVbVZ5ZXlBSlU2?=
 =?utf-8?B?SEMxQWQ2VVdGTHA3SWNqZ08vWFVkQXBFUG1FMTBhUHgram80K2lycDlLczc3?=
 =?utf-8?B?bldMQy9Fd0ZmR05PZGJiYVN2Y1pHN3VXZEhaczBhWW41NnFWMWhSR0kreUQx?=
 =?utf-8?B?UW5Gd2hpTVhvYkdqZng1L2J0UXhMaHNLWE40WEZqd0Y1eUlCeUd2Vk03NFNi?=
 =?utf-8?B?YWR1cHpTbUw5eG5NRDFUMUJhRGNxbW5GSFNwSzlCNXVsbktFUGpFQ1BtT083?=
 =?utf-8?B?bWVHcHF1RGZreXgzQ0JpZ2p5RlRBOGpJNGg2aTJwS2VLYVY2cjgrK0xRaG1q?=
 =?utf-8?B?NGhHK0V2OVZPekZUbDV3SVNqTVpTT2RvOTduYUtFTUpqMDRwUks2VnRhcTQv?=
 =?utf-8?B?SmhjS3hJU2taN21DOGNicFMrbXNEYVZCN21VSlZJRHgrSlEwWnlOejExOVRQ?=
 =?utf-8?B?TDBEak1mc3ZZbHFpc2ZJWG1rZkpUSTRmb1FPblJUNVM1b2RtNm5PR1dmc3Jm?=
 =?utf-8?B?ZHBxMnJkb1cxOVpOQTRIUjJKWUg5ZUVhWk03c3poOW1KVk9QVG9sR0JDSGhi?=
 =?utf-8?B?SkFvKzcwd25ISERFZUdhN0RXbG9CaXlTdkg5NFZVbGMrOERrQUZjOE1FYVg0?=
 =?utf-8?B?WCtjSnlRckFubHV2WmVYaHUxc3FnWWJBbStLWXZwWXRMMlYyY1VWMlpHakFi?=
 =?utf-8?B?THc3c0wxc0M3c3NlampBc3ovYnE3Z05wQ21JSHZVUy9mdTZQeVdtV1ZQZTA3?=
 =?utf-8?B?Q2tGTjZNNXZ6U3h5elE2R1hQOFEzeUJVLzA3L1djQTROODlwY1FYQU03QmF3?=
 =?utf-8?B?SjlQQWtVK2ZZY09BcitFRXgyUzE1T1BVbXAzRHpBOFBaUGNuSVdIbVRkOTl0?=
 =?utf-8?B?UG1VUnh4UnA5MzNLZ2srU2xMYXNRWGhGS1B6NDVKK1J6QmhHNi80RzFGVnNo?=
 =?utf-8?B?Z1hZSEwzN21WRjRsQXVHUWtCMmV3eTIvZG9vV01VUTdtRjJjUkRyajloWDhU?=
 =?utf-8?B?UzdORWZBRXhpLzA5ZkYwT1pud1hxQXBsWEFIY1NsOUYxcXpZeXU5S2RvVGMr?=
 =?utf-8?Q?b2Xv1MVAMel+6t/4=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 719b27e6-8ea6-4ffc-4f13-08d9f8759225
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0802MB2426.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 15:43:29.8135 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xnx+RMDsw+u3aN1Qgm4BKICHHsGeS7iEeqkkg2YiCIx7P/b8U9NDvOCG/V7mHFDt2x3tfFKHWbbzkQWkya3Vz4vu6L/RwMSbuEEwzTZjGP0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB7004
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_074334_203934_78A7D1B4 
X-CRM114-Status: GOOD (  17.88  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9iaW4sCgpPbiAyLzI1LzIyIDE1OjE0LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMjAy
Mi0wMi0yNSAxMzoxNSwgTWljaGFlbCBSaWVzY2ggd3JvdGU6Cj4+IFRoZSBwb3dlciBkb21haW4g
UERfUElQRSB3YXMgbW92ZWQgdG8gdGhlIFJLMzU2OCBzcGVjaWZpYyBkdHNpIGJ1dAo+PiBpcyBh
dmFpbGFibGUgb24gdGhlIFJLMzU2NiBhcyB3ZWxsLiBNb3ZlIGl0IGJhY2sgdG8gdGhlIHNoYXJl
ZCBkdHNpLgo+IAo+IE5vdGUgdGhhdCBhIGNvcnJlc3BvbmRpbmcgZGVmaW5pdGlvbiBkb2VzIGFs
cmVhZHkgZXhpc3QgaW4gcmszNTY4LmR0c2kuCj4gVGhhdCBvbmUgKmNvdWxkKiBpbmhlcml0IHRo
ZSBiYXNlIGRlZmluaXRpb24gYW5kIG9ubHkgb3ZlcnJpZGUgdGhlCj4gInBtX3FvcyIgcHJvcGVy
dHksIGJ1dCBsb29raW5nIGJhY2sgdG8gdGhlIG9yaWdpbmFsIHBhdGNoIHNlcmllcyBpdAo+IHNl
ZW1zIGxpa2Ugbm90IGRvaW5nIHRoYXQgd2FzIGEgZGVsaWJlcmF0ZSBjaG9pY2UuCgpPSywgbXkg
YmFkLiBJIG92ZXJsb29rZWQgdGhhdCBib3RoIHJrMzU2NiBhbmQgcmszNTY4IGhhdmUgdGhlaXIK
ZGVmaW5pdGlvbiBpbiB0aGVpciBkdHNpIGZpbGVzLCBzbyB0aGVyZSBpcyBubyBuZWVkIGZvciB0
aGlzIHBhdGNoLgpTb3JyeSBmb3IgdGhlIGNvbmZ1c2lvbiEKCkJlc3QgcmVnYXJkcywKTWljaGFl
bAoKPiAKPiBSb2Jpbi4KPiAKPj4gU2lnbmVkLW9mZi1ieTogTWljaGFlbCBSaWVzY2ggPG1pY2hh
ZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0Pgo+PiAtLS0KPj4gwqAgYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjguZHRzaSB8IDE2IC0tLS0tLS0tLS0tLS0tLS0KPj4gwqAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaSB8IDE0ICsrKysrKysrKysrKysrCj4+
IMKgIDIgZmlsZXMgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCj4+
Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNp
Cj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+PiBpbmRleCA5
MWEwYjc5OGI4NTcuLmVjYzBmMzAxNTkxNSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2OC5kdHNpCj4+IEBAIC0xMDAsMTkgKzEwMCwzIEBAIG9wcC0xOTkyMDAwMDAw
IHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIG9wcC1taWNyb3ZvbHQgPSA8MTE1MDAwMCAxMTUwMDAw
IDExNTAwMDA+Owo+PiDCoMKgwqDCoMKgIH07Cj4+IMKgIH07Cj4+IC0KPj4gLSZwb3dlciB7Cj4+
IC3CoMKgwqAgcG93ZXItZG9tYWluQFJLMzU2OF9QRF9QSVBFIHsKPj4gLcKgwqDCoMKgwqDCoMKg
IHJlZyA9IDxSSzM1NjhfUERfUElQRT47Cj4+IC3CoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmNy
dSBQQ0xLX1BJUEU+Owo+PiAtwqDCoMKgwqDCoMKgwqAgcG1fcW9zID0gPCZxb3NfcGNpZTJ4MT4s
Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZxb3NfcGNpZTN4MT4sCj4+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgPCZxb3NfcGNpZTN4Mj4sCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPCZxb3Nfc2F0YTA+LAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmcW9zX3Nh
dGExPiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnFvc19zYXRhMj4sCj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZxb3NfdXNiM18wPiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA8JnFvc191c2IzXzE+Owo+PiAtwqDCoMKgwqDCoMKgwqAgI3Bvd2VyLWRvbWFpbi1j
ZWxscyA9IDwwPjsKPj4gLcKgwqDCoCB9Owo+PiAtfTsKPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2eC5kdHNpCj4+IGluZGV4IDhiOWZhZTNkMzQ4YS4uNzQyZjVhZGNkZjJi
IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNp
Cj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kKPj4gQEAg
LTQ5MCw2ICs0OTAsMjAgQEAgcG93ZXItZG9tYWluQFJLMzU2OF9QRF9SS1ZFTkMgewo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnFvc19ya3ZlbmNfd3Jf
bTA+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNwb3dlci1kb21haW4t
Y2VsbHMgPSA8MD47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+ICsKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcG93ZXItZG9tYWluQFJLMzU2OF9QRF9QSVBFIHsKPj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8UkszNTY4X1BEX1BJUEU+Owo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmY3J1IFBDTEtfUElQRT47
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcG1fcW9zID0gPCZxb3NfcGNpZTJ4
MT4sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmcW9zX3Bj
aWUzeDE+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnFv
c19wY2llM3gyPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PCZxb3Nfc2F0YTA+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8JnFvc19zYXRhMT4sCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDwmcW9zX3NhdGEyPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgPCZxb3NfdXNiM18wPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgPCZxb3NfdXNiM18xPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAjcG93ZXItZG9tYWluLWNlbGxzID0gPDA+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9
Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gwqDCoMKgwqDCoCB9Owo+PiDCoCAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
