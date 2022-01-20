Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F9C7C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jan 2022 03:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCuACbk0wi00/tCfsABjHS0XtiDop3BFXTnk23ag37A=; b=2dAEGLaF3W2p/4
	1s0kNW1qv8D8yK2TUlzHibYtnsTdzeKNcrHPJwXvfU0r+7xqhxX71zYMqUEcvbb2rl1BDHLGOarWW
	oIF+7cgxBpW7oaMNJgnmf/KaswLUd14WT6tDEXTDPtHd5G+tiDZJUDLNJABDxpHbYEInKWvqLaddw
	Zxv2OJtngqilsItGr8huLuR4Q1WNxsFFOpfGk8aZMQDqc/1dp1MhFMkzFcXpBHa29nrv8QSjLmvjI
	jNtR4pF460A+Kcojw3q/5bcdELt86knmSOteXqFMIjHOhfUZEU40bfzYLZLJovUdW5AD4PGFHfgNF
	tDLAiORkZ1cXkdxcIPNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nANgt-008NbK-SM; Thu, 20 Jan 2022 03:00:47 +0000
Received: from mail-am6eur05on2067.outbound.protection.outlook.com
 ([40.107.22.67] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nANgq-008NYS-T2; Thu, 20 Jan 2022 03:00:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jpAYGNNXJa2DBFwcTU6iJi+RGIaD5w3i43HzHgzV/RHofnzzT00VTanYIywpyQMfagP4eE6Penta5mb8rANpX+UVdAoQ/v448jlXyCkRJQ8GJ8joaceEXBVWfUjUiZeeUoFhTVCyorNy4IftWlZjh07OFls9YzJ4VfQuIATNEnc2PVfEvQj1K0WK9Qpjrm8+7ZtdvssO9b2QJXYNG6q1RSDHfSifwXtMa1cfHni3iZ8qyH2XbR1tjdUNpPXNc94SMZhb+mbjDh4uUtFI8PrdKVfTwgK1NVSjpr5hw8k3AuyboMKQuFgiHKicHOs2AJAFXdPyu3ywNEcqxapYUhC0aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rMj01ajPBpWx5ev/RK2eW2F8kMpzQRF9eeP/VR0CHgo=;
 b=ROldc1bUNr+1kArgkRrQbu6P7J335ySgria/ZK7FL95anPxlY3fxVOUiRHGB4Hqn1j/NdmfklF4CjW1DMJKZBaUfrING9CTVwtuwX9rRbJfKEshnjwN4L5iVDwFpMCn0WAj6vkLZthMV/RyrZ5QgZ1XQ0n7YUEehCdTe0NTjBsPWPKe7j8d0NnrOuLdNZzVgTwq+JV5W9HHMybFJnhuRKA/M0uyKGqf62xXniCIbNAIpOvo141ly7nBjZaCLdzQ2DelrV4HzrGFQyF93PW/nQ5iJQE+eqAcYHNiIxt25TZOPzG6ybEvHW/T/D13qAOHz1oT3YQ0LfZyPOYh2/XBymg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rMj01ajPBpWx5ev/RK2eW2F8kMpzQRF9eeP/VR0CHgo=;
 b=SKge1wAHB9n2uF2ltIPsTlYSjp7/+paUEyQ/HEU3GCsLmZbP+HHM8pjGRxfidZ8jBOzE9enQC4qWL81NytwbubwTVnjjoTFjC/YLU+K80g6HWtE5lKHQZ+puZpWxFJiVF1f2KMfLlgDVglft2OV0QCaXf3OaVApyu5rwv4RhlSQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by VI1PR04MB5552.eurprd04.prod.outlook.com (2603:10a6:803:cc::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Thu, 20 Jan
 2022 03:00:41 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::a5b3:9e5:366:a3fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::a5b3:9e5:366:a3fc%3]) with mapi id 15.20.4909.008; Thu, 20 Jan 2022
 03:00:40 +0000
Message-ID: <c371d737fd5e7e19e966d7aec42da0c3edd9a556.camel@nxp.com>
Subject: Re: [PATCH v2] phy: dphy: Correct clk_pre parameter
From: Liu Ying <victor.liu@nxp.com>
To: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, Wyon
 Bi <bivvy.bi@rock-chips.com>
Cc: linux-imx@nxp.com, Andrzej Hajda <andrzej.hajda@intel.com>, Neil
 Armstrong <narmstrong@baylibre.com>, Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie
 <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Kevin Hilman
 <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,  Heiko Stuebner
 <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>, Guido
 =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Date: Thu, 20 Jan 2022 11:00:26 +0800
In-Reply-To: <20220119023714.1498508-1-victor.liu@nxp.com>
References: <20220119023714.1498508-1-victor.liu@nxp.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
X-ClientProxiedBy: SI2PR01CA0003.apcprd01.prod.exchangelabs.com
 (2603:1096:4:191::16) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 30b5a95d-1779-4dfd-c3ca-08d9dbc10aa6
X-MS-TrafficTypeDiagnostic: VI1PR04MB5552:EE_
X-Microsoft-Antispam-PRVS: <VI1PR04MB555202E741AFA686BB9CF2F6985A9@VI1PR04MB5552.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EK9DhlgfONIb7eclMLHGtH/hBfkNKrAaKPDxUCCCQ9cyqdGkBKMcsTZcKE+58V8uzFBL3EYXyuWlAEbhhu976+LDqix0X+zJOtywtMgDVSau+h8AvNTvqXDYRYYFYhmpUMZaXaX3usfQihl1+4m+1J5fNfBVbKWS8VYmJlJpBGDiNlXGFWrD8UVIKPpiRDd7sx9gY8Ws/vUlIwTqGI2QCsvF1ndhsrIkgazU9ZY8rmvB8cEofD7eJRhCikXX7hukbKgd6H7hVqMdLAs28QNxGoqE01ZXPKkevDGxwBDdYJ0HYsbwz6yFeFC3bJ+MHcFmcxPm13+P3nynTtRMNxurrUimETPrfFk57ZV/bcM2EUP69Zl207JmUPBRhOAJDcPe3sCZwSkBOMyiS3AxzEvFWMHt2Hi4GAxnDITlGXkvT4xwc0xPZTVLTDpZspomW1du6BcCcDzFigmpWkIu/Ed3uJiMf8QQDtZIpbDL566k8Hw/gc/FaaiUFBe7B8FJW+/pcg49ejCr3z9o2WvMLKqibQWqcm0cfL+wyYJKMdJFtGdcce23DkAsoCCop/o99eZEYAvCr+hgD1DEpDlLgxInlfI6UBi2BIN6rUYDhGpP4BsxBTP6PShoG1Su9cVYM4mS6MuWT25IkNSypasdyC7FwsbnjJDJ9ixelAA7pE19Sk6gGeJ7cD5B1GhHK3rLtC+QOkgzi6Xnp2Yixw6JYSO7Zg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(38100700002)(5660300002)(86362001)(316002)(38350700002)(54906003)(6512007)(66556008)(66946007)(6486002)(4326008)(66476007)(2906002)(6506007)(8676002)(83380400001)(6916009)(186003)(52116002)(8936002)(36756003)(26005)(7416002)(508600001)(6666004)(66574015)(2616005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWd1OUlDY0xFNDQzdTdRMjE1OERkTGVPaHZRaDJ1OWhWbVY4VU42YzQrc2tR?=
 =?utf-8?B?V3cyTThRNVlEUW5YQXcwMlVqK3ZMeHNJdU4vVzJKUllhUHJNUURMN2tiWTQ1?=
 =?utf-8?B?S05iTDFJMGhFc0ZHZ1pnQXRVdHhXeUROUmZVN25xcUlRd0hKOEdIMTEycU9o?=
 =?utf-8?B?SkF0YVVQSjNIQVowQWtTMDdUVnVPV3lsemhxRHdaVm9wVk5TRUlCMVlqdXF4?=
 =?utf-8?B?bmtUR2hWemRqd1lWR1laRXFFTEFiMDRmRnRlTjF3S3RpMVEwSlJzS21tRWRr?=
 =?utf-8?B?eGZIMzdyNFppYUU2T1NjeXN3cmQweWFrNWZXV2gxK1lBbmtla0V2LzRnYTJZ?=
 =?utf-8?B?RHg1MldZS2hEWk9GTjkzRWZIZm1LYkN6WXpiT2E3YjNUZEpLQjlXcVZ4RW15?=
 =?utf-8?B?d0kxTDhudE5MTFBUTmk2MC8yb0dvNEp1ajhET2RBcW5qRWV6c0twMUR1bVFE?=
 =?utf-8?B?MkR6SVp3OEpYNGJ5RDZjeVI0SURjSUxvWjdmbGNsb3E5d0haTEdROHptTDNW?=
 =?utf-8?B?Mk9oTkZNdXpxbXM0ZDlCRXZMa3RpRkhKNTdWcFRNNENwNW5XemNPcW9OWFU4?=
 =?utf-8?B?NkxJcXR0UFFoTzhPcmJ1MnpNYVBCemZKOFFDTW5mVExsMW5lZ1RMOFhYdi9R?=
 =?utf-8?B?OUNXZFJmUWQ2cFpZWXNVQmttVjJiU2oyRExYcFdaRHZILzBzVklrZGNjWVRQ?=
 =?utf-8?B?dHBFRndtMUN0aWhyZ2NlaTI2OE5EMFQyMFl1YlI4ZVRrdkVWUmlPSHB2QjFt?=
 =?utf-8?B?U2lrbVlxcnBrQU9hRk4wZmE1eDZ2TXpVK2lBUHpCS2k1ODZHTUhuT3U0eWQ5?=
 =?utf-8?B?WFdjUEZnSXFlZVZrdCtWUTVDV3kzRVBxeDBIc0pnNHljQkhzcVhjakljSC9C?=
 =?utf-8?B?NEVhVE5FcFpFV2V6dEdiQWlJMks0NE14SHB5SXNGR3FNRWJUbHFVeWFOa25E?=
 =?utf-8?B?NW9OQ1lyOE1uU2orTTU4bkFURG5ZYU1BZUQ3aEJYVTNZOC9Qak40YkROTUsy?=
 =?utf-8?B?S2dIY25hSGRRM08yWkxjRVBlMGVMTFNYTm1wRXNQTG1PVmJmcVV3TnlOY01R?=
 =?utf-8?B?bzFRV2VnQ0JKdHUxdG55YkpNelQveTFTNTMwdWplUUtSTTN5R01DTzdadHZB?=
 =?utf-8?B?VzZLTjF0czRtQXpyVjAzb1BPM2FDQ29pLzFzYmRzd0Z5WGpOd1dKQ3pMY2cr?=
 =?utf-8?B?MWpZcml3b1JQL3llc0YrQnd3QWl5akNNSUNIQnJ5ZHNldVFLbkxqK2RETDhO?=
 =?utf-8?B?MTcwUkJFZE1DSHc1bnBPVVBPUU9BYzNSWkh6N09rcmhKblpnZDEyTC9zUFhB?=
 =?utf-8?B?eEFZbU5YSlZxNFl4aVpVZXVJWnJ2SmRwY09MUTVPRnUyNUZ6bTZKdzg0Nkwz?=
 =?utf-8?B?T3duU200N1dyK3pLemhwRkorYkhjVzJXVVc0L1pEWjBUUkNPbEVOSUJnby8v?=
 =?utf-8?B?RmVrQnZQL1E0SjM5bE5KRnNzTE9wZks5OUhlengvN2phajZwQm1XejFDRVEy?=
 =?utf-8?B?Q3JkeDZuY0prNk1xNmV1eE1sYWNsbUxJR1JkU1pUdkVtbWFoRDBXR0Q4aXY5?=
 =?utf-8?B?aWJFRjVrNUlRNWRJZXdxdGFtWlRxN2ZmZ3NNV3VGamx2akpubEFhQXdQRjkx?=
 =?utf-8?B?bTBkVVAzbjV6RkpYS1dISWMvenJmVU83aEVQR0VPb09NR2x6N0NXRGt6aCtK?=
 =?utf-8?B?ei9nWHJBNzJWSGlCY0tmMUZjRkF5NU11VGhyZll4K0FGazhPRXcvVVRwTkF2?=
 =?utf-8?B?aXV2SjZBYTl6cU1XNE9BN2Y2cVh5QXBwT2VXemFuMVQ2UTZmOUxZN3ZMVkIv?=
 =?utf-8?B?YVU5YUNCU1dnTXdVMjlGTVBqa213TTVkdjZyVXVFVW1YeGxDRG0yWURSM1dj?=
 =?utf-8?B?WHNJalhOZEcvenBQVm0vOUQzWVNGUmxYN2ZwVkoyUUtyL21CdmJMb3VsRnBN?=
 =?utf-8?B?MzM2anZoR3FIM3Z4U0F1TXpLdTByVUJYNUNjb1NSQVNmWHNRZFdObDl2a0E1?=
 =?utf-8?B?cjJaOGdiTFl1YWIraHJUSDFMTWpyNEpyTkFtUnhpbXVySTVCNjIvclB1QWI3?=
 =?utf-8?B?VUIvOE85R293U1E5N2RyRzdLWHp1UmZEbTU2L2k1clR4NmFiR3lhT3pDem45?=
 =?utf-8?B?MmpmN3dBMGFHc2F6VitHTGtUdG1Hb1NLMjVjN1JOZG0xWS9ydWpOR2VJSFcz?=
 =?utf-8?Q?FiTd4RprR/iJlSDTLa318l0=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30b5a95d-1779-4dfd-c3ca-08d9dbc10aa6
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2022 03:00:40.6475 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CVC95ur+6RwNLWgenzfAg59/vx3uVGx4G5B5HdVbyUNWINjupT+S1n29o7DaUq744grDxAZGXuOKhzeUndOevQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5552
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_190045_040079_DA8E894F 
X-CRM114-Status: GOOD (  27.98  )
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

SGkgSGVpa28sIFd5b24sCgpPbiBXZWQsIDIwMjItMDEtMTkgYXQgMTA6MzcgKzA4MDAsIExpdSBZ
aW5nIHdyb3RlOgo+IFRoZSBELVBIWSBzcGVjaWZpY2F0aW9uICh2MS4yKSBleHBsaWNpdGx5IG1l
bnRpb25zIHRoYXQgdGhlIFQtQ0xLLVBSRQo+IHBhcmFtZXRlcidzIHVuaXQgaXMgVW5pdCBJbnRl
cnZhbChVSSkgYW5kIHRoZSBtaW5pbXVtIHZhbHVlIGlzIDguICBBbHNvLAo+IGtlcm5lbCBkb2Mg
b2YgdGhlICdjbGtfcHJlJyBtZW1iZXIgb2Ygc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19taXBp
X2RwaHkKPiBtZW50aW9ucyB0aGF0IGl0IHNob3VsZCBiZSBpbiBVSS4gIEhvd2V2ZXIsIHRoZSBk
cGh5IGNvcmUgZHJpdmVyIHdyb25nbHkKPiBzZXRzICdjbGtfcHJlJyB0byA4MDAwLCB3aGljaCBz
ZWVtcyB0byBoaW50IHRoYXQgaXQncyBpbiBwaWNvc2Vjb25kcy4KPiBBbmQsIHRoZSBrZXJuZWwg
ZG9jIG9mIHRoZSAnY2xrX3ByZScgbWVtYmVyIHdyb25nbHkgc2F5cyB0aGUgbWluaW11bSB2YWx1
ZQo+IGlzICc4IFVJJywgaW5zdGVhZCBvZiA4Lgo+IAo+IFNvLCBsZXQncyBmaXggYm90aCB0aGUg
ZHBoeSBjb3JlIGRyaXZlciBhbmQgdGhlIGtlcm5lbCBkb2Mgb2YgdGhlICdjbGtfcHJlJwo+IG1l
bWJlciB0byBjb3JyZWN0bHkgcmVmbGVjdCB0aGUgVC1DTEstUFJFIHBhcmFtZXRlcidzIHVuaXQg
YW5kIHRoZSBtaW5pbXVtCj4gdmFsdWUgYWNjb3JkaW5nIHRvIHRoZSBELVBIWSBzcGVjaWZpY2F0
aW9uLgo+IAo+IEknbSBhc3N1bWluZyB0aGF0IGFsbCBpbXBhY3RlZCBjdXN0b20gZHJpdmVycyBz
aGFsbCBwcm9ncmFtIHZhbHVlcyBpbgo+IFR4Qnl0ZUNsa0hTIGN5Y2xlcyBpbnRvIGhhcmR3YXJl
IGZvciB0aGUgVC1DTEstUFJFIHBhcmFtZXRlci4gIFRoZSBELVBIWQo+IHNwZWNpZmljYXRpb24g
bWVudGlvbnMgdGhhdCB0aGUgZnJlcXVlbmN5IG9mIFR4Qnl0ZUNsa0hTIGlzIGV4YWN0bHkgMS84
Cj4gdGhlIEhpZ2gtU3BlZWQoSFMpIGJpdCByYXRlKGVhY2ggSFMgYml0IGNvbnN1bWVzIG9uZSBV
SSkuICBTbywgcmVsZXZhbnQKPiBjdXN0b20gZHJpdmVyIGNvZGUgaXMgY2hhbmdlZCB0byBwcm9n
cmFtIHRob3NlIHZhbHVlcyBhcwo+IERJVl9ST1VORF9VUChjZmctPmNsa19wcmUsIEJJVFNfUEVS
X0JZVEUpLCB0aGVuLgo+IAo+IE5vdGUgdGhhdCBJJ3ZlIG9ubHkgdGVzdGVkIHRoZSBwYXRjaCB3
aXRoIFJNNjcxOTEgRFNJIHBhbmVsIG9uIGkuTVg4bXEgRVZLLgo+IEhlbHAgaXMgbmVlZGVkIHRv
IHRlc3Qgd2l0aCBvdGhlciBpLk1YOG1xLCBNZXNvbiBhbmQgUm9ja2NoaXAgcGxhdGZvcm1zLAo+
IGFzIEkgZG9uJ3QgaGF2ZSB0aGUgaGFyZHdhcmVzLgo+IAo+IEZpeGVzOiAyZWQ4Njk5OTBlMTQg
KCJwaHk6IEFkZCBNSVBJIEQtUEhZIGNvbmZpZ3VyYXRpb24gb3B0aW9ucyIpCj4gQ2M6IEFuZHJ6
ZWogSGFqZGEgPGFuZHJ6ZWouaGFqZGFAaW50ZWwuY29tPgo+IENjOiBOZWlsIEFybXN0cm9uZyA8
bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+Cj4gQ2M6IFJvYmVydCBGb3NzIDxyb2JlcnQuZm9zc0Bs
aW5hcm8ub3JnPgo+IENjOiBMYXVyZW50IFBpbmNoYXJ0IDxMYXVyZW50LnBpbmNoYXJ0QGlkZWFz
b25ib2FyZC5jb20+Cj4gQ2M6IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPiBDYzog
SmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQGdtYWlsLmNvbT4KPiBDYzogRGF2aWQgQWly
bGllIDxhaXJsaWVkQGxpbnV4LmllPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwu
Y2g+Cj4gQ2M6IEtpc2hvbiBWaWpheSBBYnJhaGFtIEkgPGtpc2hvbkB0aS5jb20+Cj4gQ2M6IFZp
bm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+Cj4gQ2M6IEtldmluIEhpbG1hbiA8a2hpbG1hbkBi
YXlsaWJyZS5jb20+Cj4gQ2M6IEplcm9tZSBCcnVuZXQgPGpicnVuZXRAYmF5bGlicmUuY29tPgo+
IENjOiBNYXJ0aW4gQmx1bWVuc3RpbmdsIDxtYXJ0aW4uYmx1bWVuc3RpbmdsQGdvb2dsZW1haWwu
Y29tPgo+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+IENjOiBNYXhpbWUg
UmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+Cj4gQ2M6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2ln
eGNwdS5vcmc+Cj4gVGVzdGVkLWJ5OiBMaXUgWWluZyA8dmljdG9yLmxpdUBueHAuY29tPiAjIFJN
NjcxOTEgRFNJIHBhbmVsIG9uIGkuTVg4bXEgRVZLCj4gU2lnbmVkLW9mZi1ieTogTGl1IFlpbmcg
PHZpY3Rvci5saXVAbnhwLmNvbT4KPiAtLS0KPiB2MS0+djI6Cj4gKiBVc2UgQklUU19QRVJfQllU
RSBtYWNyby4gKEFuZHJ6ZWopCj4gKiBEcm9wIGRzaSBhcmd1bWVudCBmcm9tIHVpMmJjKCkgaW4g
bndsLWRzaS5jLgo+IAo+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYyAgICAgICAg
ICAgICAgICAgfCAxMiArKysrKy0tLS0tLS0KPiAgZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVz
b24tYXhnLW1pcGktZHBoeS5jICAgIHwgIDMgKystCj4gIGRyaXZlcnMvcGh5L3BoeS1jb3JlLW1p
cGktZHBoeS5jICAgICAgICAgICAgICAgICB8ICA0ICsrLS0KPiAgZHJpdmVycy9waHkvcm9ja2No
aXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jIHwgIDMgKystCj4gIGluY2x1ZGUvbGludXgv
cGh5L3BoeS1taXBpLWRwaHkuaCAgICAgICAgICAgICAgICB8ICAyICstCj4gIDUgZmlsZXMgY2hh
bmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpbLi4uXQoKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9waHkvcGh5LWNvcmUtbWlwaS1kcGh5LmMgYi9kcml2ZXJzL3BoeS9waHkt
Y29yZS1taXBpLWRwaHkuYwo+IGluZGV4IDI4OGM5YzY3YWE3NC4uY2NiNDA0NTY4NWNkIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLW1pcGktZHBoeS5jCj4gKysrIGIvZHJpdmVy
cy9waHkvcGh5LWNvcmUtbWlwaS1kcGh5LmMKPiBAQCAtMzYsNyArMzYsNyBAQCBpbnQgcGh5X21p
cGlfZHBoeV9nZXRfZGVmYXVsdF9jb25maWcodW5zaWduZWQgbG9uZyBwaXhlbF9jbG9jaywKPiAg
Cj4gIAljZmctPmNsa19taXNzID0gMDsKPiAgCWNmZy0+Y2xrX3Bvc3QgPSA2MDAwMCArIDUyICog
dWk7Cj4gLQljZmctPmNsa19wcmUgPSA4MDAwOwo+ICsJY2ZnLT5jbGtfcHJlID0gODsKPiAgCWNm
Zy0+Y2xrX3ByZXBhcmUgPSAzODAwMDsKPiAgCWNmZy0+Y2xrX3NldHRsZSA9IDk1MDAwOwo+ICAJ
Y2ZnLT5jbGtfdGVybV9lbiA9IDA7Cj4gQEAgLTk3LDcgKzk3LDcgQEAgaW50IHBoeV9taXBpX2Rw
aHlfY29uZmlnX3ZhbGlkYXRlKHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9kcGh5ICpj
ZmcpCj4gIAlpZiAoY2ZnLT5jbGtfcG9zdCA8ICg2MDAwMCArIDUyICogdWkpKQo+ICAJCXJldHVy
biAtRUlOVkFMOwo+ICAKPiAtCWlmIChjZmctPmNsa19wcmUgPCA4MDAwKQo+ICsJaWYgKGNmZy0+
Y2xrX3ByZSA8IDgpCj4gIAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+ICAJaWYgKGNmZy0+Y2xrX3By
ZXBhcmUgPCAzODAwMCB8fCBjZmctPmNsa19wcmVwYXJlID4gOTUwMDApCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYyBiL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYwo+IGluZGV4IDM0N2Rj
NzlhMThjMS4uNjMwZTAxYjVjMTliIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYwo+IEBAIC01LDYgKzUsNyBAQAo+ICAgKiBBdXRo
b3I6IFd5b24gQmkgPGJpdnZ5LmJpQHJvY2stY2hpcHMuY29tPgo+ICAgKi8KPiAgCj4gKyNpbmNs
dWRlIDxsaW51eC9iaXRzLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9rZXJuZWwuaD4KPiAgI2luY2x1
ZGUgPGxpbnV4L2Nsay5oPgo+ICAjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+Cj4gQEAgLTM2NCw3
ICszNjUsNyBAQCBzdGF0aWMgdm9pZCBpbm5vX2RzaWRwaHlfbWlwaV9tb2RlX2VuYWJsZShzdHJ1
Y3QgaW5ub19kc2lkcGh5ICppbm5vKQo+ICAJICogVGhlIHZhbHVlIG9mIGNvdW50ZXIgZm9yIEhT
IFRjbGstcHJlCj4gIAkgKiBUY2xrLXByZSA9IFRwaW5fdHhieXRlY2xraHMgKiB2YWx1ZQo+ICAJ
ICovCj4gLQljbGtfcHJlID0gRElWX1JPVU5EX1VQKGNmZy0+Y2xrX3ByZSwgdF90eGJ5dGVjbGto
cyk7Cj4gKwljbGtfcHJlID0gRElWX1JPVU5EX1VQKGNmZy0+Y2xrX3ByZSwgQklUU19QRVJfQllU
RSk7CgpGb3IgdGhlIFJvY2tjaGlwIHBhcnQsIGNhbiB5b3UgcGxlYXNlIGdpdmUgYSB0ZXN0PyBB
bnkgY29tbWVudHM/CgpXZSBhbHJlYWR5IGhhdmUgVC1iIHRhZ3Mgb24gaS5NWDhtcSBhbmQgTWVz
b24gcGxhdGZvcm1zLgoKUmVnYXJkcywKTGl1IFlpbmcKCj4gIAo+ICAJLyoKPiAgCSAqIFRoZSB2
YWx1ZSBvZiBjb3VudGVyIGZvciBIUyBUbHB4IFRpbWUKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9waHkvcGh5LW1pcGktZHBoeS5oIGIvaW5jbHVkZS9saW51eC9waHkvcGh5LW1pcGktZHBo
eS5oCj4gaW5kZXggYTg3N2ZmZWU4NDVkLi41OWE1ZTc3YWI0MDkgMTAwNjQ0Cj4gLS0tIGEvaW5j
bHVkZS9saW51eC9waHkvcGh5LW1pcGktZHBoeS5oCj4gKysrIGIvaW5jbHVkZS9saW51eC9waHkv
cGh5LW1pcGktZHBoeS5oCj4gQEAgLTQyLDcgKzQyLDcgQEAgc3RydWN0IHBoeV9jb25maWd1cmVf
b3B0c19taXBpX2RwaHkgewo+ICAJICogdGhlIHRyYW5zbWl0dGVyIHByaW9yIHRvIGFueSBhc3Nv
Y2lhdGVkIERhdGEgTGFuZSBiZWdpbm5pbmcKPiAgCSAqIHRoZSB0cmFuc2l0aW9uIGZyb20gTFAg
dG8gSFMgbW9kZS4KPiAgCSAqCj4gLQkgKiBNaW5pbXVtIHZhbHVlOiA4IFVJCj4gKwkgKiBNaW5p
bXVtIHZhbHVlOiA4Cj4gIAkgKi8KPiAgCXVuc2lnbmVkIGludAkJY2xrX3ByZTsKPiAgCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
