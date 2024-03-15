Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 054FFC54E67
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 15:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YVJwN4Ap3HEsT0qPJFb7o4W0uZYK203YHzrfxvzovtg=; b=wL/m/JpDaLYm5K
	nwqLPcMbBwf/BhQZRl6nb5bpcmLrOpbhukJ+dhYjhfPLwaJHD3hkTgV+p2HwMeWrXniwVJn3pTONp
	fdgnfL0ou4JiPPwI9EzfzOER09OzLxDcMcfr5Vt0yM7NQlaMHetSU7hx0kpZkpkJZgueKjen85n6w
	r36QbOOc9MSQ5uVoTY+iuOLVb9fa/Ya/8WmevMuWCu33y9cWfVJ79fYmHf16aYcOfu6LuivJsCsHj
	HzQ+gS1fZ79x5yfKXyX6RKOSIPSDUN6fyU+FtVh54E8dnSz0aC18omRxJ7X8dwmb0JgMvko2OTQKi
	9VNP3xGxgw1KwWTg0jnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl959-00000000azh-2rVf;
	Fri, 15 Mar 2024 15:02:51 +0000
Received: from mail-southindiaazlp170100000.outbound.protection.outlook.com ([2a01:111:f403:c409::] helo=MA0PR01CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl956-00000000ayP-22bD;
	Fri, 15 Mar 2024 15:02:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZvKXWN90dg/3cLJHgzad4P0/BoZGx1YTp6GQHpT3n4MgAYlKQ1R9PbhyZDKL5TJym/43CUKMi4DwOhRO8hdgS70QyRJ1hoFN8rIgcnDVrLqa1lyQSKdmRHvYh4h+u70OMFR//UaxZokcoqP4chFjueVjIZ0jI1HoXVqoIoL+F/0cczz4zrGY6f0lsTVSGIzEY5oGWZLDmUSueRWjPicA86u708rlC9HoKvTGDdBXVMBrTtAJs47e4ilOnbc5Vho7mRgDPPK8+32eoui59e3yYqJrhsVDeGOXKlLLYR6gzPKvsNvT0+w3GHHTF4H6Ji8gbCwdKQfwUjv0wA6ltciiPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cj9yYpEFhQ97HDuWeWMkR27ENtZ/viDMk289IOr/fpk=;
 b=AIYDTCdElYgv8HmgHcYHKIb1SNJ9e1aTTvOJaF0cHQ8XTKnsk5vMezX5hM/VwkbG65KaIZ3SA70Qn0o9jxf6iJXq1YO84jjbcauK4ZeW1n4uANHlF1J5xWv71Ys27xJtVmPxvo+gOHN+L8LPhdjdS+qk88hyZmINgKcIvGq8vJo3zIlIzfI+/d74E3sc4X9zaSDi3joXGoo5cZAMOHW6hW8fA32g/lb5m3y8e/bjmjjWYuHWp51DHtE7oNwqSa9Nnu5WZx1L0PRd0qsCXCUpVG9EKK8KyYYa4gkwrr8x8hzNoW33727obvr8mIZm/Uiq7zXarwGATDNXPWgR6uXAtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siliconsignals.io; dmarc=pass action=none
 header.from=siliconsignals.io; dkim=pass header.d=siliconsignals.io; arc=none
Received: from PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:1df::8)
 by MA0PR01MB8804.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:ca::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.19; Fri, 15 Mar
 2024 15:02:34 +0000
Received: from PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ad41:a27c:4185:70f2]) by PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ad41:a27c:4185:70f2%4]) with mapi id 15.20.7386.020; Fri, 15 Mar 2024
 15:02:34 +0000
From: Himanshu Bhavani <himanshu.bhavani@siliconsignals.io>
To: Dragan Simic <dsimic@manjaro.org>
CC: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Lorenz
 Brun <lorenz@brun.one>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add &gmac2phy in rk3328-rock64
Thread-Topic: [PATCH] arm64: dts: rockchip: add &gmac2phy in rk3328-rock64
Thread-Index: AQHadrR1BtvEvHuwW06uVnwsXYgXPrE4f/8AgABjXK4=
Date: Fri, 15 Mar 2024 15:02:34 +0000
Message-ID: <PN3PR01MB10135290B74FD411720E431989A282@PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM>
References: <20240315084018.2200581-1-himanshu.bhavani@siliconsignals.io>
 <96a53f8560b3563328eaf7b9d6f63d87@manjaro.org>
In-Reply-To: <96a53f8560b3563328eaf7b9d6f63d87@manjaro.org>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siliconsignals.io;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PN3PR01MB10135:EE_|MA0PR01MB8804:EE_
x-ms-office365-filtering-correlation-id: e68c8753-79dc-40ce-557b-08dc4500f1ec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FjwsAeemIawAwhSoYEgUd7pue33r/QchGhYjl7ae3v7VwhEg8wPVnk688hVvExtVnUy3VDzqOPgwbBPdHhxoxP4Qa0qEV7mzvj+yKw6bhRia9BRRDyMYygsgQpxhcWAVs3cz7E1ayR2FI4gs7NZc3lCFlp/UirZoX/BixuxrvcFIKVVHSzbt0SqVBDcoDKeMp5g2TGoX1iOWcDx5KFAlZL183J5rNXCFer0dkGIIwtf5Vk2wSv2zGY/HGyDGSKDDwZexO6XZkvEfvVVEyNIriOBvNyHmmZqn7NuiA5Iju/Pew8fBHA3+uv0O03CcG16IOAXGnhpihYRip67996AOV6Vx9/3t2z9/saoZ28RvoogupIv2oDnJ1D+G5hVtsMEuW3R0zSr6WGjWbi+q1jhVLfyRMbgO3yHL1f6m6Z1RX1a0AeX6hAae5+Nu0BzcA0mOqZi58wikxz3AO/hKtnO/S2z2TZecd8Tv8jQadRaHkyuL4DewPLZeknQa8o4T30U7aKGdlCv7RB7iQWgQHuIXRM8/YNCuxbxhvJlEUlKVAKpNePd5uQjs27YwfSPC3h5bvRDb4Ow21884JqwVh3aTSdTMTtkzSpu7GYwZNn/q2fZJLpev6ddg0rmGIrkgkvLTn1R/FdW1/gSrc68IXUIaF9Sj3IWPjUCswMF/Isk1xhA=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(7416005)(1800799015)(366007)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?FAe8+KxCvjU4wTOwuPWjJ/ZRIdOUKjtGq9sE/7A0+ozV1fbuio4/jGmMvK?=
 =?iso-8859-1?Q?Aq7pWsAv5P0YHJ7A2201KQvTFpOyhVb+75EweTjzw1XZU2r6j5BMZ1grDQ?=
 =?iso-8859-1?Q?SfdAgwI8d9lR4Id2gI1M7d0kLp1NRrkWgrn0yPLdEboaT1flx818UuIImm?=
 =?iso-8859-1?Q?nR9hKAMnGc1Y8xzpiFpTysJ2clKI1KUK2bB1220UX41CLM6NGHM9A4wUYy?=
 =?iso-8859-1?Q?SIRCNAw47Q5s7yHfzIXCvwO2TKZgZIuwVR4AG/jphfugfBjm7MuGecPGdt?=
 =?iso-8859-1?Q?QlB0+0hbBd+ROiI74e5nbCmRuUIvK4I0kGWLOdgbkKd5eRCPDN0M0i7Ok0?=
 =?iso-8859-1?Q?ljdmueyEiYuzqJYBIw9GTc2+rtLj2VoXp0RVuAxcXHUtCXIhMVGSAQ9v30?=
 =?iso-8859-1?Q?zOQwEJBeaJak0vI4hA6Sp6ZU60ehpwthOXUjBKa/2Cq1CU1Oht7DRrH3og?=
 =?iso-8859-1?Q?7zcmphbhk+EQ9owt5nXk0FYR0gXEU6I+8lVLSzwCXCy3JkRzL5Dm1busZf?=
 =?iso-8859-1?Q?IhwJmak2E+kDYPLP4MmO97Jp9sTK25IHyKvX/CvhzNJ1ABfZmeKJe//yJa?=
 =?iso-8859-1?Q?IbdTPsPNFKLlalNmUgsDvwJJNUcb3nFPnD+rucJqvOa+3BOWzo0YhC5rXB?=
 =?iso-8859-1?Q?/CoXr4QnZAQXd6jiUSHrmRVjKe2CghEFmLDXFzlHy5Ig8Das1PJybmQKsj?=
 =?iso-8859-1?Q?uvGC8WIE/JR6VFDVLy2dJqZ02/92ONfIV2wUCBn/tmbJjz4UXx5YDw0XGx?=
 =?iso-8859-1?Q?oQYw2y2meY60jdcECWmBzkyaNPVSh1nPzo2fTjZWyD0EnQGPLj4WKncfb7?=
 =?iso-8859-1?Q?eYaM66tLiRmz/bJCN0OH5jcTnf+H2J3bnKgiwrxqMUMiVKi8nNS8DrQXNZ?=
 =?iso-8859-1?Q?xLiLCbiqp4z5kbrqnLBCFnZnomnWY7Bm+yAQ9EB9E9QhOY2u17u8t6yYG6?=
 =?iso-8859-1?Q?lamxaH8MxwhDRNqHQCNiKs/PXSD8NeI0TlyPf0t400BVa7p5SrPb9zKz7u?=
 =?iso-8859-1?Q?bstBVy54Y1PgOIZAnAHGPVNPBQdb/WvHBb9N4khmij6MtWmQlW7tPHe1X0?=
 =?iso-8859-1?Q?UE4G/7Fo4dA/bc1QuvORlG6CzHAB90PucVRPKQttGl7jgT2Z5JgL122LhX?=
 =?iso-8859-1?Q?jezHULxRF+piWFvAWXUlJmIqeb3VyLJ/iB6GAs4+Kn8ObvSePQsCDU/eyC?=
 =?iso-8859-1?Q?Yy0rtWvE+z7OVQjqwSx484y9vjghMBnD8Rpwl852L+jXbGBwLoFc45c/Al?=
 =?iso-8859-1?Q?qpkWLOy2lCJSQBpvirTvcgLGY+elNtMexI+b7ggvPbkY2BfsXfpK6wlvBD?=
 =?iso-8859-1?Q?bDil1ubH38wYFagidlbPVlPr3Lm3mOV4QKiZTKCojVLfz/UW5SwaGWoVMa?=
 =?iso-8859-1?Q?FtjTYIvTJtitzIFYWEHfr3a6z4wiO8FcJy+Gg8kOJXwqdwe81OucMh53Tk?=
 =?iso-8859-1?Q?X3CJuYPt+bOVdas6VC/q+eunX0VcrnT3PoCjirXckD2STrBXI4oHSxJ3AA?=
 =?iso-8859-1?Q?YTKDhPAhcaX53p3cUrljmXrRBjd/65u39tfXQ545D9MfA5QSKYHzQ5YG0T?=
 =?iso-8859-1?Q?of261RptqcVuOypjVjYXeeovDJfphlopctqBpuc2m7XEIcJ7M1rlZmOM+6?=
 =?iso-8859-1?Q?Q6o2joFwg5dNP1AUrIQENM/KxdbwXDnwqRp4EMs4lwaRFeWaRFb007kg?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: siliconsignals.io
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PN3PR01MB10135.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e68c8753-79dc-40ce-557b-08dc4500f1ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Mar 2024 15:02:34.0848
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7ec5089e-a433-4bd1-a638-82ee62e21d37
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pRF4B8K8jGvPkr/53UnS3RejDUaJB0TLnhV9v2+hAp4awgaGKKbCoa2GRkuIMBq7kuPG2dKPufS2v2ehz7fnwbUkS+30IqdfIhJnssBdgYnE1iPqwdfjb7dcn3GcwZMV
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA0PR01MB8804
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_080248_554776_BD00AE32 
X-CRM114-Status: UNSURE (   8.74  )
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

Hello Simic,

>Unfortunately, this isn't an acceptable change to the Rock64 dts file.
>Yes, there's the second built-in Ethernet interface in the RK3328 SoC,
>but the Rock64 layout doesn't expose it as a separate physical network
>interface, i.e. it isn't available as a port.
  
I was wondering if the Rock64 lacks a port. 
According to this link: https://pine64.org/devices/rock64/, 
it seems that there is a physical network interface available on the sbc.

>Such a change would be fine to be applied to the dts by hand, by someone
>who actually adds a second physical network port to their Rock64.
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
