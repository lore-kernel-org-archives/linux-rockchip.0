Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B377DCC6B1C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 03:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:
	In-Reply-To:Subject:To:From:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z/D1siei0eoVWltq7d/iBC/6TJrte/kx4NjOiosTS0Y=; b=XXSXbTUm5D9D6A3Rof3DRiMS3f
	YGtb1Hyra5gpR6oZQZqQ/M1JW+TLxUKd033az+q7SnbAOFargTxd/5nfzFI5qeM3YergoT5ZkFswO
	5O/sVL70VBX2qXP42JN2EgeL7eaO16OMdlca9Cl+ls/XM0ui3X2+hRNcBtjDBIrPo/3Vnpp9IiYGo
	41qIPAepPlwOyQbIgAQ8K4WDgxvpIwvFCdI+8M28SlB9XJ/UOPllX56ZrQG9edShO/R9YIe6pEk0L
	01lFeW/9HRH0rNFh9MbIt+i4OQjw+3xrYzRRdFEr6M265sy8mbCQoFzcwAsavjEzN8ChjkAat5Oux
	5s+b+cLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHCZv-0000000Glp5-42jQ;
	Thu, 15 Oct 2026 03:56:27 +0000
Received: from mail-japanwestazon11011029.outbound.protection.outlook.com ([40.107.74.29] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHCZf-0000000GlnH-3vz2;
	Thu, 15 Oct 2026 03:56:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cnKnlIvg7VhEt2rqxfuiEIELs+kcPL30GSEnjimht+E6syt5Av/fHLAWANdjrYotfFWAsPt/v4J2yOYkR1aHINdu5DARE5EURBIhsd37tQc+KwJcU6thvFoRKbn0qfkmZMucBKhoI/F3/9lkbGn/iB+thAVHQV/fhtWY1z+RXBcUhxoxCij55whgYPwuU0l5FtNWKye+HIQrlXi26NZcpUyT9sptKaw1MdaWQseYRMsXKhKLqR1ADN9RUHqZoo1NP0l4Dj5NtXunNePXkNtMWHmdH6br4WEaKMIXFRJNpWNoyRHKMg0QMsSmcLWx4h1ujGPrdnwxRzW67iGBC9+gGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FvZz5cOK2QJv/it/kOYOZpRvIxM8j8zz94SAxWAtqLA=;
 b=hFl/il1V36MopNG2RQI2qVGElQyN6yT7xkoT6fl/X2ZX64YE1C65EhTi58UF3yr+fFcDcrAF+MrrwlVdtQTUju4ow7BtkoIBpkVgMJsoLSYmWS0oF5jJrlUr6btqYR7YJlR+E7He1Qd7KrnNEDvGfDuQ9o7+qzuoZjgBSzo+94l/C+sUAxY8EuiiK3hDYWBVkCeG/tmSCvVv19EaEHCFnsH7RVTKkMElZKi0aTLdZVh8su6hTFwmsyREVLMnGsQC2GkfUF8b6I/q/Tr02CK2QkdTjxUQrLWliRU0hw1+dlMoLLz33sovG+JplOwL5vxxfVwa5nMs1X4Oqy+W0y5f/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FvZz5cOK2QJv/it/kOYOZpRvIxM8j8zz94SAxWAtqLA=;
 b=nr7jvbZAFmZL1Qt3fgWK7DfrZ6ih/k3uMSF6LOR0387baUQuZvp+JB64cy1DqK9OQOljvwb31lmcCY4CL7s2HlqfqOwRsRTEP6Nsz//odK6RgJaluy2kWURrprSu7vXQprZXevC0Y1kTwN25TPllSXyz1xVOYGvIu/9LF7Gb45I=
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS9PR01MB820914.jpnprd01.prod.outlook.com
 (2603:1096:604:50f::14) by OS3PR01MB6627.jpnprd01.prod.outlook.com
 (2603:1096:604:10d::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.522.13; Thu, 15 Oct
 2026 03:56:03 +0000
Received: from OS9PR01MB820914.jpnprd01.prod.outlook.com
 ([fe80::12e4:c507:3730:2294]) by OS9PR01MB820914.jpnprd01.prod.outlook.com
 ([fe80::12e4:c507:3730:2294%6]) with mapi id 15.21.0496.021; Thu, 15 Oct 2026
 03:56:03 +0000
Message-ID: <8733u7d3cd.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: phucduc.bui@gmail.com
Subject: Re: [PATCH v2 21/25] ASoC: renesas: msiof: Remove redundant period constraint
In-Reply-To: <20261015014324.5569-22-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
	<20261015014324.5569-22-phucduc.bui@gmail.com>
User-Agent: Wanderlust/2.15.9 Emacs/30.2 Mule/6.0
Date: Thu, 15 Oct 2026 03:56:02 +0000
X-ClientProxiedBy: TYCP286CA0349.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:7c::18) To OS9PR01MB820914.jpnprd01.prod.outlook.com
 (2603:1096:604:50f::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS9PR01MB820914:EE_|OS3PR01MB6627:EE_
X-MS-Office365-Filtering-Correlation-Id: cf07033e-9629-4a38-38f6-08df2a703ba9
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|376014|1800799024|366016|7416014|52116014|18002099003|22082099003|10067099003|11063799006|4143699003|261009223027099003|56012099006|38350700014;
X-Microsoft-Antispam-Message-Info: Bvb5CO+Dsjg3Lo6MIlIzOJHXzdU1eAbhEoN3UACiWRVtbTrDF3DkW6WjynUvCowhRtsL6L1zPkldLwocUC3qukuHao23aLwiCL4Y2ZgoCchp/3/6m8U0ysKG6RWaxLC46uoOx6lVvKgjhLmoL9z1OyOYUaPjehKrzCGcrr//sIAD+TcWe5RCu1bewXgRfUq87UlGalTtOfA3RR8WEDdtBfjSeqdsfqX9EytMRtPzzkdpK1oWGtd2eIZrVVQmQpr7kACkk0+VLInRqipgaV9cYOGI8+41V6hrN4o8E35pMyAF2COvtRPcbhhP8WCAY25WbHw0HgdQ9yMIP17jUoUPasq1Bltbh3z60YLCR6EVGsk7uTLWDMFOVLuYKWNbtYT809DK+mRpKv5Ob1FkvQyfuA5EhxMDf959OO5pIhYKSBz9tqaa1odJlsixYXGO7NJ1ELNb0Xwn1X1oj9QLH8fwqR7LuRWjXbffwcCaNK04WgIz+jqQa+7+9zgKPU6uW6AbRJTkafaweNaEPIrpNZEb7rJ0mFFKLEI9Arrike8qHe7B0KSdEVwnbR20esgKZKAdO24P9udwDCaqBVXAxzlzNKsIUQ6+eFNc9GN99SfAs98vFc6VMmyMQfLlHWyatdpZ3YS30KoY9MEJ4McEIiaXDAuCjAh9nC3CqEOa7PyeO4wW+TWpox3Z0//4uGcnginBjhUIpedZaqblcd6+GedzhMZIVvpjs8ZIfm23Onah9l4=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS9PR01MB820914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(7416014)(52116014)(18002099003)(22082099003)(10067099003)(11063799006)(4143699003)(261009223027099003)(56012099006)(38350700014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nO6DMYyAfqYcD9dkNp4NjBzUPAdr6oQqlSW+DsAwVrolkXEW65ulgg2Prr0V?=
 =?us-ascii?Q?M8FNJu6JumXt9mzXQei106ayUCqIVp9Oncgk84N7iR9jDt7QYRdLxhaKLDAa?=
 =?us-ascii?Q?3xf+GmTDyzG4GEWihgaAKt0Tii6mdfKsEYIo/uTXfi6K93D9nrFwOxgyB9NZ?=
 =?us-ascii?Q?x8ZuzgpPHdIBEOKF/SoGRELgPJkuq/1ctdSOGy/cFW0OfyOsLC5Ktv6y0ull?=
 =?us-ascii?Q?xf5JX0u0tDQtmtlORe2ifyPPWMpxmPED20tm69uFbSyRHUgk0srv2eFO6A0S?=
 =?us-ascii?Q?lwkH1njT0Cqu+aLErpEDj1VUKVl6svftdLIM7t9oNHFiDJTAJgdB16qmmKea?=
 =?us-ascii?Q?IEoQnCDty/iUXhhOKmoTmYKGbYqPaG6LwWGGC+1rzOFUPwytldk40tNUkV2x?=
 =?us-ascii?Q?aQKoVQUWIRhBOW++tONWid/N2HquAiw1tfJm2gcYqQmP/bQ9Huyv+UQ0Ttjw?=
 =?us-ascii?Q?rI5RVb47GCjpGZMGJUEP2uSNXYb055xo5D97pYF4AGUSUFW8x7RnED77vly3?=
 =?us-ascii?Q?tnSBzqXKRUN/yW+/iDqBkMn2x9cnKIQq+1iIUQSOvrqvM/sqUeDVXRO5M5SK?=
 =?us-ascii?Q?tUBy4a7oCzWKyTj0x2PHVUXp6jmw3e2CwZ/+TRDyjrZ3opmrJFVdK38TKnnW?=
 =?us-ascii?Q?iKPjp/cjFApKWZmNL/dysIhUQ8GodU7sabUrqWO61H5HVFDkDQWn5vT0XNTG?=
 =?us-ascii?Q?WHgV1u9RePIncMEGBmEhmnaxPcWhst5JIQJN4HHEgdofT4Kkbdp8vaSKhV81?=
 =?us-ascii?Q?Nsqxrp2ohH3f4kPVpRF1BKU6BQo8RLCOfH3hqwEI5KZI2LHJ/CNtiNKZtgzp?=
 =?us-ascii?Q?2r4XzD9M0ixke+QxnlVfmlrXcWa6O++iYowsWmXV0ddBqwgTgTlJOnHdb9Hg?=
 =?us-ascii?Q?HcXT9sBGOtDTJWPTI40SlcQUUMuwZdYFYMKN5YbFYS3RYFD4IGF0Z8Uj04VY?=
 =?us-ascii?Q?aEQ2y2Y9/pqcs8KoSnIWkypuM45V/fRbGs0bkmjr/bbkyQ4JzepWcQlIZYI+?=
 =?us-ascii?Q?L/BtZ7t9NRLeOyItX39o1HIWQIOX91e2OZVDl9xExOsoIhBo9ozkhK8aewti?=
 =?us-ascii?Q?L9mE19UkiYu1mzjWoOk+Hg+AjKTh1vbLxPtZzxf5KRHAZ9x2ZVweqwxtY91B?=
 =?us-ascii?Q?u0vJa7U87SisM0U7txndIMwSi0u8PoVSmIyUAoBclpTaQgiaL7MgX0LANVUX?=
 =?us-ascii?Q?FCev0YBvdM2pk/+SmTVIfkssLcunFyIKr9Rrt3MEMbLOsQExyEQ+s/udWXre?=
 =?us-ascii?Q?p9FlcAmr0kOkQV+ddshanPQYcQ/OwCANQkxjug7t7tqfkOlG8S6la82UOvPw?=
 =?us-ascii?Q?Layes56wzMYBTOlh5hzBr2ViUaL7YtgtheHxOYylDS/eyUADE4mnjw27ZX0K?=
 =?us-ascii?Q?VucHgDim5UtVn0x5IFCg1pTiNCewUClpbOmVFwLDVnzQ+16nEawnFL6m2Dxv?=
 =?us-ascii?Q?Qa2lnCuIxMbUOtSHcUXDjHrUNwOIgDIL0dvHVwEJezauCl0irZ8j2nvjvg11?=
 =?us-ascii?Q?HoecT/Xx0I1hdvSRhTnzCt9q3sBrdJvwQpZOAtkq1LvdumlOZPbgRw17+ZYj?=
 =?us-ascii?Q?EFpThIFAtSnvjxeLmI+VHg4xOOrVWDdBUHTTYLX63v1sOqFZ1KgXBLCvwGfj?=
 =?us-ascii?Q?vlaqxofvex2MWshEkBdOokoYyJ8dVeFBV05NTVirI2bYjr1zp7FmHh39/TY/?=
 =?us-ascii?Q?IUPbib7PuLW74sUVhq+UsvpjxB4/QJ952Zv1adv+RRQjzJ4/o3TElMddVHHo?=
 =?us-ascii?Q?2PVZApdItbV1ABFrEzQS/qQKEdoinV3kP0eZxDOmhtSGNbcagyLQ?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf07033e-9629-4a38-38f6-08df2a703ba9
X-MS-Exchange-CrossTenant-AuthSource: OS9PR01MB820914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2026 03:56:03.6439
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XkIL51mP7YKXmYFBYOlBxTEKwwOk0anEgiHdpNNbxUcRuCI3okVcxpxFnpj206tsh1Kbc9tfm1tVB/aKkrJ9Fe7L0ScdZX2VdrZc3DxRl2zj4oAzzEV0fyxsRlAhce7d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS3PR01MB6627
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_205624_135916_459E516A 
X-CRM114-Status: UNSURE (   8.26  )
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
Cc: imx@lists.linux.dev, Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner <heiko@sntech.de>, Bard Liao <yung-chuan.liao@linux.intel.com>, Xiubo Li <Xiubo.Lee@gmail.com>, Venkata Prasad Potturu <venkataprasad.potturu@amd.com>, Frank Li <Frank.Li@nxp.com>, Cezary Rojewski <cezary.rojewski@intel.com>, Zain Aboobacker <zainaboobacker33@gmail.com>, Nicolas Ferre <nicolas.ferre@microchip.com>, Bjorn Helgaas <bhelgaas@google.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Claudiu Beznea <claudiu.beznea@tuxon.dev>, Neo Chang <YLCHANG2@nuvoton.com>, Fabio Estevam <festevam@gmail.com>, Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>, Geert Uytterhoeven <geert+renesas@glider.be>, Chris Bainbridge <chris.bainbridge@gmail.com>, Shengjiu Wang <shengjiu.wang@gmail.com>, Takashi Iwai <tiwai@suse.com>, Magnus Damm <magnus.damm@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kees Cook <kees@kernel.org>, Vijendar Mukunda <Vijendar.Mukunda@amd.com>, povik+lin@cutebit.org, linux-rockchip@lists.infradead.org, Charles Keepax <ckeepax@opensource.cirrus.com>, Sascha Hauer <s.hauer@pengutronix.de>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-sound@vger.kernel.org, Nicolin Chen <nicoleotsuka@gmail.com>, Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>, wangdicheng <wangdicheng@kylinos.cn>, Syed Saba Kareem <syed.sabakareem@amd.com>, Biju Das <biju.das.jz@bp.renesas.com>, Jaroslav Kysela <perex@perex.cz>, Peter Ujfalusi <peter.ujfalusi@linux.intel.com>, Sang-Heon Jeon <ekffu200098@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Kai Vehmanen <kai.vehmanen@linux.intel.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linuxppc-dev@lists.ozlabs.org, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Md Shofiqul Islam <shofiqtest@gmail.com>, asahi@lists.linux.dev, Pengutronix Kernel Team <kernel@pengutronix.de>, Andrei Simion <andrei.simion@microchip.com>, u.kleine-koenig@baylibre.com, David Rhodes <david.rhodes@cirrus.com>, Hemanth Selam <hemanth.selam@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hi

> snd_pcm_hw_constraint_integer() is already called by
> snd_dmaengine_pcm_open(). Calling it again in msiof_open() is
> unnecessary, as the constraint is already applied and the second
> call returns 0.
> 
> Remove the redundant constraint call.
> 
> Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
> ---

Acked-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thank you for your help !!

Best regards
---
Kuninori Morimoto

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
