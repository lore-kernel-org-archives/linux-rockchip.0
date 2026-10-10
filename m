Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FFC3CA9ECE
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2026 23:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FbudWjAL+I9Tp5F/kse8a0Piccb6YLFs/S5G8KaHEZg=; b=O4pxMgY/DJnylA
	0DnjooRZVEIxiF5SzL03Q3gccheqVD6L0+lU7o/j3Bxyha4h/t14PtmMAEMH8j1GhzKK+iQdVmZoz
	JaQDDRDRR7cifbooC0H65/mRiERGYm83HQvfrTVFG3MacZ6DTOGHvNezSUZ7BTtb6+HU8wXNmwWos
	7mc69hFeo2n8Stu0ZsNkNGCBhgnBqeNl+jpLg74n3AcQc4SXoA618M6GS7UG4FRApGA0ZHMHhy0YG
	JapEVH3o5mqsPP0/+Pc1NqtD57X4iH7QPx5EmA/4pdh8o7WNtkSvRmUCzxmOBGxiFejRJlttMKVxD
	7+ZBaaaxk3lFHLcNs39Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFgVI-00000008XLg-12RY;
	Sat, 10 Oct 2026 23:29:24 +0000
Received: from mail-koreacentralazlp170130006.outbound.protection.outlook.com ([2a01:111:f403:c40f::6] helo=SEYPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFgVA-00000008X8J-1H6Q;
	Sat, 10 Oct 2026 23:29:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vnrNR9iTQbIlWKTld4SCX+YAbVGU0RLSLf5npnFerhtnHCrA1zYJ0xidBxQjIsZNQuFb3/kGMM88u1ultJ1hmZ6BgtrlFv3P02mwyJwfAVOG0Hsb5UQ34ymB2VDygJbe1CHDuAXuZ4e+KOE16cf6wvvtUdSrL4Ja3cj1Nl+mfkA+fUH+8Ov8bTZPUL6Lq03lTfF0Svq6qvJOXPKrlKrcc2qEoK4IUFIMLsSZuficRHGhfGb3LlvRtA0kiq4z84SHS7Qm5fAINnL3fXlkk8VJ0HCG77WSD+1G8gFKcacA0drKxUVKhckVDUaCCVrkwXYIGxUv9jNqPXOVxbciReeCIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3nib+XQhHn46elPT55aySIvy1nFy+5k86DfpGBdSRo4=;
 b=vwqq/JPKaVU+UIuac4eG7ceg7MxirOUxbUuRxg0C/ZeJhAaCNBEKaBGDPJWPGV39+oWJMG8tbc4ipYoHVGMt48yZDmf3p1/9h+7j1bd0gAN1ZeBlnYSFHF1uA/R9DldS90INZUM/ISYdWZD/bL7nOYhUoMikY2CtPCgukyFD67V12KEwLoVUbhaN1zhaI8xuNCuaDlNIfmtQ2rJv5alg8VSVlB8Oq4OsZnIRo9zGBeAsZiRr2rgiQ9dSrNHX2ajFZqh+Ta6yV6SefLN9F1xfZjeFQ+sD79hkG1zMAULhs6Ak9OveaukFs7Nkx97E6usDDYAqbxSPMEjzzqRpHSHj2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=crepuse.com; dmarc=pass action=none header.from=crepuse.com;
 dkim=pass header.d=crepuse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crepuse.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3nib+XQhHn46elPT55aySIvy1nFy+5k86DfpGBdSRo4=;
 b=RV/YMVe7rhO6z3aWBotymcNznhZKGqOZaaKPZ869qK2AMOhIVzMVBfymem1DX8ziOVRTBK7uOTxwZB6qaeqyT8qYw+72ovjugrJ0fMJQB2vwHWM3Bewn2/aCCE5na0sFFc721Ur2T8qEEWncatFewktNaI8R9T6kMlFdUp4Nx8cksT6yskK5WO71SjwfaqLsVMqHU+3wdPIjU/TreHyY7i/5ZMYiiIFKgNsIsLnM7AmId9xc1Mun9KxYA0icT4mgt5q1cehc4sKgiAzMuCcQpDXmU0LBhugwFZPsaW0zz+X62gXzieXLElcVyey6f8r3NuYabPqjkVcRtKY4i0z8xA==
Received: from KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 (2603:1096:d10:8d::16) by TYZPR01MB4380.apcprd01.prod.exchangelabs.com
 (2603:1096:400:1d0::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.496.20; Sat, 10 Oct
 2026 23:29:10 +0000
Received: from KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 ([fe80::fe2d:77d4:b78a:358a]) by KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 ([fe80::fe2d:77d4:b78a:358a%4]) with mapi id 15.21.0496.018; Sat, 10 Oct 2026
 23:29:10 +0000
From: Miotsuki Mizuno <founder@crepuse.com>
To: "heiko@sntech.de" <heiko@sntech.de>
CC: "conor+dt@kernel.org" <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "robh@kernel.org" <robh@kernel.org>
Subject: [PATCH] arm64: dts: rockchip: Enable touchscreen on UNIHIKER M10 V1.2
Thread-Topic: [PATCH] arm64: dts: rockchip: Enable touchscreen on UNIHIKER M10
 V1.2
Thread-Index: AQHdWQ8miAWIfw64yEyob26Vhs9d7A==
Date: Sat, 10 Oct 2026 23:29:10 +0000
Message-ID: <20261010232908.26968-1-founder@crepuse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=crepuse.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KUYPR01MB8186:EE_|TYZPR01MB4380:EE_
x-ms-office365-filtering-correlation-id: 3b2778aa-d255-4a8d-e7d7-08df27264962
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|23010399003|1800799024|366016|376014|10067099003|261009223027099003|38070700021|6133799003|18002099003|56012099006;
x-microsoft-antispam-message-info: Qzc2of2vcb6Xiu9S/PG5d+IINRRHILJD918OcqMZEdFFwSeloiINDuNgEibInSdhcEldE7uX6gD1LMRYSVZJwkwQZfSW1dAR7zKo6k9eip7oi4QH8JlKiLZFwSKcrQ8sKobZavJLI2UYLVltVsQSaPdf7gZmwV9d2dZOMLVcOTJhSv46wWJvvAJ0Wc1I80RGz3nHAcT/evJT9S+31E66KC5OYv8CVcZGbte/fyJS/xzuCqWhVNIl2P4i2oBTRtGTL3S5xowblA+m0gDQYUsu4Gegeleiyl021hcYcMQTHQWNcMMRzVdyzXxP7SivPDgIfQFCyWUdacZlRtHvkSGZzSv51jqCG3lzb21D8mxOT7rMyXN68+5prXHE9VwMRfHXfogNul8G40vJgat7b8CzKQoaCPvKwZDl7USCSjVDZlNxWv+Op/OrCdRbUmsxhoK9s1sB5cnSnrK7O0wcM10OtwSOHjYmIed/BpC+0iVDFiB98CcxLVcoNGsJIOm5Nr7rFSDx3+EJ8fWSkBeSOQNirmxiHJR62AuWqY9haHvo3dOUw0hnrHxQl+mpKCkOKCUL0mGfTRiqZ/gagVCcxIRVEEwvhPVBA8iIIbPDLdIBrIYzr9c2QbkvARj5WnYGjsrRnBtlNqOg8pOgUOi3J5NuJRezErKkxfNoz974fKmSPWuOWrlyB0+n4ryF9bg4hOf9M9m9WI9g6n0L/4HKual9b4tOLv4oOzKMoVFAbKm4yMg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KUYPR01MB8186.apcprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(10067099003)(261009223027099003)(38070700021)(6133799003)(18002099003)(56012099006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?mt6ezFpoAbDKiJa1kxpLaFLWZFXBtzLX1gRpAXTH0EnV2sAh+6HCyikv7h?=
 =?iso-8859-1?Q?aIsR3oATre9WmoKmBWwexluMvdIRruzZRXa7wloLps1Hz/DVDQirFPhY9d?=
 =?iso-8859-1?Q?QvlGbRSe2laVtcB4FlnwTYdKoqqR/vf7q9Qh8dUfwtzhQquPnXkSQgXF7E?=
 =?iso-8859-1?Q?JVbxcvWylMY3oMecod8N4EIY2YGxzl9iNTBcPXlyt3UMWejO9UYRcGXF6K?=
 =?iso-8859-1?Q?uoPgByvMwY9eS+4mcqCq7QD3dmkJAwDuNFk2Agz13I5wU+1ZC/xP/R7nJV?=
 =?iso-8859-1?Q?BqNcmx1sF3VqttknzaycsrdhP7eW7Da+3WGqEYgKB7lrycB39E0K6QHyo0?=
 =?iso-8859-1?Q?KSUwdKB89kZj8VxHvO02AxSRzOu4TXJgQ1IdTFSpsfplngY7ekA1B+agN2?=
 =?iso-8859-1?Q?BS4xnsE3f3Bk+ht8RHV/LskhnQvpvngEFiYq7gRzi2fOmlUp3++34Iou+j?=
 =?iso-8859-1?Q?tDs0sokGtYrjlxHIaQXKufpmdxfSC2J2uspwfUyHVX3mzHlpaZcADZhMmT?=
 =?iso-8859-1?Q?iStHtM2kVYQ3YpFqqAtpV4XTxZgIP2/Q9qCixo7OUlusQ64V2xtV8UnDwH?=
 =?iso-8859-1?Q?NmD25+fFQ53kOBCEs+34y2t4zqXH6WAXZS/bw37acLlBPs8gFWROq2FTLr?=
 =?iso-8859-1?Q?BBwF93spM15CGqfkIUcpQpZ72HsjFaPDCdcT1w1bz5qrrdkJeilpWorvjl?=
 =?iso-8859-1?Q?EEvEVU2RPmhh+YnslRxqjscFl8jm0L4AmHnXrRN2JPsbveDQ60qE3GGHjp?=
 =?iso-8859-1?Q?X3kpPOm6UgpR5rnpcXlblt3BWofNtgk/PnHtE33tPDrc06VeNKmA7CxG0g?=
 =?iso-8859-1?Q?zgAss3hNgNDsZt4YsDDj/T2xsvAbUP6HC6mO+HNcubXnbHgVFqQdAPOrVT?=
 =?iso-8859-1?Q?0Bie0cP4TVtKMMh/qcUz6QPqlZDONzruIYsOPUPyVmrcioub/wvv06Fww3?=
 =?iso-8859-1?Q?gJoJr7QYmD2gcy0+u/VY6G2ybezu5j79NnWl98OPXVa+9f4PfihV6dk1SP?=
 =?iso-8859-1?Q?r9STq54701wN89Qb//LN86Gq8i+Lnl7Zoz8ru4kJwDpF8q83goOYfd+2EQ?=
 =?iso-8859-1?Q?P9k0oP7PxmBN9RF0wj5KcnQVperBu2fgt/wwTxxKR1K+Jx2/a+tlXiuucr?=
 =?iso-8859-1?Q?1kUAbYJmy39YdokbuycsY4cLudUh/JhLohR3pEffbBHi7Ge0NkHeMF8AKq?=
 =?iso-8859-1?Q?QS5ER/sx1ImXhLEuXvsx+rtMZ6FGnUAtd2mQB+o9mnoKiH+9FXAd1Icgdw?=
 =?iso-8859-1?Q?jMbrUUuYxciIpIykZqrYHROMAdhMcmO3KJS4RkfxgCBG7wduuZ8IgIEbp2?=
 =?iso-8859-1?Q?g5R0Z0H4tjPe1lz/vLD7WvxcbNmEaBnu1C30OfQ/37bD5xX04y2ECxluiv?=
 =?iso-8859-1?Q?d1nBAihmM7uY09QfmyuS9x/PtF74dQvX3Ou484pk/1lGwv7MPws8G3kXCd?=
 =?iso-8859-1?Q?fmEIr+DnQJm4CTsJNGuaHamWPXXSM1OU2D+Tzm2xWPr1XC/p9Bk6yD6Nnp?=
 =?iso-8859-1?Q?AT7iq2H8YcVtAGRKK3TkT8E3g1K25dfJswVLIe846vkNsDsq1Q3aBNQJiO?=
 =?iso-8859-1?Q?agBxNxYlPvlIxlZVS/1JD/3fr7hg0FN/nT9j87f/PXzlm2dTGMdI3im2MI?=
 =?iso-8859-1?Q?uf4DzyBGOUcQGT93Sk5L0sHSzjhF84tkRsh0xgICewMKcfzt897hSX/+81?=
 =?iso-8859-1?Q?HEpdkgQN8OELwlKXdOgalipAJccNpvWSYf+jMa0b9Y2v8KopMEzT2A+MMU?=
 =?iso-8859-1?Q?J3U6RDwrc4YwjyDQVE1ujOZL/0k4x7iI/xhsla4kraKk6E?=
MIME-Version: 1.0
X-OriginatorOrg: crepuse.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KUYPR01MB8186.apcprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b2778aa-d255-4a8d-e7d7-08df27264962
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2026 23:29:10.2375
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9e189589-0b8b-4283-80ca-b0157c0a04fa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: omVew64FUv/0zARFU2EYQUbXqUHt0Kpdh0RKH/l2FoiVhlMkxQH4P8p+fk4yH8MkzYJwFzwfSeutUpZ9J68z6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR01MB4380
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_162916_352032_96B41DF0 
X-CRM114-Status: UNSURE (   7.65  )
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

Describe the onboard NS2009 resistive touchscreen at I2C2 address 0x48.
Use the tested inverted Y direction and raw Z1 contact threshold of 150.
Retain the native 12-bit ADC coordinate range.

The I2C2 controller is enabled by a separate board preparation patch.
This device node is independent of the display binding and DTS changes,
and depends on the separately submitted NS2009 binding and driver.

Link: https://lore.kernel.org/r/20261009144729.85832-1-founder@crepuse.com
Signed-off-by: Mizuno Miotsuki <founder@crepuse.com>
---

This board patch depends on the common I2C2 preparation commit and the
separately submitted NS2009 vendor-prefix/binding series. Those NS2009
dependencies are not in the pinned Rockchip tree; only the validation
branch imports them unchanged. The display series has no such dependency.
The prerequisite I2C2 board patch was submitted separately:
https://lore.kernel.org/r/20261010232831.26908-1-founder@crepuse.com

Validation: native DTS build passed, but native dt-validate -m reports
an unmatched NS2009 compatible. With submitted dependencies, target
CHECK_DTBS=y, direct dt-validate and binding example checks passed.
The exact combined DTB booted normally; the tester confirmed touch
direction and operation. Capture: nine down/up pairs, 208 frames, no
SYN_DROPPED, final released. One E0 ff ff invalid sample (-EIO) was
recorded; this is disclosed for review of the pending NS2009 support.
Deep suspend and calibrated five-point coverage are not claimed.

 arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts b/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts
index 0c03f118378a..7ae3cc8a86e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-unihiker-m10-v1.2.dts
@@ -134,6 +134,13 @@ &emmc {
 &i2c2 {
 	clock-frequency = <400000>;
 	status = "okay";
+
+	touchscreen@48 {
+		compatible = "nsiway,ns2009";
+		reg = <0x48>;
+		touchscreen-min-pressure = <150>;
+		touchscreen-inverted-y;
+	};
 };
 
 &io_domains {

base-commit: f4f7ecd2e0e8debcbab4789717cc79d570d665e3
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
