Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E93B2CA9EC5
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 00:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:
	In-Reply-To:Subject:To:From:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u2ZkMeUeo5LQQvpeQZmm8lYjP5z5PTVIKsbTyRGPmdU=; b=rnW8GBuKvMjW6OJg5YXFy1Nv7I
	ojS1sKc8qtZ6hd5Fq9bhxDyL3DjtOIW63jDARMJzMe9nFxATGHYZ2ySE8MYplWWQUQ8dxgyFDsivj
	5Fxkxm/MVEbtgvPqK9LU7XoTOgF6bdSIBSRJyl8bkIQOewbRWJQj+mmM+cIVItPtAJopwB4GujouE
	cAJ1rm7dF8jUNIoG4Ho8zE74IlgSTnRscDnQ/ZWmaiqbA5Dg3TqF/o2JihYtjAD+n3ppw5Hx9H7rH
	X9PMOMTpj4ggg/4nmzrUoi8tBcOizOofZgBJ7QsXUCkuD/mcDR02h7+s4yTJ8Wi6e6w4BXGy3OYmy
	Fl4zofvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGPyo-0000000BhB6-3d2d;
	Tue, 13 Oct 2026 00:02:54 +0000
Received: from mail-japaneastazon11010057.outbound.protection.outlook.com ([52.101.229.57] helo=TY3P286CU002.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGPyk-0000000BhAE-3bgo;
	Tue, 13 Oct 2026 00:02:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rV1ttbA/Ye+3cQEEMo0qFGR+VZiXn2uJ4efKTNY0sta60hCkYUVFjdEMjuP7BigObFdU9lEOk0UpxJGIGPIJrz2qiSsNFuy5rPB1bEAvFIRibNpHdyvhSGIrvEZbJyDufYrZZsGZo1tavfEKRdI2tEF3zUavFG2nuZhxh8YPUEs9R1Dham72rh8+speKc9v3TuAYuvR+8EcTpR6VMF+0mCpfGJmZCWSe+6Alcqe6qaKwSRs+JSGVRpq8uJh7ahGlbVNE9PgqvVDZ2/3lSLNO9+8bB+sPEGagvthljuB2l9BR8VsmuMwgfl6ANlrjrG0lz5C+F0czztRXOyJKuHmZVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jxgaGAP8pLC+BmI8ukX1jfb5CQ/im84yKraARY1OSWo=;
 b=i72icGRLi/dkoFimUmnTPOaLV1IwSMeMVCtt+lSBQsR52VL+IztFlvN/87aYlD7D50Bn79tMK2B0/exmI8Liy3yDCy8pxSyPQj2vGZfjmmg9KrQq9QfLg+mFgyWjqpJntsCgsfBzZdHVZGFnmH4zQRtAExkpFTqcg0xy/BTZbE1CSFa4BwuFxxQVduVtTNiZmOrRlDakIai1IGqXFwBGMvbm9P0Om6Cuoqt5QFiAIXr2QxlfqhhRidggq3Sll8amzX9LKKf5zCfAy39pxNxsKxBJFegtejMvfepVICh67WS6jdWVI98YxIZe2RncBDx+mGweLTxtYBllBI/ZIWiFsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jxgaGAP8pLC+BmI8ukX1jfb5CQ/im84yKraARY1OSWo=;
 b=QUeSO+NF6/jDw9ndhS9J1qhcNkezwyUkzBzeqfVOewms5Vy1S4IKQibaQtnDKSvjshgD9kTLzw5KNl83fiNanZfrJSzlIRllnfvu7QYl5stihHTbgrZxWXochJ55gRUS6w96/FJDz5aAo9dV3Iu1y1geyyMs+MSIKTLMc4BDsJ4=
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS9PR01MB820914.jpnprd01.prod.outlook.com
 (2603:1096:604:50f::14) by TYCPR01MB11460.jpnprd01.prod.outlook.com
 (2603:1096:400:388::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.496.23; Tue, 13 Oct
 2026 00:02:35 +0000
Received: from OS9PR01MB820914.jpnprd01.prod.outlook.com
 ([fe80::12e4:c507:3730:2294]) by OS9PR01MB820914.jpnprd01.prod.outlook.com
 ([fe80::12e4:c507:3730:2294%6]) with mapi id 15.21.0496.021; Tue, 13 Oct 2026
 00:02:35 +0000
Message-ID: <87o6cyxyau.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: phucduc.bui@gmail.com
Subject: Re: [PATCH 21/24] ASoC: renesas: msiof: Fix msiof_close() being skipped on rollback
In-Reply-To: <20261008103831.542533-22-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
	<20261008103831.542533-22-phucduc.bui@gmail.com>
User-Agent: Wanderlust/2.15.9 Emacs/30.2 Mule/6.0
Date: Tue, 13 Oct 2026 00:02:33 +0000
X-ClientProxiedBy: TYCP301CA0082.JPNP301.PROD.OUTLOOK.COM
 (2603:1096:405:7b::20) To OS9PR01MB820914.jpnprd01.prod.outlook.com
 (2603:1096:604:50f::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS9PR01MB820914:EE_|TYCPR01MB11460:EE_
X-MS-Office365-Filtering-Correlation-Id: 6478e393-ee5b-4890-17b6-08df28bd4913
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|376014|1800799024|52116014|7416014|366016|18002099003|22082099003|10067099003|11063799006|4143699003|261009223027099003|56012099006|38350700014;
X-Microsoft-Antispam-Message-Info: B6U3afTkf7VLXQKinV3m/9XC8elWhApxBH+FQzvshZe4INQHXDLCl5gxgqNcoA9Msw/YE3kbENXU+LEsdKoofIF56H7qV0nR5zI05gaIWPcGFaDL5MR/VR2I4g5rQP2dZprVME79f849Y9REscwVwAqWoAhgat9GQ8r1iKLNJwWVMDi0oltFZoKq1MaFscgTlk1nZWb5Narvcr35VoZWDnQKWyfXcYPDBEtroEInlyUfHIBpsjKuPhC5IY9GnXFclWBWIcptSGWTWrceYVthuUA0mijs5EKVwC3vHPXcaJYQ5AHESdQdFI40DshLh4jAD7DP8kegJBOgak5Xn6kqAu90f6G2/rmwYOT4yrq49CijemiOlv1Ps1ZmQkSW+veCFot6MXMf6ombY6/23YNk8w98FrrjgTW/MWuZRRoBaJyfp1D+pT2hcWQgcV8PuLonF1KNRKhfLLdphVgYv/OKo0+Ge4GP5HiEEW3nVi8b5lwB73jsGjCesgiRm932Spph8ZFce2Ab20tCruw80z/9gzE9nJI+dJBs69lstHtQNXowtkR9IEedl9H44GSZGFj8sdeb2gssT6IEs4uCcH6U1IL3JGb0i4I2sEc6IPp3G3eVWC1WS/7BvQb70eTWRd2xpVtRGeMM1qgBWSCfJRqFRNNgciMV96vouyxnYEZj94YsrN3CU7CJGbO01z/7K3hKD3nuoi9qTGTCakY3sWhRkj9dsSEfrDSPDlzK/94hP3A=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS9PR01MB820914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(1800799024)(52116014)(7416014)(366016)(18002099003)(22082099003)(10067099003)(11063799006)(4143699003)(261009223027099003)(56012099006)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2Y0MHFmRQVecE6UWj4+qneyKAKTfupSRmsdcjbsldQpxWBwR8g/Gbmc7Tfun?=
 =?us-ascii?Q?02+Xgy7BowWAcG4EEkiugsbJHHNEDcRjjVrbfWUsXflQCsp0UAh63d/2bOMb?=
 =?us-ascii?Q?wkz1G5i4CR3kmYEVPUOJnesW4jQgaYzzlGUf0Q0zeXfjt9j3IxeUcP0xWwD4?=
 =?us-ascii?Q?/jgwlU2luJDfDcyT3m+U582/5y8P1c7O/FBYLm7eaypblUy0V6jAKHSRvr8j?=
 =?us-ascii?Q?4xVmusNL9nuWNyJhvrQKD8r8hjMUUbK1rYa4hGutmZ5ftEFvJyzf8sFsDbzw?=
 =?us-ascii?Q?reQxmSqsKakR3a9ZA2VQcjy3XLGuRP1rygXZBXcl4btz6Tu0o19/vkIQVA6q?=
 =?us-ascii?Q?INwGLU+VV7SZ+QB9nXmg2Werp0BbDdiDdRsFD68so/jgGL5YUyzpawock0tL?=
 =?us-ascii?Q?o1UW8E6BZw4TP8VxCaxo3eP1SWsd2gxizASb4cuuXlGdFp0AG0UuD1LjxX5R?=
 =?us-ascii?Q?vhJIFpGa+lw95jckCPj5FBU0dA3ndVRj9WJVS+WXPYegOpCrBs+8kkBVv/Ei?=
 =?us-ascii?Q?U8qAc6DR2fgFraMhUKnnhCOGuNGPdb/O07cQSFO666IFz++7XkoYL9ImTVxD?=
 =?us-ascii?Q?lOCkFtt2nm+Yfl6jtTFaDg4FCsM2s/KTByyqPb3D+RG1zghEsjTQ3T8m5Lk5?=
 =?us-ascii?Q?EBJuMVCDf/DhqpuLEXmrcmRQCb0kAC0MH27WXMiIrWeNyAbC08u5maDGPTel?=
 =?us-ascii?Q?g5ZWDKs6TyZSQyTfhVVyESQV6uzGtgaw5sNn5vLGVxGau3urv+a0tS5dovJe?=
 =?us-ascii?Q?Ob66Ac/ct4dVGViS/gTQXl99cce5snc9QbrtMO8/Ctu8P81zSGSnCQLQmoff?=
 =?us-ascii?Q?1n6yNTVQxGeRvarOMH7GZZhthrXWyJxFC6ODn4g9OQ+c45gLlfUUE1QH11AE?=
 =?us-ascii?Q?KHKh2aehY3ALtoZchKX5Tam0q1S6XM4rlOKsVo6Emb9lrHAXmbhvh21QRe7N?=
 =?us-ascii?Q?qZP878bBuO+0x8yIjKebbaDp8V6P/lB0PXvVqGonPS8A7AS9P6tbl0punLUE?=
 =?us-ascii?Q?2Pu+meKMXBFQzdmG9qe9hi0gvITtwgEux2JpOv11sq3DOdvweX/Mfb8PVABC?=
 =?us-ascii?Q?GfpQGMxVGDIubdoEmB0YuBQBQBX1OhnaFp6JDv7QX1ZpEkwKuKnehlNuvqf4?=
 =?us-ascii?Q?0+wH8IdDtGsDVUawvi//fg56C+qtC4Ee+MINcbk7y51XcBhrZDh/2C70cIy2?=
 =?us-ascii?Q?VbU1sjtqs4KiuxhSsP6RWpE566DEf7guGOatHg4gR/W5F9YAUBcU3TlseaGs?=
 =?us-ascii?Q?VXtnkbBPpFc0Okxnsf3KdZuXS0y7I5klfDJhTxfDxR/DSw1RtXOmkTJXYol2?=
 =?us-ascii?Q?17oJ6E9CZxaTqQSXP0dSm84qeqVIHNXV68cCmj1mcilkOXfpQscQyOtpH5q5?=
 =?us-ascii?Q?hCy3vfjl4m8o2bceO4yX3ImLCu6/R0xuSgAvlXsQNrBkRAUkUNmsqFX2FIt2?=
 =?us-ascii?Q?jwOdtogQ/mf19kyXfw4/TxCTm/zrDWYPGnhkCP3gW/DOiDmiByI5lZ1xmAFG?=
 =?us-ascii?Q?8jjjIklLz+8ZU2JcA04Yx6NX+RNXpo5NQXVqo4+27APVc/PDEL8X9o908wJE?=
 =?us-ascii?Q?TGNG84phtWmZM3oRwyHpxiMGPeiwzv2sBye+t5ihCbTnhR88wKlWhTm03hUG?=
 =?us-ascii?Q?BQxl5DbNpMoPJ8Xn26FtjogiZOf7wpOgT2TYJgHvnS5tAsEgPBn6G3OtWyH3?=
 =?us-ascii?Q?MZt2tc/VB/7A4m+Y3b+MQmsJQ+quQEZi7OmV4d8Aj2Hi1O3NdFZLe0EM6OeF?=
 =?us-ascii?Q?sYhwevaKCofcyToBLApqNLv8flc2Jxc=3D?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6478e393-ee5b-4890-17b6-08df28bd4913
X-MS-Exchange-CrossTenant-AuthSource: OS9PR01MB820914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2026 00:02:35.1392
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xPXbv9+4JIq43tVogX7MCApz4tHDqhyI12nJcIfpeTvwrnUfuP5qGbKcyB4uZ0UcTM4xDazKMtHd6Xzh8jX989H8ZmLhH2qaHyjRVXmgNA1BjHKziYyZq090ZFn2PsfA
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB11460
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_170250_917687_DABCC070 
X-CRM114-Status: UNSURE (   8.87  )
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Bard Liao <yung-chuan.liao@linux.intel.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Ajit Kumar Pandey <AjitKumar.Pandey@amd.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Geert Uytterhoeven <geert+renesas@glider.be>, Chris Bainbridge <chris.bainbridge@gmail.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, Takashi Iwai <tiwai@suse.com>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>, wangdicheng <wangdicheng@kylinos.cn>, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, u.kleine-koenig@baylibre.com, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hi

> From: bui duc phuc <phucduc.bui@gmail.com>
> 
> snd_pcm_hw_constraint_integer() may return 1, which is then returned
> from msiof_open(). ASoC only marks the component as opened
> when .open() returns 0, so .close() can be skipped on rollback.
> 
> Return 0 explicitly on success.
> 
> Fixes: c61caec22820 ("ASoC: renesas: add MSIOF sound support")
> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
> ---

If so, we would like to have such comment to indicate such background,
because it is not intuitive for people.
Otherwise, someone (maybe me :) will return to the original code.

Thank you for your help !!

Best regards
---
Kuninori Morimoto

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
