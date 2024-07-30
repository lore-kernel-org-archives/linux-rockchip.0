Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EE03C3DA61
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 10:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INSW7aFGelC8c4Kehfmh40SJeb8MNu2uAUZY4mdkFNU=; b=LN7ObbM+n46Ud9
	2cGvaTxHxbG3PO+XdaURqfwj7/ZN1Ud4sryhNuibvMNoFUo3+qzZBW+fHrtaNeKXwrqN67x3c6arq
	DZapxBRDsN3b2SNF5ZvC/36CVzzcGSQhh175UZ0hOTtkv5iu16kBPYEKhGCCppKw/1qEP6LGnAvRe
	znkvh31yHOEMYlGloeHARJ0k/CypKBq+WOhBrXS7jWH8WJYZz6FrrQkS5XUCD0Q8s+KVlDRhnSk2w
	HlabvPe6Ot830bdoQm0D8Yq6LUsVnbsV/Tah6d4RShmBpjI72xYkZrXab6tLAzl0CTltKAf5zPtlk
	ugnaLvuZ2hrrBHp/Sy1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjfT-0000000EeES-09G4;
	Tue, 30 Jul 2024 10:01:19 +0000
Received: from mail-psaapc01on2072e.outbound.protection.outlook.com ([2a01:111:f400:feae::72e] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjet-0000000Ee1Y-43BV;
	Tue, 30 Jul 2024 10:00:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rerVmuxQVuKKKgoHR+lvTOZvr/R9bo4athz7mrFUk3szh48O56HB2nyX62p0uRcfthLOMl1hTPKpvNxpk3yYS4inuVg1mydPnurDmCuRbKHrtO4cfOhYjYry7uE5/C1G4Ba7RqI8p/p8O8AhPy25jPli6ndqiOBDAub2ku2NxL0alwpBqjWf/HNpIJX1RC2DETIdR3cR5PVooaAcgZ/o5RQII3Uu8lgA82sVs53W/Mj31YsW9ngLCepcwFe7v0bjIi3ivnCYId5qqXUG3nGBPcLVNCKxOaM7nzQapApq0Aa2kLanIT1sGsQ1+R3O9pT9PDoyVTHuaL/ugKLQwy+VRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GJFQQjD8b+UhBuUzEAYPcX3wVSIokeTN/daGmxUI4xo=;
 b=pBMSWAnt+bj5Irw75uO54nDxHb4aWy3dJCq63E8LPNIn2rkskSPBwagAp49CDKQbGq/eDNMb+L87juzw8YMQUKTK1J+guNjUDU3qmQKOQh0uSXKiFnlqiUExDsGJV3Ge4PjZqjAyt6LnvOAy0FOXG8md7g39QXAtFQ+ef+NOQ/Z9OPwdIcKGZKc4RU4sePcGvzSDj2TbWhJs3eiaR0LOxyZhTveDW6HC8WzcwBdm+dObqDk8IAhcIpcwbr+55fNpAgJnFTkN13PIUIqWwrHhLRlQs61xTNWOLhRpn4NO91FQNWGJqc70sn5PyCo0kCc0w9ElK0Ya87V3485DfbQZgg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by TYZPR03MB7411.apcprd03.prod.outlook.com (2603:1096:400:429::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 10:00:21 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7784.020; Tue, 30 Jul 2024
 10:00:20 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: Arend Van Spriel <arend.vanspriel@broadcom.com>, Krzysztof Kozlowski
	<krzk@kernel.org>, "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>, "kvalo@kernel.org"
	<kvalo@kernel.org>, "davem@davemloft.net" <davem@davemloft.net>,
	"edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org"
	<kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, Linus Walleij
	<linus.walleij@linaro.org>
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
Subject: Re: [PATCH v5 2/5] dt-bindings: net: wireless: brcm4329-fmac: add
 clock description for AP6275P
Thread-Topic: [PATCH v5 2/5] dt-bindings: net: wireless: brcm4329-fmac: add
 clock description for AP6275P
Thread-Index: AQHa4jDtxz/Ha1L1bk2aE8Abf13SIrIO0WeAgAAoWoCAAA5igIAAAC3W
Date: Tue, 30 Jul 2024 10:00:20 +0000
Message-ID: <TYZPR03MB7001AA581B8B63AC19A7977C80B02@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240730033053.4092132-1-jacobe.zang@wesion.com>
 <20240730033053.4092132-3-jacobe.zang@wesion.com>
 <191025b5268.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <f45c1fa7-f321-4a1f-b65c-6ed326a18268@kernel.org>
 <191030eac78.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <191030eac78.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7001:EE_|TYZPR03MB7411:EE_
x-ms-office365-filtering-correlation-id: 9e1a9719-85e6-4575-1093-08dcb07e6c3c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7416014|921020|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?2A7fqquAAM9jDZphe9kTFOG8h7HjpGHmWO6jcKnrxAAoB6OOUrChNhQFA+?=
 =?iso-8859-1?Q?3cxmsIYVME5gukTAQCIlHzopduEzLvK2EnxH8hLX26Y6x2ZvmwPdu5lMGI?=
 =?iso-8859-1?Q?OKB0JBpySuj+HERBP3k4loQXu/I3D5h3pg+4OgvRNDNFBCu6srsnIfrKs/?=
 =?iso-8859-1?Q?0/t79Y1JhZH7uyEwJXMnc+lFZRkCff4mDniFCVitp2g/1Ovwxk8cy7+vps?=
 =?iso-8859-1?Q?zyDbbdjn6WGF7MnTS3aMqylJrqve1TraXKlSn1CbGAAo/YH2atPzTYBFkB?=
 =?iso-8859-1?Q?CwrXviSx1EzD+YJBSq/zfwrH4QjZABTSBCBxFH3NwfnAmD/DMX1ghLVzzF?=
 =?iso-8859-1?Q?1qcbwWOo7zAzEOLoL/PgMdqOv5g8lmuJK9HGrGXVlrBVSqypIcVBdwc80j?=
 =?iso-8859-1?Q?UqLCPTLqRK7IwVnWP73CQc1CnAQvT8tvEYBULBepxNVznKQlYWYBLmR/St?=
 =?iso-8859-1?Q?kyYsczUEFKbx0JFMIjc19t3cxfSyFJPt9tMf1m1K/Nj/sZhJDJXZ3dKjqY?=
 =?iso-8859-1?Q?VojcA47xX3uPgjDeU0YmNr2Ohvyd4G9gsAagV6gVe7Y5Qip+Yrms5npV4F?=
 =?iso-8859-1?Q?xxEr1jtvJ5VgRy3/7Rve7D/LuEZztzKzDsSsjeCTxCgXOSyyrC9Ua9/A7O?=
 =?iso-8859-1?Q?yIzav/wGonRcyiJyUZffuO8FbYjMt1SZFV9Y2Nc8mvpqguzfMsm2gsllm+?=
 =?iso-8859-1?Q?p9H17FWRK2zpaiTOdUoVkGnRlprBL0kH997gSvPX6IDNpDMDZy1j1JFYwJ?=
 =?iso-8859-1?Q?WURIro45scAkmQJC4XpBRvSj/Ge/xBYxGHuCJe3OEr2Q3mBPPMz254gYJC?=
 =?iso-8859-1?Q?+DimNtPSIsjJ3kjSHdz/9vfAS0iGdFmRa/drLZ2HAYEYERlcJUT7gIi2IS?=
 =?iso-8859-1?Q?mZe9KbGFVllRbib1+v69vb5amTZFP2Zr9hLFFAUaY3BAxQxwhPovEYiekU?=
 =?iso-8859-1?Q?w0fCQ1hliBJpYVHg3RZIF/zO6KWPZ46OIyBc7CbzHGvvx6ahEYRCJBYA4g?=
 =?iso-8859-1?Q?xhgJxamhwR2MN0IfTzBETVPzIlN92XS4Y6vyb2k351Wy2yUnQXHCVXCl8P?=
 =?iso-8859-1?Q?8b1psIGgOz2bkNoobCcyY93BRn2taE9NJ4boZSihQVL9RgKGHC3kMdZI/u?=
 =?iso-8859-1?Q?CnFzeH3/eZmNkPbjqwwbJAoDF6lkEES5i9qEalXmtm9fBGy64H8sceKPgz?=
 =?iso-8859-1?Q?rt1OFXDvADOs5LQzfhpPrvBHs585PJJ1TS4CFq7k/+hOCmi83NC8UV6i73?=
 =?iso-8859-1?Q?dG/Jgc/zAdcWBkSXPsj2GZYRKrBWd+WkcfaWBCo+5W2pTuGG/6VeEzpndL?=
 =?iso-8859-1?Q?DDdX9piD3R3CGZbd1Fv3rgu3CxZFi66aKldwuKlbAlfwfS5UUiBtaRXohk?=
 =?iso-8859-1?Q?Qb/w7yePJqDf4ETZkuQOXRTM9Dyk8SU29VxGfxFk/LFtwq8CPLAIVachxZ?=
 =?iso-8859-1?Q?Y/zqz8b1vW6sTs/iQLr4JIiFPLj/q8xcp9Ih8KMkOXJw/UqBSnBJOfuL2y?=
 =?iso-8859-1?Q?Q=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(921020)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?FYB0lKZviaOXJJr2+9n31PhymF3vK97CrvArD23hzORHn7WecgsBF81Mu4?=
 =?iso-8859-1?Q?oQORLCmfJFn8q4ghILadVBG7jF+V8AgyvT+/kpeInlaiOD/K6gSZZzzjvO?=
 =?iso-8859-1?Q?QmHbDkUMd4yjN+KI5qKakHgtMw3eBEiGNnB7dSq4nF+SsyBIQCvTkfLJZk?=
 =?iso-8859-1?Q?q4oqC8sTKaesYcDIrrhR7ovuEOXN1tAzpMNVhBcT9v2EWKFas1V3eMDFsc?=
 =?iso-8859-1?Q?KDF00LwoboeJo4IS5G+UyvlqDUJFBh7P7dfwr03uE8IDIJZDesLgeZePeD?=
 =?iso-8859-1?Q?o0cmDRkWDGb69IlWwk8P+IuvU2xvrpVhTNjLHsn9HQ5e0dcI8s4c7Qm4NQ?=
 =?iso-8859-1?Q?oggjtt0hjt3BfZ2OfoCB8cG7eIo4wjGHKAkxsJjHlGaZWeqN5AY8Eq5L+a?=
 =?iso-8859-1?Q?mp8EBFD6CPYN4bytgVqNb9RReCppBUQuQrbRtseKoKk/cveQJH6RkyTugk?=
 =?iso-8859-1?Q?SISmG6mex5wcInOJyWTmY0V1TT0l3er3sYwozmmOe2XMD8RTza/w3U2uQ9?=
 =?iso-8859-1?Q?qcqWSPSoi/uz69q0g1h6jqZn7iUR/UtRikfAmPkR/kcgam0Mk9p6jpMe3W?=
 =?iso-8859-1?Q?vvQ6SYDDgcNbv3O0ZYKSzS6EE5q2BcChzh6VFL4mBY8jTdLYjoM7Xg6u+3?=
 =?iso-8859-1?Q?LVanVKsK6wiqnUjjvqokAgx8/s+AKHrPUS9IzE1+xAietz7g+HRArrkKmb?=
 =?iso-8859-1?Q?4cv6V3rVspNgvO0r6oTgJgyaBMOkhfgDHDZ+CJ2THrrTPWickwx+mCNUgN?=
 =?iso-8859-1?Q?dZnoBgZ7c0yBINlANJUZ26AzlPZ8fP8lAc3nNr6gkIVWSsU+1RLt+Oo1UO?=
 =?iso-8859-1?Q?jfFSfsdf42X7LclXBquqtsFKa4ysJ6UFEnbVzquBr5VMVNRwwYxpkwXADM?=
 =?iso-8859-1?Q?iRWuskFfNGSPvYgy0/Ztp4snATbDuqrSi4Y6r98QHPYVXm6jgwJFtuUZr0?=
 =?iso-8859-1?Q?pQI1L5zwvWcrd3bVw+UcoEPrSdFxarDF7wWwCZbGP7qteeq8o0m6Du76m8?=
 =?iso-8859-1?Q?eQSixyEIAQZQOmeuGNFw2+PUIPZtvs9YF0dQg+XV6oM9oqFHIB4QCyn1sy?=
 =?iso-8859-1?Q?p25c6rJ7UXN71sd85eJX+tVQpeltGA1LhyhPv/uG5VvsGDiNdda66W60q7?=
 =?iso-8859-1?Q?caCgkakqM1cGtF7q9jbZT4qVGXyciuspMa1Wgbx/lqKfUQooSiEGepzSwD?=
 =?iso-8859-1?Q?fYAvG1HC4A14QMeNjOcUaeeyUUKehcCo4trzQaXzBbtZiDO/ohurcIpPUd?=
 =?iso-8859-1?Q?IiAvLpC3CYxM6siwi4jaM1Rq+bn5veXFD4HUKbYGcZyXfW+MM5ObKl08ZN?=
 =?iso-8859-1?Q?/w8d5gtj1LciOvKUgu2NF4NsbFFsc/n8VGyOA0ugo68SdPwMQxMSszZy1U?=
 =?iso-8859-1?Q?Q7DOK6JYuQCWDkh9cklci0UZqG+vJO5vtDZ0puXIkW64a3IEWjtO+4TKT4?=
 =?iso-8859-1?Q?E1a3A1+R4HIIOLevTNXCE1GmuVZN9254P8I/mIcRkVzINVlL9pjJwBX9Vb?=
 =?iso-8859-1?Q?JJs1J2E5XKvmN3wi0Rhm8tQfs8lPgSIxlJPPTUEfep8qtk8VL92xhdbwtB?=
 =?iso-8859-1?Q?XYgEcorh/W9uoO5feuhM2DIdBLOWyLxE/qp4+J9OoeWVoofh+pfBzJPKhn?=
 =?iso-8859-1?Q?MVlR5Cnuf2lqTtErUepWO/rMSO1mBY/GPE?=
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e1a9719-85e6-4575-1093-08dcb07e6c3c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 10:00:20.7489
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Uv/+WjbkWudzRJQ0fwqCrQT77PdvHOzRYcaBg/1a387DaCONRIuzHuor+KKCCKWjW01JX58aI0NeMVgrFMUISQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB7411
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_030044_044430_6A219457 
X-CRM114-Status: GOOD (  12.54  )
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

>> On 30/07/2024 08:37, Arend Van Spriel wrote:
>>> + Linus W
>>>
>>> On July 30, 2024 5:31:15 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:
>>>
>>>> Not only AP6275P Wi-Fi device but also all Broadcom wireless devices a=
llow
>>>> external low power clock input. In DTS the clock as an optional choice=
 in
>>>> the absence of an internal clock.
>>>>
>>>> Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
>>>> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
>>>> ---
>>>> .../bindings/net/wireless/brcm,bcm4329-fmac.yaml=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 | 8 ++++++++
>>>> 1 file changed, 8 insertions(+)
>>>>
>>>> diff --git
>>>> a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>> b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>> index 2c2093c77ec9a..a3607d55ef367 100644
>>>> --- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac=
.yaml
>>>> +++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac=
.yaml
>>>> @@ -122,6 +122,14 @@ properties:
>>>> NVRAM. This would normally be filled in by the bootloader from platform
>>>> configuration data.
>>>>
>>>> +=A0 clocks:
>>>> +=A0=A0=A0 items:
>>>> +=A0=A0=A0=A0=A0 - description: External Low Power Clock input (32.768=
KHz)
>>>> +
>>>> +=A0 clock-names:
>>>> +=A0=A0=A0 items:
>>>> +=A0=A0=A0=A0=A0 - const: lpo
>>>> +
>>>
>>> We still have an issue that this clock input is also present in the
>>> bindings specification broadcom-bluetooth.yaml (not in bluetooth
>>> subfolder). This clock is actually a chip resource. What happens if both
>>> are defined and both wifi and bt drivers try to enable this clock? Can =
this
>>> be expressed in yaml or can we only put a textual warning in the proper=
ty
>>> descriptions?
>>
>> Just like all clocks, what would happen? It will be enabled.
>
> Oh, wow! Cool stuff. But seriously is it not a problem to have two entiti=
es
> controlling one and the same clock? Is this use-case taken into account by
> the clock framework?

I have enabled the same clock both in bluetooth and wifi just now, they wor=
ked
well. Maybe this make sense?

---
Best Regards
Jacobe


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
