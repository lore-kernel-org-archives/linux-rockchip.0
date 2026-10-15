Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6998ACC6B1C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 03:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:
	In-Reply-To:Subject:To:From:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WGO5S4Do1L1njplDUYnC7RGXAHOel1CP5HWGX7SuNWs=; b=dNblKhkTUc4IMBr/5bx9Gz4BsP
	kTQlPI+gCPbvyFwTe6t6+ws1gbz3AG7kNp8Kv/CgcN7/qVZ9G3LWunh6SXcp+tDX3/NnBofBfB2+U
	bNUSRWOIF+EIdnizyuO29lgqvs/LVG00QXUpPuXpRG95ZHKNPNuz6n/GVxNXWWfcc+SZlIsr3rmTW
	sIRPx+4UdEPYtcwQikKahj4hTXZDHtKT0qpsx60g8gZyHPLAcyQ2nRr8XDQvWN4l8SNbFb6MBOIq8
	uIQqB71GHWlQy0yeyNihcZXl2PuVBRFnoOF06X0o5asNdJt9+o8rGWAPQg2ybWNbuzO/AVKLGTYw5
	DNl/aVVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHCZV-0000000Glkm-1DH8;
	Thu, 15 Oct 2026 03:56:01 +0000
Received: from mail-japanwestazlp170100003.outbound.protection.outlook.com ([2a01:111:f403:c407::3] helo=OS0P286CU011.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHCZQ-0000000GlkD-24mM;
	Thu, 15 Oct 2026 03:55:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FfF7rqipWK5EwGyUQNAf0qIDenlTrT0/6vcDXnFU2BXQJfZkSuVoqvBabVbfA843yXb5yUfl9wttT63Pdm2t8Y0sjP+xARRaElejHPcN78eyEC0YiI2oNhi4xULJwcOTCVPVxqR2Sp0eWMuQdwwyustpODyJ8ILlG4va7NcIL/DAjzR/acCogWa9/shvji0T19xygN/6D9Ky63cWKtbFKTCcwqjOZmdF41zjt739xytX22bHkY8jmV9wTiszFFnSdnwlmTfJSdb35vFijII4hp8GLZvQAveZilG8R3NY/EHe4y01helLx0+VRQtBvO3YNBTNIBG93RASbRPXZqFnUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KZKG7VedI2F519QjQdrOyP6oaqPlPsfvKP+aeqJt8pE=;
 b=ASMOEEhkUxoJceF8Wj/AHVHCc6J/GGRoZ21+WZNHvnda2ofGBswjesmf4D+CnuuKPJkxcUXIxFiOMtWWOEJbehowJU0g9KzokLZZrrDycKcBRA/u1HzrBoh4D8Rwy9ISCcfMzUYWOFOjlprB4ewzqGAiwmKCei9+AY8m5povFL5HKbF/TJHR9kQWyNYqN8G1hL8bt9geuWCSUos805EvIp/1mobBFePujjxDU7neEqJCRlZ5wJbix4yD/vfJM65nph9wvAwdakvn9eNy9454HtIAs93EZkWfweTWMLsqIDxTA0hj3Mi8mAcv5eK3dXOn+xXaAK8vpEQw+Ld/5ZJ5OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=renesas.com; dmarc=pass action=none header.from=renesas.com;
 dkim=pass header.d=renesas.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=renesas.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KZKG7VedI2F519QjQdrOyP6oaqPlPsfvKP+aeqJt8pE=;
 b=PvT4CPoSjWtD2SDUgQ959gBp7fwM8LuMVL8EQctTbjFK+9Zl/GvyStG/b/9tbsvHBWJzrSDzn9NzKdLyzlFTxKTlzsVpCD8IFyp88wp9ZQ3B0FlnUvPiPANS8mUhUrDyFGHOxU/gSYOyU8OFscAR0v0JCXo1GznNZbh2gqFe4bg=
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=renesas.com;
Received: from OS9PR01MB820914.jpnprd01.prod.outlook.com
 (2603:1096:604:50f::14) by OSCPR01MB12498.jpnprd01.prod.outlook.com
 (2603:1096:604:329::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.522.13; Thu, 15 Oct
 2026 03:55:38 +0000
Received: from OS9PR01MB820914.jpnprd01.prod.outlook.com
 ([fe80::12e4:c507:3730:2294]) by OS9PR01MB820914.jpnprd01.prod.outlook.com
 ([fe80::12e4:c507:3730:2294%6]) with mapi id 15.21.0496.021; Thu, 15 Oct 2026
 03:55:37 +0000
Message-ID: <874iend3d3.wl-kuninori.morimoto.gx@renesas.com>
From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To: phucduc.bui@gmail.com
Subject: Re: [PATCH v2 20/25] ASoC: renesas: fsi: Ensure the component is marked as opened on success
In-Reply-To: <20261015014324.5569-21-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
	<20261015014324.5569-21-phucduc.bui@gmail.com>
User-Agent: Wanderlust/2.15.9 Emacs/30.2 Mule/6.0
Date: Thu, 15 Oct 2026 03:55:37 +0000
X-ClientProxiedBy: TY4P286CA0126.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:37c::19) To OS9PR01MB820914.jpnprd01.prod.outlook.com
 (2603:1096:604:50f::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: OS9PR01MB820914:EE_|OSCPR01MB12498:EE_
X-MS-Office365-Filtering-Correlation-Id: ace0e022-a42d-46de-8b4b-08df2a702c49
X-LD-Processed: 53d82571-da19-47e4-9cb4-625a166a4a2a,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|23010399003|1800799024|376014|366016|52116014|7416014|10067099003|18002099003|22082099003|11063799006|4143699003|261009223027099003|38350700014|56012099006;
X-Microsoft-Antispam-Message-Info: z6R8T3o7ZeAH5eXF+zm+E8UZixXFytr5hrsAV+BvPmkqiJ0yEWeMzonFLUq5W9/3Oh0HojE2KVfk9/Hwz5PoEzjd/hcaCeFXmwi7iNSK0hIriu919ByvwdzzMyAx00U389G4j9Qs959F/DAqCaqIdjuXXDXRPtgvRu3zD75/yNs/Y/kVbXtDddax8/oYhOn7jRPPLcexh1mc40CigqeEEcYJs+lkguibRQhHdf79+M5cXB/OEvt2MIo5wMqeIbXRW+PLLySUVP1+qZNGmTGDa2CrxWezYZRP28fFGf6sv/kE06yrjU/iBNqLFaQ7OoyKtnorp/sfykTAG6bxrJVVYsa80ZsOCj2i3dhug8qt7GGOm2zYP58QmuHUpdnmureWuz75bqSeVDA81mTryZSlWFZ1GyVjYSODZ4a2l0F6sFbcRZIYVMy+QNZmTkHvwU6aIvlBkd5NtJBE25rD1Cnjrx8afQxNJFfLm8rGdHKptB/mIXE89pVJBpHqNK7EKN7uj0Bmn5qldZx3b29pXlgXZKuotz0i65OvVThUTQiJYgZNf3504RgwkXKaB0pAimIGH2U8aTerXitVWB7c4WBCWVIv+FnsS+GcZLwP6X+Lf7JDqTWnuutGK/8XUx+aDoWXhc78zfZXLt4zrZoGojoRsf+r1xj4sTVIgxneUuh3G+VlTInDtqqcickNbSPC7Pv1RalDOLG8dwxkz4v0W5HRA71j7aYyCf70HgNcJHO+RjQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OS9PR01MB820914.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(1800799024)(376014)(366016)(52116014)(7416014)(10067099003)(18002099003)(22082099003)(11063799006)(4143699003)(261009223027099003)(38350700014)(56012099006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3vNs7Te4KDwOFb4mEDDyLjbeE2faePT7qpSdXx6iWzYvRs6dbd4xOZu8rRpH?=
 =?us-ascii?Q?b8v6X7yVNJJBppqFEqo6oHcZM1/Yg2DsHee89+wHHHdE6yY7JLCnBqipSw5b?=
 =?us-ascii?Q?zqv2YC37W8II2M54DhfPNDukOE1zfFJWie7HjjQI3Ff9UVQgifb2KCt8kKJY?=
 =?us-ascii?Q?rwR7BmJrUMVNI+BLVSBrM/yXW6zxtD6KZ0rqWNIdzNBP1gFUq9CcPrVaOA2F?=
 =?us-ascii?Q?j4QPCB+PsEWdrp/Isuw1r0KcJZXLVD0l6ltNuSVdPtCZW+zh3MzQJWZqGm+f?=
 =?us-ascii?Q?rXGpi9+pMCEdLVx10qchSRdjP9cHjFICkCCdFVnuSHbSeM3qj8dkTkdIer1P?=
 =?us-ascii?Q?sq4XPZUihBk5r1G6aOruN3w+1UCV7OJfrzMkgeuoPNcXDe6I701sirvuCBfP?=
 =?us-ascii?Q?zZ+rHG9BMpzwusgBXGHRXTttaMjjxJ/qg7/zpXkjMFUAINhdnEFv1MUmYT4y?=
 =?us-ascii?Q?Jj3dTsRjnCzB7GONB86ST6CIOFqj1Mx4RCfuB9aO0jfLOaLOXxLtC2ZuAPbn?=
 =?us-ascii?Q?KuaAv1SPu0lIma6iABJeOb6TMO2hFl7o5AiD+TQvrcHWnA+L7B+McvKEt1+n?=
 =?us-ascii?Q?S9AmtTqUdXrP4KCzGSzFibDyz+URxObthhtAV/Qjo2JcTGmaJyLsFjjB84DA?=
 =?us-ascii?Q?K0TR4fzpcUnPL7D9JOc27ry5/QzX/d4/zYWBc/yIyezMiMv4AZOHdsSaxi9x?=
 =?us-ascii?Q?Q8P1eQUlXsplvTjOZK6xJcvnvcpVUweNS8Gl0bLV/NawuAWL7Fcme41RGuwn?=
 =?us-ascii?Q?WEJxOWYV6rvU7BJ/Xar7Y5s5raVPKApzmaDHLasiZ97odDwDTXMEDp4Y56ts?=
 =?us-ascii?Q?TctElz6eRah6wX6uTqYcutvz8V9gcXTr7wftCtE3BfFwb1ucbyqurAYebdHW?=
 =?us-ascii?Q?+Fk07K4KkEL4Xlgxcdv1nFTSeSC9uPzfJPARSZ2fVwRztWcTv5NWnYM/eiD7?=
 =?us-ascii?Q?i8mrlkwTLcQYpXPH8jTWU505sNR2+EYpTqLb9+rZv1JI6stcTsJtRMRp7L+Y?=
 =?us-ascii?Q?b9vhfeLSl/3RvFBn6CA38hi7pyL6UAVL96v9uCtb2yngfvDbMSGNKeJRVful?=
 =?us-ascii?Q?NMJwjS+gUadoifLTho7i4jMZ9vhs4psh+y3SdwiSGaRXHAN+F2qHiXU4eKPi?=
 =?us-ascii?Q?1UIQVM3VkbQhsZkMHVoEvHrEDtdYHWUI+Htcqh5s0UbX2ZMpdZKG3APBe97M?=
 =?us-ascii?Q?96TAayjCA0wEgWGEubMJQ2/aYS1hfJLn9qbMS2mb4zeWTWcmpDIKbOWN8pfV?=
 =?us-ascii?Q?ZQAi1kuuwu7yBNxE3or+fzieq4eL1zkdoFdOjk/BrVqFRE38A+5qns15ZRs5?=
 =?us-ascii?Q?uwb+98OjzAjFW5LyYX6zKt1vLWLtRzZ2Vbzpgz3xivMB54l75d/mQ+rvwnxp?=
 =?us-ascii?Q?DzEfWIgKnOUHB5MBx1fyrd/Op5b0nD/+h/Bit9vuRgFHwfx5Pt99W8qftPXC?=
 =?us-ascii?Q?11tzYFj1hWuG4SecA2J02UOjhEHmpAhho++J6iA/vjK6x0TLE9BfaHvaYMzT?=
 =?us-ascii?Q?jEH4/pwySbiW7fmtuqLn9X0NXN9pv89heAdH8dfWAH72t8cjgyzD8KZXOX5T?=
 =?us-ascii?Q?QiH7YCdQJpfijsAI5tpmzxXP9oZ0zEhkLExJWVSNlp4Ph7je3jhQu+myGXC1?=
 =?us-ascii?Q?Pb3qsBWhVY7j5Yb4ZL4nElcL78wbrZXsubJvZ9eLLIJEeYdSMqhB0GUiR1EA?=
 =?us-ascii?Q?4M2p1fqqKrCPazOJ+tO4owuahR7OGGGMfA1u7MQ0ulU79t8xN/se3/p1C0lg?=
 =?us-ascii?Q?QgZoB4FH0Tld6Cg6NlzwHt7MRBmcj4UjcSyP9uZJFPR8bTPP9506?=
X-OriginatorOrg: renesas.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ace0e022-a42d-46de-8b4b-08df2a702c49
X-MS-Exchange-CrossTenant-AuthSource: OS9PR01MB820914.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2026 03:55:37.8728
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 53d82571-da19-47e4-9cb4-625a166a4a2a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cIePopiuKVEKWDMPgqz/a5Fv8NC0WbzNeIxBcKelsGxo10QUd1jQ0PJS9O2ZI8lxosfaczu9y619JBuDafIWzD9fzMMCQQuInJmpSdSnbzGBKYttNmmJTVoaRHA5jGlI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSCPR01MB12498
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_205556_552028_5256A323 
X-CRM114-Status: UNSURE (   8.63  )
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

> snd_pcm_hw_constraint_integer() may return 1, which is then returned
> from fsi_pcm_open(). ASoC only marks the component as opened when
> .open() returns 0.
> 
> This currently has no functional impact, as fsi_soc_component has no
> .close() callback. Still, return 0 explicitly on success to
> match what ASoC expects and ensure the component is correctly marked
> as opened.
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
