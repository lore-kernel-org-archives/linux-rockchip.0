Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFC85CD4F26
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jun 2026 09:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vjZJmCwpagKZFltvMxXRhgQtq5bZ/ij5OsbCnsOn+ck=; b=ShdmhJQJI2Ih7jqv6qU3TNLNk8
	cj3TiNIRyvxRX6E+dq76x1vl58cOXqsamtQWVBgMPTl3FHmsOKmmrfBWOj9bpKpPQO0pzoRTnWHHt
	bQW1wZOkzn01FD4NrDKe5naJqlJ4YuspNtx3AF3/0ORpwfhTvy8mdhyf0FKosNjV794G1MagFP6Js
	JltNRi1dfoz2UuJ68uVM2a3hquSvJrBcGphdB+uifsuC2m/h/mTLIw+NZUNAUt9hibA1GxSxprx9t
	lq9fS9ZIrC9y+DR0xO0wLCGtU7OFC4uVZtd/7+AAmLJV0uRm8mQGC8WiJqfPcU7VtWASRyd+p0A0J
	1I6SSbCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waVIc-00000002D80-0sR2;
	Fri, 19 Jun 2026 09:14:06 +0000
Received: from mail-northeuropeazon11021101.outbound.protection.outlook.com ([52.101.65.101] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waVIY-00000002D0p-0Jv7;
	Fri, 19 Jun 2026 09:14:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PigLi6kH8IFn6TNsnd8nl2Cq2+uUZ700PVL546ONyjn+chN2P7+BlF4puU+FmKPi9Fes5gffR3LjMuPKIKvzs0NKjZYuPEaUO8eJxKUySQchNXRsb9H01F3A+8gQRyoDU8OCC1UysA6bKG9JHs40euK1cMXBNFQVv15pcMYNJvr6jjtb3+DtlfMhcl74jzaYNzZD7ZfQ1tMAa+vEOIfB7dk1TmI26729OqWjJU6yEUSGaCuj5awboyH1wueka/sWnCVa0W5PMA+ob0xtMVZDFioKHb46WRofLuLHsRxsZtpZvrpyUd880oZtksRMUfyo9lEj0cab84lfN/h2GizL9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IhEzWR9s1IiHJwKfVTjkz4E6vzsV4JUjbBcYm/k6HhY=;
 b=Gse4Y03/08wI0eX1vIZ9hJJ3DL3sQa9KD2Da14UG146cqtwrqEyUAi2ZwF1qKSgEwKVXx3+0tpRPBTW3HofiNDcKnWSzSTq8SzhIGQy2Xv13/tv/5aKMPm/hwIHLPgAOCXb285ARB3XYrYkTM4SIDAaXm1LHIah84RbMliIgbYS88iYO3l4eOc0YJ2liOPcG5W+FCAzlwvA28L7FgiHbGSJNizHHNfLXzD/JWWbzc+m0YRVHMtcAxyxA29SjCIjAqzEBZ0tVovGKOWrNcz4E4m9i/WAvt/YEXKGYDh98XvGqO2djBoF8zhO7mEKKwBYlQtkidFuPKPiwiSLyCuoaTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IhEzWR9s1IiHJwKfVTjkz4E6vzsV4JUjbBcYm/k6HhY=;
 b=X2ParqWjhzeJVer/hO6vkeumer5xUxQ8xPZSh2gnDzsp+RwSxSWdtnyV2TVGocv2GnLA0PkfjMrkiP0euQltoWeQahlikDZculsQ5Pp2j1Y0rk2FP98Dda21ei32MExuVk8lF5FKpWtLEoGtWsvBjvjPxMbjRPuElGyqwX0zLV0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from GVXPR08MB11763.eurprd08.prod.outlook.com
 (2603:10a6:150:313::16) by DB3PR08MB9010.eurprd08.prod.outlook.com
 (2603:10a6:10:42b::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.13; Fri, 19 Jun
 2026 09:13:52 +0000
Received: from GVXPR08MB11763.eurprd08.prod.outlook.com
 ([fe80::8790:5e3:beb2:5bc6]) by GVXPR08MB11763.eurprd08.prod.outlook.com
 ([fe80::8790:5e3:beb2:5bc6%5]) with mapi id 15.21.0139.011; Fri, 19 Jun 2026
 09:13:52 +0000
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Date: Fri, 19 Jun 2026 11:13:40 +0200
Subject: [PATCH v2 2/3] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rockchip,clk-lane-phase property
Message-Id: <20260619-feature-mipi-csi-dphy-4k60-v2-2-323356c2cc2e@wolfvision.net>
References: <20260619-feature-mipi-csi-dphy-4k60-v2-0-323356c2cc2e@wolfvision.net>
In-Reply-To: <20260619-feature-mipi-csi-dphy-4k60-v2-0-323356c2cc2e@wolfvision.net>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Gerald Loacker <gerald.loacker@wolfvision.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781860427; l=1221;
 i=gerald.loacker@wolfvision.net; s=20230502; h=from:subject:message-id;
 bh=lcP7luCwayU8CGZISZ6aKen/QI94Pu6AY1qZbKrjC1M=;
 b=tdLi2BoiGecDJPEdxr0STkRi/++uDVp9VCYH4EQp5hBlLl4wt49cWpRG+zvW7RUmPuf832zcX
 6nWBPffJlcUAbBhumfyddj5N5X/aIgO4gdcV3M+gdAx45gOxzwF4Pua
X-Developer-Key: i=gerald.loacker@wolfvision.net; a=ed25519;
 pk=UXhp+obGMUOjknszonesnb29P6a2Kk/K5eBuz62ggVE=
X-ClientProxiedBy: FR2P281CA0099.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9c::9) To GVXPR08MB11763.eurprd08.prod.outlook.com
 (2603:10a6:150:313::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR08MB11763:EE_|DB3PR08MB9010:EE_
X-MS-Office365-Filtering-Correlation-Id: c54394ea-f41c-407f-c571-08decde31377
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|23010399003|52116014|366016|1800799024|56012099006|11063799006|22082099003|18002099003|3023799007|38350700014;
X-Microsoft-Antispam-Message-Info: oCO0Dh9pxMjoQp9LBacwAsfVfWHCu2LZQuubVos73CLGP1AX0Ct+IiECGULE+tXr+zrLYMfCwoYr64lVzK3QtoBB6pl2kL4/ojbxAQ+KOJz8RhoBBzZCGdJIZsmdl8Jgm7CY6YVOhZx0Jh/6Aq4Ju+tTRRhj4DJdw62fSc6nIP7aPVaIb3A3J572qTdsFR1P4FktS4wTwSTK5IKnDhUBSr/tKnlJ9MdQQ7X/nG0HXZYm/0sC+Nb+/Ndolpu0qFh3+o5Tr8BiOfHudnhaLxk19C5HAWYyBsZnqmmpfT7r8/mcrQeRGey/Gepqa4EBVrriJ8C5OZSbzkR/lc9xDez5L/CvzCqmLU7Qfr7AGKgwcabTt9UvZoY6mljIHxjkewGHXB0B/SZ9bm2woE0sC7vFxmF1qewCRgdR3jb7BNoXATKWYTq1Lw6RxaV7dpJqdrgFCcBn8CYLup40by5FkkEKL7XkcAjlMmlJjv/V+r3MxbI7/2OIXCkQe60uDq0mv8VO+RZBEJk/Jw7BzJXG/dbGzTRaB9jYZiN900ELq01anC662Y06pk4mTH4ZeZbeFLAfwELn/AGB+jNT+oqPx3i6qSxVRQEPoN6t7I35a812vQIeVIb8vgINQuZUw913KlDtbQQeR0X5nPM4Qfp7iUTViayLHFjnfUnN2E6Gvmz62v24uCkEqkP2kuiF3uutkUWKvVjWvNVFEPo5gwJDiVb1btkUHaHwkysxVPhmI/12q+A=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR08MB11763.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(23010399003)(52116014)(366016)(1800799024)(56012099006)(11063799006)(22082099003)(18002099003)(3023799007)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXk1Ulc2UGlIM2lMVXFkK2x3a2dwNE9KZHZHbHdQYSt5WTN1cGFSTm1IMkRL?=
 =?utf-8?B?OWE4THRsbXdhTm10UUlwemhkTkhMbTNCSGt1U1htMFNMSy9hb2daTzloNEEw?=
 =?utf-8?B?a1F5K3VXRFZteGFCSkd1d0RHcjNYYml1dVZYOXkwVmM5YmhJSno5WDlqNm5D?=
 =?utf-8?B?OTJIL1NtWG5CZkZNYlVsdkpnbnlBR0U4YVJ5NWJic3dCeWU5eGF2SmxPRE9H?=
 =?utf-8?B?RGNpa1FiNUllYWlVNzFRQktGNWNMV08rbU5uVFJTaFV3b29BYndyWWlMc05n?=
 =?utf-8?B?ZVpvekVhRlhBaXR5U0dVVVlPUWNzeFo5NTFaUGhCaUtSY3IzclVtSVR3b2g2?=
 =?utf-8?B?M0EybitkekYzNHFlWmJ1U2hMeW1LVzIwemJYbnBydjRaSUtVaHdOTnRsWGFL?=
 =?utf-8?B?S0dIazJXUFpwdit1cmpvb2RZVHV2UEVVcXZpUloxQTArQis5UjNMTDU5WkhN?=
 =?utf-8?B?L2Z1WDFDRmR2T3EzaDVaajN1NUMycDM1b0cwWkNxQy94SnZkNU1kSVpvbGJp?=
 =?utf-8?B?ZVBkS09PMVZIbGN2MjV5VjRlZlgxTEJWeFVuemlhVzRBb0c3U25Uc09SM2Ux?=
 =?utf-8?B?RFBEMDlsdTJiOU9sT1cveG16RTdnd1VUbXJkTXZENk9KVi9lVTg3bW5uZ1pt?=
 =?utf-8?B?enlweExrK1JJTWNFWkVyaDIwUzYvSnVFamFBTDRtdkdpM3BwRnh5MHpNRHVt?=
 =?utf-8?B?N2E0Zjl4VmxyelpyOGxRYlFFaDZGdSt3WEZ5YWtxVHEvSlVmcC92eml1d1Rn?=
 =?utf-8?B?NlNOa2Y0dERGSDZlQ25od3J3TFp2WkxaVVNkaTRvaW1KMWFKdklmbWpsaS9o?=
 =?utf-8?B?S0JXRXJHWklOS0dheXhkTE9FUjVDNFlDaS9aWXpOTm9tMDh0UmxtY2FnbFFs?=
 =?utf-8?B?RTZCVXZkamRXdGhsWm5nc205bXRxZFhrdjlYczduL2RmWksxeGd1TGdUUStv?=
 =?utf-8?B?d2loSUFCLy8rSTN2L1dGQSt2UWVpL0ZEK1IzemNHdmx1SjRJeEhOc1V6TTEr?=
 =?utf-8?B?WWc4TEpKTGt3WTVHT1NoVndSdDdqYVpOYXB0aHUveUk4SDVDa0I3K2FqdDFH?=
 =?utf-8?B?YldGZkRNS0ttS3kwQ1dldmtVUm1EU2ozWUppZTV1Rmc2MDc4RzJtaUpGbzVB?=
 =?utf-8?B?UTl6SkZUK1pMWVJZTGlMVHR4VXVDaktoQ3BlVWxMdTRVV2pFZm95VnlEUDZI?=
 =?utf-8?B?TllNeXNUTWNHLys3WmJwMlg1S1h3R0dUTmxpVHNROE4yVE9wSVhBSC9qRjM3?=
 =?utf-8?B?S0hadlhRRnczQjRxamx2dmgveEdEZllLWjREeXU3cjgvSXY2Sk1GbG1Uejd2?=
 =?utf-8?B?cTM1dnczaHREK2YrTmFGM1FSMlVIbm4wT3BCMVpHOGVvc1JwTjlML3Rvbi9Q?=
 =?utf-8?B?R2prY2srajhGbUg0aDFUdFNDVEpMRzBXWTB3ZTBRc0NMbVJhTFJQOFRyeUxk?=
 =?utf-8?B?a3VycU03cDZsZ1BHTU5nd0o1RGphVjZ1N1YxVEViMFlGREpsalVWZ1R4b1BH?=
 =?utf-8?B?Ui82dU5lc3lSTXBKZnRCVVhVRFlkT0VDRVIvSkxEa0ZKM1VabDk0ZFl5NGlF?=
 =?utf-8?B?YUhmL1kwaThuci9TMEh4UGJkdnBuL25RMFlrUjZCaGNGV0ROelU4K0pzbXVS?=
 =?utf-8?B?YW5LdWlwdVBEanp3dDhhclZvcm1aRnpFRVFIc0VwdCtpSUs3YXBlWTZadGhV?=
 =?utf-8?B?KzFjNDlQTEcva0tndnF5TW83VW5oajBDeTR0eUQrQzVGbUxoS1pDRnh1Mnlk?=
 =?utf-8?B?dHNla2RROUJjYlR1cXR2NnRJTEtXY0l0MzVCbGlGMkU4TW1XdjFmRFFUczcx?=
 =?utf-8?B?bElQLzUyYVVxbFlSL2J6WmI1ZjYxbW9Ga012L0ViYzN4YmRBQUd6VlgyVGxl?=
 =?utf-8?B?QXhZUVh2ZVN3N1NMbXp5R2RSSkRHd1VQY2gyVFhBSERiQWt0eEMxanBqRG8r?=
 =?utf-8?B?ZFN4T3c2N2pGLzZ6MFIzd0RMdVlwU3F2L1JtbW5NbkxWOWM5cmFOd3RyZHJh?=
 =?utf-8?B?Nk9pcVVYZkxUaGkybytvQ2JKcWp0L1VHUHRWbjg1KzVvN0RFMlNHZ1RCbnJO?=
 =?utf-8?B?djlNMmg1ck85QjdEcU1wN3VjSzl5SS9TR1Nnc29RWCtvQnhuQnhYK3dhb2hZ?=
 =?utf-8?B?NHozQ2tZY2JBbkViZ3RvKzhiN2hYS25FMldMWnBXS3FMeStENnNoWmpWZ29w?=
 =?utf-8?B?clNWR1cyd0Y1NkJLellWQW1mbG5lNHl6U3FsMjVNdFRFNm8wSVhpSytMR2lC?=
 =?utf-8?B?N21yV1MrSzZTTUgrWUlDYzZZdHFtcjMxYk9GVU5sdkk4VFBlcWZZT1lWZis1?=
 =?utf-8?B?NlRaTGNuU2tCckZ2UmJoY0dTQzhlRkZBK2RQbjI5K3BEc1hpMmIzck9KUnFl?=
 =?utf-8?Q?EwfTwGDA/+HwZYNI=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c54394ea-f41c-407f-c571-08decde31377
X-MS-Exchange-CrossTenant-AuthSource: GVXPR08MB11763.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2026 09:13:50.2310
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yN3POvSIuZ+I1DS0BnYok9V79eFrx72hZCc/QxOyAXPJ/KOgcQLtjwsbi5mHXTQ4E5eJ89YHstXJ1SiStVU/r22emtEHk1aUaD5J/rinuz4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR08MB9010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260619_021402_118573_7DB6C3E0 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
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

QWRkIHN1cHBvcnQgZm9yIHRoZSBvcHRpb25hbCByb2NrY2hpcCxjbGstbGFuZS1waGFzZSBkZXZp
Y2UgdHJlZSBwcm9wZXJ0eQp0byBhbGxvdyBib2FyZC1zcGVjaWZpYyB0dW5pbmcgb2YgdGhlIGNs
b2NrIGxhbmUgc2FtcGxpbmcgcGhhc2UgZm9yCmltcHJvdmVkIHNpZ25hbCBpbnRlZ3JpdHkgYWNy
b3NzIHN1cHBvcnRlZCBkYXRhIHJhdGVzLgoKU2lnbmVkLW9mZi1ieTogR2VyYWxkIExvYWNrZXIg
PGdlcmFsZC5sb2Fja2VyQHdvbGZ2aXNpb24ubmV0PgotLS0KIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL3BoeS9yb2NrY2hpcC1pbm5vLWNzaS1kcGh5LnlhbWwgICAgICAgICAgfCA5ICsrKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAtaW5uby1jc2ktZHBoeS55YW1s
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcC1pbm5vLWNz
aS1kcGh5LnlhbWwKaW5kZXggMDM5NTBiM2NhZDA4Yy4uMDEwOTUwYThhODg1NiAxMDA2NDQKLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcC1pbm5vLWNz
aS1kcGh5LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9y
b2NrY2hpcC1pbm5vLWNzaS1kcGh5LnlhbWwKQEAgLTU2LDYgKzU2LDE1IEBAIHByb3BlcnRpZXM6
CiAgICAgZGVzY3JpcHRpb246CiAgICAgICBTb21lIGFkZGl0aW9uYWwgcGh5IHNldHRpbmdzIGFy
ZSBhY2Nlc3MgdGhyb3VnaCBHUkYgcmVncy4KIAorICByb2NrY2hpcCxjbGstbGFuZS1waGFzZToK
KyAgICAkcmVmOiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy91aW50MzIKKyAgICBt
aW5pbXVtOiAwCisgICAgbWF4aW11bTogNworICAgIGRlc2NyaXB0aW9uOgorICAgICAgQ2xvY2sg
bGFuZSBzYW1wbGluZyBwaGFzZSBzZWxlY3Rpb24gKGhhcmR3YXJlIHRhcCBpbmRleCAw4oCTNyku
IEVhY2ggc3RlcAorICAgICAgY29ycmVzcG9uZHMgdG8gYW4gYXBwcm94aW1hdGVseSA0MCBwcyBk
ZWxheSBhcyBkZXNjcmliZWQgaW4gdGhlIGhhcmR3YXJlCisgICAgICBzcGVjaWZpY2F0aW9uLgor
CiByZXF1aXJlZDoKICAgLSBjb21wYXRpYmxlCiAgIC0gcmVnCgotLSAKMi4zNC4xCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
