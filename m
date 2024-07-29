Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1396DC3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 08:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUuN8PwD9lHu43nG2dNWye+SR7AWgLMgxLi66DP8mXk=; b=3oLDQWiVbnhJGh
	3Fn4MgNQj/zAeQ6TSyNgSYf9qrX55xLTNyWYV1yhMavizXqXhJ3KMN5ZsTvnjdDrG8taueUPhHcfR
	xVXKkbgy1zOk42wtyvHGKkL5RN52EXGFigp8dxeNEHVrP6BweMEFw3a1D6nC6AUWSzR8VMKmQ50rO
	F0PsmiYnXb6THzGXrcq62UNz2/5/deD53d6Zz7F9cj6v+fUm3RXYE1ItFJ+i+jn8xgPqj6ZtC+zIm
	fNFWjRbFC9hnx01H3VaY26YUQKHGXQWaiqUzjgvthKVjVGyC7rj2qhCZwtYoxjUlDbclUa0gkcni8
	DJjqwhH96yZkYXFyAZpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYLZv-0000000AW8k-0na2;
	Mon, 29 Jul 2024 08:17:59 +0000
Received: from mail-tyzapc01on20700.outbound.protection.outlook.com ([2a01:111:f403:2011::700] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYLZT-0000000AW1g-36hm;
	Mon, 29 Jul 2024 08:17:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yiYDgAV5nrjkuFS7fcHsTL+0pIQ+fs23ZNHPn7S75WRKLsMzQwmg9XOPeCjeAilwn/eIMNsIDUPUNrmkKdALhQwV5xtX0FEQ7VaJo002tBdxkh3+jKfMqFZN+5etNJ5KtpWoYjknwGwSir5ljBQLL5BnFwG8MBNPhZ4kZv54lQ3hirntsiTE8ilGTwuqnZOk4R0W7G5eJNUWKRNPdgyf6DmD8ur8IbVpRDweatpmyIIWaPjxxKLybsI6h7zKxxoElROd8aBQfCzT4oMsQBo9LAEXHJ9Z4nagC6mu6oybu61LIg5sQkQoAZ90oh/OVZn1XsE2+fFRR0qBa8Q073LOfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hiNTRqJTT3t2Qv1MqTWsjfnhiPzGs2hqbPz1fvdpMaw=;
 b=oEWi3T5SSFwdogZXCc3dptZHJukeWN/BvO30VdA1kd+maALNHhZYMFEalP4aKhoISj0cm/U043IV0vx5eRVULTlCRAzMf48cycaM7wWU1aSO/G1W41xmsGdZg3t5/mJTRs3LBsuCt7jZdjJVCKC8DBh++fFPfHirYofyksuN6lWzRa0wrVRuBYiQo3gOv1oDxRafCZIvKTtG7fzRZWx7nmi+E5vTYEpwW8DiL6ecVAU9ZGkAS00/6UBmsR0uhWt5MRf5BhBGUFV1ZVDi3Abu40Z+3S4dclHD5t36nD6Ys3VTLIJafVETzg3Esnn9fmbPgf+An9ZCqU0XgH5BM2w0Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEZPR03MB6643.apcprd03.prod.outlook.com (2603:1096:101:7b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.26; Mon, 29 Jul
 2024 08:17:06 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7784.020; Mon, 29 Jul 2024
 08:17:06 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "robh@kernel.org"
	<robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"heiko@sntech.de" <heiko@sntech.de>, "kvalo@kernel.org" <kvalo@kernel.org>,
	"davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
	<edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
	"pabeni@redhat.com" <pabeni@redhat.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "arend.vanspriel@broadcom.com"
	<arend.vanspriel@broadcom.com>
CC: "efectn@protonmail.com" <efectn@protonmail.com>, "dsimic@manjaro.org"
	<dsimic@manjaro.org>, "jagan@edgeble.ai" <jagan@edgeble.ai>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "arend@broadcom.com" <arend@broadcom.com>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, "megi@xff.cz"
	<megi@xff.cz>, "duoming@zju.edu.cn" <duoming@zju.edu.cn>,
	"bhelgaas@google.com" <bhelgaas@google.com>, "minipli@grsecurity.net"
	<minipli@grsecurity.net>, "brcm80211@lists.linux.dev"
	<brcm80211@lists.linux.dev>, "brcm80211-dev-list.pdl@broadcom.com"
	<brcm80211-dev-list.pdl@broadcom.com>, Nick Xie <nick@khadas.com>
Subject: Re: [PATCH v4 2/5] dt-bindings: net: wireless: brcm4329-fmac: add
 clock description for AP6275P Wi-Fi device
Thread-Topic: [PATCH v4 2/5] dt-bindings: net: wireless: brcm4329-fmac: add
 clock description for AP6275P Wi-Fi device
Thread-Index: AQHa4YUmartUX8inGk+UWrzTMZFVbLINUJgAgAAKtvw=
Date: Mon, 29 Jul 2024 08:17:06 +0000
Message-ID: <TYZPR03MB7001247E93FB6473128FEB2480B72@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240729070102.3770318-1-jacobe.zang@wesion.com>
 <20240729070102.3770318-3-jacobe.zang@wesion.com>
 <1724f480-369d-4b4a-9384-1c6b33b00433@kernel.org>
In-Reply-To: <1724f480-369d-4b4a-9384-1c6b33b00433@kernel.org>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7001:EE_|SEZPR03MB6643:EE_
x-ms-office365-filtering-correlation-id: e12eb581-5a5c-4716-5c2b-08dcafa6d5c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016|921020|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?a/XRHHUJDSwC6nPD9BJLaT3BmjSn0sZ4ldZtTLkNq0Ux0TZdooXcPE5Mck?=
 =?iso-8859-1?Q?eb2JK881qpc2OzT/jAkQhZlQ10A7n7yV5H3yvg5AbqeHjBzoq0KN+tPISQ?=
 =?iso-8859-1?Q?8S0vnck1P9s+K+4r4pndzNe0C1gOHXm5k2mZ+FLRg1hv9i5K16l3H4iZlz?=
 =?iso-8859-1?Q?R2y+3Vsp4sEOjCw//zM/kxQNCJS46OqlhaARDV0AtHWa/dhrolkwr0kN/o?=
 =?iso-8859-1?Q?p1yoc7EpWEwmxGOucOTQS7stcfW3/RJxAe55lUsG/iuwZKRZjEKwiAno1f?=
 =?iso-8859-1?Q?WpLgjZeKrLPZI6xUlIJ120f8/dALFJ4AWIacb4Ya1UkzsDSlTYsiBS/8/h?=
 =?iso-8859-1?Q?E8LTQym1ApjsmPLVE85AXfXVFLIeR+65LB2YinP6eFU20Drlk5DY+MiGbO?=
 =?iso-8859-1?Q?jUpgfoaWGldKfAohfXkDhWp8eb7xEMdV5PPSOjbnB9/aubFXiOzySYuutQ?=
 =?iso-8859-1?Q?RDv/OsAE42PVmD+ntumA+QjL6xNaMLottXqq66NQAGv30R0dnVi3rey58e?=
 =?iso-8859-1?Q?DfQOFblJOQejJMGJ8oqdmFO0DZ7TjUO2vJToNNT+vU8sEM0xgSn9nU5/sJ?=
 =?iso-8859-1?Q?UOxR0gSLRnOoEXNbk8hT53Xp3l78ij2jJQuT3FSXAS0/WNtNpMnZmBrLRM?=
 =?iso-8859-1?Q?kp5KXTdkqdD49Mc0HO0dUd2qggCvzdoyQNVW+fUQuVN6N9w9RzNSTu96Mh?=
 =?iso-8859-1?Q?JSXxruLcmD4Qm+PP31x4v9XeFyQVmCg+IxnECX/gmPYZ2apw7y9NiBV8Zm?=
 =?iso-8859-1?Q?oe5fC2iGkiwxSWxkEln9guUaLVyVMvq5WS8W/zKx9vEqq/takuBK/uQsWZ?=
 =?iso-8859-1?Q?xvqa3gLQBYiffO3s/2Dk0JSliCl7tYpht4tNR5rh6zBS/JzETB/nw1aT7z?=
 =?iso-8859-1?Q?XY6osn3Wkm91tD+LJlxDxPChsRqfJB3ayT9w9Xsl8g7KLzlfSh3vxcmcME?=
 =?iso-8859-1?Q?1gTGcUl3Ylqma7K/jWQH9zDTNw0P6vSUAV9BXgahkl8dng114eUqjeTXs/?=
 =?iso-8859-1?Q?c5+IQZF5HrtcIqublF1LoFoVAVEWtrKFRDcTl2X7rNq66SoES+JFWe2Fo4?=
 =?iso-8859-1?Q?5ASMetqQXMFXTeQt8e4hPTheeaHS1bOjRLPvYw2dDsBnD6j+sSquxM3Rr1?=
 =?iso-8859-1?Q?Nx2j8lYA5FbV7YLMaoyImm2TL67oVJ9NdcYtD0iXCX4/RfdKFNrpcWFhQg?=
 =?iso-8859-1?Q?URZPVV9pjxiDxJLSkZ3XH96TYotatIPrp/C0febG0beTAeWEieP2g7Ke+P?=
 =?iso-8859-1?Q?Ws6yLLbLlGhz8mnXwdbhB8iczhgnBbRGOChxFB5yOEse2KYQDPoKgrzw8Z?=
 =?iso-8859-1?Q?r8sTbWGEQC5AbsMD9OaXqCjk6ZhKmuhdJkYz2rNEAO9+7lRwh3Dpaw3/GK?=
 =?iso-8859-1?Q?gkrykAYmPMLZKdZUrrJk5V2yxEEFW8XzduBTFf6WbVCLo6/ijg/8eZ/kcy?=
 =?iso-8859-1?Q?JgKEnA/kILI1InGNEzTzIPVLNXm7qCIg4D7BS13xX0QnMsQPuHAhExHQJl?=
 =?iso-8859-1?Q?s=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?kPTgX2B0e88rBhUFzdFUMCKoiJDWI48Na9SEWWX977kDA2VlM3dGI9qHFB?=
 =?iso-8859-1?Q?dh+AFiqrj53l61aAy/zUqXSW3SzJbOrDNt1A/MgxtFjrmv9iemddDF728X?=
 =?iso-8859-1?Q?c8pI18GcE9Vx7p+wxtmD3yWW52ylNUX4YeMRp66cMafnT2ZJHBjWWKk8o3?=
 =?iso-8859-1?Q?oZ1+XAlveC6BcVPiUlPhnMC0HaqfcyvbqXLiK/HRFxWKt8oS/6WLH7GYNq?=
 =?iso-8859-1?Q?FRGSP84x+BFGnG9hEQxDjGU+RpEnWnbvsxU06K+NNJCSrW6XgvtZ6rWHTr?=
 =?iso-8859-1?Q?BpDS6pR0vvsvnw+5xeUVQfXeGMGfV5njOwwEoavbwVnyHyHvWTnlRzE2ck?=
 =?iso-8859-1?Q?z1CC+15sLD/NuBH4TrhiQbNjm3Y9SVmnJDm1y/Dz2YpV+cxIV3tlHDX9Y+?=
 =?iso-8859-1?Q?+HBBlbV0OQwlVEZutA1Ka5caKp9mLyk62DT1SWMCIYlzKD3uijbKL4XW1c?=
 =?iso-8859-1?Q?sbXhZDKJqij93IRI8MbW/Z3wfsVkjEy0rXBIM1d2eDSUL611/YKboubp09?=
 =?iso-8859-1?Q?KGVoy2IRSgc1JLFzkMCG8H8Ay7A04BXlB1FBPUmsHFZfS4EXOqog3YRfOu?=
 =?iso-8859-1?Q?qge1pzyKI12FuYL8qpMNOlPviYjiZr5uKzlDoPoldJmwSGQ06RE3QzbpCu?=
 =?iso-8859-1?Q?m4QwrOrQdsNq03LgKmrRjM0UKYbpob3iudYZ+H+/I7Bobla4FNWfDZll1R?=
 =?iso-8859-1?Q?yhXHDgYvTn9rfSl7w3cKHrxKrRsKG9WkJ+1vRXa3MPEQSRu/PlqCsSg/dj?=
 =?iso-8859-1?Q?tyUBjJwx8bNXtSchYG+uHzGwgMnpTaodwTwj3NEQrSr8TPkCDsiKnBKYYO?=
 =?iso-8859-1?Q?X3JZXPMaWZDx+5bLMtz6z3Z/+aICoJ29Qh769VQBtyZJtIdi3YowztDx6x?=
 =?iso-8859-1?Q?ByNEFtItdZxr3YWoC3sdzsn8rAQd+xfXhLRrkUoeqz40cZgnn/5TIrCi7T?=
 =?iso-8859-1?Q?z/+faeW3gvWVdsKgQY62Nb0Y5/rQ6h/W8WtBvDSUQ/rYQrtPoCMsGkag/4?=
 =?iso-8859-1?Q?sCba9lvN2M0DinkftNUgSn3Zxo4VnIxQU9qS05RgbSSSX8ovvRc7VfY/yB?=
 =?iso-8859-1?Q?d/qgVH5v/l/wtFfiXoavAXQxIGXjD7x+Gqx0Ld0hROCDXemTtBGXa8fUDr?=
 =?iso-8859-1?Q?WbhsZdCodh9TtJk1WzSjhZuxTt5i1p31pEjePSwni95GU0PiwuAwCOfLEt?=
 =?iso-8859-1?Q?EeEPaCkJnhyEdCXRNySN0vRdqLpj2an9cOi5UhI9QZFgGmOE5YP7FbXWzU?=
 =?iso-8859-1?Q?ExE1zEc6aJErUToroLbMf67x64Yaniz8buGi5WovzHvHssWbZmXv3B9l7U?=
 =?iso-8859-1?Q?rriiZJslIFOdxUHVqzrmpW4Os0SeiVoubYbZzCEkt4i/w7TiuspL2s6y7S?=
 =?iso-8859-1?Q?CSMBpJ1t3sdL3xpwqMzQ0zOctiBIf4VDKvMYeQyPpzJIEYIiV1TxktaVte?=
 =?iso-8859-1?Q?sgusRz9twpwB1i5uXnLswnNgaXXOWMpk/gXMuj7KrisWJwJjdHY3nO2pJ/?=
 =?iso-8859-1?Q?nMChPu0IdFwpYgYmXWnAOd1/WzvYER6WYgxKy7JZqPOqd1jzZRQZnWPq5A?=
 =?iso-8859-1?Q?6PnKWzsmpo6Q443msM+p9mbdBSu+EhAFdjAExbg5EQODlknNIPm/WVEClS?=
 =?iso-8859-1?Q?XFPkJtAdd/ca4wqrLExIybQSZ9qq9mzZFn?=
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e12eb581-5a5c-4716-5c2b-08dcafa6d5c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2024 08:17:06.5069
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mRXV/ij/yAvclZK0DaqOG9slxJdsKB480syniJ4sJdJFStkER0ZlArCsdQRKnjmk6UGoNJLP++tYgqFE74/9Lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB6643
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_011731_803098_2ADBB9BC 
X-CRM114-Status: UNSURE (   6.01  )
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

>> Add clocks and clock-names for brcm4329-fmac.
>
> Why? Which devices have it? If only your newest addon, then squash the
> patches and add appropriate allOf:if:then disallowing the clocks for
> others. Or maybe all of them have it? Why commit msg does not explain
> anything about the hardware?

Alright... Becuase of the datasheet said hardware has one LPO clock input. So
I will add allOf:if:then for this specific hardware

---
Best Regards
Jacobe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
