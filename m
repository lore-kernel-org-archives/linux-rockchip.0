Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC1DCC28D13
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Aug 2022 13:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SvUGjanwDqF4eQPTUdEynfq8SeHzhmpFpZRhKFt1LJ0=; b=FEmZyoAZFJinme
	azgDstYpUYpB8puNGG9qLAoO59j2nQF8XIzhnGIoAVKPWUZ5Nfk9MGvPj6yBQ7fFSTJUuOJZx3LUa
	3fwiiwbGbPIwUXdjshLRvTFezzkRfvVhaGhL0ppdyt4BN9ffAfLoyjKg+izAe7gH0LAKssN6XMIAI
	MdEXCEpqNCc0hKBDGRy/v1SW4pfVBPH90K5mAccd1p/dA50or0bku9H+V7JMIyeKJ/Z5aPV1XykzJ
	93hcMyMY54LEx8W2WDoQ5rjMLPZKPp0spTZA2pK5o+DkPKwIprSZf+6S4GdNk5KnuylrPiV+4SGt0
	dGqVsE8SqoFimpCTVrWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRCy0-00EpaZ-Ny; Thu, 25 Aug 2022 13:32:16 +0000
Received: from mx0b-001ae601.pphosted.com ([67.231.152.168])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRCvp-00EoLU-5g; Thu, 25 Aug 2022 13:30:03 +0000
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 27P6MixA004380;
	Thu, 25 Aug 2022 08:29:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=PODMain02222019;
 bh=gJwGJFOg+PHJxQ8GqbYk+5x4TFGmNBMycRNhoucedzk=;
 b=dOsfC2wk+NU/FTwxvM+o+MtI+cRTYtIl7fNr+UKOqHpdjYsklEgJFYb1uYciDDXGH6nN
 NyIZeYrogjNXqTE6CKdPKtSvHYkGYY14DXr6VXHIFV/OufVxEVY2UM+q7QcKkgXxyHlo
 ioEUtAmWpOqDzw1gg+n6AQLdXvEDLZnNxb++2gdEoXtSZtLecuT8JT2QYcSoSYCAlRbV
 92trEPxPVQitk4PiZBknHGFrBFQKU2+rh9uyb6YBErw2Zpa9W8tMS/515/9eMKVQAwId
 rRy4Mvfs4aBKFEEK59HutkLBtc0Tfvpk0Sr980Gk7blSvvt0LsK+d52gUo8opnSrTcmd sQ== 
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3j5a3ra2a6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Aug 2022 08:29:41 -0500
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.9; Thu, 25 Aug
 2022 08:29:39 -0500
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.2.1118.9 via Frontend
 Transport; Thu, 25 Aug 2022 08:29:39 -0500
Received: from ediswmail.ad.cirrus.com (ediswmail.ad.cirrus.com [198.61.86.93])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 13DC3B0E;
	Thu, 25 Aug 2022 13:29:39 +0000 (UTC)
Date: Thu, 25 Aug 2022 13:29:39 +0000
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: Rob Herring <robh@kernel.org>
CC: Lee Jones <lee@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej
 Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Richard Fitzgerald <rf@opensource.cirrus.com>,
        Tim Harvey
	<tharvey@gateworks.com>,
        Robert Jones <rjones@gateworks.com>,
        Chanwoo Choi
	<cw00.choi@samsung.com>,
        Bartlomiej Zolnierkiewicz
	<b.zolnierkie@samsung.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Fabrice Gasnier
	<fabrice.gasnier@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Maxime Ripard
	<mripard@kernel.org>, - <patches@opensource.cirrus.com>,
        Steve Twiss
	<stwiss.opensource@diasemi.com>,
        Chris Zhong <zyw@rock-chips.com>,
        Zhang Qing
	<zhangqing@rock-chips.com>,
        Alistair Francis <alistair@alistair23.me>,
        Amelie
 Delaunay <amelie.delaunay@foss.st.com>,
        Linus Walleij
	<linus.walleij@linaro.org>,
        Renner Berthing <kernel@esmil.dk>,
        Krzysztof
 Kozlowski <krzk@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-sunxi@lists.linux.dev>,
        <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
Subject: Re: [PATCH] dt-bindings: mfd: Add missing
 (unevaluated|additional)Properties on child nodes
Message-ID: <20220825132939.GO92394@ediswmail.ad.cirrus.com>
References: <20220823145649.3118479-4-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220823145649.3118479-4-robh@kernel.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Proofpoint-GUID: sT2u7Xs6q1g-zrXUkym3ve5E5LQDcjOO
X-Proofpoint-ORIG-GUID: sT2u7Xs6q1g-zrXUkym3ve5E5LQDcjOO
X-Proofpoint-Spam-Reason: safe
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_063001_474154_C348EF01 
X-CRM114-Status: GOOD (  14.54  )
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

On Tue, Aug 23, 2022 at 09:56:35AM -0500, Rob Herring wrote:
> In order to ensure only documented properties are present, node schemas
> must have unevaluatedProperties or additionalProperties set to false
> (typically).
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---

Acked-by: Charles Keepax <ckeepax@opensource.cirrus.com>

Thanks,
Charles

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
