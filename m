Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79F63C27C6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 07:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8COEJ23E2brivUg5h7rtg6Sq3p+LRmHDm6EQvNrc34=; b=vMDPGNHZpo5wmk
	XA6Z2HD6ksgZh/UeXUxT3n7oVeVzr+B9WHwDy77h0gCmi/YhtBmnOzdVosePYI4h26KXrFx8fb54d
	4WLdxXWRFJXWcpqkX0Gfg1S5aIWcjsAzVSS3GIDbeAp5f09RDVUSeUhqGGgxhCNBCntlbXVy2UL1H
	ZwT0UvOQJx8443I42toY89/Kv2oHcrvejMJ4bBVWy/sWpIwyi0wcJdVK1Nc784McQWdX+kt7FUQeP
	Ocuebn6MT3szKEtdmx4793kCmifPWjXY3MZdmdj0tUeQPXXvIHmB34wNfcwUa3Yo77lHmYcGLTLrX
	cF2SYA7pXChEM9iEoAjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ6XT-00000009YoQ-3w6B;
	Mon, 17 Jun 2024 07:12:27 +0000
Received: from mail-tyzapc01on20701.outbound.protection.outlook.com ([2a01:111:f403:2011::701] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ6Ws-00000009YN5-2kCB;
	Mon, 17 Jun 2024 07:11:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oVcjF88zYewM/N25kisMM6wKYGcHr+/0hH4zopTvMaOdkMnR/rgpIVzeyhGGPUTWse+ZJsxtHj148dWU4iv3qcP6ZVSgg8ndiJ0k4JO2Yp7I3NQzZ6ERYUOUa9/dKJRmfHNvFdoLOTf91y7ovntMTlEUr8C8HsCAG46zC/4bHN7lfN2zlYGDFQAN2veeovuEoe1jagAilOkS+2+3q3nu230Dt/hjccA8iUpD1KpXTbx/VhBDoYEOs4wpXAz/sLwFB5hJm7hKUFDryCM6+2qQRC5r6rq8NARzA1GJ4UUFvFf+x4gE1rC9ok81/SeMh2CzVwSDhy5xzFAIx3sy5TZH3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zpovuagVKrldqpdu9kaWlX4cHVi+n3y77eRANlmMoRc=;
 b=iOSk3QUYHmJWoqobiSs2Vs2GY6rT7FECugitO9Dh+GiXwT/zmAL1wsmMDA551CwVCH6uiyk3yKwsTB84gcvuzYRoJP7tVNECuVE/ZBLsct1le2hH1Pagn+HbLh5qYPE7O89GoWiZEjLqvvaJBaZweuB1hft8Wjo15KktG2bFZm+tp7kqLXgjFp8o21VrmMNNbqYTx7/c9plzMwk7WmFipVbWDSVjc9H8/uSbCkuSbH8hXAU5ss45IBoH4t4sbp5muiVs79mWu4j3U5v9YD/wxS5RQVsw1TiZAot8zWfEEzbcK7/ni3ffH1ChudaJyCV1YtFN+9QItTyxd8BURhTgAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEYPR03MB7968.apcprd03.prod.outlook.com (2603:1096:101:168::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 07:11:34 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7677.029; Mon, 17 Jun 2024
 07:11:34 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: nick@khadas.com,
	efectn@protonmail.com,
	jagan@edgeble.ai,
	dsimic@manjaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jacobe Zang <jacobe.zang@wesion.com>
Subject: [PATCH v2 5/5] arm64: dts: rockchip: Add cpufreq support to Khadas Edge2
Date: Mon, 17 Jun 2024 15:11:12 +0800
Message-Id: <20240617071112.3133101-6-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240617071112.3133101-1-jacobe.zang@wesion.com>
References: <20240617071112.3133101-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: SI2PR06CA0017.apcprd06.prod.outlook.com
 (2603:1096:4:186::15) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|SEYPR03MB7968:EE_
X-MS-Office365-Filtering-Correlation-Id: a1d6ecb6-e983-4ee1-6557-08dc8e9cb856
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|1800799021|52116011|376011|7416011|366013|38350700011;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lX20fmEiwdTXIVe49RZi3C8cjn6FCG+/mUetGIl5lFodbyfTiY/VzAhZLEzc?=
 =?us-ascii?Q?0tZx4EsJTxpQAmNcKKowK7MvHX9lrFXSWUh3+P3hpdJGexQ1A+sMd9CcdI6c?=
 =?us-ascii?Q?EeBwN762GjwFmmvHWJLuiJiInasJH3wVZSaE8gzVCmFX65vEeMYXos6c/L/Z?=
 =?us-ascii?Q?RZFksBWsMyFClBjolqFCgXfX+pPKPS4lhmMK9eTagN+YOaGRCD+gxd3MuxXE?=
 =?us-ascii?Q?WsX37XSqWZgvejK7DwR7D9VVmBop+SZ7iBi676k8wEOrZk0sXDzP52uMEavj?=
 =?us-ascii?Q?RlE5TrxGLXlg7dHM0XIo8RboiNFY7ulrcPK7QVtg4CDpympEKKoQSNUOCcx2?=
 =?us-ascii?Q?vZ47TisypYHVcJtxBiE6mwz37lgGdEPuePKYLD6HG6M+yHI7DiPQr2U0UWHD?=
 =?us-ascii?Q?Tkh2oYIOI4gDoIHRxFowrn8CBInH6Klegt4WHMqbmg77GmP+/83JyMTErZ84?=
 =?us-ascii?Q?xsJPG7EQUkqUcjZPtVCmUyCAQTGsGW8FI1K2kx3nKpjYcEVUojyIYX8M1YVe?=
 =?us-ascii?Q?2q4VFQv1LVJ89AtApLTx23eI5xOL0iM0IEwo+JwoHJbCqgrSVOg9HVOjsxgF?=
 =?us-ascii?Q?zQNtsdfrMsB0SI6spTQAXcQuD7Tv3j7BhIj0PGaIaLvqAdQi9NaP9cSpWzqy?=
 =?us-ascii?Q?PhhDcYVbQTYUf73mVGkmrEpXjNba49fv/7hSCmxvDKF7ux4DI5DomTcO2rMS?=
 =?us-ascii?Q?dzB93UeNWX//q3i2sSefsEnrGXkwZVZHPnssyQPAcsrY2kImCx/QGh3Y3RI9?=
 =?us-ascii?Q?Uakc9U1HRxP8w8+qM+8jqC7BCys1TSeM5sPz3qv2nabkUw66qdOmeG1LE5KY?=
 =?us-ascii?Q?3vweJVlZa9RuAxfHrP0q11kpWLCneckvznY9Ae75AlvbVLvw+/RUYpMCxJH9?=
 =?us-ascii?Q?HBoixkQ64Wp1VLbzxpt8cNtO+RwYUUvZ0VLsBce6gkCs+JRQQxevHpNsm0JT?=
 =?us-ascii?Q?LrcACu+EtkMTqNxw0JCt7f9JSZJk6+5fqX11VFLVCcaO1CbrI2zpFNOMQ1gk?=
 =?us-ascii?Q?D0w5yutUWWKX4VSNx7gOUKdw/crQ2xpL+gIRtMtqcQx8dpHcGo7KLptYpkKk?=
 =?us-ascii?Q?7XVw89SWh5MPAZXyWUxZVAN7DVEnCkbyzCM7vXzkTtCcUgD2tFQullkdqQx7?=
 =?us-ascii?Q?Rem9KcgBQVlZ72Lrng8S0rACDiDKANBXPZxFpDcODT2ulErpc3fD5qxjR3zO?=
 =?us-ascii?Q?u+Nw1NM13lv86wr6PiJ4XXpSCGCpl5MZn/8XpxkxaCdEEQX6z+psYZ4zEPcS?=
 =?us-ascii?Q?y6HHv/xPyshor8S2IHbAv6cb5ry4qpA1+rDdraTKyMMacg7cEGK4XQbiHbnT?=
 =?us-ascii?Q?mNpS6maR/ThspjgxQHf22LFjZoD90/KIVZmx8zUgku+keBzb41B2oFkbAE5K?=
 =?us-ascii?Q?SMWoYHM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(52116011)(376011)(7416011)(366013)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?prSfRsiFGbKUqbnZ7UlcQkdJUfcTeF9ELgxw4vWvdi3qkXmIzCeLX2p70Ogn?=
 =?us-ascii?Q?IiTI3EobuhEMSRLRHePL5GyzmPCtG9SNpjoMVd8Je+uq17AOVIu551WLCNoo?=
 =?us-ascii?Q?lPc19OyMZPitkdLR0sjNyTnS4US07BBgIBdmPdzhsuK6aYtHUfQsGx+fxck/?=
 =?us-ascii?Q?lX/Gi6jgg7taIGdWnkSu7fThqyAYSssTn5KRf/NjBAxqKoaXhHd0Yez35zTi?=
 =?us-ascii?Q?7QyaJthsgMw9pHWOQuwaxxiMZs7iSBsMCfeDx6mWa+bQ9Yu/RwZCXrYIEc05?=
 =?us-ascii?Q?1Ddfklsp452ilPI/z6AoaOnsH4d0ljHjm85rB3QJLPFJqKmjsMwU97Bbe8Vi?=
 =?us-ascii?Q?s0jblbYibI/zNc/mxa9Nl7JWEjXaEALTf13DCQu0JIR6i01PTg28uKDkcAnu?=
 =?us-ascii?Q?eS0gieKmtipjDahxssS/18iFrzN/M6XR75Ja2RCDKFYZqQxq4VpxkLvTlMSc?=
 =?us-ascii?Q?wwRt/Jpy5pHWqQ7OxzK7PnlAC9PTVyNzivmRNMsNf7E8RPstPwOT8YV3/Q9b?=
 =?us-ascii?Q?sfiF7Ltsl143CTlpymlUX1uql5Dn9Id6DnE40sRd4jtRd/EhiTMZYbq+tz6g?=
 =?us-ascii?Q?FU31fTd+DDuVbKRWb8WgzbopQlNlHBYbntbYqeM0myAksiTTB9Cnu/+llKSh?=
 =?us-ascii?Q?t2EsHNScNF1JTV4bjt4AmTNiWlU9KWEVQp6G1pTeV9v41bqfNTVrh0O4gdJ9?=
 =?us-ascii?Q?KcN0Sp7gUL9tMEW760p3WQhVNhrMvJw+eVj0spByoUbkfMmpSwCQ2FuoQyEu?=
 =?us-ascii?Q?e7HtVMQaH8oiID0AfvEIQgosYsH5xmLU7qMue1q5VUQ18I0RH2wDx2lBMen+?=
 =?us-ascii?Q?YEtDTy1G1PE2vFxGXf4bVpGR+4GesrP65ugWUGWSmyHLTvt9cgkxOjJ1z04m?=
 =?us-ascii?Q?hKfnspp4JNSAutEHBzesyveBZKtXOx0Pr9a+GbF9AuCM8tnSL/4VZR294uJj?=
 =?us-ascii?Q?3sASXbB4Cej681sVPQios2vxJsYDKRszkkwM2D6WuFkq2d0hYlcH2Hs1u0Cn?=
 =?us-ascii?Q?KfsGNLv8tUik6M56hrqSjJp+zgKJA0h5WoBJjaoi1VVTHE3obu9FbqMy9d5Z?=
 =?us-ascii?Q?L8vXyKfZ6E4XHl8d4ehq+p1qbc2+GVc9LHd7KJND0BwRZWeI/DOdShMMOHQh?=
 =?us-ascii?Q?nZ4HLI9g2mFaBPsDxwF1b7qBW0F+EzUXsD+bQOm7/LWqYNLf8MbhoBLuDCoR?=
 =?us-ascii?Q?DUuHSr/4ZAqUVkpnXhEI2xxeJwJaUny2Rbi8/N2Lxv3cMO2ipqS5i5kHV9+b?=
 =?us-ascii?Q?FsLvwuqPvpUS8h242gqvCezN3XKf0nb2o+h7gcul1I8HperLMQp/72X6NrOR?=
 =?us-ascii?Q?xsVr0FXl/AibgNgmZ3DdhGMTAAicF2ldJDHazuCJ5jcrBFdMlnsnS9Umkv6/?=
 =?us-ascii?Q?+siaKw9w/GbVTh2m7g0TvQ9M+78Gx7VKwsC7D6f4yUGhAWuJyKESZBKbVkTz?=
 =?us-ascii?Q?5FrhhgscVoRBrYEGOEKOIUC57f4cssUg2l1xs2PI3pKuA/D0W9YxrIliFiMP?=
 =?us-ascii?Q?iLMK/YmCKLuHsBBjsssJCEKq+9P7+EZIe/wE33vKbxGSp0IWDHuNJWFJNbyl?=
 =?us-ascii?Q?4CIaV2xXmKr1E05i8WpTqRZTOmS+ihBjc6k1tPgBY4AaEVKHOCv97f1Jjiqe?=
 =?us-ascii?Q?jg=3D=3D?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a1d6ecb6-e983-4ee1-6557-08dc8e9cb856
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 07:11:33.9973
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HC6B839YeWQPLag9doHM26o3sem8uD0FozAmYCSyubJC+xpSm2iVvBLrCTQmOrSmqjSxnRsY2fDQZjNzqXhzvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7968
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_001150_747535_BC0A01B1 
X-CRM114-Status: UNSURE (   8.38  )
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

This adjust CPU nodes on Khadas Edge2.

Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
---
 .../arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index 7d7cc3e76838c..5fb15d3dc23e9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -160,34 +160,42 @@ vdd_3v3_sd: vdd-3v3-sd-regulator {
 
 &cpu_b0 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
+	mem-supply = <&vdd_cpu_big0_mem_s0>;
 };
 
 &cpu_b1 {
 	cpu-supply = <&vdd_cpu_big0_s0>;
+	mem-supply = <&vdd_cpu_big0_mem_s0>;
 };
 
 &cpu_b2 {
 	cpu-supply = <&vdd_cpu_big1_s0>;
+	mem-supply = <&vdd_cpu_big1_mem_s0>;
 };
 
 &cpu_b3 {
 	cpu-supply = <&vdd_cpu_big1_s0>;
+	mem-supply = <&vdd_cpu_big1_mem_s0>;
 };
 
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
+	mem-supply = <&vdd_cpu_lit_mem_s0>;
 };
 
 &cpu_l1 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
+	mem-supply = <&vdd_cpu_lit_mem_s0>;
 };
 
 &cpu_l2 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
+	mem-supply = <&vdd_cpu_lit_mem_s0>;
 };
 
 &cpu_l3 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
+	mem-supply = <&vdd_cpu_lit_mem_s0>;
 };
 
 &combphy0_ps {
@@ -208,7 +216,7 @@ &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	status = "okay";
 
-	vdd_cpu_big0_s0: regulator@42 {
+	vdd_cpu_big0_s0: vdd_cpu_big0_mem_s0: regulator@42 {
 		compatible = "rockchip,rk8602";
 		reg = <0x42>;
 		fcs,suspend-voltage-selector = <1>;
@@ -225,7 +233,7 @@ regulator-state-mem {
 		};
 	};
 
-	vdd_cpu_big1_s0: regulator@43 {
+	vdd_cpu_big1_s0: vdd_cpu_big1_mem_s0: regulator@43 {
 		compatible = "rockchip,rk8603", "rockchip,rk8602";
 		reg = <0x43>;
 		fcs,suspend-voltage-selector = <1>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
