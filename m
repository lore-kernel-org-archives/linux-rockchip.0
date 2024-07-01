Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C8E2C2BD09
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jul 2024 11:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3XuHnRdCSWePLu3r7W8kN/pvLlUkIlhOUJoAAE0rmA0=; b=beDuuU/0PA//PI
	0mIKXDQTR02OvB8xBSnNnjpDAbBt2V84/GROFKbU23uzkZvCmrAvKVUQqgG7qnAm5I/B0VsO6hS5c
	zNYJ7v6CIzccBBs0g8wkwdw3UmzAG3ytO/ryGu6KAAiTJZgycn30tdVgApnevWF18UTxYvk0u2XEC
	0SkNAD/UdWCML5F2RDV2s34BCoihh7KWa/38NJgxiyNJk241uUzhcFqxQ/ti5JSj9HFjcNBKQihnq
	1pt6lbhjLSbtGJn7zB8morzbNdnKbh128OnMhoBFR/yRhm56RJ+bWycZvKj+ryrjAhBdhxgj9Npre
	Ia/tSA33uGGsncRqvMww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOFGH-00000002uCf-1DpO;
	Mon, 01 Jul 2024 11:31:57 +0000
Received: from mail-psaapc01on2071d.outbound.protection.outlook.com ([2a01:111:f400:feae::71d] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOFG5-00000002u8b-2cSA;
	Mon, 01 Jul 2024 11:31:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LXajuF6pX2/OFyVLgOypYlvXYKh3rFlEsCvpczr6qrkQBVzWDd6mqkav0LF3lQvxOZgZkAVJbiwHQBbqklJdL8us4wDlygaVEJxE8O1okC36ifxT8mIeljEzO5cJZkqSmQt6vpGDeHHwQ+JQcNPVoxoGrrd9YJBd9KUl9A/E05z237rpklTdCQ3wiJEvKHdbrZsAVr5MQSXtOL62AJh837m4x32TkNbiZcQErt7/g7HZSNZBedAtCKWaecTKNSo5zM6P8bH4DXRlcUvk7cO4MzXMu3WWesTgBQDv4wnLmA9qglsxtReUaUwiwY/SSjnrum62qCwU0E2BFSvt+UUtVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNB/oj6E3ATgeAv7Spql3aeZL5BH2gwnTsO1OnjoiK0=;
 b=jWZaylRsVz//0vn1d6J6UMP8pAHfW0dGDbfAhwl89tY2DIvXh13rhdpwt3ap/mxjAFU9E5LVAwFkHNiykSX/zq52JQ048lVWNLen1h46ON4sPGGPMjkCtkXRCVIcU37EXcWMd2bjbcRXxug845AoUjc5Io8EOglFYq9FGdFlHSzzQp5eCAJmyQBu7WeprA0oPfoZZYSuUAgfRM9kk1sPj7RvRmFUi1r4yI5cj6wZTwhYZYxKiqhBUtTB2Ds2DQQyACWAS/M4zNw+So2AFs0BtGPeAM5/yhV0gVCqxSkJBL+X4v1NC8HMmMwQEGN1X/xtxPTNkwfNZeRZMK3f/Hp8aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by JH0PR03MB7653.apcprd03.prod.outlook.com (2603:1096:990:10::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.32; Mon, 1 Jul
 2024 11:31:30 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7719.028; Mon, 1 Jul 2024
 11:31:30 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, "robh@kernel.org"
	<robh@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"heiko@sntech.de" <heiko@sntech.de>, "kvalo@kernel.org" <kvalo@kernel.org>,
	"davem@davemloft.net" <davem@davemloft.net>, "edumazet@google.com"
	<edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>,
	"pabeni@redhat.com" <pabeni@redhat.com>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>
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
Subject: Re: [PATCH v3 3/5] arm64: dts: rockchip: Add AP6275P wireless support
 to Khadas Edge 2
Thread-Topic: [PATCH v3 3/5] arm64: dts: rockchip: Add AP6275P wireless
 support to Khadas Edge 2
Thread-Index: AQHaysA5gqQ7qqo00E6aPButxU3qdLHhkO8AgAAdHZeAAAytAIAAAH9G
Date: Mon, 1 Jul 2024 11:31:30 +0000
Message-ID: <TYZPR03MB7001C414251A2A844D121A0E80D32@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240630073605.2164346-1-jacobe.zang@wesion.com>
 <20240630073605.2164346-4-jacobe.zang@wesion.com>
 <eeeb3f1f-5c77-4ca5-b996-17b968b7c2f0@kernel.org>
 <TYZPR03MB7001FFD5180C6248F14EE48E80D32@TYZPR03MB7001.apcprd03.prod.outlook.com>
 <c2febca9-59e4-4505-bbec-6e61f7d8b944@kernel.org>
In-Reply-To: <c2febca9-59e4-4505-bbec-6e61f7d8b944@kernel.org>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7001:EE_|JH0PR03MB7653:EE_
x-ms-office365-filtering-correlation-id: 1edf8738-9d49-4c05-718c-08dc99c15a58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014|38070700018|921020;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?6SM48O8Zt7BSKYEmtgd/577nzeNvNArf7PiEBUAbrBniHrAwzlLA2Uka1K?=
 =?iso-8859-1?Q?vv8TxZesAOqwTph5KiN4luM+R9RT/lzXw2zXJMhApf8k6MAYdFMhfW4i1E?=
 =?iso-8859-1?Q?AixdZizhbC09KCfCTy4/ZKq2HuzcEV3qccKOInxzuh6a6V4si11W84r3l1?=
 =?iso-8859-1?Q?imreTs3BsiyApao+SfiEZZvRu8D2VbRhxOyu6croAZ2r1rJOg0qwTNxYEq?=
 =?iso-8859-1?Q?499e2d87kAeMD+uNyfyBx6+AEve7qWaPgd1yJM8CpIAgCYHd2Ge1GCmW6n?=
 =?iso-8859-1?Q?Ekbo/5slgVPdw7k6Tstb62iyIoVBBk9IltccVUYxyDN+1ADYNf9EJle2zg?=
 =?iso-8859-1?Q?Wxs31w7ezcy1InCb0JdlAGAstfLhQ+620D+9LK8/CMf+I8FGaeEgo2711q?=
 =?iso-8859-1?Q?pB+kqwUBjrw9n+zqiyuaLNg9CA8cm0CxxkEtmkRezFEprpln4+4W2i9z/i?=
 =?iso-8859-1?Q?JRtSKufodWC4G9ZSwjHyX7gPB8ttdhLZ2ICsbx2zl0S4d8gMawKTph5kD8?=
 =?iso-8859-1?Q?evZEuZGxmiuksu6jomSUR3Pc8DdNELnCnl4lWz2syp0CDoiyB4fVtvcIKz?=
 =?iso-8859-1?Q?CGjAhQDaTkg6Fi3CtXmRoi+ZtpFT28rjk/4qCgpfsUx83G6Y3ZMCdHrHKE?=
 =?iso-8859-1?Q?cPHFPIH8XFvAlP9WuqJUN+/9BdCicvMjyV/XaA645bA6ODSAohG6DIR1x+?=
 =?iso-8859-1?Q?HPv0zr7qr+qedsUuz5t8rrxKGTqaVffgw2nc5qxVteD8WntNlsuTbAg7fF?=
 =?iso-8859-1?Q?FQaNQ/mDD3ub6LwHNPuJvU2W0is2DjxwaGedyYtKfrWXS+eWlrGUEeNbwI?=
 =?iso-8859-1?Q?gnnsubvFtTJvq5CSbSoufw2MpSdnLm8wngIGNI+KSUxCg0TlABJXLX40e0?=
 =?iso-8859-1?Q?DnO3ShxjKLQE/4oL4mMmFSvnrrLWc7Lwq7sLgl5uuPaTtlySnCdYcJ4IFi?=
 =?iso-8859-1?Q?6gMyTGoPHjqLjW2lPueMKLvWviY1wlHAiD7Iv/5YMpV4TsjMkKSokuks8u?=
 =?iso-8859-1?Q?TzJgPxgw+XHIJqDpNv5BaGLnvGj6Bex9IlWpiXmZmVGVRNQSZbCFd4Sgn6?=
 =?iso-8859-1?Q?8m4hJY2ZfJB0tjGhD8D7BZ5RNhuVJ3+fSUKxdtt8I/hLsStAa6r5A57ct7?=
 =?iso-8859-1?Q?l7lcND89ebaMTiAQjlzV9nn+GNXvZqIPy8y0zUWoAcGXDFkoaSQ68tdqGV?=
 =?iso-8859-1?Q?CF5zALyqMAm+M3zYWfIkbatV+DtpksN3GCzfvz6BxeDbXwutcr9kmgzMot?=
 =?iso-8859-1?Q?f10BweI4vBSGDGMUVO6JPLPvnKzBIocjut1imRoH2nB5KHUbkIQbFQBTKQ?=
 =?iso-8859-1?Q?I4vZdN1U/ztXkrsWN6R0M6h/65OM50xZSVIRGPjTzY3Kaqi6m3YI/cXjbL?=
 =?iso-8859-1?Q?mWl78B//BExjaLSMqmvmF5fkJu1oZ0ziycPi2d3KVKin7kYOf5whwVUJ3n?=
 =?iso-8859-1?Q?06tNKjTt0NLRpPjhYl7E54qYlat+PM/q8YdiE1EcC2ccyeuaaPmWD1stxD?=
 =?iso-8859-1?Q?I=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(38070700018)(921020);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?JDO5TU9k0Aiyh5obS+D8TJ0xn0HfMFJpHVI0633Og//IrDoeH2ZgdgislU?=
 =?iso-8859-1?Q?Pf8uSG4ef/vPVZV5WtSWtHvq4ts+Xch19DCFWYxp9OVJ7fmGpF0U3bx7gl?=
 =?iso-8859-1?Q?KN2Y7cL/cN7Rl+y0EUzjW0yr4dC+1UyYBaMnV4a5cY41vQaoSiGgK2QIxm?=
 =?iso-8859-1?Q?PoiN2sA6FtGHc3BOEx6pAevLm4wPe6nPxkaUI7PRnAuKVfJ90ZaXGTha6F?=
 =?iso-8859-1?Q?pwwubLl5WFOlDD5uCZlz/Mc0QGGoSOMINxb/nrhITmiBsJPpEHZ2S/Y9eN?=
 =?iso-8859-1?Q?9nICMNDhNZPeTN6XyHKNu8UVl5cX8z12Xxq7au0vjJf3H3RQiiPvBAPaGX?=
 =?iso-8859-1?Q?3OxFYydC4+L9aLwNra4eKanRixCRwwUrOPidls4ED1ll9USn4cKVO9w/sn?=
 =?iso-8859-1?Q?8RpKql6snx0jW9+7/x8dENk1oN/kBXhLL0Sgea6o/uxA1Ze5/1x5B1bcUQ?=
 =?iso-8859-1?Q?82D4WyRbgKQaWIuzhWSZygKJFe2Mwrvj8QF6EeGyboPez9FLCTQt8FItC2?=
 =?iso-8859-1?Q?yZKDsSJDKL+MCuzzwG7YxrJ3IMN1eSG3iRB3zrbXlAIo3wm0F1VgbCH5ZL?=
 =?iso-8859-1?Q?ACVSMiKW0Ape/JlwB/91OuzjvdJlTQGm7HCWyylyzJMrHdW2qL1NMEtIss?=
 =?iso-8859-1?Q?bRsxiDe0ehwQRinB/aGiqSD+PdfN4+hPHZtiD0u1FKA3H399DxbF4fSxKK?=
 =?iso-8859-1?Q?vgkRteq6Wja3jCCU2FikZKeAlqkB+TFcjhy0p83Hraa2uk/ty+hqGEEmG0?=
 =?iso-8859-1?Q?eK3yWKwP8Ba9SS98tiPKEfRN7muurDI72EekfhlT3acWNWN5P/c/QtJTuF?=
 =?iso-8859-1?Q?KQIhwXFBXPi8XaGc84870VVUyQQRjPWTcFI5zV6HNZUUOYQx9ZX9VqQLWJ?=
 =?iso-8859-1?Q?23fYrvZFE7lMg8icYSWtrBBRgm6tFBm+bA/H1IlTmUiwSHD1KKs5yKSEJe?=
 =?iso-8859-1?Q?W7PwyrVqzUsOy4L1N7x9gj5ZBiQOukpVQMAkFNkxhsc/hyeddnM6UDnZh8?=
 =?iso-8859-1?Q?KPwqT2exfH2863fYVwgf58rkKE+GGRon7GVxO0c5dhgWMJwQN2vgzI4UV7?=
 =?iso-8859-1?Q?isbHHFkZamFXpTQhbTbFhtBVi67iet4wE3ScubOP+qnb2JPsVAAoHLf358?=
 =?iso-8859-1?Q?sTzBRfMt1UmnTbCOJVspd/jVmPoz5ZXShUq0y98hSPCEwBn2Ubd0mHTwPC?=
 =?iso-8859-1?Q?5f0WWyAc54AgP6yi8vf0yrIrewJwioPbJc3dSHekrsi2f/uAhW6oJtR6IJ?=
 =?iso-8859-1?Q?fovhx0KjpQ9vx/r+SRIF5jZRtZ7XNYwgUVWS/iN5U7lm78vIfNETGW3nrY?=
 =?iso-8859-1?Q?U4xhEnrMQnVGHRRrSgxZNzXDeav3kj30YZwJ3493u2r4CwJ+OogT11dTji?=
 =?iso-8859-1?Q?PVTgoUD2y2YrQ23gVO7M9Iho7fQ3coNXk8WArymBF3g639YMvh65qM9WMI?=
 =?iso-8859-1?Q?GVBXmc2uHJnvi9f6+pS342HI1kqxtwziusNNoZofwLEHWVSaWBe0A9UP3r?=
 =?iso-8859-1?Q?zkqdyBDTpiWG9tMZlD+EM/bx5Q6A+rC9zEGYXOdHcTY4QIVRls/auzJyYw?=
 =?iso-8859-1?Q?rM74TEwPM4mP7AjR6NvYi6Cbi0xNig727xiB/MUzLNRb5XzpyXH8negJpU?=
 =?iso-8859-1?Q?7w9b4TVsAYMVFwPh5KeoVhFC5v+wKqqGXf?=
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1edf8738-9d49-4c05-718c-08dc99c15a58
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2024 11:31:30.2653
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PfJmK39fcO3woJvrFbau2IdYynMs4MhRPHD+ALR4u8OXzoLmDF6o0i4YJtMZi4vnG1tpH+Zq6VRTshZBQL82Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR03MB7653
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_043145_689424_CE3F810F 
X-CRM114-Status: GOOD (  11.60  )
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

>>> +=A0=A0=A0=A0 pcie@0,0 {
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 reg =3D <0x400000 0 0 0 0>;
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #address-cells =3D <3>;
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 #size-cells =3D <2>;
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ranges;
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 device_type =3D "pci";
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 bus-range =3D <0x40 0x4f>;
>>> +
>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 wifi: wifi@0,0 {
>> Where is the compatible (again!)? Test your code - you will see your
>> binding is a no-op.
>
> I tried to build kernel with CHECK_DTBS=3D1. And didn't get any message
> like 'compatible' is a required property in wifi node. But when I check
> the bindings that do required the compatible... So I will add it next tim=
e.

> Yep, use different clock name and then test. You should see errors,
> right? But there are not, because schema is not applied to this node at a=
ll.
> =

> Look how Apple is doing this.
> =

> I have doubts that your code works at all in the first place. If there
> is no compatible, how your platform device gets of_node?

In file brcm_hw_ids.h and pcie.c has added Device ID and Vendor ID
for bus to enumerate the device when board bootup, so I didn't add
specific compatible in DTS. And by doing so, it can probe successfully.

---
Best Regards
Jacobe
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
