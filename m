Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 680EBC47422
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 09:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AkoN3fYxSOWT+ZpdCL7ykcR9tyQrIO0sJm7gEiUhdJI=; b=VST5Yh+drvnadI
	xMTGd/z/WY4K/iXfJjdMAsLydUb8Q2ZSREzC0/Kj50WrMbQqXetyu9zUvjeoodtl1sWTXkWpWPPPC
	Qfr7eSTPLvXOwPfUM8/t91Yuqef8JpNqlJUi5UZi+JTWhVDfJ3N7WfMxkYYjcsmrWNkbpIYx8gisp
	Uywm/wGAT/Ynso/y/VeGvHIc4DrAcS9nvQr5sMJW+GfZyaOwRX9Lr7I/f2SDhVXeMzaRJ2CGKg1ac
	DHrA6JriRk/mUsyf1N70ePWMFtUz0exciBcZODaAigue74l+2J2ZNxmlB2rcffM/4hxztbsN3wKrA
	loM0xRI4qP+B06ofH+/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTIOo-00000003dJC-1afv;
	Fri, 26 Jan 2024 09:21:22 +0000
Received: from mail-am7eur03on20601.outbound.protection.outlook.com ([2a01:111:f403:260e::601] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTIOk-00000003dGz-4222;
	Fri, 26 Jan 2024 09:21:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LxL4JaqnZfG1tHcysWiC1TNUhtpfy1iY+wP0Mrsi+9ghj3Ks741TAWVsIWE54MppSomO65hrdJQLahPB4R/yOakTH4Vbmk2M3D+6qkYEdXPzQtDz+borVmoRa5gCRVsxNPVlgB5xsuGnS1k3RD3ItGInmhmNLlk+N9lug06DCNW6NyxZJ48//79hDW8mGvnBkU975iNjDQGv0yusQEqwuENAr7uashODgtT9G4HMK7qGSkGiDYmbGuTxisk5Yf031G+xqbf3RzGuO5t3kYIMpny92Cvy9HoVIf9BZ4ZjHtURuWyAWmAXcfCZ+SITmnY2MEdt1E19HbzmvSjQmdasNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rh0HFuWek6k8qqdxDklktpbLyfvkIfQF3x5aweMWXbg=;
 b=e0DMwB2kLEg7/r/ThKlWP+yrXxO8tbofyi6G6x3bHUsfIw7mBBxuOE9Aczu5re+Kge/ksJM6drcVRSK6X862rG52tAmbCxQVkP8WrzU5FrdnGoadge2g7D7CfFkOxa5X4jTvqpMu+jQkBWjE0sa2Y9UfRBBqhrOQGSQFQO9JZ+2OrqAbLyAOsYkMdbwjsawVU+wDD9AZ5D5Ka3hkS4BXxbFinzPGE0VEfm4/w4fbb9TT3l/cRIdY9VenI1Wx+yG6heP4EaAie9LHFwvWz4DTgrWluslLLDZXDhfLqfmyUGsxDFzwR0PYyBCrx4oBcqwb0lupJkD+P80ZRJrBD0YTaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Rh0HFuWek6k8qqdxDklktpbLyfvkIfQF3x5aweMWXbg=;
 b=H8/ODfVnO7PHjYVCiVS48Y0qoEs+67pbVFkTyHPqsDwJhdXqJne24xkPeXcPps+heGFg0Yf14tpqI6QZAMYTT111QGAFAHhIDujhlQaj20p5fWqMvIMARe4XZa7wh/M9t2GrBX1FxniTI0QZk3+6gCJhdDHf8j6cB5CuROoJc2Df4AtsFMjGaklMK6Qsw79w7ZT4uRBkGDCLi86KCoWZnrpxL9aGsWhVERDYWDDQqvSkVDHWgdE3AFz1UofkAnlIPyutQAiVp8r9hN/TQkAeRRiOZh+kRht6z47BeJKOslvl3UiJpqc1VA2DgyMrkt+Tk39yqfFnztiIS0WHK6gIcw==
Received: from VI1PR04MB6013.eurprd04.prod.outlook.com (2603:10a6:803:cb::15)
 by AS8PR04MB8311.eurprd04.prod.outlook.com (2603:10a6:20b:3b3::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.27; Fri, 26 Jan
 2024 09:21:07 +0000
Received: from VI1PR04MB6013.eurprd04.prod.outlook.com
 ([fe80::8e56:2a15:7f07:8c3c]) by VI1PR04MB6013.eurprd04.prod.outlook.com
 ([fe80::8e56:2a15:7f07:8c3c%4]) with mapi id 15.20.7228.027; Fri, 26 Jan 2024
 09:21:07 +0000
From: Iskander Amara <iskander.amara@theobroma-systems.com>
To: Heiko Stuebner <heiko@sntech.de>, "conor+dt@kernel.org"
	<conor+dt@kernel.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "krzysztof.kozlowski+dt@linaro.org"
	<krzysztof.kozlowski+dt@linaro.org>, "linux-rockchip@lists.infradead.org"
	<linux-rockchip@lists.infradead.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>
CC: "Quentin  Schulz" <quentin.schulz@theobroma-systems.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add missing definition of pmu io
 domains 1 and 2 on ringneck
Thread-Topic: [PATCH v2] arm64: dts: rockchip: add missing definition of pmu
 io domains 1 and 2 on ringneck
Thread-Index: AQHaPmSRILqMs5Q3vEmOuFxaZPonjrDrKYgAgADLkEY=
Date: Fri, 26 Jan 2024 09:21:06 +0000
Message-ID: <VI1PR04MB6013D69546BFCD2F262651F6D6792@VI1PR04MB6013.eurprd04.prod.outlook.com>
References: <20240103164734.1151290-1-iskander.amara@theobroma-systems.com>
 <170621707722.1872080.5468349555925757842.b4-ty@sntech.de>
In-Reply-To: <170621707722.1872080.5468349555925757842.b4-ty@sntech.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR04MB6013:EE_|AS8PR04MB8311:EE_
x-ms-office365-filtering-correlation-id: 7458a33c-d4cb-490e-7a05-08dc1e502061
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FfN4lUXIrUyuzqkZL8M/sHw5jykst1AhoV7ep8lqeeMIQ/Z5CpXilRVs3yRESLuyPG8T6ZPZWy7yGltT+26PVwQHr4yTHpEQGk8lfpCm1Csezun6qEQlMWx4di0s/XZUsl5Q09H/T9WJnDd64d6MWu6ijB9t877TtPab9XNJAhy5tThO9FZJZxX/FXa0Op2Xn7i4QZ4NdqPDuiMQW9kQElY6yD4FzLVzdQ6NkrLjBFBmD5knwU2M7hgcymYWIshUSGxlkD+L7dXYC837W4Gzb8w76H4kcxIy7uEH99gnhvdAkrpMWvpR+5xDVlLo5DQUNO2p4v/X+C3811UF8Uq5P+dnLTkd0OSVRz7Pf5H3+3hynddJsuFQm2WlYv9SSKHipZuMyqsbuAV9hrNkViexo/6Dqrogt3HRXdQ66AShn6RAPSHyuAv7ibCaMqMwv06JZrWC5iPRd+u8GmnHKgzxxOahQurGoXl3tUpyV3/wN5Bl3IZRz5PY0CPeCDuahas0h8BDcfljmTmleNWGN9ngG+6eSMUofc10mHr4Ro8yF+sOdBQKqKCquqigCkP9tynnia0iwVjbs1fkjjJKjGRWBR4S336AR0t158GuzuNCsCPeeZffkjUPV1/4MBR4+tnz
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB6013.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(376002)(366004)(396003)(39850400004)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(122000001)(107886003)(38100700002)(9686003)(44832011)(52536014)(5660300002)(6506007)(53546011)(7696005)(71200400001)(55016003)(26005)(478600001)(66946007)(66476007)(86362001)(66446008)(64756008)(66556008)(316002)(8936002)(8676002)(4326008)(38070700009)(2906002)(91956017)(110136005)(41300700001)(76116006)(33656002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZUgs08PoAV7p940iynjdXzZVgSyXpnYMPtkSvPqjOYrI/HANzJfgyPwk2K3K?=
 =?us-ascii?Q?HDPRyXW0XJGVfua6zKSHelybn2Eyzn96jF3Az0Z2tCBEfQJglvSqzZ91hAuZ?=
 =?us-ascii?Q?bqWll/k1bb18xiiLijR1CNdij94g4C0c0lJrD+OHjtQN+Q5fVsIS2/zDO4rv?=
 =?us-ascii?Q?cMTp0/yoc3dTRsBPancbDNRnTfvvy6M3ZtwVUoxUjLBCCCvegEhCTLEgsDcE?=
 =?us-ascii?Q?kSzcdyADsT2KjryEcx0150DCXqS32e+BeLsvPJF06qHrvOkiLPf1U9k+sFWc?=
 =?us-ascii?Q?9MhLyuHIZZWQ84k4gKH3S0wz9w2KAiiF1Y82CnSyKrJu2yE4w+cwik5raA50?=
 =?us-ascii?Q?mvCn+Cw8rKahEeC5Pg5SGsXqLhok8tW89hxuvZjYd4u0Jce6Uo3c9ku4BrdA?=
 =?us-ascii?Q?w7MMVEX1tnx8qJbuvS1rymICDVfmlvj0dQ4bnTjL5SF5BK13BVet9Vw6lt3i?=
 =?us-ascii?Q?LQJHpH5nyekDioTtEcG+h5K/8DQtJoPH0/YtojcypUgznOpWMeAZyLlteMT0?=
 =?us-ascii?Q?Mg31FPU/CjdCUk0V8si65Dn5qAxkpGYZTo8Zl8WdO9rqZq6/GJaDUbVTP/0R?=
 =?us-ascii?Q?Ad988YsfcVrqWMCHu5cFpGvrldy4CVqVPjmmvBFWjLeS6SM44GNRUCjah9W/?=
 =?us-ascii?Q?F1fwfa3xNUssic306alOd5rApACj7Tp2m08C70Qg4+89iDQPQgdkk5nLO9+N?=
 =?us-ascii?Q?uxAnmheBCCXX1BO1r/9HlZ9Uq6W8xBRDIUh95lnIAHMkV0//pwe+DmTyNTAc?=
 =?us-ascii?Q?qNYZ79c3sUSm+k3APgyb+IYROHJvfXV6uw5G2gtF9yya6ZT9qkkWHAx2oyxu?=
 =?us-ascii?Q?PWUkMPJT3qP1/7/mDrvfbXwp8wJda9rMKls2kK5Z8x06dGfCHoXMIWsBebgv?=
 =?us-ascii?Q?wEO63LNK/6eKfiIlOg1nhFhDMDezszzNchNqNQ+asFdVQlSX0zqFzjJDZrlv?=
 =?us-ascii?Q?SYFtRYs4ydaWGGnIs7RANwctIosCeLcQjp27e6NSxopsB8cc4HL0oR71xtE1?=
 =?us-ascii?Q?KYRA7Z9rKG//Rgl0V5abL+Cd9kJBEUZSq/tmxEoTl98yWAkO1XSVXQQptWmn?=
 =?us-ascii?Q?ns7+YPyibsi7Kgiv6g3M3DaH9aWo3EDGXJSZSU+Zs1x8GJ2HDvOcsbfdcUqu?=
 =?us-ascii?Q?TD1gCXpQ0A5ZgPdGBQGFNf3MA+M9idcd2ZVp+vzqe5kkS95uyVDfR7DMiPp6?=
 =?us-ascii?Q?fInp/d/Z3vAApMtQjCNUaZpuDQXuR9CRKhc4c6Uno6Vf+UIgywmX4BVC6WRQ?=
 =?us-ascii?Q?CYP3xfK2MVtfSeoJtWJkXEakPP+1yUOeE5wXnaKxgiu6ZDuj67EJhlkJAY+U?=
 =?us-ascii?Q?MGghV9nhD3dssC1XdMvU8RNtZO84rn7WeBPYBmu+1T9glMKmjKbTntA0RcjG?=
 =?us-ascii?Q?IU3fCjhG6GPr1zCUpQKVx5CDlknujFqeIF1RUP2LsnR6G4afX+hr0EALMu1N?=
 =?us-ascii?Q?vjxbaUOAVYFe2QhejjJIIfwuPJa/v760EghYHGTSkT/yvBk6Of72aIqHvrL2?=
 =?us-ascii?Q?yGqh32OeW3x8sYdrroLqq5WAv4qd2EL+Zt5t9YGgo8CK/Ypz+zj+exCYMbto?=
 =?us-ascii?Q?I2pxOMiPbyTskwpcdmpKjBRaHxgP7aO2TPr/9mT1QXdgV6H8W9BmiO8+CYwe?=
 =?us-ascii?Q?oA=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB6013.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7458a33c-d4cb-490e-7a05-08dc1e502061
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2024 09:21:06.9046
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VHaBI701nv+Gk1lI0T8fHSMYAG6YHTY9SiLH1o+3f0K6mRJx/DJjxM7/4/1Wlwf/nEa2Shk/KIqHGPrrQ7+VMk4TQn89Mg8vT8g4pTSMALOEIj+BEWjBU9rW5p7sbiTR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8311
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_012119_043438_4950811A 
X-CRM114-Status: UNSURE (   9.70  )
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

Great,

Thank you!

________________________________________
From: Heiko Stuebner <heiko@sntech.de>
Sent: Thursday, January 25, 2024 10:12 PM
To: conor+dt@kernel.org; robh+dt@kernel.org; linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; krzysztof.kozlowski+dt@linaro.org; Iskander Amara; linux-rockchip@lists.infradead.org; devicetree@vger.kernel.org
Cc: Heiko Stuebner; Quentin  Schulz
Subject: Re: [PATCH v2] arm64: dts: rockchip: add missing definition of pmu io domains 1 and 2 on ringneck

On Wed, 3 Jan 2024 17:47:34 +0100, Iskander Amara wrote:
> Two pmuio domains on ringneck are not defined:
>       1- PMUIO1: supplied by vcc_3v3 regulator(PMIC RK809)
>       2- PMUIO2: supplied by vcc_3v3 regulator(PMIC RK809)
>
> The reason why no functional effect was observed is because of that
> the above mentionned PMUIO domains were supplied by a regulator
> which is always on.
>
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add missing definition of pmu io domains 1 and 2 on ringneck
      commit: 16a9c74012c4e4bff6d493832cd648b486046ce1

Best regards,
--
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
