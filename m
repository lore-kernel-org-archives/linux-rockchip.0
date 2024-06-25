Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C671FC2BBCA
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jun 2024 08:29:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PbH+ABJ1SxYvWUq2DtqJeVwOzTGTdy9HBfO+YwlE2Fg=; b=Ncaf5zqRjLlMH0
	fC365eW/CkhhpR6Nxp0kjhsAbFth5Lj3riVR0Kmvzamva4ncZDjA3FX5Z0jXq4KJm2kpCHZRPi8JO
	ugEFk2bWaSZylzCX0eEOBjM0Iv9f2r0Md6JQGjbCRqqOStSbTdS8d6aNbdvCJRaBUqriNuC0Mx2kU
	wkio2t67I1Opb5PeFnJJNELwFwjDYqC5jErhwJpGKtrRChKUHTeBqHHz66RLc53XIB4shUkOr2zU/
	zJHtMT2t+65i5pQkBgdxxaDDpJz9XtkUyeWNif8Iz7qJLukyRKCIiiMkgRGkz3MG4itfSct+sWh9o
	g9AUgtWarCbEhRa9qRbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM1Yo-00000002741-0MDv;
	Tue, 25 Jun 2024 08:29:54 +0000
Received: from mail-tyzapc01on20700.outbound.protection.outlook.com ([2a01:111:f403:2011::700] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM1Ye-000000026y6-1sHK;
	Tue, 25 Jun 2024 08:29:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W7reBSHsMfFBn6Q2dTTd6FBiLIcMHPo0pKriaRujrIphpIRMNs4UF+3KL6iq0h5HlH77sNvvooNh2ux/cz6lZ9wBvZmIGih9TMBqMHrux6Q8Tr9oy4DX4oCwapOw/QogD/sMu3ZKuXmnZwpY7LEM/69mZpNxHjbZ0DOzVCpleOrUIDs3qw7Q5Ox8ylTsER+XyiVK3NhX/+d0ykg/pdQF+yw4IZLSFyqURnzyi1CFyml9DnP8/Gy0HL5rMYFd17ZwJaVHCiwHnbf3z5ORiohPaQwImXZTkiWbDSkACVR51mm4sITIDFLiVyp6/T2+4RMBpkvMwNHtuIyFjbMr6JTWcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZJqIH6p7bzrBO25jIZpcYcyDPtteqBX1rlVV5hUGV5g=;
 b=EUCh/NBW2xUSKmdZ+svKflbhTGBGTGS2iMhHItu0336Lk3ZxAu0O6O+YgAKf/I3QhIuZlX/I2OYeGBLhWYmVSRSTpmIdDwXcg0EgPnXuhrFYv7IrkkEJFmMkcQsnyPF5A3YMd2NQZUhG+JILcmllOHXiMkCQ5pdowPRI9NTdCvVKxW1mHgAwJGcmIKIqbu8KxgtYvTWk7rnk8ZrHXbpjG1VK0OMHWauQ7pCMwmElg9BGMbwOxV9Cmg/o4fj0yNHuoo4fMrWPTBtLCAYFiTiqTjUVj2N+8x9HJIuGgQtNdwBCVClKIcHmksKpLwmW8AJVsBKRYoRcVN/gXgWl+vx33A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEZPR03MB8314.apcprd03.prod.outlook.com (2603:1096:101:19d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.28; Tue, 25 Jun
 2024 08:29:26 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7698.025; Tue, 25 Jun 2024
 08:29:26 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko@sntech.de>, Krzysztof Kozlowski
	<krzk@kernel.org>, "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>
CC: Nick Xie <nick@khadas.com>, "efectn@protonmail.com"
	<efectn@protonmail.com>, "jagan@edgeble.ai" <jagan@edgeble.ai>,
	"dsimic@manjaro.org" <dsimic@manjaro.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] arm64: dts: rockchip: Add USB-C to Khadas Edge 2
Thread-Topic: [PATCH v4 1/2] arm64: dts: rockchip: Add USB-C to Khadas Edge 2
Thread-Index: AQHaxhEm0XqG3IVev02025ly93CghrHWzg6AgAFO5eCAAAltgIAAAIAt
Date: Tue, 25 Jun 2024 08:29:26 +0000
Message-ID: <TYZPR03MB7001A7F959478DD947C4DCB580D52@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240624083236.1401673-1-jacobe.zang@wesion.com>
 <6d8f80a0-d67a-416e-b395-7a33b539682e@kernel.org>
 <TYZPR03MB700141F5448D61A000D588AB80D52@TYZPR03MB7001.apcprd03.prod.outlook.com>
 <2403789.9XhxPE3A7Q@diego>
In-Reply-To: <2403789.9XhxPE3A7Q@diego>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYZPR03MB7001:EE_|SEZPR03MB8314:EE_
x-ms-office365-filtering-correlation-id: 0401596f-7312-47c2-874f-08dc94f0ecb8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230037|1800799021|366013|376011|7416011|38070700015;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?J54IO7FilMCygtjjQQmQGlEHEuh/ZMKAcngQviv5dlDlWWc+P3Fw+D+5Gp?=
 =?iso-8859-1?Q?JX5eZmlGD5Mby5QCyUPev1B3jEi8JGWdUWARxvXBS+CNRIJrTuGjmYezH4?=
 =?iso-8859-1?Q?KmWsPW2oYVH/w9fNC50gFqiBxGuJN6BuG9SFsqE4K98xbc+93/Et58f3cD?=
 =?iso-8859-1?Q?dKx5d+saIMj2VE88D5Cy4hpNN4p1du0iXZ+G6m/Ai4QET2kEFAdkINqWFa?=
 =?iso-8859-1?Q?9xNgZAuo+cAEr5CZTnEJYzfBLnMfr/QU/2iWhoVcdfSOA+7YtthIS7AP6U?=
 =?iso-8859-1?Q?R/NfJ3nHps8WwCLpsSZ55tW25xf4TrfaGx2dlCpek4iuxRX0y9EUrnWz6g?=
 =?iso-8859-1?Q?EoOoCDACRqEkJDPfNMFEgRVf7pnh2EC5pe6g+rIl4d9NcRHjriUNpgqdGi?=
 =?iso-8859-1?Q?sVOiEYlZ9lpX0BP0hA11Wx58oIXh9rhj1OFawmDHAcGiqs4m2XmphtZwiS?=
 =?iso-8859-1?Q?RSV4gMTxf5vCuVYNh4DkfPUtG7JlprTmAK9D79hExWWs9SyjkMUr+sxrAQ?=
 =?iso-8859-1?Q?mYb79NHoJMfGXlcmKT8ALXdSFTlYCd232eaN8KJRxw2B+mRlw+HhNJv0js?=
 =?iso-8859-1?Q?K5aDwq7kUaBr01liBBXIeR7XO3vC8IGqYeMyYT4JhO8iMme/MedibhJlCS?=
 =?iso-8859-1?Q?Mpdt/hNoS58h+YZXf6KvcEcPa+FWAzBK3LX/Sp9fhnxvHNyz4Dv8JrL4nW?=
 =?iso-8859-1?Q?cnm0hqQuo7lv2lCvLWcmQnktVTzE2miCtJbXaVNv7VD79A2jrPNGNhQJcE?=
 =?iso-8859-1?Q?lamIF2D9Dg2CIcoAnIxpQpY+Z4+caP22UGcjw4J46n8i6ptKx0ZMu2tPPO?=
 =?iso-8859-1?Q?9ByecjUsjec0BgSLrpptxp6OP7fFWBi99z2wFcaURTVexC+8WVBlfscOBg?=
 =?iso-8859-1?Q?9VLXnlsm/mBWTxpHdmzQSKyqe67djChB8SCOsrP5qlLatEhmvOdfgMkevv?=
 =?iso-8859-1?Q?Q4pkidZEZfnQN6uC1Nw/M4D+K/pgNt+8WkOi6TlENM0T3btOHIXiEERG4/?=
 =?iso-8859-1?Q?/j07Np9qEaVHgomCfBe2zA++vtvnqQSv9ErF4+3pXMbOV8SFSg67Y+QvwB?=
 =?iso-8859-1?Q?EXemLNRdhYeDj5MZyYtLF1qEIp6pNtu8n0cey7OiBFjS1sIXvoaNZ5ZMQ5?=
 =?iso-8859-1?Q?LyxfRWKIxSQPG8eFdYhVUeR6cBu+u2hPQNn22UvsshiWGLbJV9kyiPV5Pt?=
 =?iso-8859-1?Q?eqqR+7dPGGZ9RlTkGqaIdsc3erlCFXywlfGlrlQJRq1+Rh2BrbuMLgx/Ik?=
 =?iso-8859-1?Q?U8D5bblQf3ARi25E5/+JOz479NOb/jsMEE4CUFNp4eFtoTwobLJ+567dK9?=
 =?iso-8859-1?Q?YsIfAcLTe4tIr0Cb+ITxFBVlsRs4raSxfjfANbFHNZIqvVpO7s2x5/XzU1?=
 =?iso-8859-1?Q?xMH8w3RuPUaeKGgNQcXtIHvQ/rODvnPZJzyjOQ5OjS+t88C8yJDYmGUUXX?=
 =?iso-8859-1?Q?lEvO9fP5OyxGRdCrYuMGYxWQDFVLnmvRc2RyJw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(366013)(376011)(7416011)(38070700015);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?GdXMy3ZyET0JYhvD97+zzW5X7ZbuYPCfEqMPkeUZ3Zcn6ylgAn8nc0pNGF?=
 =?iso-8859-1?Q?vsy2d6z0wD54bb+ydXLVxaCTP8pvc5oS1wvkWOUIddehv7/2Lh1DG4IKFD?=
 =?iso-8859-1?Q?EXc3G26ldYtcrRFwcjKI+sUEXtTl156G6cjmrb5UFggkkY1Ow1qxZ2oy6t?=
 =?iso-8859-1?Q?4JRrdvItWAWynuUBebWyDsFZ0PlZhThqbk9ggspEosGG3KtKQkWDBPVZC5?=
 =?iso-8859-1?Q?dP3UbO7gRGMBVAhE/TnNjrih+MsdaBgQ7ainvjWUPeE1NJRh9HV6qcTHx+?=
 =?iso-8859-1?Q?4UvX7uBVmG9HsqzZsVr/Bg9chU0BxyWoicefRtP4CQgvxFC+vaYzKJzEni?=
 =?iso-8859-1?Q?mH5FoMNWKvVKDnZq2Z5dN4+Xw0ODymwCy0aFT/f5BeJd5GR36Mw0aQHiDX?=
 =?iso-8859-1?Q?mK2jWPS+vhohE+Ix6ZnJ5w7UUCADJNS+DXNf6b8HZoXtEArvFU5nMHgXjp?=
 =?iso-8859-1?Q?B/qCDpAHPk1AiyMGTsA0lFu3jh7wtDkTsHf7vHRxoxn2810hUS5tXEEKW0?=
 =?iso-8859-1?Q?IX9fu5H8E/uFoyuArnyiDSgHA2HDdgyTk1QB3tVf/ZXdgG1izyhOfrJsuT?=
 =?iso-8859-1?Q?nf2uUYre3+zXtbO/uyeQ6PNJQuh+uS3I+P4yuurTMqsr6Z1jxLu3jYCiCy?=
 =?iso-8859-1?Q?iXiGF4OnXYIeWuj6L+9Qd9OThvfAPIu+9nfMdJJZIY6wtNzieYwPQ0HLtP?=
 =?iso-8859-1?Q?as6QIkA0oAtIf6S2Od/OqTMxi3EZ77pdVnTOEssCfFznNfhrjCHlSaeXSs?=
 =?iso-8859-1?Q?kKXeZePJj1OX7DsAGj5/WAsvn5XYJeycLjmWd5eyWZ351fMD6qDQIGQ3Hg?=
 =?iso-8859-1?Q?xpQgBD5SB7ck0OC88tdU/DLpgPhvwfb6q92Uyb7seX/XYyAzWAuZrN1D4W?=
 =?iso-8859-1?Q?lnOYvoNN+gBTOvRpIssh2FP7oeozn4rqLEUf9t/zNHa1F2V7GGVjrvg+GH?=
 =?iso-8859-1?Q?4+dE9l7AELEIcDZJuUW1KzJtKETXnVOwknqcDC4ioOI2knLF5ZEL3ic04y?=
 =?iso-8859-1?Q?KYTrqdDOkxFhkZdR9Yvjp7f1deF8Fl+357thnBE23lvpzEKZXo5twVfseV?=
 =?iso-8859-1?Q?HsrfGgaXEMW7lmic1PieUaUUQaaZqj3ko5PtHIxZPA6SbH5lhN1i6Gi/Ju?=
 =?iso-8859-1?Q?GNNw3q8TCb5gwNnEge0/dcq2E6E4sy2u/mJy83DaLMRBAVUV36LaeXItZK?=
 =?iso-8859-1?Q?kjokGCBr37bVd5ztrzH0jbzXnI299pnaydbiu15u9qy+Wps2hm7a7PYFDR?=
 =?iso-8859-1?Q?9UavlcaEyRksaTxIXOCNn/dfK9dxU4Cl0hjPz/O9b5D3f+xX1kr1GJhCDz?=
 =?iso-8859-1?Q?rW9l/Rr7yZTnq0pPiWhaKXB+EF9CxDwL/t51ohAe+DX9PM+tealSL/1uew?=
 =?iso-8859-1?Q?6POIv08YPGcjpSOTsPnaJOAX27aJrxnSuXxJJ0hBM/yHCHM5fIPVgYer7v?=
 =?iso-8859-1?Q?FXm9rqCfhY+90Rik84ZcZ6tCxhEQgM4vq2xYZXllvrB3zTupHyqpcZ3ZST?=
 =?iso-8859-1?Q?LhDsOqFY2Fz54KdFLeh1zKs9SbuZVRk+UArA4ajBtUc4hQrmswplO+KBS0?=
 =?iso-8859-1?Q?aE/CPwZSEfR/M45nhKhSAtmH/L0DsDcDhaM+XpUaeYM5YfpjUxGl9vqTCT?=
 =?iso-8859-1?Q?jnETA+ZHz7RdouMsHe6fliXcIPjun+sGLP?=
MIME-Version: 1.0
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0401596f-7312-47c2-874f-08dc94f0ecb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2024 08:29:26.3898
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 26OInhlZkwq24zhLdVo5gtPSnIlOBgt+DIMfdQiTXZGjV9SUXklIWRxLufpQ8sKd9SjZ2yuouhpOOsF7c4xHGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR03MB8314
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_012944_508389_24F883F5 
X-CRM114-Status: UNSURE (   7.73  )
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

> what Krzysztof means, is that the default for status is "okay". So for a
> node you just added, you don't need a separate status="okay"

> This is only needed if the node is added in a base dtsi (like soc
> peripherals) which are then enabled on a per-board basis as needed.

> So please just drop the status property from you fusb302 node.

Now I get it. I will drop the property in next version.

---
Best Regards
Jacobe
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
