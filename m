Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21359C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 10:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEc7pfbOlRDCJy0D+P5mHUoA0JyY6kc8ceCesw0JvvA=; b=WOdY5WhmjlBRj+
	jBtktejwoZwm2MQpnkAmKc9fLO8KTtTUYtpeVqUsdTQRiOBXaCbJu3JQkuTdw+ZGr6ioZWNlL5PCT
	fjPhlyk8y6x7FQsSIsr9jwqbEs96zvwinFpck2zz5vsO3U7ti1vGBq+Y8ZkhiwAGPU3S9vbQQTn1F
	uHYP2JnKSjKOUFREHF8k5vHu7UpfOa3zJcZikOoO8GmN/Bto0lEoAk2oeXfRhhAGiAnbyqxmoLbmz
	iH/TUZ/7KxQfpKKWPjhNqZNISnfmWXjFoZDIF0DBAPbjCjc1kOAjzZBZyhb5eLfdo7+HMoW8P7dBJ
	pmLpBqjejK4mZ0CmUNZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA7mm-004mS9-Vr; Wed, 19 Jan 2022 10:01:49 +0000
Received: from mail-eopbgr60082.outbound.protection.outlook.com ([40.107.6.82]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA7mj-004mOF-SC; Wed, 19 Jan 2022 10:01:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cXtRKPpoZLgemd/yzlaciYXnEHW/0bbwlKtuZU/mi3zPfV9t4tba9EmjhmCzacl2Insl6YsnI+154siWxsoT3FEwKXhGf4HtWOWP1N5C8E9O0kJHW5zlP43h4hIO2FmkR1rMVz419tTRiIURLup0fy81g++EXsU8FPycUQW8a+rmh9Jhxl7dvOPdgKgDH9QucMqk/wyCtVgTFSiX+9anoOH9ais6jD8ECWQgIqiXmBa+ub/yYLujHM7pe5fLQDga/g9x1PDS1A9szyvE0nrT5ANZTnPy4iUcDjc+6IYhQj7iBdqvXiUY0i1mkeBOmkF4fqCvuOVY2kp5E0rbw+eveg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BpI/OvvzsJzNG9gqkH31JufC65GNwIs2+MiU3ryh/hU=;
 b=C9kWyT7DpKlczxMgk5E60yJlG0PmsHNzwK13sN61ZjiNvNQi/t/hfDw0QnaFbV/QGgQSo28haMZ7hHfhL7SxSBZ9DmYvlAXFkdjQvWLBIw8agkMwk/TCb1WGSKL0BRnj4eQrkRHkmRmcee28yuSW8hIbIUMjri4NRUq18K9/YP0IQdO9sV8RxjOAY+0JZ/MAUGBOEOu8yJjz3/A/rkpekWtZIlwb1x58mg4WlG5qZLBIU23FNhTP4d7bqDw3I3oz9VAajEHQIQSJc3KcbyhJjhlZ3uNGwvi34YY6D9lV31OAgycidaCdvNmw3nrGx3FopMXGd1QaVmqRQbL0qU2lHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BpI/OvvzsJzNG9gqkH31JufC65GNwIs2+MiU3ryh/hU=;
 b=lL/16EIGvabmZ9NLvgPYsJCDm4nBuEZJ/1aJzNEBX3dK19gvIG8UICklrjpEm1yeLve6AaO0XRxfTr34itsRfQARqB9kMJ4FT5QKSfLt2BdbQSRHoPlCj/rdbAkyQPPHDFTkYX5odNBOgCPuYz7vCpX/sG2CyBMHsAjR6JsYPss=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com (2603:10a6:20b:113::22)
 by HE1PR04MB3147.eurprd04.prod.outlook.com (2603:10a6:7:25::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.7; Wed, 19 Jan
 2022 10:01:39 +0000
Received: from AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::a5b3:9e5:366:a3fc]) by AM7PR04MB7046.eurprd04.prod.outlook.com
 ([fe80::a5b3:9e5:366:a3fc%3]) with mapi id 15.20.4909.008; Wed, 19 Jan 2022
 10:01:39 +0000
Message-ID: <8ad2cd76e80056192395ca5b73ff514e59881ba3.camel@nxp.com>
Subject: Re: [PATCH v2] phy: dphy: Correct clk_pre parameter
From: Liu Ying <victor.liu@nxp.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 dri-devel@lists.freedesktop.org,  linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org,  linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org,  linux-rockchip@lists.infradead.org
Cc: linux-imx@nxp.com, Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss
 <robert.foss@linaro.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>,  Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,  Kevin Hilman <khilman@baylibre.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Heiko Stuebner <heiko@sntech.de>, 
 Maxime Ripard <mripard@kernel.org>, Guido =?ISO-8859-1?Q?G=FCnther?=
 <agx@sigxcpu.org>
Date: Wed, 19 Jan 2022 18:01:08 +0800
In-Reply-To: <5a638561-c704-49e7-1fed-70e26fedb186@baylibre.com>
References: <20220119023714.1498508-1-victor.liu@nxp.com>
 <28e3f723-daf0-b3c5-ee10-519c4cabfe17@baylibre.com>
 <5a638561-c704-49e7-1fed-70e26fedb186@baylibre.com>
User-Agent: Evolution 3.36.4-0ubuntu1 
X-ClientProxiedBy: SG2PR02CA0117.apcprd02.prod.outlook.com
 (2603:1096:4:92::33) To AM7PR04MB7046.eurprd04.prod.outlook.com
 (2603:10a6:20b:113::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f8f38fb-115f-47a8-169e-08d9db32af81
X-MS-TrafficTypeDiagnostic: HE1PR04MB3147:EE_
X-Microsoft-Antispam-PRVS: <HE1PR04MB3147479CA3C0EE6CB4DB7C4498599@HE1PR04MB3147.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nxGdPUlfw+7dFEwYuq+Ry8fujZVzkF8ujDxFp0FYPcziv2quUdxqYWvlNRppnqguV0wFrHh3Q9ZvgQ4zOH+7lGo5q6iWe/A/MYfNkhaUd1tIoU1NPB+w16HYRXRUL5ncs7BhEmhzSCHhR0WiFxcZOOFORKCg3FNyBrR7Um7iuwUDC6a0G1hzpmEo4+URchdOv2nKjfnt0fBn0Xjl9ldlZDzfouc27qwtVg1j1yVjB7FHzr7VAr4vDxwjHAp5ebl9tdMEyzH+P2avRL/k8e69zzPqfa3s71d/vJIPvpM4ipe7t5kU83eHDpEx1XVYWOu0c6JnsMHszmzKbDMBKVRA/hyRzzxAj8l8eBMfEwLpLDEfhq2kOciIfclWFI1+E+wm0DSa32gtU+O91L2O2hqzA8ZoptcN8i2IFw0TmobYHmNBpYf57aB/Iw6GSVfpGWY8je8T8CAn0PHQmvnAJ163MFTcPxuB/YYh0oxbZMwNAaPXgT7Iqlh8qyYyq1zdfE0hTbaUVkY1kfh8EDIfsgjkOU1ZyK9qb9HbiC8/hMraOpoOhhvCl/QA8OLB1ZaAXxTNmSAT6ldMYQpoKyv9VtXEWRwduvuJhbCeBKj/Fjw6iZI1kWk0GvY2h6KdCzbYkNiL77bkVgDGpy2UOnpCH0CdsvjRolTYUAU1OUeG7XKxXg5tbfMx5BbLAyGvx+/X9HsNWJS8NUD6weTgiNyInj535A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM7PR04MB7046.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(38350700002)(38100700002)(66946007)(7416002)(508600001)(54906003)(2616005)(6512007)(26005)(6486002)(66476007)(5660300002)(6666004)(8936002)(53546011)(8676002)(6506007)(86362001)(2906002)(52116002)(83380400001)(36756003)(316002)(66556008)(4326008)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Vno5S2VkU1NwQjFoY0NyRUNZcXprSlgzdGN0NTNzSjAxdEFLVVptWnhrd3NG?=
 =?utf-8?B?V3llck8vbmFxMHpwWW9TY0VKcHJBVDYwT1BKL1ZFTWIvTTRFdjJHNWZRalJR?=
 =?utf-8?B?Y2twaFkxeUc4cERFSlY2VW52NkNXNzl1YmtndGRxZC9qYlAyckwrWDFlTHpC?=
 =?utf-8?B?NFN1dGVvcDRKcjhXcXNJMmRwWFhvbVpCSG5aTndZQ1duRkVuOHNsSHg4MTRU?=
 =?utf-8?B?REx2NG9pVjgweDNBVVNWb2JWdWpsU1dPNDNhZFJsNEVEU1c3eThycWYvM2JO?=
 =?utf-8?B?RE0wOGVxcmpOaVhwTVBVUFUzeDdUcGswMzhhVlo4VHBhMmJxZFZ3N1VkOHFu?=
 =?utf-8?B?Y25kbm14UDU5VmZTSEZLOWxPTElpVzNHaDhYdWNvWkN6OVRTTDdWd1pBVFFY?=
 =?utf-8?B?WUJ6L0xnN0c2UXdpUmpVRDRsM1M4QldpZXE3ZllzMllvcTc3dnRHOURWNVBm?=
 =?utf-8?B?dnpEWjZvUHRZREV6SXRSczJPdnBKUnN5RnJkdlI5VTVSWkpkQ0ZObDV1YTFu?=
 =?utf-8?B?bGtDV3JydWdnYWtBa1k2RXZQajY2V0xtVUYvT0ZTYS9PMWNkUVR0M0YvQVRU?=
 =?utf-8?B?NVBTMDZZVWtCQ0l3Z2tnR0s4aXdVVWtDUWJFVGlDTmc3aGMxdHRETUIyVzVq?=
 =?utf-8?B?OTI1Mk1lSDROQU1scTBuVmUzZWxKSjZKWnppVjlrbEtBZ2VlckhmaWlDZnR0?=
 =?utf-8?B?NFRZdFNSTW1xMXVGMm1RMUVMWk1PRTdEWTEwUE84a3pOcTdGWnR3bFlmaUVZ?=
 =?utf-8?B?eGVNdTUrL0duVlppU05QbEZId1hOU1NIemVWSGhxZ1VXSWcya25tQWcvcVhm?=
 =?utf-8?B?a0hieTRHelEvem9HNmhLaThlZExnZFhCU016NnltN05ZNFZkRVJoRUFTQVBv?=
 =?utf-8?B?Tm1hNVBEbC96TXJrL0ZxUjRQcTE3di9ZR3QyZVlrK1lyQTJudDhaaHZSdHhl?=
 =?utf-8?B?MXBXdnJ4TEVna0pWZkRFa0ZqbkNpaDJiWVljUGZmRDNsdUl2Y2cwYSt4WjFB?=
 =?utf-8?B?S29CeWE2QlNyd0dkT0tUUUZ5dVJybVJnNndiY3ptdzJKMlZtaUZSaW0rTUNX?=
 =?utf-8?B?VEp6NjR5ZTViVmJLVHg2cVNNWTVwM1NTSzNrbEtsRVFubEhYQ2pQbXppMy9v?=
 =?utf-8?B?SVIyQWR3WWRjaTIrMmQ4VVRkcGVUd2h2Q2F0b1g0Ukl5N0FnSUhsTnFvSGRD?=
 =?utf-8?B?U2wzcytBdmN0RHd4SDAvQjdkWCtjcEpOUHBzWFdla2tGZ0t4WlFyL0NBN3U1?=
 =?utf-8?B?RWZKQnBYZVdhd05vZnlvY05tUXhQcGlMblliOVU1RkQrYWxJNDVONHhBS1No?=
 =?utf-8?B?M2diWGsyOFN0ZWNzeis3V050QkZmRW84Q3k3dzV1ZnBnTWNNTHV4Y3oxcVFS?=
 =?utf-8?B?dDQwVFplTHM3RUpJWDA1dTZUR2lyUTdVRHlEV2FZckFFMmdkd0ZaNXMwbk5Y?=
 =?utf-8?B?amo3WFFHeSs3cEplRFhuaGpYNThibG95YU1BR3pnNFNQeDhROVZESCtHbXRO?=
 =?utf-8?B?N0Nqb0VLU1BHbERtb21FQWVsVEcwL1B2OXUwUGsvUFBnZm5HNldINjNna1o0?=
 =?utf-8?B?eTc3NW40OUovMzRvZ1cxL1d6RnVBeVh1blQzVENoVGNkUC9nR1htWm45S21n?=
 =?utf-8?B?L2RpTVhvMHNIOWNVN3Q1cmFvUkc4V1FKM2VUMzFBdG0xT2FZUHFsV1pTUStF?=
 =?utf-8?B?VXJEVjdqQkMvK1JMdDJSbWxoOUhoc2lqUFJiSGYvdnFVQlFmekRBcDQ2Vmpv?=
 =?utf-8?B?ZEI0amU4ZXBuSHhuQm9JdGhDeGRCd0VteTh6YXJLVlozWGhXNzhCTWk2OVZO?=
 =?utf-8?B?WEtEellyUXMrbGduV1dNSG5KWEhSQjFtUTlFL0FYb3k4eXZ0ZHFJTEpjUGhW?=
 =?utf-8?B?aEwvT0MyUmk5c1ZabjFMTms2UjRMSnByb2p6TTFrY2w3MHkyK1ZKUHZQTnJw?=
 =?utf-8?B?SWdvempnaXNucmJFdFFmcVpLT3lWVVJ1enQrbElQU0t4cmlLZGMwdTl4MTFq?=
 =?utf-8?B?NG5tZktTdHd4MmUyMi91MUJVaFFrUGFRN2FQcUVGeitRZ0hJTWFRRi9lVlds?=
 =?utf-8?B?OUszMzNBcmo2bEdqdE9CSmkwYklTalRtanNIVEx2d3psNGtyWUF2V1BIY1RT?=
 =?utf-8?B?OWFVWWs3SDN5enhaVWt0bkxXNzYzRHk2ZWh2MVd2YmtKYlJDUERrcTJzQ3Rl?=
 =?utf-8?Q?R4pUxpAZqMxYLd8R7tRmYDg=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f8f38fb-115f-47a8-169e-08d9db32af81
X-MS-Exchange-CrossTenant-AuthSource: AM7PR04MB7046.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2022 10:01:39.1299 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RMgZwqfg4vu6qus3+InO1eL9iUzV+aEP3U4MMSvO2OnWvlq8HgZxmGD3up9Fdnzx0rREKFZGjT8TUsddgAtkqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR04MB3147
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_020145_973976_04A7D9AC 
X-CRM114-Status: GOOD (  36.79  )
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

SGkgTmVpbCwKCk9uIFdlZCwgMjAyMi0wMS0xOSBhdCAxMDoxMSArMDEwMCwgTmVpbCBBcm1zdHJv
bmcgd3JvdGU6Cj4gT24gMTkvMDEvMjAyMiAwOTo0MCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4g
PiBIaSwKPiA+IAo+ID4gT24gMTkvMDEvMjAyMiAwMzozNywgTGl1IFlpbmcgd3JvdGU6Cj4gPiA+
IFRoZSBELVBIWSBzcGVjaWZpY2F0aW9uICh2MS4yKSBleHBsaWNpdGx5IG1lbnRpb25zIHRoYXQg
dGhlIFQtQ0xLLVBSRQo+ID4gPiBwYXJhbWV0ZXIncyB1bml0IGlzIFVuaXQgSW50ZXJ2YWwoVUkp
IGFuZCB0aGUgbWluaW11bSB2YWx1ZSBpcyA4LiAgQWxzbywKPiA+ID4ga2VybmVsIGRvYyBvZiB0
aGUgJ2Nsa19wcmUnIG1lbWJlciBvZiBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBo
eQo+ID4gPiBtZW50aW9ucyB0aGF0IGl0IHNob3VsZCBiZSBpbiBVSS4gIEhvd2V2ZXIsIHRoZSBk
cGh5IGNvcmUgZHJpdmVyIHdyb25nbHkKPiA+ID4gc2V0cyAnY2xrX3ByZScgdG8gODAwMCwgd2hp
Y2ggc2VlbXMgdG8gaGludCB0aGF0IGl0J3MgaW4gcGljb3NlY29uZHMuCj4gPiA+IEFuZCwgdGhl
IGtlcm5lbCBkb2Mgb2YgdGhlICdjbGtfcHJlJyBtZW1iZXIgd3JvbmdseSBzYXlzIHRoZSBtaW5p
bXVtIHZhbHVlCj4gPiA+IGlzICc4IFVJJywgaW5zdGVhZCBvZiA4Lgo+ID4gPiAKPiA+ID4gU28s
IGxldCdzIGZpeCBib3RoIHRoZSBkcGh5IGNvcmUgZHJpdmVyIGFuZCB0aGUga2VybmVsIGRvYyBv
ZiB0aGUgJ2Nsa19wcmUnCj4gPiA+IG1lbWJlciB0byBjb3JyZWN0bHkgcmVmbGVjdCB0aGUgVC1D
TEstUFJFIHBhcmFtZXRlcidzIHVuaXQgYW5kIHRoZSBtaW5pbXVtCj4gPiA+IHZhbHVlIGFjY29y
ZGluZyB0byB0aGUgRC1QSFkgc3BlY2lmaWNhdGlvbi4KPiA+ID4gCj4gPiA+IEknbSBhc3N1bWlu
ZyB0aGF0IGFsbCBpbXBhY3RlZCBjdXN0b20gZHJpdmVycyBzaGFsbCBwcm9ncmFtIHZhbHVlcyBp
bgo+ID4gPiBUeEJ5dGVDbGtIUyBjeWNsZXMgaW50byBoYXJkd2FyZSBmb3IgdGhlIFQtQ0xLLVBS
RSBwYXJhbWV0ZXIuICBUaGUgRC1QSFkKPiA+ID4gc3BlY2lmaWNhdGlvbiBtZW50aW9ucyB0aGF0
IHRoZSBmcmVxdWVuY3kgb2YgVHhCeXRlQ2xrSFMgaXMgZXhhY3RseSAxLzgKPiA+ID4gdGhlIEhp
Z2gtU3BlZWQoSFMpIGJpdCByYXRlKGVhY2ggSFMgYml0IGNvbnN1bWVzIG9uZSBVSSkuICBTbywg
cmVsZXZhbnQKPiA+ID4gY3VzdG9tIGRyaXZlciBjb2RlIGlzIGNoYW5nZWQgdG8gcHJvZ3JhbSB0
aG9zZSB2YWx1ZXMgYXMKPiA+ID4gRElWX1JPVU5EX1VQKGNmZy0+Y2xrX3ByZSwgQklUU19QRVJf
QllURSksIHRoZW4uCj4gPiA+IAo+ID4gPiBOb3RlIHRoYXQgSSd2ZSBvbmx5IHRlc3RlZCB0aGUg
cGF0Y2ggd2l0aCBSTTY3MTkxIERTSSBwYW5lbCBvbiBpLk1YOG1xIEVWSy4KPiA+ID4gSGVscCBp
cyBuZWVkZWQgdG8gdGVzdCB3aXRoIG90aGVyIGkuTVg4bXEsIE1lc29uIGFuZCBSb2NrY2hpcCBw
bGF0Zm9ybXMsCj4gPiA+IGFzIEkgZG9uJ3QgaGF2ZSB0aGUgaGFyZHdhcmVzLgo+ID4gPiAKPiA+
ID4gRml4ZXM6IDJlZDg2OTk5MGUxNCAoInBoeTogQWRkIE1JUEkgRC1QSFkgY29uZmlndXJhdGlv
biBvcHRpb25zIikKPiA+ID4gQ2M6IEFuZHJ6ZWogSGFqZGEgPGFuZHJ6ZWouaGFqZGFAaW50ZWwu
Y29tPgo+ID4gPiBDYzogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgo+
ID4gPiBDYzogUm9iZXJ0IEZvc3MgPHJvYmVydC5mb3NzQGxpbmFyby5vcmc+Cj4gPiA+IENjOiBM
YXVyZW50IFBpbmNoYXJ0IDxMYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+Cj4gPiA+
IENjOiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gPiA+IENjOiBKZXJuZWogU2ty
YWJlYyA8amVybmVqLnNrcmFiZWNAZ21haWwuY29tPgo+ID4gPiBDYzogRGF2aWQgQWlybGllIDxh
aXJsaWVkQGxpbnV4LmllPgo+ID4gPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNo
Pgo+ID4gPiBDYzogS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4KPiA+ID4g
Q2M6IFZpbm9kIEtvdWwgPHZrb3VsQGtlcm5lbC5vcmc+Cj4gPiA+IENjOiBLZXZpbiBIaWxtYW4g
PGtoaWxtYW5AYmF5bGlicmUuY29tPgo+ID4gPiBDYzogSmVyb21lIEJydW5ldCA8amJydW5ldEBi
YXlsaWJyZS5jb20+Cj4gPiA+IENjOiBNYXJ0aW4gQmx1bWVuc3RpbmdsIDxtYXJ0aW4uYmx1bWVu
c3RpbmdsQGdvb2dsZW1haWwuY29tPgo+ID4gPiBDYzogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4KPiA+ID4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KPiA+
ID4gQ2M6IEd1aWRvIEfDvG50aGVyIDxhZ3hAc2lneGNwdS5vcmc+Cj4gPiA+IFRlc3RlZC1ieTog
TGl1IFlpbmcgPHZpY3Rvci5saXVAbnhwLmNvbT4gIyBSTTY3MTkxIERTSSBwYW5lbCBvbiBpLk1Y
OG1xIEVWSwo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMaXUgWWluZyA8dmljdG9yLmxpdUBueHAuY29t
Pgo+ID4gPiAtLS0KPiA+ID4gdjEtPnYyOgo+ID4gPiAqIFVzZSBCSVRTX1BFUl9CWVRFIG1hY3Jv
LiAoQW5kcnplaikKPiA+ID4gKiBEcm9wIGRzaSBhcmd1bWVudCBmcm9tIHVpMmJjKCkgaW4gbnds
LWRzaS5jLgo+ID4gPiAKPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jICAg
ICAgICAgICAgICAgICB8IDEyICsrKysrLS0tLS0tLQo+ID4gPiAgZHJpdmVycy9waHkvYW1sb2dp
Yy9waHktbWVzb24tYXhnLW1pcGktZHBoeS5jICAgIHwgIDMgKystCj4gPiA+ICBkcml2ZXJzL3Bo
eS9waHktY29yZS1taXBpLWRwaHkuYyAgICAgICAgICAgICAgICAgfCAgNCArKy0tCj4gPiA+ICBk
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1kc2lkcGh5LmMgfCAgMyArKy0K
PiA+ID4gIGluY2x1ZGUvbGludXgvcGh5L3BoeS1taXBpLWRwaHkuaCAgICAgICAgICAgICAgICB8
ICAyICstCj4gPiA+ICA1IGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEyIGRlbGV0
aW9ucygtKQo+ID4gPiAKPiBbLi4uXQo+IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkv
YW1sb2dpYy9waHktbWVzb24tYXhnLW1pcGktZHBoeS5jIGIvZHJpdmVycy9waHkvYW1sb2dpYy9w
aHktbWVzb24tYXhnLW1pcGktZHBoeS5jCj4gPiA+IGluZGV4IGNkMjMzMmJmMGUzMS4uZmRiZDY0
YzAzZTEyIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BoeS9hbWxvZ2ljL3BoeS1tZXNvbi1h
eGctbWlwaS1kcGh5LmMKPiA+ID4gKysrIGIvZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24t
YXhnLW1pcGktZHBoeS5jCj4gPiA+IEBAIC05LDYgKzksNyBAQAo+ID4gPiAgCj4gPiA+ICAjaW5j
bHVkZSA8bGludXgvYml0ZmllbGQuaD4KPiA+ID4gICNpbmNsdWRlIDxsaW51eC9iaXRvcHMuaD4K
PiA+ID4gKyNpbmNsdWRlIDxsaW51eC9iaXRzLmg+Cj4gPiA+ICAjaW5jbHVkZSA8bGludXgvY2xr
Lmg+Cj4gPiA+ICAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KPiA+ID4gICNpbmNsdWRlIDxsaW51
eC9pby5oPgo+ID4gPiBAQCAtMjUwLDcgKzI1MSw3IEBAIHN0YXRpYyBpbnQgcGh5X21lc29uX2F4
Z19taXBpX2RwaHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQo+ID4gPiAgCQkgICAgIChESVZf
Uk9VTkRfVVAocHJpdi0+Y29uZmlnLmNsa196ZXJvLCB0ZW1wKSA8PCAxNikgfAo+ID4gPiAgCQkg
ICAgIChESVZfUk9VTkRfVVAocHJpdi0+Y29uZmlnLmNsa19wcmVwYXJlLCB0ZW1wKSA8PCAyNCkp
Owo+ID4gPiAgCXJlZ21hcF93cml0ZShwcml2LT5yZWdtYXAsIE1JUElfRFNJX0NMS19USU0xLAo+
ID4gPiAtCQkgICAgIERJVl9ST1VORF9VUChwcml2LT5jb25maWcuY2xrX3ByZSwgdGVtcCkpOwo+
ID4gPiArCQkgICAgIERJVl9ST1VORF9VUChwcml2LT5jb25maWcuY2xrX3ByZSwgQklUU19QRVJf
QllURSkpOwo+ID4gPiAgCj4gPiA+ICAJcmVnbWFwX3dyaXRlKHByaXYtPnJlZ21hcCwgTUlQSV9E
U0lfSFNfVElNLAo+ID4gPiAgCQkgICAgIERJVl9ST1VORF9VUChwcml2LT5jb25maWcuaHNfZXhp
dCwgdGVtcCkgfAo+ID4gCj4gPiBJJ2xsIHRyeSB0byBydW4gYSB0ZXN0LCBjdXJyZW50bHkgdGhl
IGNhbGN1bGF0aW9uIGdpdmVzIDIsIHNvIHRoaXMgd291bGQgZ2l2ZSAxLgo+IAo+IFRoZSBBbWxv
Z2ljIHZlbmRvciBjb2RlIGRvZXM6Cj4gCj4gLyogPjgqdWkgKi8KPiAjZGVmaW5lIERQSFlfVElN
RV9DTEtfUFJFKHVpKSAgICAgICAoMTAgKiB1aSkKClRoaXMgbG9va3MgbGlrZSBjbGtfcHJlIHRp
bWUgaXMgMTAgKiB1aSwgd2hpY2ggbWF0Y2hlcyB0aGUgY29tbWVudAonPjgqdWknIC0gbG9uZ2Vy
IHRpbWUgOCAqIHVpLgoKPiAKPiB0X3VpID0gbGNkX3RpbWluZy5iaXRfcmF0ZQo+IAo+IHRfdWkg
PSAoMTAwMDAwMCAqIDEwMCkgLyAoZHNpX3VpIC8gMTAwMCk7IC8qMTAwKm5zICovCj4gdGVtcCA9
IHRfdWkgKiA4OyAvKiBsYW5lX2J5dGUgY3ljbGUgdGltZSAqLwoKSWYgSSByZWFkIGNvcnJlY3Rs
eSwgdGhpcyB0ZW1wIGluIHZlbmRvciBjb2RlIGlzIFR4Qnl0ZUNsa0hTIHBlcmlvZAp0aW1lIGlu
IHBpY29zZWNvbmRzLiBTby4uLgoKPiAKPiBkcGh5LT5jbGtfcHJlID0gKChEUEhZX1RJTUVfQ0xL
X1BSRSh0X3VpKSArIHRlbXAgLSAxKSAvIHRlbXApICYgMHhmZjsKCklJVUMsICdkcGh5LT5jbGtf
cHJlJyBlc3NlbnRpYWxseSBtZWFucyBkcGh5LT5jbGtfcHJlID0gRElWX1JPVU5EX1VQKDEwCiog
dWksIHRlbXApLCB0aGF0IGlzLCB0aGUgdGltZSBmb3IgZHBoeS0+Y2xrX3ByZSBpcyBubyBsZXNz
IHRoYW4gCjEwICogdWkuICBUaGUgRC1QSFkgc3BlYyAodjEuMikncyBzYXlpbmcgaXMgdGhhdCB0
aGUgbWluaW11bSB0aW1lIGZvcgpkcGh5LT5jbGtfcHJlIGlzIDggKiB1aS4gIFNvLCBpdCBsb29r
cyBsaWtlIG1lc29uIGlzIHN0cmljdGVyIHRoYW4gdGhlCnNwZWMuCgpIb3dldmVyLCB0aGUgdmVu
ZG9yIGNvZGUgZG9lc24ndCBzZWVtIHRvIG1hdGNoIHRoZSBjdXJyZW50IG1lc29uIGRyaXZlcgpp
bXBsZW1lbnRhdGlvbi4gIFRoZSB0ZW1wIGluIGRyaXZlciBjb2RlIGlzIGFsc28gVHhCeXRlQ2xr
SFMgcGVyaW9kCnRpbWUgaW4gcGljb3NlY29uZHMuIEFuZCwgd2l0aG91dCB0aGlzIHBhdGNoLCBJ
J20gYXNzdW1pbmcgdGhhdApwcml2LT5jb25maWcuY2xrX3ByZSBpcyA4MDAwLiAgU28sIGl0IGxv
b2tzIGxpa2UgTUlQSV9EU0lfQ0xLX1RJTTEgaXMKc2V0IHRvIERJVl9ST1VORF9VUCg4MDAwLCB0
ZW1wKS4gIFRoaXMgJzgwMDAnIGRvZXMgX25vdF8gcmVmbGVjdAonMTAgKiB1aScuCgpTbywgMyBj
aG9pY2VzIGZvciBtZXNvbiwgdXAgdG8geW91OgoxKSBJZiBtZXNvbiByZWFsbHkgcmVxdWlyZXMg
dGhlIHRpbWUgZm9yIGNsa19wcmUgbm8gbGVzcyB0aGFuCjEwICogdWksIHRoZW4gc3RoIGxpa2Ug
RElWX1JPVU5EX1VQKDEwLCBCSVRTX1BFUl9CWVRFKSBjYW4gYmUgdXNlZC4KMikgSWYgbWVzb24g
Zm9sbG93cyB0aGUgc3BlYydzIG1pbmltdW0gdmFsdWUsIHRoZW4gdGhlIHBhdGNoIGRvZXMKdGhp
bmdzIHJpZ2h0IGZvciBtZXNvbi4KMykgRm9yY2UgdG8gdXNlIDgwMDAgcGljb3NlY29uZHMgZm9y
IGNsa19wcmUsIHRoYXQgaXMsIHVzZSBzdGggbGlrZQpESVZfUk9VTkRfVVAoODAwMCwgdGVtcCku
CgpXaXRoIHRoaXMgcGF0Y2ggYXBwbGllZCwgZG8geW91IHNlZSBhbnkgZGlzcGxheSBhcnRpZmFj
dHMgYnkgdmlzdWFsCmNoZWNrPyBPciBldmVuIGNoZWNrZWQgc2lnbmFscyB0aHJvdWdoIERTSSBh
bmFseXplcj8KClJlZ2FyZHMsCkxpdSBZaW5nCgo+IAo+IFBIWSBSZWdpc3RlcnMgb25seSBzYXlz
Ogo+IE1JUElfRFNJX0NMS19USU0xCVszMTowXQo+IDc6MCAJUi9XCTAJIHRDTEtfUFJFCj4gCj4g
PiBOZWlsCj4gPiAKPiAKPiBbLi4uXQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
