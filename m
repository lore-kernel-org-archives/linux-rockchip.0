Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0B2DC54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 14:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AeYIQIQ+BDI3wh+BkwxQCjJbHoO8+JZ1GIVtOokNVm8=; b=KSetTkE7AHI1AZXg+dqrxKvTlF
	NIl5oEIcxq7N6oL6yQ0//BB11HFAW+DWth+j1cy3oarm4I/c28hJvBHsYDdPk3WSAShbBrlaV64QU
	CXz8uyovKH5dxgse14wdGAYsRtXp3XTsCmQrBUsA5GuEM3IicEafSrhpiLxQkm9UMJhZFN7TzD2s/
	0cfZnmJYN6JS4UwhEDatYc8AQMADhZfCRHn8drILjbzl4VWdcrUMcI82UvCcUEb+1THOEypfKQMez
	0erWGDV61Ku9+coxENmuY+TmKPgjBIvB2QF5yLRrKcv0i0ed5beMLaMXzoIpGJbCe5oPfdCyW30dl
	IXOXjdFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolEY-00000000Clq-1oIH;
	Mon, 25 Mar 2024 14:23:30 +0000
Received: from mail-he1eur01on0705.outbound.protection.outlook.com ([2a01:111:f400:fe1e::705] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolEJ-00000000CXz-0fup;
	Mon, 25 Mar 2024 14:23:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ekZsb5rG9fN1zQALcphQ5XKspWLBntaGTJsHwRdqDWHgBJdDHC8nODIX2K6CWmwIgwBo47tMOKf/AilEEjs4sYAsbvMeETDkRlrWmpgmF9J2AcbhupY/Za1wqj19dzHdE0euon458GIuqzCkMXBNSYcQuFzlLPzesGkANwXTIq6r0TboOPWOdGgnEoohszSe9PD/s+gfdl5/TPr/wW26oCiQc5Y0jbT1bqPzxa4kbe6Gwtt9BetL23yGvMf5ZWDrqDJqDTKVDIpv9TuCZJ/BumIHxPG6u0pRpG2Gw3qezkgnmjuO+lG6U9+We2dZfq27CvWMyWaRzd0tDK76rbV9UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wvHmvP96mbEAAfhPMM+oEWYHEOm9ikdHYtSEPuMf718=;
 b=JAQZ5XjxXLmqXAXbq8ddGLynGwChrqwa28NXvZDobNB9aWy4iE4JAhQ9F0euqzpEEwmc+qXCVtOHf4UEtmbpexY6E4JxEvc7OC6Ek04aEg415cuzUhecWL8ydn0LmMlPp9ycW6IRBi2cpOx8TvAW84hJryn2NOa1gXCRy+D17OFHsQSJfcfWynD9ZfsduSk/CF29ZCpXG/z5MpErhYVsghZnyO3Lj22pfpzCp2jVDUetm1VrqUIBc4wgDDX6ojlvXDcxyPx/eDNfA2B2iKUWdwwQp69kZ4ughDEa4vJeOBlKsqVtStHEY3St81wH/FrTtr7FN1IacluQqxdyvP9JTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wvHmvP96mbEAAfhPMM+oEWYHEOm9ikdHYtSEPuMf718=;
 b=2MqcytWlQru3XlXdBQ0SsAlkm3EOkcxKo2B04oIogNWAP9BkzkRoQUgFTSNePyt86gE2utX0lHgeABxfPW4mbHJlY3Cezg+Z2lXMjw/eome+2k6Y3YadzGsIEuU1/8xHq8QMBKKZ1EuAT7HhIJch+SNYdAQ135nHQvjHCFFHVZ4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV1PR08MB7731.eurprd08.prod.outlook.com (2603:10a6:150:52::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.24; Mon, 25 Mar
 2024 14:22:58 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.026; Mon, 25 Mar 2024
 14:22:58 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 25 Mar 2024 15:22:34 +0100
Subject: [PATCH 4/4] arm64: dts: rockchip: add wolfvision pf5 io expander
 board
Message-Id: <20240325-feature-wolfvision-pf5-v1-4-5725445f792a@wolfvision.net>
References: <20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net>
In-Reply-To: <20240325-feature-wolfvision-pf5-v1-0-5725445f792a@wolfvision.net>
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1711376575; l=5053;
 i=michael.riesch@wolfvision.net; s=20240305; h=from:subject:message-id;
 bh=ZcA4bAjq4cp2lDZHwaYmYH10Uh8VX3GxPeAlxT/fpHk=;
 b=O7bYBebpBT69iilGXSF8B644nk+P/OVYBirHKuZa/Lh82wkzVi1ADUAFQjlucuh5tI6KQcOP7
 rEXzyf0D82DAGLiHDmXVxgs1he3JBJ3dgsfciLo1uhX6o+xH4ZUknnB
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=vXktx+l75RJD3KAojVKL7503UCD9nnGRcgujrB9SRp4=
X-ClientProxiedBy: VI1PR06CA0127.eurprd06.prod.outlook.com
 (2603:10a6:803:a0::20) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV1PR08MB7731:EE_
X-MS-Office365-Filtering-Correlation-Id: c08aeb4c-b466-49a0-3367-08dc4cd711da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9pBWlS3zRQxlx5ArGWqmDWxdEJY62SbggWiFrg8tOiEHdF9F0Ekrgw61GaAkLHdH25OGOfPEbmozzgDZpY4U7GuMv8t/20ZXtZ20wfY8SeBZYCb2OQfjeXwbDXJUCHLf7A/sW7kswWj29NJ/h8Zl+w909hAkI7JOVKFDtdQ827/uqCawH+zTBnCIfKoxvBmLUlrgO7ObMDK5my+IddEoYVZ+PO1aemIo0LwOA/hDUqk+l0U18lmjaPOlXItqrY2f2K+mOf3/JBJLoVth2zkukWmnvuxfGyvOh3l8Fa1M5ZZH7oUrZimLT36I6rHyC6BsoaF4foSKuAMppoQC/jxWInzFT6xIQlR4Txd2DZ+Bno18RNDk3t2IloGUGNqKNSe1kTzFbM6wU0b8HwqgUNZ/iOBzuv5Pw0Ilhm7X59UK4R70NWZWcpn2/2eyLsKTEI6wvoDtQ66sBLNSqY0P1CW2ODq8UDBPQg1PShIkfbcYgzG4+0pIlmD8huCg2ts+NRcYvOamdJGHhr7sWTi8WMS0UAmX/JyReU7Pl95gZAkvJmOSfpmZTWd3P1IVZSCG8ozSCb8r3Us/IYyZqQU5GJdd+AsO3vaDw5NIUX5QWyrU3SvJG6cM4vTmhUjeTW+JltwgsuCCYEVAcXwajJjFJTrBIBFUuad/tjh6+Pf0PaA49imD5qt7NSNCe/O/ss3HJo9PXvSjeKBRZuYDffxxBM6IVYQJu10lYMq8O35Rp0zbeNg=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(52116005)(1800799015)(376005)(366007)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RE92UzdaS1h2a2xFWXZ3VmZHSEhpOHFyQ1VTdTBIZ3lsZ20rV2tqVUpVNnFP?=
 =?utf-8?B?WnJMQlNCMldEdldUQ09WZWkrTkhpLzllai9nSDBhajdvSGxuMG9Mbk5UWWgr?=
 =?utf-8?B?RG9COW1rbm44MkYvUzNBeEhBbm12dmh2T1RqODVjOHRVNlFIblhQVE03WlVI?=
 =?utf-8?B?bHFYSGkvME8rUUZ2TGhobVYzaTFGL1lUMVVuQmdRenZTd0NWWitaQ042OHZL?=
 =?utf-8?B?Z0lHODFvQWNCdFBPY09abitobG1tZ2xQYTJ3eTloemZmYnp4eEM5d3pETGR0?=
 =?utf-8?B?UXlmSTdQanNEWE9BT2NtYSsrbGpNdWtBREczcS96V0RuRyt4UnBLVm8rbHdo?=
 =?utf-8?B?Yy9vRjVKeWN5ZVlFMm5pYXNFbmMydXRhMkY0VENndGhvL3dKSCtUYXV4c2FL?=
 =?utf-8?B?TnBnVW1wdGdHS2FhY0lGNGg4cHBHY3hkWjNaR2tVa3Qwek5IZjRldVVRVlZD?=
 =?utf-8?B?V3Y5bFdjZWU5MWZOZU5pM2JzRFB4eGtZVWhVNHRxYzZNSWlaTXAyY2RyYUt0?=
 =?utf-8?B?QmxqdUVhTzkvS1kyQXNWMWpNM3M0d3dOOTFsQ0pnell5UmRseFltczI0RjN0?=
 =?utf-8?B?UUt5TWZobUJOdDFLa3RGQnpxMGtCUkJTaGduU2pHbFZUZnN1VlFPM0NULzN2?=
 =?utf-8?B?U1NyNUUzVUJ0NUVsR3htRVpsOHNKdC9ya0FKNjRRK0diRk5EZUtxa2tmdDBm?=
 =?utf-8?B?WVZkMVBjUkxZTldFSU9qMzBISjF5eTIwbVF0aUk2Nm93YUNCWm52c0xnQmll?=
 =?utf-8?B?aFdUbnYzdGdrWDlQS2tCMTJUQ2JpbzFPaEZhMXVaL016NkFES1ptSFRkaG9n?=
 =?utf-8?B?MktmOHhnV1djZ05rbFRKejhuM1hNVUVJL1JQT0lyOXBCczNiS0dsWTZGWWxu?=
 =?utf-8?B?aE5lTmJqZG9xWWpFVUhpWGtWTWF4bmpFU3ZBM2NoUS9ySTRvL0VYOEw1dmk4?=
 =?utf-8?B?VjlxR3VsV2JjMG9pays3cElsQ2ZoRGNyN2F6NC84bUxaSnl1Y3lkTGZ1YTRV?=
 =?utf-8?B?UGxvMXJFWEgxaHUvQkJKYWZjNDh6amMrOTJQK3NrMmpTU3QzejlmcU9QU2tD?=
 =?utf-8?B?MnZ0K3QvamladytIYTk3ZDZvMHJyQUZxdERTWmJHaW5ONkJXVmRIKzQyWmJ5?=
 =?utf-8?B?dHArRngzNG1rZWlrNFpiUDVnbFA1VEkrdXdxNzlIUHVCVkE3TFJOaWpxVkZp?=
 =?utf-8?B?WjR0cjFJeEovQ3FpZkV1VGx2Y2taS08wOVBHTExiZ01Lb1Nyd2J6VktOSHE1?=
 =?utf-8?B?bFlsdVI0cFR0cHBwcTlCQTJQUGY3SVBEME1Qekw0L0UySGhMNXpLMVN1SHZz?=
 =?utf-8?B?MlZWdkU0UVk5UWZ3QXZxcWpPTU1jc2FOc0hEZU9JTmE2b2NKQXFmK3NONVV6?=
 =?utf-8?B?TUR5KzFJTXVkMmpCWEEydzhHZkRTUXB1bXhNcFpMUEFvYmtXcXZmV3ZVM3Nv?=
 =?utf-8?B?TkMwYWtZMXA3MW12TTVqOUlaOTBKQ1lKTS93MUVuTWJ3NjdBU3BKeEM5aVBK?=
 =?utf-8?B?dmxXUGdxSXlXMWladm9uQVRsbFEyenB0MGF6NWYycUFORVJsTVRpUDNVdkM0?=
 =?utf-8?B?T1plbEYwY1FGcGxZRGJWYVhVam5ZN1k4a05ud2tDZ1VJUTYzZGNhMitUWTRx?=
 =?utf-8?B?azhUb1ZLL052L0svNThxRzFiUDVCd1puK1dvelhFNFUrRGU2c3pBTkhpeVhB?=
 =?utf-8?B?R2RFc3EyeHFCR1QxMGxiTlhsWGJUaUZER2dRY0Zodnl1Z2FudU1wcllIcUw3?=
 =?utf-8?B?NmZ3TVFvRmFBSjJoOHpSSVBjNkljMU1aeVBpTEVhRXoxK3kzUjVZMXJUdkQ0?=
 =?utf-8?B?T2duSTk1SjgwQ3VyV3IxNGgrcTlVWWNZZHRGbFJ1Vi9kRFhzMVBEK0ZnaUx5?=
 =?utf-8?B?Q1l2NmllRTdMelZPYnVVOUk5T1hnNnVRM3U5dDVBSmxMTXBsKzRyUzU1V1Bw?=
 =?utf-8?B?MHVPWUpDMDZSSFVFZVRFbW43YWxRMWQ3S0VwelBlOElJWlF1UFB6YzNZcDI2?=
 =?utf-8?B?ODBGSkZKUnE4cW9SeHFYeUUzUkcrMjFvVnlYZ0R2aktDVEhnWm1VZk1VOHpQ?=
 =?utf-8?B?NzI4ajQ0dDdEQ2s0blA1anZzc2pzbGd1N1dkd2MxYVFGUzFrWEFhYjhHcGxy?=
 =?utf-8?B?SkJ6MkV4SEhOWTA5UzZNOFA1WjN0RXI3Y1UrS0FUekpFaHh5clVPWFFveGor?=
 =?utf-8?B?amc9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c08aeb4c-b466-49a0-3367-08dc4cd711da
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2024 14:22:58.1819
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MA2FI6oZ13IS2thnMSuttAtdLJdfJpR2I559V2RAtFO2t/zJf0Hgx6P5tIt7tyK8M66jABAWRjMwfJIdF3vIUv55OyJhwCUNMSjr5l95oxE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7731
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_072315_250653_0DEE29A6 
X-CRM114-Status: GOOD (  12.61  )
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

Add device tree overlay for the WolfVision PF5 IO Expander board. This
extension board can be attached to the WolfVision PF5 mainboard and
features
 - TI DP83826 Ethernet PHY
 - RJ45 jack
 - USB-A host port

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../rk3568-wolfvision-pf5-io-expander.dtso         | 137 +++++++++++++++++++++
 2 files changed, 138 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 8fb35a363e4f..0192980ef37f 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -108,6 +108,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-radxa-e25.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-rock-3a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-coolpi-cm5-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-io.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6a-wifi.dtbo
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
new file mode 100644
index 000000000000..ebcaeafc3800
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-io-expander.dtso
@@ -0,0 +1,137 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Device tree overlay for the WolfVision PF5 IO Expander board.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/clock/rk3568-cru.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&{/} {
+	gmac0_clkin: external-gmac0-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <50000000>;
+		clock-output-names = "gmac0_clkin";
+		#clock-cells = <0>;
+	};
+
+	usb_host_vbus: usb-host-vbus-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_host_vbus_en>;
+		regulator-name = "usb_host_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v_in>;
+	};
+
+	vcc1v8_eth: vcc1v8-eth-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc1v8_eth_en>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "1v8_eth";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	vcc3v3_eth: vcc3v3-eth-regulator {
+		compatible = "regulator-fixed";
+		enable-active-low;
+		gpio = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v3_eth_enn>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "3v3_eth";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+};
+
+&gmac0 {
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>,
+			  <&cru SCLK_GMAC0>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RMII_SPEED>,
+				 <&gmac0_clkin>;
+	clock_in_out = "input";
+	phy-handle = <&dp83826>;
+	phy-mode = "rmii";
+	phy-supply = <&vcc3v3_eth>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_clkinout
+		     &gmac0_rx_er
+		     &gmac0_rx_bus2
+		     &gmac0_tx_bus2>;
+	status = "okay";
+};
+
+&mdio0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	dp83826: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&eth_wake_intn &eth_phy_rstn>;
+		reset-assert-us = <1000>;
+		reset-deassert-us = <2000>;
+		reset-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	ethernet {
+		eth_wake_intn: eth-wake-intn-pinctrl {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		eth_phy_rstn: eth-phy-rstn-pinctrl {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc1v8_eth_en: vcc1v8-eth-en-pinctrl {
+			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc3v3_eth_enn: vcc3v3-eth-enn-pinctrl {
+			rockchip,pins = <0 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		usb_host_vbus_en: usb-host-vbus-en-pinctrl {
+			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&usb_host1_xhci {
+	maximum-speed = "high-speed";
+	phys = <&usb2phy0_host>;
+	phy-names = "usb2-phy";
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&usb_host_vbus>;
+	status = "okay";
+};

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
