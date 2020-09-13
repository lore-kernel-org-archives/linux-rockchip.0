Return-Path: <SRS0=BmYq=CW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C7EAC43461
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2020 02:34:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2D6EE2087C
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Sep 2020 02:34:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="K3fgo1AP";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDe4hkjv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2D6EE2087C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=31nHNMzfrQWBvvxo0PC8VQN4meYQ4lHcHBNtr/jBTaM=; b=K3fgo1APoy6grBqb1b+jFUOLM
	cB446OB9sPoBddUC52R27a2AQTYoRR03t40mZW1dirdBtOlyy192pOMsr+nEBl7NAW5hoftAhhhO7
	nLpuZ7MCqm/30TGD+d/cRsbPvjuPY4I28+o04pA3hOmIwQd2GL88UVXC0CB8UkYlR0aSr9ILVGpJm
	lfjArhpMxp3JxbKnBYa7If3p4mQ5XyGNYb5EP2es3LbmTltWv9D+JM2uMpsJSofrm/B7CUnQYKI01
	oobE9YYBDtLEPuDyGqBZrIySUG+istb7I2HOF26nzd3bMvJGOHV7hZvzfZZfE8EZDUYN31yXcwn6L
	KR9rr1dfg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kHHqs-0004AT-5N; Sun, 13 Sep 2020 02:34:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHHqo-00049c-9L; Sun, 13 Sep 2020 02:34:46 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3BEB120731;
 Sun, 13 Sep 2020 02:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599964485;
 bh=2ymwe7/Fe4Zy8Lkjoq3IVYD2XyRVCNjvHlvDPFnhmnE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KDe4hkjvpxKAbZE1bKFpNvnqUgS7lLooLYDkt/kFtf2Mw/+033743RTY+ZW3wwST/
 5WL0poYf/lJiTyzV2/QnedpiZ9c9Lk1VLAU979555lxhtVTyUb0yXTSM6vfEoFZMb+
 MlO2KrVG1IiVLyKryfsSAvEQ6R9ZbUDHZih3fQUc=
Date: Sun, 13 Sep 2020 10:34:31 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 8/8] arm64: dts: imx8mm-var-som-symphony: Drop unused
 gpioledgrp
Message-ID: <20200913023431.GI25109@dragon>
References: <20200908150241.5771-1-krzk@kernel.org>
 <20200908150241.5771-8-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200908150241.5771-8-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200912_223446_396974_BBD11DD8 
X-CRM114-Status: GOOD (  11.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Kever Yang <kever.yang@rock-chips.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Robin Gong <yibin.gong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Adam Ford <aford173@gmail.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Alifer Moraes <alifer.wsdm@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Vitor Massaru Iha <vitor@massaru.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Sep 08, 2020 at 05:02:41PM +0200, Krzysztof Kozlowski wrote:
> The gpioledgrp in iomux is not used, so it can be dropped.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Applied, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
