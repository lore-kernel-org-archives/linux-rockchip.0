Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0AB7C25B50
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jan 2023 02:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:References
	:In-Reply-To:To:From:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45UmqTXZ8HykyaLVZD3Bm80HBK5CI11rFA4gqGwxeCU=; b=3TKBJo+hRnRJAT
	x80FmPpKvkaMqc/prLBW17sk+CiL+eeO9kH3xEVCLGEjvArptt2bQm6L30vmREqakPEprr3tUhm5K
	q/6qWMs2OSudsuoHeJAWUE/N9S+hiXlVG7R47i2rEbOrAuPnrFE/Ys+EM23H5hPynlSnjsQle34R/
	fF6OXlJjOZ0HqbrNRvLo3YodCmaFeEvL0QSkbEHATIZPv0q6gILAHu8CylBOXJaYxPNDSmnmVK64e
	q/pYWNxgbt8lRMaHux4tAkRuncpiDLEwde9gps/daruXUj+/vg1/aMeYJzvFXjw0P2L5fJciaKTo6
	C30PdRo0kxIot2SQNi0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK8ol-0025Vn-It; Tue, 24 Jan 2023 02:13:47 +0000
Received: from mail-os0jpn01on2125.outbound.protection.outlook.com ([40.107.113.125] helo=JPN01-OS0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK8oi-0025TZ-4S; Tue, 24 Jan 2023 02:13:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZrIUFrVO6mD+hdINRSwr9pTSOg5mqGM2fNKo6WWAdlVjy7+U3bID8/QGzBywoD2J8vc+SYX6YK6dagOnqg7hpcrqlmmakWzI6/RkbmlCOLXDwExd1xNeYF2yHwqa1dMeI4fpUroyIWoVoxQ9LkmulwkTOvHfqxSVPjvaRBLmVOhwFjzdicokMBRTlT7hb49+9bjb38EO42U7msI3zqveUaz8d6lPJU7EQ48vk3p/TRUYNieDNve7aUjb6iQHxhXfiAnTLvOKzxrBFOa1C42vMHqQi1x2EeXlVuxBORXO2VcIbILb+wETlVRQxyZwxXPXEZE2IUx56d16xEAba5KlFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r1lwRWv+Ldc2M5zyJ6cUcgdNTcI7rj6Z3D3wQBfvenE=;
 b=LQyH6Qj/j64tfQmQUvRBKK8B9Ld4IZNtibo8ZSWNcAj+d9MnACOONaFZFV4sYWvQ7QwoouQ9zw4QrwljRqa/bW5SUO6PlHDnuI0N0xjkjs8dRqfH7yysyuXO42K0cMqT7bebdpyKbDN5pC1vEbCkl/71iQFCwAG9L2WnWyqgvS2YyXDIsvyQ/jO51jilcV9w+1JYAiNU57lP/waZuk5oqyfa0Me//hMYRFF+r67AZ2dPEtubB1fjCmyesiTFDgx5UTaxTFhw03pgMQwu9S1LqX2WKa+I1yWAG0JzByH7UF/TfVjoIgrEJEoTqfIo/l83TZ5b+oO1lU7zgjQRZGsODw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r1lwRWv+Ldc2M5zyJ6cUcgdNTcI7rj6Z3D3wQBfvenE=;
 b=K7t3N2BFL2JeXhuGr8N75bMPwEdEAOB3ylgVLmI7ojM9noRCcg5X0OrjlNZHpmWWbcELTVnQGNLWlxNIyUA8X2MgiU8buYWrK8Z1McAhg3uMobchiOSqQT+EvoDYsglvOqH2vKlfXjDamCRuMgKzLkHLOz4B670fbltMIdZraP0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com (2603:1096:604:194::10)
 by TYCPR01MB11127.jpnprd01.prod.outlook.com (2603:1096:400:362::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Tue, 24 Jan
 2023 02:13:37 +0000
Received: from OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::3cd7:a7b5:ea86:9ae]) by OS3PR01MB8426.jpnprd01.prod.outlook.com
 ([fe80::3cd7:a7b5:ea86:9ae%6]) with mapi id 15.20.6002.033; Tue, 24 Jan 2023
 02:13:37 +0000
Message-ID: <87bkmou1bi.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Mark Brown <broonie@kernel.org>
In-Reply-To: <87y1psu1m1.wl-kuninori.morimoto.gx@renesas.com>
References: <87y1psu1m1.wl-kuninori.morimoto.gx@renesas.com>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Linux-ALSA <alsa-devel@alsa-project.org>
Subject: [PATCH v2 16/25] ASoC: rockchip: use helper function
User-Agent: Wanderlust/2.15.9 Emacs/26.3 Mule/6.0
Date: Tue, 24 Jan 2023 02:13:37 +0000
X-ClientProxiedBy: TYCPR01CA0127.jpnprd01.prod.outlook.com
 (2603:1096:400:26d::12) To OS3PR01MB8426.jpnprd01.prod.outlook.com
 (2603:1096:604:194::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS3PR01MB8426:EE_|TYCPR01MB11127:EE_
X-MS-Office365-Filtering-Correlation-Id: 727b9ad6-284b-4bb9-8038-08dafdb09a8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	zmod0TEBz4AOauoVHkocOzCq3pJaEewAUkQAWtg7IjbJAvQ9FJWCIbgdwHC/pdmJbUxjfVAL1PAmoutEul8yoEANeQxeVT3pPhzNxIIp8OArE8Eildd4VWQsGFvhvKhtkLzv/J1PYzhFHs+9SBdTr+jzf3SONf9F5JQcg4SfMvcgAsEvbwV0k89dgYrQO5P0LNvxfa0gs5lnFEnbLsVL6NyW06W4CuVX05htiqeZjfy50Xj9AZLUbn6OUVdoQr/8v6I+mKkVFzt+i2yLA4JR/DaloUQ0Xrz0ETRReqrYgF0IpWSdY9PGmUQ6LT9Uyp8e6rRPErFDEKSlJzWOhnRrDb+ULLDoseFHFl9/Vy5DmyTJf3G53Zo1gigfuetZ/PNrlW2e47/WFqhCdZ21Jxiukri8aZHtxSUD01iRbnC/XhxNI1EMv2e1G4zJOqlpULy04ypmTIJHMKKJtJxoGcO1cFUJa2NlIE25IUX5WKAgwSqkYFr3sAna9HF6kPbvx+2orjbut+497gjoHpTjGOX7LiNL862u0PLnKAn5BaqiZDfWr2wjqDrqDLWju+wOfSkUwkHiqkwt/YeVXggfA3cDFPDQL4z4jOUODzh64WwiX0EUMGIvbVv5EVTPiSCUC+r/s/JTKE2Ycm5n6Edn3NuglC/pAqEVDmvzeAuGIGjhx4owVkIlBi2T1f1UVzXSPC4pyHvZgvvUFhB5+p9JvoLklw==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS3PR01MB8426.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(376002)(39860400002)(136003)(396003)(366004)(451199015)(8676002)(54906003)(316002)(86362001)(2906002)(36756003)(4326008)(5660300002)(66476007)(66946007)(66556008)(6916009)(41300700001)(478600001)(6506007)(83380400001)(6486002)(8936002)(38350700002)(52116002)(6512007)(38100700002)(2616005)(186003)(26005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?09sZIv/nH9klEkQAyIFctc8Ed3UuQ2ZWaFU8YEFsvJpUjCJ5f4EwAJM5eHm/?=
 =?us-ascii?Q?ONscF1G5G3W06EhFW3pe3TiWjCzyJvEsBuHvfJP1qjY2dtctZq0xgsQB9JRe?=
 =?us-ascii?Q?9M/DdHDy5Bb8EVrj9k1FJ652Irnh35P6XxCNfH8S4Kr9KpYP70MUnpY76DU4?=
 =?us-ascii?Q?lwFun7NJ0FxHtMgFV+w7NZC4i82mtPfgHAUFJXLmArLpaTkedoAzBaHK1I+q?=
 =?us-ascii?Q?UfXdGUB9hdAf0SAz6ywJeiGmatZlZ+giP8fS40otgeBuTovHj0jz51pw3bgG?=
 =?us-ascii?Q?qXEKZU1WB22DpaPgi0FfM7QwF4yObOx1/wO7Y9pBLMYzd7PbWrtjzgqTzv6r?=
 =?us-ascii?Q?lCCdNCZK7+8fxzksWTBgxHOTu1mEj/ENBV9W1sNlJsuaNoY5i76II5wQ7YLF?=
 =?us-ascii?Q?zMEp1EWNx3cTEqv7cghmEEgAY58OLr+AEbfzon0Rpnc7hswaPkJRT/iDykpC?=
 =?us-ascii?Q?Ckss1JQ/Tfc4c4968y9iPG9z5/toLyniea3rkdwZ68Sphwo0HImRvsPi0KJE?=
 =?us-ascii?Q?fJnIeRK3qBaShQDhJ9nVCcRG7abGNISwGhaOjU4jKzQvSiJzwC0AwQv0rL/v?=
 =?us-ascii?Q?9+u7JerJ85n3LjRSO4AJBF3VpCxu/ph91jEnDo8mht46DXR9HTcV4eqsxeOe?=
 =?us-ascii?Q?EspNBgKXtBYDAC2BFbzQPNhNGhvZQKOKTIvA5M3XUkhHp4w3UU4624ga3e1D?=
 =?us-ascii?Q?4wyjqaoWC1sMwZSQ1Xfd+m8WJD+vj0GZJrltUKaTMLJSQ6c7PdvbM6nsFxj7?=
 =?us-ascii?Q?wK0UVI9ZacBs+O6RnwTo+tdSK1OrBBKEMdTkFXcHzl7tawa/u6LR9YaZdOtL?=
 =?us-ascii?Q?Gt4+7kTF/VzitRelu+FsHiA9bjLP7vmowU9ss/a+9YglFWzccFyS4rTEJP1I?=
 =?us-ascii?Q?MjDZsNs/WPB859RwI5/OQGzlCdbpMHdPCMOa4X7SM7WvJqD8/lIAsmYyMR8f?=
 =?us-ascii?Q?0/a97oKzL9r9ixqQ0JBDz19YLES0n6JTqWFmxGX3owgB868q8i2vGJEsAVBn?=
 =?us-ascii?Q?Miq6G2kVEeg3+w54Dx5X8F+TYuyEzA/VZuatUUch9cjda/LCB4Fhtl6EeauZ?=
 =?us-ascii?Q?VCKUn34XEMs8KdLn4m5QOevp2vu7IxlV2xrhr5f+O+1WoBa8Bky+TKCxBfSi?=
 =?us-ascii?Q?bSw43xXpH14v6K9YdjddW0mXQo7MITb45dwGQiY+36pRjKHSXZE28fO4+Q5c?=
 =?us-ascii?Q?XqUU+iR7VAJa/IUrOF8KSb4/UiqfqG2fRDu33ZtH7sS65LXqj4FlpjoPC7XU?=
 =?us-ascii?Q?vAILD4cc72WU4+bOlzqVsfglGteTgj4dKPiUU9/miXqLM1SwhLxjS0gQV0mB?=
 =?us-ascii?Q?e68AimWgquJfDncrcPbFN8v7IzLalp5ihJxf8ty/74NuTJy801v3+7MiHy8V?=
 =?us-ascii?Q?FNnntRIeF/JwFUqFvynHA8t5fVfWS84JWp/TIIGn0/XLE6BK8IP2fFseyzQL?=
 =?us-ascii?Q?ufeZkhE19RU/8Frvp4uW499SepIdI8KpGv1gSNmTU5eodxlKc38ebSHx7Rh6?=
 =?us-ascii?Q?Kl0dqbZiV7Q4dFN93S1h8Vb0BGsasbA+hhkg1/J2QkswGOXHqqaGvvh6MMMk?=
 =?us-ascii?Q?gdZxUutkWRSC/rlSG1UkaAwsF8V5RZDpme+Y2ZwxxEFVoZ2h1kO4oBKw6h6Q?=
 =?us-ascii?Q?yLjnEJJSz8q2gl+F2iFznt4=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 727b9ad6-284b-4bb9-8038-08dafdb09a8c
X-MS-Exchange-CrossTenant-AuthSource: OS3PR01MB8426.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2023 02:13:37.6879
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kwH3tRnUY7T1D8yYp6PVNGrL0tgd0PojzLb3A4BrgCkcJr1IZnsOp0lhYvvIueU1pkiQHWLytDgVYFf+c1a3ik4AA9iYdf7Wpo6qbvp5R20lXUY9K4M2THqLp/1h56X1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11127
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_181344_421295_72E0A805 
X-CRM114-Status: GOOD (  10.72  )
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


From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Current ASoC has many helper function.
This patch use it.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 4 ++--
 sound/soc/rockchip/rockchip_pdm.c     | 2 +-
 sound/soc/rockchip/rockchip_spdif.c   | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index 08b90ec5cc80..166257c6ae14 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1070,9 +1070,9 @@ static int rockchip_i2s_tdm_dai_probe(struct snd_soc_dai *dai)
 	struct rk_i2s_tdm_dev *i2s_tdm = snd_soc_dai_get_drvdata(dai);
 
 	if (i2s_tdm->has_capture)
-		dai->capture_dma_data = &i2s_tdm->capture_dma_data;
+		snd_soc_dai_dma_data_set_capture(dai,  &i2s_tdm->capture_dma_data);
 	if (i2s_tdm->has_playback)
-		dai->playback_dma_data = &i2s_tdm->playback_dma_data;
+		snd_soc_dai_dma_data_set_playback(dai, &i2s_tdm->playback_dma_data);
 
 	if (i2s_tdm->mclk_calibrate)
 		snd_soc_add_dai_controls(dai, &rockchip_i2s_tdm_compensation_control, 1);
diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 5b1e47bdc376..6ce92b1db790 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -373,7 +373,7 @@ static int rockchip_pdm_dai_probe(struct snd_soc_dai *dai)
 {
 	struct rk_pdm_dev *pdm = to_info(dai);
 
-	dai->capture_dma_data = &pdm->capture_dma_data;
+	snd_soc_dai_dma_data_set_capture(dai, &pdm->capture_dma_data);
 
 	return 0;
 }
diff --git a/sound/soc/rockchip/rockchip_spdif.c b/sound/soc/rockchip/rockchip_spdif.c
index 5b4f00457587..2d937fcf357d 100644
--- a/sound/soc/rockchip/rockchip_spdif.c
+++ b/sound/soc/rockchip/rockchip_spdif.c
@@ -196,7 +196,7 @@ static int rk_spdif_dai_probe(struct snd_soc_dai *dai)
 {
 	struct rk_spdif_dev *spdif = snd_soc_dai_get_drvdata(dai);
 
-	dai->playback_dma_data = &spdif->playback_dma_data;
+	snd_soc_dai_dma_data_set_playback(dai, &spdif->playback_dma_data);
 
 	return 0;
 }
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
