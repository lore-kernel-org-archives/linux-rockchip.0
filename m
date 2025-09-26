Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43C78CAC5AE
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Sep 2025 14:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08+fk/DwIsPi+v1ej2NgVSS0dRBWa45xVFXppEawctU=; b=aVHZULy1qSRNPQ
	2oOCAkqJ044E9qdj5JZEvdZ7G2mOqDtpZUGsCfl435RffS0zinWMx7JGRAsL0ytXCtymHBSeS4X5I
	BP1c1HCeSguAm57NGwhFh2/t44wCOv0QVZtcubhGrqDBZDhXxPqVtOGTcA25B/x7lceVgPk1aMXLM
	Jfi9fCVsYoHOZXqiEnvzZdIasJ3kNyCMQVCUB6jZj0yFlquC2px9IYSChcuoqxlBrSIMjvP782o/A
	OIovGNwJTyK2YmGO/1NvZYqLUxBxawzp1qYaV4EnQQGDRDwsOcIAIqDAb03OjQ1KCDr7979fvLosA
	cHdTTZQuMaLheNsS4auQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v29iH-000000027bE-091m;
	Fri, 26 Sep 2025 14:46:21 +0000
Received: from mail-northeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c200::3] helo=DU2PR03CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v29iD-000000027YT-3ATz
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Sep 2025 14:46:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NslwCIeoJugdmHV8+CFsWFNfFuRTXonKWY4bJZG4Y6wgXeV8Ohs1cxHFhnJXRyfuSuq00a2VSnOwxjymG0nQa7IW2lRPZwFn6b/tge5KXv4DeowMcUuNhp5i3Lmu+gHlvLo4w35xQ5iiPDLsfXYu2XUOF4DSuFcRBH3MAbYWYw3uxjgOTOtqVW7+dqLCXeJmk5+m76+uWfKvsVwrvEz7aLpyOo2dyWRic+mV+ZSCe/VGgVyZIPdT7/0zbJLRiFsUCTvAjEo5oNox2wy1qxYMFYtJhngRSYZARW7RbS/oUh+SGNYocwVrx6KPQQfABSXdnwpIsNfPAn8gQdqcKX+5Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J0FYUlgsjX1SOAZSDUGYJKb5EfqsMejU/zJDjvLJ8cs=;
 b=eXpBz42Xlcas+FEeLyfNAOaate7GkinUsrAcXURNCrxvKspU32BAyUvvRwROU+RUkMxF5MLIfKtmFH8xJE/3M+rdpy1w3s+y1aY9Frm2tws/1YXBkXjhYFwpz8tb71bnBwzjUcfKjspqKXzDliIt84NW7/tkNTnksnW/jeoRyhXdtbvmnaW5lTMWOUluyAvdngStklMj7PzLpuK3+p43Cp5YOXT29WrWOOT/ZthPXD/NypVE5lr0pO2aXxZS5c3SWqzSEHGuKzoRAIah/ga5/m7928hURozSSPPCujIWOKRYrca7LAQ/C5vcEzPI2HTnNwMWrcKu/d8CmPbMhBoWEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J0FYUlgsjX1SOAZSDUGYJKb5EfqsMejU/zJDjvLJ8cs=;
 b=RA0TkuMq8v2dt5h4bVixYvGwB4RduHHJq0muYjg5oYXNbcx0UipU9HkbT9Vu4Fh94MoaZv+vA0HqA934OWm2bzE24mmPt+SBjS3zd2g6q3/Y6EwzFE+9f6/Ndb6dGNvePSAsMjp+JJz6ReRwAKNTomE1jjrLT4r1r9ZHosB0ARd3BHC2mv6nk/AJE3TdAuwSvjRr7ULUFXmx7ekSR3zxfyAIhPQIaZp6b6ATqm6S6YXz5iTxUpaGCezTOxuM6Kk+EZK+cJeOqJOyVoNogYJjCGnBawHsflTS0yrVCxEav7IBmkNXBdZSHhUSmyKvi7xblV+5f4WGocfnDv2NpDCBXQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PAXSPRMB0053.eurprd04.prod.outlook.com (2603:10a6:102:23f::21)
 by PA4PR04MB8030.eurprd04.prod.outlook.com (2603:10a6:102:cc::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.11; Fri, 26 Sep
 2025 14:46:10 +0000
Received: from PAXSPRMB0053.eurprd04.prod.outlook.com
 ([fe80::504f:2a06:4579:5f15]) by PAXSPRMB0053.eurprd04.prod.outlook.com
 ([fe80::504f:2a06:4579:5f15%6]) with mapi id 15.20.9160.008; Fri, 26 Sep 2025
 14:46:09 +0000
Date: Fri, 26 Sep 2025 10:46:00 -0400
From: Frank Li <Frank.li@nxp.com>
To: Niklas Cassel <cassel@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588: add msi-map for pcie3x4_ep
Message-ID: <aNanKD4AkaLlNMF+@lizhi-Precision-Tower-5810>
References: <20250908162400.535441-2-cassel@kernel.org>
 <aL9J62Rg2oNlQygN@lizhi-Precision-Tower-5810>
 <aNZ_tDfgq8ogvTHx@ryzen>
Content-Disposition: inline
In-Reply-To: <aNZ_tDfgq8ogvTHx@ryzen>
X-ClientProxiedBy: SJ0PR03CA0270.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::35) To PAXSPRMB0053.eurprd04.prod.outlook.com
 (2603:10a6:102:23f::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PAXSPRMB0053:EE_|PA4PR04MB8030:EE_
X-MS-Office365-Filtering-Correlation-Id: 89f24b5e-9fa7-497d-205d-08ddfd0b6e09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|52116014|376014|19092799006|7053199007|38350700014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?xXmyKZfEdHKrhY5bdYYmUW9wTZXJW9RhalhB3kY3jujvNC2jyXKTPQZ/jmUS?=
 =?us-ascii?Q?JWa7MIXRUvpi6y9DrexQU9tH3TwxQYAgyr3NaRoF8kCfclV1Bvt80Kq46+6X?=
 =?us-ascii?Q?BdlyzwGUFw282TsfYvZHQpjUCPqnzZEm8Vy8Cwm0evO4Xi1CMNv0TuiX6wSy?=
 =?us-ascii?Q?Gem23NyQy32FKhRYBxXT8jrI6lpEZjRc8udN9PYrQGqGgTqwpbkiNImrN+ME?=
 =?us-ascii?Q?OlFjRk3Tm059qMRpJYgnsw8K01DtKgq5GcDyEmn1ugooIto0Mv4n+NcbrbJM?=
 =?us-ascii?Q?oXfc6AnBp20WlVVSdoc7Bd7TIiJIZAYSKnh5COXGPU175bdGkk4n1Z0QTOwA?=
 =?us-ascii?Q?ZYYzl0PZfg7O0mw9VdPKWwBefBvJgXKaK8E+5dtg/1fYvb1MFwAhHK+LFHfm?=
 =?us-ascii?Q?5/lBrj286Zo4UnPbWpS+8bra/cyE0JhK7J2PiCsu2kOHC+iE9AZ7WQJDCzCp?=
 =?us-ascii?Q?ykrf7PUBd3+dfjYBV1/4uKZ6p8IKQ3zIlIad1qK0SoXenJkWhK8T3koPthwI?=
 =?us-ascii?Q?XhNci6NB8Jaig8HHoggaKMbEMqsv9QYyg26m47hFHckHMc7NJAtTj6fPA8vf?=
 =?us-ascii?Q?5awhyMjjmrBz0PYfJ5nBBEgUw4xJ5udva3ADmq3JLQO03i2jx3MsVyvbAbNc?=
 =?us-ascii?Q?doUhEdv36Mx/YnmZNWLAFYDDo9LzXKrGKbuQ2JslYpbAPUn7xIyer6MPdsJ0?=
 =?us-ascii?Q?BVKL26DPpDKCmANGURzt+k6Bzl0wAQZ2ViwY+OeYGN0PY/Dsl04Mm9IsN//9?=
 =?us-ascii?Q?Hr9UygRCrc60AvV9xdtgyoYRXCarPvalbz1CCpWplkdzFMTbah1S7A/SoVrL?=
 =?us-ascii?Q?SUms0xonnKPgA1pBiV4BgIZyoX6UK/C5u7JGQXo7fK91ES4/xdutiYYnbuX1?=
 =?us-ascii?Q?7IPdq6//0OuoWiScwk7QIRnxkZREZe2f/5RzP13o9nyI3ghrGopDsnM7ewfy?=
 =?us-ascii?Q?MQgi2WW2bxlMcr+iRQ38xdFfhyd+/dgR5lGhCh2E3J9uwmKWSWTRlEvVSuri?=
 =?us-ascii?Q?vROwXR0IcIE/xDwju/Yu4CsuPPWKy6xQcDETXRfnMiDTDhXPpQsqB4ZSxbJy?=
 =?us-ascii?Q?mQ26v7VT8vfNiSy0B/homB4RhatYoHOyuhH2PGpkKEbV4mUbztdb/e9FOqIO?=
 =?us-ascii?Q?2XFwPs7T6iZxtemQdL202BfqIU8j4mbkoKE7+4aIfw3lKLF0whSGyAsklClu?=
 =?us-ascii?Q?1tPg6dVlmKVzqP2mDCnETLom4ccpWkYFspkg/fP8ayslPd5+loP3MCDyjK2Q?=
 =?us-ascii?Q?NWKzMf9uAUu5/EnA+mG33bheNjEl4TxQ46NkTlmC6162xFMUwjBhq8AI9RE6?=
 =?us-ascii?Q?xcTd8lw+rWevJOJo4MYC6l+0O8F33V2ngeqAIjPoWd88+jASmnAs1R8RahZz?=
 =?us-ascii?Q?/KkyICEGFtcPBHZTrNMhbZmqgZ94TBPkrIBkCvwrMX8JxE8IoDhF5Jdmjr7h?=
 =?us-ascii?Q?WwXRYLK5ztvb5yT4Jx+MPzQ4nlsvBRtVXDIq+k8zPpFFLt5dD8L3LkWY4Qml?=
 =?us-ascii?Q?K/eces23caGWR9fsOGcihP11Mi/DMm2ZJFxs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXSPRMB0053.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(52116014)(376014)(19092799006)(7053199007)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8FjKW4xz7xxc3Y+zbmLJ/MlzH6gFcaGf7YPo6s1sbWB/l//9NXM9FadTCxm3?=
 =?us-ascii?Q?eGH3ETNBEmf4X+TYTw/Yn1ThjCbenbUsXGb7/G+Plk6tyGo3q/W3I2JXGLcp?=
 =?us-ascii?Q?/iZuE0GqIaCoIFYpiq9z1WVwiCtlJOlRtlQcRwltM/+JCcC7X5fxNjnCHu84?=
 =?us-ascii?Q?Z/jkOGeXaf+TpIU9gz3enGJSPKXs/RRlJyfux2B+H14iGr2GbMzK2ObC+/yL?=
 =?us-ascii?Q?YZxP0ZiqrbL4svTpEyVui9wItDGakuT12beyME/zRtclUWyOu2jTK6EslWgL?=
 =?us-ascii?Q?nSgGSJ7imqMo3tZRWum0980P4Yk6JVpgmZPOpo5jIChnkgyzqXf/X4YswBew?=
 =?us-ascii?Q?arnY/nq+TaYfRpqwr0TK24FGin+L4X5Db54rjMT20fQQpincffRcOv4PTczg?=
 =?us-ascii?Q?wZ8GXYWW6SY0QxZIpusH4HCzWzzbpiWOSiel939mTHSV7ATB8Kb9u9vRxoiO?=
 =?us-ascii?Q?rPMwiRv5uT2VEg29zMU8lFiqFjkY4YOa6hOC7/1HguXkW0IgplRawnzdWMSZ?=
 =?us-ascii?Q?xku+PM3+BQDuLd9OQx0cWTeJRfg5h1hKjGxos1UDYeY9LT54Yslti4AQXGHU?=
 =?us-ascii?Q?jU2uCXUFsuEw37JSsU1g6R1boe7ptVkI9Vaxax+uNSde/jyi+ywrOiyZ3mv6?=
 =?us-ascii?Q?iWnu7HlIiqbZ+LXk+thFan32I35i46ggVdU2f/3gG6I1PCTDAA/KULsaH/+a?=
 =?us-ascii?Q?Eca1xH8spL4Rt9X0pri62HDK+Tz7WXvJKg6KvQiBZDrgMRHVzwMWxrpNeZCC?=
 =?us-ascii?Q?4DJPMzS8s4brjGHrQ/E2y9+GAqdXFxyO3LKnvHe6aJf2LyhuBbGfWBgba1hY?=
 =?us-ascii?Q?Ry8zKJQycPDwB7LuTnIlK5agyqdsz0fiF9Gy6Qmf/Wums7J8SrBdNMK07VLi?=
 =?us-ascii?Q?s09tJjyRnQJ4+uSN2v2IO8sxneoxpDSap5x3OFPWwWYuKtWONR9pd6zeTDM6?=
 =?us-ascii?Q?kKTF+wdvec3FaC491vkno/+h++rOGEuBLwmzMUVFSwzZNyS3sQROv0YVe1o4?=
 =?us-ascii?Q?ks//5WpcYp0dwWCkY6GT6ylnGSgav0RtVoRD4UuWet9utM+dBsdI6szSjLNG?=
 =?us-ascii?Q?RYotDbLLpg4uVywYpRlzvfQQ7AVaU03B3+Vg6EgXp+KydlXcTl2Nrsc9IyOO?=
 =?us-ascii?Q?Udl8cVhR0PweVtUWcq6V4zUbEAwrGsTSSeEgGGWy9m6qmPnX7DkctDfY3pYp?=
 =?us-ascii?Q?BiscP/4jTg9kgESZzT94XIo3L978uJ+EHXrYRxvzPKMeu1hix1MWPVVQpc7N?=
 =?us-ascii?Q?+Ii0/Yewk42o92OrKj5845XtRIK9m06xq/Li9S82rXryMVTNi5RVL1ujkC8R?=
 =?us-ascii?Q?DMARtc3PzbPGDShzglVRq4z6wgEeCnSjWvfaYC7VCVGJNppR3bF2lRtYEoc9?=
 =?us-ascii?Q?tnbER+NrM/FBHn4W/PAES4NrxAqshTps0wzjz+fM2bCz9QcLxPSwpbZnkLf6?=
 =?us-ascii?Q?BbuXGgzhXJ/OucPL+Lj9dPKEpgnTAYTVps0wy+FglI9LyCgVt/oRivMeb2gD?=
 =?us-ascii?Q?q8874otgm8LxytpIT48p8ta4GNU8Ruj22oBLTTZWHKhKdDs1jJVvut7p+p0J?=
 =?us-ascii?Q?ghr/u804l/7FGsoK680=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 89f24b5e-9fa7-497d-205d-08ddfd0b6e09
X-MS-Exchange-CrossTenant-AuthSource: PAXSPRMB0053.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2025 14:46:09.7584
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qCguY1/wMRZKZZyISt14a2p002yjj9GNjeA5EMEwO+8zdDx9XnmViCaZsEJbsVZsDNcOZr/2y1K2XmDROGcZfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB8030
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_074617_814130_89F48C1F 
X-CRM114-Status: GOOD (  43.02  )
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

On Fri, Sep 26, 2025 at 01:57:40PM +0200, Niklas Cassel wrote:
> On Mon, Sep 08, 2025 at 05:26:03PM -0400, Frank Li wrote:
> > On Mon, Sep 08, 2025 at 06:24:01PM +0200, Niklas Cassel wrote:
> > > Support for msi-map in the pci-ep device tree binding was added in
> > > commit a6aed6b9c79e ("dt-bindings: PCI: pci-ep: Add support for iommu-map
> > > and msi-map").
> > >
> > > The PCI endpoint doorbell feature was added in commit 1c3b002c6bf6 ("PCI:
> > > endpoint: Add RC-to-EP doorbell support using platform MSI controller").
> > >
> > > The PCI endpoint doorbell feature requires:
> > > -An interrupt controller that implements GIC interrupt translation
> > >  services (ITS).
> > > -msi-map being defined in the pcie endpoint device tree node.
> > > -CONFIG_PCI_ENDPOINT_MSI_DOORBELL being enabled.
> > >
> > > Add msi-map to the pcie3x4_ep device tree node.
> > >
> > > With this, the pci endpoint kselftest doorbell test case passes:
> > >  # pci_endpoint_test -r pcie_ep_doorbell.DOORBELL_TEST
> > >  TAP version 13
> > >  1..1
> > >  # Starting 1 tests from 1 test cases.
> > >  #  RUN           pcie_ep_doorbell.DOORBELL_TEST ...
> > >  #            OK  pcie_ep_doorbell.DOORBELL_TEST
> > >  ok 1 pcie_ep_doorbell.DOORBELL_TEST
> > >  # PASSED: 1 / 1 tests passed.
> > >
> > > Cc: Frank Li <Frank.Li@nxp.com>
> > > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> > > index 90414486e466f..c0121aea791d7 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> > > @@ -389,6 +389,7 @@ pcie3x4_ep: pcie-ep@fe150000 {
> > >  		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
> > >  				  "dma0", "dma1", "dma2", "dma3";
> > >  		max-link-speed = <3>;
> > > +		msi-map = <0x0000 &its1 0x0000 0x1000>;
> >
> > Not sure how your hardware map PCIe rid at EP side. If your hardware direct
> > use RC's RID, difference host may use differecne RID. I remember you met
> > similar problem when enable IOMMU.
>
> Yes, the Requester ID will be the BDF of the Root Complex which is sending
> the request to the endpoint.
>
>
> >
> > Generally, Only 1 EP support, you can use msi-mask=<0> map all RID to a
> > fixed value, But it also needs change glue layer configure to force to
> > use the same RID.
> >
> > I suppose this may not work if connected to second PCIe host slot.
>
> I tested the patch with three different hosts.
>
> On Intel and Rock5b host, this patch both worked fine:
> ok 1 pcie_ep_doorbell.DOORBELL_TEST
>
> On another ARM64 board, this patch did not work.
> I tried adding msi-map-mask = <0>;
>
> But still no luck.
> I'm not sure what is missing in the glue driver, because AFAICT,
> the logic parsing the msi-map-mask is already in
> drivers/irqchip/irq-gic-its-msi-parent.c
>

The key problem is we don't know EP's RID (RC send out TLP package),  which
is transparent to software.

So layerscape have internal logic to map RID to fixed (predictable) stream
ID, which is neccessary for EP function if use IOMMU or MSI, or you can
capture RID from first cfg access from HOST.

Maybe there already have it in this SOC, suggest add it in future chips if
not support yet.

Frank

> Also, the device tree binding in
> Documentation/devicetree/bindings/pci/pci-ep.yaml
>
> Does mention that:
>          - Bits [2:0] for the function number (func)
>          - Bits [18:3] for the virtual function index (vfunc)
>
>       However, the EP cannot rely on Requester ID (RID) because the RID is
>       determined by the PCI topology of the host system. Since the EP may be
>       connected to different PCI hosts, the RID can vary between systems and is
>       therefore not a reliable identifier.
>
>       The resulting device ID is computed as:
>
>         (func & 0x7) | (vfunc << 3)
>
>       The property is an arbitrary number of tuples of
>         (device-id-base, msi, msi-base,length).
>
>
> Thus, I don't see that the Requester ID is used at all.
>
> Anyway, considering that this patch does not work with all hosts,
> it is best to not merge this patch for now.
>
>
>
> Kind regards,
> Niklas
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
