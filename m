Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA44ACA6019
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2026 11:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A2Q4BBUQ55I5Q+QAixqXBvk1V7wFY4tLGFONzCrB2Us=; b=AAy+jrMm46PFNq
	FgGyl19xRwwEt/Wfzj2mV+A/HgEuL2ZGVP7j2eiwttXdRuBJ1MmYju7QOmqCeEIU+xx4iHZL2ZOmQ
	YPpm4KwQEgwBFwURcSIbquaKRgFJQtflmNiCZKGBD8i+fZzsMGn+rTh2W46jD10pOXG1RYc3TSTz5
	DmOntD7D6M1tHGrrmloFJCR7eZ5zbaEiMZOpCCQbmbnhWBwECcVRrJE32d9MveJjgOfiK+eJY9aho
	Ad9Qu0VhM72B5nXwA8ZL0iNDz7jzIZMIKOBG+o9IosKWatf5PVmp6BDudmWjHFG56Zl6XS4o/zA54
	NYQ78u30HDMQHittsM5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF8ln-00000006Ab3-2XqQ;
	Fri, 09 Oct 2026 11:28:11 +0000
Received: from mail-japanwestazon11022136.outbound.protection.outlook.com ([40.107.75.136] helo=OS8PR02CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF8lk-00000006Aa3-3DWV;
	Fri, 09 Oct 2026 11:28:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hzJPQ9PSdgJAGQpL9vPnLKZ27n/aFMLkODrSBTFXnbE55JXTCvKeplPq/iApjHmo4Yt3/BrB8Pe9IizMb70XetKNXlc1UXhhPtwmjYzYDJcsQOtGFumeeq1jC/nCC/7Guvl/8uhKAohAT1o9A6mmFXbqR8Aq8T2OsI2qPqUCiE70kZiyNvwrH+IraC+LvEXef1nHTgD1TaLYp66W6aqsQ2j9KkYwPARcih7r/GCBXp6F+xXCNQah7uIcZ+c8YMPvzFFna4CXmTQDrBHK88wUvhaLgnXesiTbSSIpQ66gaRlmNqVyVuFBD1m/NDKNI5fsWmvzprsMLbGBvYB//eS13Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OosK5I4CIcobXXe3Vi9CAqrvN5UHZQWr6oSTwbvNDZ0=;
 b=fqu6iCxslZub6hj9JFc7AcaW2ev7k9B/nY5me+uHxpVT/tgtnpZLuVXH7SU1lBndWNCf2sFVT+J9jnBSDTCTPSmQCLU+F3oAxsPt7o7cKuQCH8jE7fy+qIxQCQ+G5vC6Mdu/QofaP8fnu3etrjBGVgo+okc4A/yDjE3p3NxlD7mc824WRAxuxVN8O/P3VKFiNNS2PK58vflIfO1bXi4uctLgFX/PpehM/IgEYksRv9mrmkMVu0YP5r5LZXmE+EwQm52Xqm9YlMCWKPjobmu6m7Q1T5xxmHJ5Dkk2T7wsg7JjxYSE9vbkxaPVaaxOtqC6kmNlOx6Io3wXrN98n62ZCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=crepuse.com; dmarc=pass action=none header.from=crepuse.com;
 dkim=pass header.d=crepuse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crepuse.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OosK5I4CIcobXXe3Vi9CAqrvN5UHZQWr6oSTwbvNDZ0=;
 b=YNhOJHYcCnIz2z1xEKG4MwdZTKm0NmHaVPBdkit/05os0u2BI0a7TIIJ+m+RPaqEHTXkwVMNxw+dff975jxJ+1twIRMTMbPmQCt+M+SuxtsF/l0BKNuk343WBf+1oAtU4JpVYdrrepolzBLyG2Imu6uXKR2YKp2x9yWwi1ofaumjskwdhk75rBgh4PGfkx4XI2k5M14n1fsYMZdXcA1yGoBSCjmioJD+NGcm0H+N5WRWOE+1kuTAJZEzSO8Fe7MlPKPtzWVzitmZ9Qqzx2E2gmuvQRBOvqbVRMPUetAZkSb4VS7M4ZyVKRJzIg/9kZ0MibevxqHuoeOQ7EKqLNSqkA==
Received: from KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 (2603:1096:d10:8d::16) by TYSPR01MB5518.apcprd01.prod.exchangelabs.com
 (2603:1096:400:417::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.472.20; Fri, 9 Oct
 2026 11:27:57 +0000
Received: from KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 ([fe80::fe2d:77d4:b78a:358a]) by KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 ([fe80::fe2d:77d4:b78a:358a%4]) with mapi id 15.21.0496.015; Fri, 9 Oct 2026
 11:27:55 +0000
From: Miotsuki Mizuno <founder@crepuse.com>
To: Heiko Stuebner <heiko@sntech.de>
CC: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>, Luca
 Ceresoli <luca.ceresoli@bootlin.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-sound@vger.kernel.org"
	<linux-sound@vger.kernel.org>
Subject: [PATCH] arm64: dts: rockchip: Enable audio on DFRobot UNIHIKER M10
 V1.2
Thread-Topic: [PATCH] arm64: dts: rockchip: Enable audio on DFRobot UNIHIKER
 M10 V1.2
Thread-Index: AQHdV+E6jlZlQ9N7QU+e3NR9clCMUQ==
Date: Fri, 9 Oct 2026 11:27:55 +0000
Message-ID: <20261009112754.60770-1-founder@crepuse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=crepuse.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KUYPR01MB8186:EE_|TYSPR01MB5518:EE_
x-ms-office365-filtering-correlation-id: f9270a6b-e56f-4838-4ef1-08df25f85d59
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|366016|1800799024|23010399003|7416014|18002099003|38070700021|6133799003|3023799007|10067099003|56012099006;
x-microsoft-antispam-message-info: hAoXfF4CW6c5Ny+JJZprsLWUQZN/4xH/BkiepGG4W7uwjRJkM0iGoprLibX1WRK990rd6Rt0OKKa+fvizwGGueevNsU9ZcLBghaW1QqCgfYeS1Ll1QuwVwOfVO862TGRogPZRnMGEd8U2SvnTE3b1r8zHraoyu9IJ9gWXryp6puGaPkbP6cXaoM2HRKKHZU5YpNm3NZNzqS0bJiWC0SnW+gCzvZHSN6b0SNb/w5r17qQQuM1PrOHnoa7IquM2yC8ZDSikgfPvqlocSNcdQk4+NMcrbb8d8XnJ3QAM3lRZtbflPNZmuNu9U3RuvqESdoCJwI1dzxhRMKVKMt5fn8HFcVrZAU/YkiZ4rSnT5bQ5GK7/Nu2EfB/K+0uzFG7SzK4oG4Ch/W8GNHHQZntZ72S6ClwBsULEResuimHONluwJmFqHZLf/eNWO+qufSa6nkd9xXhIUNZdQLfV75/Fj1hbRmcGFp2+7Q5UapkDh4jd3qqiVe2Od0hyksYcptkGM6VV1Af3JlPA7RpYlSCGx0AcT8Z7HE5/3yVZh6JugdYWFvknlPw7ggrs7tyWSalGeSIji2AZ81MYN21th9G/a1RtP/DyuwFUfNmEsHgp4mpFz1SdSWuWwfblV+u5lb/JM2abweb5HZ3qM6G3jlqEJQJnUxrATZnPlJqcWd8W85Idk+InNVCNOIAeqHghPa0cFnbFhBNtnmgXItDLnZ4N70Dbg==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KUYPR01MB8186.apcprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(23010399003)(7416014)(18002099003)(38070700021)(6133799003)(3023799007)(10067099003)(56012099006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?hlFYoAB5BpBeqpnqfvSnSfDWrcKI7mL+yEKl1eWwPBfa9rPRJKhBpaxWOt?=
 =?iso-8859-1?Q?Lp4R1sA8T4nRxjUizG30Ltidjmcn7ORdI19bvsN3MlZ0BEO/OuFpXEvev4?=
 =?iso-8859-1?Q?OjYQfvEFn1LiyyzkKQS5fjUByqRg62jzL0s0qD53ukW8f8mReRafDbVDC4?=
 =?iso-8859-1?Q?h+RJnIOj0FnMGCHy+9IUgETYY9FabDyI15dJ9zZOUKNBJjIcVAlk2TpeWp?=
 =?iso-8859-1?Q?kn/3uhh/e872FrceD3KAuiFk/y8NeHsYHWXwgqCzxupfYfdGT4NvJa7Pch?=
 =?iso-8859-1?Q?c3jTgnBnsQ31/Cn5nTSUw2pO1Ycmhd0V4X+AJM0ufIS6uOIXk4VnoNC2ns?=
 =?iso-8859-1?Q?GK+hxlgLZYIMFm6E7Ias0LOADbcxB2zvvFFUzJX0WnGPGIqiHO/pl2y2b4?=
 =?iso-8859-1?Q?CWk8oTmYmJfX/CNcyPJgN3wC3cXfab5dSc4+vAHeR2F/K6V3cnthTMwYuK?=
 =?iso-8859-1?Q?rr6XgW5VtdS1Btoh4hkKV4pv2IZuZKIMDrQG0XBJFiB8Z+RRuUuvh5AMgb?=
 =?iso-8859-1?Q?EauTEv+wyhMmUKIPbaCoGG7bWOFjJhzreSjbgPOnM7EK8UA4M7fhwKsX+o?=
 =?iso-8859-1?Q?wBBYneHoUFpKZuXnpcNwWfyOghGlzf0YOnqmh37sAU4pvartC0Bazm0ASO?=
 =?iso-8859-1?Q?UXTHe7NQUVc8E9nuNuB1xOMkszdN/ByYtvvYDr3kUkewcGGqQhWhSK6Tvh?=
 =?iso-8859-1?Q?rVuPaBqTSPlZkC7Jd09R45luqjCFegXQg061HguQw/6ExKTFOztJsYuidv?=
 =?iso-8859-1?Q?JPbhdG0qAaG00hKREvUeEiaVE9HD5y3lv0emzLDU5OQ6anbxlcA3+x2gyB?=
 =?iso-8859-1?Q?E+EgGrUcbwUkZjCVraelbVNxkhb/XXzImr1pMBM/D881hWE0ag3Rw4rBfV?=
 =?iso-8859-1?Q?aV9YHM04fzINfKgfD/apvXOny8nFhbwtvHdhmlvX39Q2e93X8I1guXCA3A?=
 =?iso-8859-1?Q?vRvchZ5Xs1sMdFHndMV55kwNcHODg0sI87HlXteE/0042EBpea+/2jy1EJ?=
 =?iso-8859-1?Q?s2rkWH1Lnfwku5tA7PsZHp44L6kQwD8pyye0YbwWFxD0qGA8kliSCakit1?=
 =?iso-8859-1?Q?cmJ0+5tF8kk+QvCihl4Ay4sP/7j6xc5o2PmA6r59SNBKlEUWDwMfdzsaZQ?=
 =?iso-8859-1?Q?Ixs68pGfq/U1FFR0BZK+b9AhjKlfNC0TMZwb59tVjvJP9zh6nPgHbgV3sl?=
 =?iso-8859-1?Q?1/Bo1x+LU+dcCrT1e/LktszIxlaLp9vjBzF9FCI6x61kfP/wunLkuchPP9?=
 =?iso-8859-1?Q?4XJ6vbO9ThhNKKoGVnJFwTgRJMDWQ6xu6pvkpival+dwZ8EDu3jVIE11Ew?=
 =?iso-8859-1?Q?4IsuuRkD47i1jCOSao0CzTQophoZAbHzwrfzZpX3LrmddR5pvVCETqy58q?=
 =?iso-8859-1?Q?VwW3RPDwC0gdV2K44Qzg6+/qYTVa8Yd0T5IngCLnWhle0ILAlX1KPBBb1T?=
 =?iso-8859-1?Q?XS5LxsyPafN74aaYVlOL3a6KS+XJz+w9lPkI0zrOvUU0UoCVXRbJiRLam6?=
 =?iso-8859-1?Q?c8us2NYY4lUJC4vXw+JtK61linv6r4d83PXXOIJT2uM7tha6iBzQzcAkww?=
 =?iso-8859-1?Q?m7obpciMXQL+G/Zquq8PuhPvQeRnlrgVm5VGmvByLMvoDo5A2ytOT2m165?=
 =?iso-8859-1?Q?GYmaoA8MY/UgjDwY1RfT0SEi4CmBoN1SlRyOLNJ1UoasgTy3uykOoskhjM?=
 =?iso-8859-1?Q?SLchakz5dPHXK/3/K8iO7x0YyOI3sTF7oOMLBrvJ?=
MIME-Version: 1.0
X-OriginatorOrg: crepuse.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KUYPR01MB8186.apcprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9270a6b-e56f-4838-4ef1-08df25f85d59
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2026 11:27:55.7597
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9e189589-0b8b-4283-80ca-b0157c0a04fa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 73rB+MV4MA9K8vR5S1FVo5HwTqJnqkwpVJIK+blH6YIn3W0iLNtatIQEBsUUHzRdB/P7nciwRh37hXxfHpt3BQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR01MB5518
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_042808_830707_687E420A 
X-CRM114-Status: UNSURE (   9.32  )
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

Enable the internal RK3308 codec and its I2S2 interface, and add a
simple-audio-card. Route the onboard microphone to MIC1 and supply it
from MICBIAS1, with the bias set to 85 percent of AVDD as used during
board bring-up.

The board does not expose a speaker interface, so no speaker routing
is added.

The board uses codec revision B. Support has been accepted in the ASoC
for-7.4 branch as commit 157f7cba77a9 ("ASoC: codecs: rk3308: add support
for codec revision B"). This is a runtime dependency; the DTS uses the
existing codec compatible and bindings.

Signed-off-by: Mizuno Miotsuki <founder@crepuse.com>
---
Based on Heiko's v7.4-armsoc/dts64 branch. The codec revision-B driver
support is in Mark Brown's ASoC for-7.4 branch (157f7cba77a9); there is
no build-time or binding dependency on that change.

The same microphone route and 85-percent bias setting were used during
V1.2 bring-up. Codec registration and onboard microphone capture were
verified then, with the recording confirmed by listening. PCM/DAPM
checks were also performed with the preceding codec candidate; physical
LINEOUT and HPOUT audio were not tested. The final accepted codec
shared-output implementation was compile-tested only.

Validation of this patch:
- Target DTB build: PASS (arm64 defconfig, aarch64-linux-gnu-gcc).
- Target dtbs_check against all bindings: PASS, no diagnostics
  (dtschema 2026.9, CHECK_DTBS=y).
- Strict checkpatch: PASS, 0 errors, 0 warnings, 0 checks.

 .../dts/rockchip/rk3308-unihiker-m10-v1.2.dts | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts b/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts
index 270ea970c95a..7adef454ea89 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts
@@ -54,6 +54,26 @@ sdio_pwrseq: sdio-pwrseq {
 		reset-gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
 	};
 
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "UNIHIKER M10 RK3308 codec";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,widgets =
+			"Microphone", "Internal Microphone";
+		simple-audio-card,routing =
+			"Internal Microphone", "MICBIAS1",
+			"MIC1", "Internal Microphone";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s_8ch_2>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&codec>;
+		};
+	};
+
 	vcc_1v8: regulator-vcc-1v8 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_1v8";
@@ -117,6 +137,11 @@ vdd_core: regulator-vdd-core {
 	};
 };
 
+&codec {
+	rockchip,micbias-avdd-percent = <85>;
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_core>;
 };
@@ -131,6 +156,11 @@ &emmc {
 	status = "okay";
 };
 
+&i2s_8ch_2 {
+	#sound-dai-cells = <0>;
+	status = "okay";
+};
+
 &io_domains {
 	vccio0-supply = <&vcc_io>;
 	vccio1-supply = <&vcc_io>;

base-commit: f204f28bd1fa9b4cf3e47488ba3ba25251aba18a
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
