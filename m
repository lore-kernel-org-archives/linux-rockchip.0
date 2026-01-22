Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EF03C44536
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 08:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyMSgv1gQyiMdhFTPPw7BQS1/Ui5kOA9Gu7ebz/CDLQ=; b=tB7Ea7zzmD2dy3
	diymGKwsK9iefKN8YjUoK774J9UAZj/wEHA8I7+6JkKbz9XmJU2NyDgYll31gPlW2l/HJ1xipHFHU
	MjWb310ekceD1Pir/JcImjx5e+toBYeITq4PU0fofpnGMPEYVRg2d/T+HsgZ9g+SzAwL3wMVhcXjh
	3m5Be+AKt7pONhfr/C9GfKkrmtIlUqzhaocN5SBNmBepXkAepIwGpEaM4xnEHnSTyT9sO3ry3EcT4
	wnjn45wk+52HbIjKYybz5UtplW2vMYppNHOFMfvShF4I/rR6ZdirWPnr4N7QFzVI8KMAoT38cQE9Y
	tZje1HrqmHVL1VhrUCpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqNc-00000006g0z-1nmZ;
	Thu, 22 Jan 2026 08:49:28 +0000
Received: from mail-japanwestazon11021109.outbound.protection.outlook.com ([40.107.74.109] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viqNZ-00000006fz3-1dv1;
	Thu, 22 Jan 2026 08:49:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ejd12EKBvsjKdGaLy43eJ93eBAe87NQ24pKpSpHlMr+RHkz4RUeGKOrADlf0N15GXqlO6Xe+/w1d8IY3hOLecZQuaVz93MG1HrWTq/ogD5sWmZVHinOetp1wgWI8/jkCLM0n96YGW1yxoG757yVTEi+Et4q0JvhAm8S6DgZb3n4i6UYLRHp/xjPQCw1drs1PXpmS2Wxq+o4u3wQdImub2WeiO8KOQDeiJL7+FHvsWiahlBQGDtPCwcFToreJNqG4yfig8QC/NOze8RV+bqFH640QJBCX1wUHFu/PaYUnoIdSDpbtW/k5eVQy4Pcs7p53tRla5NJrg+MVdw9/0uQtmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oSOa7lwvYj/v8UXgWdEwkRWBMUl1vIwFnICJRAYmAgE=;
 b=j2uT1zJnZic6+FmZjH5eP4HVk6VhlGh59IOCg2QSuVr3Ms47EdH/yMNkSyZ9eBRag3ZwiHYP36pNXJtBjIPyhse3mYODjTKC1vapfcg+aTcr97TzlSZrekZpf7RgDDURab7ZEeqau9mnqOI1LDjHQ6h/J2ftQpvPTfR9VYZUSgeAHyN4x2v4yQICGjsh0MNgR8hmzJJQLT+/U4ENnIAEs1I9Edo5701mCFsFvg/RuwgAISz7j1T363QSu5JvuzJJkrnlrNG141m+bVBpQmcGmuIClkseyOR4O284SFBfHJ7LF4vSSKwCO5+Aa1RBRXB1SwNXCId3wPjL3FLRX8xXMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=valinux.co.jp; dmarc=pass action=none
 header.from=valinux.co.jp; dkim=pass header.d=valinux.co.jp; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=valinux.co.jp;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oSOa7lwvYj/v8UXgWdEwkRWBMUl1vIwFnICJRAYmAgE=;
 b=cJo54ECG9mj7zQCoDLOZzO6kapyy247Jug9fzCMxT5UNE3eOU95awDXmQjMVeUP7EsIYmw3YxS0POkeSXDoPGWGub/cIg2RB9R6tq2HFGrISH1fwEqanVtW8a6TPAUhQzi3LQL9WyUHm0gXETbq5+z4Qcs2ZHMroPLNxvF9C8iA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=valinux.co.jp;
Received: from TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM (2603:1096:405:38f::10)
 by OS9P286MB6581.JPNP286.PROD.OUTLOOK.COM (2603:1096:604:419::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.10; Thu, 22 Jan
 2026 08:49:18 +0000
Received: from TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2305:327c:28ec:9b32]) by TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM
 ([fe80::2305:327c:28ec:9b32%5]) with mapi id 15.20.9542.009; Thu, 22 Jan 2026
 08:49:18 +0000
From: Koichiro Den <den@valinux.co.jp>
To: jingoohan1@gmail.com,
	mani@kernel.org,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	robh@kernel.org,
	bhelgaas@google.com,
	cassel@kernel.org
Cc: vigneshr@ti.com,
	s-vadapalli@ti.com,
	hongxing.zhu@nxp.com,
	l.stach@pengutronix.de,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	minghuan.Lian@nxp.com,
	mingkai.hu@nxp.com,
	roy.zang@nxp.com,
	jesper.nilsson@axis.com,
	heiko@sntech.de,
	srikanth.thokala@intel.com,
	marek.vasut+renesas@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	christian.bruel@foss.st.com,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	thierry.reding@gmail.com,
	jonathanh@nvidia.com,
	hayashi.kunihiko@socionext.com,
	mhiramat@kernel.org,
	kishon@kernel.org,
	jirislaby@kernel.org,
	rongqianfeng@vivo.com,
	18255117159@163.com,
	shawn.lin@rock-chips.com,
	nicolas.frattaroli@collabora.com,
	linux.amoon@gmail.com,
	vidyas@nvidia.com,
	Frank.Li@nxp.com,
	linux-omap@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@axis.com,
	linux-rockchip@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org
Subject: [PATCH v9 1/5] PCI: endpoint: Add dynamic_inbound_mapping EPC feature
Date: Thu, 22 Jan 2026 17:49:05 +0900
Message-ID: <20260122084909.2390865-2-den@valinux.co.jp>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260122084909.2390865-1-den@valinux.co.jp>
References: <20260122084909.2390865-1-den@valinux.co.jp>
X-ClientProxiedBy: TYCP286CA0328.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3b7::17) To TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:38f::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TY7P286MB7722:EE_|OS9P286MB6581:EE_
X-MS-Office365-Filtering-Correlation-Id: eaff7ca9-9541-49b8-503b-08de599320d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|10070799003|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gciRnSpJ8l7j7izlH5aXezItivk9qWuDYHHqNxaA91YsnyEW7gAzaQAckF/s?=
 =?us-ascii?Q?bqnfRR5WAvtEl6/aB73O3ihD/zMUMayd21ltI95cidqajDFDyjKVqwK2MkE1?=
 =?us-ascii?Q?AvOMGznZTwWYiyOSIBTKGYZBprTrzST3DnW3FtAICTan12BE51UPAN+gybA9?=
 =?us-ascii?Q?Kk463X7EB7CZVBHAKHFNaPaYSlmpbbdpgief6INED+AbkUkt749ix3jha9te?=
 =?us-ascii?Q?Dgb3Mahb/56dRTr6a4PzWbChlpYGQ8mJYUlKgf2R/t+zBL9iOL7Klk519lRv?=
 =?us-ascii?Q?TB9tODx37NqT6A2DHrZsL5aH0iHzf0VJTFXYAXSp63J1HoL/hFEuUtC/8dmG?=
 =?us-ascii?Q?Xzsicl/bZs/K/sx8EezlM8tKQNo02UyY6TIE2iD2P037KarbwQk1EyIoMNeV?=
 =?us-ascii?Q?wX/7VjJa+0TbHJw2TK2M//jRCSzXmi0pq1x2KJbnAl+etsdB24FXvfrBn7ts?=
 =?us-ascii?Q?s+nKOTlMXoQreEwnU1n7mqmz8BNGCTy4lYfmL8gcLl576ZqH7bIXq/DvklHc?=
 =?us-ascii?Q?Kj64PZ3t0srj37TbmDSHHdmVewibLvcHhVqpEi1b6IE1Tdh4coiE13P0wL6o?=
 =?us-ascii?Q?IuqbaepHALDyP3BpwEYj5Jxap/Wgl/IWuWIVhhO4hNEPV4ahpXptDeYsKmx6?=
 =?us-ascii?Q?1ZMZhSoDB91rSXKI2i7uDyJOJtsnTBk3sCah6ltXi8bM53J54klTG5zrZgR+?=
 =?us-ascii?Q?D4W//oDnfiATZsgxssabiFJhYQ6mX9cLH12/hTd0lR/iKIone67yPjU7EBkS?=
 =?us-ascii?Q?Gj2Y+DZeqNfWkwZZ5ffo+OIgwDz8cyCwoNXrS4nJseV8jAEGZ4bFPxAN1CQU?=
 =?us-ascii?Q?cfuGgkws7+SpztslJmOzwmRUu2vlMWq9hPnvYOPU6xWxN+mNp2HXq2sE4ess?=
 =?us-ascii?Q?yQAY36Qmc3UO694kltYWxe2FrLA/ohnTL7vxOd6dCCXY2qD2E8q820D6+Hag?=
 =?us-ascii?Q?i3/n5nNpb79+AhstpdHQYW+U+QXn7TudUQix9tkw/CEZJr0sdESIf50zjPgQ?=
 =?us-ascii?Q?DsL1rFCzFfpVbJ8QUf0LtGhvG1uZzB6sh3Sbto3ZxRpjVhljeEChJly+fdGf?=
 =?us-ascii?Q?hOM3RhQIyw6+cmiRrB//9IdQfsUUGYeI2p77vxtyqm3p7bvkb3zFgOqJsM0o?=
 =?us-ascii?Q?X3HQe+bntSC8XZBsV5qdRIIZm0AxTJE3aqo3/zRm8hZza3uFDs5yF5eIOuSt?=
 =?us-ascii?Q?wSXRpXBB9czmqYGST6wofJSSZlkG3qzLGK/RU11ErKezKPI46h4bRRPZC+TF?=
 =?us-ascii?Q?O4y4uXyhVn+/2MfSCVsglRWGCs2pxZ3K8pOpjpSJhj3a1ZUfaK0/MOcd0Zxs?=
 =?us-ascii?Q?6Hkl6/1ydDXuPYCKYxeXPOKDbVXHTvmqolc2ahkmU2PcpxdP0/1UmwZQ/br2?=
 =?us-ascii?Q?XYrlINQ21p7K2mS3cuYl9Gk9RiezrlIZmi4mRC5Ql+pRm4THVsO2mcT4tsAN?=
 =?us-ascii?Q?0muT6i1XduRpZu665J4NYSXrMNlqTX7Gwz5d9RtpGqT62UgC5aS7cf0HvjT6?=
 =?us-ascii?Q?dbM1YyqOTxd/p1iwVD8h+rpT38Fx3vkAG8SziB4QssIMOJhj10zRgvTMKkFH?=
 =?us-ascii?Q?m01Iv0jK2LfKnttQHko=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(10070799003)(366016)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YlmzZa3c0H9Ekv6m6S4Tj37cCelUdToepAgzmSGqdjY2iv0guBNyCcHHAeXr?=
 =?us-ascii?Q?O6IJwSEHZjLaBFjm9TTedJG/Zz9rODcXPbAWWhyEGV0R1upCwRGCLUFXRAoq?=
 =?us-ascii?Q?44rPwuDYeFI3ZF597s6sBlGFNh2AOQKr3xe6tvqxTfHDkGO3uVdvAiVgqKqU?=
 =?us-ascii?Q?x6w70PMoH0Y55HYXBBrlI3XC9AcNAuuXT7sFKiyFSwiMOMLQrbP753YVwvVp?=
 =?us-ascii?Q?LXUf2XrJ+Ep8g0+F8mIu8fQ8mO937pQVj9X1c+8i0WAsl+sV85sOc4a6mDgB?=
 =?us-ascii?Q?HmzUUWH0P7Kxo/pMV2p+qlM2OdDb9WVtWwXW1iYWkrTDKeysIlxdYsBZxVJ0?=
 =?us-ascii?Q?UOF00Hzf6lJ56+rWYnE/KXKyUTyx/hqThbH+HZS4kbFXYSswhp2O5SZ6qqrB?=
 =?us-ascii?Q?ZC2jJh+qrrGDu++ZLwcaX1XPkRWp2ocNhSEMk33mNXdTbWYXtUVYHfwrWBAE?=
 =?us-ascii?Q?9n1HQXPK8Cq3buei5q9oPShvCdLJxLMxQ9Y+4enxo7BK7r9dgbMbxOhHY6Hp?=
 =?us-ascii?Q?juaGh4f6exRPS6VoQLg8atdhLEPjsoLAnGMbefjQieefOqm6SbQEL3iOphNu?=
 =?us-ascii?Q?wh8GSPo/PAHoIiwSd+SY1FOjzMKPH/Wd9dS7a2Ff3tFVq8HFhthqxo3FjGvZ?=
 =?us-ascii?Q?hSCClCnRecfWEGyCXMCEhugfIS8PYRUPteKFVhgClJxD0Jur2e+yFbvF9mYi?=
 =?us-ascii?Q?Rw1HKPD/2Ki5cqwvuT/y5iJYWDQM7U1+g2g/fL50tcfw0Yl0Qfli0xpN9hh8?=
 =?us-ascii?Q?NN1xvlWNlUA/wAy+2ue5AmzK8ccpLwXLhodcibQX5keuME2IU3MlwoMcyIpj?=
 =?us-ascii?Q?sUJ02lmt3QDu3McgDv0Fl9x+1B3xYOdLyVullc6UBgKI/cpdh2FUDYOxc8OM?=
 =?us-ascii?Q?m0TPRrI90e5ssFixoUnKKhbTBK4VdxxzDdjSvMaS/ipxsky1mSWW88MgBiaJ?=
 =?us-ascii?Q?trl3pBoqPvlwff/kL6TMUgPkpyv7AirtPFufdXggwJ9UDaYPPr3fQ8beNTR3?=
 =?us-ascii?Q?9fQ/GWWW9GhsqgJRnqu6bCZKtTfj8Q9S/bbTp6lylc3YQh8Si0EnEg+QhA8X?=
 =?us-ascii?Q?H/+femF4kXrS24RatAff1C8yUf1PmMOq85Wj1j8DWxYVYe+m+Prq3zXTsbTL?=
 =?us-ascii?Q?lkXk5pnwSsUUq20SwwGdgzYTU8yY4WPFlopKzIKtHPNYt0m5rhi0INlsUv4l?=
 =?us-ascii?Q?yIqHYYTOu/tWbuc/UZIw8fEjagutz86xJWwNpFcFVfcfbZBdoCpLy++PTGtS?=
 =?us-ascii?Q?rJXPYAIU5U9pIJJNCyY6Y0+oxXRgsk3fUkjrZLIW3UJPPu7QhZCgEG5BePhV?=
 =?us-ascii?Q?HHX+zwzSoDB16ma+NXjcQo2wwJVsTpdnALv/nhHRquP6aY0r5OuUWpvDhVAn?=
 =?us-ascii?Q?0ZBm3wr2V6/kfrdjh8d41uye4wxVuYxL6tt7hPZ/lwWeSxnkwN3TsULepi/E?=
 =?us-ascii?Q?rWCoP5B5fIEefdndW8kFsf33DTz98y24rESHWWuc8XXYTf5QVb1tnmtMHGG7?=
 =?us-ascii?Q?hIkwT55OiCtqxQdlG9iMpvdkS/JD1/+5MN7GXF6g9imPwJdfIeYMO7cXg8pn?=
 =?us-ascii?Q?ZzaOiknPueRo5kYbdgqc1tulszFzBHCvtgkhDJ2sth8q0YS8EiC9c/e2PMnL?=
 =?us-ascii?Q?psiHXg8/lMd1N7JevE86VCF+AeMx7mjwj8IsRlCr4Me9x2Sd+zKpccfIlIND?=
 =?us-ascii?Q?Ege5NDK+15Zj8k1sGFe0Hp1nT4p4W81jMZogvsZBVjyeiIxFnYiigD1/JOF2?=
 =?us-ascii?Q?vGPXeGuaSHUWOe/WtVqPAj/smpkFnel34EY52fl8xhlHhBKLJhX+?=
X-OriginatorOrg: valinux.co.jp
X-MS-Exchange-CrossTenant-Network-Message-Id: eaff7ca9-9541-49b8-503b-08de599320d8
X-MS-Exchange-CrossTenant-AuthSource: TY7P286MB7722.JPNP286.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 08:49:17.9861
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 7a57bee8-f73d-4c5f-a4f7-d72c91c8c111
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Kz7T3QV72p5KpcOaqtijPt+QLOqN/OWiEmZww3N5cyAhON/ZWnw9Ouxyi/8LZaLHfANJFagitQFyin4FihU/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS9P286MB6581
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_004925_436130_1D6EE471 
X-CRM114-Status: GOOD (  11.41  )
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

Introduce a new EPC feature bit (dynamic_inbound_mapping) that indicates
whether an Endpoint Controller can update the inbound address
translation for a BAR without requiring the EPF driver to clear/reset
the BAR first.

Endpoint Function drivers (e.g. vNTB) can use this information to decide
whether it really is safe to call pci_epc_set_bar() multiple times to
update inbound mappings for the BAR.

Suggested-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Niklas Cassel <cassel@kernel.org>
Reviewed-by: Frank Li <Frank.Li@nxp.com>
Signed-off-by: Koichiro Den <den@valinux.co.jp>
---
 include/linux/pci-epc.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 4286bfdbfdfa..4c8516756c56 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -223,6 +223,10 @@ struct pci_epc_bar_desc {
 /**
  * struct pci_epc_features - features supported by a EPC device per function
  * @linkup_notifier: indicate if the EPC device can notify EPF driver on link up
+ * @dynamic_inbound_mapping: indicate if the EPC device supports updating
+ *                           inbound mappings for an already configured BAR
+ *                           (i.e. allow calling pci_epc_set_bar() again
+ *                           without first calling pci_epc_clear_bar())
  * @msi_capable: indicate if the endpoint function has MSI capability
  * @msix_capable: indicate if the endpoint function has MSI-X capability
  * @intx_capable: indicate if the endpoint can raise INTx interrupts
@@ -231,6 +235,7 @@ struct pci_epc_bar_desc {
  */
 struct pci_epc_features {
 	unsigned int	linkup_notifier : 1;
+	unsigned int	dynamic_inbound_mapping : 1;
 	unsigned int	msi_capable : 1;
 	unsigned int	msix_capable : 1;
 	unsigned int	intx_capable : 1;
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
