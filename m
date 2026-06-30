Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CC0FC43602
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 07:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/yT1NuBr7fZgTHurj8MOK7iBzarXfPds0CpAeHr/PIo=; b=Y6W2B7d4G1BjOzddDtSJzH6+Hm
	OLcjxkhDMFqZtPutNbyiN523nloZpWHfoiU9eLLIljdksD52+Bq2ftdLcMcLJms+TNT1Hwme4Efbo
	5w6+Hrvf1ZqU7fwRlj3T0poUDjkOLJC9YnLuqCPC+ajVnEvdQPgbhcFgcoBkEV85v7V6p8jAz69Tv
	JW8lljxhsw2ufk5XAwdYV2/WmafW3Zsr0pQm5mbUcL68wZNPG/8GWqVLl/FI7a9gQOKKRaIGWMZzW
	ept8d+kHrncWOqDvt8LrG9dTXu288ZcbYQlEK8z4RktOb4K9gihXnu/8pWssdppBqeiDaBVatqRe3
	yBQ6FCjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weTDF-0000000GASf-46s2;
	Tue, 30 Jun 2026 07:48:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weTD8-0000000GAHS-479M;
	Tue, 30 Jun 2026 07:48:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=WyxjuxbWIId1KydJ1iQKnZUbGUZvrOByju1Nf40tMpI=; b=VG2SE/FgHWtGR8UloFiuy5axFA
	yIO+zqAeODkiy+RU9QC09Kjtl6rEXC2LctfRc350jFtBWdMlhLZ/hVW3mmOAVUw+rwr9K3/tgpezD
	t+FnUZbudQoz+jxXTA4D+bGoZ6HC/O6n5N6z6M8gjSbvTbY3xgDtrMARCEs4EevOG603NtmgSBqyo
	z1UZ2JHLGTO5hj7xbbkFMpQzWKzUL1GE1KicC2wOIlcjPb5iUHXIbiuij3xmiawGeJzQ+MBI63OfI
	6/hM2KB3YRTzWG38lndruMaRm3sdeDv6kuvoRiSd56fnxcZ7KU7AgcMrPggnJ9RvBpKvJQzyUcINB
	sSekgEWg==;
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weTD2-00000004XZ0-1WCs;
	Tue, 30 Jun 2026 07:48:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yII+ipZnzEsSOUzC8ia6WQZmWa7mmKaNCcke4ZcOmco8uUSGv9UwXGvYfMip9Gxq/1FLDnhE46n4YNwPrac0ZNQksk2XmLih9MhNOI18TI9ll4lpSfjqZz8ThYctRCcCX9Dq4RhTQmZ0kd1zoj4kTKmmbMttfUULcjFjCcvXp7laJKAxMuBrtPUsSS2aW+2DajhFnj5lFezxkckx2HIyAUdL9stw5In1cZOAIHTb5+w4NGmmCHG7hC+qOemiwmMPcHvedMlMmUEekzUSCnOcIGByH1APIF+j93b7yhI2+rCrdMXmCgQnc/cpaRjyb6RhkXFjTxqQbZRgUpe0XgHAcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WyxjuxbWIId1KydJ1iQKnZUbGUZvrOByju1Nf40tMpI=;
 b=f+LDh+tMUVYd0lHxft3ZNBeTg/FmYRVE3X6YmgdAuysRV1onES05BgEaVNz9ufZszyM9EuXLVl98KaCmc0XCUUYow247i1DH8XoQZZqIiWL8js8tMSf4lzMlkS98Y+EbxkfSPzKQDy9Zbjnig7SaM4C38E34K/zCHRtJhrguF4th6e1y4pmiBj044CfhJDGKLXW5q4XfLq/PFplIJo6AcvwqQK2MuKb1Vugnz5PVr3OJ0syc+7reu3VAxStLXcDDjcqyplluTuhjM/PLG8YzYoQyb3rOFFNqZNsxFj/q5bNz7K23EqlToZp7jHSNaJW9z35Z5uGahrGKvqQMdMoDBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WyxjuxbWIId1KydJ1iQKnZUbGUZvrOByju1Nf40tMpI=;
 b=FoOjdkyjDPgujw5Vg4TRDlOk+C7mPOJ9a8a7+WZQwff7gMjrtRFPGBtYiMQa+UowaBZBTj+4p2+D54FsxplYjuEJk/CSjDNKUWbhIPrNBLvtKbMyjztKECm+qwJq/idtbQ7d3DljfdIKgmdIDJ9gPDGQ7z3JHyWPRok82Xij3EA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from GVXPR08MB11763.eurprd08.prod.outlook.com
 (2603:10a6:150:313::16) by GV1PR08MB10535.eurprd08.prod.outlook.com
 (2603:10a6:150:161::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Tue, 30 Jun
 2026 07:48:39 +0000
Received: from GVXPR08MB11763.eurprd08.prod.outlook.com
 ([fe80::8790:5e3:beb2:5bc6]) by GVXPR08MB11763.eurprd08.prod.outlook.com
 ([fe80::8790:5e3:beb2:5bc6%5]) with mapi id 15.21.0159.018; Tue, 30 Jun 2026
 07:48:39 +0000
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Date: Tue, 30 Jun 2026 09:48:25 +0200
Subject: [PATCH v3 2/3] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rockchip,clk-lane-phase property
Message-Id: <20260630-feature-mipi-csi-dphy-4k60-v3-2-176792ab71fa@wolfvision.net>
References: <20260630-feature-mipi-csi-dphy-4k60-v3-0-176792ab71fa@wolfvision.net>
In-Reply-To: <20260630-feature-mipi-csi-dphy-4k60-v3-0-176792ab71fa@wolfvision.net>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Gerald Loacker <gerald.loacker@wolfvision.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782805715; l=1239;
 i=gerald.loacker@wolfvision.net; s=20230502; h=from:subject:message-id;
 bh=XOInAcYeVANBzG1ouWWiDWDNbXTdfyB1GnggM9VN/vI=;
 b=KeDnO4R+61XIw8j1Q+ujHiQxRifjpK2kZTNNGnVAmqaQuy1Ohv0MUCPHtXc9DVq6fUChLGFHK
 A/hsONTy6jsCCbkAVdqvgTN90v+WSqJ7/da2pAXG1e6dResvpLQOcec
X-Developer-Key: i=gerald.loacker@wolfvision.net; a=ed25519;
 pk=UXhp+obGMUOjknszonesnb29P6a2Kk/K5eBuz62ggVE=
X-ClientProxiedBy: VI1P190CA0039.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:800:1bb::20) To GVXPR08MB11763.eurprd08.prod.outlook.com
 (2603:10a6:150:313::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR08MB11763:EE_|GV1PR08MB10535:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b76f525-c260-448b-d797-08ded67bff93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|52116014|366016|23010399003|7416014|3023799007|22082099003|18002099003|38350700014|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: whhcLbv3R48HEnNABHHjRMuNDkRadKfY2izTEaX8Mt7p/bUCNBbEKRlWI7L50fy19gK6YrywScdPss9hBQ4kR95joyLgd3OAc0xJGS4TKDkTxAkxoHuEFXweqfgfeHeQkAeiFTOwzOkGymkLTQ97iFayNb7D6HOVDUdGqU2x0nQq+12NS0SIcyRfZ1OV0FBOAEN2HP1lD9wpsCo15IRqMR28R2h2aRpxn5OfTm91DxgJQj0mhms9qzYx+0kGWzM0cJx3xpBTvL02Wu+Ug6xp24/L/1PhqPvHyOiBSRZVrHHIpvh2GI/Q0jMnSTbVOnkrVrvTsM/toqAlZpIi+EI6uoLsW4+sH+7kv4puPSZrOtS4xqPD38O8scqc8gRZhFHHT3nz9N0PAj+nu966mFlBkZbp88pVMEGYycHt0JwQ+FxzXDUf06lyJVYa2KlIhlWxiDc32WUPY727QQeKSA4EHYnVRwWUru6TbrHLZf6Ukx+4A6/C0tqVY4kvyH7LdUOQwZRcvUv1FBr9qeIAq1RHF1i1THprlPerugU1jolC1VlMx2i3oPeQodMUcG2bizbptuK9+5GL9a9acml3rQw20XUpmb9jdEDGYknRm8K/Unup90iTAsrL+ScnfVFDZmPQ+5+Xqe6nOnndwq8E2wnP/ky0ACbOx7J4nlYHyZHwphb6cCHwoDCSVZ+aK+396/qWO+alO4dtzwKQrK1kEHq9ZYdQ9y3i7mE41XO7oQoSuNA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR08MB11763.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(52116014)(366016)(23010399003)(7416014)(3023799007)(22082099003)(18002099003)(38350700014)(56012099006)(11063799006);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RjZEQVFDOXFsZ2ZIZFlYTDNpZFFLNHpTRktaMmk4UUUwZ2czNEFJdWQrOEFX?=
 =?utf-8?B?RmlUa0t6ZkZNNjRUT2VBai9UcVVGNTBGNFJDb0ZWNHczei9DdlIvb3BwNFlT?=
 =?utf-8?B?R1FuNGdwR3N4R0M3Yy9ETzBwaWJLQ3FYVi8zZFd6T3pkUzRsVEFJMVYvbnZB?=
 =?utf-8?B?K09lMUV0K3FGekxPblJxT3d1YnhLSVJNdzQvTU9SVjllbSsxMFVOVzFDcDgw?=
 =?utf-8?B?SmtqLysyS2FhNnplenZQQndFZVNxYndwKzlLS1JZVnpXdG9vdkhqRmluSFlI?=
 =?utf-8?B?ZHVWVktVbjZ3bE9MYkdmNnhmSG1mREEyNnkrVXBrR2hDU0U5b1Rudm9yNGV5?=
 =?utf-8?B?by9TWXFhcE8rYkdyLzhTWVhWZkVsMHZlNmxra0dRY09KSGlRWXAzUlZNMG9I?=
 =?utf-8?B?S3Q3SEpTOTVxUG8xSGdxdlhWY0pkc0R2RG0zVHMvaEFjTlRrMGtuR01SQ2lC?=
 =?utf-8?B?MWt0UnJWZHQwZUVrMDJTUDc1dDExZS81bkg3ZEQwMDhjcXg4QmhlSEhZMzJJ?=
 =?utf-8?B?WGZvemZQTXlCWXhXR3hqako4VnhUY1FlQnd4NU5ES2N0RWdzM3hqMzlrZ3Jj?=
 =?utf-8?B?L0xScFp4d2d3MzBPYkIzcElGRFZ3UU84Z0lnR1A5S2hVSVNUR3RxZ3pCSFpJ?=
 =?utf-8?B?eWtlTlBpYWlvTGsxSUc5Sk1ObEJEUTF2SFFZMTZWbnJRL3psMHVtUEF5RkRY?=
 =?utf-8?B?TlpLanl0M1I3RllzQ1UxdXFrNnBVMW4wcjFxU1RFbU1kMEwrT2hHMTIzOHFI?=
 =?utf-8?B?bThUNk4zRFBzR1ZpR09Zb013Wmg4a25vdUgvNEJZbW1yK2lZZGdSMjRzS3JC?=
 =?utf-8?B?UElFNnFtVjhGNno0RDczM3Y4djFvOHJNNXRnS3dOTDhBemlzRk9NQzErbk5i?=
 =?utf-8?B?UUZNSVR1S0dtSzF1T095OS9WVUhpOUEzWE9IV1U0aW15QmFUSU9vK0RiSVBm?=
 =?utf-8?B?WlMvNlY4WC91RUtTaXljN0NjQkZuZmpSSXppVzQ2aWFLT1dwRFJTZ2JpdWda?=
 =?utf-8?B?ZjRWQVdpc2FFaFA1YnVkRWZSUlN5SE1PNjhhQlVHN01rSE9pL2J1RkFOS0p4?=
 =?utf-8?B?bkNEaUxmWThsdmdPcTdpaW9pL1RvUlR4RzJVS2hscDB0VkE2Qm5qa2RMWTZC?=
 =?utf-8?B?bjdPeG9oS1pjNVFWOVhHb1hTREVHN0ROLzVrbkFEbWJ2dHlDTHp6WkpFTUJ0?=
 =?utf-8?B?TWNvVCtsUG5mOEd4bzQ3NTVPRW1lMGtZMG1UQWNMUVptTk1OR3pyTkRmNGZv?=
 =?utf-8?B?UlY0ZmRqdDVERDk0MjVaeFpDMmdEcU9vUDBtNFJocm9vZE4rOGJ6c0syRVFn?=
 =?utf-8?B?Y1YrWHJTNDJyWkVUUnE4S3RUcTVadFRWZkduRGh3VWdTNDg1UWtmN0RJVC9r?=
 =?utf-8?B?ZjZFZ3dsampNajVOdXRwaGhDdExQUWNUeWxvbklnN3hvME9lZ0NTalAzQTRp?=
 =?utf-8?B?NXBxZmlpNFZ3d3lxb0I0bUpOT3NtMFV5MUR3c0NQVVBOV2J2WXlYZHRHK0Rl?=
 =?utf-8?B?aDZiV2N2VkpYY0NTM3MvWTdJYlBYemRDL2tjWndrTlF4SCtDRksxTGZPaXZV?=
 =?utf-8?B?UStmVVN6dlEzZk9sMmNpVEFPOVRwb25icm1qODJ0akRmSDdqOGJMMEh1RjdN?=
 =?utf-8?B?QUl5Y0tSYWFZbjd3dnhhS3JPVkcvbmhLeEIwM3NGTTc3bDlvcVZsM3JhSTNp?=
 =?utf-8?B?YjdSV0kvTjB3eUl4ckRYdUF0ZnQrQkdoeVBjZGwwOHZ3UnN0RmhqeG1Jdnd4?=
 =?utf-8?B?d1JoaXV3MFEvS0pXUUMyWjd3Nkl5K3UwVWJxR2FjeE1MWUFVYW1yZW1raWU0?=
 =?utf-8?B?RFZJbWtxakVUcGlTeDRDcmRTZ25ObDJlcnNkOWJVdHZoNmdGM0k2a1F4endO?=
 =?utf-8?B?TWRnUERwM2ZCRHRaTXZjNzlvUnh3djBTbm1VT0hLZmJnbFZXQ0o0Ulp6NmlT?=
 =?utf-8?B?K2xyU0F0bzAxcGRrSGdiYlJ2YWo1S1lNNHZ3WkJFN29WNjRuR0F1MzVtZDdR?=
 =?utf-8?B?bHpRN0VvWkRMbHNkOWJ0ZU1EVTRkSHlmUngzK0FudkQrdU8zb2xtVU1iNVRQ?=
 =?utf-8?B?dDVrR1NCclVUQ0pWaFc3cXlOazhJOTdZaENJWWlxUVRUV3dKSVBsaUNSQk5v?=
 =?utf-8?B?dlVya3pkeis3emVaV2VPRkxrdXNTNzBWUTNQNnVHaFMrWmpaYjJJQzkrczdo?=
 =?utf-8?B?ck9TUlZGdWNxajdhbEdwNzdncSthcG1qeVZwMDBoalFmWDJaMzVsclpQSjdC?=
 =?utf-8?B?dDVYTmVQVDA2RUY5MDdEeW1KQ0RhMkNEeEViM2svSDJFc0FKSXIrT3NOZS9o?=
 =?utf-8?B?SnF1RFNCTkRyTDEwN3J0QVd2N05MbDljbFF1WFI4YjlEdUhUaUs4dFUyK3RE?=
 =?utf-8?Q?tNvNe1KZnY7lCvJY=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b76f525-c260-448b-d797-08ded67bff93
X-MS-Exchange-CrossTenant-AuthSource: GVXPR08MB11763.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2026 07:48:39.1464
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TsVFN3C6BvYI745GLISNPC7H9ALbmN5knUgrgEWDZj5cby8hdYD0HyWNkl9DRZfwTs4F12fwUBGK59jCW5TcxnHSMsGafQICqkvWyKMOep4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB10535
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_084844_659939_2979BC02 
X-CRM114-Status: UNSURE (   7.63  )
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
bmdzL3BoeS9yb2NrY2hpcC1pbm5vLWNzaS1kcGh5LnlhbWwgICAgICAgIHwgMTAgKysrKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tjaGlwLWlubm8tY3NpLWRwaHkueWFt
bCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAtaW5uby1j
c2ktZHBoeS55YW1sCmluZGV4IDAzOTUwYjNjYWQwOGMuLjkxM2FhNjg4YzBhZTkgMTAwNjQ0Ci0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAtaW5uby1j
c2ktZHBoeS55YW1sCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cm9ja2NoaXAtaW5uby1jc2ktZHBoeS55YW1sCkBAIC01Niw2ICs1NiwxNiBAQCBwcm9wZXJ0aWVz
OgogICAgIGRlc2NyaXB0aW9uOgogICAgICAgU29tZSBhZGRpdGlvbmFsIHBoeSBzZXR0aW5ncyBh
cmUgYWNjZXNzIHRocm91Z2ggR1JGIHJlZ3MuCiAKKyAgcm9ja2NoaXAsY2xrLWxhbmUtcGhhc2U6
CisgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyCisgICAg
bWluaW11bTogMAorICAgIG1heGltdW06IDcKKyAgICBkZWZhdWx0OiAzCisgICAgZGVzY3JpcHRp
b246CisgICAgICBDbG9jayBsYW5lIHNhbXBsaW5nIHBoYXNlIHNlbGVjdGlvbiAoaGFyZHdhcmUg
dGFwIGluZGV4IDDigJM3KS4gRWFjaCBzdGVwCisgICAgICBjb3JyZXNwb25kcyB0byBhbiBhcHBy
b3hpbWF0ZWx5IDQwIHBzIGRlbGF5IGFzIGRlc2NyaWJlZCBpbiB0aGUgaGFyZHdhcmUKKyAgICAg
IHNwZWNpZmljYXRpb24uCisKIHJlcXVpcmVkOgogICAtIGNvbXBhdGlibGUKICAgLSByZWcKCi0t
IAoyLjM0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
