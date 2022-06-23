Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0C5BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 09:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RLDMEvYkK3CUPDSwycKYnHSfmkRl9l4U+FugSIZCsGk=; b=Gr8Q++bJeOcXDt
	5uwN8NdXQjAwUb6bmcBZkFq/EHSnzHgIEOoqCT11wPgfO62/cy6xasIv/CqgCVbji01g8yR2pzmHn
	yxS4QXECK4BQVLWircN/Z/iru3o/kGXr5t66GMdwqEY9yeafc75Ou6J5KXY/9HzJTceDfAjVU8NGf
	9yuDZ37Bot3b9dOU6ouH7gfRamsUaxITDrCJL0Ul46iWYe/D9OfgH38yK2YYa2yL6PJ1GMU7xq65d
	n/aatjlaf2dyLxOHK/+VHkeKRMEZRnPCdWvbZ8kH7PlzXX/wXr6EJQGgSrqr72peUcXVqdKs1QIeQ
	rh0Cnk0bu4b42/ZyqlBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4JKb-00EMOh-Jx; Thu, 23 Jun 2022 09:40:57 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4JKY-00EMMm-E1; Thu, 23 Jun 2022 09:40:55 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 25N7fLsF004327;
	Thu, 23 Jun 2022 04:39:52 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=i32Dkqu6yqHdJkz3oPGSblt6FxDAn2yx5mHso4uT6jY=;
 b=nIE3n9kDrMoH4e/LAawz+RzUC2VoQWASFOauN4tM5A1H8JMc8tTXY2cVBGOwMqIrQM6K
 STuS8s6JFijovnai1W2MNLfVUjobxH6CViDtDBBPJUDXBmHrZJCFNVYS9HIj6iGziz+r
 VnKUwYrgOKvFYjTYgJ7g8SHsa+TlwYy2/uQ+7BQ2M5FiknT1aLaBacYmzVf4gZibj1KF
 +x6MXDk3uwUf66jBJA5uO/c3MJHdGz1TvkpWGO+3eq+mJ5MeXOg5XvUPhCzW0RdI3EaW
 UeEhW8dhlBiL29hjgLxwPY+qxBlb9eORf5BQNruocf4tI6GNJ6GP/Mzs9siqoEV7xXtG sA== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3gsb4p6jm6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 23 Jun 2022 04:39:52 -0500
Received: from EDIEX01.ad.cirrus.com (198.61.84.80) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.28; Thu, 23 Jun
 2022 10:39:51 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by EDIEX01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.1.2375.28 via Frontend
 Transport; Thu, 23 Jun 2022 10:39:51 +0100
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 1797D11D1;
	Thu, 23 Jun 2022 09:39:51 +0000 (UTC)
Date: Thu, 23 Jun 2022 09:39:51 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: kernel test robot <lkp@intel.com>
CC: <broonie@kernel.org>, <kbuild-all@lists.01.org>, <lgirdwood@gmail.com>,
        <kuninori.morimoto.gx@renesas.com>, <mripard@kernel.org>,
        <airlied@linux.ie>, <daniel@ffwll.ch>, <vkoul@kernel.org>,
        <nicolas.ferre@microchip.com>, <nsaenz@kernel.org>,
        <shawnguo@kernel.org>, <linux-imx@nxp.com>,
        <cezary.rojewski@intel.com>, <pierre-louis.bossart@linux.intel.com>,
        <linux-mips@vger.kernel.org>, <linux-amlogic@lists.infradead.org>,
        <daniel@zonque.org>, <srinivas.kandagatla@linaro.org>,
        <linux-rockchip@lists.infradead.org>, <krzk@kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-sunxi@lists.linux.dev>, <linux-tegra@vger.kernel.org>,
        <linux-omap@vger.kernel.org>, <linux-xtensa@linux-xtensa.org>,
        <peter.ujfalusi@gmail.com>, <jarkko.nikula@bitmer.com>,
        <heiko@sntech.de>, <jbrunet@baylibre.com>, <kernel@pengutronix.de>,
        <alsa-devel@alsa-project.org>
Subject: Re: [PATCH 27/96] ASoC: au1x: Migrate to new style legacy DAI naming
 flag
Message-ID: <20220623093951.GG38351@ediswmail.ad.cirrus.com>
References: <20220616143429.1324494-28-ckeepax@opensource.cirrus.com>
 <202206230910.wUXKFP3z-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202206230910.wUXKFP3z-lkp@intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-GUID: ngGGSOCW3HD7Nqksfbnzki1Fx-Dv9wmS
X-Proofpoint-ORIG-GUID: ngGGSOCW3HD7Nqksfbnzki1Fx-Dv9wmS
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_024054_672337_E92AA8A6 
X-CRM114-Status: GOOD (  12.44  )
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

On Thu, Jun 23, 2022 at 09:59:06AM +0800, kernel test robot wrote:
> Hi Charles,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on broonie-sound/for-next]
> >> sound/soc/au1x/ac97c.c:227:10: error: 'const struct snd_soc_component_driver' has no member named 'legacy_dai_name'; did you mean 'legacy_dai_naming'?
>      227 |         .legacy_dai_name        = 1,
>          |          ^~~~~~~~~~~~~~~
>          |          legacy_dai_naming

Hmm... apologies for this not sure how that snuck through my
build testing, must have somehow missed this one.

Mark do you want me to send a v2 for the whole series? Or given
the size would it be better to just resend this patch?

Thanks,
Charles

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
