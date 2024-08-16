Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBED2C52D7D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 01:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hnT5lTJFhvC4c+21foGnMkKEWw2c+3fg0cMwY9kxipE=; b=EfRFpY00O3RNDR
	9pNZ4PiOnKc6a6v8MraKU4Yl6xsV/cEi4X182B0MwgLdcn3x2bZ3GV08rKE3HFUxx/lu2xyjMciga
	wWke1DsJChV02GLjSJ+tgeY0DhGdnJzPxQYqJ5Cev4hj3hOjSNW1XyS9ey6/8CpDHy30KINOH3jKW
	AaoH2dcKgaMLlnoLV9or25qMHonQ6FxHVdH3YMGMiRKWbnCshtFzCbHEKzAb8yx+q1VYK0hQ4VkCr
	uwEn03zy7huxPYed0tZM+sOh7ayVyuTF+1dHtDburFTirvDXuv23FzgkSNJEqG+MgH+w6zLNpz/Xe
	7TBHuqoJPEApJBRekXWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sem9g-0000000BWKt-2IZq;
	Fri, 16 Aug 2024 01:53:28 +0000
Received: from mail-psaapc01on20703.outbound.protection.outlook.com ([2a01:111:f400:feae::703] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sem90-0000000BW9t-1jL1;
	Fri, 16 Aug 2024 01:52:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XEHF64JW06Muo8nLEtsI8hjpSjYUWsDp4NyS9sn30qM3w14t3IgnKdxMpd4R+pV4R0kKjJHFyP2oOQRwudbs65Am3GkOGixcskNuh0Je1gh7UGsn5eyIFWHukGr7Q1aE9V6GYcNSIy9qS0DtOEaJmBxd9BXW2VfLP7WnQw2nbNEENXjVp1VgQW+kGykVGgOg+QiMaktlN4W1ltx6Wv5lVWTARjnOLUs23+ThVsGb4vtniFAEmHywMNA5NTMUdMKHJroe/aI3gyD2x0t1rAiTfFrXSyFANI95AcqQv8KF+dv3oN/QzoAFhJ016VGW/vNEI0/8M8J2ZT0E2Y1jwZWNcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H7N8z2ja8eAzr8bMPp7gpd2C7+ntU45q2HnWrRt6ao4=;
 b=k5sIPakG0tfeatT8zz2NKbUUvYuieLYafGy73BagV5Km6m451f1y+IlIhOU7b1lAKrdZKp6mbqoG9STpZEwr91q/M8mDX5iKVxL0pDXu45sb1OjXZb+7ODSsNJufaGuVZnbXgUXkoNRz4nAHuNy98yDN/yzHqQyS54QWE6p6ivHauXzFaHzOMjNsG+a6a6xHyTwrv8uRH/gClK6UHqDN34uEoKhkUma0f0VKwKwkygdCEtAWIQ9DO8Y0qweVw8fAYJBWkfO9ZTocDkrrLBPoXCdYkoa/VMXp2kJVR3U02RM6b4ektbtv4gLMX1hynQdchE1nsQBm2w3H9BQnbYfQgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEYPR03MB7985.apcprd03.prod.outlook.com (2603:1096:101:168::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.19; Fri, 16 Aug
 2024 01:52:26 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%4]) with mapi id 15.20.7875.016; Fri, 16 Aug 2024
 01:52:25 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org
Cc: efectn@protonmail.com,
	dsimic@manjaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jacobe Zang <jacobe.zang@wesion.com>
Subject: [PATCH v11 0/1] arm64: dts: rockchip: Add AP6275P wireless support to Khadas Edge 2
Date: Fri, 16 Aug 2024 09:52:13 +0800
Message-Id: <20240816015214.1271162-1-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SI2P153CA0034.APCP153.PROD.OUTLOOK.COM
 (2603:1096:4:190::17) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|SEYPR03MB7985:EE_
X-MS-Office365-Filtering-Correlation-Id: 28be1412-e64d-4c80-4e3d-08dcbd9613ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|52116014|366016|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?6T+9vOKNWVTiPFbadi208GlfCn9/3pxMZKaxvwEmLTyYTteI6agYuxDDGzhH?=
 =?us-ascii?Q?SVvujvNl7hiyXpWau1kGxGJrOfgY/uhoXfLskqTii/sxY6I9JEgBHMrlVzs7?=
 =?us-ascii?Q?OHzbx6mS38bQUfdnWMPSTxGlUipjyy+5eNJxuYpX3OiuIgFbVibdeVhHPRm8?=
 =?us-ascii?Q?p4d84T66pqHx+EDgrAEQMmsyKosSglJs/JKz6EfexppRqd8KpqI52LonMi8H?=
 =?us-ascii?Q?vm8ICknJwvWqlAQNuxVWXaH2fSOUYXRh03+rJcVXX2V5X3ywA1/QzXzbkdwf?=
 =?us-ascii?Q?iGACn4MupigeSyOAOjoMFKPsVQIQPHgoxg17b9ZgLhUkBLc32FDgIr8EJEaD?=
 =?us-ascii?Q?MaYNzXthapXRYdMEBZps4AjeL3KhCbi2gmaAXEwtuskREz224py5cgvRZ2vK?=
 =?us-ascii?Q?MS41zHaFEgYjt1WI2seDI8+W38MYeEAxOne3bp8Ra+HsJAHYCG2nzN31jvZK?=
 =?us-ascii?Q?0ebaDcPlDzn3GQsTkwA5H+7NuSClftfC4KJ3JLIKDumpiUwrQdvP18qryCQT?=
 =?us-ascii?Q?fXAS9ENErSmMFvEzc4kjhGQpaXAXAEMoA/pKX/+ffRR6J7lEyhtW3Degpyh3?=
 =?us-ascii?Q?m7bLzFfIW7nBiFNhHk9dS+U4bUxTAezpek63RpywIjqFIT9TroUMnx1WwpSn?=
 =?us-ascii?Q?BsElchHTz8U6ouMevj/I3CBiWOqdiZFbEw9k+Ks1AtOf8Rdjm2Q8twMvl39z?=
 =?us-ascii?Q?kh5NtZ3tqt+W7LWvFwuWw1jq87BRu4ZJ6/GDQqU0GuVPtudWi5/x3SPllkuz?=
 =?us-ascii?Q?pmhoFjdAVmijn68JB0qpqslYYL4Pdnz8RSLYZKyI87JEm8z/Z7F5RRVZMP0P?=
 =?us-ascii?Q?i5QbeU43qR2ZpETxQV80GNNLchIBYFXXn2/MJ0FQIZtQZQ6N2q2gmlox1cwF?=
 =?us-ascii?Q?ZTDOwW2Hbeaa5ZF4TXoWc3uIpnUFmU4OlhjpjZgYPDhL+y05oMp5Oh/rrRgN?=
 =?us-ascii?Q?VV+zB9lky+jEdct8VMdtoDnUswHClgwC8n60fo2x0gm8vWX/Rvc1c3oUq6m/?=
 =?us-ascii?Q?gsl+LFpn+npcD9N+VgwRapoZG5Qhr4j5GHP1Mrwvml94kPLeN5x3WxmKI4De?=
 =?us-ascii?Q?ih9kGmzgU1xqqbve5jQz4E4bRB7b1Z+8YTVEZjDFlKMkisyVsdveu6qvIJdA?=
 =?us-ascii?Q?Xnh2V1oukk7ST/MvspRd/0qpSRFwH8wF3GD6HvyxApa3rzlIjmOSAnyaZqUh?=
 =?us-ascii?Q?XEK4AKjhTq1SkIn+NkBILtVwtRG/+dgoOT4pcyNGBAV5Wd/itfUSP8mr3qqU?=
 =?us-ascii?Q?gwJ+rROGQNNGdatlUL7qotmwEi86mp7iMft9dd0dGcVbHmozjMqpv3V5EUQ4?=
 =?us-ascii?Q?BKjcOJZfjMobV6izrM3iBaLVaSnMQvF5BcHuvErvLnfs9wKeYJ6Rl+pnHbRK?=
 =?us-ascii?Q?FhxXy9etVb9gyp4P1A1de1fq54YqbRzOoLdch33mHB0O/jvtKQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(7416014)(52116014)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y9Ed5TH2SB0H5VXi6I2bRYAFOXifXAc3+ypX2MYNI94Lzw7ITfTtAywtqjf6?=
 =?us-ascii?Q?oL2K3z10sZ9/RoglImGzI80po40RzLqidWZpgJDcDPjKHWv7sB5Jq2C8ENxe?=
 =?us-ascii?Q?UBJoUJLugI68hTjmTSi8yKNpzdLPqqFPJwbMiLYNgqXq6Eb9OT2p+H1Z2jmc?=
 =?us-ascii?Q?mTzyChkFO7n9TVl7TyORIrWO3QOfJmHWEFuNrXmyRRbcP5aXAZQCz7Ay98jG?=
 =?us-ascii?Q?CWUAe4V3MkzpR1d/q/U7AfZUXfYJaixYhirdfTOoec5DRV0pSIhUvhm5EUrt?=
 =?us-ascii?Q?vdk8hDb3OiQYMLulek8gZExRv8R5bAj1AanXe3FlGLyXoF3KWiApkPzoiQXU?=
 =?us-ascii?Q?1Vl818jRkuRR0QDjF9RoZzHo+qT2BK0f2UYowJScipPQ3VC8aziO2eB8P3GD?=
 =?us-ascii?Q?bMlzZcT0hE3A9jhqCPx6O7hCEurp4urAQ0/hJAjeI2GlZHufvgr4Fl41rFTT?=
 =?us-ascii?Q?nhd9JMWPhuaNj7Rlyo8IEM1A/ZOTBhyctj6bS5c8rVfxRJfoHXrbW0unuWbQ?=
 =?us-ascii?Q?52JzE7dMXdBFoKXeFxm6bSu5JPOwp5vWUtJKA1EJtyZxZuj/CL7aBQTC1QHf?=
 =?us-ascii?Q?8c74vfrtxjPmwFw9dE9YgKDoG5WTP5dvSj7mJtyViQmVdBQeu7T813mxBZXl?=
 =?us-ascii?Q?0jZQ7pJBhGPyR9zH5FJks7ySMeOiisNrnFg1mLE0tvec5BX0FMaClchbeI6o?=
 =?us-ascii?Q?xZvr8qwtqKf17E06RzW3cHsmR5gFczWPdVI4D4XI2prcC8ciHWg6/4OgOl/+?=
 =?us-ascii?Q?8YpP5HU9A3v3i3Z3etaVMBGFdqvPlHFgPP0WXst6fQkiCL3T0h2y6zJwlqe/?=
 =?us-ascii?Q?avQlrWxAXRb67kkY3czmRdfPD4SEKbxWe9aEDdccUIpyPXiriHwYFHOfUa9b?=
 =?us-ascii?Q?gdyk7w5DbdJU7Q967WDCgMm8dZihNMIsnFrQv2yidwW92mikaxUrPs3q2hzq?=
 =?us-ascii?Q?G2X298W8H1gD54WK4uR9xJGsXXQii+ohswLsBD7xHbctj11skpP3kltQ9c9o?=
 =?us-ascii?Q?rpNiZZTT0QtF4m3KRxdHKs8+R+x8u4JW5/mkxruK25G8pCHVplI87aicQbl+?=
 =?us-ascii?Q?sM34AvjluJY10D5fecnjBPZ2L9VTOPmatL8q/6Sbgo4LEuHJ7Nfe4Cn0B/bO?=
 =?us-ascii?Q?J+JUHWXJnGTTOhfy/OobwK8xdPcJ20cTtAQZ65iACDj8vBtaNb4uqzAnCsBs?=
 =?us-ascii?Q?9ZmVNYdlHlTDefcU5xmNL+4PHly7His2azdqGJ7nYyoKJpW216HgDdaicolS?=
 =?us-ascii?Q?pnwoNKnVEvbHQn46lm0tQWPKRGuK0C6x569ZMCfpUpACGUO5DeSDQ53DIqit?=
 =?us-ascii?Q?7WlP+1GUUMRr3doc+2RVcI2Vg9bETNrPC5lKKvaQdlQjI+zRfC4wKTE1cn4R?=
 =?us-ascii?Q?dsRxzVyZUM9HxG7ccGDvrBErYWetX9LT75vTMx8a/uWgbu+4mXolZbgIIxEe?=
 =?us-ascii?Q?yH1c1zTG9l2XnUCW/APNQixBQwV9RR4F8xDe8LN5vTF3a7T02WnS3xJPf2Ix?=
 =?us-ascii?Q?LnDJouD7tbDB5wQ6zIx8OBRFEUBRqfwF1hgi6aS5sUREqAFYrq3xV/Cq4gvT?=
 =?us-ascii?Q?ipeH73/DHSgBH8cieWx8Exki/9+x+hJBYqwSM1Xi?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28be1412-e64d-4c80-4e3d-08dcbd9613ee
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2024 01:52:25.8558
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ack1dHyIBDGvvGT0WIl7ll80prsBw1m+aiW73T9ByAT1EeuEBfDg1CGQ0B/SmXr0TN7oHvqZ6XXydlSwu2izug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7985
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_185246_461145_0621D23C 
X-CRM114-Status: GOOD (  10.59  )
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

Khadas Edge2 uses the PCI-e Ampak AP6275P 2T2R Wi-Fi 6 module. The
pcie@0 node can be used as Bridge1, so the wifi@0 node is used as a
device under the Bridge1.

Changes in v11:
 - Split DTS and submit separately

 - Link to v10: https://lore.kernel.org/all/20240813082007.2625841-1-jacobe.zang@wesion.com/

Changes in v10:
 - Use ret instead unused probe_attach_result in sdio.c 

 - Link to v9: https://lore.kernel.org/all/20240810035141.439024-1-jacobe.zang@wesion.com/

Changes in v9:
 - Add return -ENODEV error pointer from brcmf_sdio_probe as the default for the fail path
 - Add if statement for brcmf_of_probe in common.c
 - Retain modifications to of.c other than the return values

 - Link to v8: https://lore.kernel.org/all/20240805073425.3492078-1-jacobe.zang@wesion.com/

Changes in v8:
 - Add appropriate errno's for return values that will be
    send to bus when error occurred.
 
 - Link to v7: https://lore.kernel.org/all/20240802025715.2360456-1-jacobe.zang@wesion.com/

Changes in v7:
 - Change brcmf_of_probe prototypes from void to int, add appropriate errno's for return
    value, move clock check to the end of brcmf_of_probe
 - Add "brcm,bcm4329-fmac" compatible for wifi node

 - Link to v6: https://lore.kernel.org/all/20240731061132.703368-1-jacobe.zang@wesion.com/

Changes in v6:
 - Move "brcm,bcm4329-fmac" check to the top of brcmf_of_probe in of.c
 - Add return if clk didn't set in DTS

 -Link to v5: https://lore.kernel.org/all/20240730033053.4092132-1-jacobe.zang@wesion.com/

Changes in v5:
 - Add more commit message to the clock in bindings
 - Use IS_ERR_OR_NULL as a judgment condition of clk

 - Link to v4: https://lore.kernel.org/all/20240729070102.3770318-1-jacobe.zang@wesion.com/

Changes in v4:
 - Change clock description in dt-bindings
 - Move enable clk from pcie.c to of.c
 - Add compatible for wifi node in DTS
 - Add random seed flag for firmware download

 - Link to v3: https://lore.kernel.org/all/20240630073605.2164346-1-jacobe.zang@wesion.com/

Changes in v3:
 - Dropped redundant parts in dt-bindings.
 - Change driver patch title prefix as 'wifi: brcmfmac:'.
 - Change DTS Wi-Fi node clock-name as 'lpo'.
 
 - Link to v2: https://lore.kernel.org/all/20240624081906.1399447-1-jacobe.zang@wesion.com/

Changes in v2:
 - Add SoB tags for original developer.
 - Add dt-bindings for pci14e4,449d and clocks.
 - Replace dev_info to brcmf_dbg in pcie.c

 - Link to v1: https://lore.kernel.org/all/20240620020015.4021696-1-jacobe.zang@wesion.com/

Jacobe Zang (1):
  arm64: dts: rockchip: Add AP6275P wireless support to Khadas Edge 2

 .../boot/dts/rockchip/rk3588s-khadas-edge2.dts   | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
