Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D4BEC30653
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jun 2024 08:05:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5A7QAZ88+37/iBb4jST8A3flz2iQbqEahauHy4xtzG8=; b=fPK7ruM2RWEAW0
	kuvFBKawBBJIGCddY+lxlnmFb3kRKc9qkZQ6atekJwZAOAot2xx1Zmqc+Qj5cGTUB7j2zikRtbPp5
	L3fPoYDAixF+PM8ouMfrPukhwA8bVFbeS0N86p+GaUPOOIJHd/2fs4/AdB0hJTBQWtX4eAxosG7Te
	3rRKwwKj3XFNiISAB4VhrQBSCrJhtccNUpWxDEvRxdgCYf7jtOhQyAVRQjYFyXBrjeMQZlUj7Rj6k
	xxAu0WPci4cj2/GJCpRxZMjSQgxJuGF90djz29NeMoqXGN07pzc+QmJ/b25Fo7pS82iQMzqjXP6IA
	QXiS8XO4512ijhKxqRvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM1Aq-000000023KZ-2sFJ;
	Tue, 25 Jun 2024 08:05:08 +0000
Received: from mail-sgaapc01on20706.outbound.protection.outlook.com ([2a01:111:f400:feab::706] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM1Ak-000000023Iu-2sRE;
	Tue, 25 Jun 2024 08:05:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oQSp2SEkCsIYs4LxnirynNRyukeu0+H4AnuTa8xdXlDscZ+EsSrhMLs9WU/lv2wxQ5n7oG+NTel1VezpmJKsXGGFOagda8iwQ2yqkalG4e7mU3S6ukhQoqbHcru39yE2hlHw9zZrv//wZ8VYhYqocRqMNCB8QqlyJDUpbYBIFew4Z/KmnKqL/i6kcf/bmremgYfUS78n2Qp1bV5O0b77qDwp2/i84ii6wyTVuu2EheiZa4Y7RgaHmrQkNiFOZbDUL+/Tntrhw3HWzUY6Ujpa41y8873KL+UR+ov4LJlxRs1bWrSdG4SiGi6FvXc7Dzt4CWXb5IwXZeK+oP48K7Zyug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9wbwainGNPXTd8qpx8tBhCor0IX1504EGhMzCqkYWME=;
 b=V13ZMEQkw0Ak2aTvP1slhyibh3TRupC+I+Izo4Nahg9ua49EJryjkPiICDBOaTRCG5fR2SDQ6olhO1mBb97T2ANOkeXbLa6A8tEJvNQnUxGkbIrvoPZWvkyI7/Yq+a01sXyc1VR4flfLH5vlBKfo/oXsWv2CVXeT3Hxy8Yv1XRnfTkCNp5Z9Jf4AbbDrjRbcl8+8rlbE54F08DzDmNuPCvR8BAMQN7fdmynBLgG3eOynMnCIgTQsB9WK02G4DWv6D42qXTTK4Wsw0m8WuPkpbGV75RXQ6bVVbUPNhUFgjgA1u7NpA2MygYpptzeBSAqhenAwycuS0h2PpKRU8BE08g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEYPR03MB7480.apcprd03.prod.outlook.com (2603:1096:101:142::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.30; Tue, 25 Jun
 2024 08:04:48 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 08:04:47 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "arend.vanspriel@broadcom.com"
	<arend.vanspriel@broadcom.com>
CC: "kvalo@kernel.org" <kvalo@kernel.org>, "duoming@zju.edu.cn"
	<duoming@zju.edu.cn>, "bhelgaas@google.com" <bhelgaas@google.com>,
	"minipli@grsecurity.net" <minipli@grsecurity.net>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>,
	"brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
	"megi@xff.cz" <megi@xff.cz>, "robh@kernel.org" <robh@kernel.org>,
	"efectn@protonmail.com" <efectn@protonmail.com>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"heiko@sntech.de" <heiko@sntech.de>, Nick Xie <nick@khadas.com>,
	"jagan@edgeble.ai" <jagan@edgeble.ai>, "dsimic@manjaro.org"
	<dsimic@manjaro.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/5] arm64: dts: rockchip: Add AP6275P wireless support
 to Khadas Edge 2
Thread-Topic: [PATCH v2 1/5] arm64: dts: rockchip: Add AP6275P wireless
 support to Khadas Edge 2
Thread-Index: AQHaxg/hc6qZ2pXlVU2sUa/trZv6q7HWzcQAgAFPx8w=
Date: Tue, 25 Jun 2024 08:04:47 +0000
Message-ID: <TYZPR03MB7001D4DE507C919802B2F7F380D52@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240624081906.1399447-1-jacobe.zang@wesion.com>
 <20240624081906.1399447-2-jacobe.zang@wesion.com>
 <258459b8-549b-4a63-8d33-76c9631483f1@kernel.org>
In-Reply-To: <258459b8-549b-4a63-8d33-76c9631483f1@kernel.org>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7001:EE_|SEYPR03MB7480:EE_
x-ms-office365-filtering-correlation-id: be169834-4924-4652-f1e1-08dc94ed7b76
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230037|366013|376011|7416011|1800799021|38070700015;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?RLj/LFIROvYZHN5H9lAZ1a0pif+p2Z+ujvjrIiguntrK4MPtQ9337UFmco?=
 =?iso-8859-1?Q?c12BiJc5Xrd/zbAK6UgSU0Qj5S8E79w+sFmwqIUeyZe6fEFmgWLXGqf6Ow?=
 =?iso-8859-1?Q?TgQtjKmzap/Oewwl+huV7Xet/03Vi1J6W4kpW+49MWmFmlzmrmnUmtKcSc?=
 =?iso-8859-1?Q?duDf9PyHzrs/wqzQpU6BsGEfjmE/zSvdrxrEtNFoZlBTi7kNKm6SXLnBCM?=
 =?iso-8859-1?Q?7vKau75CUysQHOSrMAwIJfDoCgBxCvAHge9aufwoURBt+jdF0eXpCih1jW?=
 =?iso-8859-1?Q?nvEVbbbf74LIrshNck2LtXAos9Z+CFMn9+Y9UhyGIaxsWtQq1NbRshwLnF?=
 =?iso-8859-1?Q?k2FhMfZuZNr+2NqSP1Q3qaVr8/oIm+r1Norl+fzY81tbysF3GyhkgGkD9b?=
 =?iso-8859-1?Q?gmgH3Igh/8QTI01YzM+usGijTR9xK6zCY/nSfsaSRCgRvl3MofJEEdGwpf?=
 =?iso-8859-1?Q?UVfr34lBfjy1LjQsaHkF5PY/2IzcrOUOMSfxf4LoFWpbPkTYRRe9nzRpsU?=
 =?iso-8859-1?Q?ghGTGrXf0s5Yvp70FWxXLZJ0AbQCKcffyB4D+NprpzFO1LsC0vAMGf3AO5?=
 =?iso-8859-1?Q?eSTuqI6w1t0gTMzkcABqH5Fw/GfIMecDbvg1fQm9r2E6YzIICFJNXPpNCC?=
 =?iso-8859-1?Q?WJVbGdGbO+3XFKEY/WvbNN640gXom/S5OEP0D7nj4cG5OYxs5VyUWoZ5rl?=
 =?iso-8859-1?Q?8rCa/OWkbTgf0IH3f6swHBrv3i/DnrDZbCf2QmLoEBKVI1mZa4eeK/iHhr?=
 =?iso-8859-1?Q?8JrQ8DOGJhzstZhPVxnlgyOvrF7lqJTGWx39k/LlvgqWj1RB0L1Tq6Gt8I?=
 =?iso-8859-1?Q?zgzMkVDUeC8J4JLPoG8fvww8EOzUg7TeFDD8/1LqUHemXSbQSla/nx9XWU?=
 =?iso-8859-1?Q?VByorQNDOKMrzCDaus93OJsX2DCFqLyEu6tv3elwLoo/TCjRAT2M1OBgMo?=
 =?iso-8859-1?Q?OlUQfU24Tx5IS5Cryp343mM/RNEOmTNuXJr43T4pdEkvMou0vB7SWx81fp?=
 =?iso-8859-1?Q?czQ9iPaNpZr54bWx9uVrTvZk5ylwbwe8gl8kkrljBUd84iBp2DvWIFth9f?=
 =?iso-8859-1?Q?rEX0baoNP75rQXBvLJgRFWU5vvDKdyz4vFyU8q7iLCSaCFae5NdEJw4FKv?=
 =?iso-8859-1?Q?7Ef3pc62kwoYThwmEC2wqSVuSaH3JjlTd2VNiUpLm6PPE3ZauCZ9GRhScn?=
 =?iso-8859-1?Q?O40wZxscbvaQf+LekvRiTHwfIeWeeb3pVJ6nxQaupW2u/F4TFWEmmqoAno?=
 =?iso-8859-1?Q?Qvs03PDu7cTzIsWLw+pyQm3xPfvVrLgKFXpiVIZBhcLz+yCNTxRrXV2Q6e?=
 =?iso-8859-1?Q?sn0YVyiduePlCgpGD6k7wl0LBgaHgUpF2q9lgGrq5wp9DRsAMipfcDAecM?=
 =?iso-8859-1?Q?ruk67esvWNW/BntTTQtYCbhf6B614yKf6j4hHtXfTrIohe9qyPWuE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(376011)(7416011)(1800799021)(38070700015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Gh5czEkRlkkP/Fgk5cOyW3LXBmafQEApPvn3w6JBN2lXEp9Z22+hyanML2?=
 =?iso-8859-1?Q?nuuEro7jMUL/Bo+G7E5K5AZQPwHQ/TJgkQgJYujL41uwsEzFspO7TMckB7?=
 =?iso-8859-1?Q?rQbIdfQKIcrf1K929/rNuDVDAzZecEjm1phIvy4z5ZMbskIjqzBQNtNcKL?=
 =?iso-8859-1?Q?OpTTrl4Exhy6o8zT9ssME/EH89jC45GHcuQ/50Mn9I66Kj+qVZoiiT5pKl?=
 =?iso-8859-1?Q?UM59LUNh+C0rhBycPgEk3/aGDy2pscgFrKNXrcOMWBWxl/JzA0PevpbEmy?=
 =?iso-8859-1?Q?tPXkiZOlvI7/OHqKiU/RyrkLcw055Ly+/19rcVztrfhb9C9h/ZD4UDX/F0?=
 =?iso-8859-1?Q?O/geegZEoanylmxdtLN6LJxzZmJgCMRNzkNTKS1Ba27WOxyTiXnUM8dfEb?=
 =?iso-8859-1?Q?wLct5kBzF0ZX20wbyM/50Sn/NmKoTZJZ0OG35ythJq8QiO26XFLcPproIV?=
 =?iso-8859-1?Q?6KHQOtRfFnnAgFH4ZTtYIA9wlNuMnO0w0UEEOAYwa+F4dwpUNLZphBylWZ?=
 =?iso-8859-1?Q?IEzqckH3C49zCC2hG3HNvntyYyprPM6KqD34JTNIeLfiIQ96vofE9TZNeY?=
 =?iso-8859-1?Q?jig+6hlHLMt7OMzpnBhbtVUhM/6XuemLeWQT0LMcDsJtULpbtzKtRTzLsj?=
 =?iso-8859-1?Q?lN+GNWxnn+XwP/XrIOzV4/Ut5bkZ5QXIywYDIee/euYUA5a0dEbLx73OjY?=
 =?iso-8859-1?Q?vpIBsxI3x8cbEWIDiBcz96uyq/PxcZDziy5vmvoGPN/odTXMOGNsvhSeBn?=
 =?iso-8859-1?Q?Z+apbGcSWHcXH8XEfzzZiZF03aJ6qjJ/ixxWjM9bGdyC9nBusTvA1d4q1y?=
 =?iso-8859-1?Q?D4gMitEipyqtPmMvs/uIfaERslah8dcbuvhQ0PKdlKcyRRtlBK8HNaXHSv?=
 =?iso-8859-1?Q?PAZfwB3AwJJYYggtW6dZ6XAUkJly/aT3PWP6Im0maklEo3qAmVItD2fdaJ?=
 =?iso-8859-1?Q?oPgOrY8aSv9MxqVz3dklwCG6ZngqtjmO13qHMZHfBvJS8PwyQEqr14cEOX?=
 =?iso-8859-1?Q?XIm8dnfUCSvDJPMrVJ1c9+aAH2s7qYmTQhjVe/RUqylQY3IiVT+unI1bIW?=
 =?iso-8859-1?Q?bZ+1t4xch5VdOgzWMOCO8kVPGoyHG78N6vMIyaMPVhkdJJDktM1Vjw/ZMq?=
 =?iso-8859-1?Q?VeNJ8ufic/vuTJByPnvQPUhS+gAiU2wacO6ZycPqBSOxpcg1e3H2udhn7I?=
 =?iso-8859-1?Q?91cyRxvHRU2xq5tLw9bpz0Da1iYxhXHJEW2i+POBE2yvKs9HCewY3J5vGE?=
 =?iso-8859-1?Q?5VsUgKVWT8I29vrdrsaadSMD5TmeFytv7BgbuNsLcLQgnBXK97XU6FfKMr?=
 =?iso-8859-1?Q?zZlM9kb4kPUhzXolSewlxySAA17ASU+ulf7TkLM495qfTdwItILdCXoJSr?=
 =?iso-8859-1?Q?FJ/IeqJJgAjnubk3uH/H/w2f6JNE+K9bjb6w68y0dV8Om4XG2rD9r3DC4P?=
 =?iso-8859-1?Q?lRh+4whl388OWdSZ+ED+Clw57UsC+9SpumWIOf+jftKMcn/7ToQIfIEBbq?=
 =?iso-8859-1?Q?PnI8efIeqO2vY04+70XJvqWzS8RYyQG97+xOnjcBrD1na26qrCJKQhC09V?=
 =?iso-8859-1?Q?g30t9d0Ft6PBPqXMnn081af5sC8K+WqTW0t0O3HkDoaJhpy85WxBHXCbb1?=
 =?iso-8859-1?Q?ECe4Gv17XVWLlviSzjl3jOBdjALqJTDi9X?=
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be169834-4924-4652-f1e1-08dc94ed7b76
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2024 08:04:47.8865
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aLzcv40eSWkx4a91zcHShIJkbozJjIC2cXPbeCQQ257BCFWXVFpXKJDank52aRf7uNMRz1nWYfZ3MULx/e1FNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7480
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_010502_960552_382625F7 
X-CRM114-Status: GOOD (  10.80  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arc=
h/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
>> index 3b6286461a746..f674deb6f7da8 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
>> @@ -356,6 +356,22 @@ &pcie2x1l2 {
>>=A0=A0=A0=A0=A0=A0=A0 reset-gpios =3D <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
>>=A0=A0=A0=A0=A0=A0=A0 vpcie3v3-supply =3D <&vcc3v3_pcie_wl>;
>>=A0=A0=A0=A0=A0=A0=A0 status =3D "okay";
>> +
>> +=A0=A0=A0=A0 pcie@0,0 {
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x400000 0 0 0 0>;
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #address-cells =3D <3>;
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #size-cells =3D <2>;
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ranges;
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 device_type =3D "pci";
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bus-range =3D <0x40 0x4f>;
>
>Isn't bus-range a property of PCI host bridge, so the parent? This is a
>PCI device, right?
>
>> +
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 wifi: wifi@0,0 {
>
>Binding does not say anything about this. Rockchip PCI controller is the
>PCI host bridge, isn't it? Then the pci@0,0 is the child, so what is this?

The host bridge is the parent of pcie@0,0. And pcie@0,0 is Bridge1, so the
wifi@0,0 as a device under the Bridge1.

>
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg =3D <0=
x410000 0 0 0 0>;
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 clocks =3D=
 <&hym8563>;
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 clock-name=
s =3D "32k";
>
>1. Bindings are before the users.
>2. Where is the compatible? Are you sure this validates?

Before, the compatible is "pci14e4,449d", but when I checkpatch the warning
said that "pci14e4" was not documented, so I remove the compatible which =

doesn't affect the Wi-Fi function. I have tried to add "pci14e4" to =

vendor-prefixes.yaml but was refused. So whether should I add the compatibl=
e =

with warning? =


References: =

https://lore.kernel.org/all/20220629155956.1138955-15-nfraprado@collabora.c=
om/

---
Best Regards
Jacobe
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
