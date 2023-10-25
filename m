Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 158E1C07545
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Oct 2023 19:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTQGC3r0HIwlH0A9PGgMZmwj1J2cCsdbLETEIy24CV0=; b=IiYwbqlvkvhwIp
	yEfhKMpQJxdHn8MYPPjr/3mmMvQigEYuwadV6TIpEs03epentgpwdbCRNTVTccyfmz+CXf0ravrLp
	gjgFmASdibF5bieS3YTXyeWjFDovpbpmMrLC3RemuZ7NUt8IkPE05Qg1Y68IJPNJz3UZinp22E81m
	GISM5YZoTywdsjnw6AhjmZRe+EAEqn/QaPOMl+MpW+tAlm5YyqkLpqE1xT7ZN94ue0Y63Nsz4hB4x
	NMBdWOxd+qI5TRI2RuN1WkhATsBxlIrD+2Yq7BgAobx7LPGCIJMo2vu7iLRnYBdxmouyz7ttdLnks
	oETUx3t0xc6x6Piv+2dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qvjcO-00Cxuf-2e;
	Wed, 25 Oct 2023 19:32:40 +0000
Received: from mail-co1nam11olkn20812.outbound.protection.outlook.com ([2a01:111:f400:7eab::812] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qvjcM-00Cxtz-1w
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Oct 2023 19:32:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PWzvzpsUlhh1/w/YsPeTvi92ex360JDVR41aaPbj8n3V+ohXzw83efCMitnckfvqNWAIIqihskM0UqjqDKRIbxhWpNcI6n+p5fc6czVMq2jc0+uAZDKx8k/q+bwgxk4AS3xWmhXSHxJ8R1cZGmoshDzJJNJ8MjjLp5lR1Y+9lXBBwXjYchVG5cWW0MzDnsUHsbz/CTI0SageUVJvuEvRIGY+F+dbGsLfQ69ITh4IW8i/GfkXSVu+LtdrUWg1WaWnW25FmskcxoiTUUJnkVq/HLU8aTM9MlTMrKzDfeBhui1sZtWJDmjtPi+OWL1STzb3R7y/3vIp8e+rfsb0dO2iYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d3aT9anVxfUBj5s/CCoChFGogY5tOp3fSZ5HgzHc7Jc=;
 b=eawvSPpcECGb78agczDLfGxQixyBRC2IuAjEmKkwbvurImzEHxPBxnKe87dFgc9XtSDtqvpFzO6hA0osk8WONYP6zx1Eyl+6hGZlEX+jU7nRd+EJOwKmOWb02gTKH21tyRGh5fhSwgEKNZSBFyeDJJPoiLlouC4zRcJdGcGA3oyvGePH5HyE9rlkOjuKDtobjyhddiOrw4T5VTWK3JE4kE2eSj5QaFXLMWwT3ANPxUHo0t1SdcVNH7SaS+JMFKzoUPF2MJ+u7qO8yRQIHm1bHBGfqDBmlxuIZThX50BACnKbtIaJ0hgOW7tLpVgBEqCXPtxaKLVh5PDMEcyQqVTazg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d3aT9anVxfUBj5s/CCoChFGogY5tOp3fSZ5HgzHc7Jc=;
 b=DrThoyo7ZoNv++Jk9lqJrH3yXHGTNZpfjw2v39uCd0Dvg6GDUWauFM1iAjcD+Ziip6opgXBEY5BxAr/U2LYlK8r1h1bH8hLgYCYZIx/0fageaBV1gdZzwAY49J8SCPLjwiazKXcZ/Q9YDx8aHEj2+3onYiXFZpq2XNUyrJ3xcH601nqaja0mk29IbS8L1nwjKL6//ZfyC1ys8cdBzNaOtV/e9V2wiG4r1BOvzK/7F93ummNCLbUN0YtbRvGav2J1eNjbQ7+Scjxg5sn3dBIk8wtJ2H0fpU9P/yO7o14TPJs+qngwW0twSylHPDpM6Q9/NJdewCaR0wrzo1BKDK9qGA==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by SJ0PR06MB7067.namprd06.prod.outlook.com (2603:10b6:a03:2e6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Wed, 25 Oct
 2023 19:17:08 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::c40c:bbc8:b103:459c]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::c40c:bbc8:b103:459c%2]) with mapi id 15.20.6863.032; Wed, 25 Oct 2023
 19:17:08 +0000
Date: Wed, 25 Oct 2023 14:17:05 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com, sboyd@kernel.org,
	mturquette@baylibre.com, daniel@ffwll.ch, airlied@gmail.com,
	sam@ravnborg.org, neil.armstrong@linaro.org, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Message-ID: <SN6PR06MB534242C3DB235AF76F2AA81CA5DEA@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20231018161848.346947-1-macroalpha82@gmail.com>
 <3083498.U7HbjWM52l@diego>
 <SN6PR06MB534206AB35C00B3D003765AAA5DBA@SN6PR06MB5342.namprd06.prod.outlook.com>
 <11399368.MucGe3eQFb@diego>
Content-Disposition: inline
In-Reply-To: <11399368.MucGe3eQFb@diego>
X-TMN: [I0mlsDPvpUUiNCARqLIuQ/vAt5pJVNvx]
X-ClientProxiedBy: DM5PR08CA0028.namprd08.prod.outlook.com
 (2603:10b6:4:60::17) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <ZTlpsVL++wO++21Y@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR06MB5342:EE_|SJ0PR06MB7067:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e0ea563-e5e0-4209-108b-08dbd58efb49
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LaE/pzd9djx/agyVbuJfESNS9Luqda0tHZWZM10IdUMh/l8L7jdN5dy5vMrPSfQjsVpVnjlqlFvamh5LYJgUn3k5lAYobxwzf+ZvE1WnwrnciqMAJkkhwSZdK09o0kmPBIy14cL85nfRQj9LrkdEHuiT49b9VQYO22dFM2l3qszc/d3WTPtErgq2gXhN4Wpy4RGIZq2FJMvEffx0f6XG3cCdCj9FQLI6iMWxqX7I0kNGCEqtJmCfi//WzTbc30Z3zcfvrcP81JVIGfoXOppwzljETGBRkCpDpisBsaU07R56NnFnqTz8Ad1eIV9689bDEz7gUGAWK784h+swYYtRWBTRmdsFCVQrkHgdtuvzx62YVZIU8sUL1KTMe8t7dyEW4JDbzlNzIafCHRXBENBH0o5PDWhmiYc2zLx3oGAbT+6UFpCDWP4Bhv6DmP+py5XXXzTYx7D4Pe1yxsSlUNKEi7kdI+M6s/Qx0Kr2RpsERpH/By/Z/J5H8RXHTXOgQdfZlTHesAgRl7/61K9sTp+fxN1yCKuapPCPDo9g/maKPz0NocgVXXsQGo7pA0W//TjL
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?zsKRoEUqllasQNGBP7Uskpx7vjv9sohAY7eh6xwazyYhtf2Gdhz5geR+Qy?=
 =?iso-8859-1?Q?etLGAu8+WH1pxeMqP3TC3AIZtWiYrHmgAbi512EJ1pSnVhPTPY8PcPy4fH?=
 =?iso-8859-1?Q?78YhHgc927PeII60yn9E0vrujqvXLyvlYzw1hPpisiCnBL+075+WTAOtvT?=
 =?iso-8859-1?Q?Uvgtr8dcKwE1CRcov1nq9Vxv3gkm+zPf9Mrx9dm2IcL9eSE6+rFIfXYj5d?=
 =?iso-8859-1?Q?X4kecA96Z+kQpCpq6vIxSy0oxGlewe+1cA/4lpXtg4wzI1mj2G0Icfn5Z1?=
 =?iso-8859-1?Q?dFV5NJXCpYItVwTuFCocD8CaZ7CzB9Pc1HsBhsfcDBZ5LjDKDsmuNXIqwb?=
 =?iso-8859-1?Q?sFujV126ziDfUGvDcS5V/tv4sqKKbKqjEGKyidShoFGMXRaeZUOGJ8swuX?=
 =?iso-8859-1?Q?D6TxYj+aXJGKFb0urL33XNmXDv5xwJ62TWozy2aj3cMfx73dV9cqBagbPD?=
 =?iso-8859-1?Q?a8/1AhMqhe08HXt0z+8Ad4kajWLEmH1I8UfAcsZWn6jYKeHgp282P4+PYm?=
 =?iso-8859-1?Q?HL6vLzOcc2IsZfczM3OlR0uWSWoSljhIDyhzpSIhOAgXeilEQD1kPEfFsG?=
 =?iso-8859-1?Q?Fkj7luke11zc2kz+x18GhmV47rXrw4XOWp9g+xvgM6YnglJp3JbhX45TxM?=
 =?iso-8859-1?Q?2irBafs9yj/+0nPFwDahnJTXefQymhqUKKn3tWIQEsyvYg/yphMk3mh/R7?=
 =?iso-8859-1?Q?jjWYo/8+2gtpIn0xg5RFW5vulYwTWTrEf0w7ajoY1MiqCwJxgxQQLErIeb?=
 =?iso-8859-1?Q?22CyT4WDYptEJimed7bDVgDZUVjZrsVfjuEd+jjFV7IjRRiAuUXmDCeKMg?=
 =?iso-8859-1?Q?KA0c6BAtbt7qV1vkQRc/5m3rSI6unseqjaQqh3716O7i6AHzqbC+umuIRB?=
 =?iso-8859-1?Q?eJtF3HpNmy8TmsA8khEAzC6IzReCNma3fUwNgWfNBLAaZ0p6kf/UOtZ7hL?=
 =?iso-8859-1?Q?NzGs0iRZI7KwJCAqK/cHMnbupgSKMPjVmumznthQhJwl5neu9/BwsoTDUT?=
 =?iso-8859-1?Q?gwvTcjmTVgrwwOkGNArcH7HkjCLRrEeJEP/9swOoQu/gB7dvISsBtxV4TW?=
 =?iso-8859-1?Q?Ht7ZxMirHs97d6yXVb3ZLVl35SB0TAvoOfIo7XTlJ838aEIpUGU6mR9vqq?=
 =?iso-8859-1?Q?4KCZRxHQPC0VVut4VcHlgVRhQWUgbhD5ZnE0JNWIdYHkUQzxJ5g6SKGKhI?=
 =?iso-8859-1?Q?fL7qtQ1nzTyTCxNLGG5UCzm0+lkJFfd4GPnu3nneRFeBnI6UsqxS0SZ1fh?=
 =?iso-8859-1?Q?mn9uN9/QcrG+IEl6YCdLOiwiRVa8EfLYjhEq1pVcA=3D?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-89723.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e0ea563-e5e0-4209-108b-08dbd58efb49
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 19:17:08.7365
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR06MB7067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231025_123238_641011_E34887B4 
X-CRM114-Status: GOOD (  32.20  )
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

On Tue, Oct 24, 2023 at 05:47:37PM +0200, Heiko St=FCbner wrote:
> Hi Chris,
> =

> Am Freitag, 20. Oktober 2023, 17:03:08 CEST schrieb Chris Morgan:
> > On Thu, Oct 19, 2023 at 07:45:17PM +0200, Heiko St=FCbner wrote:
> > > Hey Chris,
> > > =

> > > Am Donnerstag, 19. Oktober 2023, 16:43:56 CEST schrieb Chris Morgan:
> > > > On Thu, Oct 19, 2023 at 11:21:47AM +0200, Krzysztof Kozlowski wrote:
> > > > > On 18/10/2023 18:18, Chris Morgan wrote:
> > > > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > > > > =

> > > > > > The Powkiddy RK2023 is a handheld gaming device made by Powkidd=
y and
> > > > > > powered by the Rockchip RK3566 SoC.
> > > > > > =

> > > > > > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > > > > > ---
> > > > > >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> > > > > >  1 file changed, 5 insertions(+)
> > > > > > =

> > > > > > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yam=
l b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > > > index a349bf4da6bc..a6612185a7ff 100644
> > > > > > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > > > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > > > > > @@ -674,6 +674,11 @@ properties:
> > > > > >            - const: powkiddy,rgb30
> > > > > >            - const: rockchip,rk3566
> > > > > >  =

> > > > > > +      - description: Powkiddy RK2023
> > > > > > +        items:
> > > > > > +          - const: powkiddy,rk2023
> > > > > =

> > > > > This cuold be just enum in previous entry :/ but I remember we ta=
lked
> > > > > about this once with Heiko.
> > > > =

> > > > For hardware that requires a different device tree, is that possibl=
e?
> > > > While most of the devices I've worked on for the RK3566 series are =
very
> > > > similar for the moment only 1 is identical (the RG353P and the RG35=
3M)
> > > > and can use the same device tree.
> > > =

> > > In my reply I pointed to the Rock PI 4A/4A+/B/B+/C family, which also=
 has
> > > different devicetrees but is part of the same family of device design=
s.
> > > =

> > > So similar Powkiddy RK3568 based gaming handhelds also sound like
> > > a nice family name in the description ;-) .
> > =

> > Gotcha, I can do that. Would you like for me to go back and do the same
> > for the Anbernic devices as well? I can do it as part of a seperate
> > patch series.
> =

> that doing that for the Anberic devices would be really nice too, so
> yes please :-) .
> =

> Thanks
> Heiko
> =

> =


Did you want me to resubmit the series or just push the changes on top
of this one? I'll get them both queued up.

Thank you.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
