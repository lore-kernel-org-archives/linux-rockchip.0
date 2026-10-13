Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AF6DCC6B19
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 23:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:
	In-Reply-To:Subject:To:From:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7rL/uAaPLVWoaIBNa+nSAAE2RRwnvXFaiUXPfmRfbbM=; b=wLUarJDm6Zcrfewn+vrlm6EYY0
	MMHT0D65w+DdZ/28m3wZ44+KqHVAb2JWeXmIIHTYaWlVBlf2toNkJrTQtxyZpR4tZAGUTtC1LR+S+
	hQU4tQyYBEAJkCCOmbhh4+tqY/aYBvR5UmMz/HMrHTGtla9H4zlNycVDPCFsbnpsA+A/3qddGbOwk
	rcx0TmW/8SD/yy0g/C+plrAUP8ralqslZ4JhYn3Ri0p/W2LtICaQfpluqAm0VAS7IRvO2GtN3b94G
	jSh5tOVJzlOwxKp6w6az01HT94+WLG6dUiEXEC3uhwbZa47bVJE/0Joxy5LK8KucLbiAfUpUAj9KE
	cX06NB0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGm59-0000000EEd2-1P4C;
	Tue, 13 Oct 2026 23:38:55 +0000
Received: from mail-japanwestazon11011004.outbound.protection.outlook.com ([40.107.74.4] helo=OS0P286CU010.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGm4x-0000000EEb7-2dGQ;
	Tue, 13 Oct 2026 23:38:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H+TyebYn52hGNNENKZEr+pEWa+VFDzn7z7QjbswxO/xFVZ4mQ01sPMoliUQFQakNlazMb78Vt/4hqHp1/wghjd+asxOB6S04xrO3GkjLxU9JwA/vUeukln3UZV3R1VuAjvVqCF0+QxbF0HUunPBzJeoEy3op5kuYjgIeRoOn7qSLJXURd/sf2w8AkWFX7d5i6k53NqSN/52qV7xrmTfbabEvLEUirUHXR8G7CwfFaiXAjcOqWGECY6lcDAeL3sos38AM2D5yjiVe9QBV6WiQHAmCTw4e+wGqmF34v3yK4WSejUnffI20Tk3w4KHYDIUYyJVO2acMUBml9K3qVjx/ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DNjMIbYe7x/VN6lJjjX2RJGkFclmdFsRfB1RcKtZNtA=;
 b=hJwGBcSVQZr1jVTHpa2PW5ICddG/467OUCn1NEbQ+Bm3EssnayuVSFA1wZz0trkGMg5ih5df1+z/fgwg9E4aNQTDTmS7gcBm4wykKTSYQmJUWpbr9jNDSqdmFItNe/SKI5eirkfIOcL4fbWKFBUzOH1ddgHpGhaKoN0PxWlAZwuqikqe1peUsKgtMT+HdKDIHciwEH6BzUeiBFYdtwUmmt0dYcZj8HsSDchSPvsWTRty4kfAoXI0iKSEhvuV/laYOAiw7SAp7PioS/PtHtx2RELHOEUPE0Jp3sAA8Rk4a6MONf3ax1+lEdoQcZnFKBYghgJj7NC9wjbRCAprv3BcGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DNjMIbYe7x/VN6lJjjX2RJGkFclmdFsRfB1RcKtZNtA=;
 b=DUpJpENUy1AA2WaZqtZeU9153uyKIvqHBvQfv7QJcMJwi6KJdV0BmJqP6/YOTJRIVwcezWdOiZKAhmF8HUF+hPomcAwcW4bv9TiXoErb5Vid6toMpe3FTHLG8FuAj6TIIQymJ/USTnAenSiqIShO/zGGmVR15fx8Jh/gL0CJx+0=
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS9PR01MB820914.jpnprd01.prod.outlook.com
 (2603:1096:604:50f::14) by TYCPR01MB9642.jpnprd01.prod.outlook.com
 (2603:1096:400:198::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.522.12; Tue, 13 Oct
 2026 23:38:21 +0000
Received: from OS9PR01MB820914.jpnprd01.prod.outlook.com
 ([fe80::12e4:c507:3730:2294]) by OS9PR01MB820914.jpnprd01.prod.outlook.com
 ([fe80::12e4:c507:3730:2294%6]) with mapi id 15.21.0496.021; Tue, 13 Oct 2026
 23:38:19 +0000
Message-ID: <87qzhtyxw6.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: Bui Duc Phuc <phucduc.bui@gmail.com>, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: Re: [PATCH 21/24] ASoC: renesas: msiof: Fix msiof_close() being skipped on rollback
In-Reply-To: <CAABR9nG-YJZEdj6pVD-gbGU6J2EfRMQYsKd7u0UTgfrWOyAPXA@mail.gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
	<20261008103831.542533-22-phucduc.bui@gmail.com>
	<87o6cyxyau.wl-kuninori.morimoto.gx@renesas.com>
	<CAABR9nHvCfabGfBu85bm1r=hP3b0ZiCsgZfShhOv3gNUfjjhGg@mail.gmail.com>
	<87se2aw3ot.wl-kuninori.morimoto.gx@renesas.com>
	<CAABR9nG-YJZEdj6pVD-gbGU6J2EfRMQYsKd7u0UTgfrWOyAPXA@mail.gmail.com>
User-Agent: Wanderlust/2.15.9 Emacs/30.2 Mule/6.0
Date: Tue, 13 Oct 2026 23:38:18 +0000
X-ClientProxiedBy: TY4P286CA0081.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:36d::13) To OS9PR01MB820914.jpnprd01.prod.outlook.com
 (2603:1096:604:50f::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS9PR01MB820914:EE_|TYCPR01MB9642:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d96b994-ccb8-4879-4bba-08df29831008
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|52116014|376014|366016|23010399003|1800799024|11063799006|38350700014|4143699003|56012099006|18002099003|22082099003|10067099003;
X-Microsoft-Antispam-Message-Info: GK5KKkYP25Jh8tCvPd70U8oTdLYzvuxJ5D/cVTA66+mFo5DhVmLWk5o7thkpNwyml4l84D2UgLdNzkC6ZM7vUurQSiGBbgQ+uEcc5E7/hMFJB5e2glr/vvFwn6D701dPo+74mQgEdtBkuBds6iLEtRJ3l77+BDyDKYRQJyS9S6XtG1wUloSFbSvemUAk7WSwvRtRqYgZ7kGme+Pd1QXn5LfLMZ5O1WKY8Tiz4TUiL9Iw5F9expXeDeFg9dT2XMACDYwFh/3E2xtM+nCTPyLO9wmDrPgqTVu23irFzDIKB3D5J8JfnkmmpzPr3ZhtPcZp/6gIhdqnuB6raTtOrXnZLo3q8J6ac8HNuijAfVkXy4/dX3KmGk91SBg2777jcWPG2x8PBjAAZfNvl1INjA2mTWb/SQ/gHMbtcljkhjUHOcQmipGMX4f1eLiFelkzwP47Jsb+gbH6XAUM2hxuqJzzmvZzcDSSySITx0PrfWYlnbopu8ZaAhMvTJKSVqO/AGRstGWaqx4hE+Lw/1ADyrrojJNLtvQOx5UHZ/d7sv7YLc5N9be0Jn+glz4I63994p2uJitmfqJLvM7UPis+3O4J+gCKazA3bqis9MWDD+D8xZAD62FQZ4HkYJuYUhEedDu66Z071grpe6zjM8brVDgUl+XelSyI/wNHLl6BkEgyOJ0z6HiIl6f5FSLHhuMTV74fMVeBFU6iQyVDoXDMdfiZv2AT3cdMVzx95EBXKxriqjA=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS9PR01MB820914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(52116014)(376014)(366016)(23010399003)(1800799024)(11063799006)(38350700014)(4143699003)(56012099006)(18002099003)(22082099003)(10067099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UrzHlCRbWQ7VHHR8+3IKlJsg1Jusni4X+Tf8NmYynVO3e48dOPCyxZ0Vs2lt?=
 =?us-ascii?Q?z0ngWqsn/OfeNGKMLaTGpQ/Nh7y5Vz5ZpLFyKZjoS2Z9Ak+oWR8Ax7GlFT+S?=
 =?us-ascii?Q?sfbSx+Z8WB1DqMLm44NF1x8JjsfaDup/4Zx1GX6uBJasNExD2uprdOVjN6rD?=
 =?us-ascii?Q?KG7nY/RwoF+ofwWct7C0cZwkxBqbhhsNzPA2P5yLYrprfr6pkcoHZ0jGDbMi?=
 =?us-ascii?Q?p5vGljdGeUYwSC57nyrVpHSd9+U6Mpthl+lYWT0KMVDV00/+SvyLtXJpof/N?=
 =?us-ascii?Q?hb9jftKgUmYfq5/V/j5+L+6ic1EJd8BrPNaX6UfJ//anamlJDt9nR1HxxYTa?=
 =?us-ascii?Q?36haUuCym2i3ONmSLy3hJsL4VFqqYnvt0lXFI/tGFxxq481BwAScbCXu4XsN?=
 =?us-ascii?Q?9iNZiY53ToZlYVKrrX82dzF1rN/jaEPxtXTfZb7OXdZLbmYQvyPSer1EL5sF?=
 =?us-ascii?Q?IRQPtvMphF+3IdYnF5Zqa/89fb4SM62/8TSpH15NTMptY+kM31lB8wh7jRse?=
 =?us-ascii?Q?GE3Dq/Z/Yj/GKxQzULQRyX2b12rJddRpiD5nUPVI3pcHpTq3CvHACJhG95QY?=
 =?us-ascii?Q?wo9sw/edkO5A6WUNfDh069LSJr/tPuGDNo99NLnxYSNAZbaiNXHVIks0PRsT?=
 =?us-ascii?Q?UjPva9zqrux1kmEt8fWb3vEE7rja69KxmjpcomQznzs8Hx/bLgfKtWmnnBzQ?=
 =?us-ascii?Q?77Te3OB9ADQcuyZf7F7a1Z5Bfzitid4xSkuFvSjWkOC6QQBUD5z7bKegEdtr?=
 =?us-ascii?Q?g2lR2rpABIlFChnuy0fEWNBef3ncXkQjO+pbp/sAmgaRs0oNBGWmx0uYZwgZ?=
 =?us-ascii?Q?BOYYgoIY2qJQxCqMk1RuFFio2ClLzYEEDgH8UKjaa/nr0iJ7aabq0f0LiZuz?=
 =?us-ascii?Q?hRhqEa+3baPjj1BHEdd4GiAFMROs4kk18VkWi0gREiHKyzPJ376T4aHH/fI8?=
 =?us-ascii?Q?phRhAV79ga5tsbC4kxuN/IDix0M7oPv/bXuFuW6I6Bx6nat2m29WlBKmEk6/?=
 =?us-ascii?Q?J8qNb90JL68Ovr3+k/jtazRuGzxgWMO3oTdZ9fFI/T+e8MMtFhTYrtobQPz3?=
 =?us-ascii?Q?DZwSt/BqcuvvqhvJgYBzwEUDQ8GdgAHZwUf4BMI+rrXj1oVMeHqngZY4bAf1?=
 =?us-ascii?Q?jyWiPPqlb0SzF8XiJ81hOLrEiZxUXFJo+Dz0vc+ph2jM6Z6BCs0ET4IfOG5y?=
 =?us-ascii?Q?7+6ZglRBnlQGqt11mDnD67/nW3VHIwK4BcnvWlHFPmlRwZdlbgSpHig4fKRX?=
 =?us-ascii?Q?/q81rGnuQKbPQCOKgFRZYRZgniEtgHNeMIRUwkSg5tODsRRsGsc3rQrVULKD?=
 =?us-ascii?Q?Vn2l/263Fkaab4QWV/TBXKjzjj8B5PLbUZ2OjlERuBjRqovz1PoBs7xyns5s?=
 =?us-ascii?Q?pOvG/UMksjXXD/szXG2Xzf7ElmETsEb6ecWp00jVLifhS1dAsEFWBLPwGfsZ?=
 =?us-ascii?Q?4lg45/gnlxBINPq6QR7bfSbirLKHPJiQhTMY677eAP/HOfw4vZJNg+FPvlTQ?=
 =?us-ascii?Q?v8F9+viOQMEVPmk+zAcL1nlys/EXM+/lr/bMtKJyn3qY6xOKJdCNvgQszQpb?=
 =?us-ascii?Q?+yanpkgSIvbSZHCJ51g6EKMcMEtoExibm6wCJKddY9O/hs/ZL+mE1slOVX+0?=
 =?us-ascii?Q?LmwqYxVfoBJnohkXnkZqCqF2aMl9bsanswSNgeyjrkoiuDIRjvfWAv5CTVbw?=
 =?us-ascii?Q?k1CYI8HEQKPWx7NdQBwuZmZfcbE8dPpDec9OlWlSDh8YYcYajmY+185B28s3?=
 =?us-ascii?Q?p3o3vanwSV+oqpzHus+kZRHeWnp881FBth64Z8QiLLaUAT4KahhR?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d96b994-ccb8-4879-4bba-08df29831008
X-MS-Exchange-CrossTenant-AuthSource: OS9PR01MB820914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2026 23:38:19.7706
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dfy96rc6m6W9BYpy905fbKvLWhuCgPnwOwaRf/cmLXT/nLfxoCHUctYahDIdyvXmlKTMM13jGUKgE1LSwOleTw48338QZhUOitVTV5Ef2L+KomBAVvTup96uIRQlEMEC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB9642
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_163844_746130_DDC7629C 
X-CRM114-Status: UNSURE (   8.49  )
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


Hi Bui, Claudiu

> For rz-ssi: in DMA mode, the driver registers the generic dmaengine
> PCM component, whose .open callback already applies the integer
> PERIODS constraint via snd_dmaengine_pcm_open().
> 
> Could we drop rz_ssi_pcm_open_dma() instead, and keep the return
> value fix only for rz_ssi_pcm_open_pio()?

It seems fine, but I don't know detail of rz-ssi.
Claudiu, what do you think ?

Thank you for your help !!

Best regards
---
Kuninori Morimoto

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
