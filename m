Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43425C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 13:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rS4FEkfAhdTugP5/ogHCakD59rQKntjf/Ll770qMAEE=; b=etyUtmZHB5yknsGqE6xlu+/tBJ
	Nd+tpFAZ5SmUDLLTXB0CZN+gpOOW68ZLapTnNIKvjluFxcQTy/i0r9iZjIDSpMwg7q5xEoBu2KP73
	PYXQAotlxo7AlF1cx4FbpCzojD5k+lXTXX0kcCAIgxJkGK1Xd1rdFio7G+8BJKizs+bMZpmOL/dwx
	jqOajTHCPrpYxqSw4Zpu5Qs4fA4PTt4M4kwwFRNzoTm+S6N4vcDmVoVddpJ76ggVIIB1mhw5gYTyd
	mfjHTj3QK3NKkAqRYz42gmbgy87vcBaMU8WzYIbuV1xtzf0H9CIr7pVXlg6mcqmGvJxVPvnD145d5
	CRWyolUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWyYw-0000000167F-1MBz;
	Thu, 25 Jul 2024 13:31:18 +0000
Received: from mail-westeuropeazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c201::] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWyWE-000000014V7-1Ha1;
	Thu, 25 Jul 2024 13:28:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cr31u1tEpDEsIKXGg2hDIg0yTFz1ATVtHkHoPRjVhhgVMCG0wmdEy+PRKXlNpIkzf36dx7KHKW4qEqk79f3ZF4N3bBzcBlC4kRCUVbZmXDsEhzi0y7u9czb/tJfvYcK1IB3lwChHuwyQ1HiHtltGMrkS16vdiOLhZsCAa09W/KHij1kCbGX+EepBCSkieAfbeZcR+KUBZbOjX73wRfHy/hR/0hqWrONDvJzSe6UgcmuPwkjLQ06vOs0FRa+O1k1jmyvSLVV+VH5VujXLn3nmAt35H6wtvNc4pZ5CbGjJTETO7a8JyvgXPxcbDMl1DZc0LA7WhLTWpaW2USLUMzD8Xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8i211aK1CQNyJCBZqzAK/lbL63CBSHQuaE0fah+7Cb0=;
 b=nKAQogLyC/ENU2I4z/nuB4AkG+ZjRtKpEPFIanQ8rRlck2oKnaT75Fk0MckHauMInXHHoHcT0ozznCGzD4J1zfuvS7j2LKaYpabqFGkc2LNgJxPe3l5PI10XrBfVnll3xJ7K+MHhAVQC4G7yXi7nsjxkhy2klvC5hWKIN51f/DXMrZ3LjLknXiL0RBwvmZD7Qkaz6l1MNiI2vu8rF8jJPIvcr9lIiZxSxtW04A/Sz0sop6zhTHMHYpZH7G4O3b71iZrtbRikwiESLbVhef7IhXSHE0jo6lvRopLBUANp04r3FkOOxsHm+shXzSb58+AnJtz4LNoMM+ZpLuBWw/+2Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8i211aK1CQNyJCBZqzAK/lbL63CBSHQuaE0fah+7Cb0=;
 b=CKopePlyrTYj2tFNx124/kmkCsw60I1shIG0X8okNfTlj73i8c6iqfRxWq945JptybNJER6Mn6WAI1NjsFizl9V8oz+CfXny31lQZsjV9ogJKp91nHtnGjYNiUbrPYwtgF9OoINixwKpdt80KF6v37CMepvyvOmKp+BhkNo6Fog=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com (2603:10a6:10:321::10)
 by DU4PR04MB10670.eurprd04.prod.outlook.com (2603:10a6:10:58d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.28; Thu, 25 Jul
 2024 13:28:20 +0000
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181]) by DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181%4]) with mapi id 15.20.7784.016; Thu, 25 Jul 2024
 13:28:20 +0000
From: Farouk Bouabid <farouk.bouabid@cherry.de>
Date: Thu, 25 Jul 2024 15:27:52 +0200
Subject: [PATCH v6 6/8] arm64: dts: rockchip: add tsd,mule-i2c-mux on
 rk3399-puma
Message-Id: <20240725-dev-mule-i2c-mux-v6-6-f9f6d7b60fb2@cherry.de>
References: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
In-Reply-To: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Farouk Bouabid <farouk.bouabid@cherry.de>, 
 Quentin Schulz <quentin.schulz@cherry.de>, Peter Rosin <peda@axentia.se>, 
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.0
X-ClientProxiedBy: VI1P189CA0008.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::21) To DU0PR04MB9562.eurprd04.prod.outlook.com
 (2603:10a6:10:321::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR04MB9562:EE_|DU4PR04MB10670:EE_
X-MS-Office365-Filtering-Correlation-Id: b9713c8c-8288-4300-e883-08dcacada68b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|7416014|366016|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y1IydGJTSFY4NE5BNGpiWDQvZ1ExQkU4REFMcGRHVXpUbjRmOWRobGJicGNy?=
 =?utf-8?B?SFNseHN5UmhKcVZ5eGhUeVNZaGJXamlJclRia0VxNUNwTGRKa0RHaUh2ZEFx?=
 =?utf-8?B?Z2FXY0ZmQ3QxOUF4V0htN3hjUkpIOVFwSmlJeFd4Mnl6SlpaVlVDdFJOOXZS?=
 =?utf-8?B?VEl1eTk3WHM0Sk1Ga3VBRlJLNy9lOTYwcnBvVUcrZGlFVm5LbDNqM3JqYkRV?=
 =?utf-8?B?aXNSMGFhQk1HNXdDM29kZzhGekNkTEw3eW9yRDZBYzdlTnpqVzRLV2dTaDhx?=
 =?utf-8?B?SzBodW9ZblRIOFMycm0wRzVqeC9nSEVnc2ZNVG5FNGdHZlJCSFZKd2tyR1VV?=
 =?utf-8?B?TDJpbEViSE9NdGlub0d3TXlGMkdGc2NXaytvRldVck1KV3FLVEhtZGo0RldY?=
 =?utf-8?B?ejFncyt6WUY0RFFvWkY5ZW0wVEFwQThBQTFWdnF2ejhkenllZXZvMVMzeWNm?=
 =?utf-8?B?RlJXUytkWG13WDAzMUEvZi80eEY5ckhrRUs0aDlVeWVhLzFyV3VRYWpUa2tT?=
 =?utf-8?B?V3VSYVNPQUJvekM0bVEzeDZwQVNWSGZhVXJzQ1J5TWZWZTRLS3BabXppL3Z1?=
 =?utf-8?B?L1N5eWxCQllUNHhDUUVBSmc2OVVQQVcxVEprQ21sSDh6UnJhWWVMNkdtNTBF?=
 =?utf-8?B?S3k5bjYwMzZGNDU3WnVtQXNYZlBNK1BtQ3B4a1kyYWN0NnZpd2NCc1BFcXVB?=
 =?utf-8?B?NitCNXNldzBOdU9BSWZJdnZ0bE53bzJqK3RQektQWGJNeVc4RDRNa1NNS08w?=
 =?utf-8?B?V0NDMmR3Vm1LdjZpcjN3YUhFbzl5RUpQelJsZnBtZDkxc1JLRStIV1VRdlhu?=
 =?utf-8?B?VFNNYk4rSmp1NGxwclAzankvM0V5ZVVYZk95WGc4V2RENlg1WXQ4WHRSUzE2?=
 =?utf-8?B?V0hjQUdORHZDdjR0MmhudzdRSmNkSjhodm9hQ1NDQ3NTZ1Y2YzdzeGZsV2dY?=
 =?utf-8?B?L0sxSHRMSCtOd3lpWHlwS3V5emlaYUQxL3phV1o3K1JlVExQa2x0RWhVdDRs?=
 =?utf-8?B?NElQQWpyY24ycnJXK1grUFZiOUZ4WWQwd0ExVUx0RGxpYlJBVUFmc3JNNjdH?=
 =?utf-8?B?bnYzNk9WU0VQdktNLzFyNklvMHVTQ1AyU0kwbk45L1RmQlVrQzRDU1F1QTA3?=
 =?utf-8?B?eTRMMmxWQmdGK0xQcHpsZjBnRDJsK3hyS0hjSFRPZmN1eVB2WW5rSE1HNkZm?=
 =?utf-8?B?VHVJaWx0MHBpYVM5Y0h6WXNValhneFVQaTREcU1QOVZRclJDbDg0cGNGOXhu?=
 =?utf-8?B?a3V3SXBocE1pMGNkYUUyeGgwSmk2TlAzYjUvM1B5eC8xblhiYXp6dDRKcFda?=
 =?utf-8?B?Qjg2aGdWYXlHS05IZ3R0R1djNk1kTzZsY3AzU2p0YzBITlJqdUdROTJ5aWk0?=
 =?utf-8?B?eFZBZnlTcWUycDhKMWxQdktvb25uRDljZFBYdllET2Ztcmc1REVwT292bi85?=
 =?utf-8?B?TEl1TS9JMkhzODl0RUtjSUpPcGRCdVZOcCtkcHpTbERycVhFRGxsQkxiR0xF?=
 =?utf-8?B?V3ZMYXN2STNzSGxJMmY1M0ZqTkhVRnhzZEEvUnh6dFEvTWU4a0FxRzhJcElZ?=
 =?utf-8?B?My92ck0vRVJuTXFvcVRUamlwWkRnTVdmUWg4YzdtTksyUGh0QzNGaEJzenZ5?=
 =?utf-8?B?NUFYTlI5SC90Zmo0dk9qdnR1dnRuUmlCN3pLS0h3OUZSRHB4bVRGMzFkT011?=
 =?utf-8?B?QlBSdWZpeUY3Rk1UcXRUZXUyQ25oRHlveU9NMUFYVFMyc0wrRnFmSy9ILzlx?=
 =?utf-8?B?SzFjaFQ4VWlIWlF0RStKbERGZlAvbXArNlcrQnYwclNicHp1cllJQ1dZTDlt?=
 =?utf-8?B?czNQZ2FKRUtWWXhXRXZ5YThjWk5KNmF6aWRnVDAxb0NsSkpTb0h4T1YvYUdp?=
 =?utf-8?B?TnhzQVFaRmZiaXZnb0k0NExvTyticnczR0ttOEVacjMrb2hzOUdXengybVRM?=
 =?utf-8?Q?txn1vGAEIvs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9562.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(7416014)(366016)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bE5YWFBqRFZqcGdIRmJTZHlGQ3p2Snc5YVlRNlJkMFh6UzY1T1BnZWg2ZlJN?=
 =?utf-8?B?ekhxWEhYQ2g0QXAvMldNYkxIcVRrYWlvZWY0bmlQcURqZndOR1FYb3JBR3Uz?=
 =?utf-8?B?Y3BINUZ6TFgraWJ1eXNyZlgzeUcwK0kvNS8wR2NNNUNHWDhHUkRjUkM1OUlj?=
 =?utf-8?B?SjRhUHZVa1p2bWpsTzg4N09aQm9JQUMvb1MwdnJ4R1AyZVJDZHM1L0pzOFl1?=
 =?utf-8?B?Rk93ZUZZWWxGZnU1K0Z3TWVaZzhVL0ZOTG15WmZZTUVVM0Qzald4VkloS2Mz?=
 =?utf-8?B?cThCZmRVRHhCZEViV291aGFTNE5ub0VFQlNZb1lKSk9UUkpIWWc0S09QdVZu?=
 =?utf-8?B?bnFhUWF5ZjBTQ3RzbGRTUlc3cnI0Q3A3ODNIT3pId044NUNhaFFXU1NySTFz?=
 =?utf-8?B?ZlFGS2dSbmhNUVpIUDk5Y20xR08weDZIZXJ1eEZTY0FkNVg1S0NuYzBueTdO?=
 =?utf-8?B?aEQ1OHpMWGNXc2tPaHRDWkVoelJzMkQ2Y0VaMmIxSWNBdllQTE41VkpEdGw5?=
 =?utf-8?B?M0J1RVFBTk05bi95S25rWTBhTm10WjRURGJPcVlhaWcxam1tSXYrRHFFb1RX?=
 =?utf-8?B?dzBueTdmd2tqS0NQWFVKUDJwaVNNUXoyeVBwTTZFUFlQd2JiL1ZWTi9ZTEJ2?=
 =?utf-8?B?RVoydTgxN1c0NldFVmpOYWNoNmxuekdtNVdTNUpUR0czc1MyTXc3WUZIblpi?=
 =?utf-8?B?NDIyTTJvRDBWZTNXWTZhK21jbDFId2RYbDFsS1gyRjhXcGM5SDZYR0hYNDRp?=
 =?utf-8?B?b0JwUWpMK0k4YVEzQlhRL0U3ZkVaNTVQME51b2xBS2o4bnF1QWpkNy9OVzdn?=
 =?utf-8?B?bDV5Z01ueURMK3ZOaU9lUHRrOFhLRFFXWUx0djlubkdkb0hUM2Fqdk5DeXR2?=
 =?utf-8?B?RVBwUkh1RHp2RmlYUHZJYmVjd1lmRkwxeE8vV0xXNlhWUVNIR2NWaFFxOVRB?=
 =?utf-8?B?elhFS09pcGpraHVscmNzMjBYUEkvUElPZVdaTUZJeDhhRVVjOVNWS0o0NjlI?=
 =?utf-8?B?TFZqYlErcFZ6c1VUemJETHlDUitKUTBMRGxsU0N1TEdLQ1RETWxuQjFvNElK?=
 =?utf-8?B?T2lIakxFQ3FYdkwvN0VEYWtzRlQ4LzlBaUZWWStvOEx5OUlVSlBvcXZQUjZo?=
 =?utf-8?B?QllXOFpuRXhHRnRnMjVKbWk5RVRia242eG0zMVhLRGdqMWszYUZ5NktWT1ZE?=
 =?utf-8?B?dkVKUXFNQm1aREg0M1pKSEJyYW5kRDREdmx3RWNvUURTQ1N1eklOcGJTd2lz?=
 =?utf-8?B?ZzhGQW02OXkrZGlvM3oxWTNrRm1ieGJjYUxwZWVDU3lLQ0dndW13eDdqdndQ?=
 =?utf-8?B?S2ttVjN4THoxRUk4TGJWU3J1dGpnWDFzUDJrQnA4bHRwQ3ZKblhJMGZEY3RV?=
 =?utf-8?B?NFcxN2J1Vkg1bDNxTkh2V2R4ckNsbFora21PaTlqV0ZTckt6UWZydEtDbGZp?=
 =?utf-8?B?SCtYa3ZJMTdsaU83WlhSZjRnWDMxOUdyR2F1QTk0U1Qrb0JYbUdpRHI2ZWtB?=
 =?utf-8?B?amdQTTlPVFZ4UXV5NmxIMUxLSzBkajVpZU03Z1gvUmIzcklscmVjMUs4bjJ1?=
 =?utf-8?B?SEo5VnBuOGZVa0I4RXpPU1UrczM5OFlreUhGMnloZ1dIWHNjbzJNUldpaFZD?=
 =?utf-8?B?Vkg0SlB0WjY4ZDFXR2hMcjBqRStqcFF5Qi9JSzg0NUhjV21oNERRSzVRUGlP?=
 =?utf-8?B?WEFHK0Uxd2VwaDBrUkFXMk1IOWE3TFpsc05UT0V0VE9kMTFrYm1XbTZTcTk1?=
 =?utf-8?B?Um5MZ0dqaG9QbjRwaGtlVWFmSFRINlk3MlVzUUlFYk80cGdVZU9CMVpBQ2Jy?=
 =?utf-8?B?UkkrZFYwRFYwV3dQalF3OWFuSUNHUXdCNVRBRDRWWklkeW9pL2VFbExYUjVB?=
 =?utf-8?B?dzBTY0xSc3h5NEpZdEtWMUxvbjB3UzBIZ0VYR2VacDBIVzlWK2tvbWtBeDc1?=
 =?utf-8?B?RVNacDRuL3NwcjFBQ3hMOTFwb254R3NyZ21zMXFTMmJVVXJSekhDUEZVcmtY?=
 =?utf-8?B?a3NLVk5oaFBlZmkrcWJHWTJzMjZCajY5L1NHT3ZISkdNSVhDZy84bXl4NGFp?=
 =?utf-8?B?ZkViakRwL2wxa2VRYXBVVFlYZG5SSFlFODgvS1FuODVYWERmcHBKeXM4blZP?=
 =?utf-8?B?amxBOUtENG9kdXVGUVA2UFUwTW1pN1p3bnh4RFZNeHNrcjZOQmtFM1J4SHYy?=
 =?utf-8?B?TFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: b9713c8c-8288-4300-e883-08dcacada68b
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9562.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2024 13:28:20.4490
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QXDDnVgoZbjWyNj1GQgNmoC/TJAXtSkWb5sTbf9PMh6e2jfG1BE+2vm4yKCz/qYD18sqqkFLGe9uuQOQvEIOxKnN56b2uwoTsXThr/1v8vw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB10670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_062830_602810_C6EB394A 
X-CRM114-Status: GOOD (  11.03  )
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

Add the tsd,mule-i2c-mux alongside with the amc6821 (tsd,mule) and isl1208
as a default device on the mux.

Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index ccbe3a7a1d2c..72a0bca57385 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -10,6 +10,7 @@
 / {
 	aliases {
 		ethernet0 = &gmac;
+		i2c10 = &i2c10;
 		mmc0 = &sdhci;
 	};
 
@@ -378,14 +379,25 @@ &i2c7 {
 	clock-frequency = <400000>;
 
 	fan: fan@18 {
-		compatible = "ti,amc6821";
+		compatible = "tsd,mule", "ti,amc6821";
 		reg = <0x18>;
-		#cooling-cells = <2>;
-	};
 
-	rtc_twi: rtc@6f {
-		compatible = "isil,isl1208";
-		reg = <0x6f>;
+		i2c-mux {
+			compatible = "tsd,mule-i2c-mux";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			i2c10: i2c@0 {
+				reg = <0x0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				rtc_twi: rtc@6f {
+					compatible = "isil,isl1208";
+					reg = <0x6f>;
+				};
+			};
+		};
 	};
 };
 

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
