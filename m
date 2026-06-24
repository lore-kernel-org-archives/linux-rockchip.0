Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91E54CDB479
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 03:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZBDK55VyVeq6tJZ0SBf6N9oFid0Q6uAWKV9vQXAcemU=; b=YCT1bx9pCrMdQu
	+gzC+kbmZ9XeXx8Dawu1sYtBSqVseiLAyCFpxTIp86byXUTLfaTD4Vil6KL11KCreCi6zSU0FIu6M
	LoZm8Z51FZyn7ZSydRUJTy5v+bOGxTt4LkGF80pZIgXRhnJ+MRAJlBOxDYGxCVt+IOHz2S2Q5qHFY
	49M/TAT4ELc3OJVe4zwzDJOw4OE1HEj3kIttND4E8sFyVrCO+juPsJ+oUVfyDbwxyMUFjEYAULAMJ
	0FGZT4v2fj6shGnwiRqrSTqJm7ZJxwnuVAkgwguisKallbXKlN22+v6ClisGg4vVSZGLnQFiZW5i/
	laSwh03SWN5ZhIpz0rQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcE76-000000075Bk-3xlV;
	Wed, 24 Jun 2026 03:17:20 +0000
Received: from mail-northeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcE74-000000075B8-291I;
	Wed, 24 Jun 2026 03:17:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tj1OaPSsNg8kfLYxgIHTBE4HtIQ4R0sAPD1NIlKKjQKbd34qlQVKSzQ7iWpv4Wddk2JmhT6/c7mAvPAr29GplMk5/o+3NdNWC+kqBUzCG9LUT6clA9c/unzzvxty2Y3yUU3YqqwAPG9KkCgNcb12e6vZdDRy8cl30qb1F25kj4xhS+2tUtY8S1HWKfdA2gU+iztAK/rOIYRb5YBf3/t0eTntk6cp4VLyoBM927jt7hpJjYJF2iEo3raaOfNay6Yf0RzEwtLPgPp3MEIiisvk3a3o/E1wSdAodtsgsvGXzxlDdAuP0LRkq0+pwMgaEdmnmFe7w0VQqJTlqQXrI+z5+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fqNWmTV9Dxdgpko8RyOqyhmXjYg6a8SB/qcOxBlWi6o=;
 b=BK//MZ8gAm5uGhrv9PcoegTUrmRfnfyx844YOPvAy2dXdMXpxCsVokGl+tmgOt1ZHxVzCvC9VNMC/jtvJBe2iJIGtpOuduUC+6Q0P8buJMYA3T6x3a6F4ZloZeC7SfUxNoJk0/D+kYfYxvXOOhP/RFFhqh8YChJbQQ01GcXxUNOV6HyX60yxZ9O1fuB5q7aQJkV66naw0WswKFcxKH0TF72yQ68D0KtYLkR/mVwkqedK9v7QBX+HpL0xeS+RminN2lL89/ZsgqMRLH3gz6Sg9hyXaa2ns1YI1Ggz0o9KPEsLgnQjfX/3F9OhyKmXBsvlplKmN3LrxoB5QYoD2bzupg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fqNWmTV9Dxdgpko8RyOqyhmXjYg6a8SB/qcOxBlWi6o=;
 b=ex1mzyfDj8TIS9dQsqJfdQbLqH57lnZgd8zcj4noQutEGjzjOTXnxMF8lFx2ckwVQgkNK4fe5VO4B7NoOFviPKcIAsQ/vkFHbi0UeXRWDY/gKHSho6MUlIuS2ccjMPp2xUNuGWJeN5diLwQ41BlhRv9gSQUEp8F+S0j7VOsQX9go7nOYFDDjBBqLhlZt3Lut1eUflzhdgPVszGKExxtyHW8PezUS06k8TEACwVsHVBOedkBaYbfCDlAh9qVees8q09oxp7sgySNujk6KWrIQkxRElYO4BGJZKLk9jzD7/UR6BfNKXw6d8RH2xBBQByjRsyohYlw6A1gsPMdTzgMavQ==
Received: from AS8PR04MB9080.eurprd04.prod.outlook.com (2603:10a6:20b:447::16)
 by VI0PR04MB10590.eurprd04.prod.outlook.com (2603:10a6:800:264::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.14; Wed, 24 Jun
 2026 03:17:13 +0000
Received: from AS8PR04MB9080.eurprd04.prod.outlook.com
 ([fe80::92c2:2e03:bf99:68eb]) by AS8PR04MB9080.eurprd04.prod.outlook.com
 ([fe80::92c2:2e03:bf99:68eb%6]) with mapi id 15.21.0139.018; Wed, 24 Jun 2026
 03:17:13 +0000
From: "G.N. Zhou" <guoniu.zhou@nxp.com>
To: "Frank Li (OSS)" <frank.li@oss.nxp.com>, Andy Shevchenko
	<andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Sakari Ailus
	<sakari.ailus@linux.intel.com>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Danilo
 Krummrich <dakr@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dafna Hirschfeld <dafna@fastmail.com>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>, Heiko Stuebner <heiko@sntech.de>, Bryan
 O'Donoghue <bryan.odonoghue@linaro.org>, Vladimir Zapolskiy
	<vladimir.zapolskiy@linaro.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>
CC: "driver-core@lists.linux.dev" <driver-core@lists.linux.dev>,
	"linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-arm-msm@vger.kernel.org"
	<linux-arm-msm@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>,
	Frank Li <frank.li@nxp.com>
Subject: RE: [PATCH 4/4] media: qcom: camss: use
 fwnode_graph_for_each_endpoint_scoped() to simpifly code
Thread-Topic: [PATCH 4/4] media: qcom: camss: use
 fwnode_graph_for_each_endpoint_scoped() to simpifly code
Thread-Index: AQHdAlO8xvgwLshCx0qcG9P9W7PTubZNCwWg
Date: Wed, 24 Jun 2026 03:17:13 +0000
Message-ID: <AS8PR04MB90804423362CA11D83F7075CFAED2@AS8PR04MB9080.eurprd04.prod.outlook.com>
References: <20260622-fw_scoped-v1-0-a37d0aac0a68@nxp.com>
 <20260622-fw_scoped-v1-4-a37d0aac0a68@nxp.com>
In-Reply-To: <20260622-fw_scoped-v1-4-a37d0aac0a68@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR04MB9080:EE_|VI0PR04MB10590:EE_
x-ms-office365-filtering-correlation-id: e05e21bc-4543-4ca9-1535-08ded19f15fa
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|23010399003|1800799024|376014|7416014|19092799006|921020|38070700021|18002099003|22082099003|56012099006|4143699003|11063799006;
x-microsoft-antispam-message-info: TxoHpOUjc64esV6XH775pzCwu5pSMHsgq1pmc0TvgU0mOOjTgc/ImZGiXlNdUwmhMp/rKzow8YFKiPjy5LGgRmE8NVpYAhLJiqOBcWyueHn0y5r8E2jzd/c7DLqi1wndglyMUrkX0WPnkDZ9LF+AiBFye1RtVQKOodBKBt3bVDfFAOUqTsYtVPrv2sxqES0W8B3WCnqy22e/clLKWhb2gkc8jnQ+0SjzDKwQ/F+ydZmBEttwL/AOPUfNIdSZm9Xip82yno3dycjJ1gejeqUTxxiOeTe/IC77l53OQCnN4ql431TIF7MHzK6BZz0l+dbSQyXzSHq3F1aNnRNxXS/NciS2iufYU9ej7SsJE2pQf+/8WGBH/hj7HdY1fawZF+qVY4RNJc5amRoZQImn+MgKwY3ZWuS/kZfTOWe4U3JMKzbJI1l6hv9mM2vlfU+XoSCtTRfKFhGYcCqPkSc1Evv+WYVw58LhBnaAmjeF2HL5nIn7kP3G5izNDibbeTvgsl7ilHFA3pBh2zSFNIzzEXfnzZtRNaPoOUHpdTIS6NCTcjsvXVGRgVqEP9bZ1S063RAFC+AbX2qbgPS/1Mpy9QioiiRWeMYS5sZs/S3e2my7dQVRttkviBD/hBCQc9PUs7R252/CQjFdKVhTVLqFST3LpV28ENiJNPV8r5nB3zkbuxokOPNIAwnt5d4Jfng0vr2ZjCZos2MRlL3FnyHMpeXw+xnprtTKXSLduyUMhtgWzKHayyMZac+tI9ghp0FK0d36
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB9080.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(7416014)(19092799006)(921020)(38070700021)(18002099003)(22082099003)(56012099006)(4143699003)(11063799006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YUFZZkpKWkppSy9pL3p1Z3lZL0tGbU1Uay9idm9tT1l6c3ova2l1bDBCU0NC?=
 =?utf-8?B?NGVqWGp4QStFdEtOTUVTMXZyYmRnOUtJQThhZjdqNDNFeFhvRDdHT1BxQ3dO?=
 =?utf-8?B?Y3A5NTA1RUxYZGxRY0l1bllYc2ZrQXhFR3pWbFVKaFNORm8xNktvK0hOeDBw?=
 =?utf-8?B?bEs3bXA3Skt4VGNDdGdBWUc0d2VOcktZbjZGTU81U1o0V0trRzVld1RzZjM2?=
 =?utf-8?B?bGFoMGtLSzQ5RzV6aEU1VXJqOVdvV2ZpYlNlazZFaGdnSE5XZjNGSDh3TzBn?=
 =?utf-8?B?MWZxRWkrbHNyREJkbmVobzkySTJtSHhyZ3RKNjJVTFFTdFB0Q3VIaExxTkdV?=
 =?utf-8?B?MEFFN2w1UitwSFNaNU9WbGV5d2xPRnFPN3dQaHFGdFZxbytTWUdacnZob2s4?=
 =?utf-8?B?d2ZWKytndVpZNDNZWElPM2NiSGV6UCtTNWVueEpBazNpdE1zc0FtdjRwb1Vx?=
 =?utf-8?B?bDJ4RzlaYkdpWTBMV3JpNFo1K0VoY3dnQlAxRWFING5GYUJJNy95M3UxMllr?=
 =?utf-8?B?dUFFdDlCZU5mNGVWUnU3Tmx3V1FLWU5wUlJRd3dhVFZCTG05UkZNVVRDZkNs?=
 =?utf-8?B?c2p0N0UvSHZrS25DOEZvUnM3bDluc3kxQk56clVUZnNjVGxpbUtRM3Y4ditr?=
 =?utf-8?B?OW1YcjBaVFZlcU5IK2pUcVdyWmpqMndXRHJCT1dGN0xZZThyNytmbFRGZlUr?=
 =?utf-8?B?MjFzOGxOQVhOb0FoVDNGb0NEbzBSR25YTVlkY3doVTlEeG4rd1ljR2N3ZzhH?=
 =?utf-8?B?bGxwdGEwS3dXZ2IvN0U3OGZBN21ucWVEMHhOaFAyRzR6dy82NVcyeGdYdldx?=
 =?utf-8?B?M3lnQlFZRFF3aEtiV21xc0FocUhGRytQbXdPdkQxcEJUOWw2YzhMK2FYa01l?=
 =?utf-8?B?M01BRzZWcE91N01lQXZ0VDc4bEIvNjhsM2ZoZysrUE1kYjJtRTNwcFYrWEdz?=
 =?utf-8?B?dklPbG8rK2JqWDJJS0lIM1RFY0xyamdydVFDeEo4cmxYWFRQSlA0bjF3cnJu?=
 =?utf-8?B?OHM3bzFLNGpnVlNqM2NrS2g0cjNTTEFiVnN3a0hCbzV2TUtINGJraEVYeVRh?=
 =?utf-8?B?Q0JzNFhQQk9wUnJHaGt0SDU0Y3lrbzdmTmVhak11YURmQTdmelNmMmRaUXNG?=
 =?utf-8?B?Q0VXNHdNS0x2dEp4NkdyckFKRUpWWGVJRzA2U0VUMU5RclBYc2FlK29QUlUv?=
 =?utf-8?B?MXg1dTdJYlJUUCsxTy9nVUhMSWsrdDlGSnoyalV6MTd3OGNmWFNQK3ZFWnEy?=
 =?utf-8?B?VjE3K3lJRk0zaWZhbDg4ZnZPMmNLckg0bUxpQnAwRDhvaFZuSmJCR0dpZEta?=
 =?utf-8?B?aTJXZ09YZHV4S0NhTng2dlZFekN0cGVGUXhiVi9lcUNZTmZzRG1yZ0NrQk5D?=
 =?utf-8?B?SkdXam52ay8rbUJOYWI1ampTMjBZdDh5RlY1UFc1aEVQdFB2azRDeFI4bnV6?=
 =?utf-8?B?OW0zKzF0dDdFV2xsZDVGWXAyQXpKKzNFZWxOY1l5TEMxeGRyTnp2OUdaUXd4?=
 =?utf-8?B?TjhsckVCOEhpT0RPNTNYbTRpR1JRT0trUDNxM0dndFJITHBuZHdHVU5BSlZX?=
 =?utf-8?B?U1ZCZVJGbHMrMlpaNjBvRDVHMERnc3dCREt0ZEVMMm1pbndwQlhicEhlWGlN?=
 =?utf-8?B?Z0hRYUhkWjA1Y2hIalVZbHEzWWVOUTdBbVRMNEpibUV2SUJZNVd3Ylh1MkR3?=
 =?utf-8?B?RnljbTNPZzNnRDUxZzMyUHM4WVBnQitQSGtRdDY1M1ZRY0dZOGlyYkh6cFRu?=
 =?utf-8?B?c0YwN1cwNTRUamxuSXRLUVlXU1F5ZnF2NTUxYXkzR0NhT1ptSm9wZFgvV2xY?=
 =?utf-8?B?NnN1WDN4STlPdHdZYVZ6Z0kvc0xQS2oybXBGY01DaExOaEJUMEdNZ0NLRk00?=
 =?utf-8?B?MmhPc2tQY1AvUGdDNW00N2ZVV3cwWmJaNWVUVkFtaG9JNGZtWEhyNUZCUGtO?=
 =?utf-8?B?L3VJbjY3RmFTakZDTHBBbmo3R2ZzNWc1d0pMQnhJc0d4Z3Rpd0hTaURCVHZS?=
 =?utf-8?B?SGtUUWdEMW4yUzZKQTA5S0ZpaGRRbElaeXpZSk5KZmZJdHFvSnVYL0l6WTdB?=
 =?utf-8?B?OE5vYTRyVnpROXY3dHprNm5WYjkvSC91a2VXMDF2bzRGL1QvS0I5VEt6Z1Fh?=
 =?utf-8?B?dWRhUFFDQUhMRnlJQThBVEluNEZ6b3QyL1lWS0Z6TjRLNHphSnY0WUZiRnk0?=
 =?utf-8?B?RHMzeVRxYmRaUXRPSEIvS0tHVCtnbGlYdXFla2Jta3p0VXNxWWl0bmVpSjRM?=
 =?utf-8?B?THlzMitkbGdGZHhGRnlTUTlCa05GWW5oN3crdndiaWtrWVZwNklldnFYazhW?=
 =?utf-8?Q?dQ/Tk3IFNVOdJP+136?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB9080.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e05e21bc-4543-4ca9-1535-08ded19f15fa
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 03:17:13.1019
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fUQmPLhSY7gH9DcgzUzJqQMe0rTXFp0QkvSvRueX6dxkoni0TsdUmhZoskzJPR73Ac+jw44I1XtSpGV8BBmMwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR04MB10590
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260623_201718_554797_66A311FE 
X-CRM114-Status: GOOD (  20.45  )
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

Hi Frank,

> -----Original Message-----
> From: Frank Li (OSS) <frank.li@oss.nxp.com>
> Sent: Monday, June 22, 2026 10:30 PM
> To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>; Daniel Scally
> <djrscally@gmail.com>; Heikki Krogerus <heikki.krogerus@linux.intel.com>;
> Sakari Ailus <sakari.ailus@linux.intel.com>; Greg Kroah-Hartman
> <gregkh@linuxfoundation.org>; Rafael J. Wysocki <rafael@kernel.org>; Danilo
> Krummrich <dakr@kernel.org>; Mauro Carvalho Chehab
> <mchehab@kernel.org>; Dafna Hirschfeld <dafna@fastmail.com>; Laurent
> Pinchart <laurent.pinchart@ideasonboard.com>; Heiko Stuebner
> <heiko@sntech.de>; Bryan O'Donoghue <bryan.odonoghue@linaro.org>;
> Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>; Loic Poulain
> <loic.poulain@oss.qualcomm.com>
> Cc: driver-core@lists.linux.dev; linux-acpi@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-media@vger.kernel.org; linux-
> rockchip@lists.infradead.org; linux-arm-kernel@lists.infradead.org; linux-arm-
> msm@vger.kernel.org; imx@lists.linux.dev; G.N. Zhou
> <guoniu.zhou@nxp.com>; Frank Li <frank.li@nxp.com>
> Subject: [PATCH 4/4] media: qcom: camss: use
> fwnode_graph_for_each_endpoint_scoped() to simpifly code
> 
> From: Frank Li <Frank.Li@nxp.com>
> 
> Use fwnode_graph_for_each_endpoint_scoped() to simpifly code.

s/simpifly/simplify/ both in message title and body.

With this addressed:
Reviewed-by: Guoniu Zhou <guoniu.zhou@oss.nxp.com>

> 
> No functional changes.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/media/platform/qcom/camss/camss.c | 17 +++++------------
>  1 file changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c
> b/drivers/media/platform/qcom/camss/camss.c
> index 2123f6388e3d7..23f3cc30a15a5 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -4793,30 +4793,23 @@ static int camss_parse_endpoint_node(struct
> device *dev,  static int camss_parse_ports(struct camss *camss)  {
>  	struct device *dev = camss->dev;
> -	struct fwnode_handle *fwnode = dev_fwnode(dev), *ep;
> +	struct fwnode_handle *fwnode = dev_fwnode(dev);
>  	int ret;
> 
> -	fwnode_graph_for_each_endpoint(fwnode, ep) {
> +	fwnode_graph_for_each_endpoint_scoped(fwnode, ep) {
>  		struct camss_async_subdev *csd;
> 
>  		csd = v4l2_async_nf_add_fwnode_remote(&camss->notifier,
> ep,
>  						      typeof(*csd));
> -		if (IS_ERR(csd)) {
> -			ret = PTR_ERR(csd);
> -			goto err_cleanup;
> -		}
> +		if (IS_ERR(csd))
> +			return PTR_ERR(csd);
> 
>  		ret = camss_parse_endpoint_node(dev, ep, csd);
>  		if (ret < 0)
> -			goto err_cleanup;
> +			return ret;
>  	}
> 
>  	return 0;
> -
> -err_cleanup:
> -	fwnode_handle_put(ep);
> -
> -	return ret;
>  }
> 
>  /*
> 
> --
> 2.43.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
