Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D34F1C6FD20
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 09:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AgyBJ6dsIbzwoXbLgoN3MGqRhy0w1dj0tpvy671gv2U=; b=cDcB3y4nLJclbS
	DWbfwwb/AoVt0qZTPfyrHOeEgMnalF5gIvPbFZzjDpTKD5x3z699rGDzVq7qtI2I1wpvWkrQjqGaP
	AK3MEKQFs00QwCW6/mM5uPRSinYuxK2X38q32jjBiQf7VNVZflqqJXPWXZBDo+UqMO9wQ3geY2FrD
	66mAQHKwXte2944dTE5orJjE+a0V4EJOJ2VWR+dIsY1XrJaaBmYcDOGzWzoBHNJoi2Y6gxf9miCU/
	n1fE+Bzq+9akiABPDgFT2L9g37y/O1HwyvFPjDsV0sEZn0WJmx8Forf02CdAcatEy25Rv7Du6bVlI
	988Qm4NT3mPV+vkKiCCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfdrw-0042lq-0E;
	Fri, 24 Mar 2023 09:37:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfdrt-0042kG-1q
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Mar 2023 09:37:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfdrg-0006o0-Qo; Fri, 24 Mar 2023 10:37:40 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfdre-006LkT-J6; Fri, 24 Mar 2023 10:37:38 +0100
Received: from pza by lupine with local (Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1pfdrd-0003FS-Ux; Fri, 24 Mar 2023 10:37:37 +0100
Message-ID: <37565f5ba3252472040da5bd72e30e8060c128a4.camel@pengutronix.de>
Subject: Re: [PATCH] thermal/drivers/rockchip:
 =?ISO-8859-1?Q?use=A0devm=5Freset=5Fcontrol=5F?=
 =?ISO-8859-1?Q?array=5Fget=5Fexclusive=28=29?=
From: Philipp Zabel <p.zabel@pengutronix.de>
To: ye.xingchen@zte.com.cn, rafael@kernel.org
Cc: daniel.lezcano@linaro.org, amitk@kernel.org, rui.zhang@intel.com, 
 heiko@sntech.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,  linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Fri, 24 Mar 2023 10:37:37 +0100
In-Reply-To: <202303241108553006227@zte.com.cn>
References: <202303241108553006227@zte.com.cn>
User-Agent: Evolution 3.38.3-1+deb11u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_023753_608001_1EDF18C1 
X-CRM114-Status: UNSURE (   5.38  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fr, 2023-03-24 at 11:08 +0800, ye.xingchen@zte.com.cn wrote:
> From: Ye Xingchen <ye.xingchen@zte.com.cn>
> 
> Switch devm_reset_control_array_get() to
> devm_reset_control_array_get_exclusive().
> 
> Signed-off-by: Ye Xingchen <ye.xingchen@zte.com.cn>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
