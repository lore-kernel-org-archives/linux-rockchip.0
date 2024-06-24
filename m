Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE642C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 09:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sWWELRuaPNr+tDMN9FunQFaRAFhB9/F79MqpUvIijp0=; b=tOrxByLFuTXktH
	0GkyDXTjpg7UeZBMvZ4DHaUzcd82UyFs+cAhQv/M+Sfs6TJFlcnJUTwfMgZyOGe+WphjgvYFj9Z1E
	mqLJQhHtfN9PozF0l/MpQUDJPzWV1IjUyhet3qt7EETR5Mpk3pDXYmQ2EkwV81ZpGFficRuRz+4hB
	H6f//fe32xDM4Aeqe1qRhCtktzRCfYWp8vig9kMdk3KUExxFs1CiIEVEboel4uL75I+Ms5TBK47WF
	1tTVrQ7WqdDf7NkmXtNZVSGv0KpA/yaqjeywYPULYNXpVEY3JjULtuYyVaWqV2XKyI5B9PUqb7Kf7
	kEfudDN/yE0Fmnvrhzng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLfd0-0000000GBA2-4Bz0;
	Mon, 24 Jun 2024 09:04:47 +0000
Received: from mail-tyzapc01on20700.outbound.protection.outlook.com ([2a01:111:f403:2011::700] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLfcu-0000000GB8W-11vn;
	Mon, 24 Jun 2024 09:04:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FJBDaQBkiDMSZ0HchU4DooJQVpb8JXF75Ayut3Z31ixZcIF2o5apmFS+0aqdUbAsWSHsIu3ph8ZTZfXxX3VJJaSgm3tpE1jIakq9CVir0qDFylgoqm/CbKzFrR3DM1+t8c1lwaFoUDrPwvi3S6mGiWV4CBUK5jUmhR390eiTvhVD7j9Wq31JG8w+Ouj3RJgOVA78KpVj7LWk4IkuSetuYqZbWqXk5oHO3msTog52gKAsEVANGjL01xEhpFeW6/oONiZcqs4h4b6q3i2zNbDOj4EbkjR84V90LYXx2nXpsDO4Hm5aEvhdG0Veo/CQp4ZuO3+XPrZs9Rm/Tbsy4KaguQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FXczzPeS0jsvKbndJBDuBtC7Yd7Foc3brSmP18WPyq8=;
 b=k6HoEe1YJgfNhldCIgOod4oYuaIDmydma4OsxqH/jcUmTlyg+C5A8C9y3ZSsfTGHjUmBvucipUrtkWANcWn2n4h/h5khjc2ma2JAbt85fhGkhqAtJjJoXADHV+PXTb6eGS/ycx+HfNnDTiIk8rInLoH8a0zFKLzXli8oznf3kn/A77R7bZBB7yJJzUSyhhfJwZUz2dNYyvP+WoyAKt11odNz3CHman0DjTkvbFP49D9Eg1HW+oNaKofV/IS2Atmnh2YLhVqsndQ+PxHBXvuTS+erzB4JfT7RI8+MrMpqgB1HUZiw2FptdzO1RyUMUGNDqrkTSsI+vyNkzNdT15hfNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEYPR03MB7359.apcprd03.prod.outlook.com (2603:1096:101:14a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Mon, 24 Jun
 2024 09:04:30 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7698.024; Mon, 24 Jun 2024
 09:04:30 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: Arend van Spriel <arend.vanspriel@broadcom.com>
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
Subject: Re: [PATCH v2 4/5] dt-bindings: net: wireless: brcm4329-fmac: add
 clock description.
Thread-Topic: [PATCH v2 4/5] dt-bindings: net: wireless: brcm4329-fmac: add
 clock description.
Thread-Index: AQHaxg/o744PaUZGkkKsni0fAD5zmbHWnZYAgAAA3DU=
Date: Mon, 24 Jun 2024 09:04:30 +0000
Message-ID: <TYZPR03MB70015262AD806DB279ADEC0C80D42@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240624081906.1399447-1-jacobe.zang@wesion.com>
 <20240624081906.1399447-5-jacobe.zang@wesion.com>
 <5b845bad-45b9-4cbb-8d51-b4efd1a4cd3c@broadcom.com>
In-Reply-To: <5b845bad-45b9-4cbb-8d51-b4efd1a4cd3c@broadcom.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7001:EE_|SEYPR03MB7359:EE_
x-ms-office365-filtering-correlation-id: 22f796a5-ff53-4073-4d08-08dc942ca827
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230037|376011|366013|1800799021|7416011|38070700015;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?wkJTv1C2pGxUSt+P9+vl2/u1pVRe23PgYtqkn3RFXujSLGVInFiySvwHQK?=
 =?iso-8859-1?Q?c5MmektRHmd+O2m9NQ6yb3fgbZ1dBdAfx2q9kgSU/6G78GunV8vNcrENwb?=
 =?iso-8859-1?Q?0Y4Nvv0+VlB4OjOeW0OYgT6NW5bAF09wjrrXzOYST89ubCmPUmn6+5ofaH?=
 =?iso-8859-1?Q?2ww8huy/TDgBlppNRgXaJOs2uNrl+WdRvPb1DCBK77UaXvz70gXF+Igxdp?=
 =?iso-8859-1?Q?uLEJv5+AOWwsXPLzmvQwTu/Y5S4AAnvJJtKOpWxt/TfHIYaI8TH3idz7TS?=
 =?iso-8859-1?Q?ZWqzwgKsBw5kjgG+4217g4m/hWFZrJIpwZk0jwgECLWh3io29p6RIM/VgH?=
 =?iso-8859-1?Q?sqOzdt3uqqByaLrIMD8zMBz2uNkNYIB4rD3XHyL0LdCWTF0XAWAz9OyoDt?=
 =?iso-8859-1?Q?dw4LiCxka5K50cgZ1685XDTQr9e70SGspNnjNO5d6jFd2zngfW4PA3X+fd?=
 =?iso-8859-1?Q?bWAQ7mgm7OsR4U8g8C2AKbSSwQr9U3JfI5wX2l5lJk8rQJHPX9X4rPPcJW?=
 =?iso-8859-1?Q?4n5E2/ITzH8PDtg7FjnwWSWwG440bE1aqPreQGcT6Qz2EoscaE4OvG6aDC?=
 =?iso-8859-1?Q?1GgANO4aoUbe2nAMVDAon1PYbeBwza3MpEFcvfNpoCeBZIaZT/ia8FT1bT?=
 =?iso-8859-1?Q?7omA4K3O0DxEe1VW6xrngL0TlKIhRbJzS+/lFm7Qn3QYm/8MhhnbuSzt7l?=
 =?iso-8859-1?Q?BTucU6/kqV3QJnmZDyR8sumJnDWiEeju4rGKv+jIIQPNMDiC6fByodD38R?=
 =?iso-8859-1?Q?Kzrp+hXT2/GMLnawOedcZqwih5McMa6YpcvVlnv+xrWhI8GPP8m+HfFvnb?=
 =?iso-8859-1?Q?5jpFN2+1gk9X2WpRznU4bHDG404kaRe2Em1atvZGQDEUcSYsjUmGq/0HVM?=
 =?iso-8859-1?Q?HHDkMb/G1ofvxjZ9+CuUzTnhVuI+vr7xqVxcHZiP8LHFKyFrRlskFsdmZB?=
 =?iso-8859-1?Q?qdlR8BI/Vp4zhn49c6UrC8zKZwC61pvqZp9zCl41g0VsUEMXny0RTmoB/V?=
 =?iso-8859-1?Q?Ak/OPdNBBVoMMyIY70wldmzop3bvJDzUv6dS+JPf1uZJ0bPhPNg8pZmVgo?=
 =?iso-8859-1?Q?zMn9ILZp7oMPw+71s2Krvp0T9fcQtEZXb2JTq304NbpqgaM1eAtW8UQ8Zk?=
 =?iso-8859-1?Q?3k8jTRmJalpGbfK3VAfcwiew1SaWUO/DcTAF5pchiL0zwDZuMmGSFYazfl?=
 =?iso-8859-1?Q?5k6bGBFJs5IUChsoI4am+5TfViboxNxYy0lUcoTLuDPeVh4esHKJtHiZ8c?=
 =?iso-8859-1?Q?WJteIbZ72Q6jrqWb/uj323kOmdQn+z1rFAU8uHSOJEzQoWZXJ7KVTsUdop?=
 =?iso-8859-1?Q?u2CvmU8xQNucmrM+Lz4Qwb0Zkt+m8ekrmVBPhAJ7Eyye6HOpFHxIt83xJ5?=
 =?iso-8859-1?Q?9MD3gEDBiwQ7raMjO8H9onoZN+LdS6QzoXc/mvPgqMpzH/XtVYr+gz0OmT?=
 =?iso-8859-1?Q?FGKEjc+Itn8L3m9U5JfsTZXzpOY59/KTfuF/lg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(376011)(366013)(1800799021)(7416011)(38070700015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?fzCsCl+tAxMkG0ip9x01CLre0J/yQTzksa8HfYCnQBOu2j98/hAD5J+79F?=
 =?iso-8859-1?Q?zXd/vbhZtyk8KjfE0cCDlQhyRGmYk+Kc2iSLuoeODXJkOOEEZI/MjjaxZY?=
 =?iso-8859-1?Q?eG5LJ3TlnFOaZbmRxOpxrtpqK/+UUntNOC9wHjjWwsYJLORa3QG0GTM1ZD?=
 =?iso-8859-1?Q?/OvxXQE6NyLeH69I8wdBedEFf4RFKhtNwns/DDBPzFIWsHxiTtEMHPeOHv?=
 =?iso-8859-1?Q?VWf8fs6esSp6jH4SnRjvIB+UYwDxFKVKYnAMdlWpamptpa6GiQGG2XX9aA?=
 =?iso-8859-1?Q?4DtqE7FVcRrYnKPD2OPGoxpLlp4+8Qe8GWKo6r3DsrOTFBmdEsQnxPAkMe?=
 =?iso-8859-1?Q?r+IVC5P29JQuW5wwvh3YiWgWkzj98zmkLs6qC7Z74b9C3/TLmaT4kRvEDx?=
 =?iso-8859-1?Q?t2Gfa4CjsSXr7Rmc2Gy8l6VNo58QwgwaSwK/44W7AnQDsv9CVI+a8/T7Qw?=
 =?iso-8859-1?Q?GjpP7bYiqICXMgVQhltaAFgLL39mjgoVXZbtBYZ95XP/dibgbBVMxqehSw?=
 =?iso-8859-1?Q?SHiHVhCFdNK1tGtMOXxz43l9y9sV5cDQcFB96q7XWoSjmtm1veOFOtnnd2?=
 =?iso-8859-1?Q?w4kLLB4ua2P0MfA5rvztIzJVCEH+0uU7vaoCvZ6XjilNKMUPo7zJL2hM1i?=
 =?iso-8859-1?Q?dXPk+7LVKc9lmsnGqPFf7OfowPkuMRqRrruVFCGZ7fjb7UdpdzUv4/2klK?=
 =?iso-8859-1?Q?uF6Z30A+4fiyQR+yngNXVIqRgEEH+5VBXx24TqRaJU76RyeUCbD4+asp1q?=
 =?iso-8859-1?Q?irywfEaiDyLZsQDfNCe8PXIOFOi9BxEwpcJn5jzRH4Q0r6QQV77Bu3E3Bj?=
 =?iso-8859-1?Q?BWBG7giOoeJ9AILcM417QMqNtBqQYWwkvxq4f/TTo3YQPGaIRFG//CUn/t?=
 =?iso-8859-1?Q?QxhJ949N43oNUO2pYV3gjOgdsfMxW2rqR9+pXthgjX/Qf8734nMvwLIxJt?=
 =?iso-8859-1?Q?Pmfb8bv/eZKHHCYaRjsRLLZp+BFsx6ZSNVeyRRCGhddzi483isarZv+Yz4?=
 =?iso-8859-1?Q?hRJRcZ3GuUjMXFRyHuck4TMa2sKv2YP2Twtr9LNqPOvx09LAa1x1hl8vr1?=
 =?iso-8859-1?Q?HlmRKrjEuIr3phcVqNxaUmM+tqdeBkREXgQVaJPWB8EvEBGSgF/mHtw0XG?=
 =?iso-8859-1?Q?sZRw/XqWhHeIdbMI6knIqVP31UoAq4JJ0Bq3y3JIOyUwIO3xVM6xksxlOJ?=
 =?iso-8859-1?Q?s6xJA8cD7l7eGQK8UTRtn7Zemh8jWE/ErYjVDKTQYbGJ4HjmV706A8zC4r?=
 =?iso-8859-1?Q?k6GLQDKKY9FlBC8hwcF2flf2lzR7OvPVJ/p7JgCTMvqAcvxM3KnWXTxct6?=
 =?iso-8859-1?Q?yKMZ75yekpKdF1yyT0YPJRgI4ucM4nGrae4gBHtVV+USK3xPhPhO2lq89r?=
 =?iso-8859-1?Q?egu6yAcLF64zUwJKfqPkh885XhvxZsthjWaqaPoSGTZzj/hzfJCbmkHTx7?=
 =?iso-8859-1?Q?+xLiUPNbZAyeUOwOecZHCUjjzrNChIrVi6T0ThsBnETr/SrPoPKQ1Ju2r9?=
 =?iso-8859-1?Q?6X/qhmtos37gnriEyKYPE1rYbSXBxEKNofGXkkZZ7TZd0InBJdI6v8wzQ5?=
 =?iso-8859-1?Q?0oz2/a0o+VRWlFuSkZm8xHvwn/3xztd1tSQoJhuj6llZijnXB/5g2H3e9N?=
 =?iso-8859-1?Q?5lRV06a70klQ0KuMmJy4Rf1piaQNP/Gc0P?=
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22f796a5-ff53-4073-4d08-08dc942ca827
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2024 09:04:30.0147
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ehHL38lWZHB0+JDe3/r8Yzhj96Cal/vM/Dr7G2cT5o9G4Q7YXRRHaykdYDuLABi7fbkif2YpZ8xj3Czk1d9pJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7359
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_020440_306337_9A54CE05 
X-CRM114-Status: UNSURE (   5.45  )
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

> In short I would suggest to pick one of the following names:
> lpo-in, lpo, or ext-lpo.

Sure. LPO is more common for the clock name. I will rename it.

---
Best Regards
Jacobe
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
