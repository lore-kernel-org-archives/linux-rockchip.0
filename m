Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24503C433E6
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 13:57:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4047065100
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 13:57:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4047065100
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dm7o2K5nNsy6rk5XKuc0AWrrwTZ9Mp3+fR6AKi1UUqc=; b=EQebwHQnzq+VtgKJPtB5d8lv3
	Y2s+fJCrLp/gRHUbUh5xPaewAYITwOgjshS0gVrhXYH/Ncty9V5uj/sEyPB4bmYM5nTMQiQaQmbQc
	CYd+vSZ1fnWEnxwICKP+NoDv+3Df7L8qWy/TDxXqucmwpfSzTujbx/b3dIOjpxqhwWt5Owjnvl4Db
	3PKR0+4wHQpDtphL9k3IN2NT9eciJ3LGxGrZXfimMT8aZiC1ulfahJ59sAF2HLZVyHEquXp2P9pRX
	1Rw1q4b/rWAW2se7yzws86LCWrLdy+XGmbGUXRI9Y8tsnJEuiafAVnlMYt+4hHNG2LMrsyAFaAJuO
	7FLrDRFEQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJGNp-0002ek-FC; Mon, 08 Mar 2021 13:57:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJGNj-0002Zi-0G
 for linux-rockchip@lists.infradead.org; Mon, 08 Mar 2021 13:57:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lJGNd-0006hW-TY; Mon, 08 Mar 2021 14:57:05 +0100
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lJGNc-0000Su-NW; Mon, 08 Mar 2021 14:57:04 +0100
Date: Mon, 8 Mar 2021 14:57:04 +0100
From: Philipp Zabel <pza@pengutronix.de>
To: Emil Velikov <emil.l.velikov@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 4/7] media: hantro: imx: remove unused include
Message-ID: <20210308135704.GB18168@pengutronix.de>
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
 <20210305183924.1754026-5-emil.l.velikov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305183924.1754026-5-emil.l.velikov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:54:05 up 18 days, 17:17, 83 users,  load average: 0.02, 0.11, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_135711_322355_BF781D33 
X-CRM114-Status: GOOD (  12.07  )
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

Hi Emil,

On Fri, Mar 05, 2021 at 06:39:21PM +0000, Emil Velikov wrote:
> From: Emil Velikov <emil.velikov@collabora.com>
> 
> The current imx8 code does not use the jpeg encoder. Remove the
> unnecessary include.
> 
> Cc: Ezequiel Garcia <ezequiel@collabora.com>
> Cc: Philipp Zabel <p.zabel@pengutronix.de>
> Cc: linux-media@vger.kernel.org
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Emil Velikov <emil.velikov@collabora.com>

thank you, patches 2-4 could be tagged

Fixes: 8e4aaa687863 ("media: hantro: add initial i.MX8MQ support")
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
