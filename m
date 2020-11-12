Return-Path: <SRS0=8xFb=ES=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3534EC2D0E4
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 21:23:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8DF49216C4
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2020 21:23:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zaIwoMGw"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8DF49216C4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ravnborg.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M3JRJEE5l5jhUuQlKI5XQSbGiy+kz/LClyqkHn1EOXA=; b=zaIwoMGwTeY7TAYOLfnRjqHsZ
	iThdDQplrWnMGPI3idzVq+q56s6VNJQ++5H9Qa3cI3TZTiJ/se7tR2ze2g0LgHmrxSbfd5UmaD832
	K/T0TbnNizrWNT+JiD4kyE/sFNCa9pLdqmeeAJJTtVfZNXTVfxt02+WpTTb9TPJJuTbkUhwINKk5w
	CBdO/b18HDetpo9dh6Vyn8hTVSTCneepvuwBAuOrIDbgu+Jy/CZPBuLsK6V2z+UBoS3sohRIltO8q
	OOMkkif3sqcTsUTrlwqp6/hZbONMAC95BaikyXSrfYFKa/5uWhbSExuGYLq20TCY663q1ZBFShSOm
	eb6/h37PA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kdK3k-00032w-Vq; Thu, 12 Nov 2020 21:23:13 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdK3f-00030N-Cz; Thu, 12 Nov 2020 21:23:09 +0000
Received: from ravnborg.org (unknown [188.228.123.71])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 523C02001E;
 Thu, 12 Nov 2020 22:22:56 +0100 (CET)
Date: Thu, 12 Nov 2020 22:22:54 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Jonathan Liu <net147@gmail.com>
Subject: Re: [PATCH] drm: bridge: dw-hdmi: Avoid resetting force in the
 detect function
Message-ID: <20201112212254.GA3361340@ravnborg.org>
References: <20201031081747.372599-1-net147@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201031081747.372599-1-net147@gmail.com>
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VbvZwmh9 c=1 sm=1 tr=0
 a=S6zTFyMACwkrwXSdXUNehg==:117 a=S6zTFyMACwkrwXSdXUNehg==:17
 a=kj9zAlcOel0A:10 a=pGLkceISAAAA:8 a=iiUPO-3NZFt9cYWtpHIA:9
 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201112_162307_576044_2C4B08BA 
X-CRM114-Status: GOOD (  12.93  )
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
Cc: Fabio Estevam <fabio.estevam@freescale.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>, Liu Ying <victor.liu@nxp.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jonathan
On Sat, Oct 31, 2020 at 07:17:47PM +1100, Jonathan Liu wrote:
> It has been observed that resetting force in the detect function can
> result in the PHY being powered down in response to hot-plug detect
> being asserted, even when the HDMI connector is forced on.
> 
> Enabling debug messages and adding a call to dump_stack() in
> dw_hdmi_phy_power_off() shows the following in dmesg:
> [  160.637413] dwhdmi-rockchip ff940000.hdmi: EVENT=plugin
> [  160.637433] dwhdmi-rockchip ff940000.hdmi: PHY powered down in 0 iterations
> 
> Call trace:
> dw_hdmi_phy_power_off
> dw_hdmi_phy_disable
> dw_hdmi_update_power
> dw_hdmi_detect
> dw_hdmi_connector_detect
> drm_helper_probe_detect_ctx
> drm_helper_hpd_irq_event
> dw_hdmi_irq
> irq_thread_fn
> irq_thread
> kthread
> ret_from_fork
> 
> Fixes: 381f05a7a842 ("drm: bridge/dw_hdmi: add connector mode forcing")
> Signed-off-by: Jonathan Liu <net147@gmail.com>

Applied to drm-misc-fixes.

	Sam

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
