Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D5E7C4345F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Apr 2024 14:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yAptlpYAHG5UK2kjT9ExhU3o9CrOtg4k21rFj9qca+Y=; b=OpDloWjV7E8fk6
	XSlmbZTT2joUd51ZinRPuob7qBNk7WBNHc2Qf8Nbrbpdz1zQ5eM0rYKo6bwrjphE+TP535u/NiLkv
	zKBd5dfZKovYDaS05uNF6aVsiCCYb72LBSAau/ZC8XvknViYf6Z3fod/UNM2TgEj3IMdhY23A2O2v
	SUBZZhn9AjOPf0KuwbPcQoHYfPRMG+mFOfO5TKDxn2SxBOa9x3BbhDM4pyyOB0oekoHJa1fG0Txri
	K+5vodYrC1XUsRCAK6hvfae2qv1iWY50JLf2MwH5s8NmxUXL6VvvlZqPctvIhrq3E0IICcZElli8m
	Hwf6XFcuLSpFOZVagVvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvICT-000000004oB-02R5;
	Fri, 12 Apr 2024 14:48:21 +0000
Received: from mail-westusazolkn190110000.outbound.protection.outlook.com ([2a01:111:f403:d000::] helo=BYAPR05CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvICP-000000004n0-1CZN
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Apr 2024 14:48:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NHz1F5zkTzeClzb4gYRJKMx8uow3BKeZ0rbLgyMQdoIqnN5RQJO0CV5UVpDUUv1msUqlXdGnNrGt6bBsbvMQq5fShYiHm8O5RQsC9ERUQKC18GX3M4eOUdgzVePs/WVTCiVoyAtUqYVZcIQxWoxaZM892MkYh0mBc+Ubxa2LLtTLmNO/C6fPHGx/mWNP5GQWtjWfXrYvvh1QNyA+mvjYED6xmYsjelowqpkIxXD32NengShL1VF94lLXc7V5M1Ylh6Q9OGCrqAea8WZjzcqbc+TLHy/fxgniItJVlBPANOgqssFQd5db/6Uh/zujjsj7nr+3rFKgJPcW+EVdD1kJ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0lbDEp/UnZ/F2+FYSung/2eQ/W8c93WJqrcg/4d231k=;
 b=QXaek4ts5pKMZbTyzcI5VwEOHxf9qKzUHE4bmcKQxqy/SqtJShy8dxiyTbag9glGKAXkvpqbJlRHkZYeGyuf84Aat6UD4k1YEBLUCIR5UmLvJjjKGi2bfF0vQwCYk8FImrNwSne6deTqUFt7LlVcA7vR3Zx8DwmHz1z7vQXhgQG8iv9AI6RNEkEqwCU+/F4tVMGUTfCcJKzgbI2ZIXXzJ27MAG7FMibSHaUkecFBjhEGhlYo2ivtVKp6PUvPl5LlbrIxd8djlZX+YCB2t4MMvbJTe3NBhAIZ9feF2ZPo1wh5q+ounoMl+OxvZvoSTGQqyqhKCqUMQFw2es3Egr260Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0lbDEp/UnZ/F2+FYSung/2eQ/W8c93WJqrcg/4d231k=;
 b=RNyxt2K9WtbxQABp1zelCENC4yrfnJMmLwnQhaoWWiGGXX/GpBeO9MoQDCG06TZuteFpuEtZAG1WdlHdM5X+YEhLHUB1g7CdyqkGywLFdMXhYtzLa47rW2oI+XDiGAE0wSE+6a/rCwzBFtm1WlP7qjfHyjIohaKbjZ2ZZQBIVAYmy0L9mFnSpD6k6Txs0f/tHt7Z0FI6MHK878aKGgLCdQ6hh6Pm9l94lGqDbyvnctFHGyOTjxGvJSRtYQTSLbuOgTQmEtIgXySVklrGZXbh/knSWVyKy8drv6F7FkVNDith3hnkkydI2d/VX4G6PmkaNuBwWMyCdomsx1G40BZQXQ==
Received: from DM4PR05MB9229.namprd05.prod.outlook.com (2603:10b6:8:88::20) by
 CO6PR05MB7732.namprd05.prod.outlook.com (2603:10b6:5:343::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.55; Fri, 12 Apr 2024 14:32:59 +0000
Received: from DM4PR05MB9229.namprd05.prod.outlook.com
 ([fe80::148f:6016:501b:93f4]) by DM4PR05MB9229.namprd05.prod.outlook.com
 ([fe80::148f:6016:501b:93f4%3]) with mapi id 15.20.7409.031; Fri, 12 Apr 2024
 14:32:58 +0000
Date: Fri, 12 Apr 2024 09:32:56 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, robh@kernel.org
Subject: Re: (subset) [PATCH 0/4] User Requested Fixes for Anbernic RGxx3
Message-ID: <DM4PR05MB92293BE4D1D6CACE94C41D0EA5042@DM4PR05MB9229.namprd05.prod.outlook.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
 <171286007456.1886699.5340406203472105907.b4-ty@sntech.de>
Content-Disposition: inline
In-Reply-To: <171286007456.1886699.5340406203472105907.b4-ty@sntech.de>
X-TMN: [4HcBsupZox12U9+ktWBQQL6aitjv3piw]
X-ClientProxiedBy: DS7PR03CA0149.namprd03.prod.outlook.com
 (2603:10b6:5:3b4::34) To DM4PR05MB9229.namprd05.prod.outlook.com
 (2603:10b6:8:88::20)
X-Microsoft-Original-Message-ID: <ZhlGGH728cejixmf@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR05MB9229:EE_|CO6PR05MB7732:EE_
X-MS-Office365-Filtering-Correlation-Id: ae2482bb-ad17-4567-55bb-08dc5afd72ff
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NCmE9zSkjJF0alKexrUXXaMU4bBgilFF9NCwKsHzYYCL9gAAckUGrRTE0Pc2gUzHZGzckoPH8k6H+lWQ1taVRxohd24/KoDhz5HvhQIolDRLk7a1FPrTfTKjHZ5fkftaVcueughbk/0PD83o7gnxO0r6NeHIIYCIFYv2Hbkl8/qHTMXRw4sLNjlRTtCMUN33Kj1IiZ+GakMcETOSGcaFbg+AFU3o4pbQoTMeWYo+hgJKLBV5Oyu1e8y+N15w2OMj/J0MsFKBFUkC1VXvK6p/qFTQT6WMleEF6zyrbN7wGYu8IzTNGlZ4DEpnoHQMvMaQvIyTisl5ws15AOsEXeCgpjog20tq6ibozzvzW9sajyzMRFXbdH7aeXS0Xl0x21ECMNeQKnHIfgsXWlZtUyKPSz+xeEuoA0rS4IEIIgFz6BTAt1HFWXlC93xIyOzBZgPXsVrH3WeZ+gVIMmgqDKeNCc67/t0um8u7t4Y66APRbxkq1zpHr4WL2Y9mwoSoEqdQ50NNmxU/S3k0pxxmKvFHmeBlt8n8KOh3pAuP/qu2DXlIme8nv9T67Mz0s+cjat4t
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fLzWNi/Fr7xwyOceYTm1YRbSIj5O+ZUkZwBTzbjpqCyNmbgd8mw8tXa/GCpR?=
 =?us-ascii?Q?6S+pautGQAdBVLtPm45OF+eGNzeilvZPFSLxukzRJb24JUvA0O0BocVwd68V?=
 =?us-ascii?Q?zj+eWXUBBroaJx0BW8j83cv00l0eRj1h6wSdsmFhkEyDI4ODriUIMFszV8X8?=
 =?us-ascii?Q?KKoA5Iiov8JObL+i/v2FOalDDBdr3zXzQx5AcLLz2ucl+HZjiAT+0oSwnpw1?=
 =?us-ascii?Q?M3q33UhibeWafLwiUeLGimSLtWLe6A6tkysUxRehs4asieYz8sY0pLj8UD6y?=
 =?us-ascii?Q?boBJUGHH1XJH6NisJg/I6pZVOa0jslADJZXBVwGdS1obPTQ/+BzAx6uPPq+I?=
 =?us-ascii?Q?oBkaJlIAjvVBNzrvQ2YO22XN7ECU00ROvhjpyrIAjvUR5z8zQvJFVnmUGCCs?=
 =?us-ascii?Q?DWpK3U6MU0mM52giu4V3ssGqJ040plU0T4DS7z6wtFk13CospkvIM6CgjEoW?=
 =?us-ascii?Q?AM+vValHP9G6jUuqk9sHZSYvIgyIa+xvRMZgo95Br8qs66adyCisUTI/P2Zf?=
 =?us-ascii?Q?QPBWXj01keFWIiJXoKaAEuKG1zCfUEJpUBIQyLTMKI4hWigLU112APWHurVy?=
 =?us-ascii?Q?9mcZYVzdySAuj6eGCwOelj1R3qBhBH4dp5dZzMmKKfj+PN/s9lkfBnDM/wMj?=
 =?us-ascii?Q?S9KO783hr9t1VuwvTkbTFnOFVIX3We0i5qFNRmO7NV6iDUzRtHqGXSs1fXjB?=
 =?us-ascii?Q?QPsQTSItRgZYBby1m1mZXaLzvc55HfZ9dyDMb2erkzunqUgWLb9XFqh4w4Va?=
 =?us-ascii?Q?cW0CHJqAc5H71/9RN6t7XfwIwna43LH9j48ADaK2s2nWcfPL+GsRwxfnPwDD?=
 =?us-ascii?Q?JLwhJXa0oiK4PSC2J0u2jf7ERLo/s3m0sJnohZOyChIckXzkkB2lQBnncH85?=
 =?us-ascii?Q?9QipNHwb5WAO1Ofqg/Tvo9nx/RIsgjMq1RgmcDTua1bRB79NPjoQDSXkO+aK?=
 =?us-ascii?Q?rZKyvoB/Z7WD5zYHMH+pdKDHb3723vNm17FjehHeuQLIGEOKW5BDU6wMgFBN?=
 =?us-ascii?Q?p2Y2NM+xAbVS7fh7HCuoDL5H8+lwQhKHD0OjTUHVv2z+Ob2sb/VvXxeFyDba?=
 =?us-ascii?Q?42pIyY29YCAwFBqqRiH4TD/SojbQfYqGt9RI3ZHbuTueCZInwqoIx0aBXQPb?=
 =?us-ascii?Q?/6Pw6UGacgflVCSbf2ucXmJiVLYtW7NolgUis2CmX4CIw5HxUN+m3mp+nslq?=
 =?us-ascii?Q?brwL1jAKm7rolbEPcPiXUWHpiehDk+PnzWKvyDJZlrAbYcoYgBRVJvWQN0Y?=
 =?us-ascii?Q?=3D?=
X-OriginatorOrg: sct-15-20-4823-7-msonline-outlook-84f76.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: ae2482bb-ad17-4567-55bb-08dc5afd72ff
X-MS-Exchange-CrossTenant-AuthSource: DM4PR05MB9229.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 14:32:58.8392
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR05MB7732
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_074817_443485_77DD0411 
X-CRM114-Status: GOOD (  15.01  )
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

On Thu, Apr 11, 2024 at 08:29:52PM +0200, Heiko Stuebner wrote:
> On Mon, 25 Mar 2024 09:37:25 -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Users have requested fixes for Anbernic devices to help with some
> > intermittent WiFi issues by adding additional properties to the
> > SDMMC2 node and by making the sdmmc aliases consistent across the
> > device lineup. They have also requested that the model name be
> > represented consistently with both the manufacturer name and model
> > name.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/4] arm64: dts: rockchip: rgxx3: Add additional properties for WiFi
>       commit: 6bc8e01c7284ea1f56c6506f38c2ba9474db497a
> [2/4] arm64: dts: rockchip: rgxx3: Add optional node for chasis-type
>       commit: 8db673210ae24ed44acf15642f4abd6d4b4cae52
> [4/4] arm64: dts: rockchip: Correct model name for Anbernic RGxx3 Devices
>       commit: b41b83b701056421bdc494c8e1488d38f2990c3d
> 
> Dropped the sdmmc alias patch.

Thank you. At a minimum, could we reorder the non-boot mmc devices? To
at least ensure that the wifi is always mmc3? If so, I can submit that
patch again.

> 
> Best regards,
> -- 
> Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
