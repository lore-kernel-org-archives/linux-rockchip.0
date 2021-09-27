Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E6AC433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 18:00:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C69F604E9
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 18:00:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2C69F604E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ytoPIESpW0QwKgV8bRXXJkeMwUvEgCXQeW6OUpTRf24=; b=hIT35Uz1q93ssh
	Bx4tP+bUVtZHeKOdHDoEwsuLrnL9QqWyU/C9JcfgeLBK23U64uswFe/mpGSOvMgdX8Jzai/vik7Cr
	NvK/31GuewYn16EvM+OHKTXbmUIlg7ZNljCqM5QpcuHkse9CipM+CDc++YuMn6tiUCq0+0S/fJi82
	DVOlYC0HTQG6frmH/B5DxLgm/h+4fu0CFtxiLlhCTnbdPlI/XXVWR+2jVfdOOc9biIr4Ry4M9nyJO
	qdZFcXBazAoJ8+v1GPgyh+XlUqugvsyrtyTKo9nHXdvIxI38Wm1RQNn2urMZKmioud9CqMC5os5Dj
	vcRlbBkj5RcpyC9oVbXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUuvY-003i9A-7s; Mon, 27 Sep 2021 18:00:32 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUuvV-003i4V-9L
 for linux-rockchip@lists.infradead.org; Mon, 27 Sep 2021 18:00:30 +0000
Received: by mail-pg1-x52d.google.com with SMTP id n18so18489466pgm.12
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Sep 2021 11:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6PbJI/NGQNYdtwQzX1JrUbqIFsSdwzRguepeO6Wp4No=;
 b=Pz6y/M5hn8b92RZGVzmR+TkkhbEStVLovKP2oxkVOGpyYnQ+BvBPGDBKKrbaCJ+ATV
 4+DMtH7ssQsSjC7SRGOiOOPo3nrn5wDM4yaVLSaCIA9GSP7vTLyEt+NV9JgXXwuB/MR0
 UWDNF+nUhFT5ny6ZVEVDwFMFCDkaOW4msrPHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6PbJI/NGQNYdtwQzX1JrUbqIFsSdwzRguepeO6Wp4No=;
 b=QJsUq6fVOp5rxqr+Qzo7co5LaD6dryQmjw/biibt4utL7/pTz3iTDiXzhEF26E/XQC
 MQEmnAsOQFLRi8TmlD+x7DSkkUGLXKn/BguOt7s5e7G4TRjx+lRdnU8ieHZojGGDtWam
 8q1oFdFTFcu9hp+Y//cww9NZXpqKGBSWLTiQksC/bR2k5ibqCXBFMYhD9ywpDXveNJZW
 TgEMrVmrWS5sFEskmk2wds9feFaewtsbmRcyIZUh7wYUK7WQGfLQ9hIdh44e2cpnfG+s
 k/I9xFXsuLfdrf7anw9yei/TywuiTSGfs49+cnU5bRoXUQynpcLQEi5kHoXa5pcABBfF
 6H4g==
X-Gm-Message-State: AOAM533XsxtyIgbFl+TmrfRFSfJYQ5rQiHxkE6Mot3QNy/Kn2pcgqN8V
 w6f/ukTFrpsXViz2sQSGT97gZA==
X-Google-Smtp-Source: ABdhPJwLp0SdiYhLnw613zBO3yuNqwAhDyhZ0EPM2HnxJTM/+CQ0S55JBw+qQ66o5PleLMz8Jw3fxA==
X-Received: by 2002:a62:1b08:0:b0:43e:88f8:8f5e with SMTP id
 b8-20020a621b08000000b0043e88f88f5emr1169552pfb.41.1632765619293; 
 Mon, 27 Sep 2021 11:00:19 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:82d7:f099:76bc:7017])
 by smtp.gmail.com with UTF8SMTPSA id a10sm17521756pfn.48.2021.09.27.11.00.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Sep 2021 11:00:18 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: Thomas Hebb <tommyhebb@gmail.com>, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wenst@chromium.org>, linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, aleksandr.o.makarov@gmail.com
Subject: [PATCH v2 0/3] Fix Rockchip MIPI DSI display init timeouts
Date: Mon, 27 Sep 2021 10:59:41 -0700
Message-Id: <20210927175944.3381314-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_110029_339542_E87B5FB7 
X-CRM114-Status: UNSURE (   8.11  )
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

The Rockchip DSI driver has had a number of bugs over time and has
usually only worked by chance. A number of users have noticed that
things regressed with commit 43c2de1002d2 ("drm/rockchip: dsi: move all
lane config except LCDC mux to bind()"), although it was fixing several
real issues of its own that had been present forever in the upstream
driver (but notably, not in the downstream/BSP driver).

Patch 1 is the most important fix here. See its description for more
info.

While I'm at it, fix a few error handling and cleanup issues too.

Changes in v2:
- Clean up pm-runtime state in error cases.
- Correct git hash for Fixes.

Brian Norris (3):
  drm/rockchip: dsi: Hold pm-runtime across bind/unbind
  drm/rockchip: dsi: Fix unbalanced clock on probe error
  drm/rockchip: dsi: Disable PLL clock on bind error

 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 45 +++++++++----------
 1 file changed, 22 insertions(+), 23 deletions(-)

-- 
2.33.0.685.g46640cef36-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
