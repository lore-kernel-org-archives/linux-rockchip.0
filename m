Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB3B0F532D4
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 06:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rPxB1Os698xrKAZD1uZvVXZ+C3l0sHXkcRVLtQvOxg=; b=XMK64R+d6OIc9E
	MFd6sHfy8kKtiPtLaRy6ad0vQdgZ0y/y4gi7eU/OD9RoQKcA0GyBfROT8NiqKxiy4ftPR87kYkGsE
	3DAKNOXieVKQbPUtKJ/SC88YcQV+U1fGZgX7tzIECrAaL9smm1dSZjPJDz672mPiwuyTol9n5CRs3
	7yssI5h+iReimvzPUHL+Q9OBP9dbD93x4+/gIc8rCRqFrPa4RkrP83GSORBscoJ+PUOBJoYF5qB0z
	3wTrGJGwz66pL6n2sbfW6yhUy+/fZIGELdT1Q+3DvNWlWKW1nAE2hEdRlSoDOn2LKnDWIaApVHi0Z
	d+btZOWX2JnJPEOXqn0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4vIc-00000000ky0-1AIC;
	Tue, 24 Mar 2026 06:31:34 +0000
Received: from mail-norwayeastazon11013057.outbound.protection.outlook.com ([40.107.159.57] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4vIY-00000000kwL-2MoQ;
	Tue, 24 Mar 2026 06:31:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sOqWKmdrfmyq+NCwujQO0LL6JRx6j9+cxzDsnLzEpFGPwafjIqyssb7W/3647YHDmzR7EvgDXGdN946NJ0123ZzW2Z7ZT1q7CocxY27/8QSOgu6q6VzSADNveKWc6i6k5m3cMsGehWJPWejy98ETaazx3P7tNoKsDMLWoBjmZ5naMpwN5ZG9MygeN8heyR5UxxgbhG+7CRRGxqbrTDe5IAhvAJSNRv+UI71EfBuSFMynnEj7fcWuQZ9IHGAJmhCRNGyFe3Y2+iwLefWEMXsJVfzsUKu+IqIldheV4nGB1dfmHvdl2r2QrQc3pgZqWD9Hz0eElNlsLu4kQP4+C2MoIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VXUVLNlInIY/K7RSU+zMixLJbG18YWzwu33MYUqBO74=;
 b=UOkn6yLe3iGxpI+kAu/AQHspRU++EizTJ52TlnQtQmuyX4gLhEbFrt6anubw6BKk8vktdw9VAuzYrXG2DIToe2MS6IPUYJOcwtpCnVthNQBLAnHmE02Zg4tm/D1leZShqR0aSW92clEtglNaMo/HKizZx4QCBWW86AGdC8OKsu4mCoJSe9mjlDrRL9NHUxN0Qyoc8kcEezTjj1Ctfwu5cpn2NaFlJorWqGq/rBSiZORWQndijhFSqCUX/uY8LHL+jG4n+8u12c12vH9Vo/mlZUECkjV5e29Dkcwkn/HwO78GRrWc2m1XTRupYkSDUrMoih/ndnSjjWXBzoXEJsRZhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VXUVLNlInIY/K7RSU+zMixLJbG18YWzwu33MYUqBO74=;
 b=BiabtNdODq/mABE5zHG18iDjGHVm9l9a0rrJgmzx01+nJFf7EBazt/nKZDveJOklz0avufYQ7/jkzwh5FuLJfKGNfjJrULp3LmJrbFCYEvWr8MSIsViSY4Dy48UW/VNEFR2fOPbfEQRb7w4onKA/Yiz52Z2hBztZYemIonZfHjXY+Le9eIHl7mo7bEUuiupzCCKqD8Bc+31SvftxGIN+49R1HnjJqkUozyD3iP0jVENSTjE6X41FTUFK9QjdZeaJT7VaJH4gNUcdOEZqznKq7I9U51bq/1783jqfHnrdUWJNYRhzFjEFd0VvMJVanWhkO3rsWGyMHSYvUyu1iWmkwA==
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com (2603:10a6:102:1da::15)
 by AM8PR04MB7298.eurprd04.prod.outlook.com (2603:10a6:20b:1df::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.31; Tue, 24 Mar
 2026 06:31:08 +0000
Received: from PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e]) by PAXPR04MB8459.eurprd04.prod.outlook.com
 ([fe80::4972:7eaa:b9f6:7b5e%3]) with mapi id 15.20.9723.030; Tue, 24 Mar 2026
 06:31:03 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>, Ulf Hansson
	<ulf.hansson@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>, Romain
 Perier <romain.perier@gmail.com>
CC: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-rpi-kernel@lists.infradead.org"
	<linux-rpi-kernel@lists.infradead.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rtc@vger.kernel.org"
	<linux-rtc@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-samsung-soc@vger.kernel.org"
	<linux-samsung-soc@vger.kernel.org>
Subject: RE: [PATCH 01/15] dt-bindings: power: power-controller: Convert to
 yaml format
Thread-Topic: [PATCH 01/15] dt-bindings: power: power-controller: Convert to
 yaml format
Thread-Index: AQHctVOqGlSbXDjdykmcKYMQ27+l4bW9Q7+g
Date: Tue, 24 Mar 2026 06:31:03 +0000
Message-ID: <PAXPR04MB845906AAEF49644510641B938848A@PAXPR04MB8459.eurprd04.prod.outlook.com>
References: <20260316-power-controller-v1-0-92c80e5e1744@nxp.com>
 <20260316-power-controller-v1-1-92c80e5e1744@nxp.com>
In-Reply-To: <20260316-power-controller-v1-1-92c80e5e1744@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB8459:EE_|AM8PR04MB7298:EE_
x-ms-office365-filtering-correlation-id: ce6ce97a-1af5-4465-6d7f-08de896eec62
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|19092799006|1800799024|376014|7416014|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: kqzZCJTvz4INgZNwbvYRepwgizxRaiNntLWExlRcUJg9B/qdqokJdNFjP/+tVoAPT4rGS5+yzYrWk8m8YRjFQuBayl+Vb4Tgs+vfdIEO+kLUVCzuQG2ymmrpqTVQHbzmeL1gWQBxTaYpQv0eiCgPUmc0acAX1HzXZzr36wVUFCHLiWITlCCb0OFnaiRZroYjYMLaX9F6BvrGaNUnFHocboYnTm/vkv1UrHn6peLPLyQEHbjQMlS/aBNv2vxqg1KO5yF/IEsbb1onIO3IWwMOFosPByO/2Vb87jtHHtsPjN4CKhreRlO5cvb5AEzREhxRQ9k9zx19SryS8a2EIbxuNI5wWV6vTysoEstaQA2GNUlyjhaA/HYS08c7LMUGTm29q6Tuyx52HyJLSYwsngyLUlDjshFO2SfKkQFzbq8nwFqzWDrfw8hBzo8xe0gA2ZUKVHKBBFyu5xWGVjqqWiGDHcbnkf4k6mKt8c0Fy5cFhDGJGhiJ6oF4la/3oFrYKy2MJgNFKV5+3Ec2mVhJqg2oWDTpmvVm/qa1rsS3HZ+3NA7x10z8UyLYsoX4tbPjmfJONkWNe3Wn+flMlTzCS7kgAWbnzTsSdh9qcOLpHkiuzw/acfSRpv8twX2eTxtdWavMmJ996khF6eCzNNs7I4zsuYkknWSS2aVhVyqy2GzMKOdo6mDAk4sP1hgql5o8JQ8mrg/0h0601k/d1vYd7BHC4OXkUbjeuCjsg+UQ099HtPEajnpgwyHYwbrWQPdjHPly
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8459.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(1800799024)(376014)(7416014)(38070700021)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TTdtTklMcVFucHhaVlNjQVpQODd1b3BXMEo2dk9XSWpkSHVqSHdwRmVjbWlX?=
 =?utf-8?B?VitUV0ttNVFieUFKdTdzVkNBdERYb2tCdVhpTThtODlrL2Y4TjhuOFRjV2ov?=
 =?utf-8?B?M1FldHZPU1g0eVpqTUFOMEdZQjIrVjUzOERkbHpob3laeUNxQXpvY0xNTWF6?=
 =?utf-8?B?dEdDN1Rma1RVUlBkUHY3WTQ5NlFQTTRZZ3JWbDBzL1djSGEyMWl3bzZtZDFj?=
 =?utf-8?B?MDdpbE4yaUtlMVo0ZmQ2TnphazBuaWlJRGg2MlBEREl5YTN3V01RMjEyQStQ?=
 =?utf-8?B?NGtMekN0TXhKSnBJbmVOUzBTZTJZODJTYmV2UU1IZFhoVHdEZDl3MUFNajhz?=
 =?utf-8?B?Tk9KQUJURTc2MWpWUjhMbzMydThabCtEMXFSMGtCM1ZZMGRMekZVbVRoakZG?=
 =?utf-8?B?WFJ5bWozbHVzZ3FaUFVpK3A1c0I2RUZ3NkpKUlRDY3RtVXcxeHU2bVJ5dCs2?=
 =?utf-8?B?YkphQ3ora0M2SXVqTmlqTWNtRU9aNUgza1RORWMxcXB3TjZPWUFZMFBIanRC?=
 =?utf-8?B?QW1JVHJqZkRLR1RLRE13Nll5MWtoajluSjBHYWxudFhFVGExYVB5RjluVDRZ?=
 =?utf-8?B?TVI3d2VPdmQ0akdBVCtERnpYMUMrMlNpc0lwZnRXWDhoa0dTM3d2NmJlWDBJ?=
 =?utf-8?B?eTJSNnIxTWJab05MYkNUWERGVHpFbkt0cVZYdEdONCtkdVhKNktZNkZ3WUd4?=
 =?utf-8?B?V01BbjlERHlPTDk1aDNxa1M3WGZ0QWtiYzhFMVcvQy9McE5SNUEyekFKTFBx?=
 =?utf-8?B?c1B4MFNXYnowUEZlK21GalFxSjNjTlNCS3cwOEo0TkdNNlc5OGJIbkptK04v?=
 =?utf-8?B?NGhKTnZJRXRlUU11WFhybVNiMFkzb2d4aWd4dHlxYkhRWWI4OEp3YUtTa0pW?=
 =?utf-8?B?RytxSmc5TFNadkZHemJ2TDdVK1FDZE9YQXlZclllTEhId29uc29YZHNVS2Ri?=
 =?utf-8?B?UFBrazFBQS81RDdvUzVKaU4zL0xrL3V5Z2tFb2wrcHAwNnVZQklCbS9UcCtv?=
 =?utf-8?B?eG5USm05d2lPeHYxNDA3WjlQVXNrY0lxOTA0S0RLSXc3bEN0djVKMGFpTzZj?=
 =?utf-8?B?aThWbTAvTVkzK3BYVlR3WkZHUThpR2gzN2Q1OHVURVpyQVVIV3VoL3IrRi94?=
 =?utf-8?B?a1MxR3ZLZmxod2xrNzNIQUs0eis5ZThMeDFoSkNtV0lUcktDbVp5VHZFNUtZ?=
 =?utf-8?B?d2poLzh2OG5IWVRWTjFBdWhUVkliUC9aMzZuS0RUcWcwWWhBS1gvM240YTRs?=
 =?utf-8?B?Sk1LbzZXVEIrOStpWnRad05JeTBEaHd2eGhMTmVlbTVYbUVpY2FsQ2UyaGt3?=
 =?utf-8?B?YnVzRGJnekF0SU15OWhTTTNxMUkyb1FNYnlzWXo0VWxLV2NiODU0WDFCd01X?=
 =?utf-8?B?MU5HMmJNek1VZ01zc3Y0L011UDZTcXowajJyVXZxMGJaNFppQW9XOWlheTJ5?=
 =?utf-8?B?ZjRSN2Z1bHdLbVlUdVZJcU1kYmttMHkxOCtwK3gvYWJkTGR3MXpJdGRyVG5y?=
 =?utf-8?B?K1VzUnRhZEVTWWIxMUxvejQ1ZVduV2JDQ3hiYmsyY3hVaURhWXdjZXBKMGtG?=
 =?utf-8?B?MUlhMmxyb0lySEU3T1RuZExTRUNzMTdFKytYbndsTDJ2UGF3ZWJSTU5XR0Vu?=
 =?utf-8?B?dmFqNWU2b1NVUlU5SmVmdlpQdSs0MmxkUkZQMnRHSi9teEE1NjhkS3pyUWY4?=
 =?utf-8?B?V2Q0UHRJTHVGbU11SCtWTGwyTWhNTVNGVmdjdTlwdzVoMDQxZjZDVG01Wnd4?=
 =?utf-8?B?aVEwWkFXRmE3NEdmblBjSGtPMWhSRFJNQkswRDJCK0c5S3ZhOGR1MVp1ZmdK?=
 =?utf-8?B?Q0I1OWgyc29ZREU3TkRjZWJNamdjYk1VZGdCdG9ZODBHMm1sdkx4anR5RThj?=
 =?utf-8?B?aUNxazZnMDcrVlU3VHNrNGgyVzVGVDJQSEdrOTQveVJOenVjamhLUWJtMUxN?=
 =?utf-8?B?M3ZzS3kySExrTWFjZFBya2Q0eGRrNk0rRHFQRHcwYzJOTDBySG40b0pmNm9U?=
 =?utf-8?B?RlM1NUpKRURMUzVKN2NqZlU5QWlvQTIrZFRTVnkvNGxqVW5nM3VxSHQvVDNJ?=
 =?utf-8?B?cDBHM2FkL2hiMnR2SmpyR2doSnVoRExKc3VwRlBjajJ2WTFYOWVucnJFQno0?=
 =?utf-8?B?WnBGZk9mcTlCSXkyQ2dCeFlRWHhxd0FjQnBiMHBnYlJUa010K1BKL3Z3bWVN?=
 =?utf-8?B?dnhkcjNleTlDWWJHVVhTakRmTzEvWTczb3B0RGFNR1FQVzlzOU9iUjFrQ1U5?=
 =?utf-8?B?azV1Tjl1R0l0eTRLMHFBejdETFc4MmltQXlvVEtSeGppbm9xWFhTMHpjSWN2?=
 =?utf-8?Q?rJ0yqkCfmQy3+Q5p39?=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8459.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce6ce97a-1af5-4465-6d7f-08de896eec62
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 06:31:03.8276
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HfOBvBj5j243bC+MyIMj0vqah91FUB1HlJ95AcXs1mSUu1RpzhscN9H+HUfUu7tyZcz40cDb7FKI+MsINeoAMA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7298
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_233130_609468_566F6A07 
X-CRM114-Status: GOOD (  25.68  )
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

Hi Romain,

> Subject: [PATCH 01/15] dt-bindings: power: power-controller: Convert
> to yaml format

Not sure about you github ID, so ask here.

Are you ok for changing this to BSD-2.0 License?

https://github.com/devicetree-org/dt-schema/pull/187

Thanks,
Peng.

> 
> From: Peng Fan <peng.fan@nxp.com>
> 
> Convert power-controller.txt to yaml format. Drop the example
> because there is already one in regulator/active-semi,act8846.yaml.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  .../devicetree/bindings/power/power-controller.txt | 17 ------------
>  .../bindings/power/power-controller.yaml           | 30
> ++++++++++++++++++++++
>  2 files changed, 30 insertions(+), 17 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/power-
> controller.txt b/Documentation/devicetree/bindings/power/power-
> controller.txt
> deleted file mode 100644
> index
> e45affea80781292316c75ed387ba38402501c5b..0000000000000000
> 000000000000000000000000
> --- a/Documentation/devicetree/bindings/power/power-controller.txt
> +++ /dev/null
> @@ -1,17 +0,0 @@
> -* Generic system power control capability
> -
> -Power-management integrated circuits or miscellaneous hardware
> components are -sometimes able to control the system power. The
> device driver associated with these -components might need to define
> this capability, which tells the kernel that -it can be used to switch off
> the system. The corresponding device must have the -standard
> property "system-power-controller" in its device node. This property -
> marks the device as able to control the system power. In order to test if
> this -property is found programmatically, use the helper function -
> "of_device_is_system_power_controller" from of.h .
> -
> -Example:
> -
> -act8846: act8846@5 {
> -	 compatible = "active-semi,act8846";
> -	 system-power-controller;
> -}
> diff --git a/Documentation/devicetree/bindings/power/power-
> controller.yaml b/Documentation/devicetree/bindings/power/power-
> controller.yaml
> new file mode 100644
> index
> 0000000000000000000000000000000000000000..ff698365d778446
> c08ceeb5f3ef144d5e97d2f79
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/power-
> controller.yaml
> @@ -0,0 +1,30 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/power-controller.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Generic System Power Control Capability
> +
> +maintainers:
> +  - Rafael J. Wysocki <rafael@kernel.org>
> +  - Ulf Hansson <ulf.hansson@linaro.org>
> +
> +description: |
> +  Power-management integrated circuits or miscellaneous hardware
> +components
> +  are sometimes able to control the system power. The device driver
> +associated
> +  with these components might need to define this capability, which
> +tells the
> +  kernel that it can be used to switch off the system. The
> +corresponding device
> +  must have the standard property "system-power-controller" in its
> +device node. This
> +  property marks the device as able to control the system power.
> +
> +  In order to test if this property is found programmatically, use the
> + helper  function "of_device_is_system_power_controller" from of.h.
> +
> +properties:
> +  system-power-controller:
> +    type: boolean
> +    description:
> +      Indicates that this device can be used to control the system power.
> +
> +additionalProperties: true
> 
> --
> 2.37.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
