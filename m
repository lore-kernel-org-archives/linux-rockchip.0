Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CAA3C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 01:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7MfWENhERzLSKpP/+oiBP/Rz4ndtS/AAU5w8+8F+NHM=; b=ml4Trs37V9SvsQ
	oTGFKwCnYqJLogBNi2Nw0LMfF3dqewodDm3gibL0Sd2ylyLh3GX60M3UjFQBp0biE7qrkJFsnYKVk
	ROIDx7he/9WI9D2qcAIGx646kRa2lR8Y/k+4pYCki2PqNYbrFAH4sb29qqvGqF1EPEhPuawdQ1t1C
	Cch026pjcCYChGkuGcAWx6zWeyGq2ZUu7k9EACeAwArYgkD3nrEtGlfbhqmO7vcW7wlzavxqajUda
	uTYmDo+xXkBVu4H6MUqG+WeTpYlqvkeCOMoBVHQebhU1oxp+JKXrItkgpKaDyrFt793sdn+ReGJ8t
	KsZjAMrewPaBt6Bh6CnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCt9X-00DuYy-BD; Thu, 27 Jan 2022 01:00:43 +0000
Received: from mail-qt1-x835.google.com ([2607:f8b0:4864:20::835])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCt9I-00DuU0-Sy; Thu, 27 Jan 2022 01:00:30 +0000
Received: by mail-qt1-x835.google.com with SMTP id r14so1247380qtt.5;
 Wed, 26 Jan 2022 17:00:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oOvSBbWCPiHxycWnE6d9U3dqPlTna4pm8BiP7zmWn/o=;
 b=Aax+YLnYbz42JEIfuegpzY8AYIjXBMB07z+IQ3FBAtIHnFe0jyayWfG9fVMhzsbhi2
 Z5n5z7uQrTSAVx1wbHqza4+2ZaZLUZrrrqItGMiwrcCSk9o1k+SC4VwBC0ojsx6t9fgG
 kVp3ZAbGjAAsAWssovBowXeYzz2VWgEBVCEjJCgkQ6du14MDc4rnND0u8oIskexFPgng
 Vh02pF15Rgb8bJxRIxwtTolQL7n0BdykX2iRHqRO44k5Pqgfnv22anaji/u3cB++pe2H
 0vwsOpb+vRs0McYGzIK7p5HmGN7SX+LSBuj2LCEfQ+lPEHZ0+PehjEEu/zTn+ohP4Wx9
 Uq0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oOvSBbWCPiHxycWnE6d9U3dqPlTna4pm8BiP7zmWn/o=;
 b=WnkPDXX98s2D3Da7e/tEgoK8xpPicoOktEIeRWofER+58t1HrlRaD6+Nn5XGefRTbH
 6T+RY6a/qyNblQQof9aFSDsG4JibMiqVF3jtZBs9aZHn6zu6KiEERtWIf249QnCu84wV
 we0Yc2LAhX4agEXxgXCG4s/X42o1MiRzGO3fQaNzziKxtijEr7FnFeU/R4Gdx1A9WPAH
 1JItHFdRuNO9gtRNVfiU3+Iwiw/JnvA5h5cQwoBJiUNtrAokX+6cIv4jO32p3kjwG3Vw
 QHxkJ/l1ukIjaHzEc1NB/xIbFTczsOiHvwHwURu58D7YGCYkdVjXYzvLemCWRdOr1VFS
 o8zw==
X-Gm-Message-State: AOAM5317W9i9uyQIqmAhgVfLB9du+a2ArTJiEQ49pcOjutCsHU+L/u3i
 qmlpxjM9Q2pegAOvaxjykfU=
X-Google-Smtp-Source: ABdhPJzMh8f+/jHW866ULny/PNfJYdkK92/oo7Yd+Kdq9AK7cCJ/+uFNSyYwJ9XYHEyJIcPKi5Giaw==
X-Received: by 2002:a05:622a:284:: with SMTP id
 z4mr1070975qtw.612.1643245227707; 
 Wed, 26 Jan 2022 17:00:27 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.dc.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id n2sm483389qti.59.2022.01.26.17.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Jan 2022 17:00:27 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: 
Cc: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 0/3] Quartz64-A fixes and enablement from 5.17-rc1
Date: Wed, 26 Jan 2022 20:00:20 -0500
Message-Id: <20220127010023.3169415-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_170029_057960_2074D6DF 
X-CRM114-Status: UNSURE (   9.10  )
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

Good Evening,

This is the first of several patch series for further expanding
Quartz64-A support.

This series has the following patches:
Fix the ddr regulator voltage.
Add pmu_io_domains to permit sdio and high speed emmc support.
Add sdmmc1 node for wifi support.

Please review and apply.

Very Respectfully,
Peter Geis


Peter Geis (3):
  arm64: dts: rockchip: fix Quartz64-A ddr regulator voltage
  arm64: dts: rockchip: add Quartz64-A pmu_io_domains
  arm64: dts: rockchip: add Quartz64-A sdmmc1 node

 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 60 ++++++++++++++++++-
 1 file changed, 58 insertions(+), 2 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
