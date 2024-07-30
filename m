Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B067AC3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 10:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sye/ZXb+Fvxzsxj8USlklRhjB4M2iQdnyxAM0aLDqoI=; b=4BwIuUFxQI64eM
	709/JJ1Jb7QcvF4H1YgRFxXj6PB5fUVwregWSUTOWJJEkS2bpNQDxy5mPDsgLz0QI4xnEBuBTxbzW
	aplrJnutmfjE3eR0OCp//ZJOTqsoYoz4DnZgRfpMTRPp8NlOgI8Gc09U4CsNEM3nqQYifv93yyIN5
	vJEAhF+00JjT7hQpHOgi0MmRBVQ/cMP37k3due63uRQFXGzqUaEyLKBYk6AM7uW9pRjLV7bu2nLar
	CLTU9jHQwkz6tnTJK5v5WsLyacix90m0pXu0j3q+qLSt6Ppu/ukFyY04exdE4Rk2NbEVokqvDZ9mg
	+D6ZDyuOdYsDWZ2xx+mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjw9-0000000EgzW-34mr;
	Tue, 30 Jul 2024 10:18:33 +0000
Received: from mail-psaapc01on20705.outbound.protection.outlook.com ([2a01:111:f400:feae::705] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjvf-0000000EgnT-3Lwd;
	Tue, 30 Jul 2024 10:18:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SdQMhljfWaUQ3TW/kGFzVSc3KWur3JssHi/HeKPPk88EYVPhRqNSSs+d668VcZxc04FrPBf7UbSwFQ+ctYQeZQUjlICCl5/gQlbY8RtaVpsTicXexroCRK6LxNbr3iffya2ld3gVJafkFjxrqHN9/JJJQJscVjXEUKjhSgyhF7dxHDGbILiwqYJ4IE1Pdkn0YLEAuJYoN74B+CLv9TdBtB0yhdW6O7sVa2fH5GzS8VIrgduJ+PrDa9kMCCSvKFIrFx3/yFChcgKynUfLe97kXdpMg/DAAkcX49oyfMWM0Abh7UTKiP01BO2XB8a0+StfLcJS4x6InfTLm6nYXZ9Y3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y751EjFsLQ07IR5+M+TyOt+tXao53kM3NHpw8NBSce8=;
 b=jWxqdBvhyAawjsfuln2h7LDa7Y9gYnIfspXqbGM6jqvAkpf9L+BJEE5LviM4VwasR8azTRqiv5RAgF1kKuxSZnWABp7ZWC9AjSdc5hBTdH19iga6qRnmj6hVAE8LHB6qb1xjflhMAzAAp+UgnUDLgamIgsgcJ6ci5W4DJv4k6hC7bILYIpGckTAHD97TxcLe9Oz/YBAop6Kp7w4Mx3VoeaibrjQWSpooxipIL1qJifBq5iASXTpwwiGuIheiYJ/jjVid8GCoqrrPuRs/WdTe/FWqex5kRN2LXFTywjt8+fi1fut/MoOwqrzdc7nFYxruEC3FG4mRdd557fdJfgdn+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by KL1PR03MB8753.apcprd03.prod.outlook.com (2603:1096:820:13d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Tue, 30 Jul
 2024 10:17:51 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7784.020; Tue, 30 Jul 2024
 10:17:51 +0000
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
Thread-Index: AQHa4jDtxz/Ha1L1bk2aE8Abf13SIrIO0WeAgAAoWoCAAA5igIAAAC3WgAAEG4CAAAGzwg==
Date: Tue, 30 Jul 2024 10:17:50 +0000
Message-ID: <TYZPR03MB7001DA7A89E278F73A4D2E6780B02@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240730033053.4092132-1-jacobe.zang@wesion.com>
 <20240730033053.4092132-3-jacobe.zang@wesion.com>
 <191025b5268.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <f45c1fa7-f321-4a1f-b65c-6ed326a18268@kernel.org>
 <191030eac78.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <TYZPR03MB7001AA581B8B63AC19A7977C80B02@TYZPR03MB7001.apcprd03.prod.outlook.com>
 <191031cb638.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <191031cb638.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7001:EE_|KL1PR03MB8753:EE_
x-ms-office365-filtering-correlation-id: ae10f943-7b05-4413-b7a8-08dcb080de33
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|921020|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?tldED6YBXZ87wY60t4zu9aP3gkqBX90ujKNuJ5iJj/pDCI6B9o1Qy39t4t?=
 =?iso-8859-1?Q?cNqyEQtDer4f3QLA8Z93/BdZA5x2tei/71zd50D3KajdsW8fGmtWZIciDH?=
 =?iso-8859-1?Q?qFB4tQVy++B7dUxaysydx+Kk/dTp+I6ZIQX1b2ZwWtgpo2kEv9bPDVED6K?=
 =?iso-8859-1?Q?M2r4enCHqJxGq0Jl4VgJxSHw9kDtiEtVNZOotsrcY8YG+BgTi8TGkGVmlJ?=
 =?iso-8859-1?Q?UL/2i51zGLyb8JlfQGikhdqWzor37tY61CgKnslLJZ3aO8b+Z4IUVyL5AR?=
 =?iso-8859-1?Q?RYRLFeBZvzyjvsTzqC964bmJJ9IRsvE2Tj0ChrS2egYwx1glekGNUPWXsZ?=
 =?iso-8859-1?Q?1E4KDXWUwXlWHoBDRitkwu8u4o1SHAO5nqBKx8hgzoCfVag4RfPK+Q5tWe?=
 =?iso-8859-1?Q?7oUCkExy7STrXqkgsaUHp5MbE9wCFJFRFacLIKm72O8LlCAOxILQiW0EEZ?=
 =?iso-8859-1?Q?MCwcKWbkd4uAlbEA3IVpSbrROqqC0AiuAWMD7+B+Bx8Rx1Fo1LagnZ6Sfd?=
 =?iso-8859-1?Q?sa2axf8eN5zaPPaf2fLd0pFYsEuT642E/5NYKdBXmLm6nU8++mk8tcjNy1?=
 =?iso-8859-1?Q?hLzeoL00tq/EWECiqZ4Ilfm0Zng+C3yn7voi1w6LBRLM8Iyb11H6hZdnsu?=
 =?iso-8859-1?Q?6uh+ztmKyJdw6J44h97ki2VWvxv5BQ0HkRbLchnbi6vBGfoErk+UyqKnMz?=
 =?iso-8859-1?Q?BS+C5wGF5j/NrGdjNmyMeSxq+Prht+mVCDbt74/Uthk9+woG57XkiwhPjM?=
 =?iso-8859-1?Q?cvJnObL8cNgO9zqkswLwbj6Ilz+egv9PfrMXTpws2lTgf683+c/HLOq1j5?=
 =?iso-8859-1?Q?iw6mj3wakLbkJ5TFvSudOlAxsHgmT0PJ7RbWUQSAp6wZu4e7lDfkmaG6Lk?=
 =?iso-8859-1?Q?ifZR4SsNWutZR2MkWJY2l04AS0clianHRLuP3LITqEjXF/cAcEFx016ahx?=
 =?iso-8859-1?Q?7D+AwJp4zANLCojqzz/TsGdGZMdkLM5maJZZZni/K30R4PhGO8NyC/4Tou?=
 =?iso-8859-1?Q?FvPPVRWgNNuseOD+0qgC05Rc1t4g3rYBjsPonaH5od2KKMHpb2qQFIqX2L?=
 =?iso-8859-1?Q?pJtnvK01rwNubmyuvMx7pOoxId+SNulw8QoERvcO7EE8MiFEo6A4feTnWI?=
 =?iso-8859-1?Q?sJlAmr79bWyWAcaRfWdjrHeF8gMW3/dMP+nhN44CQR4I0ZiZsSnoNu5ZnK?=
 =?iso-8859-1?Q?x2nw7d+7YQAIHMcxnd7qZkzes+UUFjr5ngpHzUFIDR+9skVSpNysTV4cRd?=
 =?iso-8859-1?Q?7JTsQh/Vw1Dj2aHCRyMoKLU1Kuw4bYJVSnW50d7EmrOx1xIbcwE7hYN2Qc?=
 =?iso-8859-1?Q?lzgmkCw+LDjcWLI9VNawX7g1Rt26w39Fk8PHZviM/EBn4aIa8AkqlK8Ac6?=
 =?iso-8859-1?Q?xNsKmkOIywFxsU5Awf0UXF56UsSQFTxhz/k7d7PTVUNNRdiYb019fJo6Xb?=
 =?iso-8859-1?Q?ZWJI2HKNKFou7ixsat6mqFCYX4yyuByGFvoK8QkhuWgBFsp6qkmiV8bJQQ?=
 =?iso-8859-1?Q?E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(921020)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Sidzx+3jHusY6mGHGPEa+DicjiZMOfLjSX21iacyEBMAyCNrt476K8suvr?=
 =?iso-8859-1?Q?cV1FO6ZcSlcoN/f/7iC68ATQWh/C+Uhk73Ka8qvs2tAriguJ3/3DIzaVsr?=
 =?iso-8859-1?Q?+1pcf8jtPUXuiTdRRZ857CKz+UULuF50YwsU8Vx9j1IaMeivY/cvzJbxAM?=
 =?iso-8859-1?Q?5QEHFdns7btEd5S1IbqV/02620OrZGdPSO7Zc+KzThgwIsbyFuboYRsviT?=
 =?iso-8859-1?Q?wL1spp1ESUkwT+y1UQwroThs4R/Cy3G8lxL81lDdXTextW59Bt7Qk2E7Vv?=
 =?iso-8859-1?Q?NuHzYQVyXn5iWPgLUAi4xDDyUCLliIsTzJOwA8buGh+LuB9Fh8Q75dDBHC?=
 =?iso-8859-1?Q?ggXzfuQc7s15PrsZnqsvf4u6e5iMunQxpD/JbL6/CD0rPQvERaV+LKfiN3?=
 =?iso-8859-1?Q?px5ko9XmzFhtkpIxAQzRZEuFWVoc92mcglvs1TbI6VhWwW2EfpuoaJsAw7?=
 =?iso-8859-1?Q?WzvpWzXYoF1IN9Cg+BMjDCRfu4mx3bTDTj+WaonqzZfduPcgavtEsn84Iz?=
 =?iso-8859-1?Q?fXVUnfNFTDHiEcwCK5bOJzbhK7n9kSwyI+vKkfpR9i4NPLIQrOnOX20Ca3?=
 =?iso-8859-1?Q?kC+R1Pjv7usahU73/fusVCpNM9zcRT7xSW2dRZbijf7vCtZkzOIIJaR6CN?=
 =?iso-8859-1?Q?nLEy7CCFiaxPqmxPbOEL1qdFcCjKJh2bYwQLC8g282ExZwzXwe/0o0WlKf?=
 =?iso-8859-1?Q?NcPTe9fNi4ZSJKfJ3ZZJUAu4yU/RFA+wWFDbhc944P5nhEx0Gmmnp1eE1s?=
 =?iso-8859-1?Q?y5/UW6G609ZTaiBs24M1XwQiytBHFUl3d+FmA/0BNx4ARH89SIpIFOTLM6?=
 =?iso-8859-1?Q?em8WvJMRwetgkXMB6Er+eA3+9wa0Lwg6iataE5nIy5G0fydf7OL6h6vKah?=
 =?iso-8859-1?Q?H/D/bnz14MmLG42KP2MvrWyHmPPYWApoR91RDpodJ6CbT3zpuHBV0Lkpzz?=
 =?iso-8859-1?Q?bppy0tpS7c1cV8TEXJX7kL/OyAQgfr2uFxO1EYVoLy6lPuMMtKAq7psS0r?=
 =?iso-8859-1?Q?ReLqSCBaRuvrT++1eg11OpoV8ZBVIfqLlUG9R70J/V3HxesV8V+NHzT+Kj?=
 =?iso-8859-1?Q?Diu8LjUFDvEz3nPuLcneNGiaFLRxzWPJNuOVjI/Lvo1mZ32bIREHO2/eOK?=
 =?iso-8859-1?Q?tVaD5RIY5TbSkRLaIehyjtw+EdwmNUowzSx8ETv/5fHUdr4hFcLPnkfJZy?=
 =?iso-8859-1?Q?qN7OTQUgogWY+mIdIL0TkkV1Z7HhC1oRGsXvy+REsyBW8/L1/WW/BaEcMg?=
 =?iso-8859-1?Q?s+8wJOkG7I59oABs9fcbUe0alx671K/AOt87gxgdTlHU5lydDdKDwNAVFE?=
 =?iso-8859-1?Q?0f6prBLo2sy3yysJQmtes04SZOuL1S9RZ0H3pjaYLV3yzk00cJs/Q8E7Uq?=
 =?iso-8859-1?Q?/HOKsO4ZkaH2xHFEsSWjsFLt9z/LB4qEU52Mzfuj2MQdW2NWZhhajWgjpT?=
 =?iso-8859-1?Q?syTlRLRvOYcOfp0x8rPMG6+O9RHsSTZmdkeu1mqcpRspqHFb4yGfyUpc/K?=
 =?iso-8859-1?Q?g+nvUfo97nALWBWaN0PLs4RfgygyYY9BX1ijvRG/udCpF9bvybSv0FsVUI?=
 =?iso-8859-1?Q?m7hfu90UJATI+L/lXJfEafb2i22R2zEelk2cxcKdzEvBsmyIOJ5QNjJWJm?=
 =?iso-8859-1?Q?3TpeIjaKwr/dRfLYez0dV+xK4sy2SJe2em?=
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae10f943-7b05-4413-b7a8-08dcb080de33
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2024 10:17:50.9480
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZdnuZ1xihxcjEY78MskuoEFLH2eHofe0hG8jBDf4oAoa0jiaXFRC6Njblt/jCVe3mj0y+OBbsVmOJydzn8eYtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB8753
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_031803_993751_0B86DB6A 
X-CRM114-Status: GOOD (  12.46  )
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

>>>> On 30/07/2024 08:37, Arend Van Spriel wrote:
>>>>> + Linus W
>>>>>
>>>>> On July 30, 2024 5:31:15 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:
>>>>>
>>>>>> Not only AP6275P Wi-Fi device but also all Broadcom wireless devices allow
>>>>>> external low power clock input. In DTS the clock as an optional choice in
>>>>>> the absence of an internal clock.
>>>>>>
>>>>>> Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
>>>>>> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
>>>>>> ---
>>>>>> .../bindings/net/wireless/brcm,bcm4329-fmac.yaml          | 8 ++++++++
>>>>>> 1 file changed, 8 insertions(+)
>>>>>>
>>>>>> diff --git
>>>>>> a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>> b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>> index 2c2093c77ec9a..a3607d55ef367 100644
>>>>>> --- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>> +++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>>> @@ -122,6 +122,14 @@ properties:
>>>>>> NVRAM. This would normally be filled in by the bootloader from platform
>>>>>> configuration data.
>>>>>>
>>>>>> +  clocks:
>>>>>> +    items:
>>>>>> +      - description: External Low Power Clock input (32.768KHz)
>>>>>> +
>>>>>> +  clock-names:
>>>>>> +    items:
>>>>>> +      - const: lpo
>>>>>> +
>>>>>
>>>>> We still have an issue that this clock input is also present in the
>>>>> bindings specification broadcom-bluetooth.yaml (not in bluetooth
>>>>> subfolder). This clock is actually a chip resource. What happens if both
>>>>> are defined and both wifi and bt drivers try to enable this clock? Can this
>>>>> be expressed in yaml or can we only put a textual warning in the property
>>>>> descriptions?
>>>>
>>>> Just like all clocks, what would happen? It will be enabled.
>>>
>>> Oh, wow! Cool stuff. But seriously is it not a problem to have two entities
>>> controlling one and the same clock? Is this use-case taken into account by
>>> the clock framework?
>>
>> I have enabled the same clock both in bluetooth and wifi just now, they worked
>> well. Maybe this make sense?
>
> What happens if you unload one of the drivers? Also would like to know if
> you are using an nvram file. If so can you share it's content.

After rmmod the wifi relevant driver, bluetooth still works well. The content of
nvram text shows below:
# AP6275P_NVRAM_V1.1_20200702 
# AP6271P_V00 board, iPA version.
# nvram copied and edited from AP6271P_EVB_V01 EVB board //
# SSID generated using Alberto's boardssid.py script:
# ********************SUMMARY********************
# Board Name: AP6271P_V00
#SSID: 0x086d
#macmid: 0x02df
# Successfully made SSID entry in sromdefs.tcl.
# Successfully made macmid entry in sromdefs.tcl.
# Successfully made SSID entry in tblssid.py.
# *************************************************
# $ Copyright Broadcom $
#
#
# <<Broadcom-WL-IPTag/Proprietary:>>
NVRAMRev=$Rev: 874188 $
sromrev=11
boardrev=0x1213
boardtype=0x08ed
boardflags=0x00400201
boardflags2=0xc0800000
boardflags3=0x40002180
#boardnum=57410
macaddr=00:90:4c:12:d0:01
jtag_irw=38

#Regulatory specific
ccode=0
regrev=0

# Board specific
vendid=0x14e4
devid=0x449d
manfid=0x2d0
antswitch=0
pdgain5g=0
pdgain2g=0
aa2g=3
aa5g=3
agbg0=2
agbg1=2
aga0=2
aga1=2
extpagain2g=2
extpagain5g=2
rxgains2gelnagaina0=0
rxgains2gtrisoa0=0
rxgains2gtrelnabypa0=0
rxgains5gelnagaina0=0
rxgains5gtrisoa0=0
rxgains5gtrelnabypa0=0
rxgains5gmelnagaina0=0
rxgains5gmtrisoa0=0
rxgains5gmtrelnabypa0=0
rxgains5ghelnagaina0=0
rxgains5ghtrisoa0=0
rxgains5ghtrelnabypa0=0
rxgains2gelnagaina1=0
rxgains2gtrisoa1=0
rxgains2gtrelnabypa1=0
rxgains5gelnagaina1=0
rxgains5gtrisoa1=0
rxgains5gtrelnabypa1=0
rxgains5gmelnagaina1=0
rxgains5gmtrisoa1=0
rxgains5gmtrelnabypa1=0
rxgains5ghelnagaina1=0
rxgains5ghtrisoa1=0
rxgains5ghtrelnabypa1=0

#RSSI related
# 2G
rssicorrnorm_c0=4,4
rssicorrnorm_c1=4,4
# 5G
rssicorrnorm5g_c0=5,5,5,5,5,5,5,5,5,5,5,5
rssicorrnorm5g_c1=4,4,4,4,4,4,4,4,4,4,4,4


#Two range TSSI
tworangetssi2g=0
tworangetssi5g=0
lowpowerrange2g=0
lowpowerrange5g=0
low_adc_rate_en=1

nocrc=1
otpimagesize=502

xtalfreq=37400

txchain=3
rxchain=3

cckdigfilttype=2

#bit mask for slice capability bit 0:2G bit 1:5G
bandcap=3

#TXBF Related
rpcal2g=0
rpcal5gb0=0
rpcal5gb1=0
rpcal5gb2=0
rpcal5gb3=0


#FDSS Related
fdss_level_2g=4,4
fdss_interp_en=1
fdss_level_5g=3,3
fdss_level_11ax_2g=3,3
fdss_level_11ax_2g_ch1=3,3
fdss_level_11ax_2g_ch11=3,3
fdss_level_11ax_5g=3,3

#Tempsense Related
tempthresh=255
tempoffset=40
rawtempsense=0x1ff
phycal_tempdelta=15
temps_period=15
temps_hysteresis=15

#------------- TSSI Related -------------
tssipos2g=1
tssipos5g=1
AvVmid_c0=2,127,4,92,4,91,4,91,4,94
AvVmid_c1=2,127,4,93,4,93,4,95,3,110

# CCK in case of multi mode 2
pa2gccka0=-137,7810,-928
pa2gccka1=-139,7853,-929
# OFDM in case of multi_mode 2
pa2ga0=-103,7727,-855
pa2ga1=-126,7258,-826
pa5ga0=-176,5703,-703,-180,5747,-708,-165,5994,-732,-146,6299,-757
pa5ga1=-132,6132,-760,-107,6472,-769,-142,6184,-752,-108,7237,-858

# Max power and offsets
maxp2ga0=86
maxp2ga1=86
maxp5ga0=74,74,74,74
maxp5ga1=68,68,68,70
subband5gver=0x4
paparambwver=3
cckpwroffset0=0
cckpwroffset1=0
pdoffset40ma0=0x4433
pdoffset80ma0=0x3232
pdoffset40ma1=0x2333
pdoffset80ma1=0x1222
cckbw202gpo=0x2222
cckbw20ul2gpo=0
mcsbw202gpo=0x98533221
mcsbw402gpo=0x44000000
dot11agofdmhrbw202gpo=0x4444
ofdmlrbw202gpo=0x0033
mcsbw205glpo=0x49533322
mcsbw405glpo=0xE9443342
mcsbw805glpo=0xEC665542
mcsbw1605glpo=0
mcsbw205gmpo=0x49200000
mcsbw405gmpo=0xE9443342
mcsbw805gmpo=0xEC665542
mcsbw1605gmpo=0
mcsbw205ghpo=0x49312220
#mcsbw405ghpo=0x84-1-1-2-2-2-5
mcsbw405ghpo=0xC8221110
#mcsbw405ghpo=0x88555555
mcsbw805ghpo=0xCC443320
powoffs2gtna0=0,0,0,0,0,0,0,0,0,0,0,0,0,0
powoffs2gtna1=0,0,0,0,0,0,0,0,0,0,0,0,0,0
mcs1024qam2gpo=0xDDDD
mcs1024qam5glpo=0xFFFFCC
mcs1024qam5gmpo=0xFFFFCC
mcs1024qam5ghpo=0xFFFFCC
mcs1024qam5gx1po=0xFFFFCC
mcs1024qam5gx2po=0xFFFFCC
mcs8poexp=0
mcs9poexp=0
mcs10poexp=0

# 5G power offset per channel for band edge channel
powoffs5g20mtna0=0,0,0,0,0,0,0
powoffs5g20mtna1=0,0,0,0,0,0,0
powoffs5g40mtna0=0,0,0,0,0
powoffs5g40mtna1=0,0,0,0,0
powoffs5g80mtna0=0,0,0,0,0
powoffs5g80mtna1=0,0,0,0,0
mcs11poexp=0

#LTE Coex Related
ltecxmux=0
ltecxpadnum=0x0504
ltecxfnsel=0x44
ltecxgcigpio=0x04
#OOB params
#device_wake_opt=1
host_wake_opt=0

# SWCTRL Related

swctrlmap_2g=0x10101010,0x06030401,0x04011010,0x000000,0x3FF
swctrlmapext_2g=0x00000000,0x00000000,0x00000000,0x000000,0x000
swctrlmap_5g=0x80408040,0x21240120,0x01208040,0x000000,0x3FF
swctrlmapext_5g=0x00000000,0x00000000,0x00000000,0x000000,0x000
clb2gslice0core0=0x01b
clb2gslice1core0=0x000
clb5gslice0core0=0x064
clb5gslice1core0=0x000
clb2gslice0core1=0x056
clb2gslice1core1=0x000
clb5gslice0core1=0x0a1
clb5gslice1core1=0x000
btc_prisel_ant_mask=0x2
clb_swctrl_smask_ant0=0x27f
clb_swctrl_smask_ant1=0x2f7
muxenab=1

#BT Coex 1:TDM
btc_mode=1

# --- PAPD Cal related params ----
txwbpapden=0 # 0:NBPAPD 1:WBPAPD
# NB PAPD Cal params
nb_eps_offset=470,470
nb_bbmult=66,66
nb_papdcalidx=6,6
nb_txattn=2,2
nb_rxattn=1,1
nb_eps_stopidx=63
epsilonoff_5g20_c0=0,0,0,0
epsilonoff_5g40_c0=0,0,0,0
epsilonoff_5g80_c0=0,0,0,0
epsilonoff_5g20_c1=0,0,0,0
epsilonoff_5g40_c1=0,0,0,0
epsilonoff_5g80_c1=0,0,-1,-1
epsilonoff_2g20_c0=0
epsilonoff_2g20_c1=0

# energy detect threshold
ed_thresh2g=-67
ed_thresh5g=-67
# energy detect threshold for EU
eu_edthresh2g=-67
eu_edthresh5g=-67

#rpcal coef for imptxbf
rpcal5gb0=238
rpcal5gb1=228
rpcal5gb2=222
rpcal5gb3=229
rpcal2g=15
ocl=1
bt_coex_chdep_div=1

# OLPC Related
disable_olpc=0
olpc_thresh5g=32
olpc_anchor5g=40
olpc_thresh2g=32
olpc_anchor2g=40

#PAPR related
paprdis=0
paprrmcsgamma2g=500,550,550,-1,-1,-1,-1,-1,-1,-1,-1,-1
paprrmcsgain2g=128,128,128,0,0,0,0,0,0,0,0,0
paprrmcsgamma2g_ch13=500,550,550,-1,-1,-1,-1,-1,-1,-1,-1,-1
paprrmcsgain2g_ch13=128,128,128,0,0,0,0,0,0,0,0,0
paprrmcsgamma2g_ch1=500,550,550,-1,-1,-1,-1,-1,-1,-1,-1,-1
paprrmcsgain2g_ch1=128,128,128,0,0,0,0,0,0,0,0,0
paprrmcsgamma5g20=500,500,500,-1,-1,-1,-1,-1,-1,-1,-1,-1
paprrmcsgain5g20=128,128,128,0,0,0,0,0,0,0,0,0
paprrmcsgamma5g40=600,600,600,-1,-1,-1,-1,-1,-1,-1,-1,-1
paprrmcsgain5g40=128,128,128,0,0,0,0,0,0,0,0,0
paprrmcsgamma5g80=-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
paprrmcsgain5g80=0,0,0,0,0,0,0,0,0,0,0,0

# Enable papd for cck when target pwr ge 16dBm
cckpapd_pwrthresh=64

## ULOFDMA Board limit PPRs for 2G20 ##
ruppr2g20bpska0=0x0
ruppr2g20bpska1=0x0
ruppr2g20qpska0=0x0
ruppr2g20qpska1=0x0
ruppr2g20qam16a0=0x0
ruppr2g20qam16a1=0x0
ruppr2g20qam64a0=0x1
ruppr2g20qam64a1=0x1
ruppr2g20qam256a0=0x21084
ruppr2g20qam256a1=0x21084
ruppr2g20qam1024a0=0x0
ruppr2g20qam1024a1=0x0
## ULOFDMA Board limit PPRs for 5G20 ##
ruppr5g20bpska0=0x20000
ruppr5g20bpska1=0x20000
ruppr5g20qpska0=0x18000
ruppr5g20qpska1=0x18000
ruppr5g20qam16a0=0x28000
ruppr5g20qam16a1=0x28000
ruppr5g20qam64a0=0x29086
ruppr5g20qam64a1=0x29086
ruppr5g20qam256a0=0x62908
ruppr5g20qam256a1=0x62908
ruppr5g20qam1024a0=0x70000
ruppr5g20qam1024a1=0x70000
## ULOFDMA Board limit PPRs for 5G40 ##
ruppr5g40bpska0=0x638000
ruppr5g40bpska1=0x638000
ruppr5g40qpska0=0x840020
ruppr5g40qpska1=0x840020
ruppr5g40qam16a0=0x638001
ruppr5g40qam16a1=0x638001
ruppr5g40qam64a0=0x739085
ruppr5g40qam64a1=0x739085
ruppr5g40qam256a0=0x106a108
ruppr5g40qam256a1=0x106a108
ruppr5g40qam1024a0=0x1078000
ruppr5g40qam1024a1=0x1078000
## ULOFDMA Board limit PPRs for 5G80 ##
ruppr5g80bpska0=0x0
ruppr5g80bpska1=0x0
ruppr5g80qpska0=0x0
ruppr5g80qpska1=0x0
ruppr5g80qam16a0=0x0
ruppr5g80qam16a1=0x0
ruppr5g80qam64a0=0x187218e7
ruppr5g80qam64a1=0x187218e7
ruppr5g80qam256a0=0x3904254a
ruppr5g80qam256a1=0x3904254a
ruppr5g80qam1024a0=0x49068000
ruppr5g80qam1024a1=0x49068000


---
Best Regards
Jacobe



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
