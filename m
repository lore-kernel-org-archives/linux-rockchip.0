Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFA70C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 12:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+CUxxhtq2SUrRnzl68oByXoGY2d6Q7P/Pc4e/sJDk/E=; b=2E4+IdjPO28iYI
	HcPBbcvN/iwxubqXEKZWsBmjRYD6N9VallRjhX540Sj6W4rk0N1ylwzNGKhSpMkczM4+uN1D1bzvw
	RDe/uErGPtl4Wx/EbKKrawH/NMi22xbJHrfkvv+L7D9l+KWHWTXlbGI4jfTUmW6f8WQt1PDN+hZ74
	rAPIde6mhVsPrBOS9wMd5gQYunu08EG1w4SukdF/MesX77KSvum/2w7j0bge7AmT8awMAx07rji4a
	9hbTI8AU+D/HLpLS8sdcLFWCwuaD3Jl+di7sul/QNyv7bidAygZHj5MW+r1iKrEhmJpmi76wMj5lp
	Pm2F0Eibfg7FuU1iurhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDkpl-000GlN-2z;
	Thu, 14 Dec 2023 12:28:57 +0000
Received: from mail-am6eur05on20600.outbound.protection.outlook.com ([2a01:111:f403:2612::600] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDkph-000GhY-2f;
	Thu, 14 Dec 2023 12:28:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LmMzSDRbLDuFLmeY8g+2y+IqumFlQKCHXXQy/y/dcZCr/aqsvhLk3xpzF3/KGUMfMf7wteE2afGsU0zFLdHykK4g4ftZ0a+CpU+Z4m8EMG3oSbGjDjol7XJEyyAkNB1NTTDt3Bd81bfhMKLW+Sm0H1l5aXGuc4nGvs8hRsGXuvg/p0Op+3s9Qtm+GjPhoTj7gGhOGlQw3s7lDjRJ6Jy1izYGi1h0T9w82QAdfu/vxu26F/H3Dq3TUuIcqsX8c7IYUdIMBery6DhBnm60q6mMDa7YME2X/L+UPE9L//BM4c1CzYRrYcd/eNAPmSnX7GjQlFmWmAthZpx9OpYwQO226g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/NSPVvs6DMe3DwSXaf6lLY3KnnDYKqeuFPAw/bOS9I8=;
 b=f+wlY5jNwhi5HBFQIffQEOwfmI82k378hNwYe+miDGQksWetXb8qGtz/eeqzV4S70668B5ynHJr/6DX55fKNjab3DObrUanUyR573HCeiRQWuagHwgnpsjV0l0o17RAXajWzRWQf1vrYf/c60YByYpzsGQ66p3rTjjbOMVf5YqNdItX2aoxWfXF/8j7mVWgEJaRengvsdFH+nZwtAKtihS21FwvmlxwKdLTyi153gC5PLcAHdCSsXz2+LnzV4jfRlS8hg/L1ddRQco28rsI6VIWcoQlqvOLO61NfyWUlkUEGoH+jbt3DFfXTvreAVHcGGekC3lgNp7CrFPwVnAKvug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/NSPVvs6DMe3DwSXaf6lLY3KnnDYKqeuFPAw/bOS9I8=;
 b=WnZnN5Y0YfMqDU/EmRBWT0jYPJlBUNgT3QC+ejG1G1eeul4A7JWe7bc5IIwefCM4TjdO+D/2HS/btfThUL+zIROJFu3jdD2CJgK3lJB+kqpqH59MMs61rkH33MROaLs4aR1m1XYKfJJ++hRyLpWIRhC0vx+fmydWNIHYzKV77xTS0JI+Qsf5Mke/ivgmWm+ENvyCju8oVutIKzv5nSfid3qEkU2lKYOfOP+ESCNDaVikY3MFUHA661aW76V4TVJa3LxlrSxTIF7fKk2Hynt7uS4zfJGQhlArU4WoObACFprVJM40nJp8YdvIjiMh+RolhIEkLr4v5128YPkyFPSOzw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from GVXPR04MB9780.eurprd04.prod.outlook.com (2603:10a6:150:114::21)
 by PAXPR04MB8846.eurprd04.prod.outlook.com (2603:10a6:102:20d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 12:28:43 +0000
Received: from GVXPR04MB9780.eurprd04.prod.outlook.com
 ([fe80::69e:3527:b31d:9449]) by GVXPR04MB9780.eurprd04.prod.outlook.com
 ([fe80::69e:3527:b31d:9449%3]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 12:28:42 +0000
From: Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>
To: quentin.schulz@theobroma-systems.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: fix misleading comment in rk3399-puma-haikou.dts
Date: Thu, 14 Dec 2023 13:27:59 +0100
Message-Id: <20231214122801.3144180-1-vahe.grigoryan@theobroma-systems.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: VE1PR03CA0021.eurprd03.prod.outlook.com
 (2603:10a6:802:a0::33) To GVXPR04MB9780.eurprd04.prod.outlook.com
 (2603:10a6:150:114::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB9780:EE_|PAXPR04MB8846:EE_
X-MS-Office365-Filtering-Correlation-Id: 1040c0ea-7364-4181-9746-08dbfca03500
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9m+2QTTVvPY9KXmhIHxejDG9JXWlav26jRx4T27Z6vxtFNwS7G880KF4/Lp2bsRXiCo1Etxms6aTGIvqloBahLZhktsG3hQIoJCBWUcor8Tp6LhzDwqnlpKhq25fZS0irs44yNbQNwOqEzQj/HsOVbuNDiMMNtl+3H/N2tp0j3FjZi8HufdCvfiXoMvBsm4LNPpaiZkHPRCzRCha+MgxmpGpt8bqQzjdoE3Qol5I1N5NSV1bK4TsFDmoZKvGIwX++coz+KZVLM0GPcBGnW7xt8GycCkZJx6nglOAnW8kSIim1pBeUiaGhfUXMSlYoybHkMmFUw0YREKCllSBCMlA93UEQ5rj1S5bdBqR1r5sR3bY+6hWxQoRSckgAYS4EJkFXFYZLfXdBxyx6O4iVkrThacAgGjVl9AmuCGS756DvZAl+3lqhNAplDhW9ev/TMbfgtkjpuaVUqW6vzkQsgZu2/9m/m7mzpV5mcOQwIElivB1CBguum2Ldz1NwXFpEtD3Y8dTr1IdcmOqNGpig0ykAgTdOHdYRutuibod5l7NGYs3sSBwA/cbxVTora0C6Y4fKNShwmjlCecQz2A2dTU1ThgC01fGz94MGjuLt32wXK0tz+i/mdNR5RXYKq7HDlLR
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB9780.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39850400004)(136003)(376002)(396003)(346002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(52116002)(6506007)(6666004)(6512007)(6486002)(478600001)(83380400001)(107886003)(26005)(2616005)(1076003)(4744005)(2906002)(5660300002)(41300700001)(316002)(66556008)(66946007)(66476007)(4326008)(8936002)(8676002)(44832011)(38350700005)(86362001)(36756003)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7myCdVDX45RyC728akyXBYoNjzA0TpCfTJhvh9AdFFdPsGbVP4GpMNDjwArh?=
 =?us-ascii?Q?a6AfV4wFG2rWHDzi5sZdoNMZF7KQeSy3PJE4THtkyGsEKKlaZEm7v0g/YC3m?=
 =?us-ascii?Q?cqJYuExJF0/Baepb2R9TWbZA07WCRdav1d2PlSzys1hUWcNNyLAsjtDgF4yJ?=
 =?us-ascii?Q?GkYz4zdCQEHzmkQIO9063B30n4DEkVLMw4ePfi+tmCkZbvni6HLxAkl/5k+f?=
 =?us-ascii?Q?FA+jsRwnZ4vekiAUnmRjZ2M6JuBlEZs3Epm1Qj45PHgjBTHszBxZ+r+PvBqm?=
 =?us-ascii?Q?wZHNC6+vZf79HUi/1INbp79tEKzHXJ9Hzxg4fLHnCQrUEcumFL9XcswExvTG?=
 =?us-ascii?Q?6msl33g+YkAqbzTz/LLlZBfJAQoqLuejSs2poL+9ETWJFzobBMd8iskORLJC?=
 =?us-ascii?Q?x89AXSSK0JIdVJUpKLmxWrkVlgn7XkcZPHzLFwIM39j0H5JOsOPO3zNbO49T?=
 =?us-ascii?Q?useOev28KrkQBrGDPEJvTnsDE3SgkRzHLlrUPngLhrvEJgPF6mG37yMzKFJt?=
 =?us-ascii?Q?v0SexXY6T2GtGzkO6aS+hyWnEp3m8qjX00oPvAzJ3M5Of1wQXaboNvoRLMRh?=
 =?us-ascii?Q?ICXuJnX8oXDvOY0TrJ8lu2cOYeXy3SXEVmNQT9C1NgrSO2pATP7XPdMhkmKw?=
 =?us-ascii?Q?XhUXA2XGjoQCgCQakoyQcZSGgaVWK9RdAVYBoYDVLs5Zcsn0ckiBPuV7a7j7?=
 =?us-ascii?Q?0VconGdraebLrxVRgPFS7P7dS3SCZHHuyx+SY53+kE/orLyvLx9C1lAR/32M?=
 =?us-ascii?Q?Y43RzRJz90v8PEaey1Mdxqk2QUim0N5zaiwZMj5QGfXhXyTR28W9I/P8/Llw?=
 =?us-ascii?Q?RZHlov54eyqlP6/MDPPZccBJDm4Zum84JsXS24WIB/0njZT03/JvMFcdsRO9?=
 =?us-ascii?Q?TEk2nXV0ES8dLzVINY/VPJZYpejri+2tShZ4DPYnZzIsElfzghpjbJafMTsC?=
 =?us-ascii?Q?9kRZu6LpJjDcxuUqhqibaMnHUD74PqmA4QANcxLtGnzmhJH/WvzsFst0jXVk?=
 =?us-ascii?Q?OOYIY4rxAR00eMBlWSNjVT25p0RZSe/H3h8YLjxfhMqa4xesh+WsgYpqvSBA?=
 =?us-ascii?Q?3LzqwCbrAKcDnclIixqngNdYwc121qPAyqqgUZrtZonC2sr15e3QkQNYbgu/?=
 =?us-ascii?Q?fV5lw1TPlJXzWb3IzwD2MjvgRXmG3vEM/TWtUr9lSMu3C/B0aanVTltCbyBV?=
 =?us-ascii?Q?WxaPnDgpEG8qZnf24au8CXIVJtubQmuFhDnxuVCeB7F2cDAwvz93VMPOW8qJ?=
 =?us-ascii?Q?mEwElTm2VWljJiMCpzyjKgWKn8Ot9Ul49b/pzSgnKa1LOccJcK9O2l/9HJ/E?=
 =?us-ascii?Q?fLvlHTJb6uNm0z6ywxR/DA4T9KbZenUSpiwRegmunyg/CmMTZvWWGpZwdtz2?=
 =?us-ascii?Q?3W5Dsapqq1AVU7yeMmSRxmzFCYiHd3Qh5xbDiYCPfCIO767zq/TlS2/lowYQ?=
 =?us-ascii?Q?pPOLeWss+PRvHTmKtyArTD8KaMfa9Bas4L764sLJ9ZIIJOTPjeAWMNI4z8Vr?=
 =?us-ascii?Q?4GymEng5BhZV4dOwxukM6W3FCUWeydxKK0+ZXD4rF/zjJVKHkx1Qt3Vf5r0+?=
 =?us-ascii?Q?dPOnF+HAdyHxp1/sqHWrzzVadOw2signxDIm9DelsCM+Ni3OsviAm9/87XEY?=
 =?us-ascii?Q?LW3vpkgAcpkadfACrOjKW/c=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1040c0ea-7364-4181-9746-08dbfca03500
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB9780.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 12:28:41.9285
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2HieK/k8SsJvEoVU1SAKk6lrQqlovnaG5dAjx/43wwV725vZ1OwXkdQdgSZUK7tTrCsGlqe/RboGt3bnRwkfpbHxw+Ws7bqpi2BGI5THTlTxxBmmGVYGMW5Q3zYKdlgP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8846
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_042853_876571_5AD9CC3F 
X-CRM114-Status: GOOD (  10.73  )
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

Haikou is an evaluation and development platform for System on
Modules (SOMs).

The GPIO0_B1 is routed to the Wake button instead of BIOS_DISABLE,
update the comment to reflect that.

Signed-off-by: Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 115c14c0a3c6..4f2d4bb12032 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -177,7 +177,7 @@ haikou_pin_hog: haikou-pin-hog {
 			  <0 RK_PB2 RK_FUNC_GPIO &pcfg_pull_up>,
 			  /* SLP_BTN# */
 			  <0 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>,
-			  /* BIOS_DISABLE# */
+			  /* WAKE# */
 			  <0 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
