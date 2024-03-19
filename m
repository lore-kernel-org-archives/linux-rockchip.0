Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44AE0C54E5D
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Mar 2024 09:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mc1iy5ZY4ldzrgH+JmqiULsfeZBeCD4ItOKfOF1iHOI=; b=B88PMB+4zUKazs
	K8sCf6fB+S2mkA7y1BNdOQDGPKcKYR6E5iuqkWRMdKNifYdR3TtnD783PRmboxpyzP8EG5CRYNA+o
	WsdVSZDgqmC303DD/rhlshpsg4uMOzoTM/lgtpb0/AIEdct2AJnblLiOyibmb6zr2ZL8LELBPo3U0
	KyQPh40/OO02jLlQqFbpX4nUilcL5x6wCQx1eZhsEZxBHqGrUUMZ0Ytrs4bgSumQdzocgcSlBkfXg
	ZPj7EmstKu7GTft7yK/37LWDGacFl/Cp/D3vuurXa36DOmlW0xdGa1wIowp2/TpCLrqhP2HvSP7ee
	ksCn4TBFo3Q/TfWmNtOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWCB-0000000CCBn-2emE;
	Tue, 19 Mar 2024 09:55:47 +0000
Received: from mail-be0deu01on20700.outbound.protection.outlook.com ([2a01:111:f403:2622::700] helo=DEU01-BE0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmWC5-0000000CC70-1AJ0
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Mar 2024 09:55:44 +0000
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=fail;
 b=Hs+nBVTNOLNSkeLljHxgRL6QDYJbuky3w1GRF6ToQiecuq3TyozeDppzQ1JcvNYlONOxq6uqQQdpOeBPVLEl6l6JV4rODNkl+XHQKeJfOND5dHY2aRTu5FTw4R4dGoQNLqfSyp0A1Q3CpeSaR+YqGmEjDMJUmthidL7yijnGdjElgdMXtOd0kYwyLdg4ZeiDUpilFuTtMwIY0t7VeUeiYgxwOTHXqN99iLniljsVycBhRqETLhGViTSStfJc1oly3qeAUs+foCIYr+rm3HWCHNtpTbkm6rFcRoG8dqDTJ7nR+9EQwl99Ojvo5mCZLe39Jz54m7VmnG5Y26i88dM83w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O8zvdVpkiWNQql52whz+mm9C0+gKFEiBfT4BcJ5io6Y=;
 b=akIcF8xPYTXiVWa5lp3tEiEFgcwew/uYgoWLFwemQngHpnZRezFwCszPmGpae6FJNwqGhuJQzDcjIKVAP9XOQ/L3CXoaqSyK96ZspXM7t9PmoQrPVXTJfZjLddBZplN4ZiUslzjzBx+EJEvEnLI3NX0iXDjIv5I454xCoTbHWEswzCMkUFhqvqt9dbVQhcRyDGi+H5Oj3ZAO5xignPmwmtfx+9e4q/dJZBhGcswhosccbn1HztbFflqmXRrWC9insERHlJmeaS4bYBKdObP1bCuEaTLkO2PzQtTWCXxLLVcAKEF3+148M3xufyaLjUXVTARdenRXRzMrP5DJR3Nc1g==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=fail (sender ip is
 20.79.220.33) smtp.rcpttodomain=lists.infradead.org smtp.mailfrom=iesy.com;
 dmarc=none action=none header.from=iesy.com; dkim=fail (body hash did not
 verify) header.d=iesy20.onmicrosoft.com; arc=fail (47)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O8zvdVpkiWNQql52whz+mm9C0+gKFEiBfT4BcJ5io6Y=;
 b=ms54zftVD+L2byKA5pRHEJdTX8WsKeQBUOQ3AqEPoed4UN4qXu7JAmSKho0cwmRDSeH4aHGwQEqWBEoO27GmAV4fwvXllxCUygh1CDpzFFT79v31PIafPLwGf+M8hUxa5TzSSV5bcjhx3+L0oeq4WqkglRVw2zVqRbVDfnkp2wU=
Received: from FR0P281CA0270.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:b5::16)
 by FR5P281MB3988.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:103::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.28; Tue, 19 Mar
 2024 09:55:36 +0000
Received: from FR3PEPF00000486.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b5:cafe::7f) by FR0P281CA0270.outlook.office365.com
 (2603:10a6:d10:b5::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.12 via Frontend
 Transport; Tue, 19 Mar 2024 09:55:36 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 20.79.220.33)
 smtp.mailfrom=iesy.com; dkim=fail (body hash did not verify)
 header.d=iesy20.onmicrosoft.com;dmarc=none action=none header.from=iesy.com;
Received-SPF: Fail (protection.outlook.com: domain of iesy.com does not
 designate 20.79.220.33 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.79.220.33; helo=de1-emailsignatures-cloud.codetwo.com;
Received: from de1-emailsignatures-cloud.codetwo.com (20.79.220.33) by
 FR3PEPF00000486.mail.protection.outlook.com (10.167.240.6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.10 via Frontend Transport; Tue, 19 Mar 2024 09:55:36 +0000
Received: from DEU01-BE0-obe.outbound.protection.outlook.com (104.47.7.168) by de1-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 19 Mar 2024 09:55:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MJu4vCESpX9ypO574PF0hjOGbayoLKZRdVeebZQEDBIVpPjbWecUUpbXoOsP6/btOX+1/4T7zWArO6R1Lx7YIHRdPCA4pCrsu8Z2ZIQcjcisjpuocFGZwXtjqmw2+w8nts7DU5p98eIsq3oSgG+pADIP40ycrsmsGIRQCVZj86HsU/mkjjcJy/CjJK2CN8zMTCyGq225r5qztS3OOw6EoSH98rhLBsXOjO2pGDgpF1aXKzlsReqmRzkR2m7dQfVZuW2k9UgHSL/gODMWzzb/QtMW6kU2TfGQVan9Z3o3N2bO/bJIbzv5v7lCZSZAcmFu5EAOIWVruY9LC1SIYTUy9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rFJS3vZIzt/HW9WyYtkAS3ZklIblj/gBNcqsxTqBYUI=;
 b=VO5/Q37jvNgFZXs6dBfQKvk2qnCe7O9sy1vjD5NDY/9q37u/6Ca0EkonawJFvWzE6QQBTV+THOzqCbu4pEim5IWsboqjINli27FmVOGuFUzTa4sFAsj++O9b2WpVgCWWxABXrCfVRW84iATwBLKkWRrUVbUuEymJ4furqJnja0T0PakOPxN5dBs6qc9uLm9WvIA1YhaWOP61fWYIWUyiz3QdfBlviL6X/sXXgLj7Qd73QjCmVsONrhD+Lkn890d0kLLnBlz9SIvJa0thDZIAxuuJ2fUaWZPYzFQO5zp5xEkziCmYMneWrQI8w5Ym544rExhz7KhMbgotZBNEpBChIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iesy.com; dmarc=pass action=none header.from=iesy.com;
 dkim=pass header.d=iesy.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=iesy20.onmicrosoft.com; s=selector1-iesy20-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rFJS3vZIzt/HW9WyYtkAS3ZklIblj/gBNcqsxTqBYUI=;
 b=AP30MSO/dNpGQNl3w2x9IfIJNW3t1KGcrC6R30UTyAZX3n0d0z7zP7rsa9WnFfb2Enrtqreu6X9jSVBRd8UGMEk1W8Xg09bFaL98omI+4edPEMEf1PpYdUvgIcC6bst5AVQlfEG8Ei3jfGW19kTP4yf1wvRb+TWzfkcRQ5BhRsE=
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:39::12)
 by FR6P281MB3872.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:110::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.26; Tue, 19 Mar
 2024 09:55:34 +0000
Received: from FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851]) by FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 ([fe80::8af4:a741:edb6:e851%3]) with mapi id 15.20.7386.025; Tue, 19 Mar 2024
 09:55:34 +0000
From: Dominik Poggel <pog@iesy.com>
To: robh+dt@kernel.org
CC: Dominik Poggel <pog@iesy.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Andy Yan <andyshrk@163.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: iesy: add support for iesy PX30 SoM OSM-S
Date: Tue, 19 Mar 2024 10:54:00 +0100
Message-ID: <20240319095411.4112296-2-pog@iesy.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20240319095411.4112296-1-pog@iesy.com>
References: <20240319095411.4112296-1-pog@iesy.com>
X-ClientProxiedBy: FR2P281CA0059.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:93::13) To FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:39::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-TrafficTypeDiagnostic: FR2P281MB2393:EE_|FR6P281MB3872:EE_|FR3PEPF00000486:EE_|FR5P281MB3988:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: dpA4dQp9sD16CC9v5WoWu5OjK1IfKmwsSdFW5iKjre3oad52HiSUpVBXo08TNk0X/a5YRfkhdtrXzpReA2qHO0jwcO0m7WmoLFl5wVGjKgSo4Fxg0DoN3KHvkrErIw/yQF2RTNbcHJcsZ6VyaDDzF9BzjKHTdafYTxx1+awrxn3nowOf1fW4J/J7671UU3lxBDTxTcg5b254RITajJl0Rhu18kYG+pnqQcEVONAbexR+WKt7mUQoKafWSyRf9zdus7DX37hbVBpT5Ps26ov6qcrEppS2mZrbjLR2h4rvugsWumQWAdh0UFt7W3YTt2RldIzC+2yBPZNwDfmRBM7cy9FOvLYTYacqwv9wzhY6OcIKppDiTsvEdQp5DKOC99CNubrGDV1JzSJdFKMrdtP/KldQbWHhSKLKIrHaWx1FjB0/gB+qebtrIk3gWHKP7aAhZPgc9VaPBmeZpKeWsXZOm8dqd3ocyfg4tuVV7fkZa9Yx50OWuBvuhagp6mpSyrjK1gZ6ZnuG5jIZU+Px/KeocIDhSxkw2hGujVbaiJ5aYUPZbjPdeEh7d6Hz+xhYs7GbHRO7OFUKB5dMjRiy8zbq6Ovgwzbueebwc8qpsK2LigpeuDj8kvFP2Fti4XizfXX9Q+5Cp63c+jmkmpR/WsrKRG5j1OtTSW4hVURUDNvlA0QOQOiOA9CvdnOkJfMdaU0izU+OrEc/aYzufYiDLk1maw==
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:FR2P281MB2393.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(52116005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR6P281MB3872
X-CodeTwo-MessageID: 1ccd037f-d701-47b7-9159-517350dc5e0a.20240319095535@de1-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: FR3PEPF00000486.DEUP281.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6d3d0207-76ce-46e3-5cbf-08dc47fab99f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2PRIfXBWPL47sfrt/rtAhKJc5vzKDd51FylNkcX8KlphT0/lJALqdgBe/Mnw25Qj4ER+BCi2cWZt11PVrn2KVTsBiJ/JhVU5jH6HBrIAz4YncWGw4Z50aaTOgCQy0469EqJxPdcpiYzeFSz9DFcNvs7W+VOUoZJz44WxGYl3NoT6izvIZowXDZuz9APw8/Wk1lDmPOoJR8D8IAh9gnAN2EAz7DK/Foosbd7bS04FkypJsuLEmBMiwx0E4tl2AB+FAmKE/ETp8xeOzjPfPipzdb64eHECanGuIuUxtx9r82R+gUWkP9BGGwBxPqSmWfOmRKqZ7skKJlQ/7ZexhpBl6AD37YXZlbDlb17BZ2VLY1C1qmIfjGQbKTqdj4UdXxptY9zSi+YAyk5QTImn/eb1+GIiSsU1QqhY7umBcpajsTO5/1ii7gQzs9rXAvfCIGTofo0H0ofVgkqAifkeBVIO17fECMJdQ2F+F9xhQVDY7XQj6RKeqCJtYLn1tsiVvtYrimyznDhjRx0GhZG3Bx4lBxcFUAxWvXkYixQDGoN9zPZIboSxAZauvV1wwm8x97HKPi+1mVAdXe34/EAYG1Hhob/PdKopJ+Lotzma4PbgBBCUkrlALUVmJg6pp0S5THGhRO4VkhGciFfujliT8XMVjRBylmwfaCktdHZ/R/aruc45qOcqVK2l10mTczByvq9s3Ym3YBlpsjYCBIUnm0r5vws6FpLbtzZ2b22OGjNcW7Q7yPQ3TZU8HrngwP408X+b
X-Forefront-Antispam-Report: CIP:20.79.220.33;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:de1-emailsignatures-cloud.codetwo.com;PTR:de1-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230031)(36860700004)(82310400014)(376005)(1800799015);DIR:OUT;SFP:1102;
X-OriginatorOrg: iesy.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 09:55:36.1236
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d3d0207-76ce-46e3-5cbf-08dc47fab99f
X-MS-Exchange-CrossTenant-Id: ace663fd-5672-464f-8169-8d373312f6bc
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ace663fd-5672-464f-8169-8d373312f6bc;Ip=[20.79.220.33];Helo=[de1-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: FR3PEPF00000486.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR5P281MB3988
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240319_025541_563250_4B6DDD01 
X-CRM114-Status: GOOD (  12.11  )
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

This adds support for the iesy SoM px30-iesy-osm-sf and the matching
evalboard px30-iesy-eva-mi V2.XX.

Signed-off-by: Dominik Poggel <pog@iesy.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/px30-iesy-eva-mi-v2.dts | 624 ++++++++++++++++++
 .../boot/dts/rockchip/px30-iesy-osm-sf.dtsi   | 346 ++++++++++
 3 files changed, 971 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-iesy-eva-mi-v2.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/px30-iesy-osm-sf.dtsi

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index f906a868b71a..a46234ccbe15 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -3,6 +3,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-ctouch2-of10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-engicam-px30-core-edimm2.2.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-iesy-eva-mi-v2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += px30-ringneck-haikou.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-evb.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
diff --git a/arch/arm64/boot/dts/rockchip/px30-iesy-eva-mi-v2.dts b/arch/arm64/boot/dts/rockchip/px30-iesy-eva-mi-v2.dts
new file mode 100644
index 000000000000..be1d709bbab0
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-iesy-eva-mi-v2.dts
@@ -0,0 +1,624 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree for iesy RPX30 EVA-MI V2.xx (Eval Kit)
+ *
+ * Copyright (c) 2022 iesy GmbH
+ */
+
+/dts-v1/;
+#include <dt-bindings/input/input.h>
+#include <dt-bindings/net/mscc-phy-vsc8531.h>
+#include "px30-iesy-osm-sf.dtsi"
+
+/ {
+	model = "iesy RPX30 EVA-MI V2.xx (Eval Kit)";
+	compatible = "iesy,rpx30-eva-mi-v2", "rockchip,px30";
+
+	leds {
+		compatible = "gpio-leds";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_leds_bb138>;
+
+		/* BB138a: green user led (LD4) */
+		led@0 {
+			label = "USER_LED_00";
+			gpios = <&gpio3 RK_PA0 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "heartbeat";
+		};
+
+		/* BB138a: yellow user led (LD9)) */
+		led@1 {
+			label = "USER_LED_01";
+			gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+		};
+	};
+
+	/* BB138a: MAX9867ETJ+ audio codec */
+	max9867-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "rockchip,max9867-codec";
+		simple-audio-card,format = "i2s";
+
+		simple-audio-card,widgets =
+			"Speaker", "Jack",
+			"Microphone", "Mic";
+		simple-audio-card,routing =
+			"Jack", "LOUT",
+			"Jack", "ROUT",
+			"Mic", "DMICL",
+			"Mic", "DMICR";
+
+		simple-audio-card,frame-master = <&cpudai>;
+		simple-audio-card,bitclock-master = <&cpudai>;
+
+		status = "okay";
+
+		cpudai: simple-audio-card,cpu {
+			sound-dai = <&i2s1_2ch>;
+			dai-tdm-slot-num = <1>;
+			dai-tdm-slot-width = <16>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&max9867>;
+			clocks = <&cru SCLK_I2S1_OUT>;
+		};
+	};
+
+	/* regulator for USB OTG port */
+	usb_a_vbus_regulator: regulator@1 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_a_vbus_regulator";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 RK_PC0 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	/* regulator for USB host port */
+	usb_b_vbus_regulator: regulator@2 {
+		compatible = "regulator-fixed";
+		regulator-name = "usb_b_vbus_regulator";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		gpio = <&gpio3 RK_PC3 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	user-buttons {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+		autorepeat;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_buttons>;
+
+		/* BB138a: User-Button 1 */
+		user-button-1 {
+			label = "User Button 1";
+			gpios = <&gpio3 RK_PA2 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_X>;
+		};
+
+		/* BB138a: User-Button 2 */
+		user-button-2 {
+			label = "User Button 2";
+			gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
+			linux,code = <KEY_Z>;
+		};
+	};
+
+	/* regulator for SD Card on BB138 */
+	vdd3v3_bb138: regulator@4 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd3v3_bb138";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
+};
+
+&display_subsystem {
+	status = "okay";
+};
+
+/* Display Serial Interface */
+&dsi {
+	status = "okay";
+	rockchip,lane-rate = <891>;
+
+	panel@0 {
+		compatible = "simple-panel-dsi";
+		reg = <0>;
+		power-supply = <&vcc3v3_lcd>;
+		prepare-delay-ms = <2>;
+		reset-delay-ms = <1>;
+		init-delay-ms = <20>;
+		enable-delay-ms = <120>;
+		disable-delay-ms = <50>;
+		unprepare-delay-ms = <20>;
+
+		width-mm = <68>;
+		height-mm = <121>;
+		dsi,lanes = <2>;
+
+		display-timings {
+			native-mode = <&timing2>;
+
+			timing1: timing1 {
+				clock-frequency = <74250000>;
+				hactive = <1280>;
+				vactive = <720>;
+				hfront-porch = <110>;
+				hsync-len = <40>;
+				hback-porch = <220>;
+				vfront-porch = <5>;
+				vsync-len = <5>;
+				vback-porch = <20>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <0>;
+				pixelclk-active = <0>;
+			};
+
+			timing2: timing2 {
+				clock-frequency = <74250000>;
+				hactive = <1920>;
+				vactive = <1080>;
+				hfront-porch = <88>;
+				hsync-len = <44>;
+				hback-porch = <148>;
+				vfront-porch = <4>;
+				vsync-len = <5>;
+				vback-porch = <36>;
+				hsync-active = <0>;
+				vsync-active = <0>;
+				de-active = <0>;
+				pixelclk-active = <0>;
+			};
+		};
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				panel_in_dsi: endpoint {
+					remote-endpoint = <&dsi_out_panel>;
+				};
+			};
+		};
+
+		/* should be defined to avoid kernel log errors */
+		/* vsp-supply is positive voltage supply, vsn-supply is negative voltage supply */
+		/* will not be critical: is not even used in simple-panel devicetree example */
+		/* vsp-supply = <???>; */
+		/* vsn-supply = <???>; */
+	};
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@1 {
+			reg = <1>;
+			dsi_out_panel: endpoint {
+				remote-endpoint = <&panel_in_dsi>;
+			};
+		};
+	};
+};
+
+&dsi_in_vopb {
+	status = "okay";
+};
+
+&dsi_in_vopl {
+	status = "disabled";
+};
+
+/* ARM Mali GPU */
+&gpu {
+	mali-supply = <&vdd_logic>;
+	shadercores-supply = <&vdd_logic>;
+	status = "okay";
+};
+
+&gmac {
+	phy-supply = <&vcc_phy>;
+	phy-handle = <&gmac0_phy>;
+	clock_in_out = "input";
+	assigned-clocks = <&cru SCLK_GMAC>;
+	assigned-clock-parents = <&cru SCLK_GMAC>;
+	status = "okay";
+
+	gmdio0: gmac0_mdio {
+		compatible = "snps,dwmac-mdio";
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* BB138a: Ethernet PHY */
+		gmac0_phy: ethernet-phy@0 {
+			compatible = "ethernet-phy-id0007.0570";
+			reg = <0x0>;
+			max-speed = <100>;
+			vsc8531,vddmac = <1800>;
+			vsc8531,edge-slowdown = <76>;
+			vsc8531,led-0-mode = <VSC8531_LINK_100_ACTIVITY>;
+			vsc8531,led-1-mode = <VSC8531_LINK_100_ACTIVITY>;
+		};
+	};
+};
+
+&i2c0 {
+	/* BB138a: LM75 sensor */
+	sensor@4e {
+		status = "okay";
+		compatible = "lm75";
+		reg = <0x4e>;
+	};
+
+	/* BB138a: PFC85263 RTC */
+	rtc@51 {
+		status = "okay";
+		compatible = "nxp,pcf85263";
+		reg = <0x51>;
+	};
+
+	/* BB138a: AT24C64D EEPROM */
+	eeprom@53 {
+		status = "okay";
+		compatible = "atmel,24c64";
+		reg = <0x53>;
+		pagesize = <32>;
+	};
+};
+
+&i2c1 {
+	status = "okay";
+
+	/* BB138a: HDMI to MIPI converter */
+	lt8912@48 {
+		compatible = "lontium,lt8912";
+		reg = <0x48>;
+		ddc-i2c-bus = <&i2c1>;
+		/* driver needs a valid reset gpio to function */
+		/* use not connected pin as dummy */
+		reset-gpios = <&gpio3 RK_PD3 GPIO_ACTIVE_LOW>; /* n.c. */
+		status = "okay";
+	};
+
+	/* BB138a: MAX9867ETJ+ audio codec */
+	max9867: audio_codec@18 {
+		#sound-dai-cells = <0>;
+		compatible = "maxim,max9867";
+		reg = <0x18>;
+		status = "okay";
+		assigned-clocks = <&cru SCLK_I2S1_OUT>;
+		assigned-clock-parents = <&cru SCLK_I2S1_OUT>;
+		assigned-clock-rates = <50000000>;
+	};
+};
+
+&i2s1_2ch {
+	pinctrl-0 = <&i2s1_2ch_mclk &i2s1_2ch_sclk &i2s1_2ch_lrck
+				 &i2s1_2ch_sdi &i2s1_2ch_sdo>;
+	status = "okay";
+};
+
+&io_domains {
+	status = "okay";
+
+	vccio1-supply = <&vcc1v8_dvp>;
+	vccio2-supply = <&vccio_sd>;
+	vccio3-supply = <&vcc1v8_dvp>;
+	vccio4-supply = <&vcc1v8_dvp>;
+	vccio5-supply = <&vcc1v8_dvp>;
+	vccio6-supply = <&vcc1v8_soc>;
+	pmuio1-supply = <&vcc3v0_pmu>;
+	pmuio2-supply = <&vcc1v8_soc>;
+};
+
+&pinctrl {
+	headphone {
+		hp_det: hp-det {
+			rockchip,pins = <2 RK_PB0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+
+	leds {
+		pinctrl_leds_bb138: pinctrl-leds-bb138 {
+			rockchip,pins = <3 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none
+							 3 RK_PA1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	i2c0 {
+		i2c0_xfer: i2c0-xfer {
+			rockchip,pins =
+				<0 RK_PB0 1 &pcfg_pull_none_8ma>,
+				<0 RK_PB1 1 &pcfg_pull_none_8ma>;
+		};
+	};
+
+	i2c1 {
+		i2c1_xfer: i2c1-xfer {
+			rockchip,pins =
+				<0 RK_PC2 1 &pcfg_pull_none_8ma>,
+				<0 RK_PC3 1 &pcfg_pull_none_8ma>;
+		};
+	};
+
+	i2c2 {
+		i2c2_xfer: i2c2-xfer {
+			rockchip,pins =
+				<2 RK_PB7 2 &pcfg_pull_none_8ma>,
+				<2 RK_PC0 2 &pcfg_pull_none_8ma>;
+		};
+	};
+
+	gpiokeys {
+		pinctrl_buttons: buttongrp {
+			rockchip,pins = <3 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>,
+							<3 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	uart0 {
+		uart0_xfer: uart0-xfer {
+			rockchip,pins =
+				<0 RK_PB2 1 &pcfg_pull_none_2ma>,
+				<0 RK_PB3 1 &pcfg_pull_up>;
+		};
+
+		uart0_rts: uart0-rts {
+			rockchip,pins =
+				<0 RK_PB5 1 &pcfg_pull_none_2ma>;
+		};
+	};
+
+	uart1 {
+		uart1_xfer: uart1-xfer {
+			rockchip,pins =
+				<1 RK_PC1 1 &pcfg_pull_none_2ma>,
+				<1 RK_PC0 1 &pcfg_pull_up>;
+		};
+
+		uart1_rts: uart1-rts {
+			rockchip,pins =
+				<1 RK_PC3 1 &pcfg_pull_none_2ma>;
+		};
+	};
+
+	pwm0 {
+		pwm0_pin: pwm0-pin {
+			rockchip,pins =
+				<0 RK_PB7 1 &pcfg_pull_none_2ma>;
+		};
+	};
+
+	pwm1 {
+		pwm1_pin: pwm1-pin {
+			rockchip,pins =
+				<0 RK_PC0 1 &pcfg_pull_none_2ma>;
+		};
+	};
+
+	pwm2 {
+		pwm2_pin: pwm2-pin {
+			rockchip,pins =
+				<2 RK_PB5 1 &pcfg_pull_none_2ma>;
+		};
+	};
+
+	pwm3 {
+		pwm3_pin: pwm3-pin {
+			rockchip,pins =
+				<0 RK_PC1 1 &pcfg_pull_none_2ma>;
+		};
+	};
+
+	spi0 {
+		spi0_clk: spi0-clk {
+			rockchip,pins =
+				<1 RK_PB7 3 &pcfg_pull_up_4ma>;
+		};
+
+		spi0_csn: spi0-csn {
+			rockchip,pins =
+				<1 RK_PB6 3 &pcfg_pull_up_4ma>;
+		};
+
+		spi0_mosi: spi0-mosi {
+			rockchip,pins =
+				<1 RK_PB4 3 &pcfg_pull_up_4ma>;
+		};
+	};
+
+	spi1 {
+		/* spi1.sdo */
+		spi1_mosi: spi1-mosi {
+			rockchip,pins =
+				<3 RK_PB4 4 &pcfg_pull_none>;
+		};
+
+		/* spi1.csn PIN E17 used! */
+		spi1_csn: spi1-csn {
+			rockchip,pins =
+				<3 RK_PB0 4 &pcfg_pull_none>;
+		};
+
+		spi1_clk: spi1-clk {
+			rockchip,pins =
+				<3 RK_PB7 4 &pcfg_pull_none>;
+		};
+	};
+
+	u2phy {
+		u2phy_host_pin: host-port {
+			rockchip,pins =
+				<3 RK_PC3 1 &pcfg_pull_none_4ma>;
+		};
+
+		u2phy_otg_pin: otg-port {
+			rockchip,pins =
+				<3 RK_PC0 1 &pcfg_pull_none_4ma>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	status = "okay";
+
+	pmuio1-supply = <&vcc3v0_pmu>;
+	pmuio2-supply = <&vcc1v8_soc>;
+};
+
+&power {
+	pd_vi-supply = <&vdd_logic>;
+	pd_vpu-supply = <&vdd_logic>;
+	pd_gpu-supply = <&vdd_logic>;
+	pd_usb-supply = <&vdd_logic>;
+	pd_mmc_nand-supply = <&vdd_logic>;
+	pd_vo-supply = <&vdd_logic>;
+};
+
+/* BB138a: PWM outputs on Pin Header */
+&pwm0 {
+	status = "okay";
+};
+
+&pwm1 {
+	status = "okay";
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&pwm3 {
+	status = "okay";
+};
+
+/* BB138a: SAR ADC inputs */
+&saradc {
+	status = "okay";
+	vref-supply = <&vcc1v8_soc>;
+};
+
+/* BB138a: SD card connector */
+&sdmmc {
+	bus-width = <4>;
+	cap-mmc-highspeed;
+	cap-sd-highspeed;
+	supports-sd;
+	card-detect-delay = <800>;
+	ignore-pm-notify;
+	sd-uhs-sdr12;
+	sd-uhs-sdr25;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	max-frequency = <135000000>;
+	vqmmc-supply = <&vccio_sd>;
+	vmmc-supply = <&vdd3v3_bb138>;
+	status = "okay";
+};
+
+&spi0 {
+	status = "okay";
+
+	spidev@0 {
+	   compatible = "memsic,mc3630";
+	   spi-max-frequency = <10000000>;
+	   reg = <0>;
+	};
+};
+
+&spi1 {
+	status = "okay";
+	cs-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+
+	spidev@0 {
+	   compatible = "jedec,spi-nor";
+	   spi-max-frequency = <10000000>;
+	   reg = <0>;
+	};
+};
+
+&u2phy {
+	status = "okay";
+
+	/* BB138a: USB2.0 Host PHY */
+	u2phy_host: host-port {
+		phy-supply = <&vcc3v0_pmu>;
+		vbus-supply = <&usb_b_vbus_regulator>;
+		status = "okay";
+		pinctrl-0 = <&u2phy_host_pin>;
+	};
+
+	/* BB138a: USB2.0 OTG PHY */
+	u2phy_otg: otg-port {
+		phy-supply = <&vcc3v0_pmu>;
+		vbus-supply = <&usb_a_vbus_regulator>;
+		status = "okay";
+		pinctrl-0 = <&u2phy_otg_pin>;
+	};
+};
+
+/* BB138a: UART_A on MicroBus and Pin Header */
+&uart0 {
+	status = "okay";
+};
+
+/* BB138a: UART_B M.2 socket (not used) */
+&uart1 {
+	status = "okay";
+};
+
+&usb20_otg {
+	dr_mode = "otg";
+	status = "okay";
+
+	/* should be defined to avoid kernel log error */
+	/* vusb_d: digital usb supply, 1.2V */
+	/* vusb_q: analog usb supply, 1.1V */
+	/* no further info available */
+	/* vusb_d-supply = <???>; */
+	/* vusb_a-supply = <???>; */
+};
+
+&usb_host0_ehci {
+	/*vbus-supply = <&usb_b_vbus_regulator>;*/
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	/*vbus-supply = <&usb_b_vbus_regulator>;*/
+	status = "okay";
+};
+
+/* Big Video Output Processor (VOPB) */
+&vopb {
+	status = "okay";
+};
+
+&vopb_mmu {
+	status = "okay";
+};
+
+/* Little Video Output Processor (VOPL) */
+&vopl {
+	status = "disabled";
+};
+
+&vopl_mmu {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/rockchip/px30-iesy-osm-sf.dtsi b/arch/arm64/boot/dts/rockchip/px30-iesy-osm-sf.dtsi
new file mode 100644
index 000000000000..18db50ca62b6
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/px30-iesy-osm-sf.dtsi
@@ -0,0 +1,346 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree for iesy RPX30 OSM SF (OSM Module)
+ *
+ * Copyright (c) 2023 iesy GmbH
+ */
+
+#include "../rockchip/px30.dtsi"
+
+/ {
+	aliases {
+		mmc0 = &emmc;
+		mmc1 = &sdmmc;
+		mmc2 = &sdio;
+	};
+
+	chosen {
+		bootargs = "earlycon=uart8250,mmio32,0xff160000 console=ttyFIQ0 rw root=PARTUUID=614e0000-0000 rootwait";
+	};
+
+	fiq-debugger {
+		compatible = "rockchip,fiq-debugger";
+		rockchip,serial-id = <2>;
+		rockchip,wake-irq = <0>;
+		/* If enable uart uses irq instead of fiq */
+		rockchip,irq-mode-enable = <1>;
+		rockchip,baudrate = <115200>;  /* Only 115200 and 1500000 */
+		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&uart2m1_xfer>;
+		status = "okay";
+	};
+
+	vcc_phy: vcc-phy-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_phy";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc5v0_sys: vccsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_arm>;
+};
+
+&cpu0_opp_table {
+	rockchip,avs = <1>;
+};
+
+/* eMMC on OSM module */
+&emmc {
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	supports-emmc;
+	disable-wp;
+	non-removable;
+	num-slots = <1>;
+	status = "okay";
+
+	vmmc-supply = <&vcc3v3_sys>;
+	vqmmc-supply = <&vcc1v8_soc>;
+};
+
+/* Rockchip General Register File (GRF) */
+&grf {
+	io_domains: io-domains {
+		/* should be defined to avoid kernel log error */
+		/* but no further info about vccio-oscgpi for PX30 available */
+		/* vccio-oscgpi-supply = <???>; */
+	};
+};
+
+&i2c0 {
+	status = "okay";
+
+	/* Power Management IC */
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default", "pmic-sleep",
+				"pmic-power-off", "pmic-reset";
+		pinctrl-0 = <&pmic_int>;
+		pinctrl-1 = <&soc_slppin_slp>, <&rk817_slppin_slp>;
+		pinctrl-2 = <&soc_slppin_gpio>, <&rk817_slppin_pwrdn>;
+		pinctrl-3 = <&soc_slppin_rst>, <&rk817_slppin_rst>;
+		rockchip,system-power-controller;
+		wakeup-source;
+		#clock-cells = <1>;
+		clock-output-names = "rk808-clkout1", "rk808-clkout2";
+		//fb-inner-reg-idxs = <2>;
+		/* 1: rst regs (default in codes), 0: rst the pmic */
+		pmic-reset-func = <1>;
+
+		vcc1-supply = <&vcc5v0_sys>;
+		vcc2-supply = <&vcc5v0_sys>;
+		vcc3-supply = <&vcc5v0_sys>;
+		vcc4-supply = <&vcc5v0_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc5v0_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc5v0_sys>;
+		vcc9-supply = <&vcc5v0_sys>;
+
+		pwrkey {
+			status = "okay";
+		};
+
+		pinctrl_rk8xx: pinctrl_rk8xx {
+			gpio-controller;
+			#gpio-cells = <2>;
+
+			rk817_slppin_null: rk817_slppin_null {
+				pins = "gpio_slp";
+				function = "pin_fun0";
+			};
+
+			rk817_slppin_slp: rk817_slppin_slp {
+				pins = "gpio_slp";
+				function = "pin_fun1";
+			};
+
+			rk817_slppin_pwrdn: rk817_slppin_pwrdn {
+				pins = "gpio_slp";
+				function = "pin_fun2";
+			};
+
+			rk817_slppin_rst: rk817_slppin_rst {
+				pins = "gpio_slp";
+				function = "pin_fun3";
+			};
+		};
+
+		regulators {
+			/* SW1: 1V0 LOG */
+			vdd_logic: DCDC_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1100000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_logic";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			/* SW2: 1V0 ARM */
+			vdd_arm: DCDC_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <950000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+				regulator-initial-mode = <0x2>;
+				regulator-name = "vdd_arm";
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-suspend-microvolt = <950000>;
+				};
+			};
+
+			/* SW3: 1V2 DDR */
+			vcc_ddr: DCDC_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-name = "vcc_ddr";
+				regulator-initial-mode = <0x2>;
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			/* SW4: unused */
+
+			/* SW5: 3V3 IO */
+			vcc3v3_sys: DCDC_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-name = "vcc3v3_sys";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			/* LDO1: 1V0 LDO1 */
+			vcc_1v0: LDO_REG1 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+				regulator-name = "vcc_1v0";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			/* LDO2: 1V8 IO1 */
+			vcc1v8_soc: LDO_REG2 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-name = "vcc1v8_soc";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			/* LDO3: 1V0 LDO3 */
+			vdd1v0_soc: LDO_REG3 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1000000>;
+				regulator-max-microvolt = <1000000>;
+
+				regulator-name = "vcc1v0_soc";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1000000>;
+				};
+			};
+
+			/* LDO4: 3V3 PMU */
+			vcc3v0_pmu: LDO_REG4 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-name = "vcc3v0_pmu";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+
+				};
+			};
+
+			/* LDO5: VCC SD */
+			vccio_sd: LDO_REG5 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-name = "vccio_sd";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			/* LDO6: unused */
+
+			/* LDO7: unused */
+
+			/* LDO8: 1V8 IO2 */
+			vcc1v8_dvp: LDO_REG8 {
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-name = "vcc1v8_dvp";
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			/* LDO9: unused */
+
+			/* Switch 1: unused */
+
+			vcc3v3_lcd: SWITCH_REG2 {
+				regulator-name = "vcc3v3_lcd";
+			};
+		};
+	};
+
+	/* RTC on OSM module REV3.00 */
+	rtc@68 {
+		status = "okay";
+		compatible = "adi,max31343";
+		reg = <0x68>;
+	};
+
+	/* CAT24C32 EEPROM on OSM module */
+	eeprom@50 {
+		status = "okay";
+		compatible = "atmel,24c32";
+		reg = <0x50>;
+		pagesize = <32>;
+	};
+};
+
+&pinctrl {
+	pmic {
+		pmic_int: pmic_int {
+			rockchip,pins =
+				<0 RK_PA7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		soc_slppin_gpio: soc_slppin_gpio {
+			rockchip,pins =
+				<0 RK_PA4 RK_FUNC_GPIO &pcfg_output_low>;
+		};
+
+		soc_slppin_slp: soc_slppin_slp {
+			rockchip,pins =
+				<0 RK_PA4 1 &pcfg_pull_none>;
+		};
+
+		soc_slppin_rst: soc_slppin_rst {
+			rockchip,pins =
+				<0 RK_PA4 2 &pcfg_pull_none>;
+		};
+	};
+
+	uart2-m1 {
+		uart2m1_xfer: uart2m1-xfer {
+			rockchip,pins =
+				<2 RK_PB4 2 &pcfg_pull_up>,
+				<2 RK_PB6 2 &pcfg_pull_up_2ma>;
+		};
+	};
+};
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
