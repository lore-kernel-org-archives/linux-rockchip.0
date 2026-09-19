Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 662A4C982E6
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 13:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tacsfAnBDeOd/00w8dAPObsqhgDsMWBriq+S9C4cmyg=; b=jVtUn1s02Yh1EI
	rSixrqHLNoT0ziE+UoBlEC2NAC/ovcF7G/njvxTi4F40Q3KH7IndZAwu4A05bbh9CxEDzzqo8PQle
	E9W82wdfFISv6NeaOl8a+eidP6Z71F0hELjM6FH1DuVrrak9sqvO4GbdllL6VG4IFlxEdZE4YiY/Y
	kcI2ezU/iDpnj/WgoB9H3AqWCFvloKBXl/yxJSrRE4uAA23VzNCZbqo5HOKdY0PlbgAkJTMt1nt49
	HynUjfIOXIJSvNEcU1qjrkonXPil+UuKA65igBamPugMPxgICDsmrdt+d+he07ydVcSriAadIqSAX
	QThTdBmGSARUJQXVkKsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7vKD-0000000GKas-1Zyy;
	Sat, 19 Sep 2026 13:41:53 +0000
Received: from mail-japaneastazon11023134.outbound.protection.outlook.com ([52.101.127.134] helo=TYDPR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7vK7-0000000GKWF-0RPr;
	Sat, 19 Sep 2026 13:41:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KkdZUIhtaFFB9D+PzMEx0zmzvaiRSRmdvHL+OCRVyHXWrKF68lwWbzJev+3hwKH6+JgtnY0Bgr3VQbBQaNInYcCfgQxbXKkpUmhq8t20PLbVhhilsNJl3PTi05E8h8JhHIhja5h/Lfj8VDOBPLnjcFf5qD1sbT5V2bUFdhTViOh1GtcaU0RULSzrAWv9KHGf2adjNghTdUli6s+Si5D50dYWgDdTQdk6wfHvIrGrOCBWwBrzzqjNng06AfcH/kuuxypLpXcqYQOnvyHTJYlCuy3f0NirOwi3EtVUjDadb/7sfYpo8Oqj6ZiCvgv4tuMIKx/l3Qvr5/w4VoRVlLYlCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kIl0wL0tvq09HW6ObRqXQ70T3C1MrWZ/U5O6rMrOZYI=;
 b=MRqIn48IXd0ItXwP2nL3pb2QIoX8FEHIoFTKxZtVIt9ULk1kgILKOwQ2+UyUS18kmUFhcuDo0evy2QxdeApF5SjsUSE91TEaXGD2J6BNXDK/OlCegFaVQeib+n8Zs9i9XobU6daY+X83/OW+gxe5jJ74b6Ox1DoeU75W38zFhK07VXZJdX3joKRjuOiCfr/NpcQscNlT/6iEILSYno9UhKl+uPnVkpeTSOu6aj/PXSxhTNj1hQGhFLWY0NdHP0SfItYMW5bqgvwUJQyDKexO6Zg8WTKVIERPx2rSIwanvtd78cAT4UOiwdtJqyZdxdIlMQFNVV4ho6Bngrb6DhIUFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=crepuse.com; dmarc=pass action=none header.from=crepuse.com;
 dkim=pass header.d=crepuse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crepuse.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kIl0wL0tvq09HW6ObRqXQ70T3C1MrWZ/U5O6rMrOZYI=;
 b=peFCZ804tdQZOigkRNbCwig6mEmYiDxbHtQX0+pRS12+OnTNoBo6lVF7MW4pSodkjFKh/rMQx0tDM4Yssw0gNgPH8JJJ9IiBBU9lCuYe8UC0+OT4N6C6A8RQGFg9+ZYq16ImqJXqbw9b18LKEC2CEC+0ZytvRLboVdXh+rEg97gDLnLdcYre/0RPipwyZlO3Ub/1yG9qOmIY35xVRKiUM7m8n8qxQoWQEiSKjVKDh/VhMuFD92TCqcWY8hab3ErcKlXHwTCp1us5jvxb7r1l4GeHY2w67D2iYYg0fGXLM22u2KinW36VJciWg98AWWlRZJwUzZiDjTxXY8xdMTNGvg==
Received: from PS1PPF6469DE8C6.apcprd06.prod.outlook.com (2603:1096:308::253)
 by JH0PR06MB6581.apcprd06.prod.outlook.com (2603:1096:990:33::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.428.14; Sat, 19 Sep
 2026 13:41:32 +0000
Received: from PS1PPF6469DE8C6.apcprd06.prod.outlook.com
 ([fe80::e60a:2617:6895:a0cf]) by PS1PPF6469DE8C6.apcprd06.prod.outlook.com
 ([fe80::e60a:2617:6895:a0cf%6]) with mapi id 15.21.0406.007; Sat, 19 Sep 2026
 13:41:32 +0000
From: Mizuno Miotsuki <founder@crepuse.com>
To: Heiko Stuebner <heiko@sntech.de>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] arm64: dts: rockchip: Add DFRobot UNIHIKER M10 V1.2
Thread-Topic: [PATCH 2/2] arm64: dts: rockchip: Add DFRobot UNIHIKER M10 V1.2
Thread-Index: AQHdSDyUoUvij9D5qUSYvSUSAiH2NA==
Date: Sat, 19 Sep 2026 13:41:32 +0000
Message-ID: <20260919134125.59419-3-founder@crepuse.com>
References: <20260919134125.59419-1-founder@crepuse.com>
In-Reply-To: <20260919134125.59419-1-founder@crepuse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=crepuse.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PS1PPF6469DE8C6:EE_|JH0PR06MB6581:EE_
x-ms-office365-filtering-correlation-id: 0c57455d-bcd2-4fc2-15e6-08df1653b74b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|23010399003|376014|1800799024|38070700021|56012099006|10067099003|22082099003|18002099003;
x-microsoft-antispam-message-info: DqwO4kOzWheBVh4DQO0IIWSRWvDa7SiwisLX2MnQVdXDNUzDy5RNNKk7TJcXd3rCC+CG/jWRHegPwgV5TPq7pdHP5HbIKvV3CugKeklSBZK1oqsiTb7drLLN7Ary2s/+bA2HpnDTAR0JuPOLfVVJC1TXDyeAi7WNiJnbhzvPezpJ7rwPrA5P676mYRyp+mcyjBW1K8/UDTJM9Ii4v8rr/b2yJdGZDa8QBa0AP7tX6/e+M8zfUQTiyiZf5tjVrwsN8f5oJZGRKPDPyq/jsNnHabWmAFjXvM6IIauh/VjyfRI/p9F+JHQMFGZ8Tj144z50DEDMIz2AXnXonIQY8kFGUSOuPkMzp3n4eQrEF+xJt4ryE+vvoMXxpH8QROPqPfHT2Twxt8i4rOut0ImP9OwiNvxHzn+XT9d3ZLrcG+ZkTCqQJGdtdDLWWv+LqM6e4l44sQPOnZdDPE6196UTZjvCbFMq4Zh5vM26gPJo7lIsXC9tJVtknQ+DtMC5E4ELMFzFri9oLG4j5nkf6iXqgYf+578OjMGYWc/mU/1z07PbEtuOaXm0cIqIILp/7atRGGncQteBHPLNscuJIIerA2rDGS4ELA9jPB7CAk5Zp3Rc1zHXglNKx6oA6gG/kYOUrowQ06/UUJ/G+mNm2A5h5PKNwxLGKtDe6J4Nc98JoU96Ul7AVMhjHcK7HH8duxfOFtKJYeBYh3yKIPnVBsxZVNuALPW420IIqmqwYUe3iHCp/K0=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PS1PPF6469DE8C6.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(38070700021)(56012099006)(10067099003)(22082099003)(18002099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?pw5DnXQ5mthrMyyBoAL3BqZuHg12URHMPqDKuTOfo1IA/MdlEZvCDFIASo?=
 =?iso-8859-1?Q?LNRw/Aw3KtmhkqQdo5Bjxmpns12zD5CVmjC9KBz0n71jJKxeUSABv6pcX/?=
 =?iso-8859-1?Q?tQf0GXTtj+K5zLcjVAJbg8ibJrv0XhcM7I1yzPf1N9kasgynNlRa+EGIN4?=
 =?iso-8859-1?Q?eA1eWJOnXXiPSFowkHJelz7+1VquTzjBiF2zpCfACKdbqHtW6uh3AilmgY?=
 =?iso-8859-1?Q?3w8q9FOWhu6sB0O8hAAzNFQA9YFyMBf7UxIiBwiatA30b+IbZ2tCADSrAg?=
 =?iso-8859-1?Q?6BjE2QI5eHNRHCCYaAxLnwg1SjG7JVWhSXPf6kslNC4FapkztEJjIYjjhs?=
 =?iso-8859-1?Q?zXDju4b4pLtPhYzwuIpSkxj3Bh1buqkwZ5EmlFR0/vc/etrBq/iFQgJ7Xt?=
 =?iso-8859-1?Q?Ylwl5j+XGu8dDr9zbmzBah3pYt9wJ76bLQI7dFet1LO0wMpNBu6nfiSGPC?=
 =?iso-8859-1?Q?9JF7n2+PO76719H+K+FzEK/z7zDPJ3XJPZUYkWZe9VXg60Fznn5V5jt0ac?=
 =?iso-8859-1?Q?uI3tPvoIlCvB12Gj56t+XSbcSdUyn/thexu3DDC7i3zlpX7mCTemnbTjgp?=
 =?iso-8859-1?Q?j5Mb089CcWbYsu5N7cUG7QByZoOIalnKkAZ2Eoqj+RUS3fMRwnGXMoUx8l?=
 =?iso-8859-1?Q?3xFOnIC+omk+e3w2troysxHzu9ckcd4LxNvXFH9rtE7W1P0bdvJLqzLaz4?=
 =?iso-8859-1?Q?E7XW257PvohQfDJ6t/9wR76ILLg0uWKfoslY03PznKsnhzehl2VFJE29c/?=
 =?iso-8859-1?Q?7v6Adp5mRZoL0JI2AqT0FVeHMNJ8gfHHzEpHO2ClzFNzTwTrQcCzXBYNra?=
 =?iso-8859-1?Q?6RwTzqkR3Apn6uYQDSaF5jVLWIKH5HXiD9HEEtbuz6jToFX4NQypufEoo5?=
 =?iso-8859-1?Q?Bt2o2W+qxKI16iZKXe1QZnqRmsLuIafsjfPnal+4m21Y5U1d0hmDH8Klyf?=
 =?iso-8859-1?Q?bf/P3bTYPcslnybtBnqklrW0FSxk1/v1gp43rUdtLykaL/CqL7FCngV3WI?=
 =?iso-8859-1?Q?q3wdSmutjgUmepRoL9Ic9OwdhHUCvTUXkNFA03kNnZ/CvXlU4vALE83W9g?=
 =?iso-8859-1?Q?0uMkRKkxENbBaNWiVEgvSQxVSLViFgj10XyZ0hPJcT37XzlHjgN/TovXGQ?=
 =?iso-8859-1?Q?7V1nj7Yg7HPg8XHcfhDW3v4PnyHEnSXnksi4noc2rSem6Icqe/Oxbqu0uM?=
 =?iso-8859-1?Q?Cqd3sBBZqfR7kunJqQP5R/csQtkryLmvtVZbERudocU7nfEgp6lE4S4zEc?=
 =?iso-8859-1?Q?7PIeUvOtDJiYfF+SEx612Re7KdL0QWcr8cexoKkQnbJCy/9MIillQ1g2bF?=
 =?iso-8859-1?Q?WoZlDbKpIF6K5b1vp8QfWWSyuVLWZx5zxbbsFe0WrZ3q41JjGo6V+2AfXK?=
 =?iso-8859-1?Q?ovtmZjaTjdOlOFTkLVAOEhRiv+hbnqVyknaciBueJ8I9uvyVbmf4i1qAdn?=
 =?iso-8859-1?Q?A5JGP30A9iFiE1l0zbM7TVLY9J/wTqkYzlU/LvXcIx2vEch46aYRP1fJ94?=
 =?iso-8859-1?Q?e4ooAkLOTAOEkIZDP+PDupbfPGvOZGTW1E5+YjX9hRui5c0R/qpz8nxNyN?=
 =?iso-8859-1?Q?r4AG07xrWiaYGpBKLPTsmLPmxPEuOfNn8SVQ/NJjy1D0kdPPLoEMGcRl82?=
 =?iso-8859-1?Q?Mwpfh8QwKZW8M1amZ+q7Kh8PzwqHlPURvGWZKMBxYS0pLl6gz1xyDhwo8+?=
 =?iso-8859-1?Q?Z/BSE9N+Ic8lEo2pBv08IZarMgvGWe4wHE7V0bZ1vmaWTGPwGwIOfhvnEI?=
 =?iso-8859-1?Q?AzCENatg7k6/el/hWfhxU3wT/2NvPwP0eWzBfLPaZS66J2?=
MIME-Version: 1.0
X-OriginatorOrg: crepuse.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PS1PPF6469DE8C6.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c57455d-bcd2-4fc2-15e6-08df1653b74b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2026 13:41:32.2492
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d352272-7d70-4a91-9c85-0db444db1bc9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mdW7bC6k/bTQU4yn+kqtLBYXk3z0y/Q1u984+7T5CNXZsOcS0ilADw+B3eeYiyfVhMpOjRDP7Bt9yaXzID+xCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB6581
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_064147_261323_6A7DAB3B 
X-CRM114-Status: GOOD (  10.07  )
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

Add a minimal device tree for revision 1.2 of the DFRobot UNIHIKER
M10. Enable the CPU regulator, eMMC, SD, SDIO Wi-Fi, serial console,
USB host and peripheral ports, GPIO keys, and watchdog.

Audio, display, touchscreen, Bluetooth, IMU, and companion MCU support
remain disabled until their dependencies and board wiring are ready for
upstream.

Signed-off-by: Mizuno Miotsuki <founder@crepuse.com>
---
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3308-unihiker-m10-v1.2.dts | 248 ++++++++++++++++++
 2 files changed, 249 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index e7936a21c118..6e520a5e3c61 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -19,6 +19,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-roc-cc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-pi-s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-rock-s0.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-sakurapi-rk3308b.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3308-unihiker-m10-v1.2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3318-a95x-z2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-anbernic-rg351m.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3326-anbernic-rg351v.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts b/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts
new file mode 100644
index 000000000000..270ea970c95a
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts
@@ -0,0 +1,248 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2026 Mizuno Miotsuki <founder@crepuse.com>
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/input/input.h>
+#include "rk3308.dtsi"
+
+/ {
+	model = "DFRobot UNIHIKER M10 V1.2";
+	compatible = "dfrobot,unihiker-m10-v1.2", "rockchip,rk3308";
+
+	aliases {
+		mmc0 = &emmc;
+		mmc1 = &sdmmc;
+		mmc2 = &sdio;
+	};
+
+	chosen {
+		stdout-path = "serial0:1500000n8";
+	};
+
+	keys {
+		compatible = "gpio-keys";
+
+		key-a {
+			debounce-interval = <20>;
+			gpios = <&gpio0 RK_PC1 GPIO_ACTIVE_LOW>;
+			label = "A";
+			linux,code = <KEY_A>;
+		};
+
+		key-b {
+			debounce-interval = <20>;
+			gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_LOW>;
+			label = "B";
+			linux,code = <KEY_B>;
+		};
+
+		key-home {
+			debounce-interval = <20>;
+			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_LOW>;
+			label = "Home";
+			linux,code = <KEY_HOME>;
+		};
+	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
+	};
+
+	vcc_1v8: regulator-vcc-1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc_io>;
+	};
+
+	vcc_io: regulator-vcc-io {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_io";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vcc_sd: regulator-vcc-sd {
+		compatible = "regulator-fixed";
+		gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sd_vcc_en>;
+		regulator-name = "vcc_sd";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+	};
+
+	vcc5v0_sys: regulator-vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
+	vcc5v0_usb_host: regulator-vcc5v0-usb-host {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpios = <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_host_vbus_en>;
+		regulator-name = "vcc5v0_usb_host";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	vdd_core: regulator-vdd-core {
+		compatible = "pwm-regulator";
+		pwms = <&pwm0 0 5000 1>;
+		regulator-name = "vdd_core";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <827000>;
+		regulator-max-microvolt = <1340000>;
+		regulator-settling-time-up-us = <250>;
+	};
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_core>;
+};
+
+&emmc {
+	cap-mmc-highspeed;
+	no-1-8-v;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd>;
+	vmmc-supply = <&vcc_io>;
+	status = "okay";
+};
+
+&io_domains {
+	vccio0-supply = <&vcc_io>;
+	vccio1-supply = <&vcc_io>;
+	vccio2-supply = <&vcc_io>;
+	vccio3-supply = <&vcc_io>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_io>;
+	status = "okay";
+};
+
+&otp {
+	status = "disabled";
+};
+
+&pinctrl {
+	pinctrl-names = "default";
+	pinctrl-0 = <&rtc_32k>;
+
+	sdmmc {
+		sd_vcc_en: sd-vcc-en {
+			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		usb_host_vbus_en: usb-host-vbus-en {
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake: wifi-host-wake {
+			rockchip,pins = <0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
+};
+
+&pwm0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pwm0_pin_pull_down>;
+	status = "okay";
+};
+
+&sdio {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	cap-sd-highspeed;
+	cap-sdio-irq;
+	keep-power-in-suspend;
+	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
+	non-removable;
+	vmmc-supply = <&vcc_io>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+
+	wifi@1 {
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake>;
+	};
+};
+
+&sdmmc {
+	cap-sd-highspeed;
+	disable-wp;
+	no-1-8-v;
+	vmmc-supply = <&vcc_sd>;
+	vqmmc-supply = <&vcc_io>;
+	status = "okay";
+};
+
+&u2phy {
+	status = "okay";
+};
+
+&u2phy_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&u2phy_otg {
+	status = "okay";
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer>;
+	status = "okay";
+};
+
+&usb20_otg {
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&usb_host_ehci {
+	status = "okay";
+};
+
+&usb_host_ohci {
+	status = "okay";
+};
+
+&wdt {
+	status = "okay";
+};
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
