Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3773C27C5E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 11:45:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e4O7AZWY04jCGysqOlCd07yxdX70aWBciw8GmgGB1kc=; b=LH1luITcIrjm8DfuzQv7Y4j4W9
	nj4UeB55R3NKV24/uem4EVXxu52tdBKZn84yV437mQjL0Tuqu1MJFdTgjbzZmgtejGzSRh8qkiNlv
	DhyrEQ5qfvFOYkUmA+ha9HJztMAvLBfJAsb5DzMUnPz3X+gYY/Rf3X++bc8sBhrbX//Sxc427lDnm
	M8NXt7ZiBH1Vcb+jKuV4IEdDCRSCpuOHxcO78CRIlWrYEx6+78guyyJajA5Qt6RDcaSuMKn2HrQte
	3d4RrIfXFG8VqbOznMiUbZkkWOZp51v4dKFAo5DoQQuuRoG4ashy2Z0GAt66cUkdCcYNkGIHtlxIS
	VmHPR2pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGzwA-00000008i1z-2qlr;
	Tue, 11 Jun 2024 11:45:14 +0000
Received: from mail-am6eur05on2070e.outbound.protection.outlook.com ([2a01:111:f403:2612::70e] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGzvi-00000008hdQ-1uPF;
	Tue, 11 Jun 2024 11:44:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NrolH52ujNhPcSwOqcRxJZCkPTABBXZeln3Xw5bMUPzQRELqfhqbAphnHz+1eoyUxu/Hjhs03QaCRInaKYNE/BM3FvisQPnXSDBchH6zTH+Cz8THluaxX1lvVcRiQ6P9MiVknPM9AA9OTyVpb/ASIB0XVArJkgHYv+UjgjAi16FBLIYK95PIbsO3QeZBL3HQ8bkDYpepQog42eBx0N71kRHYiS9biQS8/2aVYxDKqWnHSRBLzwOcbaiwtdCc9LmilmZ0USLmMScbpKNWKv8Ne0Yndy5g9rjXJFNOaBpz/Lvh39rrfazdTV9IUv4Z+ISkr7hC84vRyKl0hjt2bj5OEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZFIeoMB1Ayjvd6zIuV0ZwuweHreNL3VZbtqc27f9itQ=;
 b=nc/5f3x7HswkqTAYF1KsfvIF+Y9ZeFxaXgdouWhBYzKNYGSESy1OqyaLsrbSS3IDeH9+u2XYGSjTg1wcLJ5BqX5gKmC6i/Wu1oTU9ecG0YjLDHFi3j895zrzbLLZTb/cnhZYy88e2ohe0dB33WctNxpTOQpvE48AravZun2Td/XtGW5aDuTfL6qTSFMlObO/lsOn19Vaa1PmiVRLJ/Xy87zXsDYptw3ex1/CVbMBBHZ1TH+4Bean17uGRXNnZ0bgSFIkCYz6Is2/FXiC+ELdSK7ryF5H5476plRehrUCGsqf8nRJ4JV1MFVImfQk47OxThOgNSbB+vGFZPTM66XjWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZFIeoMB1Ayjvd6zIuV0ZwuweHreNL3VZbtqc27f9itQ=;
 b=AcD73IMhOEwmRuiVmjM4uwedIMhRKBhM5pVmIxRbX93q1bSUWiatxNityNDVC9KaocchYtbBvZAU1W6icEtU8QBVAN2nc/bVe0KE+PswnpPpJLzyPAn+cICOUxEbbxFTUNEc6iF0QREKhnvV1eehvF01czZ34GaBFCwi1XPvFf4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by GVXPR04MB10301.eurprd04.prod.outlook.com (2603:10a6:150:1dd::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Tue, 11 Jun
 2024 11:44:31 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6%5]) with mapi id 15.20.7633.036; Tue, 11 Jun 2024
 11:44:31 +0000
From: Farouk Bouabid <farouk.bouabid@cherry.de>
Date: Tue, 11 Jun 2024 13:43:56 +0200
Subject: [PATCH v3 5/7] arm64: dts: rockchip: add mule i2c mux (0x18) on
 rk3588-tiger
Message-Id: <20240611-dev-mule-i2c-mux-v3-5-08d26a28e001@cherry.de>
References: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
In-Reply-To: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
 Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Farouk Bouabid <farouk.bouabid@cherry.de>, 
 Quentin Schulz <quentin.schulz@cherry.de>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.13.0
X-ClientProxiedBy: VI1PR0902CA0050.eurprd09.prod.outlook.com
 (2603:10a6:802:1::39) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|GVXPR04MB10301:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cea8b0b-d91f-441a-0728-08dc8a0bdb96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|52116005|1800799015|376005|7416005|366007|38350700005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NHNPbERucGIvZ1M0ZVUvak1SUitxM1BhcFhKMldVT1NuNk1UZGxuVVFtOFhI?=
 =?utf-8?B?V01jTXFwVE5yV2VzTkJ4dlRBWlJmQWsxbm9rbHdjYnNMQ1pLcmpGcFdEWGFF?=
 =?utf-8?B?Sk5uRnNuWTFVVVVRcVZ0ei9LaFU1bnAvVjFJcVpiWkdNYXZJYjQvRDZCVEtm?=
 =?utf-8?B?QmxvUG4wc0RNRW43NDhlN2hLenlDeEFxYW1HU0ZBd1lDa0F1YWp6c1duRVhG?=
 =?utf-8?B?V1dYRHdnaTE2MVJpSmg1eGxwY2dxKzZlNk9ZRktEUGs5akJHNFZZaVc3OVdR?=
 =?utf-8?B?YThNcjNJY1FWbTZGVzdNa1hPVDZhRnRuS1hYRmFueHRXVDZ3dUZJeEhhSXp6?=
 =?utf-8?B?aW5GYTFCbzVjRzJMVHZXK2o0a0wxQXBBOUx3MHkxMW1vQnJCVGF0ZTBSYkNz?=
 =?utf-8?B?N2srQkRQeDJ5dUMxdStiVkp0U0xYNG05cG4rUDRCZ0o1ZGNTQmljUndTQ0M1?=
 =?utf-8?B?VjNJZnhzZEV4ek9lYmpJQWJWd285WEV0NUpNcVY0MXJWc1NaK0JhODI0Z2ZU?=
 =?utf-8?B?dUlaa2x1b1d3cDJuVFlSTTdzblV3bUxEclluYUE2ckJzUUc4bGo2R21NZGVW?=
 =?utf-8?B?SjlRY0JwczU2QlAza3NLbnpqQndSZHhQN2NXZkFOM2Jod2doYWlDb1hFUnBn?=
 =?utf-8?B?cUZnYmw0NG15dDVLY3NjVjBFMklWb3VBd3psZEZwQ29NZEFYWElCeFpZTW1O?=
 =?utf-8?B?YmVoL29wbHM0N1JPOU5DUGRMREJsTG1lRHJxUVVtQ0pjQ0dLWjV4MmxRRUhH?=
 =?utf-8?B?NUJDYnFpRXV4emx5WXZ4L01HNGY1ZmJXbStORk9kTDNXa05ZT2dsQ1RhOHJl?=
 =?utf-8?B?b2ZPNXlnRndQalpGQXRuci9CUXlpY1pxNTU3Z1kraC9CdERMRC8rUVhWVEto?=
 =?utf-8?B?U3gzdVE5WjFId0FYUWNpdTBCNHllUUxFcS9Hays2enJ2ek96MVVwdE5XZUV1?=
 =?utf-8?B?OTljWHB4QUN0VGtjdHBPVkVYQjNJVkF6cHZJR09wSnR2NEN4NCsxSzE4YWJY?=
 =?utf-8?B?bTBTd3RqanpQZk9UR05ILzQzUmRQWS8vL0VqZ3NVb0ZsUk1SenNodWFIajFL?=
 =?utf-8?B?U3dQdkpIQ0Mra08xSUxNeG01VWdMUGplUk5STzJ2U0F0U2pEWlJwUHpIYWFV?=
 =?utf-8?B?aFBZMjRzaXNNNkhzbVprUzRlUWhGVGNrcytWUGVZUGxMUVdrRGdaYncrYURI?=
 =?utf-8?B?L3hmYWtOWCt2WHhDR3l1NWFwQVlYWW9zSVVlcW5PL2dkeFBRejgwT05yYkpI?=
 =?utf-8?B?ejBMKzQyVjEzcE9DRGl2U0JiSXB1V2NEck82Sk5Pd1Y1RkxVclovMUVGd05I?=
 =?utf-8?B?T1owZ3JHcjJRL2VxUTg0RnpQeC8rWTlneU1pUXNxZHJFYnlVVWFXRk1YOWZP?=
 =?utf-8?B?MFBoQmJWWUdsaHRJS3JzY2JXRVVDMkcvalFYa0ZIZ0VnWEgzenVndkVIZGVY?=
 =?utf-8?B?YTEvb3VxUnV3OHZtNDBObmtTNHJNLzBLdGpOSDZXb3dQVVB3MTRGbHFmLy8v?=
 =?utf-8?B?TFMxRWNVeEsxd1VxVUU1M2NNd1M2amo1TVpDaThOK2I2cFU3ZlFNMzVEY2hy?=
 =?utf-8?B?bE4rNkFwdzNVWStzWjB4T0xZaTZHelpxTzRTc0NYV0Q1eWc3SHUvRWJxc21E?=
 =?utf-8?B?UlZMOUczQUh5VlhYNEk1S3JnMDlBYm1jWVlQaHE4WXN0SkptQ29iU3JOQ0tZ?=
 =?utf-8?B?NGU5aUVURGphNVZuTTlpdGdMWXFkcFg5N3RSRXNHUms4aEF4Z2l3TkZPV2dR?=
 =?utf-8?B?aUhnNmpvNTZLNDIvSnRYeXhpYU5JSGh2WFduWmxLcVROaG9vOTc0bkRNeDd3?=
 =?utf-8?Q?0TutZzWbu/IYZa9pBkfzjePDR+cvJU2ztXzrs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(1800799015)(376005)(7416005)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmdjRlM3R0xVKzB2bkxEVngwa3c3ZTBKNXFjS3lhVHYvTHB3TFN2bVMvTGQ1?=
 =?utf-8?B?aFRLY2hPVnRmNEZkMjViRGdzQTZubEhOSVZOMS9CR0NNRFBCRm5LNWRKVVpr?=
 =?utf-8?B?TFgvNjEzcStkV09CcVNGbnZoakhDYXdqM3QrcFkzYlorcUd4TzlnRVJDcVU2?=
 =?utf-8?B?SUZEaFg2anlVMlFjQ3I4RHc3N2pkNE9rOXJjQWtKaXl2Z1hlTXFkQVo1SS9C?=
 =?utf-8?B?ZHduVlg2K1JVV0FXbkVVWnhPcWJnMFMvSWFMbXMwRU1RRHE2VWVoZnhtOUtE?=
 =?utf-8?B?S0xyaHBtL3BzTXkxYjh5ZE1jajJJUnVub2prL2MrZm9mcUovcUVNd053VDly?=
 =?utf-8?B?ckFROU9XazVTQ01Id0J4c2Q1bWk5V2tjaWdFdldMS2dIZkVuYkxsQXB0WGxV?=
 =?utf-8?B?VGUvVjJUUmc1Rk9WdWpBV0QyYnp5RTdwMTYrYnBQNUNXNFhTeGFrNUUvUVRU?=
 =?utf-8?B?N2J5OGFKanoweU03Q1FWT2tWNVBROHBmaW0xTG9veFRId0p6dm8vUTA2d0Nl?=
 =?utf-8?B?VzZ1OFdJa1Mya3JDd0hVWFZtN0xBdzFvRE5vODczQUZhMHk0b0w0RThJdmpk?=
 =?utf-8?B?K21IUTdmWFFHN1R5dWIxY1FjWnljUlBMRG04TXNza1hOSVYxRFJtRWsvZlNC?=
 =?utf-8?B?Tnh6TlZCLzRlT0ZEKzRnNUdMNEUzREZhL3VkQ1o1Y3FrVEF0dHB2Y2dIdm9I?=
 =?utf-8?B?c21zWDR2WndsTlpTTHMzMTRSSVBOcG9vWmZRQ0VsUmlFMVJVdEJLVStXV0wv?=
 =?utf-8?B?NTViK2dLYTNUeC9jeWQzS2xId01nQ1EwclFZVDJGUWlwN3dtYVhMZjVHK1NT?=
 =?utf-8?B?cjNhV3dmR1RJd2d5OGViKzZXQ3hrTHFqM1NWRk5TRHpJckhrdXFiZGxESE5Q?=
 =?utf-8?B?b29ORnhMOXQzQXlDSjRXZnVCSUZQeHlneDUzbUJGSzN5SXBNUDhrSEZpUlhQ?=
 =?utf-8?B?K0hHTXRLZkRrNEwvbXljRm0vbEZQMWJISFZvek5CMWJheDl3UmRkczZhUlZo?=
 =?utf-8?B?bDlrQ3RyWWgyZDhuZk85QXVNclo3c214NEJCOVpzT3drdjFucGNzOFd6THR1?=
 =?utf-8?B?T054cUpGL056YTZlMDZYWW94bGNmOEVtc2s1Zk5jVzVZcGltRmVsaVU5bGlI?=
 =?utf-8?B?a3dkVDI0U1RQMnc0ZFpuVlVkc1dTR0FVQTA2d2RpcjNmWHNrUWMxcGlsdXND?=
 =?utf-8?B?ZjZxcEFsSm1ySndNa0lRMDRYSmlRRUppd1RPaTc3TWZTbXBTbW1uOEY0YVpN?=
 =?utf-8?B?U1BpdURnekNQYnlwb0hrYnpOOExHektxbHpqSHEvSEs3anJrSGY3dC9DdTk1?=
 =?utf-8?B?SXZ6SDFCQnpSWXdMazk3Unl0ZUVNVnN2S041UWFMSThLblhSNHVjeEtFdDlM?=
 =?utf-8?B?N2R5TTNTd1VHSTEvczVKVEJDcUNwM2RKOFdxbGZ2cHhMSExzeWVibHlpdVVE?=
 =?utf-8?B?MjRobDcwRUtTcnYrdXByZWhLbjhHY0poNHYyZU9UQjBkMXpQRmpmeklMTWxF?=
 =?utf-8?B?UUVNRWgvck1Bb3lReWFLeFNDUHY0MXc5akF2L1I2UDd6Nlk2czhMYklmdHhk?=
 =?utf-8?B?UmlNZXRnY2F6disvcDR4a1VHcGYveXU5VHc4SFcrTUh6a3p5bHpFbkdyQ21V?=
 =?utf-8?B?UHlHWEpDQlVXY3Y3dHpGVlBGM2tNNnBxNys3SVMyZU5kYmdRQWFtcVI2cWFR?=
 =?utf-8?B?S0F6elBiSmdEUkFVYnB0cHBzVFJWUHpISXRGQWNjbzNMU0Y0UXNObmxzS25F?=
 =?utf-8?B?aXpvVDc3UEtocDZFWHh3R2l6ZEFNZjVxSHNmQXFNakhjd0hnR0JVSGJJSnNr?=
 =?utf-8?B?NUtwR254V21WMTVQWTByV01xM2hVZytCb01XS1J3WVlETmg0Nzl2UW5GQWRM?=
 =?utf-8?B?dE02SGJBWHdUenIxemN2WHg3eW1WMXZtU2lxNGVvTzNVNktkNlhpZ2dpR29I?=
 =?utf-8?B?RlJVVm9sTCsxSjhxL1dWSmNBY0tmTDJtaDBZYkhBd3BhSzQvZHh4ZTBGY2Nn?=
 =?utf-8?B?RVJFS0daME04ZEpTQmkvOGx2aE9XamhocHhXRzNiSFRsVTdmbmluVWY1K3FY?=
 =?utf-8?B?NWZTTjc0eWdsL0tPeXJXRkZheEw4S3dTd05tb3M3STdiN1g1dHJ3Z1lwUjJB?=
 =?utf-8?B?Zmh5aFA1bnJ0RFpTOXF1Vjg1bEs3dDArdWZydlpKaExvSmRvMGRsZkN3RHRa?=
 =?utf-8?B?Q0E9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cea8b0b-d91f-441a-0728-08dc8a0bdb96
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jun 2024 11:44:31.6379
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EijHyLmObRV+AkgJnKXXYQrMd2Q0AagAdwtCkXXlQMZ1TFXbLQUAbtY9rvAOUxhiRXw1F5DaRdMjR8uU/9Jm5rUZiD/oW1XC1kRh9Rr0aeg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10301
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_044446_677174_6E1DDAA8 
X-CRM114-Status: UNSURE (   9.91  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Mule emulates an I2C mux (address 0x18). The amc6821 is exposed behind
this bus.

Add the mux node and amc6821 as a default device.

Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index 1eb2543a5fde..5ed7d51717bb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -12,6 +12,7 @@ / {
 	compatible = "tsd,rk3588-tiger", "rockchip,rk3588";
 
 	aliases {
+		i2c10 = &i2c10;
 		mmc0 = &sdhci;
 		rtc0 = &rtc_twi;
 	};
@@ -210,9 +211,23 @@ &i2c6 {
 	clock-frequency = <400000>;
 	status = "okay";
 
-	fan@18 {
-		compatible = "ti,amc6821";
+	i2c-mux@18 {
+		compatible = "tsd,mule-i2c-mux";
 		reg = <0x18>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		i2c10: i2c@0 {
+			reg = <0x0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			fan: fan@18 {
+				compatible = "ti,amc6821";
+				reg = <0x18>;
+				#cooling-cells = <2>;
+			};
+		};
 	};
 
 	rtc_twi: rtc@6f {

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
