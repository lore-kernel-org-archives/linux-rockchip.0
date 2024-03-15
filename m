Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2E85C54E58
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 08:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CwLwYaU3PBU5t76VZst139XQxn+1erLlwimJRZ7Ubhg=; b=TY7dKTIg5bKPce
	zmxlFY9IRwk6fW/8H6La8PPSNX9Z8/S9/knVAUc94sJPBFvUl8cpKchiWhT9qJI9/oRn/RSI/XFqx
	gm30IFGBr2EKc7lT2ArRO88XP6JWfFKKRftVgbGdaNnylxiZ49wi8GXXV+TyANs6sxJwTNePaSgwk
	ifbMDMnsHg41/uNuFfzmomkIIykfAIJ+4pZXmhbNyTJmbmaVd9zLAH7WGrIwnGXCClRe3Y8d8LXfR
	HvEwtUuIxpoxcc6vZDsi/rqjhjYxtZd44EJ4wrPFPNjWrYYkudCi9h3s0dXfHcZ5dJyIleIWXF/sm
	zv3hESApvJnyYgQ9qGNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl37W-0000000HCFP-3Pun;
	Fri, 15 Mar 2024 08:40:54 +0000
Received: from mail-centralindiaazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c408::3] helo=PNZPR01CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl37S-0000000HCD3-1JnU;
	Fri, 15 Mar 2024 08:40:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q3P5UY560uz2BemkQSmkJoee7vwt6mmNn7GoHTudDyvGRjwo5zAM9w6CHnj+ER3b9X/iPE1b4ZznKTpByOcVZQdtrtNFU07K8XdU7y2LYIaHIpNXjxiuXq40bNZIyeFVH9ZUqd4+whWPMJMM8kv+rRewW1gGf4Pgw4Qh04SGdwyyGdP0f8g4oHOOeY5uvmboYQArx5xdL3lD7nSwDE5Y/doIWgkdt8ERzGk2RrTKwZ5mp9HndYs/ywh/3ikCgcVc4K8Jgw2iCjbzdVIvI5UDdwu/6Utq6LtOXnehF0JCwoG8miOskaQWN1bur+3XCk04vD4mPEs+m7BeSELa8HoMxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UZhf4XDUltdEkVfM+40rDkEtKLi45nQxrOwCpPbOKK4=;
 b=GxjVrwg/NJiokgqPw9S3M5hi1In5E5NmJQac60//k4gEsRGRXg/ZYBsiDPT8JNXruMt8XEBGCnXocRDp4lsvyWdK3ugCDGt6TYsgxSLq05rKgG+Shx3hhHXC+IOsBhqOU/UHy9mCOwXcWGnue7QuM+gGtErTlEHr6EI2KI+NhTVYHHvGF/VbJegjg/R2KMU1Ao2gu3AY4BDKhrx9tPT5C1qMOrvkAF1Zk0R5sXPTL2r1G5DLuwC6m5pd4WFG9QSmHwoXVsFCxJvCPM1RtGPvabiWZvTWR8p3OAAMLs+h4wXuygTZV2Um9nuVABY20NxX7yW434nvBW77SVEyEHSisw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siliconsignals.io; dmarc=pass action=none
 header.from=siliconsignals.io; dkim=pass header.d=siliconsignals.io; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siliconsignals.io;
Received: from PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:1df::8)
 by PN2PR01MB9279.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:113::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Fri, 15 Mar
 2024 08:40:40 +0000
Received: from PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ad41:a27c:4185:70f2]) by PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ad41:a27c:4185:70f2%4]) with mapi id 15.20.7386.020; Fri, 15 Mar 2024
 08:40:40 +0000
From: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Cc: himanshu.bhavani@siliconsignals.io,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Lorenz Brun <lorenz@brun.one>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: add &gmac2phy in rk3328-rock64
Date: Fri, 15 Mar 2024 14:10:16 +0530
Message-Id: <20240315084018.2200581-1-himanshu.bhavani@siliconsignals.io>
X-Mailer: git-send-email 2.25.1
X-ClientProxiedBy: PN3PR01CA0181.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::14) To PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:1df::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PN3PR01MB10135:EE_|PN2PR01MB9279:EE_
X-MS-Office365-Filtering-Correlation-Id: e73c5066-aa94-40f7-ee12-08dc44cb97f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gYrzx58J23sklLp8bzoGmK/mDTBFYkk05jVSFnvHRPhYZWeOAnLFGlr7f5IfuL/oONBBRDj0S3VIZ62neQWe9QZw+zpKQ+/wA7Em+A/SwUhRP2s5e/7+acUKsCmYLA8yKqIQVt5WQdTon1OAePOcmB6arDoZvLh7cJO8hw9FXmSmr2M5K6JhTdEYfvr2HHvL89rfFPjrx41zmgmsPSiyJvx+O+EJR8z+nTNc59g8oQwdIZW5mHC6mHCMY5O8lcMuFwyWKu/UWoYkZr99UC7ThD17QDLNNs8891MrXGqHl0WaigPcbnA21PxN/K5EVOkQIa1zWMT/OgEPTfwrO6al6KUlHA/Dl/yHmO35I20j0RafInP7wSNrehLsYV91ynXQjisfu18mRmUCqCoLaHw+yNGHIG8yXpg2FXYrnYSt+qmXOIG23QQakA8HBbebxnnxv6DIEt7RdPebj5d3quQvoU2Ghp/5B3BIUsUBjbpDOIP366J3xV+qvywiwnBaBy4UHaT0ndCxLIVssgBr/CqSfsQpeonpQUTrj8EfEfUK68JZfaIZnqSkrELpbzzxknwpD08xeNhU1PXk5uSdmt7PrU5obWEYm9ms1dKLQ+RiYuYaLPBtlaLmyH8wXfnfMC7Pq7GlpLv9xYWjOX80a0wRUVueu4SNcmMGy9A3ku7z5HSJtYPix+lNb1udVOvvGPG1mYMSJLWddwNDGsoQSRCKLFljAiHmRXBNvuid6cK2fh4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(52116005)(1800799015)(7416005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ITbk3g6p+0V7ixabnkdbcZ7oewIwT78qhARm+E1I6Kj1E7nWHxENxjOAxM+Z?=
 =?us-ascii?Q?K229hCMjmrfNVDAS0Y9eTykL0ua5XijuFl/8HtJYGQAg8K9rRUaHyiK/tJNZ?=
 =?us-ascii?Q?ZfzRL7HURQt+2SJnFbxTArHmhY0JsvvgmwU+2rBdKD1Prr/uQHFgd8m8Paal?=
 =?us-ascii?Q?NNDfrNV+9CDIRq8v53XoyHmyrnMP1it5kuXaNQgPapzH31XPyTLVj+gNmgog?=
 =?us-ascii?Q?1BAEeikYlk3JeJHkn3OE9dsvQMXgEwGlAbzB/z/u+tdNnu3J3pOlEQGNLtuW?=
 =?us-ascii?Q?aBpwpRiuAR9j75NyExYduM42FJwrOt0+Z7FoOH+gPQRRzCidgE81i8OHKJ7O?=
 =?us-ascii?Q?abfHjxPectL/Cx1B0hSQqe7sE7MonzUjwLD9xxwvQt6NL+GZKzGypQUqlJRb?=
 =?us-ascii?Q?R7AKiU6OHrkPgANrLMCTz2pbBIqNh1kz1PHBIESn2NEj765UXa3X9guQRCfB?=
 =?us-ascii?Q?TYXkzO6drjbQl06RaQPeGfxV8iQmLTr6I5iq3zdCUBztYUvHvOUTSJoy0+56?=
 =?us-ascii?Q?Vj4/z0zswYC4JsCtKuqcoG8tBJUr0+PYzdkTRr8ZqLughZ29Zj5n5KFLB7UD?=
 =?us-ascii?Q?sEjgOAaM+qGEUXn7z6kJGcxSeM22o3JPo8BIV+mNDGn4p8MkZZJKKKiRAUyz?=
 =?us-ascii?Q?bD+RN+iMJiz+TrSXl0FEEqWdeZLU0yh0Fe3EHtn7KDz7HnqlUjBAHIyL0Nzf?=
 =?us-ascii?Q?w0vMXG9PSOtFsRFoa0fa225X3wuRQkOlZc6orzXxnZ/TIG1RpsgAV+G3/rhG?=
 =?us-ascii?Q?ZpJEu8z6PGsHiVx+4JbKTthFMKUqXSeZMihEuWtXTgYehNbSLFGcNEP9ryKh?=
 =?us-ascii?Q?Bv3RMBSesbFmH0B5VFv/6ovJmLdC7xE9QuyLUECRWbZFjbZu9+K3yWeNzovA?=
 =?us-ascii?Q?1LRNuVGeUZ0UxahpHULbgOjC1hiDfqQ0bQIQx33kOBBaQ6XlRqUFCiBAmV1N?=
 =?us-ascii?Q?6ojmVonHemu9VANABupd+VsBaKYzEV0Dl3Ly/uwGJgptib+GrOzTsjKzAfSi?=
 =?us-ascii?Q?ZixjVwLLZfJp54zH0Biof8ElWR8WoH6T/9mD+EuVG36P4oluvL1ZEXuZe4+e?=
 =?us-ascii?Q?laEpOZmWCzVt4JOHRVJjOKntirBBGS1M+NRL4k8zRBJeQ6Q9eFbX4rM19XpS?=
 =?us-ascii?Q?eQgTfsXmKiXEugOjHtza1Lm121b6+BOYPScQSTEV3i7X2cYJyyNXVwsLyPjy?=
 =?us-ascii?Q?Z9aD26J1/tR58U3hPlEmfk056oW3dv/DoHPT0TaxWChskey4ROGeDZL3VLeh?=
 =?us-ascii?Q?5RII+wy7TpoanSdvfRgTL/FR79JQHrKm3XE0r8lcNL+sjT/GOm1OVqhNcAq1?=
 =?us-ascii?Q?Yd7tW8YenZU/2lufPemooXJNMEnLCiPlG0AxT9CrQzNaOkQ6LreSSlhNramC?=
 =?us-ascii?Q?RtzoR7RtIqWUIsYvgBABuY6hNAaMqLLpLwj/kv32GI3Sn7d9bTNr71oZ3Aqx?=
 =?us-ascii?Q?EYZSwGWUqeVm+p+QZrEW/8xrCPd2d0pzuD/YFBDy7sBNw+WwhR8/IV3DUkbC?=
 =?us-ascii?Q?rw9FIYIGBYz5yx4+WHE1vPC5NGeWOzDBucWDaxAt75/lV58Wh3QjlcTGr6hj?=
 =?us-ascii?Q?rFmN/F8arNwBvECKHxrbEN2sczKmE1oLPneezjWpEdJsB04TKAryjLklChWQ?=
 =?us-ascii?Q?YaoEJMDoOgo31D5vpUPZRts=3D?=
X-OriginatorOrg: siliconsignals.io
X-MS-Exchange-CrossTenant-Network-Message-Id: e73c5066-aa94-40f7-ee12-08dc44cb97f2
X-MS-Exchange-CrossTenant-AuthSource: PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2024 08:40:39.9714
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7ec5089e-a433-4bd1-a638-82ee62e21d37
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D9nP/ShCC+TCeQXLaJzvQyQxWpgcGjC9JpTlMTaDXQ8uv/A+vtSGqYUEqH72UCKREojjwMxBvXIZVMcsTYMjeBg/tX3v5CetbcJweK/jql/XXnGmRruM5xW/xQgYMusI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2PR01MB9279
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_014050_389292_60A5299A 
X-CRM114-Status: UNSURE (   6.56  )
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

Add '&gmac2phy' node to enable ethernet1 on rk3328-rock64

Signed-off-by: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 229fe9da9c2d..cb919367db54 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -12,6 +12,7 @@ / {
 
 	aliases {
 		ethernet0 = &gmac2io;
+		ethernet1 = &gmac2phy;
 		mmc0 = &sdmmc;
 		mmc1 = &emmc;
 	};
@@ -392,3 +393,7 @@ &vop {
 &vop_mmu {
 	status = "okay";
 };
+
+&gmac2phy {
+	staus = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
