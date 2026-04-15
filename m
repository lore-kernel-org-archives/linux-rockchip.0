Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F092F531FC
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Apr 2026 09:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r9Q1QzIyAHKuHPbgRC/QXdepsd9HwZXX/wlMw44y5sI=; b=wUUdVfWPFxVZf8
	1WHFX3u3GYJ+SBvfUTLfKyLTTbIP8MlMtkdWEpdrHnbLooG1/N+R7RUbqvllkRJLVipzzonpIWqy2
	QCEKW5tP86TY4rN24rQ5lqCCUDJT6lCvbfuypz/z5hdzMK3g7YIoyJ/Qp5gDnnrD92SlCfyBBGTFW
	IM+bU3iczRlv6ZF0o1uyb4AQC6v9KD/cOYpSO0dhlO63PB5xd62G9Mbv730h1p3uPgiPqk5CF0xvh
	6UYFp/EvJ+JT1OisCs4xNWIvrIiB9QTfXlcx0/lGWQKorTBi10BU05wUlEEABEAW/0ZZuLl9XAx3G
	YB0ZybXlI9215fCx6imw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCwRX-00000000tDs-1qiC;
	Wed, 15 Apr 2026 09:21:55 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCwRV-00000000tDC-0O9t;
	Wed, 15 Apr 2026 09:21:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JPRYD++rH2GEsY/bVR1SDnDA/9s0HCC8elgBCUBh3r2PB/OLiwvwEfeMO0YUMLGQWv5XRrseceykAqNYV5LTz93fWKztGz7vbVM2U7ojH/g+qwmzrIbMu5X4PUxs0PW3cj55+BGGP3phNPPGyRVke5AWPjiwCW4rQdq1unXxPr5bcyI32xMn1wfvvnzXxgEp/tIKlMAn2beBZ/fYbMSg4lYOBATFZVGPyPPSxu7OtrnWCN/mKC6l3tV9ejp4yD0o5L56/YzafaEmhcs+/kQWV+FAxzXbp+NYEJFhxNkRhElejEnrwb53ZnwnezpzchlDIb6ura4dMXek+orUD6/XIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DiZWMewKGk3E6eySD3Ob0SxXFPu6yGdRa9Bcu8TWwTQ=;
 b=bIr73QPq19IZReaqluYwnIwCJdnkdP2wJA6DfQvWLUBA8bQr89ACCkJq5n+B4jTRHXJWUIGJ9VDsSspf7ck1vKacU0o00mkguSQUStdhTTZaFY+VPjzBHdASusjgfnnXLImZ6bIqnQaIDuGJE1AoYtooJ14ajJbHOPQrP4d6AKYUXqP9fWlmWgvs3wzftJfZboag/E5B3X5NmBr/V2tIcIqRxrAsy2vpCJZKMB/mULG+LwWZJZA6nOZabMjBZS4qnW5wVi5801lcB12Ii+pidC2blu2KD3BP05tSGYKBa+CvC8Tj0x2HLGYblMANfbXwgzHUyPC9KRNSzZ9j8m0GhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DiZWMewKGk3E6eySD3Ob0SxXFPu6yGdRa9Bcu8TWwTQ=;
 b=chGELXGGMbw0lhXDwumEPes1RmHedTH4eQDFc3xw3FNzf9eSAnRl4PdAa6ZiVRejDO7cwJokn6xyLLmK+aVOMOvqfdnAsYe3k15FyEj2JkKn7UsvT1V5Nqbxt6jYlgGJYNFemxuMPQHGjh6gUQu2X+6XJL33iccZeEZMP8wztSoPaZKWWEWURgZN6Kcq9WXut1Of+0BgCQKcCQ6xsWOBzLp7bMG10AMWAyX9tRJk319DbztAjU+aBM3LA0OSAovJfMLAz2GG5n7fchNqTBNyVMsZJlp18fvSU+MCyJrfzxzTfrv/Nf6L/gYNdmGNhSLdyDWkt8KD9wh8oqDwBx0bIA==
Received: from DU2PR04MB9081.eurprd04.prod.outlook.com (2603:10a6:10:2f0::13)
 by PA4PR04MB9438.eurprd04.prod.outlook.com (2603:10a6:102:2aa::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Wed, 15 Apr
 2026 09:21:44 +0000
Received: from DU2PR04MB9081.eurprd04.prod.outlook.com
 ([fe80::b025:f7ce:2cc:9e5e]) by DU2PR04MB9081.eurprd04.prod.outlook.com
 ([fe80::b025:f7ce:2cc:9e5e%5]) with mapi id 15.20.9769.046; Wed, 15 Apr 2026
 09:21:44 +0000
From: "G.N. Zhou (OSS)" <guoniu.zhou@oss.nxp.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "G.N. Zhou (OSS)"
	<guoniu.zhou@oss.nxp.com>
CC: Michael Riesch <michael.riesch@collabora.com>, Mauro Carvalho Chehab
	<mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
	<krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
	<heiko@sntech.de>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Frank Li <frank.li@nxp.com>, "linux-media@vger.kernel.org"
	<linux-media@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>
Subject: RE: [PATCH 4/5] media: dt-bindings: add NXP i.MX95 compatible string
Thread-Topic: [PATCH 4/5] media: dt-bindings: add NXP i.MX95 compatible string
Thread-Index: AQHczIo7yqSdwt1jm0+Tq4wQSiYCi7XfxYEAgAASMWA=
Date: Wed, 15 Apr 2026 09:21:44 +0000
Message-ID: <DU2PR04MB9081CE0130B8924A2B3C9E14FA222@DU2PR04MB9081.eurprd04.prod.outlook.com>
References: <20260415-csi2_imx95-v1-0-7d63f3508719@oss.nxp.com>
 <20260415-csi2_imx95-v1-4-7d63f3508719@oss.nxp.com>
 <20260415-glaring-premium-nuthatch-ce00fc@quoll>
In-Reply-To: <20260415-glaring-premium-nuthatch-ce00fc@quoll>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oss.nxp.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU2PR04MB9081:EE_|PA4PR04MB9438:EE_
x-ms-office365-filtering-correlation-id: ecf7765a-8668-49ab-cfeb-08de9ad06967
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|19092799006|1800799024|366016|38070700021|22082099003|56012099003|18002099003;
x-microsoft-antispam-message-info: Mw9XkK+Zg/RINL6AORcMAFMYowJ11dvcqX2FewvlL0OhsRgpRwQ6dgHTpF3GGcMrBI5VYY4H0p2bf/qUQ8Z/zkaQ7FAQg2Mfl8v+SjAslXBKf3Yg99kPAWd1b2ruVEJIXc8pfkRwHkNlRQLx5H3CWUsQnz7BDnzOK6ErsfsOpBZjdrGT9jLw5yI0nj7uzMc70sPar7CSMTYpVtTIOF/vT/lgfkrB/aO67btkYu7O3LJ7Gik2PkFrkX9zgZj/Ybtl4+swpy5Djso5GPtzS1K+dXdnW82T7xY62OkjtdtWvVTP3NSL7X81haxLzGEQm0G6xk/lpHK+BPQO/1rIWmhBjiwalPzuUHc+sc42jDBPJcR53iY0PzmrZLV2XSs0g7t15c+SILoPOxfnfPDVHq0wxdUBEAO2WXvaVF90p0NjflHSE0ylLdg80mf7E0K6Bx444NRwMqGAjV22qd1AGXKngpAcNLweMaqjR3t/3DTwypBlTJZN+tK/IaBHxzZfT4mC6Vgn5vdirGBFm5eoUHYL4QJ5xrXK3Ab19OmRUyNd4SjlB/Qt17SoyjzM9dZuM9M4iIxr758UNyDT54mYLzQJhbjXxdKl9WGzUpStwwUcZ+Il8ZDE92IdyX8w+6qJgcYlS13Ay/+zci7v+Vc/jdmjho+V0QdwVUgKNniIK1QE+nvgxRllWsgwaiU8FxZGvJIbhq9fqFXCRo/CUNb8jSDzgIstfV6JLP9t4GV35ttX2TOc5C0eMRvCFmwzce+t2rykRZm2dypXu2+kNBxpjEsX64PEhLZtG/W/Cv5HYUpw6+s=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB9081.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(19092799006)(1800799024)(366016)(38070700021)(22082099003)(56012099003)(18002099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?LzRmc3NhZHlZdUVMYm8wTWlwTVhIY004UytjTC84QnZra2ZhVHl1QVFyMkM5?=
 =?utf-8?B?YXJXaDk4WWFmVkI3S3ZoemJNa1VkK3F1Z0xLeEVXVXB6S0VNaGdZUDJMNTNZ?=
 =?utf-8?B?SGQ2MVhQY3NKVWxqZVNCSGdwK2gyTmtjMG03b2VjR1JZUURXVUNFd2h1YS9P?=
 =?utf-8?B?cCtqd3kxRXkvMTFrOHR0Z0N6UDJSZEdpdnFaeCtFVEtVWHgzdzRwY3p3aytH?=
 =?utf-8?B?UUdOSGNhWEJIRGFkMUR0alJCeDFObndLUkk4ZlB3WEV2cExaMnpEVFJnRkxM?=
 =?utf-8?B?RkEyeTJDbmw5RTM3ZkJSY0g4MjBzQjE5U2VLYklILzZNVXp0ZjVyMjN0RjZo?=
 =?utf-8?B?d1lsMzl1ZXdENXhwMnVVRGdtTjJmMWUrWXlnSE1rZUcvbUJROGVkT2NwL3JX?=
 =?utf-8?B?V29YRHVMZ0lwYnNhNStTQTBGL1NFb09wZU1EZkc5TTROcElKME4rUmlzcnZU?=
 =?utf-8?B?bXRabndmdVBXY3gzMWFTZ2dCYWVwN1hyNGhtdEJDd21uKzN3VnIwcEh4RXho?=
 =?utf-8?B?SU5EaytiejVQckl0c05WT0w5YWNPRUlPYllWb2x5Sk5lVEFWd3Z0MWFiN2ZJ?=
 =?utf-8?B?Yk5OTG9mM2M5OU14b3hOOElGc21xeG5IQ1QrcFJxNHBoWmdsTUFFSkxCUWRK?=
 =?utf-8?B?ZGtFZlVEdzZjTHVnNDc5NWRnQTlETVk4VmhsamlaYlBTVURWRTFFaGFHdTA2?=
 =?utf-8?B?OHorc2JJNTNrU29DeFloUVVhYjlCcVB2YmhabEVBL281TjcvdkR3eTdwMFIw?=
 =?utf-8?B?cCtrNDRrUGUzdDJ5UkE1ajU5SU1rZGxCNkpPdXVsbFRhc0VnSTVYTXdyNFIw?=
 =?utf-8?B?WWEwMFZxczl5Q0d1dm1vV0h5QWFSbDV2MTl3VU5TUjl1ZFhvakNoT2Jsc1Ba?=
 =?utf-8?B?enBXLzVGZzR1bVFNWXdaaEdjSkdGQy9xdkpQUGxLWmg1VkVuTDg0QTBmOVpq?=
 =?utf-8?B?alowUkJ3aEVzQ2JEWWc3YUJUa1BSUzR5MEhjWGw5eXcrL2ErYmRUeUloOTE0?=
 =?utf-8?B?RFJNWWl1dW12OVh6NktSMmxiWGJibGgrak0ySVhZL0lzeURMN2tIeUxabndT?=
 =?utf-8?B?SExwblRzNzBNeU9iMkVQb0l4cGpQRUtuM0Y5UkU5STFaVzRyWGt6S2o4SzJi?=
 =?utf-8?B?Uk5QcnFucnVpL2MzLzNoQ1FhQTAzd0pWRjd6N0M5ck9hQ3BWUUZUQnlpbmRs?=
 =?utf-8?B?ZWYyTzk2NVdTaXB1ZWJpMFNUUkhRa1IvTTJheDVLZkh5Wi9HSlN2UTEvbW9R?=
 =?utf-8?B?UmQ4QytjZjJXMHJ5QjJ1ZUZyUEliOSt2QVRiMlB5TDhGZW51ek5FYm1OcVk2?=
 =?utf-8?B?MStGNWh2SkVDeTZMTU9yYTA0eTNHY1A5RHhTaG1tS1RoSk5rLzJlWEY3eDY1?=
 =?utf-8?B?emQwalVDa1RCbXFKUmF6QXlLYWpPczF2dEZ1bzNVZmJDSFFodXpNYnhnbDJQ?=
 =?utf-8?B?NFUxREhEcTJWUWREVUJjTjRhRDV6WkdiOFlRTDZMNEhWUy80V3I1NkZ5cHBY?=
 =?utf-8?B?T0V3a0l3bzVvSTErTjVwQTZYOGpuVW1IYjNCcW5pS3ZzWmt5TTVIYWczY1h3?=
 =?utf-8?B?Q0Y4amRZUUVIMWR6djNwT2RsL1JrOUZHQmF3aFlFNzJhcUlHcWszNHRjbVY2?=
 =?utf-8?B?T1J3RUJkZnd2MFNGSVV0NzZORjJRSUE3cmZyWHdLWTg3ZkRnZlBzMVlhSGJY?=
 =?utf-8?B?dFJNUzVoQ0ZiTGZwME43b2lCYm05dDNPeGJoS2xFSEgzOGtZVVhUakhqQjVk?=
 =?utf-8?B?UTFIaE94cnZ6eVpLVGxNaVVLOFZoaGtkSVM1b04yc3lURXRMOTFLUFpUWE1Q?=
 =?utf-8?B?eDBKSjJwUGFQdWt5OUhmdVE0WkdsMm9hUmpDZEZWbnVNOHJaTmJjSUxtUCsr?=
 =?utf-8?B?b1plT3NQZGtRWDVjNENWVFl4eEllV0xuSEZkbVNId0oraWJuRDlwWWVvT1NT?=
 =?utf-8?B?RmRZQk5oZ0QvalU5amFBZXpTODRRNTUvUlQ4OHF3R1RleUV1SVVHUW96bDJ3?=
 =?utf-8?B?VkkxSFBZZmcreGwyM1ZPVmNOYkxEeTVPMWhZVGs1VUoyZ3BYeVZOck8zOW14?=
 =?utf-8?B?ZFJIK0pLY0hPZktYem9pQ1NzbU9XeGZDTTIvWGpONGRNMTBJZGhaWERkNkJ6?=
 =?utf-8?B?bzhyVDNsNDRpcEk5R2pNZUMrR3VXNEtWMGxsbE5TbXExQi9pRE1kYm16czYz?=
 =?utf-8?B?QStYc3g0alhaVlVlR1FDUUR6VFYwRnY5bDhXS0E2Nng1L1puVDM1QUlXZWw5?=
 =?utf-8?B?THBJbnNVbTdIVGUvTjdoTXc3ZXpYVDNySGJIa3NpcUZodmlZQkNpVjNtNXRJ?=
 =?utf-8?B?TkordDZEWGRqTUYwZWFkNHU1aEViejNrWG4wZjEyMk9XT0h3QmF2Zz09?=
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB9081.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecf7765a-8668-49ab-cfeb-08de9ad06967
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2026 09:21:44.4888
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P/0MdPc8jkhsG8qUTy4GZJRLgdh4376akA7QAfN75poiQAhyP3z5maH2isxgf4QCunDR/16ahlSZOmoh/wamxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB9438
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260415_022153_158153_CB78DCAA 
X-CRM114-Status: GOOD (  15.85  )
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

Hi Krzysztof Kozlowski

Thanks for your review.

> -----Original Message-----
> From: Krzysztof Kozlowski <krzk@kernel.org>
> Sent: Wednesday, April 15, 2026 4:10 PM
> To: G.N. Zhou (OSS) <guoniu.zhou@oss.nxp.com>
> Cc: Michael Riesch <michael.riesch@collabora.com>; Mauro Carvalho Chehab
> <mchehab@kernel.org>; Rob Herring <robh@kernel.org>; Krzysztof Kozlowski
> <krzk+dt@kernel.org>; Conor Dooley <conor+dt@kernel.org>; Heiko Stuebner
> <heiko@sntech.de>; Laurent Pinchart <laurent.pinchart@ideasonboard.com>;
> Frank Li <frank.li@nxp.com>; linux-media@vger.kernel.org; linux-
> kernel@vger.kernel.org; devicetree@vger.kernel.org; imx@lists.linux.dev; linux-
> arm-kernel@lists.infradead.org; linux-rockchip@lists.infradead.org
> Subject: Re: [PATCH 4/5] media: dt-bindings: add NXP i.MX95 compatible string
> 
> On Wed, Apr 15, 2026 at 11:46:55AM +0800, Guoniu Zhou wrote:
> > The i.MX95 CSI-2 controller is nearly identical to i.MX93, with the
> > only difference being the use of IDI (Image Data Interface) instead of
> > IPI (Image Pixel Interface). The binding constraints are otherwise the
> > same.
> 
> Nearly identical with some difference really, really suggests they are
> compatible. Express compatibility or explain why they are not compatible
> (difference between IDI and IPI unfortunately does not help me).

You're right that they are very similar. The key difference between IDI and IPI
is in the software interface:

- IPI (Image Pixel Interface) on i.MX93 requires software configuration through
  a set of registers to enable the interface and configure data routing.

- IDI (Image Data Interface) on i.MX95 is software transparent - it requires no
  register configuration and the data routing is handled automatically by hardware.

Because of this difference in register layout and initialization requirements,
they cannot share the same compatible string. The driver needs to know which
interface is present

> 
> Best regards,
> Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
