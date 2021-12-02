Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9B0BC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Dec 2021 04:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JthucLKKNii0nHpyou7IOGnSzOzBPCuW/4vTDDjZSnA=; b=NVbeOWHcs3QzVT
	9aGt5B+3dqe+iTmI53aytjgcjB8zT/xlDgHhKZYXxCrhAo9Ckw0WR3LaHbrcttVEqxyaV1alvKJvI
	hio0BviNpHUIiM2zUd4OFomkvmARIUgReN3YdwoIOyk7qJfwXPKeP+wL6gntvcjiVyp3n0eh3JqLk
	psKtFipgqVmKzL1dn3wIe8oRiTnjTP96BLL1svDC/n4860RRZIXr7mN3iCxCYFd/s0vQlNlQ37VIV
	BqY+rqxcUQ5fuD+dn+bWWQHcYsA+x4rAwUsiekNwBoTeBZyRJVvLLPlTbT+sIGp2xXSicJX/lOzE9
	fXGb93U66iQdteYM6X8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msdXb-00AsXO-NU; Thu, 02 Dec 2021 04:17:51 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msdXO-00AsTH-Oz; Thu, 02 Dec 2021 04:17:40 +0000
Received: by mail-io1-xd30.google.com with SMTP id p65so9763268iof.3;
 Wed, 01 Dec 2021 20:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qPKRVwQNVkeF/2oHH9nBkzmtasV/VsF5J8RVzD1HMKo=;
 b=Aq4IF80sKC/8Nq8jG04N1gWMBtSXqubOSOku8KlTeCFN+5a3qnWSGbAeo8be+KzAM0
 lUNnQVW7Du7W7T2UK5JDDltBHd2klfq5rm8LRWj51/wYCA3xGeRFmKp+XKufK6QfoJd3
 umg5LLYu8uT5O8g1lu6lRHLFNM8mnDke5hO6Vgc3Km+I1d+Cb0y1dOby0VyEEXUv5HTm
 7FlFSnStWTENCIooxmhmseRZ1+kXUPzIjmJCaPoDLIwmmwPD2M718j/Pi3jLN/TH8GX/
 K7hP6wpxPI/+lkgVVhjAm1V2EangV9aShZaOGMnJsExHsdq/7IBusxq2Lxu4mbm8AAMT
 5Sig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qPKRVwQNVkeF/2oHH9nBkzmtasV/VsF5J8RVzD1HMKo=;
 b=Rcure5VS7qdjqKoyZVb3su8v0As5x1hRFY4+BPt/6gHyciVB+Ov5FoHPLCYfxY8+9A
 eRzelTrSpdiPLVbrm1nFs0TuvXwk2tCe+iYQC36aQYEgb408imrkqRzgXMyWz9Fqkwky
 /JwFIrDI4d5GM3z+wglMERetTKFn5LvLbc/k7zBuwpAIei//OlXT/X4neSIYK7Y33Um2
 xF0kbzyUTOWwhVr5xodRJlr036sPiOaR2trdygYZEBSxW189yJulPl0zr9hTrDA4UMgZ
 4CxFgzrTEK/yYJN6H9eltdikPjmyjlqIGxbdrYTSKAAPbJbr9pZvDwTLAPlqltFyE7qE
 k5BQ==
X-Gm-Message-State: AOAM533FsYrsM69ZSYVm1aMEX2zTyACXystt/8foWjNH5hnOYtLUvaZI
 bp9vQtVcuw38lnPlso8fjBc=
X-Google-Smtp-Source: ABdhPJxU4grEfANbv0EA6rQMSvRxuU7fvEMYT9BFGz6z7/Gf0+x1CBURE4kpWtALUj5mk0dVs+XXlQ==
X-Received: by 2002:a5d:97c3:: with SMTP id k3mr13150301ios.191.1638418657366; 
 Wed, 01 Dec 2021 20:17:37 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:c405:2c26:c2b8:506e])
 by smtp.gmail.com with ESMTPSA id t14sm1030603ilh.62.2021.12.01.20.17.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Dec 2021 20:17:36 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar, tharvey@gateworks.com, nicolas@ndufresne.ca,
 aford@beaconembedded.com, hverkuil-cisco@xs4all.nl,
 Adam Ford <aford173@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [RFC V3 0/2] arm64: imx8mm: Enable Hantro VPUs
Date: Wed,  1 Dec 2021 22:16:25 -0600
Message-Id: <20211202041627.291625-1-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211201_201738_837641_CB4B87AA 
X-CRM114-Status: GOOD (  10.92  )
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

The i.MX8M has two Hantro video decoders, called G1 and G2 which appear
to be related to the video decoders used on the i.MX8MQ, but because of
how the Mini handles the power domains, the VPU driver does not need to
handle all the functions, so a new compatible flag is required.

V3 is rebased from git://linuxtv.org/hverkuil/media_tree.git for-v5.17c
This branch has support for VP9.

I set cma=512M, but this may not be enough memory as some tests appeard to run out of memory

V3 of this series has several changes:

Update imx8m_vpu_hw to add missing 'reg' reference names for G2 and include references to VP9
Update device tree to remove IMX8MQ_VPU_RESET, remove some duplicate vpu clock parenting
Fix missing reg-names from vpu_g2 node.
Apply patch [1] to manage the power domains powering down.
[1] - https://lore.kernel.org/linux-arm-kernel/20211016210547.171717-1-marex@denx.de/t/

With the above, the following Fluster scores are produced:

G1:
./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
Ran 90/135 tests successfully               in 74.406 secs

./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
Ran 55/61 tests successfully               in 8.080 secs

G2:
./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
Ran 127/303 tests successfully               in 203.873 secs

Fluster and G-Streamer were both built from their respective git repos using their respective master/main branches.


Adam Ford (2):
  media: hantro: Add support for i.MX8M Mini
  arm64: dts: imx8mm: Enable VPU-G1 and VPU-G2

 arch/arm64/boot/dts/freescale/imx8mm.dtsi   | 41 +++++++++++++
 drivers/staging/media/hantro/hantro_drv.c   |  2 +
 drivers/staging/media/hantro/hantro_hw.h    |  2 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 65 +++++++++++++++++++++
 4 files changed, 110 insertions(+)

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
