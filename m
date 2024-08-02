Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D59DC3DA64
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 02:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gPaBc0Up/Ek4b5vP9WXXCcG7BshAwdrwhOtDEld+uYI=; b=Xa+MjcEL2/NpRa
	X9qX6AwAnLRaavvSYpZ2RCCHCTbSfsy42z3NJvaelcFwMk/0g33ee6iDKUVYqcd7hWwo8hgwnOYBR
	iBKK+jILjyhUf+E6pgewtqM8n3mSl6FHuKwfFoWE6QxQN26ziqHIqVheOIkkBm6JP1u7RF2jO/jAb
	Zw0jTxUv+mnJR+0nzV3uIk5qodW/IKWAI9GP7OGtM1otaLZ2AuexM9r0cUWfkYUpKdUXpmmONL4DN
	KKyoRPaQK86a64kRR/HbZhKKmUzPp0EpzWOaT9wakmyr8EL+tFTrxdpIk7u4IAe+ipqDgdFHcPRQM
	eIRSp65Dks57J/yMxQEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZiVh-00000007QlC-10wM;
	Fri, 02 Aug 2024 02:59:17 +0000
Received: from mail-sgaapc01on20717.outbound.protection.outlook.com ([2a01:111:f400:feab::717] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZiUL-00000007QEu-0nT7;
	Fri, 02 Aug 2024 02:57:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XXgMtcavp8MnxqujSpC9y3gNZ71v7Xt0nrVDrRCkxDVb0qstI2mRixkPaFZaFRwzgPziV7gt0n6D3C5jGmlRWMBz8BERBAUBpM0m9D1IEiYdPX8W+Qw0NBgqc4p3xtQXoAYAqfMT+vYm75ByKC0SXXyblJxX63KEOTQsXsVvOK9ZN5522YHtvKn86Dl5ADLyWk762tsSSrfn+rFTnIyrbUVisfVRxyep1h5qXQkAcOOKTCDCDx8NUTDSQQ8sIMz8ODwOo14acPu391Mltwx29ZYiX3Zqu3Imj0bkMxUaeXS9zwQZqPjtycPW9SxtnYx8POZtscBN/wwRp0OYRP3uLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2TnsJEftwBYRJiEemJReSfUR5plTkSfIwo0syi9FhOw=;
 b=Shh0JZlV9OHyBtMEYQ4NsvwVLtFp0M2CGyQCWmgGbuyzl73+10hoNtHbh63lqCaGLNXv0/20/EGkFQvFWaZr0ucXX75q/pns6l939Dt/27W1orYnAnzfSvylb1YJ+B8qco4pQwh89OPeuOtx2nQLFq+1MEUkAV2Q7L+soHQ9U4kOXO4MnsMNk127yp8o28v4XZBNx4/i7mWWnMS3KKE8PKE2UuR6A6MrRJvuE5lUSDBeDrdNDL9JddkjEjSns4tMiGHcWoLWTd57/mSsgpp6a90lPjtPia5h8APJTUT1l04wcnWsFbQjKeHSVh+Fy0ZctI27dBogoIaK/irTn+NDSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEYPR03MB7120.apcprd03.prod.outlook.com (2603:1096:101:d5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.23; Fri, 2 Aug
 2024 02:57:41 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7828.016; Fri, 2 Aug 2024
 02:57:41 +0000
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
Subject: [PATCH v7 3/5] arm64: dts: rockchip: Add AP6275P wireless support to Khadas Edge 2
Date: Fri,  2 Aug 2024 10:57:13 +0800
Message-Id: <20240802025715.2360456-4-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240802025715.2360456-1-jacobe.zang@wesion.com>
References: <20240802025715.2360456-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: SG2PR04CA0211.apcprd04.prod.outlook.com
 (2603:1096:4:187::19) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|SEYPR03MB7120:EE_
X-MS-Office365-Filtering-Correlation-Id: 47c3d5e5-0b2b-436f-b128-08dcb29edfd0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|7416014|52116014|1800799024|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7HuVLuBoWFxcEtQhWNlyeWVpT81UPEwLrWWPvoowZyOXLp68234U1UVAbBJK?=
 =?us-ascii?Q?s0y/p2xcuJEiouT4G74sYFy42PQf670oBxgQXTTHrdPf+TugPbfQvndRcPQq?=
 =?us-ascii?Q?KrTbw623t7HQK9PD1c9PHyfRQOz+yWxYlut2wA0WGGdUtYNC4pIpEkPfng4d?=
 =?us-ascii?Q?UI3YKAA1WwPZkEvpmff0o4mNJvfWNvPAaOh9rc07B+dSpXo+yGh9jBhkCqhY?=
 =?us-ascii?Q?tYm2hOodEX3fMP7kgzcR8iA0kuqRDlYsqnxWXvSQ0ZrRDWyY++Z0yq0NJDzh?=
 =?us-ascii?Q?bfdKO5tXwOf9bePV0BXhUE0gy4hS+T8zPQq0wRK3S+uCem9kgDZAFP9oqNsQ?=
 =?us-ascii?Q?KVItGzEOjZpQ4fIrBoEkDv3wsFMnPYagqwBwK4HEDb+4XxVa2bv9wlhUg5dT?=
 =?us-ascii?Q?qNNlbNQfjqpYxAge17gf9cMwqaCTAnkXHzyyXtZbDdxEe3seXCKnIlTDFjjf?=
 =?us-ascii?Q?J9xca51Sy4YngM6NyuaXxoV/4zzTIdKGP1eKT7p0dIjyPHOIeJAG36qezWDq?=
 =?us-ascii?Q?oJzJbmNsffCkRmsetnF2Z6vHbE5icyLtm0XGJBbVGImOoWVNq76pKIBdGjd+?=
 =?us-ascii?Q?qE5vvrf6IUEF8k2JakdGVdlyc+g/hwRmrDZj1wln8+u9tMsDbqKB1KgiJhhW?=
 =?us-ascii?Q?Ss0+QqbmPxftFvrX90R7MGfMgCokbueGzgQVEeJxYp+d5tzLHssJzFiSgHkC?=
 =?us-ascii?Q?KgHU8Kq4qBTlW00wQgB4GHAwJDV/D660rSGHLM79FcXxsE317Y8PYjIc7xuR?=
 =?us-ascii?Q?MheI/HJBwRXvQtGClkPe9VcqU5dliVSP+GdsQrfv4EL/BEyaNott3Sd+WaZz?=
 =?us-ascii?Q?Q712M2YN2pynzmDMMGcbJGtHic3qtK9STR6w8lV2b3nbFS+yLP6vYiBmO+GZ?=
 =?us-ascii?Q?mXUdnld1fjcPj/CY7Ast90g7BVqFLPAVZBavPxHGfBrZB9XpuutU1JscAmNJ?=
 =?us-ascii?Q?0bnM3MDnHKpD3hvGjVLalR/nOEip9my6ru4SvgE/rjT09FgUce3Y0HX1CL9q?=
 =?us-ascii?Q?BXi2dsLURTutEi3aenkvJoRfDNYhA3G/ME5XKP7nm1RWykk+q4wWPBPmFsMz?=
 =?us-ascii?Q?ZhoG/lnzzKPyZlKTKAZ8MMQZdtlsZ8OIoqGBd4njpl9QCshsom0EwL20sL25?=
 =?us-ascii?Q?HnSbmCQtkGtq1YIkEde2bDQkfdZKa8mHF4ELl47my+RwPLdf8DHtSvnXpa+z?=
 =?us-ascii?Q?sWj6NLzSvcDxc2RSSar8S5vNG+t+bMtEHbDMtblo15o+Z7Pyi+G1wfLN1ulR?=
 =?us-ascii?Q?MUV+Q+Ctf1ybRjTBRuE1TSN7YqpNd8hrHwHn7wY7lBaPIPAoYTaeQndGIHyD?=
 =?us-ascii?Q?T1vGYlLaDadSUjssQsQp4lnQjzvaC7O5+Ih6GMqUd7UZFtZPcWNHEAOUv+7o?=
 =?us-ascii?Q?NdGvPa7PdWjxERcWVGL+V1/B+ZOz1NwC/GScAPcvE+eYvVAQ0mqs0fRT3WKG?=
 =?us-ascii?Q?rXXHmZw2IuI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(7416014)(52116014)(1800799024)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mPVkRU1bYPiiAZ3ngw3MCUsSw3r6IQxl8tFSdxXXoiimblhccD2a8jgNnDBZ?=
 =?us-ascii?Q?VnWOCUJwliiUm8mdQzVcabUVWx/oljb8bO+70RYHeDJkaKpr5o0tkatSZl1q?=
 =?us-ascii?Q?jp2FUuAW2lhgeJ94u98RRej8drQVAs766ndon3BrPXVdqDLUx4Gvj75IP071?=
 =?us-ascii?Q?9YBuXhDMukIFSnM1nA+rItWxTQPFAl70zyQusSzDgPSRim3ZM38tRRbMzjFi?=
 =?us-ascii?Q?zBPL7fDwpf9lP2t8RHnXYSwIujpsu0q4kqYTZ4ADcvYTywQuXnvwSG6MO3Xj?=
 =?us-ascii?Q?94TpmDbsZrpWoTGbw5+qfifxmvhEsq5Hdh7xSVPVEi89yDoJYoFUfun1wHIK?=
 =?us-ascii?Q?mt4IXtNeonWvPgTrCH8E7RU+RSZ/mUo2B0GXLB/uC3YRReLi1T++nCBUT3+2?=
 =?us-ascii?Q?ln9zfhEJQ5vbPs79l7b7O+pH/TkL7xM5rLCQSO3Q++S02HAecbLWzGwl3jC3?=
 =?us-ascii?Q?2QQQ8Br6QcF7yg1988SHApgHj+uZwGHgQgDtl78+hnk+pzS8cHWJAmdRqCfP?=
 =?us-ascii?Q?GJcyYTXZ2/L2fR+h9WaYxT0Wghn+037fOQ9Co+jEpMXOpD+yIAUprmLvfw3p?=
 =?us-ascii?Q?o8p2H9dWqKxiqQRP+NGoHngLf8tOVTZUlWUEaUEyAkKqERJDVRTwxfERSWwm?=
 =?us-ascii?Q?+umOQHth0OljbIvUlGBV7Mo9+g9AyBNjlFr+hEh6RNABT1Ua0PpyE0qQn0WB?=
 =?us-ascii?Q?CaCxXpZO22LkmNDHq7y9JpXeFWB7sIBIi46wUG7jklbXpbbjfADAUfa0MjwN?=
 =?us-ascii?Q?wlq3T+5e9O4eG1/q5HCSu1SCk5FL1RNC/YI64P8wYI9yMRJptsz0qxWbttiX?=
 =?us-ascii?Q?iPZWtgGIaz0xIHHO6rlY2gqSYu2ocq35ge5jzzoGpqUs2fDJfFFyQPm4tYdG?=
 =?us-ascii?Q?Q3bI4OmwzTZW6xTyYrONzbS2hu4EM0D50nqTSZ5CPvD+WZ1/XNkbYV+jvmux?=
 =?us-ascii?Q?ajVYiS3lwiMwB3085rjRfnEw539Ffs+LcI4dJeCAmWUC6ILZM6oJtTmc/h9M?=
 =?us-ascii?Q?mSqSZtt3+cL1v5REt3fNK7zBwOxTPfzVCEuJG5NlndHrTnjfXxyXjES8Y6lE?=
 =?us-ascii?Q?2YhWhhC+l4KTSgY++Y+Eb27iTlRIpHva9SyIZ3k0sOo99yU4FirDfN+WBTKs?=
 =?us-ascii?Q?3DLfCa4qOvVTyXH2kLiWheW4Rht1YahIDHsYhX6CtAQWIlZaUHL/0L58U4JI?=
 =?us-ascii?Q?nxPcVy/4KNUwQC7wEIrWD0TPUBvRlc16kjDw1KvwvS6CBrl+O4WpnonTP8pk?=
 =?us-ascii?Q?z7sgs6fFSHdTD7y5S1QKXTwfIJo8idEcBoB5YneMsqfEB5sqpnSMxPtuOnbT?=
 =?us-ascii?Q?Q+lQzMRUeAj61XdZLC7Z/Xd0237iA9B6VdFPKHWaMdHRBbpHYsyj1UpTEwPA?=
 =?us-ascii?Q?7L5/V9m/zTkMWNjpHG3RBmDePh4B+gla6tFMK7WFOHFnyKBcnqp4eIZNtUaB?=
 =?us-ascii?Q?EPPRSrCwPgM8/eTJ7D9pRDmCV78UAjpcdpmXOL149Tp6BUApBkGl5eqSet7U?=
 =?us-ascii?Q?i1KQOIqawuEIBDpvfc3Z8TCk4c8U5wifC3taSsdx2TG0F92yAempeoCZM7CS?=
 =?us-ascii?Q?oT3N/iNyQaHcQ+GCLTrZp9dM4SVBqGa+Nj8btSau?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47c3d5e5-0b2b-436f-b128-08dcb29edfd0
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2024 02:57:41.1349
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EvgwC8OGTeYSIVuicZo56wY3hPWwzpTLS+aFujSpANCAw2CMtEzWFkCjEjMojrfwu9QhjWRoLxEh2CisyxdG4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_195753_299524_10A2C6FC 
X-CRM114-Status: UNSURE (   9.04  )
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

Khadas Edge2 uses the PCI-e Ampak AP6275P 2T2R Wi-Fi 6 module. The
pcie@0 node can be used as Bridge1, so the wifi@0 node is used as a
device under the Bridge1.

Co-developed-by: Muhammed Efe Cetin <efectn@protonmail.com>
Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
Change-Id: Id9ec7338a8e86ca8a404058d29af50dbc00df3b1
---
 .../boot/dts/rockchip/rk3588s-khadas-edge2.dts   | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index dbddfc3bb4641..a3361ca25867d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -283,6 +283,22 @@ &pcie2x1l2 {
 	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie_wl>;
 	status = "okay";
+
+	pcie@0,0 {
+		reg = <0x400000 0 0 0 0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+		device_type = "pci";
+		bus-range = <0x40 0x4f>;
+
+		wifi: wifi@0,0 {
+			compatible = "brcm,bcm4329-fmac", "pci14e4,449d";
+			reg = <0x410000 0 0 0 0>;
+			clocks = <&hym8563>;
+			clock-names = "lpo";
+		};
+	};
 };
 
 &pwm11 {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
