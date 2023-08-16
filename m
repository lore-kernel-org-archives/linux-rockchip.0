Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36547C001B0
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Aug 2023 08:10:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GGLDOi1R8/ifJMuNrfKTIaDAusUNzvau7xRZdbYn4Y=; b=OfiA466z8b+ymi
	tXdniZHndcqX0d14zPHAJsb3qfHvtvp02Y5n9jz7qHbJwRJN2jJmEYPdarM3ILFCom/xUGUkbJLmh
	xqNaW2rE40i3gYyIp1kElSscEJR55ieEwV70vATAmvRvtDyzwpfu2MVf+BFTw1/J0h2b4N0PPkggz
	2Ekyktft1eZJlF3gXBa74isttaRxtmPUS6W7a+GuauQ0mgEDmMA8L58s5JBYEBfxL3vYYVVo49rlL
	RM9greCcah0NcQijDrSldyKm82zhANrICBoistsMh43FPU9c5ybQAQZLiQmp101lH7SVemkgkpRhZ
	7a4gjFSTV0nKX+Tf5CiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWBbR-003TQ0-1u;
	Wed, 16 Aug 2023 08:10:05 +0000
Received: from mx0a-001ae601.pphosted.com ([67.231.149.25] helo=mx0b-001ae601.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWBbO-003TOX-37;
	Wed, 16 Aug 2023 08:10:04 +0000
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 37G4px6f021725;
	Wed, 16 Aug 2023 03:09:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=PODMain02222019; bh=RtuS4+RPM5H1eJM
	X+4Vl/LFgMJ7LIG0XPxVu8i+mQYU=; b=p6gCqmF5a32jO0Yqo4wAaacnUR4GSqG
	Y95zPgG7IA7/Y/guuFNkunnjFa/Lmij4iQf7nQAZ4xvR+jdk4/8Hy/yhTTs1QepI
	8LxL0nL8jXuARklIL/d3WausNTHxRf0VnyKIu/Jx8o+I6uwrOlZoYqotNoQjEUBG
	6Z8F/cuy86suepUnRX3EZc2Fo0EC4UdUWa0NC+RdaF3KIT07tKsrAvVb/iPTy8Vm
	W5B9b8g07ao/TltFpj+l2ALVQBxXz6W4jshFuBZETiLcuz+t5eOirbi3BeWYN6dE
	TYO4kdptj7qAT15pxIbFYzbYD7QMocO8XrojXEpOP6UWRcTH7BqqSEA==
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3se8kqvnbb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 16 Aug 2023 03:09:36 -0500 (CDT)
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.30; Wed, 16 Aug
 2023 09:09:33 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.2.1118.30 via Frontend
 Transport; Wed, 16 Aug 2023 09:09:33 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id CBBE33575;
	Wed, 16 Aug 2023 08:09:33 +0000 (UTC)
Date: Wed, 16 Aug 2023 08:09:33 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
CC: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Heiko
 Stuebner <heiko@sntech.de>, <alsa-devel@alsa-project.org>,
        <linux-kernel@vger.kernel.org>, <patches@opensource.cirrus.com>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH RESEND 2/3] ASoC: codecs: wm8904: Fix
 Wvoid-pointer-to-enum-cast warning
Message-ID: <20230816080933.GA103419@ediswmail.ad.cirrus.com>
References: <20230815143204.379708-1-krzysztof.kozlowski@linaro.org>
 <20230815143204.379708-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230815143204.379708-2-krzysztof.kozlowski@linaro.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-ORIG-GUID: eNCEnLsDOM7DPowp6ucywe6coIrIFr1T
X-Proofpoint-GUID: eNCEnLsDOM7DPowp6ucywe6coIrIFr1T
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_011003_102650_38B29CDC 
X-CRM114-Status: GOOD (  11.42  )
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

On Tue, Aug 15, 2023 at 04:32:03PM +0200, Krzysztof Kozlowski wrote:
> 'devtype' is an enum, thus cast of pointer on 64-bit compile test with
> W=1 causes:
> 
>   wm8904.c:2205:21: error: cast to smaller integer type 'enum wm8904_type' from 'const void *' [-Werror,-Wvoid-pointer-to-enum-cast]
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
