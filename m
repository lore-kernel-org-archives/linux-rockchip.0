Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2FB7C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 07:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P+5Cglefx5g+lBVyiUP7r8Sw/d6cr3V8hwzBj8tuw9A=; b=oGWQq2ImtI2oFF
	DQPgs0qps2BQSZmCMTXUBNTzMvOU9oHYAK0R99yPFi9m1uJMQE3shTzFujVtsA7Oni9cEDEd4X1wY
	87xOvFrdDPyfS74frIFZgV72Fn1QNbq1qOMZMd4TIZ09133dqMY7Kwsie3zex52h6u+oUnCZw0ilv
	ZzxLHQYvp3ZYlYsFnIjmyfzGPYFp/tlzf8NO1vcCRdPG2evwLJDL15u3dLm0nwF15f7hp3BdBQXNf
	8I28R2avTJP/9h0rCmR4pJKposmpeI5eVVtA1hpJIBRGKNep57f4VyQhKRSlj35V06+VkcoQ43mtN
	E2lm9lJB1RUH/PuoqF3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sasHg-0000000Ey8i-0MEO;
	Mon, 05 Aug 2024 07:37:36 +0000
Received: from mail-sgaapc01on2070c.outbound.protection.outlook.com ([2a01:111:f400:feab::70c] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sasFG-0000000Ex98-26D8;
	Mon, 05 Aug 2024 07:35:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EsOi/Dd7SUc4tCyf+0rRJhpuvr+i6WWoLa4lF9XD8/EWLJsvJndbVHpJJM9UhTL/HxFDHJdkZS4JCAmEyqEHsc3/w06jh2M85ci6U8ii7JTAQsJ8qm37u2sLiEu+CA8LxKliH8FQ9xzORThaz5enR8/zkYOqDPArsLxHj2drbBvHD6PPIak4M8g+lJbWkf4lQZKYWqCqF1+lAjQdRNI4dS15ul6mDENo4r85jLDcdXqOjC7hO7hU0RJD5UtpeekZMlbPIAUxE9EqoHp5+nchA9COegilqNzcoiyw8GCIeUXOilnNIs087kKBcq6dAVYbO8cWJtgV4jnZkHoRN7f4dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZWqN2d2WV5H3rjNNY/SuBA/Is/G4XlfllfCP+MEOJRA=;
 b=XFzC0gNcMCnjGypfjcecaBtnTLldAKrBEdVYSeUNB0bPOdGZuc2NUu8rP81JelDyiWH+FZhBvROY+9PtVpUeTYFEWTU4skL4vzFrxDtQ+B9vw4GbAbcDZWh9hKrZ7Bj3v+F29CsC6+l8QY0l+Uq/62hAEAcblMbVUCsUZwba33Tj97dqISdBtc+YVGtv2ruOGrgRcNTWdwSNVJ1Rcgvavv6fLZD81mf8U1mNUinjM6K+Ekcl8TRSbZup0SaHIA/Js3Gzglrkul2smZA+hIBIRdYuj8+Wf7yags9ZPByXWOLlPVhSl9t7rzkDox1mAMr0iZw3oOanxMmgDoImTemnsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by JH0PR03MB8052.apcprd03.prod.outlook.com (2603:1096:990:37::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.25; Mon, 5 Aug
 2024 07:34:59 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7828.024; Mon, 5 Aug 2024
 07:34:59 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de,
	kvalo@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	conor+dt@kernel.org,
	arend.vanspriel@broadcom.com
Cc: efectn@protonmail.com,
	dsimic@manjaro.org,
	jagan@edgeble.ai,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	arend@broadcom.com,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	megi@xff.cz,
	duoming@zju.edu.cn,
	bhelgaas@google.com,
	minipli@grsecurity.net,
	brcm80211@lists.linux.dev,
	brcm80211-dev-list.pdl@broadcom.com,
	nick@khadas.com,
	Jacobe Zang <jacobe.zang@wesion.com>
Subject: [PATCH v8 5/5] wifi: brcmfmac: add flag for random seed during firmware download
Date: Mon,  5 Aug 2024 15:34:25 +0800
Message-Id: <20240805073425.3492078-6-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240805073425.3492078-1-jacobe.zang@wesion.com>
References: <20240805073425.3492078-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: SGXP274CA0010.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::22)
 To TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|JH0PR03MB8052:EE_
X-MS-Office365-Filtering-Correlation-Id: d3a8ced0-665e-415f-a0fb-08dcb5211c39
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|52116014|366016|7416014|376014|1800799024|38350700014|921020;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?EXdolgxyHNPHKSU2Cy7zag3D3+4AVKB2GDJx7UUHW6noZ5EjUSnfMIkSHsWP?=
 =?us-ascii?Q?+9cfEUc9HlLmPMLXRrC48zwZ0spt/j1zZ3ZYBpFyY0uJOHJA0HfO/+aQfwnG?=
 =?us-ascii?Q?xWasPeBF0HXjp5WEKqLowOZgjAV4lZDqjacddEMkHmJDssLZyNDxkZSH5gl2?=
 =?us-ascii?Q?7BQxvcm2lCiL5BGa5AVmGVUclN34c0AlHkSzTxZUw67yQwa5lUWZmMjUPIXq?=
 =?us-ascii?Q?kh1n7v6VjkWwwrJNHt7JmYR3ke84RhhjAGQwe+uYcK3qMn3v/JUwuOd3eioq?=
 =?us-ascii?Q?UYN4XoHxPgoTwKPiHuYKbLHK3/SA0caeRLiHI9t9K1H+nT55mozNQckjbi83?=
 =?us-ascii?Q?M07Yt3qvDykDMxOG5kWr9TMfIi1Wl8hDKGDWo2ph168G5J9a5IgNBvuDTghR?=
 =?us-ascii?Q?mn25vyymfp38BeRuDop+6n9f4BaCyoqIBCrPcm5w2JL5Hy1bTR086VsDTztQ?=
 =?us-ascii?Q?1DK+CpqmQQiSEJj8+zRK+tRawTqcXpjZA237clPuKmr4V+ZhJRAxSNYmtQVK?=
 =?us-ascii?Q?5V4MAQdlkPSsOe32E+E1HVFW6mygKlXN3mDRYmUrAgy3TgqJcRi244ca/Tzo?=
 =?us-ascii?Q?8kjThWz3DiqSqjRWD+AMsULUxqK1UbzOJihHtpqzQSQbkVpDu/ua/VUun13z?=
 =?us-ascii?Q?qnSiLwwMdKwn3dLtprmkJxXIW1n3p9M3sG9v86wh3LsHcesbR9fQNpHEt7tV?=
 =?us-ascii?Q?GDyDUAfDGDQMz120pQ1XSpTSeEU+PJnPZPfnf2ZFivH+qh2HjgZTa0SumTBl?=
 =?us-ascii?Q?E6ULMglpxJXTV/2neDbLKxeZpWCjS4sEAkiKWF/l7E5O5rdzvjgvOJgrXSOx?=
 =?us-ascii?Q?JNf9HosvHmGzc/ahNA9vm0LLRP4ydWMX9YD0Nu+BegMbjjaU3nrSEZavvMrt?=
 =?us-ascii?Q?u++TeCYywqik9CF+cR2Bh+NlDhCxq2IU/k7gwBLOksClZZ4N5ZARybtCStML?=
 =?us-ascii?Q?TYZF+vIqn6ZV7Gpvq2liUlkoCfFNuL76z1bVrsnfIYGjFDw6Aaw+X0HmZeEW?=
 =?us-ascii?Q?QlLQqh6kgp1HK2q4tq57DkKoBE4Hi2sFdIwW7UFHIMrRnmFDxztPNk0lke0W?=
 =?us-ascii?Q?4a/ABgD8EyWvtqIUvZQYaiZb6LF5OPJEZPOATqkfsFSRyOcCubdJ5XgaF6cu?=
 =?us-ascii?Q?9n0Oto5qziA4TYhhIaIIoLdxBhrqx69aWbpny97hEGNnKCQp6G5qDxD59PAs?=
 =?us-ascii?Q?UN/pxx5Ur+1+oYvat3Nw0WgFYIs9FieXtCxGgEIOlXO6km9+xEjBBY24U9BF?=
 =?us-ascii?Q?iXvW3dJDv9sqiTKCdG0VAhY65y6FK2NyNNoZSd9LQzrVveshYg6Go1WDc3Zo?=
 =?us-ascii?Q?d+wfB6VoPMYoNNo9nDK/Kko9aRHWXoS3cOwj7sFGE6tnqVqZnW1I6uNg4tVH?=
 =?us-ascii?Q?pvxn0NQARM0HAXM5n80D8Xt+JvLpSLWtCIzqlHi8MqbJ7kgIZb0/L73cCiRT?=
 =?us-ascii?Q?AbfQHHVBReI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(52116014)(366016)(7416014)(376014)(1800799024)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Eb7JHmxOY1/Zho0yKofC4KoNfiTrSgvItQnCEPxCWl+maoDC+CJJBbiOPi2k?=
 =?us-ascii?Q?M+IoT0wCj5UK3UnMYfX4+vHrWEMPDjZW7dPuJSHtXVBuRWkthW2sVQQ2a4/I?=
 =?us-ascii?Q?+ZMgeA5cPDfdP3+3q3gxQFUjLoqDgLHcPWYpr18HYaNBK3DSuRoiLzGL3cGw?=
 =?us-ascii?Q?n/yLO79pggH4eplG+mMqhXrAOs16xIVL/nuzwPTALI8DgDRsAGGaUPkrjHbv?=
 =?us-ascii?Q?xbC0MB+lbsHMcG/07hReUpT2MPkVD9oRzEB+5hd41bGxfCPwYdA9TaTT0MQ2?=
 =?us-ascii?Q?aO/nD5kgWVS0MMTYqbD06Sv9nDjIgFH2f47Fk1xvQ6WB1NyDwVF9WICQxhOZ?=
 =?us-ascii?Q?576eI4EgHEJ2d1FI5GNmgpzc6HKonaZ6KSplcYnq2MyVZNu6tKvJeI0s9F9w?=
 =?us-ascii?Q?hubkN0kU+6nDZiqCmV8AFV5nUHtlcrHYsTMPRjP6Pg8PA+RydvBrEItjDeKc?=
 =?us-ascii?Q?JRypnHWKbtPlveL41aGDF+a3AZ4b7L99DfvcICJcHIs59uMPdndC+96ewp5m?=
 =?us-ascii?Q?vQzniNn0Dl7+8vao/8QuPQ/3FN3fOANXx98Ajts5ByQkzVxBsTlGpiTpVfz3?=
 =?us-ascii?Q?C4pnECebLuY8cgad8yem4CyTuvBLH3RkdvqK4fscUtjsllQb1WJb5ofHDau7?=
 =?us-ascii?Q?tHnN5bZTLQM4c+mFaguA3JP2/obFBxF9zfUXk07p0LH2TIXPJwe/aC9V/lYF?=
 =?us-ascii?Q?KvJh9AehdulLZQbxVxfKkqUrD18DLn/0NkByZs0Eej8d+0somSjs8cacDcMf?=
 =?us-ascii?Q?7bQBwswkOY7nG92lAWKuM0Xzunrx6iyysmpTYV+aKKeRtWSESpAm4LzOBc0a?=
 =?us-ascii?Q?Wokb4iMkKm9RYdKnEDPM7GnBEEbYnIwXc3DYW9LSqajWHCKhEAUPaMS2Brhx?=
 =?us-ascii?Q?XRwkasZoWpEK1PLWxBFXVFSmtgRAKvVXi263/NefCayWX5fSFJGHIBFY5Xm0?=
 =?us-ascii?Q?vxuaP86mn7BxlROtWJgkMB4gMiXrffirvFT/lVnEryqRySmS6ohnSiSBKGUs?=
 =?us-ascii?Q?p8JMysl3+uB/m+mHlTSbLMgeQBPhMjt0PGUa4uYxIKUcL1afRHRYMxiku5yW?=
 =?us-ascii?Q?9WgmfGrtSime4Xm9w65ageYKnyRWAtmYCyYYHto5xNg6BOFyL2RhFXs5jXe0?=
 =?us-ascii?Q?X94yXax1bTInegv4btfs1P+V82sL4o1KtmDl67lRvZfxA62yIAPBUpo++pJO?=
 =?us-ascii?Q?cOt2EmZ9SXBREVO+ajKXJTFlQA9IChse8/mz5OUU9YZbs0dF6g+jq69leYe1?=
 =?us-ascii?Q?trBPlV3ZHxtN9sj7/W2uhLiNag9k7Ri+nwLGGzODaH3JSVsD2tG00jaBeJay?=
 =?us-ascii?Q?3tWjuUrQUHc2OY5+Q+bDmfZ2mHXv+g9ZtwA85br541Bm0nF1DS2fRxdPMSgF?=
 =?us-ascii?Q?9/EMOCFtV0qb63xAbKUgi2Xk73ffLwYJnziZJg0ZbxnVRsmv26uqGdq8kMGB?=
 =?us-ascii?Q?6B0U9csEr6iiRtdEVsyCBlLLeY9paSFHnzqG8Sn5TGB0V75s8q4/31BPTa3K?=
 =?us-ascii?Q?pSIF+ZBUiPblLSFjBPq2SyC2vy2FCf3QNfASSI83M5EObQJZi56/12Iq3AeR?=
 =?us-ascii?Q?3HlJWQNZH3Ow8dKz2KXKhSNHB2pMmwRwDLy2WdLw?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3a8ced0-665e-415f-a0fb-08dcb5211c39
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2024 07:34:59.3135
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Rm1Wj/piI2O+G59wwlpRSaZi36kImTbscFsG72Fpz9Y5PXfF99sB37jiLnWVpsrK9tlS7qzPVubEMeWZ87L0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR03MB8052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_003506_623915_5880571D 
X-CRM114-Status: GOOD (  16.68  )
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

Providing the random seed to firmware was tied to the fact that the
device has a valid OTP, which worked for some Apple chips. However,
it turns out the BCM43752 device also needs the random seed in order
to get firmware running. Suspect it is simply tied to the firmware
branch used for the device. Introducing a mechanism to allow setting
it for a device through the device table.

Co-developed-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Ondrej Jirman <megi@xff.cz>
Co-developed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
Signed-off-by: Arend van Spriel <arend.vanspriel@broadcom.com>
Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
---
 .../broadcom/brcm80211/brcmfmac/pcie.c        | 52 ++++++++++++++++---
 .../broadcom/brcm80211/include/brcm_hw_ids.h  |  2 +
 2 files changed, 46 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
index c34405a6d38b8..e88fa4cd62a1d 100644
--- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
+++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/pcie.c
@@ -66,6 +66,7 @@ BRCMF_FW_DEF(4365C, "brcmfmac4365c-pcie");
 BRCMF_FW_DEF(4366B, "brcmfmac4366b-pcie");
 BRCMF_FW_DEF(4366C, "brcmfmac4366c-pcie");
 BRCMF_FW_DEF(4371, "brcmfmac4371-pcie");
+BRCMF_FW_CLM_DEF(43752, "brcmfmac43752-pcie");
 BRCMF_FW_CLM_DEF(4377B3, "brcmfmac4377b3-pcie");
 BRCMF_FW_CLM_DEF(4378B1, "brcmfmac4378b1-pcie");
 BRCMF_FW_CLM_DEF(4378B3, "brcmfmac4378b3-pcie");
@@ -104,6 +105,7 @@ static const struct brcmf_firmware_mapping brcmf_pcie_fwnames[] = {
 	BRCMF_FW_ENTRY(BRCM_CC_43664_CHIP_ID, 0xFFFFFFF0, 4366C),
 	BRCMF_FW_ENTRY(BRCM_CC_43666_CHIP_ID, 0xFFFFFFF0, 4366C),
 	BRCMF_FW_ENTRY(BRCM_CC_4371_CHIP_ID, 0xFFFFFFFF, 4371),
+	BRCMF_FW_ENTRY(BRCM_CC_43752_CHIP_ID, 0xFFFFFFFF, 43752),
 	BRCMF_FW_ENTRY(BRCM_CC_4377_CHIP_ID, 0xFFFFFFFF, 4377B3), /* revision ID 4 */
 	BRCMF_FW_ENTRY(BRCM_CC_4378_CHIP_ID, 0x0000000F, 4378B1), /* revision ID 3 */
 	BRCMF_FW_ENTRY(BRCM_CC_4378_CHIP_ID, 0xFFFFFFE0, 4378B3), /* revision ID 5 */
@@ -358,6 +360,7 @@ struct brcmf_pciedev_info {
 			  u16 value);
 	struct brcmf_mp_device *settings;
 	struct brcmf_otp_params otp;
+	bool fwseed;
 #ifdef DEBUG
 	u32 console_interval;
 	bool console_active;
@@ -1720,14 +1723,14 @@ static int brcmf_pcie_download_fw_nvram(struct brcmf_pciedev_info *devinfo,
 		memcpy_toio(devinfo->tcm + address, nvram, nvram_len);
 		brcmf_fw_nvram_free(nvram);
 
-		if (devinfo->otp.valid) {
+		if (devinfo->fwseed) {
 			size_t rand_len = BRCMF_RANDOM_SEED_LENGTH;
 			struct brcmf_random_seed_footer footer = {
 				.length = cpu_to_le32(rand_len),
 				.magic = cpu_to_le32(BRCMF_RANDOM_SEED_MAGIC),
 			};
 
-			/* Some Apple chips/firmwares expect a buffer of random
+			/* Some chips/firmwares expect a buffer of random
 			 * data to be present before NVRAM
 			 */
 			brcmf_dbg(PCIE, "Download random seed\n");
@@ -2399,6 +2402,37 @@ static void brcmf_pcie_debugfs_create(struct device *dev)
 }
 #endif
 
+struct brcmf_pcie_drvdata {
+	enum brcmf_fwvendor vendor;
+	bool fw_seed;
+};
+
+enum {
+	BRCMF_DRVDATA_CYW,
+	BRCMF_DRVDATA_BCA,
+	BRCMF_DRVDATA_WCC,
+	BRCMF_DRVDATA_WCC_SEED,
+};
+
+static const struct brcmf_pcie_drvdata drvdata[] = {
+	[BRCMF_DRVDATA_CYW] = {
+		.vendor = BRCMF_FWVENDOR_CYW,
+		.fw_seed = false,
+	},
+	[BRCMF_DRVDATA_BCA] = {
+		.vendor = BRCMF_FWVENDOR_BCA,
+		.fw_seed = false,
+	},
+	[BRCMF_DRVDATA_WCC] = {
+		.vendor = BRCMF_FWVENDOR_WCC,
+		.fw_seed = false,
+	},
+	[BRCMF_DRVDATA_WCC_SEED] = {
+		.vendor = BRCMF_FWVENDOR_WCC,
+		.fw_seed = true,
+	},
+};
+
 /* Forward declaration for pci_match_id() call */
 static const struct pci_device_id brcmf_pcie_devid_table[];
 
@@ -2480,9 +2514,10 @@ brcmf_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	bus->bus_priv.pcie = pcie_bus_dev;
 	bus->ops = &brcmf_pcie_bus_ops;
 	bus->proto_type = BRCMF_PROTO_MSGBUF;
-	bus->fwvid = id->driver_data;
 	bus->chip = devinfo->coreid;
 	bus->wowl_supported = pci_pme_capable(pdev, PCI_D3hot);
+	bus->fwvid = drvdata[id->driver_data].vendor;
+	devinfo->fwseed = drvdata[id->driver_data].fw_seed;
 	dev_set_drvdata(&pdev->dev, bus);
 
 	ret = brcmf_alloc(&devinfo->pdev->dev, devinfo->settings);
@@ -2668,14 +2703,14 @@ static const struct dev_pm_ops brcmf_pciedrvr_pm = {
 		BRCM_PCIE_VENDOR_ID_BROADCOM, (dev_id), \
 		PCI_ANY_ID, PCI_ANY_ID, \
 		PCI_CLASS_NETWORK_OTHER << 8, 0xffff00, \
-		BRCMF_FWVENDOR_ ## fw_vend \
+		BRCMF_DRVDATA_ ## fw_vend \
 	}
 #define BRCMF_PCIE_DEVICE_SUB(dev_id, subvend, subdev, fw_vend) \
 	{ \
 		BRCM_PCIE_VENDOR_ID_BROADCOM, (dev_id), \
 		(subvend), (subdev), \
 		PCI_CLASS_NETWORK_OTHER << 8, 0xffff00, \
-		BRCMF_FWVENDOR_ ## fw_vend \
+		BRCMF_DRVDATA_ ## fw_vend \
 	}
 
 static const struct pci_device_id brcmf_pcie_devid_table[] = {
@@ -2703,9 +2738,10 @@ static const struct pci_device_id brcmf_pcie_devid_table[] = {
 	BRCMF_PCIE_DEVICE(BRCM_PCIE_4366_5G_DEVICE_ID, BCA),
 	BRCMF_PCIE_DEVICE(BRCM_PCIE_4371_DEVICE_ID, WCC),
 	BRCMF_PCIE_DEVICE(BRCM_PCIE_43596_DEVICE_ID, CYW),
-	BRCMF_PCIE_DEVICE(BRCM_PCIE_4377_DEVICE_ID, WCC),
-	BRCMF_PCIE_DEVICE(BRCM_PCIE_4378_DEVICE_ID, WCC),
-	BRCMF_PCIE_DEVICE(BRCM_PCIE_4387_DEVICE_ID, WCC),
+	BRCMF_PCIE_DEVICE(BRCM_PCIE_4377_DEVICE_ID, WCC_SEED),
+	BRCMF_PCIE_DEVICE(BRCM_PCIE_4378_DEVICE_ID, WCC_SEED),
+	BRCMF_PCIE_DEVICE(BRCM_PCIE_4387_DEVICE_ID, WCC_SEED),
+	BRCMF_PCIE_DEVICE(BRCM_PCIE_43752_DEVICE_ID, WCC_SEED),
 
 	{ /* end: all zeroes */ }
 };
diff --git a/drivers/net/wireless/broadcom/brcm80211/include/brcm_hw_ids.h b/drivers/net/wireless/broadcom/brcm80211/include/brcm_hw_ids.h
index 44684bf1b9acc..c1e22c589d85e 100644
--- a/drivers/net/wireless/broadcom/brcm80211/include/brcm_hw_ids.h
+++ b/drivers/net/wireless/broadcom/brcm80211/include/brcm_hw_ids.h
@@ -52,6 +52,7 @@
 #define BRCM_CC_43664_CHIP_ID		43664
 #define BRCM_CC_43666_CHIP_ID		43666
 #define BRCM_CC_4371_CHIP_ID		0x4371
+#define BRCM_CC_43752_CHIP_ID		43752
 #define BRCM_CC_4377_CHIP_ID		0x4377
 #define BRCM_CC_4378_CHIP_ID		0x4378
 #define BRCM_CC_4387_CHIP_ID		0x4387
@@ -94,6 +95,7 @@
 #define BRCM_PCIE_4366_5G_DEVICE_ID	0x43c5
 #define BRCM_PCIE_4371_DEVICE_ID	0x440d
 #define BRCM_PCIE_43596_DEVICE_ID	0x4415
+#define BRCM_PCIE_43752_DEVICE_ID	0x449d
 #define BRCM_PCIE_4377_DEVICE_ID	0x4488
 #define BRCM_PCIE_4378_DEVICE_ID	0x4425
 #define BRCM_PCIE_4387_DEVICE_ID	0x4433
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
