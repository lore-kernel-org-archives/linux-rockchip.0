Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F6EECA0FED
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Sep 2025 07:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ssgSbwq4jTSJc0i7ul2TlyTIZvJhnwEhDYOukxJHOA=; b=IJQVS4/UOWbrDI
	o1kxDDQ5IMWJ5FRsngMMv+ShDv3cFRlIa0kQC1rhvsKPQlpn/fiAQDbkaVQ1ie4r13PSPwIgU/w66
	CPGkSYvp95IIx77Xg8X6P0OldHQ3FGSU0wkGiYeZFiuPbUKTzZ5akg2bvCW4+Q4E7bKuwkyRgAdwB
	Gq6iY9khqz0y61cu+TsZCesR+SjRyXNjgHcRvg02enP+s30G7zJu0sCrDkFhUfJbeSzog7Jhrvrm4
	mUBCLBHQu0FhA+P3pzbYunjNm0xS5jZxgzrkAkgEOUGf69uIv6/xXJUuUhO9aoU3hFp98qMYaZnGU
	PsPYI3j+byd3sAN8DRdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvt8U-00000005LgU-1Zvm;
	Tue, 09 Sep 2025 07:51:30 +0000
Received: from mail-francesouthazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c207::3] helo=MRWPR03CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvjNR-00000002SBK-3epX
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Sep 2025 21:26:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rt5us0yU4mTHtODGAL9G/12SY9VRZNP85qkkrSuCkkDn1YqrD+BBzEw86ID3k66DqC7WIqb+6aEuJPhgE91jmdTvnbXj0lv4geo47xfMMXgzdbYI7881hTU4ri1Ljy4sUPSnvdwvU/a1VZ8TSUcIjXgIQjto7Vb0/gsF7g3FcSvhC/pImqUB0duqlJPd7qQKDQVsGtOTCVUjAJqi8TU/KUgYVmb929Q9ULvgZgj24DugYkQ1UJdGkAGDd7sAwwV15jN/X8ufB4AEeqzxOoakI+JHu6umxYjDVY2XfbBECf/cLdp/wYo/05W74b/5bHmKDVo7Wp6YuRAa4hgtLjOKCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8ObZCOcsYMI/HlqtDKGxXe2U/MCWLncwZTWG5KTsK84=;
 b=q5ECyPVqvfFmgBhk/2SVUCDqzz6xhFyIp9WJ6OotWAPm8B/+UFCePanok8uJwFtAtyfV/WJPdfC8K9zePheZxjlEqoES8a0Yryorazw69G/0JAw3Df/VVPGtZWBjqa5kFOkC8Td5iiWsJ2mVoAb+C75PaBnIVTDtTIrn1EM54Q6P5XoJLkoHhPmwfO3JswZ3ZQjCPN2vonJl3CA0sKwUP1duWJ4OX3nLvMnKAPKFaqdRfo76GmLd5eTkVs/xSq9iwZicp1Ua70xnyCpePzbSscz0AQf+Vxsgqh8QCp+PguyzKNO0Dx+FKBPHyfhtojc/vMND1+LwhC6OHJ7guyLbkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ObZCOcsYMI/HlqtDKGxXe2U/MCWLncwZTWG5KTsK84=;
 b=fcdmv+jeEA2vMZqOvZz9xRMcTjzTdZu2gaKS+dxcds+CQBoufBWfGeRTLP5DyUUPiRnESF9LOI+TDlwBPEKVhZYn5ltWlmVzu3oKItp7ZjannZfS6gk51Pj9vYOgenZy7XrsGPdX+fUrvgk7+CQkR8HWXsd4wiJjX8y+4zRTW+lIsZetLi/xe3tM+zG0xFDhhYBH6/IY9XKP/ccRsMrZ79DscD5twOscErehf1x/sreAFxX48TWrMZUOLkTLWxGDn9mxGBoNamekSdAmohd47kdvfmg3FOzua0AjEiaUjmRlCxHWyN+lY3fDQjj1EMfdTM9ipOd6O901qU97lPYE1A==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from DB9PR04MB9626.eurprd04.prod.outlook.com (2603:10a6:10:309::18)
 by AM7PR04MB7016.eurprd04.prod.outlook.com (2603:10a6:20b:11e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.14; Mon, 8 Sep
 2025 21:26:09 +0000
Received: from DB9PR04MB9626.eurprd04.prod.outlook.com
 ([fe80::55ef:fa41:b021:b5dd]) by DB9PR04MB9626.eurprd04.prod.outlook.com
 ([fe80::55ef:fa41:b021:b5dd%5]) with mapi id 15.20.9115.010; Mon, 8 Sep 2025
 21:26:09 +0000
Date: Mon, 8 Sep 2025 17:26:03 -0400
From: Frank Li <Frank.li@nxp.com>
To: Niklas Cassel <cassel@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588: add msi-map for pcie3x4_ep
Message-ID: <aL9J62Rg2oNlQygN@lizhi-Precision-Tower-5810>
References: <20250908162400.535441-2-cassel@kernel.org>
Content-Disposition: inline
In-Reply-To: <20250908162400.535441-2-cassel@kernel.org>
X-ClientProxiedBy: SJ0PR03CA0236.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::31) To DB9PR04MB9626.eurprd04.prod.outlook.com
 (2603:10a6:10:309::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9PR04MB9626:EE_|AM7PR04MB7016:EE_
X-MS-Office365-Filtering-Correlation-Id: a6cf1e7f-45b5-4cd6-2ecf-08ddef1e53f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|19092799006|1800799024|366016|52116014|376014|38350700014|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mnAO5lJZ5l7TIdYq0Vp9FGyS23NW6PRbMhh9cDOeM7uJIl1iIuYCEqxuUcJn?=
 =?us-ascii?Q?N8bIVIQmNvG/q02qSChPwcRVMq1PMLQoRp6nyOkvp19q3pRZelmfjfvU8X5C?=
 =?us-ascii?Q?fkn4IcjPKtCDX0qsOyu3eLtRh9Pg+a9gE/+E89g8y8WE5WyXLJ364e7+mvji?=
 =?us-ascii?Q?SW1x8JhKxaWsI7y65KdsOoW4E6DpO7d/svYHxJmDx4toPml2FLO/5HGyIzos?=
 =?us-ascii?Q?jsGqqF8UJVwNQNhkQoePs1BBaN1kpkR3yq/n+KBZpggZVNwsFIptrwzPPwH+?=
 =?us-ascii?Q?NZG7pVLOEp8Zco27HoXiX1VgtT9nnAsbC05Lg8BXd8OOwMfNqWzryM0t4Jlk?=
 =?us-ascii?Q?lS+n5CnWc3U6z2k9QWfnExqNxJeOMzwMaH9zZYenGTFs/V5t5Be2T8Vt+4oj?=
 =?us-ascii?Q?I5chVvYGyChdrOu701CS5izd6jmukyzFAgG+Q4PddVAhosJRU5i8Q4pc4J7J?=
 =?us-ascii?Q?v3wVeivmYGCcqDzguQxMB/XxwzHoYnO2d7j64s+td4ctLh58ZhjxcPqLD3lJ?=
 =?us-ascii?Q?kdI8IoQrugd202bIgIR4rNrBEX7bZZHD1sGkEb1zS9cd5zThBZzGVNsQmsf6?=
 =?us-ascii?Q?xvKvo7od7vY65jptk34G142LC/BLiSVMDVQoU0LVWvik21HnPdHTXGbasQUK?=
 =?us-ascii?Q?QU61SAER/vFBS8dDdGvBmZqh8UWnQO+gbYvB7vgnyxBlzdHtac9QD5fO2vVf?=
 =?us-ascii?Q?auPiPSvGoQbvghAh9T1mmKYt/1cfmXUC1zzT1kGXZ+0wxScvezjCxEUGVSsY?=
 =?us-ascii?Q?7DlgATZaA+iP+Rhzt8kGLON5rXsDtenhaGhkGzKjMKHga573JksF7EKYkPBq?=
 =?us-ascii?Q?YeOUVsJgO8lekDABIsJBxhPK9OyzbtjVsExt84+3P2WjXwd3H4szbp0xRSuI?=
 =?us-ascii?Q?8wORHVRV1tVQKnP3xy+6Xdbh/Nh/OBubqIsYvUSL9Bv8gqZkcqc6alQXGDN3?=
 =?us-ascii?Q?J3sjWPCKf0695HkLHp2H2ACoUZuPijIfdYwemgyEoxNZQCMF4KgzX9+qL78n?=
 =?us-ascii?Q?11qB8P7A62aIjmXKOqZ5oYIT5QmFnl0nn5rAxkl6xsvN90cnJLMOj7jwN44X?=
 =?us-ascii?Q?KsKVj5yrBy4NEAhrdkIrHIeMmuhcXP91dDby0PcCacguhQf/n8OrD34wEHB7?=
 =?us-ascii?Q?1gf61jJBZTpsCdFXDoFbsKkS0o8zvTaxRlMzA/x6TAn8EsfJcr25DoGfpLoK?=
 =?us-ascii?Q?u7k8Qrt6yiCCV1NEv8hcsiJjDQcPSPKE0LnGMpoA011eSJnog05gEgbx606w?=
 =?us-ascii?Q?q3NNleEP3GG5rN1mZz/GOLnFNqiDixox9XwK2qQsqrcuexOWw1W9XreReKud?=
 =?us-ascii?Q?ReeprshdutkKOhbWItfcEUUIhhGcYZKDUVySWdwX4UbPVpxyF3Mt4lwC7kof?=
 =?us-ascii?Q?IMwTfxpmcl1pzM8SShgdhD4egkyIsVYTI7u5ERBmwGjyOIQR1pLT/oxcoFpR?=
 =?us-ascii?Q?oGUkgYvmQefRUsRA1BxkJUAdwSqY9B0QMhrOQpCf/VlMbWKlk1vF8q8ax+k0?=
 =?us-ascii?Q?Mp6totzPgInNJaA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB9PR04MB9626.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(366016)(52116014)(376014)(38350700014)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M8CudofzjhJeQoie4qvvc2xZFqkmIKJVGJsne5geMOmBzn8SZTLauPN4D4Ih?=
 =?us-ascii?Q?dXgBAkmEFYqjk8E3knNFf0K96FrC3B4rcsxASRTU+lo24sdZ2RdUCpvpekdm?=
 =?us-ascii?Q?6ImLa+IbbO4FxZKTWZqMFK/vtwOs5nsJjG99rN+SEOBHdIsHZaSlWSgZgChP?=
 =?us-ascii?Q?gybZuh8h5hW+qu8zdzE5BGNjHT0uPDElea8z8IRyp7rNwkLeMQx00fehaI+0?=
 =?us-ascii?Q?LDA+ta1RBej0X4/KBrFN0YhYSwMSS8WBsSgad1dGIMgU6WljVg/t0ZZLCTJ5?=
 =?us-ascii?Q?iP0NRLMprECsVNpbw7lSMxgfEdwtfro8/lCWCU5ffvrOezqhemAlT829e6tu?=
 =?us-ascii?Q?ovololoje0lDyHxmm9OTp/GgAt33Irl7hbpkfzvCa78qkMmUd1kbbEOERTCM?=
 =?us-ascii?Q?HEDWNMqOD4P3E5qrkvw7PgQC+7gAB5z8YjmbiVfSUxWdLLkLqhS/H3KIs0Pl?=
 =?us-ascii?Q?CGwnsAcTDX81oTc6mh+G8DcvvkmNnmBFtYgev5S8gxHYlnJoNxliV3v+sjqv?=
 =?us-ascii?Q?NQuPppYM2JJmm/vZAFbphSVnet2zcxHvohGPFCaIjLj/UsKetr9+qG1q5mC0?=
 =?us-ascii?Q?E1hfIjCkEKcZbOlDLESNtOs3uz4nOe2sGEoaXKSriX/R4Nx1K9HZY7AxXhfn?=
 =?us-ascii?Q?R0J9Y9qrg74EKulXNPxVpId8LMwURuvJHd9PBrCE0wy1lYoL9jthZILcfqIu?=
 =?us-ascii?Q?WePeRfacNTZYAeFc8+2qZYjXIWgtB4XL2hXncAzpd4Yd1H3Wxg5o6/q7ZG/e?=
 =?us-ascii?Q?kc5ZdaLWEInk/M0l90wxJk1DNWnioWjM9Jbp0T9TvpqvcjfZ140VM8DbgPyW?=
 =?us-ascii?Q?+HintBQ+QnZx/7Xskd3dUPUfe6ZTEeF45jcmUkIzjCQx2dtgTla8Us9twhN+?=
 =?us-ascii?Q?MCC5V6n4A/ininHbzWJ+HFmI2RJkX0TnhxTYtdZuMieSFhypGtOlHzDLnnYg?=
 =?us-ascii?Q?C17IMWNFBlhXsa+gGNkAMh9MAUVhhppsLtHg+mEwIx6Y2Ht4VvCVh7Ofhc6O?=
 =?us-ascii?Q?duWU21rS+xQMe9Cq+F4Ist+32xlGU50Ma+DwbRSFjFPP4Mrpt+bTaEKTKldk?=
 =?us-ascii?Q?jW3UwkIEdIu4vgHaPGHvbCj0ML2JHHxw1EBLRc1a7JO/dppqcBjJQxKNQTSf?=
 =?us-ascii?Q?eKb0q01cyvDOFtcEhSU475OFiU7eT6ojrcb+RFDTjRwCMWov+ZtB4PCTu+WY?=
 =?us-ascii?Q?Us+GaK0FSuwPwRD0sD9UKHRHi5Wc8Ru3At79OBb4B1sqqQP1gS98WkaqgUTG?=
 =?us-ascii?Q?qgLDE3RNh3cH7JqpeDA9bK0F/5v/kyEJtMS+NQOOUCPr1cHdXW3DIdGYViRA?=
 =?us-ascii?Q?9nF6YbnTFnzGdSt8Vk+LwjwIKuiCJHGgk8kKttDATcPB7uVo2WDQ0xzm0jXz?=
 =?us-ascii?Q?XdN/sy99FsVcYB+8bs0OESTKyYNjgm1rTgXpJuwK6pa+QrLhRe625ltfVNA5?=
 =?us-ascii?Q?EIvAtiP15oS/JbkgSilOiYWF7721D8TT8tYO+ziyDV6UAku/jFZTORTcvAtt?=
 =?us-ascii?Q?dvVWSx/VyeR5Tbu1EoDdHNS4cxgsC8j0p3OhW4WbD4oWMD1qEzG41hX2h09D?=
 =?us-ascii?Q?jymy29qTApHvetB3pELQeNXM2YVWRtItpE0zu95g?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6cf1e7f-45b5-4cd6-2ecf-08ddef1e53f7
X-MS-Exchange-CrossTenant-AuthSource: DB9PR04MB9626.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 21:26:09.4948
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ke5buuLdB50yhYEn6tkwCvvu03jolk2OFs0W7rZodJX0ciXpl8wC9aeHMgyF1oQQSjbeGEcARh8Ha0xJP8/v2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7016
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_142617_911332_28D3867F 
X-CRM114-Status: GOOD (  21.55  )
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

On Mon, Sep 08, 2025 at 06:24:01PM +0200, Niklas Cassel wrote:
> Support for msi-map in the pci-ep device tree binding was added in
> commit a6aed6b9c79e ("dt-bindings: PCI: pci-ep: Add support for iommu-map
> and msi-map").
>
> The PCI endpoint doorbell feature was added in commit 1c3b002c6bf6 ("PCI:
> endpoint: Add RC-to-EP doorbell support using platform MSI controller").
>
> The PCI endpoint doorbell feature requires:
> -An interrupt controller that implements GIC interrupt translation
>  services (ITS).
> -msi-map being defined in the pcie endpoint device tree node.
> -CONFIG_PCI_ENDPOINT_MSI_DOORBELL being enabled.
>
> Add msi-map to the pcie3x4_ep device tree node.
>
> With this, the pci endpoint kselftest doorbell test case passes:
>  # pci_endpoint_test -r pcie_ep_doorbell.DOORBELL_TEST
>  TAP version 13
>  1..1
>  # Starting 1 tests from 1 test cases.
>  #  RUN           pcie_ep_doorbell.DOORBELL_TEST ...
>  #            OK  pcie_ep_doorbell.DOORBELL_TEST
>  ok 1 pcie_ep_doorbell.DOORBELL_TEST
>  # PASSED: 1 / 1 tests passed.
>
> Cc: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Niklas Cassel <cassel@kernel.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> index 90414486e466f..c0121aea791d7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
> @@ -389,6 +389,7 @@ pcie3x4_ep: pcie-ep@fe150000 {
>  		interrupt-names = "sys", "pmc", "msg", "legacy", "err",
>  				  "dma0", "dma1", "dma2", "dma3";
>  		max-link-speed = <3>;
> +		msi-map = <0x0000 &its1 0x0000 0x1000>;

Not sure how your hardware map PCIe rid at EP side. If your hardware direct
use RC's RID, difference host may use differecne RID. I remember you met
similar problem when enable IOMMU.

Generally, Only 1 EP support, you can use msi-mask=<0> map all RID to a
fixed value, But it also needs change glue layer configure to force to
use the same RID.

I suppose this may not work if connected to second PCIe host slot.

Frank

>  		num-lanes = <4>;
>  		phys = <&pcie30phy>;
>  		phy-names = "pcie-phy";
> --
> 2.51.0
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
