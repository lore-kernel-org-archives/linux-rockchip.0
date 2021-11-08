Return-Path: <SRS0=7z7M=P3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D06D8C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 09:35:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 95FB861215
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Nov 2021 09:35:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 95FB861215
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3kgh4DiGL9ju7Av15VC1UgKHSF34A8aqxJT6GAxEU4=; b=ot82x9S2EEMmuX
	21A9SYGFa9F5zby+WRYvLMaiq51k77nVDc54rZY3qO9ng5r0/xrdVUGQduped+eEd6XONKiGmFRHe
	OvC8RlE/Gd/N7ElFMJhJz45mRUD5rqtaZnuC8Pzi3jw554n7JHPRL2Pq+1oQiNODO8hHQTFissRdJ
	zRgchVzcwGastT6F9S3q6Zj1/aginNjXktSDMex1wjq4eES9WUMmPA5eklwLNmt57hvVXtYjlHYUH
	X4oBrMopj0EUH0g5B4iwXvG1gD++G3EM2e5cBgIQsVjAwdg4Rq78xouW5of0tLfFSTGVp0hVRxK5k
	5E2j9Tt86e5INxptYsdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mk13j-00FtW1-0T; Mon, 08 Nov 2021 09:35:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mk13e-00FtTU-Jf
 for linux-rockchip@lists.infradead.org; Mon, 08 Nov 2021 09:35:21 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1mk13X-00085V-CC; Mon, 08 Nov 2021 10:35:11 +0100
Received: from pza by lupine with local (Exim 4.94.2)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1mk13V-0003Jc-1w; Mon, 08 Nov 2021 10:35:09 +0100
Message-ID: <a2a8cca55604755458a2b5daec59290b239a142a.camel@pengutronix.de>
Subject: Re: [PATCH v3 2/3] phy/rockchip: add naneng combo phy for RK3568
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, heiko@sntech.de, 
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, vkoul@kernel.org,
 michael.riesch@wolfvision.net,  linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com,  cl@rock-chips.com
Date: Mon, 08 Nov 2021 10:35:09 +0100
In-Reply-To: <20211025080632.32063-3-yifeng.zhao@rock-chips.com>
References: <20211025080632.32063-1-yifeng.zhao@rock-chips.com>
 <20211025080632.32063-3-yifeng.zhao@rock-chips.com>
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211108_013518_685070_75378734 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, 2021-10-25 at 16:06 +0800, Yifeng Zhao wrote:
> This patch implements a combo phy driver for Rockchip SoCs
> with NaNeng IP block. This phy can be used as pcie-phy, usb3-phy,
> sata-phy or sgmii-phy.
> 
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> ---
> 
> Changes in v3:
> - Using api devm_reset_control_get_optional_exclusive and dev_err_probe

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
