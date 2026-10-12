Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3F51CA9EC5
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 12:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1Fo6TejwNNmQR4oLh2VwS6ZELjUSiyd+cyIFBnWLSc=; b=fQsk2MK2FPR3Jg
	LVPoVxLFiST3QL/JGVYZog86yInmMaG5Z7Z/BlMkpKx6kgtnRWgpbjYTisy+UO7GGlkeDgDg+ct7w
	kB3kvEgzxXmWlnZF9CZlnW8JbxGg0f4+QDvUCyV7sWr7gsVQ4W7jqxuIjrzc1sIQbfXpd4s66vjBW
	fW+BVAVzhyFTl4e/oPsfl2+0oCjjhe3l/6YhgupyfiRISfuJwZvPVWfrJSsngC+1Hp8VlYMsMZJsf
	HiVsjgbV/b7/Mrj8xc3JvXuX8fi/7vCuS1jXPY1nV/VUyvFdZEevVAnsIq8cirAz3wUB0peP6Xa3z
	f/Ikr+EMXbuWryi8PxsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGEyW-0000000AQVW-1Rjd;
	Mon, 12 Oct 2026 12:17:52 +0000
Received: from mail-japaneastazon11023078.outbound.protection.outlook.com ([52.101.127.78] helo=TYDPR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGEyL-0000000AQLA-3jb7;
	Mon, 12 Oct 2026 12:17:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WrifI/0ghAiQzHkIxSNTurik0uGUxohI77Z0i/Reeu84HZ8oOr/A0sHN0tixrfoCJ/nZvSwwHyI7K1Ic+qImES15AbhAGZ8bB6j+s79vAIYyRZW+CzPtYkNzGKWXWJHLHIWaBA49Rm//RFnkax8i+RJuu4i4lnJabHwkum9Tv+7AcwJmeps4B+l0MzB+ZTF3D3hu8rhmOUKdXyZ2YGlFenj2aSOP5wM67aF7utCk+Xuab7wEwy6lZ/DNvnc14Q/gImlVuMeIR3gEvBzOJrP3mcAhyEr85rGjOEe7ZJ8tV+Rxa4Q9X2i613OlFGtehLO+rhR/SLYjBfsK+JmDHHQRfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mp/ezOhkHiLlOfU1wHjxIAlCklFjwsjzEmyXlFHR7m8=;
 b=UqphgBHV82eZsU+0vzmsSuYelLydaBKg9RnbtFEOrpJgkC35diAOdci1l8PAljHXQ1OegxsiiBNtEbGRYptyGTRqClfUqjqnoKFoCv1qYjHjVWwm7Ujb0ibuqXkr3fRT7lOtuOnorStc12DLtRZTVscDoJUUN5Tpo+jIW22XYTkVP+iBaXMs1DD5EOMNtlx1kFEryNqVbTHG4x/9j4wmZoGdP2sizK7AbxvdsCDXXBgez+CBOuOt63Pg9FonT2VHTQJQelEbIX1+z02lAq83RY8cjog461DPMF9/UrjxtMan9FpJM7L2U90ozaMRnFibtVFdW4dUUl53gqvLTyASWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=crepuse.com; dmarc=pass action=none header.from=crepuse.com;
 dkim=pass header.d=crepuse.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=crepuse.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mp/ezOhkHiLlOfU1wHjxIAlCklFjwsjzEmyXlFHR7m8=;
 b=ZbrZ0lFW22/JIG209RqoedbIJd2aqXUBlVkBdlTNzsUg/c4mDwy8x8wIFBQ3LOVRfPjdxzr5lZfYtjFq/2x1LQBMn+OdL5gApuWPI06FiFPl70O1SVup1kNpBMvzvGKtLEe+gLt1f7ePhmfm4DUKP6wI3MendInmgY5C107v7kFexCFPFM7f7lZ9XWkhs9LFxt6p8lJKC7SpXgiNdNs+7i7i/uacyqimzITIiHHLVphyyoNfyhVR38QPzUHFDWiS5hJTEpf5XSShdFGiY6joAkAcrbzYFk5HcKrdCoAVTdwVgvcfwFWlAtm2awaqASE2zzO0+CzGOYOUpNc5hXgJ6A==
Received: from KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 (2603:1096:d10:8d::16) by SEZPR01MB5629.apcprd01.prod.exchangelabs.com
 (2603:1096:101:136::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.496.21; Mon, 12 Oct
 2026 12:17:18 +0000
Received: from KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 ([fe80::fe2d:77d4:b78a:358a]) by KUYPR01MB8186.apcprd01.prod.exchangelabs.com
 ([fe80::fe2d:77d4:b78a:358a%4]) with mapi id 15.21.0496.020; Mon, 12 Oct 2026
 12:17:18 +0000
From: Miotsuki Mizuno <founder@crepuse.com>
To: "heiko@sntech.de" <heiko@sntech.de>
CC: "broonie@kernel.org" <broonie@kernel.org>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-sound@vger.kernel.org"
	<linux-sound@vger.kernel.org>, "luca.ceresoli@bootlin.com"
	<luca.ceresoli@bootlin.com>, "robh@kernel.org" <robh@kernel.org>
Subject: [PATCH v2 1/1] arm64: dts: rockchip: Enable audio on DFRobot UNIHIKER
 M10 V1.2
Thread-Topic: [PATCH v2 1/1] arm64: dts: rockchip: Enable audio on DFRobot
 UNIHIKER M10 V1.2
Thread-Index: AQHdWkOfuON+cvO8jku1SFBdXSbE6Q==
Date: Mon, 12 Oct 2026 12:17:18 +0000
Message-ID: <20261012121709.53418-2-founder@crepuse.com>
References: <20261012121709.53418-1-founder@crepuse.com>
In-Reply-To: <20261012121709.53418-1-founder@crepuse.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=crepuse.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: KUYPR01MB8186:EE_|SEZPR01MB5629:EE_
x-ms-office365-filtering-correlation-id: 450bb1db-0005-4fa0-d4b3-08df285ac278
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024|23010399003|38070700021|56012099006|261009223027099003|10067099003|22082099003|18002099003|6133799003;
x-microsoft-antispam-message-info: Iunb93hCgQ0890pBuEUl4yAFw0uKmgnfWCInvkrkalaaf9CKgKnRwyo6BC1Jsyue9K0Ryq1paIpEpr4NbIOrMWr3fFcVNmKmgbqig5DeC610kfCcFXcmflMwOlJRJmre4z9Az7oYWN+TVz0lSqpuzRwu+w7oxU582SgcARpek/2vCcpaIWO0Dt+tNmfeTiYd/CwCRHtp9g3hpB3HI0xShuTwqPouE+P3krpGFfHRd51agp8GTw5eWpVqsztg5ZBjZsyBAPcUwJKyC+/R+LF28KqcV/Qawvl7NOs+9nwAUSYFsMADEfUjEtZd2yOfRYcM3Dvu3y+v4z3A65uuywiDgKn0/uc0fzhoOe3Ja+/BM+KVOutg04bj5VwjCWSfFHShSq4fmHUhTQbBPth4hdCYWMfyZVqwulOfqrmZGhvwJkOExAYn23kd3F2kFpcIJVwjdYdUMQI/MzPTTuwi0FX1hnCnd+EKjQ0LaXb1R5SS+51CKsEevQZBqvk6HT3eCZ8FoSQk28ANAygo5lHzvi5L8t3Ih4a2mlZEY0Ss9oFv2yDUsjLoYUtc+e0z5N+An69OhBiJ27EO4NFmaTZW6ihpw4pOQEAknfvYoX/B4KxjYCOsrFgg5tc1cY5kMD40Y7B4qR4XXXYUwtc6SJ02lt/uWlsvZyVhi2jIvsNsPLZOoVmieT9+1j65IoFosKwKXY9+ixWPaBfpDdK9kCMRpI3bEA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:KUYPR01MB8186.apcprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(376014)(366016)(1800799024)(23010399003)(38070700021)(56012099006)(261009223027099003)(10067099003)(22082099003)(18002099003)(6133799003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?83ODOT4DQ3JzsJ9Pqkajgzdv/jmrdiTPrqc9waqBJfvVM51+N3aHqOhZoR?=
 =?iso-8859-1?Q?IoDBr8jOCvTMfh5zrt92hJw7X7I0R04+/1UQEgMSp4cVA+YOLWyyP4Dy9B?=
 =?iso-8859-1?Q?L6uk2nhc6HhWWlQ2b38y29mdhoCY/JDDZ3fv7sM07IT0cD+YHxN1XED7ps?=
 =?iso-8859-1?Q?07W4Co4p3BZfq3bDjFjzdheziIZ4PHixuZYuWxUwKzjr2KQZ4iFXO2XzQN?=
 =?iso-8859-1?Q?cfBaw3IlFAJemCDrP/kWFYFTzX6ecxQ5YDnUXjHuZh5onKbVE3QWfFpiqF?=
 =?iso-8859-1?Q?IczuVrXp9iYxGkdOPD2SyekBZMHx0DFqPFRnczA9laDG0WZTYw8jlA9xjt?=
 =?iso-8859-1?Q?1OvMGmJGtJQNzrrzMCeHsY+dCX71r82BoS+qCMqHTeqFVyh189VBHJt1rz?=
 =?iso-8859-1?Q?5KZfk3/e8otSceyfNAu0QO3KdCabTlxpD8xRiRT1c/XSJ/YeWFdYEXvXw6?=
 =?iso-8859-1?Q?PzmCdgnFUKvycjLwjR/j26tt4RgQvfVsv94u1qyz5Mh5J4MCW9X59iFnYS?=
 =?iso-8859-1?Q?MbJvfC06r0TpFKlRDsfqEtLH70Jp4lEelqgx3iI0sCFeeyRYmFi9lT7O2o?=
 =?iso-8859-1?Q?Ke3MnAgqlba9ks4pSM7/j1QxiU/5QUP/0AEituPyuR8UI5N8ZHNp6N3zgO?=
 =?iso-8859-1?Q?gbgLvERiPiWJfl9ZZznsWg7vM0YkW7CqQnUOFaW+D2qM7SsTyVFC4aSkdU?=
 =?iso-8859-1?Q?6p2pFuQ0+u6aSpym1V53MWF+sLMalsFxUvo/SOtSn6aWkJAxH5f2PjhVrM?=
 =?iso-8859-1?Q?7ca1vktUL9YS7IuQtU1HWRlyIYwgHssv412RAH6ePKlzG60rN7I9wGW7cu?=
 =?iso-8859-1?Q?T0k3hbI6JLA5JFhM+44d94JHNHjS1L6Roq1gDEn0X3VaJjM0KQHiSWpT+x?=
 =?iso-8859-1?Q?PnwggkMJeCYllrMx4PCKZ6GlKcd67pIqfJH9r7AvD96EcrgVUMIw7JrYto?=
 =?iso-8859-1?Q?zPuVdMxm7mYDxmiM1V4dRAmK4Fy4VR07BrkJoUgKB087W9PQaytFDUk818?=
 =?iso-8859-1?Q?cg2F1j0GHMDJLazMsUJ9UeTKmy9ncDCkXJdoiGKBxKpRAaLh3t7DNTyvKX?=
 =?iso-8859-1?Q?Zb4veZ8686coJQ9dIeAfot3EuYB3OzOQ+Df7K6A4x5buvOkZDM25P1lZx/?=
 =?iso-8859-1?Q?zuW5Rc1AX3Nkti6bi/5mClLTir/ivElP09iyCgeaOQYInhgjT5IuPJ364h?=
 =?iso-8859-1?Q?BhgKzoZ7a8hEYXJ1f+sUPjeVsVNKDJhDZmu8i/8Q7cQj0Vp8EYUhJDxcK3?=
 =?iso-8859-1?Q?QH7qHzLWQje883bcRxdymcFXBPjq9X1Sjb0NKtaUPHkdnzeny74aPp5bIA?=
 =?iso-8859-1?Q?Z+zBwozppi5dQKQwzk7JbHCxnrG1Z67839llPkmmkYwiFy+BlwAbS6CpGY?=
 =?iso-8859-1?Q?06p8fqldGgGnd6LHe+T5OZ0aizfNAegZuFFIpG22m6tkKDRdnDMtTYlx98?=
 =?iso-8859-1?Q?+BAtBitb6rtNIS86rwW1mMOkzTB3ho5mC0X8BOsF5QTBP0uwU3rKVrxSDP?=
 =?iso-8859-1?Q?jvnO/0M+lIpDzfVJNOaRZc36sS6N3T8lQoj9WnBcqMAoHvH61+CbzVpcsc?=
 =?iso-8859-1?Q?GvBvzhN9t8rPqVCZAssYPMlyyoZ5SoBotCu6o++owjadCilK3FQejfL6VO?=
 =?iso-8859-1?Q?nVYfnImBn9RJkjHfglmRDavFFXdeq6YGbTeYl5iO/PAO0crjFOZRXNr82d?=
 =?iso-8859-1?Q?dRjgskEr0o7hDqhl9omnXb/fVYA6Vnlm7J7B6JNgkdn0KtCDkpOyE/r2Sh?=
 =?iso-8859-1?Q?ziuN7gq3gepsJgHJ6AIDf1QZJjNcVTFquX7ndIozM/IBt2?=
MIME-Version: 1.0
X-OriginatorOrg: crepuse.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: KUYPR01MB8186.apcprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 450bb1db-0005-4fa0-d4b3-08df285ac278
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2026 12:17:18.1704
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9e189589-0b8b-4283-80ca-b0157c0a04fa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6p9nHggbwHyXGaThkrplXKR5DeXLxiJsrrNUnIR+9Rb8LuIFqhMOyz7kaw4vO3WoDjxYKSz7xj0ixz4H/dBVfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR01MB5629
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_051741_939024_46933BE6 
X-CRM114-Status: UNSURE (   7.48  )
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

From: Mizuno Miotsuki <founder@crepuse.com>

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
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
