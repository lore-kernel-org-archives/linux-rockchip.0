Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB55C30653
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jun 2024 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K0U8W+8Pk+x7hzeYq11YEEEKyhOyAAxAllBz6g5sQ6s=; b=R+Rajs4O+LE7HA
	hxa54U4tbADatSpBVrOr4haLdRnmNZVi4iPAfnpV0vZZC5VAmfckPOw3Vr8y3y9MGJR1emx68PPdE
	Z5PmAft3Rbf0DsiJFJQjRsS/YpBIRyV/Ac4nfERD6zTJIYLzug9HqRFyKbSRCFHio8l/ZkVgYKWG+
	g4GImrwsACbiDSu1eJsVkwQkMLKNAF1BbFquFJtGKOJgeb06IwmPb6uKj5KCfo32Q0CrziIE70zXs
	I3sEv2XdId+NVxEjsqfXX9GECFASV4cdmXL34qn1ipUQXT/EI4y98uIMUd7waHQqpVI3e3Yn1NSxN
	2eNrWQTztk+1HpNJQvQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM10K-000000021zT-1ehg;
	Tue, 25 Jun 2024 07:54:16 +0000
Received: from mail-sgaapc01on2071b.outbound.protection.outlook.com ([2a01:111:f400:feab::71b] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM109-000000021vN-321m;
	Tue, 25 Jun 2024 07:54:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Goa/6BOxy4XGm++FPqesu6AEB3/HYPC3SSOu/kkmTyveKF2dPdoFQID4MzpS7njiuULg/bYGKSlKHXxXtupuoFrqb4vcp6EgXdHeng6E6VGYUDZGG5YdDZk9MvotuTboFKjrM9s5+VKtf+/5bqwWZoQp9SWkDkIoN0LRU5S/ENcTMWzMi+Ftsdv5aiZWuR58YjAQQKdzyJBR9kBGpCiymQ2aDdqO5arLVuksIPcXM9qKWlvhak6nrtqCzVQORRMrC3nhq+OUn7xSjsL8KWQuhX7++TYCXkurulzWfAg/FVYhOaTvWlyVj7uqTt/MNbCmnldazh/X3ktgMfwFRWQXuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dljJ+Gt7fB8EcglUinbyAEOPYyBXdGF7ZpjghIyFwdo=;
 b=cbJAvjEpajMjQHjlZTYM4Va/LpEgX+wRWIrQnF8web23Uu4KEh81xs56kwXJfZOZWC48fUBuRIpONofdRb00rqesMXq855lhtBhGJMZsJWMlsvmV+8054mKOpLiMWyLdPsi92v52GEqDvLFya4qXfsblVYu8M4Q2/fkNytQX1nmZE6/bRPoG+uI48yYLumo+lcDvo/11miKVTpV9r50aFZPQSoRGt+gKbkb5O9+Aynyo6zxCvsBQFNPwkgdOXDn/hN3nJypV5dRqH9jREPEBTbuJDg48l0j5TfGRyiiktr/eFZR+5SbDNQUCJ59O1w4YFDYrRG5xGDqSB8BVpgKjVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by TYSPR03MB7783.apcprd03.prod.outlook.com (2603:1096:400:411::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.26; Tue, 25 Jun
 2024 07:53:46 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 07:53:45 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "robh@kernel.org"
	<robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "heiko@sntech.de"
	<heiko@sntech.de>
CC: Nick Xie <nick@khadas.com>, "efectn@protonmail.com"
	<efectn@protonmail.com>, "jagan@edgeble.ai" <jagan@edgeble.ai>,
	"dsimic@manjaro.org" <dsimic@manjaro.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] arm64: dts: rockchip: Add USB-C to Khadas Edge 2
Thread-Topic: [PATCH v4 1/2] arm64: dts: rockchip: Add USB-C to Khadas Edge 2
Thread-Index: AQHaxhEm0XqG3IVev02025ly93CghrHWzg6AgAFO5eA=
Date: Tue, 25 Jun 2024 07:53:45 +0000
Message-ID: <TYZPR03MB700141F5448D61A000D588AB80D52@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240624083236.1401673-1-jacobe.zang@wesion.com>
 <20240624083236.1401673-2-jacobe.zang@wesion.com>
 <6d8f80a0-d67a-416e-b395-7a33b539682e@kernel.org>
In-Reply-To: <6d8f80a0-d67a-416e-b395-7a33b539682e@kernel.org>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7001:EE_|TYSPR03MB7783:EE_
x-ms-office365-filtering-correlation-id: 0f07a6cc-f587-408f-30ee-08dc94ebf099
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230037|1800799021|366013|376011|7416011|38070700015;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?9XDQlGmy1dC2c1bhoGZ7KNooYB47Kz/4in5fBOUNgOzDFx1O8ozJlmXHhV?=
 =?iso-8859-1?Q?aprXyQ0zH2fP+Oe0LVACbe3wlicNAQwmvM/P0a8ZO+DgBmhR5QdeWSncU3?=
 =?iso-8859-1?Q?98ieO41Y6jEIwoN0GD6bM3B8ggYSXHCyAwSLVHJnby196P8yOP9cKq02j6?=
 =?iso-8859-1?Q?3UfJt0rwSar5BsOsnexiuIiutMY9zhfzFjkELeO3bYDOqhOWH17A/xMcKx?=
 =?iso-8859-1?Q?Bah9qK559M/4Yx2PVcYquby678UsKgNxC7ETXK208EopMokWcmlh9JQlkf?=
 =?iso-8859-1?Q?hPz/Uj9OYGY6vUxvLEcTYJ+X6dAv8gePHqSnbam5UAj8p+UKvW/vydpnZK?=
 =?iso-8859-1?Q?BowuymecDYfKdS8AZzFErjGHuhW0jlcAIeB8TT9UxTYYp6Ti9lpCaGf/C7?=
 =?iso-8859-1?Q?Qnnmi0xbWFENuWABmAZdOySKn0F+lCTeJmbvAyrOzZmiDkYByhiS40u3jy?=
 =?iso-8859-1?Q?dYRrsOgcF6y1qbZT9K259WWYtKxlVtTMGiqOvyIZbwtwBu9tTe5QEOyd/t?=
 =?iso-8859-1?Q?H8xlBY8SvaqGaDqIxLEvxdmJEo98WmWh8c6cpLVj9iQO2MTozRWk18W+bi?=
 =?iso-8859-1?Q?pTYoj0sXdvG8jwexNBeiCbFeFlG7BmHXtfH3XPBk2okWQ8SsgZl9u/gMyJ?=
 =?iso-8859-1?Q?yxaA1fMyL+FY6lRxXREVsC+fRobZWT3664x05YrIejqagWFM+GLnAbyw6I?=
 =?iso-8859-1?Q?LjS/BJVCMlWEV6EDcopzfZ3imyl3jlj0WsdSvsLeephPesTspwN8uhbsH3?=
 =?iso-8859-1?Q?gPKstyIEZ+CPgiewZjDAUKtgKaG5iR1iVbstTUzjdptwGDgKdGmsSe2ygL?=
 =?iso-8859-1?Q?ZTxgPZiYwBglOLxHSiPkfKSou/hQ3pdbmF9MTWbAxu2LQygB7tpl1F57xt?=
 =?iso-8859-1?Q?681xI+c4JPt30Ox+fDQWfeGuc+wgEBcWqgIKfe1j3vJ9UzmNDGln36KOfN?=
 =?iso-8859-1?Q?1X3sRZ/IVYf49ZUogtMZhLFh2SysgQALfOXuN1oLhaCuSZ02ly3Um1iGOF?=
 =?iso-8859-1?Q?bC99ifdRH9MjttfLSWBEt33DY2rYrjopvX7cM33pXRMNmEjldmYmq6iejU?=
 =?iso-8859-1?Q?eDJ6sQiMC7Eo/VDfo2ii45Dpzqy2YJSnCJch8oPd7f221tlhXeJGU8jTF4?=
 =?iso-8859-1?Q?2BzG5SsFiv6QGANc7P9JMKZpPz6OWX4ePf9iBkAoC3GSsGEpa+bN+ZkE/D?=
 =?iso-8859-1?Q?B4rPmGNhI3CyAo1MtLhD2TdviaccchGAKIr717myhxMIFuRZBCjIwD37FB?=
 =?iso-8859-1?Q?5XWUQm5AAtEwRUgtOSOTgumizapY3p1LUXxEBpLi/lu0/qoRr/G63DW8EP?=
 =?iso-8859-1?Q?kITKkW/vvSz3bCb8OM67mRFkxcVk4DyHchV4BMm+vhJ6JWEwmSRdul/y/x?=
 =?iso-8859-1?Q?/e62Ue5SB3Dbaw4DPMnJme3ZBlg+n6VWOigYBVkaV5kYITMe7ha1ZMA1f8?=
 =?iso-8859-1?Q?SA1pGVx53dYhJKoRT6YiK4BJMdsQjrBO1mDcig=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(366013)(376011)(7416011)(38070700015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?X20hlBD+bP3eIdP6R7xsMyFC/dCquK3kY56yLzgrK4d2jmqFWmuP2+7lsK?=
 =?iso-8859-1?Q?CV+JmzmeB8m3PQePkAEhjA39YAct0hs6zDpfHUvIdoCXjUrl78Vhigsq2M?=
 =?iso-8859-1?Q?4qj9EOifLNKZvj1JOXqWFIh9UjGRuMzj+TKmesJC5IbNjVsyG/muHz673V?=
 =?iso-8859-1?Q?I6kdOacHeURzKR9taugi8gJS2dglh1+PO2E61Evd0/5xUghTWSheP1Z9bO?=
 =?iso-8859-1?Q?b44ZdoeT8XhEzwNfLtEZK+3Oug96wuXWv9VYOAd3Tl6d5+a2mcQAY+RHsl?=
 =?iso-8859-1?Q?njrBA17c36xrW3t40wVTMbuK8toz7ynfy6rE+vynje5/G2H7veBABLo8dR?=
 =?iso-8859-1?Q?gGziwLTWpA9FK+92SWVGXENVu1pwNcAOWANdZ+O3qchu5E+KL6s9ams6Fu?=
 =?iso-8859-1?Q?JP8wWQyoGJCZfvNMHmPtCA3fgxTRgJTXn3d23xvuP7MVQVJmGvZUtPI4iS?=
 =?iso-8859-1?Q?WHB5ZDRP1ahhi8UgTqJE2DypOOdIx5mEbVCBxzMY+Y+SiMasiZ4DkX0LEW?=
 =?iso-8859-1?Q?T2bsUWPUnxHmpPkE/3fEMPqM5LmxCYXkb/gkPaWJBrd7XK3XdF1fksDnze?=
 =?iso-8859-1?Q?6V4VwfggNHzD1qqN1MeEGh5abq76RNwWuVeTwpyix10mAJqIg0ZZDlyakj?=
 =?iso-8859-1?Q?F9iNdRsgMn/FfVcpAL1+umr3zXnS0yAkXjzkjixNPNCi0SJX+SWvcgPFre?=
 =?iso-8859-1?Q?NdbsOL8wld7WcfIgHZq7mIyEPG9Hzinmm6QNZBiWzxqrwIt5XfACqpmrI/?=
 =?iso-8859-1?Q?5v5q0F9Ye6pXmNlEtr7uLRI4OoOwqfiUaum1WJEpNUg3uvUCU7x4YYbf4X?=
 =?iso-8859-1?Q?aogh/PmFX5s6YyzpJXa+ksRwB0bmE7jawbZm6Tv3wllp14iuzxI36HRXXY?=
 =?iso-8859-1?Q?x+3SX48XQricVad1Dijzn0R2VNLdEmVM92dw44KlHYWOccHmyZtaBDpqiL?=
 =?iso-8859-1?Q?EN55U5Zyb3Vq8+NIzV6iEpy8yXvJv4178mR57dRsfdBJ9KBMKaug92PALB?=
 =?iso-8859-1?Q?5mgn4aVPjJUeFFsoJz7MbUsXS0mB5su/hCH1WRiDAJuaxTcfxtbect2kY+?=
 =?iso-8859-1?Q?N4Bgn9fHYeq2AqgPgqq3aadjMi+OVRSRPTeMnTXLOPcOAWOONQo2mIyv4Q?=
 =?iso-8859-1?Q?BFixT2VD3C2ZMKhBaqxX1Qb+HztIto6GNcdj8HNE1xuxPqpbq8cWiFC9fG?=
 =?iso-8859-1?Q?rpzoWc77STBE8iOYsYrL0glzvxZGTNR/dVKMzOVeSdckrGlJMuhtcXnZ7W?=
 =?iso-8859-1?Q?8x8uiWQEEc2anx4JZhzhZvRWUZJbkFzG8fnB0w/SBk1zl+X0eJUlPyO4NC?=
 =?iso-8859-1?Q?bzHyq+KlXyyr8iPGrtXHpoHdWjWiUDzfVuYmfkMTu18ZAZI2dvl7Lph9ek?=
 =?iso-8859-1?Q?AJejll6zP6GBeltBM7G5y14dsiSw2MxZ3Prce56McKlITq9wuHNthobkp5?=
 =?iso-8859-1?Q?IRLgop8z0ALFEBmb3u5h0J0zz3HGqiJ2ysYrJmnW3e4IXm4akDq6ocYjp+?=
 =?iso-8859-1?Q?+w1STps4oFWaY7P0vr9bduPZ/8BgzlKldCCZ9Ngi4CHg3KDFzCYehnbZSn?=
 =?iso-8859-1?Q?H3xt3Ew3RAS7fPW/aakEXvtcmcS7V6XmG2zfG8c1++veyu7dIOcA0adwYD?=
 =?iso-8859-1?Q?Dr8ZQ0DMDNv8vTUynx9L9Zb20HIWGKWRTP?=
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f07a6cc-f587-408f-30ee-08dc94ebf099
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2024 07:53:45.4137
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MUoeriOkoL42mAQa7cYnpP2lYNPj/2JwL5T17VoNf7p/XwyJ/gsXyTjsBeP9B238FFXZ6xgciBToQRvmIOHPKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYSPR03MB7783
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_005405_822212_C6AF3DDD 
X-CRM114-Status: UNSURE (   5.72  )
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

> Was it disabled anywhere?

This patch aims to enable the DRD function of Type-C port. So need to enable in DTS.

---
Best Regards
Jacobe
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
