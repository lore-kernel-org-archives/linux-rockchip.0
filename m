Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 574B1ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Oct 2022 15:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fw7lQxiF5UoqV7LAyDEl7jm45EIN3pz/zanOQ5bwneA=; b=wf+3J+jIxvBE5u
	BDgBb0YQHQD+1oe1aYF/g8DXxsJB3+gMstccTWk1puKmXuB62j+4AoD+aEO8LuMqRhYVIbp437tTR
	LEJ8DuIQ+M46Rk0q1IyLtXh9u4gkznUqKX3Ed/VVvF0tRdbMlc650IJ0q21YFXB+5hYHu3APwfI2z
	1MUZ5VhgcaFWk84WIDojUr50SnnasD8WHcYV7N3xUhlIZg/J7yT0sCsaDJY3kfAAu75DtVpy+55ra
	d7Ag4YlQoV0TkuBsrXrUYy+m6VzmvDLTIO0ASa7c3ucictnMv1YabLItsYR5b1bFOfdQ/HwU5ZojT
	aaMQwk0KjAOcwpGMhj4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omcql-00FZ1l-BB; Sun, 23 Oct 2022 15:25:19 +0000
Received: from mail-tycjpn01olkn2034.outbound.protection.outlook.com ([40.92.99.34] helo=JPN01-TYC-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omcqa-00FZ0A-B9; Sun, 23 Oct 2022 15:25:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F05L4umIBKlnLr2LwnrVhB5eRIhUdUdTGayszF3marWTM2ArGcySc8fTucit1w3X1a4dgvU1jNmigjLwH6xhGWIhdaMC8qaPvRn7PMZxyDAKcboIdXXoneb/7bQsONJKV1X4f6Nf4ER8oe68GhK+xu1fqEruH2FyehQpa+clDzLysgouzrvxvn8B/cz2ak6B3sWAZ8wYN6dTikHjguZja+hk91ZCcbyYRDvPP3doNKNIFBquEE2D8wmOgH7Gu87SNdaudWQCYL8YEZb67g96se/3MalYjNXb4wT2iwKOcK94fcXuqLoUnmG5jiSoHp95KzkZDzz7DV3TtmjEWXgP1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p+B2h6KrqFxICVheFEPGNABrJxhUzLtiV+316ZppzM4=;
 b=SiJjzL1ndh0Z8ODS5LXJ5JSSCNkWR+2eRvcG7ToNVIOzh5a5+c3Wj/9fFG8TdMj/ot2D5tu3txzF/sxv55BVgcUf/Rh6iYotBefZLDIImuaZublC6qyXk5jaFPtdkCzby53S7CAZ4IpSCHv4hhntKSplXp5rfRQsMYTqxLgFbnxcAsqGn6itMYSGb14KANnHHrayeyRnarO3dIMEKoEdxb7eoyLZ6iixM4KAT2NKwWAp5xydtnA2oJ/2w40e+mfi0gEp9HuE80deASz2qlaQ5ZgOY8wehTLVvPTktONvYt3zS1bwBdUPs0kP6CytISxqFIZ6cJSQC7cFWwkDR51AjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p+B2h6KrqFxICVheFEPGNABrJxhUzLtiV+316ZppzM4=;
 b=buOJybjYSeFQeZyTdHLQmUisZG+/xekMQkV26tpkpXvXtRdkRXp0aFJaJm2BUBDJp01LdPfux28k5UKLK816P03piqfoDjmsbjqmdYa9ioQoM3leTJfJDIk/g35LT2NOL5Cmj8n+Jv9P7kQyk0H5qrng3+RIHaumcjRImOW8yFchGDmVcOSZniGx8616oRrShJ+dCtmUFhqQ282ev49T1F1e37aCC5lOuWKHeGqE5dUOUR5wKLLkgZOblzvn1VwV0nsC17u79fj5Fi+RAwUCRDIGIR2UdEjYioRRAbQDEosc08fe9YMzIqGnf2iqIuYV7zRGCmwDmjUhmr8rV2xjrg==
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:252::12)
 by OS3P286MB3403.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:208::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5746.23; Sun, 23 Oct
 2022 15:24:57 +0000
Received: from TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f]) by TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 ([fe80::4de9:f94b:b58f:948f%6]) with mapi id 15.20.5746.021; Sun, 23 Oct 2022
 15:24:57 +0000
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
Subject: [PATCH 0/3] arm64: dts: rockchip: Add support for Radxa Wi-Fi/Bluetooth combo module for Rock 3A
Date: Sun, 23 Oct 2022 23:24:36 +0800
Message-ID:  <TY3P286MB2611F9C1AA78674BB86304FE982F9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
X-Mailer: git-send-email 2.25.1
X-TMN: [LbWPKHbqki/5CamcnlCaZSfIqPV0XfTz]
X-ClientProxiedBy: PS2PR03CA0010.apcprd03.prod.outlook.com
 (2603:1096:300:5b::22) To TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:252::12)
X-Microsoft-Original-Message-ID: <20221023152440.2546-1-wiagn233@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY3P286MB2611:EE_|OS3P286MB3403:EE_
X-MS-Office365-Filtering-Correlation-Id: a76fec8c-e7a6-4b71-e675-08dab50abe30
X-MS-Exchange-SLBlob-MailProps: 	HeyTOiyEx6bXUCkHGqUvW+yTD5AlCjqATU7rgfkltAT5Tn6vACpOorM5Cr+/IQP2Xa2ZA8Ia4Muzs+h8z6huRIlwagT1FouIuTv8ejvNpFoD7Qg6QC/9HXsjQB5+s7nJWaRBXcaRifrXg/Pdj2L9HVg9HlhDgR0dVFZWkGQ9HEnugrRYgVuAM/JPg0oClLNh7PVeNVt+HhD9eB1K1Y/P/+FGfG/kYvzKTAcgDQO9ypdKpXlGVK565hJI+gnyvx0GG8G3arGByM9PNHBrlEPCch6HvDvVLv8hanEwSPhuDxkwjD2jccMaXp5hsfF1sI7YJwj78MwqPVOtxXDwOCPXS6dKXqgBQ73eBHWxhXEVUfA4CjM0VM24Ld3tUUiSwY5OPPUE8d6EzwMYbSQEj/Z+tiNeFapdNBLgfzS/br9goSLUSiZLT+7Q/fxPy+4wznCfuZNbiTbhwddQnwuphgTK5XtQ3GR6mdzhIozQkhBuf6B8oErFGgWo7yzMNRL1lj82ZUYMWgPnrHdqEwUN0l9L4+ydy5DQQcn+6+Tvhclls6uyKLZoBDL0vk6zgChKtANud7UPj96VukqcJZ6hFrYitAPIynPPQMbtlGYp+c7Cd9CVOihPnjWObmBNx+Gg+35sfoc5vc2m+39OD9UKRgfifzZVOJsl1DX3kQaVXYQoqTRt1XuiVkzIFcBSZjZvZu90uTq35HgLmQD12s0W6QLz97ygDwcSd3YhhroT+FACKeWgjI/RWxUWp1xUSQqtpRoZWUBTL58Cj6t1TKrEeXj00w==
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	FIbQUKAJU8SHLH8Z68QUXwbeyEcCYSdCVarUa9r1upO/NHzMJLzHQhm8O4j/Lg8RbiYFBDIk0x9GTCm5XOThZOTixoLz7uGglD3zJfECKcq6orkJy00WjO/i8gfr53gQDjUsaBaz9euIb3QFO5cdlu+2TIoz/KQpmrIWRR90j7hYqqLVhoejL5jrDipUy2ViYk9MBDDNd3S75gCaGQERaEgGBmIzGcZzKbzwuK0R1TAMV+6tFUfwm4bUavSPW9KychwPW6kcRukxG+JIBmQ7Dh2yIO8aewoOUFrT0MHSe1igN+gpDjwTZWHtMsgE7iiLXUWG2JQ/ulFQjL0srrVTTEc8S1G6++kmiO3OU5KkwgDxsGN3FxSqOUBWEuvHupXy+GpWe3hyVwh3oMyOrBVsD/PXsYq8WnQaI6T+S2xteZrdAooM7+5mFGaDNJEoca46EBMehiKVrNhVroFc7tyri1xru3LV8HB8ezLkmTWXY0JlHsw2nAIeYkEQyuTEYXpWIIHyUQUTsg91UVC/RmFdsMTRyA4vGIkuDH04AkeoXlH0+5B2LkjUpmvo4MgwVTqaB63x9qClUaYxlViQwTQF3LaI8vlQ7jHwNqU6Om+saKUDp+3Dq2kJsysEelP8p7m65AjJW9sZvK6Rd05Q/CsH+7nfCuDRdQIxkqw04x3eUsXpAaJl/Qji8vaaK9CK3Exx
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?XOxKWkEu0CJiRXYpQ8saPsvUeUQjIBRgazVP6jcSC/RAOMjaZHoikdcXKxXk?=
 =?us-ascii?Q?V+EKmE8e5bJkCGGfWR0PxkHiWufcmGfKw5xB33WRg5ysScMXcHjY0rHEGet4?=
 =?us-ascii?Q?Lpr2gyHQ3hI9dZsTrlymlLHHGX/RoQgcTQf3wZxj7HjLmJZd/g5D5mPNvrlH?=
 =?us-ascii?Q?mofPhHh7BL8OXeoSx8+yol8DD+3riHoVjz9rZvD0fNGRjZCSqhueHRYVCsiZ?=
 =?us-ascii?Q?/U831s4exUVmb4UAfKYHjKCuJd9hPZ2kXZFil/mqAtcyoSMgTJCtiTz9s/H4?=
 =?us-ascii?Q?6QW+w4ZEZh/TfoO3/jvd8M9AFt/VZPlKD6KW3vzK5f/kBDcdb/ZvAFdcyQdf?=
 =?us-ascii?Q?Hka1Aj7SxwrWlJj472bGFJSZT8rffMmOEROssVu5cYQnQoY7AAOf3vGqceeQ?=
 =?us-ascii?Q?yM90zfLrHr0agpoWUPsUM2RHZw3DakhBpMfLipVLyRauNdVgiDabfLWhz+2L?=
 =?us-ascii?Q?YXHz+15DcahAvrOsU2JbtQPnxHNbiEGpGDRgZUL4l4uJNsqn+tbTPn60eI+P?=
 =?us-ascii?Q?OUms+bvOHTSwtrs93R21AD8TxROQN8zf5rrwY35/JZ24XRKfhqWV4vdidqMh?=
 =?us-ascii?Q?DgTld5gNGF/LYVmIkGPPUVDNcZfoA2+e10ejUg20/aidLz3hlze0urVHdPsR?=
 =?us-ascii?Q?bkalWVo+Dexvvbc4/LMPQpslx2LsWY6hTSzUFaN2Zdt8N4m6gxbP/ujM/C7V?=
 =?us-ascii?Q?yXkrgtkyK34E9nhwgpXdOrqd1JMIHDZkmuDjKDpUSQTIvxZBlVdADO7OuhAf?=
 =?us-ascii?Q?N+dFEHAve8g4Ckk1yd0zfE7RywDRloMDrPfEPDCjsQPELLLYQjWlIJszlYH+?=
 =?us-ascii?Q?6n/xqD2E6vOSoFuqyudaIK9pSYORs5cG2IbVuw9jxEypSyOAqHJxina9ilPC?=
 =?us-ascii?Q?R7XMq7uypHNYxbgL7rtTRLUyBQMhjpzHkpMaEXmuspsCHgVWpoxHeFDGI8/+?=
 =?us-ascii?Q?RmdY8KSEQt1qn/RipjpiBR6vmRWxwwe2zPnX9OWotNAsFRCb1a9VO2MXBOPn?=
 =?us-ascii?Q?+0t9exSICvDu8YfiLI+uG/wrtSHJPgih0lTf8PoVtuUMwltT+jpUm203PUA6?=
 =?us-ascii?Q?EhyUV2bdPPnis+94UFMRbRLi2P7TANfV61NryDNAjs5QomVjkvBVIywvAxbr?=
 =?us-ascii?Q?MrN3+rR3eTpqpoB8Pvb8ncoiylRfwDrKtXriqZFBA1hmQPShO+2OTjDWKpGA?=
 =?us-ascii?Q?XcdVtpVH5QPdqoMGMnU2G8sqjRQFRcUhClOdaQPRunUSBcIUFX6rcFrQ3pE5?=
 =?us-ascii?Q?dR+l1JlEHCfRQgPJFgOnRaTNQ6nYRWTFpDUhjC6Syg=3D=3D?=
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a76fec8c-e7a6-4b71-e675-08dab50abe30
X-MS-Exchange-CrossTenant-AuthSource: TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2022 15:24:57.4960
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3P286MB3403
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_082508_407984_A4AE5246 
X-CRM114-Status: UNSURE (   6.01  )
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

This series of patches adds related nodes that enable Radxa's M.2
E key Wi-Fi/BT combo module. I2S2 is enabled but not used in current
series, waiting for future patches to enable Bluetooth HFP over PCM.

Signed-off-by: Shengyu Qu <wiagn233@outlook.com>

Shengyu Qu (3):
  arm64: dts: rockchip: RK356x: Add I2S2 device node
  arm64: dts: rockchip: Add I2S2 node for RADXA Rock 3A
  arm64: dts: rockchip: Add nodes for SDIO/UART Wi-Fi/Bluetooth modules
    to Radxa Rock 3A

 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 74 +++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      | 22 ++++++
 2 files changed, 96 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
