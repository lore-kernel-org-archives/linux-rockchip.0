Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F049BC25B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 14:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mg8qlR9JYZe0idBeyqww/PJqem3yD8h/7dXlKO+15o8=; b=rROfuhoJks8h5R
	hyqzGtf4iYEhY8TFE+9i+2A6X80I+61SYqkdc47YkRM8ZvZN1lkwkei3UoGn+1s199y9mzOtGoudV
	/3b66dI02WfWOTpGDhKgJiUbI9UJx4nNpcj6hQEJhI0XHKf4tY4O/gDfhiOqSH8A3qwvdY/PikKFH
	GsvBtd4DH2/DWyNsg0HV14QKZxx7BDaZMFCh9No/rpYbzmYPm20Rsvj3sZLPH/yJUg4qWT6kfSAfa
	5jxTN1a8nehc4m05LdBGTWKyg+yCOTEg4DPUy1GrLUDiCmKdV8QuuUW2215xbq4w7ug2r19a9RQjV
	LxQqj+I9amHhZBkQZmJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD3iR-0000000AaUe-25Bx;
	Fri, 31 May 2024 14:58:47 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD3i4-0000000AaMK-3qvF;
	Fri, 31 May 2024 14:58:27 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 44V9Swso003313;
	Fri, 31 May 2024 09:58:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=PODMain02222019; bh=hxGvSEqlUm/4Gr1/Y7
	FisaucBu8jAHnTKI/Obg6VI9c=; b=cgV8psTiVp2etlgNlYKT/Xz5UTa72Adwnp
	Mz2p1O9qHqFUPa15bt9k4vOaw0BFh7bPfJ1p4wP2ArTWshr7L1GtTFZWa18VmbEX
	efyhNCr7LGDVTGEkFIdZ0+fQ7lrmWR08B7gFutkTdq4gik7dVbbMx17C3hPbsiqX
	FCCs7+w31Fz3cjSd/vTp8fxiOXlBH0SixpDYUeNAgOZyC/WqXTvNGN/y23eabUCD
	5uteqKIcoNKlQlCxYfRo5l/rbU0dUpjor+W6lYVOnFoOCyW4y/NdaGcm+icIdEzg
	FzQyVFTV5U46MBSRn9vkeAmsXDfnV3tfBs9CiTKaysNGvNIL1WOg==
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3ybdcwwwuu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 31 May 2024 09:58:06 -0500 (CDT)
Received: from ediex02.ad.cirrus.com (198.61.84.81) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Fri, 31 May
 2024 15:58:04 +0100
Received: from ediswmail9.ad.cirrus.com (198.61.86.93) by
 anon-ediex02.ad.cirrus.com (198.61.84.81) with Microsoft SMTP Server id
 15.2.1544.9 via Frontend Transport; Fri, 31 May 2024 15:58:04 +0100
Received: from opensource.cirrus.com (ediswmail9.ad.cirrus.com [198.61.86.93])
	by ediswmail9.ad.cirrus.com (Postfix) with ESMTPS id 05CBE820244;
	Fri, 31 May 2024 14:58:04 +0000 (UTC)
Date: Fri, 31 May 2024 14:58:02 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
CC: Rob Herring <robh@kernel.org>, Weidong Wang <wangweidong.a@awinic.com>,
        Mark Brown <broonie@kernel.org>,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?=
	<u.kleine-koenig@pengutronix.de>,
        Shenghao Ding <shenghao-ding@ti.com>,
        "Marco Felsch" <m.felsch@pengutronix.de>,
        Alper Nebi Yasak
	<alpernebiyasak@gmail.com>,
        Chancel Liu <chancel.liu@nxp.com>,
        "Kuninori
 Morimoto" <kuninori.morimoto.gx@renesas.com>,
        <linux-sound@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <alsa-devel@alsa-project.org>, <patches@opensource.cirrus.com>,
        <linuxppc-dev@lists.ozlabs.org>, <imx@lists.linux.dev>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        "James
 Schulman" <james.schulman@cirrus.com>,
        David Rhodes
	<david.rhodes@cirrus.com>,
        Richard Fitzgerald <rf@opensource.cirrus.com>,
        Kevin Lu <kevin-lu@ti.com>, Baojun Xu <baojun.xu@ti.com>,
        Srinivas Kandagatla
	<srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Shengjiu Wang <shengjiu.wang@gmail.com>,
        Xiubo Li <Xiubo.Lee@gmail.com>, Fabio Estevam <festevam@gmail.com>,
        Nicolin Chen <nicoleotsuka@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Heiko Stuebner
	<heiko@sntech.de>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v1 1/6] ASoC: codecs: Remove unused of_gpio.h
Message-ID: <ZlnleuSae2C6/WRU@opensource.cirrus.com>
References: <20240530230037.1156253-1-andriy.shevchenko@linux.intel.com>
 <20240530230037.1156253-2-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240530230037.1156253-2-andriy.shevchenko@linux.intel.com>
X-Proofpoint-GUID: QOHrrhhsAlL1BvB8LD1NFqOZRJaPkXqI
X-Proofpoint-ORIG-GUID: QOHrrhhsAlL1BvB8LD1NFqOZRJaPkXqI
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_075825_572689_579F7C54 
X-CRM114-Status: GOOD (  11.10  )
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

On Fri, May 31, 2024 at 01:58:47AM +0300, Andy Shevchenko wrote:
> of_gpio.h is deprecated and subject to remove. The drivers in question
> don't use it, simply remove the unused header.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  sound/soc/codecs/cs53l30.c        | 1 -

Reviewed-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
