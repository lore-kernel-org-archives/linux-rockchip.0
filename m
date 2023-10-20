Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7171EC001DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Oct 2023 23:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:CC:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BXv3qw5JIv0osKwx5prSK6cHfQL7hJE9/YaHaVztAOA=; b=bFdOpds+11+oM1
	pwH2Sg1OxsGxy+zN/8h+ADosCRP+8ix011X2pWYLimcZNbSYnatOhQb+7ijy34G+0resKsgjZjpxE
	9xD+wIX9YFRckwYZUkM1wgg1p7oe1SE3Shb40QUnzz/kyG50gBN6SEFdl3xSM1WOlfoG/L26+e4fm
	60JYSjNFX0lW6PUN3gNLr7sS5adZ8J+ototU6ABD08JzSnwRXsC8+a8E2iy7K2BNWs8Tygmt9Pmq4
	QWbFIQxoITeA8zTmSwA760AhXnNP1tpln77VrsMuxrTd98evoUzhUjqUL+Ia3luwF36XH/kUYRqEx
	uUhljCPq8lFUyPY7W24Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtzOM-003DVs-0X;
	Fri, 20 Oct 2023 23:58:58 +0000
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtzOG-003DVD-1w;
	Fri, 20 Oct 2023 23:58:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1697846332; x=1729382332;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=quCU6T/2xzCRcLGP0xhZuTk5ZnlUd58Cq+Rz8w9lGcs=;
  b=pBydkdnctULaykSp7sz51ROhSAcyFkzVZ0ldM3YrfOuq0gWMHde8M7IP
   pnlFpX+XrqPRbqH5xVez746YbVR7N4VXcDlZRIiDW03O5EO/kdDgo/K0Q
   AHHmzt3yJcnAFhSBRjFQ2WUid/EadVMZ9UGJ0HfKTav6gxxPr5zVGGzfq
   C04XRl4LtpTY+FG8DB3+46u9Fwxc/OCsg75w8aT8UE6iJFhwa8+KYcnEE
   GIs5n4JuddY3CTxfKYoAsMSUt5IIYxcFGnY+P9+wRaVvPpbnqc6egJM9w
   Jy0mLnJIdKHApN4fw2xwiJZlr/hqudrWsZiT1dtW5Hu84GRsGIVXUgMCE
   g==;
X-CSE-ConnectionGUID: MoLu/HFqQrWA8a6SAFKnzg==
X-CSE-MsgGUID: c57FMxacRFOveHVER9+5dQ==
X-IronPort-AV: E=Sophos;i="6.03,239,1694707200"; 
   d="scan'208";a="247053"
Received: from mail-bn8nam12lp2169.outbound.protection.outlook.com (HELO NAM12-BN8-obe.outbound.protection.outlook.com) ([104.47.55.169])
  by ob1.hgst.iphmx.com with ESMTP; 21 Oct 2023 07:58:44 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YlbWaYMhVZF3673idNpaueEOBNZcItbC+EfSJgVlNCrszbqCcZfbGmeyo5Ght5FIZFHill/mm6VzjkXUlQ/AQeXVymqCdIe1UBjPA5xOpJsC6GYPvkt5jkCADWbH6XR5dQj6Q4xRvU2GRBWulLOCgbcTUdimw3COWH1ZQ/Frp8OZMsuORHDcKGuEq7DG8K5TPBI4381bqVPus1NKBQ0NNhUD8Ru0kTea+at16bczvrwPacbf4Ki7JW4jhvbKDWDeX/a8+ZHQYLvRQEm+fx0EF31/g0cq3HCjPj8sL9TSujM0XWjCzMqTkWHDT8KEZXGe2OeULxW6I0tME0wchFN7/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OMEzSDJcbux80HHi2PQMShaX7YOBxaCvMBKJnjnOEw4=;
 b=GQEx/wbkMzU3qbqIRoeFiVnc5R+umJgci6V/aqPzUmcI7kQfa2JqIAqbvab7XzHhvU0waklAYMJpwWJ2oXxrcycy6XaeKdwvBPIFMnUh7+2AEXXrrkFwpv7xDctjU/IO0TtyZizbfzaOw8XdMfOdWHqNrPl4wcnhiYE9dHndvzWFQjvMOoZwLJwYJOz/eNmEhaSxb0A0Yx1uQhW2ujIkCBd5CseAX+h2IVA0XHu7iMYX0GVMWZDXJ+goS1Zg4js3giCWJsug+/gCITUNrVxJxMoPg1UKwE19+bFKBtqwLsB1t/5O/UpgbOoH6Xj/eBEH3NWlOzEzTnree1BM/JJh7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OMEzSDJcbux80HHi2PQMShaX7YOBxaCvMBKJnjnOEw4=;
 b=uCNDkbgMtJV7YEe9J8VJskglCdwSoRF/RWrQa60DDBa1TVy3gjClIegpzbcgeeUP3caGsCVCRZrybJAOjVIVHOlh1Xjjh5Env7GOgwXa3PN2Z1EMpkJztDSNuAXYlqRvDyKoXjnYHT9Lt+vQb+akUIFA4jj65W/udPDQ4ZPnfuc=
Received: from MN2PR04MB6272.namprd04.prod.outlook.com (2603:10b6:208:e0::27)
 by DM6PR04MB6362.namprd04.prod.outlook.com (2603:10b6:5:1e7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 23:58:41 +0000
Received: from MN2PR04MB6272.namprd04.prod.outlook.com
 ([fe80::6fb5:ecb:1ea0:3b1d]) by MN2PR04MB6272.namprd04.prod.outlook.com
 ([fe80::6fb5:ecb:1ea0:3b1d%6]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 23:58:41 +0000
From: Niklas Cassel <Niklas.Cassel@wdc.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
CC: Niklas Cassel <nks@flawful.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Kever Yang
	<kever.yang@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>, Damien Le Moal
	<dlemoal@kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add missing mandatory rk3588 PCIe
 atu property
Thread-Topic: [PATCH] arm64: dts: rockchip: add missing mandatory rk3588 PCIe
 atu property
Thread-Index: AQHaA1SCrIufVmkTUUCx9Kz2w2BEYLBTMM+AgAArNwA=
Date: Fri, 20 Oct 2023 23:58:40 +0000
Message-ID: <ZTMULogkdGevqMaA@x1-carbon>
References: <20231020125221.3564951-1-nks@flawful.org>
 <20231020212357.xwyvsncv5y5ib5gz@mercury.elektranox.org>
In-Reply-To: <20231020212357.xwyvsncv5y5ib5gz@mercury.elektranox.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wdc.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR04MB6272:EE_|DM6PR04MB6362:EE_
x-ms-office365-filtering-correlation-id: ca5f7623-dd74-4277-bb4b-08dbd1c87bd5
wdcipoutbound: EOP-TRUE
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HGCTD5DnK3xj+7bq3j9VRFl6EZfVvhCyEb81zpwp5kRjE+a5s3zZZoN03MgFodrxU5jaymf8xzyXlTPUubToYn2CBwVFUZfK3meCrmCNoCEQWWauCAkCzrnrNekmGMcByB8IW5kJ1QBV87V90Eti46dJQMSjr8p3MJpk1SbY4tMHFEyh1x3ijo5FJvI1PRwpGXiwSfxrmRJZW7aP2d84kIVQm8ZM+9wEwq9lNahpJg+XpmtnT/XFlA/UCoUm4aaGVlcZWNRwEDmSaC/k5E0p0mMMdj0iX8POiFvA/qXkTaqnU002GA3IR0ss5+NjqfpkIMYkIswOyH4ujr4RhLc+ka8LIpRZI6lSuW9qFJPUs+jKolaNjRLc5DytXRje3su3872ZVupztSXFXOvbt2RUo8SwQXgF5HLQmI/A4lp5r4tGTFt/v6wtR89nXHND4SYIcATVpsXX27kSHh/GkVdQtxTMvJl1WlS3et9wp5wEjw+Mf7/KCnnVJrH69wXvK2rXZxp5IUIA9OKqA+b/4o33XOBfKmmZ1a40xwJQJDxbUMTZnuCahfS/cTYl3h71ausFf5S1Xko9ZusOR8NvMW8lrs8Ns5aEhgJAiFZemc9NQHiZK1iNl30ixFTKvsIoIb4L0J1yJ18DgB0R8V7LlPh/mQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR04MB6272.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(136003)(376002)(366004)(39860400002)(346002)(396003)(230922051799003)(64100799003)(451199024)(1800799009)(186009)(6512007)(6506007)(71200400001)(9686003)(26005)(83380400001)(41300700001)(5660300002)(4326008)(8676002)(7416002)(8936002)(30864003)(2906002)(33716001)(966005)(478600001)(6486002)(66446008)(76116006)(64756008)(66946007)(6916009)(66556008)(91956017)(54906003)(316002)(66476007)(82960400001)(122000001)(86362001)(38100700002)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j2iYStSz7TNO2s/lZBB9pzkvT2FZuY85snpQCwQT2bw/UsD2yvVayGvqX6Fj?=
 =?us-ascii?Q?QDk+uVb8UowzoBWTfVMbP2SkkW/+alCV4TKTRhsEfCHIcq7JNNNSmurpCSwc?=
 =?us-ascii?Q?vl8DKcI3cZ8GdKvNmzDYsM43yZvw5wFfeopPYxL4Tpj7effejZQveY5rmTBd?=
 =?us-ascii?Q?W71Bq3pIwlCggfv5enf4D2q2YlozB+gb1c4wk1+rX9sdYpsNjTmeXWfvIEwY?=
 =?us-ascii?Q?5bB1rtcjaMbHWeSyvBJSlJsU2WVr/AtIp3pc65hgf+1E+z/qdDCpyd9nGTOX?=
 =?us-ascii?Q?wSyeap2WPkvVUU9m641lBnB3mrss5Y5iq/SYwUGj7fUEki9yBp5L1rb+uyyx?=
 =?us-ascii?Q?mqGe1A84rQUhkWkI8fBKGcwRPCBXFeCdzx0fmIs9lsLrMExuITw8thv+XLKR?=
 =?us-ascii?Q?C0uOqFmHGxqG4N+OjE1D/mhWTnmOzIaoPaVhdjmhy8uHpCFLt+46PNnJFNTA?=
 =?us-ascii?Q?gFNQNnFRvdmXGIE/QGjcqGDWk11KYSp5o84VqZOIKldPmNQ7A3Vr1ijBBFKx?=
 =?us-ascii?Q?quA0uLiiqMptNcez69f38ZJnBu5bhHWYvEQPWgoK2YeTl85bJ374Mwgt34IN?=
 =?us-ascii?Q?XMdB5mkVr40hTHnPaWjtyX8EWIVpKS1yqHRz8RqQ72zWGoeVJ5KROJFaW6+/?=
 =?us-ascii?Q?yXlQjX15uRqrUjQBlvv3t5WNYKu48vDrUdKiUNmqsGpEVuU2nNsBi3xIPACZ?=
 =?us-ascii?Q?qHLvqrHftcRQhJ5ERfS98IIhcT//l/ec1qQvG26mreZf3aFiKp3LgjIpkwJS?=
 =?us-ascii?Q?3tsXloQIQOkbxYR2b+TOYTSebJ/gCIQWl8bHBCp3CYEPWEMa9neK+KAfGz73?=
 =?us-ascii?Q?7OIKRY8APvz8mpIgEzuOMngERQhtED7zJQrIXosYVpZCzwdgvrnid7OrrZ7p?=
 =?us-ascii?Q?Gytgb8NjKnqVfTByawW37Out3aPjDGlgaX7s4GNIg4yyidP/tQRdt+4IIaP8?=
 =?us-ascii?Q?qXfgXWLkRV0c+AL+wDDya2KgQTjXl8cosYvI9hd0BSAava/65M9SSKd1y9C4?=
 =?us-ascii?Q?KrVCRrGkPkXevbqwZYXNLIpGFPXIbRx3JhVIetAHf2bWm9biQ4Idoeagu4kt?=
 =?us-ascii?Q?CWxVqSM2yU0JhCqFgMejxSx1OdcNYgDwC+WU8wdca2PAX+jM66/csSRT046x?=
 =?us-ascii?Q?fabbrZjgxVvIu4m3rm3l4cnkhy+VPGUU/UQZ7ek73zIB5KKvaU9TT2mp1goS?=
 =?us-ascii?Q?5EWLJxw+qx2g12aMV8zVbl+gM2NMbITrRZPQZgjx8yoRkPAsHyUbzSmcom3b?=
 =?us-ascii?Q?FM6wg5j2vlxNE7BJ3QMIbqN9IY5/2ca8CS31Sb/ToWdJzBzYBKqmE16sn3xC?=
 =?us-ascii?Q?uRwgCfGmi5P86fig/6YAywk36hnf2TfbJ/9KAhpGeA9IQ/+Ck81RxnLzOOtN?=
 =?us-ascii?Q?rz995s1L63SstNgcsZAPWRY3frtNP2WM6CBGmBqkY/DTWTwxP+N/lrddZwap?=
 =?us-ascii?Q?1YhB7oPFxlcftmGP26snqL9zfNkcGG628cC6jZgw/WKKxSblLmr4SbzS3kg/?=
 =?us-ascii?Q?mk4s8SlxwKcaQ35PZ/N0BSDLMvmKtG74erxiN4bBsxqpgEBc4H42vReqE6Qq?=
 =?us-ascii?Q?AzAuTjPnoxeyg5jHb6bLNIyQR5Xuzj0b1dqkb7xMT/wXGG5XitI56D/TpBtA?=
 =?us-ascii?Q?yw=3D=3D?=
Content-ID: <4D74DC03AD4E664DB3AD67A28DEF5AD2@namprd04.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: =?us-ascii?Q?eUUDU3Cu7paBHleA+6mpDURfr9DzmT6DDPjO92zEY5UcA6wn0Mxf3fW5S+vR?=
 =?us-ascii?Q?zsxHGS2WdT3VfLya4uAp/StlsZd/JpK0pCnpiY/5Cc2ZOqhJ5jaMTLj3MT4y?=
 =?us-ascii?Q?7rh3APgpvlPW2qiwbnp7gY+w2sVooqEyKbfzLXT+/cipdc+IF3k9G6DtzqXZ?=
 =?us-ascii?Q?n0LqPQCeLNb98RfR5wC8PLzwTTf/XwINMopzohoN06xanMUeVgoyfevukKKT?=
 =?us-ascii?Q?FKenn+AoU7fVRXVHArQn0p/q1Xl5I1IJ2nrG7c/LG+WXkY1TA/sS44VGzQbS?=
 =?us-ascii?Q?V/YUsvrhgUhOZISIH+tiqSqFaB4aauR0G3mjDstHncefLuzc02DM21/YGQ2E?=
 =?us-ascii?Q?cJJfVJt7RY/Xz1nZsvhzALAuMqb26OTEx4cWPkILhwu1ZxqZvyWxT+gV1wQj?=
 =?us-ascii?Q?4QRCpehBe3ttmo3NxWG2XPN1rQ8KHVheEF+wMzjcv/v+6hVGy44Rxn57JMKq?=
 =?us-ascii?Q?7w2BkTeBea/lGpoSQeH/iGd60cxXcUOSBdUHVmNi59ty5gfnd33nIXbM956p?=
 =?us-ascii?Q?qirqROal3zkDchPSCUgRicgE6UonfR5OVJc2LJMymnI9UuWLImcaIbEK6+hn?=
 =?us-ascii?Q?jv2FYlyAdV/pXYFtkv/CMsFJfb+RNBt1kPEDjVQOKMgUlSlurv4yTCF5Q2jd?=
 =?us-ascii?Q?L5znIhTN7VX0djqzPH1FyTDGGFmWOLis3Q+SUpM1wvOhngDnOndt2PDxj2yN?=
 =?us-ascii?Q?8ZfUqyISluZdIHRoZuamwxREm6ZtMpIA29nSuOPaGAfia5JmQP0vx0E0KACa?=
 =?us-ascii?Q?2JXp22dEuLF5sik/hD3ZmjsJYDo2elFacsFcR9qlsi7ybL5MtpQORoxqkbbU?=
 =?us-ascii?Q?NaA6SzZOB5EWAN9PJB1m2iGJ98pu4+ghBSfe2ZBl2oTnjeR/eYfsR8wg3P88?=
 =?us-ascii?Q?VZmItpv/tKKEtUCkpY2xpar4mhgOPXBjWZumW+eoFuJtRWx6mTWmU1L7Vjbl?=
 =?us-ascii?Q?qHgmvkbRp3SKvPoIxKUHRJWSXseQn8aEdO6w2Hvd4FDC2JtcTRTSoiPFvQkH?=
 =?us-ascii?Q?v7M3QVI0vgyPMRpLca7sLBWzb/6bAyqhjRHBzpmJdMALEQbri8UUb51FJFpe?=
 =?us-ascii?Q?1VhrNkgF?=
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR04MB6272.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca5f7623-dd74-4277-bb4b-08dbd1c87bd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 23:58:40.3845
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5+dc753spRcmooMnpE34mpfbOqN7cAKk5dznqQcyv0Ccl3ynJiDaQRz5jc688OxyYSyDOq375/LAE18y6V+Htg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6362
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_165852_911216_FF3780F0 
X-CRM114-Status: GOOD (  30.59  )
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

Hello Sebastian,

On Fri, Oct 20, 2023 at 11:23:57PM +0200, Sebastian Reichel wrote:
> Hello Niklas,
> 
> On Fri, Oct 20, 2023 at 02:52:20PM +0200, Niklas Cassel wrote:
> > From: Niklas Cassel <niklas.cassel@wdc.com>
> > 
> > From the snps,dw-pcie.yaml devicetree binding:
> > "At least DBI reg-space and peripheral devices CFG-space outbound window
> > are required for the normal controller work. iATU memory IO region is
> > also required if the space is unrolled (IP-core version >= 4.80a)."
> > 
> > All the PCIe controllers in rk3588 are using the iATU unroll feature,
> > and thus have to supply the atu property in the device tree node.
> > 
> > The size of the iATU region equals to:
> > MAX(num inbound ATU regions, num outbound ATU regions) * 0x200.
> > 
> > Where for each 0x200 region, the registers controlling the
> > IATU_REGION_OUTBOUND starts at offset 0x0, and the registers controlling
> > IATU_REGION_INBOUND starts at offset 0x100.
> > 
> > pcie3x4 and pcie3x2 have 16 ATU inbound regions, 16 ATU outbound regions,
> > so they have size: max(16, 16) * 0x200 = 0x2000
> > 
> > pcie2x1l0, pcie2x1l1, and pcie2x1l2 have 8 ATU inbound regions, 8 ATU
> > outbound regions, so they have size: max(8, 8) * 0x200 = 0x1000
> > 
> > On the rk3588 based rock-5b board:
> > Before this patch, dw_pcie_iatu_detect() fails to detect all iATUs:
> > rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
> > rockchip-dw-pcie a41000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
> > rockchip-dw-pcie a40800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
> > 
> > After this patch, dw_pcie_iatu_detect() succeeds to detect all iATUs:
> > rockchip-dw-pcie a40000000.pcie: iATU: unroll T, 16 ob, 16 ib, align 64K, limit 8G
> > rockchip-dw-pcie a41000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
> > rockchip-dw-pcie a40800000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K, limit 8G
> > 
> > Fixes: 8d81b77f4c49 ("arm64: dts: rockchip: add rk3588 PCIe2 support")
> > Fixes: 0acf4fa7f187 ("arm64: dts: rockchip: add PCIe3 support for rk3588")
> > Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>
> > ---
> 
> Thanks for your patch. This looks sensible, but I have two comments:
> 
> 1. You need to update the Rockchip DT binding. It currently enforces that regnames
> must be "dbi", "apb", "config". Thus 'make CHECK_DTBS=y rockchip/rk3588-rock-5b.dtb'
> will introduce new errors after this patch is applied.

In the rockchip-dw-pcie.yaml:

  RK3568 SoC PCIe host controller is based on the Synopsys DesignWare
  PCIe IP and thus inherits all the common properties defined in
  snps,dw-pcie.yaml.

allOf:
  - $ref: /schemas/pci/snps,dw-pcie.yaml#

So it obviously references the snps,dw-pcie.yaml using allOf. snps,dw-pcie.yaml
is the schema that has the atu property defined. If the validation tooling does
not support inherited properties, that is a bit disappointing, but not something
that I think should stop this patch, which solves a real problem, from being
accepted.


> 
> 2. You calculated the exact ATU size and used that, but the binding specifies,
> "iATU/eDMA registers common for all device functions. [...] Note iATU is normally
> mapped to the 0x0 address of this region, while eDMA is available at 0x80000 base
> address.". So the size should be big enough to include the DMA section. So I would
> expect it to be 0x100000 for all controllers.

The device tree schema also allows you to specify the eDMA region using a separate
"dma" property.

This is what I chose to do, see my patch in:
https://lore.kernel.org/linux-devicetree/20231020224412.3722784-1-nks@flawful.org/T/#u

There are many reasons for this:
1) Having both "iatu" and "dma" in the same property is just plain confusing...
There are two separate properties for this in the DT schema, so it feels way
clearer to specify them explicitly, especially since they are not contiguous.

(There are a bunch of registers that are currently unused in the register space
between iATU and eDMA registers. How do we know that Synopsys does not decide
to make use of these unused registers for something else in a newer version of
the IP core?)

2) The rk3588 SoC has 5 PCIe controllers, but only one of them supports eDMA.
It feels better to specify the actual size of the iatu region for all, and
then add the dma region for the 1 controller that actually supports it,
rather than to specify an iatu region that is larger than it actually is for
the other 4 controllers.

3) This matches the way the existing device trees are defined:
$ git grep -B 10 \"atu\" arch/arm64/boot/dts/

I cannot see any device tree that has defined a "atu" region larger than
0x4000. (Which means that none of them are large enough to encompass the
dma region.)
And we know that at least some of these controllers support eDMA:
https://lore.kernel.org/linux-pci/20230717065459.14138-4-manivannan.sadhasivam@linaro.org/

4) Even if I did specify a really large "atu" region, which is larger
than the actual atu region, and which is large enough to encompass the
dma region, the eDMA would still not work.
In order for the eDMA to work, it also requires the proper irqs defined,
specified using interrupt-names = "dmaX"... which makes most sense to combine
with the "dma" property in regs. (Looking at dmaX irq and then reaching the
conclusion that eDMA is actually part of the "atu" range is not really
intuitive.)


All in all, I think it is way clearer to specify them separately.

Or the driver should have went the other way, to not need to specify
"atu" at all, since both "atu" and "dma" are by default part of "dbi",
so the driver should theoretically be able to use default values for
these if the "dbi" range is defined sufficiently large...
but that is not how the DT schema or how the driver is currently designed.
(Since the DT schema says that you MUST specify "atu" if IP-core version
>= 4.80a.)


Kind regards,
Niklas

> 
> Greetings,
> 
> -- Sebastian
> 
> >  arch/arm64/boot/dts/rockchip/rk3588.dtsi  | 21 ++++++++++++---------
> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 14 ++++++++------
> >  2 files changed, 20 insertions(+), 15 deletions(-)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > index 5519c1430cb7..d7998a9c0c43 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> > @@ -119,10 +119,11 @@ pcie3x4: pcie@fe150000 {
> >  		ranges = <0x01000000 0x0 0xf0100000 0x0 0xf0100000 0x0 0x00100000>,
> >  			 <0x02000000 0x0 0xf0200000 0x0 0xf0200000 0x0 0x00e00000>,
> >  			 <0x03000000 0x0 0x40000000 0x9 0x00000000 0x0 0x40000000>;
> > -		reg = <0xa 0x40000000 0x0 0x00400000>,
> > +		reg = <0xa 0x40000000 0x0 0x00300000>,
> >  		      <0x0 0xfe150000 0x0 0x00010000>,
> > -		      <0x0 0xf0000000 0x0 0x00100000>;
> > -		reg-names = "dbi", "apb", "config";
> > +		      <0x0 0xf0000000 0x0 0x00100000>,
> > +		      <0xa 0x40300000 0x0 0x00002000>;
> > +		reg-names = "dbi", "apb", "config", "atu";
> >  		resets = <&cru SRST_PCIE0_POWER_UP>, <&cru SRST_P_PCIE0>;
> >  		reset-names = "pwr", "pipe";
> >  		status = "disabled";
> > @@ -170,10 +171,11 @@ pcie3x2: pcie@fe160000 {
> >  		ranges = <0x01000000 0x0 0xf1100000 0x0 0xf1100000 0x0 0x00100000>,
> >  			 <0x02000000 0x0 0xf1200000 0x0 0xf1200000 0x0 0x00e00000>,
> >  			 <0x03000000 0x0 0x40000000 0x9 0x40000000 0x0 0x40000000>;
> > -		reg = <0xa 0x40400000 0x0 0x00400000>,
> > +		reg = <0xa 0x40400000 0x0 0x00300000>,
> >  		      <0x0 0xfe160000 0x0 0x00010000>,
> > -		      <0x0 0xf1000000 0x0 0x00100000>;
> > -		reg-names = "dbi", "apb", "config";
> > +		      <0x0 0xf1000000 0x0 0x00100000>,
> > +		      <0xa 0x40700000 0x0 0x00002000>;
> > +		reg-names = "dbi", "apb", "config", "atu";
> >  		resets = <&cru SRST_PCIE1_POWER_UP>, <&cru SRST_P_PCIE1>;
> >  		reset-names = "pwr", "pipe";
> >  		status = "disabled";
> > @@ -219,10 +221,11 @@ pcie2x1l0: pcie@fe170000 {
> >  		ranges = <0x01000000 0x0 0xf2100000 0x0 0xf2100000 0x0 0x00100000>,
> >  			 <0x02000000 0x0 0xf2200000 0x0 0xf2200000 0x0 0x00e00000>,
> >  			 <0x03000000 0x0 0x40000000 0x9 0x80000000 0x0 0x40000000>;
> > -		reg = <0xa 0x40800000 0x0 0x00400000>,
> > +		reg = <0xa 0x40800000 0x0 0x00300000>,
> >  		      <0x0 0xfe170000 0x0 0x00010000>,
> > -		      <0x0 0xf2000000 0x0 0x00100000>;
> > -		reg-names = "dbi", "apb", "config";
> > +		      <0x0 0xf2000000 0x0 0x00100000>,
> > +		      <0xa 0x40b00000 0x0 0x00001000>;
> > +		reg-names = "dbi", "apb", "config", "atu";
> >  		resets = <&cru SRST_PCIE2_POWER_UP>, <&cru SRST_P_PCIE2>;
> >  		reset-names = "pwr", "pipe";
> >  		#address-cells = <3>;
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > index 5544f66c6ff4..286d7b10b9dd 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > @@ -1259,10 +1259,11 @@ pcie2x1l1: pcie@fe180000 {
> >  		ranges = <0x01000000 0x0 0xf3100000 0x0 0xf3100000 0x0 0x00100000>,
> >  			 <0x02000000 0x0 0xf3200000 0x0 0xf3200000 0x0 0x00e00000>,
> >  			 <0x03000000 0x0 0x40000000 0x9 0xc0000000 0x0 0x40000000>;
> > -		reg = <0xa 0x40c00000 0x0 0x00400000>,
> > +		reg = <0xa 0x40c00000 0x0 0x00300000>,
> >  		      <0x0 0xfe180000 0x0 0x00010000>,
> > -		      <0x0 0xf3000000 0x0 0x00100000>;
> > -		reg-names = "dbi", "apb", "config";
> > +		      <0x0 0xf3000000 0x0 0x00100000>,
> > +		      <0xa 0x40f00000 0x0 0x00001000>;
> > +		reg-names = "dbi", "apb", "config", "atu";
> >  		resets = <&cru SRST_PCIE3_POWER_UP>, <&cru SRST_P_PCIE3>;
> >  		reset-names = "pwr", "pipe";
> >  		#address-cells = <3>;
> > @@ -1310,10 +1311,11 @@ pcie2x1l2: pcie@fe190000 {
> >  		ranges = <0x01000000 0x0 0xf4100000 0x0 0xf4100000 0x0 0x00100000>,
> >  			 <0x02000000 0x0 0xf4200000 0x0 0xf4200000 0x0 0x00e00000>,
> >  			 <0x03000000 0x0 0x40000000 0xa 0x00000000 0x0 0x40000000>;
> > -		reg = <0xa 0x41000000 0x0 0x00400000>,
> > +		reg = <0xa 0x41000000 0x0 0x00300000>,
> >  		      <0x0 0xfe190000 0x0 0x00010000>,
> > -		      <0x0 0xf4000000 0x0 0x00100000>;
> > -		reg-names = "dbi", "apb", "config";
> > +		      <0x0 0xf4000000 0x0 0x00100000>,
> > +		      <0xa 0x41300000 0x0 0x00001000>;
> > +		reg-names = "dbi", "apb", "config", "atu";
> >  		resets = <&cru SRST_PCIE4_POWER_UP>, <&cru SRST_P_PCIE4>;
> >  		reset-names = "pwr", "pipe";
> >  		#address-cells = <3>;
> > -- 
> > 2.41.0
> > 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
