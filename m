Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66A1FCA0FF9
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 09:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/Ql4Wjjwu56J6U4Yr/xRjv3XrQtaHD2VR4Tah5Ce7o=; b=GrlDUavQs3gIsY
	WDEL9OJWjFh2vCEqWGx4ftvag5N/pZeS7p2HXpWEKyCajlq/B7sdooA6L/nrFDbXtYGtoF7SZBrn6
	lX7/RKxQthlB/HoABJpTrLMGUxWQv6Fup+BBVMzVy1awPf+CAkoBoKOvglId7MWmQm7Dmv+TAit+n
	qM08+oEW19+RUTT/VwDLFU5sX+iMW+JctjtJk0en99uJi82SdzB8kEhVP5q0629MTEWebO/km6Kl8
	iG0OClj9xQnM3xWdQBj+Aeb/e8/0X6YaVHICrh6hCEaGIN8WetJBUv2Mcw8qQ4UttgN2RxWDMJny/
	pcHsZ4z9SKfrB1xs0t1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urvQb-000000059yc-3ztU;
	Fri, 29 Aug 2025 09:29:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uruoC-000000051xz-3AQ2
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Aug 2025 08:50:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uruo3-0001g1-MZ; Fri, 29 Aug 2025 10:49:59 +0200
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uruo2-002hPH-1W;
	Fri, 29 Aug 2025 10:49:58 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1uruo2-0009f3-1D;
	Fri, 29 Aug 2025 10:49:58 +0200
Message-ID: <a1734ee3296add23e8d61f0ed666bb46bd5717f5.camel@pengutronix.de>
Subject: Re: [PATCH] media: verisilicon: imx8m: Use the default Hantro G1
 irq handler
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Paul Kocialkowski <paulk@sys-base.io>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Date: Fri, 29 Aug 2025 10:49:58 +0200
In-Reply-To: <20250828135820.1859316-1-paulk@sys-base.io>
References: <20250828135820.1859316-1-paulk@sys-base.io>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250829_015008_790931_70DEDCA9 
X-CRM114-Status: UNSURE (   6.90  )
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

On Do, 2025-08-28 at 15:58 +0200, Paul Kocialkowski wrote:
> The existing imx8m_vpu_g1_irq implementation is an exact copy of the
> default hantro_g1_irq one. Switch over to it instead of keeping a
> duplicated implementation.
> 
> Signed-off-by: Paul Kocialkowski <paulk@sys-base.io>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
