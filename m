Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B6C5C3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 06:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VY5QsErTdmh3Oq/fyviPFkJplqjLCXZo2+Cmd612vYs=; b=IpJ5opQleSVimC
	4h59g++YwAnUuGYvLMghjd1LNr4v0YtBjn0pytzEqJHgF/6f2JgFcwpe/qMqquvWZqDSTWd0d53pX
	JAn40BaiQj2AnUe8Ovg48aoDhSmXN4MuDiU5DTrgo4js6zU5YDN5EsZwhnYHNOakyWhz1vdBWO+kU
	zgrV18mYikqF1e3rs+63Lpg5dAf1bQYuoDgyKl6Cbd0Bw6R1bqqIimDleUZmSxJoY3vLVuIMASlWl
	lonlymjtB7SfgwMNzL1qgVdkFNrNWvDsg9VdjP/xWG71TO/dfGH8GDIFeVYtyTsLwPmmqdtRHkxOy
	mPcfYAYZV9qpB/+sHflA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ2am-0000000HTnz-3mcb;
	Wed, 31 Jul 2024 06:13:44 +0000
Received: from mail-tyzapc01on20700.outbound.protection.outlook.com ([2a01:111:f403:2011::700] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ2Z7-0000000HTBU-1p96;
	Wed, 31 Jul 2024 06:12:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s8WP7rCPy5X/O4N/MqTupfoJTTyrka5NUg4PLCiLRqjIKxbA0CYALFnIlQE+bux+Js6m0a7zT4OyvdO48F9qT5ElvDR55tREvu+vUgNE6m1TlrJPh5TXF/cF65Oa6V+S6XhN23/csErlX9yQLi/7IsvHt0IelwzZxLoUpjIt2G06SwbU5+0LFG235j5mkco88L1IitFg5+VlIE46obkJ4fzIUXFSUshLkOpLQngZoZfUTzo+Kopb0s4MR7hG8q1bi16cspDMlIglb5LbcRMcwE91FJ0HFUnD82NgvrGjjxC/ULUgKWjYTxJUfDIGVtzyKKVrjq9nNbFacLzr7BZ0Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GDLszfaTiyXrVSeO5bo+Fx1/Lx8KsLrl9pfpXaKrTHw=;
 b=jhzc5LBJPXMAZ35rGC+JH7/zn+6/y7Jjdx7SQepCOS+nY2iUBFAc65QHOUTE5wnlN8n61K1mcniksNXxNnd1glIBqTLxILFzJvdzPUEpuL2cy6rJYmyiMXPDsQNLqPHh9mN3ss2N6+yKBYPrAghxTTuJ6EpLhlRT6u+HK2bDvDb+P7hN4h6x18xqa2sbkp3q5AkAJ1gxWo3PlhT+jghbSr+eHlQ2T4GDW5YNI4sbxyHJtIrwNNx038xEHsbNJUPFOpgKgSHgpXxWIPz+oiGwXDbBWZf2Vk2roZmyE7iuargNaxuDtNUsLMRcXTOAy2type7J+m1DNlN3xBO6zhzAYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEYPR03MB6580.apcprd03.prod.outlook.com (2603:1096:101:85::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Wed, 31 Jul
 2024 06:11:53 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7828.016; Wed, 31 Jul 2024
 06:11:53 +0000
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
Subject: [PATCH v6 3/5] arm64: dts: rockchip: Add AP6275P wireless support to Khadas Edge 2
Date: Wed, 31 Jul 2024 14:11:30 +0800
Message-Id: <20240731061132.703368-4-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240731061132.703368-1-jacobe.zang@wesion.com>
References: <20240731061132.703368-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: TYCP286CA0178.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:400:3c6::9) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|SEYPR03MB6580:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b26d14c-8e71-4976-1e81-08dcb127ac70
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|52116014|7416014|1800799024|366016|38350700014|921020;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?146J/iJWz2eBQpQBKn+do3b+ohLvRDdkcmEbGwEelEKIOa+/+0pLsW57WO4b?=
 =?us-ascii?Q?X/FucKZcvlNIPH8NBoYXNot2gy851U6DksBzymMkn/lIdsCDV03NbgW4LoB9?=
 =?us-ascii?Q?DuYqPvEDFXH6/ala9l/hcG8Pwjurcftm7nWIUa7v9TW7i5ZlZ4vpML2UFXZZ?=
 =?us-ascii?Q?Lwiab2s//9Of4RnWS7Gx64uPV5NaUi7moWlkQMMDFWBYPweVx1I+K4R7RWOD?=
 =?us-ascii?Q?LLq4T6rlbGoYKWaWsKNkfblWwiC09oInAKDr+6kiVR2wvf/GItb0/TLz0WkV?=
 =?us-ascii?Q?lYmYzQOLEfkRaamZqAxc8Coh5s4XHu80h0W+0VnCqxuVSfEgww4bwmCH05sJ?=
 =?us-ascii?Q?pbo6iO+XkvPQCzTFMyWnQVM4NAAf9JzlefImy/Za4Rq3BhYMolU6ttIsY37h?=
 =?us-ascii?Q?xiKwbIWeVdFORFr+8nk3/D2KyXZyKFqYq5rlwLxO2z/b7//xwzS2ISzfEb9X?=
 =?us-ascii?Q?kXn6tVh5nSfBuTG8gcVey7Nebukcylb2lFDJeTmdjr7uQVmd5kG1rRtozZ/c?=
 =?us-ascii?Q?XXsnWQTWgTEAQnzzVo8XPbVy77HTqA8a+EBKEvA6oytHQAQchspf79HQlRoC?=
 =?us-ascii?Q?29Guow0E7iRtAiWvBSra6TWHHbUOanTqoqZk4tU3RlJjZAsloCKvI3Mt4VFT?=
 =?us-ascii?Q?oKpER6ooDBiS5mR5VQh1amaB0ik9oJUv3Ao6HRSm93KYbaLvfY8MmvMMicLw?=
 =?us-ascii?Q?0wjUHukC4chPtBxckHPDh41jS7JaiHSSv1x+sYyCGx97lQpW1+AdrPmBqToq?=
 =?us-ascii?Q?ZziMfhN29z2/DRrEc++7LhGiM56AXTQUWX62lC8sAj/gvEgxBjxUClT/ivI/?=
 =?us-ascii?Q?RgTtAa+I4GZTqUq8/2SgAJiZb1vsljqAHfVPuJt9mw45/s9jXSUIy09h9gO7?=
 =?us-ascii?Q?E23XaSyv7bpB1+PfMZn01LUILZ5YN06o++M2222BgR1ClnHKYKl6O0vkWUgW?=
 =?us-ascii?Q?huqLWhKvKtBJ9TOtRJ0yxZp7VQ9IGD+sQw9wHmGaZgEGBIYTGwzdFMzOoGwc?=
 =?us-ascii?Q?HCOLeNMW1fMH7F3rYnkr5CXBYgSMQR4MChoaX7hXq0CLqIaInfGUiB3+KeoS?=
 =?us-ascii?Q?UVuhNipZdWS2jrgaTdlAln6drfwnGlGgMv1VA2770NAPffoiqy3DMeqG/8Tl?=
 =?us-ascii?Q?WkOTLh36YcJQCIfOdv8dJrX+AyQGz6P8GqUwy8/cvbKz3YNdf455MPnLZGjm?=
 =?us-ascii?Q?xCS7ppv7AY032pKOtQZ3E03iPJzDXFPiD+0V1uIweEM8krSkihJnw692a5Ug?=
 =?us-ascii?Q?BkYf2gx3K4qqN2HXKdQFTZh4bxDTZm7cm/Xfc3RtH+YV8DOWp1bIzV5bLz5e?=
 =?us-ascii?Q?GVVoulLdorned3Tr9FpTA7z4HaFF9LsLtdqCIY9NHGemqCkqtwo8YG5IUExy?=
 =?us-ascii?Q?IVFAZqQNHcUBnprSQk+A/UmWw7uenuqJFx7s9P81YOSDYy4X+INgq43tcaJb?=
 =?us-ascii?Q?dfIkPoQ8urQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(7416014)(1800799024)(366016)(38350700014)(921020);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aU3zU4U6B6wXUMTDHiUG2lOOUt9krlavCOwbo86718loI8x9tL4cxFDU73th?=
 =?us-ascii?Q?8fV7hzUk8YU4LPm1Tmu/S5mafUp90FdmESq8fFwuneJEtlw5J7fu8xPIa3Qm?=
 =?us-ascii?Q?kgjjyPbg8EtDG7J33TrmohO0eY/l9L69nwhe9kJ7OVUItwXGK6ViNz8Tvrfp?=
 =?us-ascii?Q?N8hlDb1Cb42E2PuDCQuAlRk4yOkfDNlePaTm4C3n1B9jMu3ZZTpAwApSRsEc?=
 =?us-ascii?Q?RX9LtIQLUhSz12TtGeyqSL1bb7faKdZP9Mc2ZDfYO1bZ0xbhZuB3cL0PoVkV?=
 =?us-ascii?Q?dYlxyT2pi8spBlDE4hfZR/n12PN5zxAHhZZKZH5+Mu+gyIRkypb68d0yqDIM?=
 =?us-ascii?Q?XM+gXvd5dv0GNeKOzEbgp1mMTc8A4WtkbPL/54th8kShJJbPgourbF2n1+i/?=
 =?us-ascii?Q?WQPQi6HJ93JW9RrKXxzmqU/m7Vkwc+zEptQHMbZWedNE6FUK8KaU0p2HT98O?=
 =?us-ascii?Q?0TFkeLtUqMKtxzZTcrwLx2cke6eFldFtNk8YbpiBDG7IpHJ71fCnWRHYBobs?=
 =?us-ascii?Q?uId/9gawwHNg8Ysf3LPcFkJKu8cmnNkuBsFDzcVSr/t8zWYbYoiwPgBCBiO+?=
 =?us-ascii?Q?AlG1XRXuV79VLCqSeWiytdC8Lt6ZEg5Z/gh6T1v827yzWH5+aY4Gxgpijxxz?=
 =?us-ascii?Q?0qpDYigarIK5tbRcZcLRwd2Jta6bKHoDaQjY1mYv3XVf9IsagzuXEsoiKAaM?=
 =?us-ascii?Q?9sMR+4+mYp4eCCGTYl3dEGAqsIwvMEDGPVU6LLn5bTB7YfwfssA5YeE1RENJ?=
 =?us-ascii?Q?JGyzeALMSAoge613TJ7PUGKICybSjnLnLvrCTWHIhai1bucBx0+A4tL+i+e6?=
 =?us-ascii?Q?Sc/D1YQxQHyfvNPETTKZQCtIMl3wSRUHiGduhvP0pCufMe6LxfVPMujHuUxt?=
 =?us-ascii?Q?wA36iSNl4uZw2enICCqtptj5n5L7GX46q5l27BpH6Nr7FEoL2veuJC9E/8ej?=
 =?us-ascii?Q?ziXQyaN89q0TWt0SZoH1PaNC3Y4ytFy1usQ5JYstOhOQ9lpGeaI95zm8NvXf?=
 =?us-ascii?Q?ToOya82TgM62XPD+wxu0Koe3tlP5vTbWmVchPVqKPNuMv2i89s1cfYDSr+Tz?=
 =?us-ascii?Q?65fZ3jhdIzn60f/cDBrlVTzqfY6UncgHG7xxzfzsSvZlYM25+l+lqNX3fbJh?=
 =?us-ascii?Q?ig5wGUeJ3DTGYI3HlaTJtQU1LL1ahEU1aTUibSf3g2yV9+o8AmMp3pIeVNpb?=
 =?us-ascii?Q?t6vd+KjPhMn1dY/yFVaGHNfIvzARr4qbZ0LiurQROTnI7gceKSVq94/bMmG6?=
 =?us-ascii?Q?wmTueE1cMJIGWNxuQw8mtYC7ExdqdOimEQsXN6cekknxa37SOQDtnb7UhcZC?=
 =?us-ascii?Q?NoCGBaDkuhyMNuznZ7vYWcKHNyLCl9aOP9l2cYOW7bQlEMzxl9p/pdtZd0ax?=
 =?us-ascii?Q?WGDyKhKjBgjXKKGv3KbvFH0KwS8lcBlCYqx47toStB7TtMiD6vc7I7QNpm+O?=
 =?us-ascii?Q?HAAo14tVlLYGpYtC0XeoEb+ha2gNHQ4FiwGcWpAm9J06IZGd8fWEjkOCg5QY?=
 =?us-ascii?Q?zIj3TzKcW4Y1Aj4MyT0hT3OBggW/zsfk5Z77FLZ8W3udRlhX9fKJmDuWsYUv?=
 =?us-ascii?Q?vAUsKDbIZHdkBub5oJ2EElrkOX1JALxCuGWMb8f0?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b26d14c-8e71-4976-1e81-08dcb127ac70
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 06:11:53.6424
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: elWoHCDEpFI5U1ZOX7gMxIAycuNFUyBhPDZrPodUJeBtn1zRGpKUflxlgpRyyuOQcdqT1wLpw5mCgSo+j/5AOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB6580
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_231201_510360_DDEE3DD8 
X-CRM114-Status: UNSURE (   9.64  )
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
---
 .../boot/dts/rockchip/rk3588s-khadas-edge2.dts   | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index dbddfc3bb4641..b80a552dad883 100644
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
+			compatible = "pci14e4,449d";
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
