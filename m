Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5637C61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 16:10:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xri0u7r/qPLu27g+JIUyvK1vkKKDRcpgxY3u50MaqDo=; b=fstTmzUMx8bWiN
	0fTTl8KNiMR/rOgasnoxgqMTp6MmRhrBMdKKSCXN1fORXYwLBPNf5obliR5yhF/PnDKRtL2hLuurM
	a+/L4nhMwb2Vj60bbUAOw3r5mNoZ8RvZ85+pc+HJFr6+XImMduWS2psK302Cg9SvX4zg7paFTRCEZ
	HXlg+187uOOtlWu5u0tJDdaFW/gRz07tj1oWxQy1ReDn5DjPeyZaxG/9JUc5dutTpJQ1+gJA/fPNd
	jLKbzbGxDMlCeI4FVbBoNXwAG7AwWc2+lBdfl+aeVCWKk8VJGXvXyILCTOv/p2HjhftbUHHq4JZ7i
	SNMIwjcb9IYtQ8jRIZZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A0f-000000007qQ-0PU5;
	Thu, 03 Sep 2026 16:09:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2A0c-000000007pz-35GD
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 16:09:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0F2j0b3N5nABk+G76sOWdFQNdQLNUEsOfL8WiePX1eU=; b=f62wACnsBJRZajkD5HjKr+au6x
	g/J41+y8dRpjPLFdC3+6o5J0eTXoKedc8Wd4OZkPPP4d6bvf00zXXWKZrSkf1+13SK5zl4G//t/0f
	+qA5mDF/uFAVm0e7SodRu3Fil+dYJ8mfxw+Z6SnBbYIPuekFphYJ+NvA0EC78LmEDQHnrx9IhErg4
	vRhKxaF9U9/jPQRoGVaEkI0rr4qChRrBwsgND8F2iEha9/uaFvr7dNJwUXcjQvuOqkLXIyYWeDq2w
	s9mwTh1BWr7eiDXBXIPiJqJiga6YLmBcvvh0j+B+/MY6KDZX4gYLrZQgjtmuQ7Rkw/b5PpAFAKata
	Py3kjq/Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Simon Wright <simon@symple.nz>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Algea Cao <algea.cao@rock-chips.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] drm/bridge: dw-hdmi-qp: use drm_hdmi_acr_get_n_cts() helper for audio N/CTS
Date: Thu,  3 Sep 2026 18:09:14 +0200
Message-ID: <178845174737.2601151.16427479820258337465.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <86fcf349-0a7a-4618-9001-612371b0f71b@symple.nz>
References: <86fcf349-0a7a-4618-9001-612371b0f71b@symple.nz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_090950_825144_8350FF62 
X-CRM114-Status: UNSURE (   9.51  )
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


On Thu, 21 May 2026 19:36:47 +1200, Simon Wright wrote:
> dw_hdmi_qp_set_sample_rate() open-coded its own N and CTS lookup
> tables and search/compute helpers, but it lacked the out-of-table
> CTS fallback needed by strict HDMI sinks at TMDS rates not in the
> table.  The original LG G3 OLED audio mute (linux-rockchip 070633)
> was caused by dw_hdmi_qp_find_cts() returning 0 at 185.625 MHz,
> leaving AUDPKT_ACR_CTS_OVR_EN clear and falling back to the
> controller's internal CTS auto-measurement, which produces incorrect
> timing on the wire at out-of-table rates.
> 
> [...]

Applied, thanks!

[1/1] drm/bridge: dw-hdmi-qp: use drm_hdmi_acr_get_n_cts() helper for audio N/CTS
      commit: a9f09b5ea0c3db1e2d4c0f8d3ebdd612d8aa0366

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
