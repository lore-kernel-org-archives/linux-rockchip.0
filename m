Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16962C3A59D
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Oct 2022 15:25:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5ZrmMuZ92KPWpTob34xhWaBCZS3r2WCBkSawbbUTCU=; b=AsxSSfajQnDgqv
	nLhljwJcs0LBxscz2k59M39/27zhledNdKQHS2IDdleuaCM7BTLkG7DLRFe+A8HPqa8akQl9tmdC+
	I/nMPnr+8iTzF9+GIlNLXjpNMOzTZZ3l+8Vkgi+kgHwytbL6CL/y353pCYCzU/xnLRzSpu6x49A9r
	kd7qBJ7bJXh6l54R7WEKRudNRllPmNIHi6Ib9Nde+TWi9FscF8OPibnq9iMDxMlyNFKAo1Gso7eOg
	qQyBq8mtMOni7G2eiYz2+YJMYiKMDHliDyehal3VGlMeEsZK8ObgK5khxdO9JZUnSLzUw4SyDo42A
	B5tgalUQoR5d434V3LWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omcr4-00FZ6f-89; Sun, 23 Oct 2022 15:25:38 +0000
Received: from mail-tycjpn01olkn2090.outbound.protection.outlook.com ([40.92.99.90] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omcqi-00FZ1G-52; Sun, 23 Oct 2022 15:25:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a5H5QoAUlm9XseJgrz2Oqv7Ydlraa4rt+JCRk9XZOXAa8/DDUm18lUsSiI8AO8kZ3WiDQ26e7gFkzYqSuIGZq4rto3mpEWmXgZ2rdsXYRFSqp5CnkvM2QOtWN9o47vyBlx6e0ibGyi+WxTNZtN4IXOKa5U1px+4Z6/Q4OlaSlYSgslSvKIhDYWYN6cDIKBwaxTpXNBgeRETfIlhcF/KEDU+nNgF70SohHbuC+rHsJVY5wBXo2O7snC3Jd9ZrlfTHvfmpN/O7GKAZJSge5PAi47JfGKSzoI02y0RnxMyKcdh7ZTI/Q7uhTUIfFnJ4MLIwfl3tm/ZCUdadwmU/zdbmvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FORUlqgGGZFzWqmWvvRfC09/Pav3sEsvyedI+qScY+M=;
 b=jwhzln6e3AalpQGBtL0kk6jLKEtJB6XJzzzCurAPK/e2MKEk2rZsOgF6+67tqheniW6j0F3kLeVqESPFqE+BnTzeWb5T8PAQMdHsfuZPwyS0QG6Gk/usyL4yIC6qSI5YtyrB+82m7b/kwrrx/9mBe0QiyD6GNMEG59yjzU3IhEPJkgwqeHCgiAtOuAknOBSyRgJjrTu8p69wuTGCsb5kAzc7ou9MX9QuJrjrfC5qxq7u2HT0jBKjS7XFSsGuUBl2QWokuKHL3zILpqJn/h+zwijIrCG2qQBPsqBwn8qRPZhdmTWb4w1fcX8WCFWZ4QYW6xxkjt7Zxifcj5Mti/Nk4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FORUlqgGGZFzWqmWvvRfC09/Pav3sEsvyedI+qScY+M=;
 b=cZ3ows8u/gvlp7sCVoIqr4uw5p0oRimBKQzvexLbYLNvmH/Bh/iPHWEFp4bvpmpXoqQwkbLpfVTmMNXJbYB0NRU+3mRNT++Nki+lefXymiqtXf4/WId9ng4rLK5qSYIsdBTcgRHdwob9cUsvq2AC8Yw/d+0Tt5XrWEXew8/+9l2iqrbZTjkf3b4ER2mhTK2U0DGbqUlti8SXR5kOaOqoTx4Hipy+8FjVX5/tzM/alwvT3DHHPA90CVcqmhubI1Ym5/HaTtbV7czeWFCJW2dwoV4mTLWOBK/ykDCCCs4wCRikaErxsBBFn7CfbIGq9TcRjXDnZ/E6RtFrjofmIgE2dQ==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by OS3P286MB3403.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:208::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.23; Sun, 23 Oct
 2022 15:25:11 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f%6]) with mapi id 15.20.5746.021; Sun, 23 Oct 2022
 15:25:11 +0000
From: Shengyu Qu <wiagn233@outlook.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	michael.riesch@wolfvision.net,
	s.hauer@pengutronix.de,
	pgwipeout@gmail.com,
	frattaroli.nicolas@gmail.com,
	frank-w@public-files.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: RK356x: Add I2S2 device node
Date: Sun, 23 Oct 2022 23:24:38 +0800
Message-ID:  <TY3P286MB2611B903F4FF53FD01E6F125982F9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221023152440.2546-1-wiagn233@outlook.com>
References: <20221023152440.2546-1-wiagn233@outlook.com>
X-TMN: [75yYaoyLFJyEe2I5Z06+Z+1jgqBFAsIQ]
X-ClientProxiedBy: PS2PR03CA0010.apcprd03.prod.outlook.com
 (2603:1096:300:5b::22) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID: <20221023152440.2546-3-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|OS3P286MB3403:EE_
X-MS-Office365-Filtering-Correlation-Id: a1340e7d-2dd1-4eb7-fc13-08dab50ac6b4
X-MS-Exchange-SLBlob-MailProps: 	HeyTOiyEx6bXUCkHGqUvW+yTD5AlCjqAVUz0nCPYd+MwCVPK9Oy4J4NUQ63AmPygRCTxZOIZlD6bzI7a/KM6yRV03GqNVailMabwW9dQv0vezgRzE/1ZBmJa3hUuyD58YNZESR0S5AutrqYbJn/iOnE5bWGHdEwFm9iJXRSs/TsZADXPyTl3btSphs8vLZnB3Q57X4yGxKuC5xWqzTWODGH+21s3MsN3MHSi1DL2164AycZFRVUDQSJJzejolt0KFgDJKpHwOFBb7ilyg+w+EKS9BL2VwAtecrODDUaVHLteXNZIWQ0O4kGkT0kFH3FBI7reT4VnJ0YNP3FTAGr6pKSar3n3D4yzF8cOcbazOh5ERXMZx7V0TGEguc8M5lWu/CgGQgX8FCl27MEQXbCI4q2BZV75Bm0hP9a1qM3zc8RrFckeB+o9O4mNUkNZ1hj+77jrJ6Yu1reDSurUxLJma2zNZKmINiyN3pMZqTiVb85GJYR7sqWw2LBqlO8MlaPDMm99zXgmW/xc9usYZnYNMZHcCdt9KhH7HXhaphQRT38nY8Tb//9+TE5mF5pOhFDa46zewyj0SJtQ992jp+Gt3CwiQiYorNS2eKMo90lVa6J9P02C9a9uyd8cO+kNxjaJwxpTENK3EFA0AmYL5k9K0FX0lbuiO1e2+1Bc6rlZPT+9mcklOMrboUv6NdwgvbGWmPIAB6mCUruCgyURYI1Bhk2b8fz3t6Cc/uguV74ONiYNn/QGdlXzHTNmN4oR9tP3kKjvcax1Cia2YpD6C44Jug==
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	hyKmc3bcPm8dJzEbefWxIhPBY9hPTbUaLPKgI3aU8J1R/Q0/R5TlQHgm0ulc3PYtVc3iPgcTLQEAJyk8RlrWNStrFH/r3M80sew7kIUDBpqO1HST5Wpnos0Gsolr5GI8ivm2tYkTVcyfT8LYU9aT/85iHCKFmz+IkVFySjKSfz+fSl6PC754FWXspd7F31HlFvCyD6oWQ8kfEnshECkyfPmuHf4wkiI1J8JMI/HIrQYJ14STSKXxOMw0+xyDgh5CzpZf+qvTjU/84/0BhEFiSgB8U0ik121F+YcAFiVlYxO6RCCRDpIMAbmgAGTHzZWoJs8kMCSzbXLZ4GIAS+xqe8kX7gpG3hlSBalyaup9+s1Zymjmd1VQKs7lWQVoZ6dMmfSXIGbiOtm7tU866gdtyzk1PfYk2ZIN3QjoaAEwq0+9z+sbWA5naIp9ggFbX1B8VdhcXZdp7BrfShX/D++Z0tSaMTbTZZtTqHnnLgF3fLf/vI4BDY5RJFdEMk+wiKhOZHfwiZEGRGuj3/s0/9U0dBApsn/Lsh57R7j4elIu42I0Au/JzN9GmeJCI+EBeCa1XOgm0OZhGWwIP7BWA7g/L23bWSls8P2K758lJssVRifW7K5k3PmG9ghv33JdULWyl7hSrUXXjjaZM2K5sTI+BwJRf8SCCWCvK78waWqjJbKfeQH1tJba92n7AWTb2JgG
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?HW0LmUH7IjBJVB37Y9T6uXw+8RPAvuKeV2wpG2HKlDfhv14u8fcePmrKqEs/?=
 =?us-ascii?Q?PzlNje3ALuexV3EEJf+rN2x5xOj7jtLluF5vka5ED3Mh3BEy67YOvZ4L+hUJ?=
 =?us-ascii?Q?YkVvxOCf8n1JtClbKtxnZXnsG4QBm4M9sK/7q4xZEq+mzliJ7hcUb/gr/cpP?=
 =?us-ascii?Q?m2PMjIc/IWdqHt5WHPsZ2xxXf1Q8nIOxeRQL0cn2Clv+h/SdfQzsOtusMbME?=
 =?us-ascii?Q?hdA8ucZwVq4oFZu1zLEj20FPJA7GerzRHZPKZKKcH1y3BcT8VnWWfhAK9JHv?=
 =?us-ascii?Q?+8CxnCdu7AThMyAGAMxsDElHuzuwag+A3YUscvW2S5humVvCnIuwtw8WVWCJ?=
 =?us-ascii?Q?WOdx6I8jsSvaxKZJt2qxaqyGccdmlTzylv3d8wAUXDk+yAKTIgyOhTbpIuLj?=
 =?us-ascii?Q?RikUG+BZy4b9HHFOrqxK5VK3tEkia6QZNz0CZJ0X1WxGM/jD3cWi0wO+YZJI?=
 =?us-ascii?Q?QLTn5wkdC3uMJrQ2iEYVTTKJn7aalpgcz7Oc1vtfKuwehYdJJn0bpvEjHXT6?=
 =?us-ascii?Q?btNOURk6vbm8iBlwdCXiOqIsiS666zFetdGcDmIsEJoO2/PxnFbHafRYjOky?=
 =?us-ascii?Q?ydn7zDwSBvwLG8GPKSDVLQ6MgeEYuHusmkBoa4RFGAu0ZDnPyDboOIb4FeMn?=
 =?us-ascii?Q?BVvvHuRo4Iabvk/+kX2ZoBZfqeESFyXbpFCfmxL0s3OKXVMLUvbrqCk2K0/J?=
 =?us-ascii?Q?lCANYZVBot+ONaMNqyBe8hhuvvdJxAeXd8InipJvpnAdYIvBPY7rFj1X64Nj?=
 =?us-ascii?Q?RzVrrA9zj5dh7eUfA/xMyGP+xA6NivF2EieWdr/OarXxpod/adA+q2+ZJoNl?=
 =?us-ascii?Q?8jMpHPdr3A+XZZKgACLmZwq5o5d2L7dVM59RMP07iUF3vrRnpkFA3XqAC/EU?=
 =?us-ascii?Q?Y2lDo6YZsO7HYS1FaHZsD08vhEugNEq8KJDNojBlbBrEHDmg/sk2orz2zkxS?=
 =?us-ascii?Q?peL7G/Vae3KpBgmW5fb55SPndk0SyL9ynHudgzP24B7otk87vU4mc9UdsUGC?=
 =?us-ascii?Q?ygWd1yTo73bRh6qD9ruF2i3ZD5XgxHOqHr0VQwf8thu9cTynpCoqYfGyuMYv?=
 =?us-ascii?Q?CrfKB0Zkb3GwxneN5Gsm2zRcB5d+LTiJW7eSQD3Wd06uIcYQdNSj4iLidJO2?=
 =?us-ascii?Q?QTNA7Y5C2RTaMyJ+pILGjLptmJ6Zo274ATHF5+uOltWBR/16YR0xA4vRFagt?=
 =?us-ascii?Q?7CVvAyzkDwHwpW9VlaUNJqNHJKE/s+cgb/EnOiub4xuMMOfjflXOaKmcnKcu?=
 =?us-ascii?Q?VW2F3ByNq5u+kWxyqfzzi2hF0J8VvMzrXiXsySYoCg=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1340e7d-2dd1-4eb7-fc13-08dab50ac6b4
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2022 15:25:11.6896
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3P286MB3403
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_082516_245215_B21F89B3 
X-CRM114-Status: UNSURE (   7.28  )
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

This patch adds I2S2 device tree node for RK3566/RK3568.

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 164708f1eb67..4af1e28b3a0b 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1105,6 +1105,28 @@ &i2s1m0_sdo0   &i2s1m0_sdo1
 		status = "disabled";
 	};
 
+	i2s2_2ch: i2s@fe420000 {
+		compatible = "rockchip,rk3568-i2s-tdm";
+		reg = <0x0 0xfe420000 0x0 0x1000>;
+		interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+		assigned-clocks = <&cru CLK_I2S2_2CH_SRC>;
+		assigned-clock-rates = <1188000000>;
+		clocks = <&cru MCLK_I2S2_2CH>, <&cru MCLK_I2S2_2CH>, <&cru HCLK_I2S2_2CH>;
+		clock-names = "mclk_tx", "mclk_rx", "hclk";
+		dmas = <&dmac1 4>, <&dmac1 5>;
+		dma-names = "tx", "rx";
+		resets = <&cru SRST_M_I2S2_2CH>;
+		reset-names = "m";
+		rockchip,grf = <&grf>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&i2s2m0_sclktx
+				&i2s2m0_lrcktx
+				&i2s2m0_sdi
+				&i2s2m0_sdo>;
+		#sound-dai-cells = <0>;
+		status = "disabled";
+	};
+
 	i2s3_2ch: i2s@fe430000 {
 		compatible = "rockchip,rk3568-i2s-tdm";
 		reg = <0x0 0xfe430000 0x0 0x1000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
