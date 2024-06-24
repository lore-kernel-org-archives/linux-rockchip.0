Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58309C2BD05
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 08:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kE5V8b+BRAB5wJntqHDo1j4bS4cRe+BPO5joayh2hM=; b=y1LUQellS0bu65
	blZ62HnoqbzlH1jpA9C8Qz8tlBmm5lqFoe9HZtb+kJ10Wd0T+mrn++2SnSROZfQKNOgEVRwabXHtv
	NwwTODvl2oS7cMxkTKEv6tc7RSXgkeaYvbG5Px33HnZd9cXpjVzfeL94hThjElxVFtiqs1C72TJWA
	af+hItG4+jrZtOgcU8s7cInwIW1mP/FsjzyE6tUARxDZFCDNA83X2/kh48B38BMloOrJh+4Fv9j04
	fixSLEIg1k5VHnqgP5X/ZpVibZiTkqNJiqwK+n8AutPXjhshX1fTCi69Qjihtb3qARqFJogk+XTLY
	3+2+6MoF4CW155E2vIoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLf0U-0000000G2BT-1ghr;
	Mon, 24 Jun 2024 08:24:58 +0000
Received: from mail-tyzapc01on20701.outbound.protection.outlook.com ([2a01:111:f403:2011::701] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLf03-0000000G1fM-0HgW;
	Mon, 24 Jun 2024 08:24:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gn7YPeYUK5E4t1gT9XcA5PoygykNZTDqj6EMGj0ZnkAaRIKFnnzqNY1ar19G2IYHCCnercmdy8V8PgPbHO2uZEX65HSLMrREm3oLs8TbR1J5ArpkzlVJ0jgk6T4ilMkxrelnXcaYE7AmIhh8PbGaRO5irucMXphVklgcSUj13oHaKmVpU/Tlpky1S9HnAT1xro9WxW9krm7D4iA6fZtEjyMjjMH2YX+wYjAxsSnh9kaRXvW0TOIJnKT3QbH4Xow3wVtYV9F28mFGxr77H2c2Yt25DHUFC1IgT95xYzH2M7Emr+qS7LiwCZwcbD5NSP5BUgAUw0OAdymuAptEM6P6pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O9trhTuPRCq9gQO7cQvzRswHrFojwncCECe2MITkmqU=;
 b=GSZSUSDVPK6Si7cMQ4hcBMoX67nz2BQaaNSUpc8ajH5CXPo5tQay+ugRpirqHnhB4mHd9deqijOKaDpigZuXH5Rp71tNSEstRUUCf3H/UyZz6/zrt+ys2YFTXuBR/1cl7WWRekGM+fW8opGq5uloshEpWvatgQ1Aa2mhsNaZX0Gc598fwhZ3EBfScpBczadN6Pu1n/mgdQl8qPQirKTWZVhx9kBD6K4QeNjYohbcp4qmOdrIqc2u/dv23qe6gF853WGuf0eHBYxBwH3OXKwPNMx5K27RPzh2uHmqEFHJb/eIvuksBucyuUd5gAEKwhvYcu/FPTZkMhMqyUxUVIpUhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by OSQPR03MB8600.apcprd03.prod.outlook.com (2603:1096:604:290::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Mon, 24 Jun
 2024 08:24:21 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7698.024; Mon, 24 Jun 2024
 08:24:21 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: arend.vanspriel@broadcom.com
Cc: kvalo@kernel.org,
	duoming@zju.edu.cn,
	bhelgaas@google.com,
	minipli@grsecurity.net,
	linux-wireless@vger.kernel.org,
	brcm80211@lists.linux.dev,
	brcm80211-dev-list.pdl@broadcom.com,
	megi@xff.cz,
	robh@kernel.org,
	efectn@protonmail.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	nick@khadas.com,
	jagan@edgeble.ai,
	dsimic@manjaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jacobe Zang <jacobe.zang@wesion.com>
Subject: [PATCH v2 5/5] dt-bindings: net: wireless: brcm4329-fmac: add pci14e4,449d
Date: Mon, 24 Jun 2024 16:19:06 +0800
Message-Id: <20240624081906.1399447-6-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240624081906.1399447-1-jacobe.zang@wesion.com>
References: <20240624081906.1399447-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: SI1PR02CA0054.apcprd02.prod.outlook.com
 (2603:1096:4:1f5::13) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|OSQPR03MB8600:EE_
X-MS-Office365-Filtering-Correlation-Id: 946c6577-dc06-465d-b7c3-08dc94270c8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|52116011|7416011|376011|1800799021|38350700011;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?vBz2ntisGOAWjirzlr5/y2QXpRZsROKRE8hBkOFgn4Ieh7UmWmI+KWaWcqTR?=
 =?us-ascii?Q?ZMv5Ao+0XFuH2nWqfmEW6JdpEq5wQPFEI0q9ylvU0yMTNUjVdNUH/+WMV9H4?=
 =?us-ascii?Q?w0Na7VkCQBkY1m2vdw2Bwh8vgUxxDS/VRqV5cx9p8oCghO9Z81OHOsxBRCIr?=
 =?us-ascii?Q?njS5IXFf9SjAyGNyrMiMPU4oWsPOLnx8pcjT4pZ+e3pch7HI9YyAitHFsXD2?=
 =?us-ascii?Q?Z9yDCXScSrqfkrj+zrVr5kf3l9+Q7g3aybHol0k0nSVACmu+sFnZLPqGYHD2?=
 =?us-ascii?Q?0DIOR2MXG56epZHpGWdOkHFkVhTc/1b8fNIt7fM76TtOsxG3QvfcBUfDwcxk?=
 =?us-ascii?Q?pKX5Is+du84u2iAW4O5S+OjOxd7oN8r5NaE9qF0e5HrGQ8JFkW2wT0y90BQa?=
 =?us-ascii?Q?4/NfFEc/mD6qBy4Yx/r1mBEQSEj5iERFXynQoX1ZQ17iE62SdkePlGV8Pc4J?=
 =?us-ascii?Q?FicYODfBKJ4JhW7dJYfq/btR3p20veG4HVFEJEtc78Obx/lrv6miGOHYRN5d?=
 =?us-ascii?Q?nuSyV0KnZTridbwKlW9wdP0BSeqmOjG4VaKCyrBzbqPzMN9tloFjGqTxm6Hu?=
 =?us-ascii?Q?O3jb21rQaJCeWdgxWk6GFF81ar0FYH+6LpSbUb2RBO19uhqfr79v3q1YL3Ey?=
 =?us-ascii?Q?zO+d8Ch4MBr0xE8WUaUuya5noDh3laA/ZFH/rWI12kDya/fjaT9KWOdCRN1j?=
 =?us-ascii?Q?tJloafh0DZccBzllN/Z8TERttVi5dhrXSynTslnHNGhRazh+WoiLDswOwTy/?=
 =?us-ascii?Q?+VSvWfsmlUjQu2iZ5F6OfGVZTHKDp61EhWZTNuL24kzfNULTI4WBKdZcst13?=
 =?us-ascii?Q?unrkV+2sFNNQ4JYUYByrKJOB/gpfMpSGebMMRPpT+q9ooUhmsgw6IDEnFIsT?=
 =?us-ascii?Q?aRcUeThJGpBBH97Ugec5tnmL95oc5xkoz0zfuRWLlHBCi/1TujgsJK2w72HP?=
 =?us-ascii?Q?0bHVNCWu4JJJrGZzxG4/qVmOZNGLDlhRDnnc+BMO4uqA9pikyE6/vbRpY7/e?=
 =?us-ascii?Q?O/7Ik4EztYSKYZpGyZiS99dP8u6mfu43Rz/Udl54h3OpZIMXsC11tJucmczU?=
 =?us-ascii?Q?Pw9mCS6Ukfz1LWOPvtDTG5uJImGQsqbiizC+uY/r9kVuFSVi/XkDARBZQIcA?=
 =?us-ascii?Q?zS3ceKY4YbcFGonZJTHIC++wiQ4BUqj4ib6a4gqBSIWs185K247bjUBi+Vna?=
 =?us-ascii?Q?qxNWiP0oXBGF+xtrWnlWBCkg/VTT+qEANwtJhuPzGPCCjjcAUiabqsJvFYNL?=
 =?us-ascii?Q?K/ofOY0QLOxP0m9qwZwcytMYhLxJnvobRoMGzUOvwZO3HUAzDmz5ry2WQ1nz?=
 =?us-ascii?Q?y6d1dYM7lq9X+oWdySjJQ/ymtxpTY69vyzweiQ3vvH4hAk/0uNpBesfWKVif?=
 =?us-ascii?Q?pVvdRL0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(52116011)(7416011)(376011)(1800799021)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DPjrPaSn8WrhMjXngdzN/DoSff4XjSsfQJWEalvES8Le3fqsAabMjatzhtY1?=
 =?us-ascii?Q?XpnL4qU4r93D6CX9vlsH7fsLOKVXq+ILOo3RtI3JLOygAkj0q69iO7FhRaZj?=
 =?us-ascii?Q?cRzEfaUQEpFuLDhIHXOYzg1d9NQV5Fs4GrK4jDPMjdT6U5SMY+J0aLZoBQkx?=
 =?us-ascii?Q?YFxGun6dTTyR7KWfsqh6BuLr3oCrYm+hgU6iFBvp/x8zGLabpVKXHPmQRBJB?=
 =?us-ascii?Q?hooBkvv2bPl9Z90g9M6VEQUI8Hvs0yTNmvDjX12X4B3DEV5gTK2A1ue13boJ?=
 =?us-ascii?Q?T09HyouV8ue7q0NfBMNFxvgOPDxw/iksZGFQVcmUhP0bP/c/omrGlwMvkqja?=
 =?us-ascii?Q?GlMcTx7B46IYgreSKLXNJPMQNhQcSr+TPj4VBeT5gyhXbAKfJkHbnpBfc2qW?=
 =?us-ascii?Q?mPM9d3RvdCiaYDhfX6nxBN8i3PIa7Np3PtjpnYB/NOWBmtxcJor9fbODpJUD?=
 =?us-ascii?Q?wuOWeGixT4DDAJyC9DKq+z/f21v8RsVodeByaM3BzN7Km8yIBlG9AbSSaKvX?=
 =?us-ascii?Q?vyDw/VN1iwuhmczsnW3Ei+b7KqhABGlc+lr/HIaBfBmXg4oOhd4IaQ3xIqtA?=
 =?us-ascii?Q?JrysK76hORWpKI9alSsf39sfJJlpVTF0v7RQRtrcv9QMqtXB2nwkQhz/XEa2?=
 =?us-ascii?Q?K5w4pkEGNxOLg7zrGPSBXW2xTQCItqPUvcoqDTL8UDUOvQB81rJF/hvqVsRC?=
 =?us-ascii?Q?zayaCUbq3prIU8np7tYWXnOkK5UMs+ee6C6lhn2g2+M48wxTWsdt0DPNp4/H?=
 =?us-ascii?Q?cxW/o7xYrfOLkPN6VkY2Hw2FRmMUZOghk7PEpN886LrRAjlawdsSr5QwH351?=
 =?us-ascii?Q?0zT1j92hQ5b8wSZWRD7m4yEvLoPUngGUYyUlkJpHdzxCxaZ7hUHvxAf8n1C7?=
 =?us-ascii?Q?AKea0v2DkHUGvUBzYU293KYS+JKlOGjF5OTrQBEE/qbSllRr+otf91HF2j6K?=
 =?us-ascii?Q?OUxBwYOjUDqSMNz5pbseys6AUVCcV2dxB+Ta3PKkCnqyKlqcvbcdXQ8vRXXQ?=
 =?us-ascii?Q?tBnmHuus8HeFcptNkr4MKNVXqb4ppATgwTD3M0KgraYQ0yc4gK7pRps/9bLd?=
 =?us-ascii?Q?hb22Emv9c88sUfC8jpuL2KJq0RbZOdfnKsiPD+AQxgeDZmI+v2f8qYCfvZFE?=
 =?us-ascii?Q?OwbUazeIf6a5XELlGcpWMn9B/7ieFOAqqIHjNDFsHgr33qwf235Vg7KkI13+?=
 =?us-ascii?Q?cGALVv3c23v//bp9cjALosUVtcBVr9H9e5XKJQK6Bs94eX9jlM42EbpXSMX8?=
 =?us-ascii?Q?/bSOmlGJ3cYCgEiKi/HmAgx3MiQ0g/yJZeQ0d6mletN+p2LOJDV2svHGlb8K?=
 =?us-ascii?Q?AnYRGLYW3I41NZcNzhPFX3tYTsw5SAdMvEG/4NyoXUO5lYzK/WR0Qo2uC+wW?=
 =?us-ascii?Q?uLXzWWPK8xQx4PPVmw7TqiyPXGqZqG11/DxMuBX+uYFdvWsTuHVTBSiepWAW?=
 =?us-ascii?Q?r8inrlbjjf+QmD4IRmfJ47W+3svaSs9lBfNyu/ac2+Y8nVU7QV+LqvXezPp1?=
 =?us-ascii?Q?Lcc+im0wOiN0H7eGYZxdArAf3o99ibO4Z2EKyeGrM0J1ZPkqRnuuKTjh9aW3?=
 =?us-ascii?Q?akgkmSGBZcYGi8flXA9iwHMdnD5XicSC2X6hMHcb?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 946c6577-dc06-465d-b7c3-08dc94270c8c
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2024 08:24:21.6847
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Fo32Xp3omB9d/iP4xiFLiuA1Fs8jxRdncDGfe7T02oxqU/yd3kV8HjLIgcMwI7/pyFcqDyuIZ3d2SSpU9my9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSQPR03MB8600
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_012431_411682_810D8E49 
X-CRM114-Status: UNSURE (   6.72  )
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

AP6275P Wi-Fi module connected via the PCIe interface.

Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
---
 .../devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml      | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
index b9e39a62c3b32..fd22ade92210c 100644
--- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
@@ -53,6 +53,7 @@ properties:
           - pci14e4,4488  # BCM4377
           - pci14e4,4425  # BCM4378
           - pci14e4,4433  # BCM4387
+          - pci14e4,449d  # BCM4329
 
   reg:
     description: SDIO function number for the device (for most cases
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
