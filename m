Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AF3CCF6487
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Nov 2025 22:58:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EhBo0SCHShAwpLBD02QY/DSuBwQVZBbz8FzFEizde8o=; b=J9Z7CxvOmgsize
	EkmM4JTtYe6ufF4TcNolieYTE0tmnGJRFH8M+aGQnroDNkDaj11NMkbZGadB6XrPMTzCsjnXzaCyQ
	xko5v/36AAyRHcyyxoTNRLXD3CHx3deY7Uz3DL2CEDe+j8XuqLRlQWLrpiY/f7tleVYzk1KlVjs8y
	3ToPBGSY5SYdJ7JLOATZRTvUcUlP0ITECJx4w1D0Hu0yIL5FcIbLOJ9IG9ogyjODOZeycyiQlMsQ2
	guQ+h0ctJXC5Aa7W1IyQQfR8oRHfzbCMY6cjwkJ9mzOdfBvL6/DF3i/J5f7+Y5/byibasZXmBxHS6
	xTH6A6OEG9cYNF03EUFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLr7f-00000005oyt-1u4y;
	Wed, 19 Nov 2025 22:57:59 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLr7d-00000005oxP-0oBu
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Nov 2025 22:57:58 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-3d56d0cb3dbso97647fac.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Nov 2025 14:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763593075; x=1764197875; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=h36tUBqnvI9yhQ8wG7TJEWs6puqGdITr1kLVhg1nmeM=;
        b=aggDX0euZ1Jcw9NMD4MaSas/aanwbTgAYBxQj0FtPMi2UhxprYKwVMsKbGTxyE5uUP
         7Bc+96L01iplCvoo244DZ+nqq77bH8duL3Nw6HJoyiQUhiDanSBw+5zCVVXbdlrXtDJR
         EjmHyQE3x/gwPzYxglz2+wGpfXZ1QHTJYyW/jq1iSUTGscEi7RZLfFmc1mrxTys8Qmjk
         CmE+nIovFOhCczBLdq50jYMQ+inT1H9UTw0n9AbVvWMCSxkd+ePDOtBSN8d3nJ0fZrRc
         veKT2wayRMJeeic3r4o2mPeyrPdDSHnQtkNF2bGNsgrXNZ2KKd90hSREQd84DWZiyQfv
         PoBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763593075; x=1764197875;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h36tUBqnvI9yhQ8wG7TJEWs6puqGdITr1kLVhg1nmeM=;
        b=Qu+G0gw60v7ZfbcPNznucaLqV0nBlemmY2yuQCWoMMTbDqVzDDfI3Cn4YOco/hwyMW
         G9xdx8bH9bqtwz4BopcI98h4es99l9ofuAGPxT8cIGMdohQ8zUDZb1GKdA98AMB7+bcJ
         ExnOW+MnnnrSXwn06/AwQCnSAeF6R2D5dBjJDg74RJ5ZzAFZ2pUJ51E1U0Q9ox/HCwv3
         38+X7hrn6qwSzrY09N3OtUN/AFveIn5DlAU8zZhluEJDlNRy4FUuTbiRe9u1E1eLurUJ
         5DooEU0CjgfFvpu4/RLriDunAGuCNGauy8pBc8nz/VJZgB7arC1YZOsnsf9RQYoL8x/p
         NMBQ==
X-Gm-Message-State: AOJu0YwuE+Xo9KENdHQn5VbwQclREkKVxp9vjnTnXQ3tuXvsgReMnNVu
	aQmsjiqmjpudBapP4Ly3sAe9WmmBlSg7HqBoj6ibXUBOr+h+HvtumXE1juKJLg==
X-Gm-Gg: ASbGncss3kKc9TQo7r69Dlz9cUUU9omXyF+RE7P1VIOK+CgK+/FZVvKloDPiXni8PMP
	HRZhyYYsDzwFbX6+j/byFiOyXXwlHsutgdRAkuvBRls3spCVOlswC9Hm5iXYR//c2i4P7orVUgJ
	CTM3oi6vZv8YylQVPnJ+ytbTugLTk1koGzzxQpYQGLQNoipPidlQRlg60wW2dqDfQsgpqKDnKNu
	/9E/c/GbdsyE29e47aqPuYfumoes4P377JXJaawqSmdyQVwtYuFODDWDwwfRQ6m+wuchL7V95yN
	XYS4yfDjTid7HpEdCTUWeXS90K/xO2OZ1kVPF3Hz8fSujIWNP5xhmz+f2K+cJduJPqUKcaiC8qA
	pwOl4C014ecq39yNutgTV6WXEoSu1l1pbP+ViHZMuw/ifPXBVvVAA83KHgDuAfudjgRGhO0jL2f
	a0QdSV9b7DNNhtupivEzw=
X-Google-Smtp-Source: AGHT+IH9wEc6Xu5Y63+EI3sJOazQtxFAgXXLwWcD3isoAJkSTUE+rwJ88T80ylQPY6WT6pNzdbF2mw==
X-Received: by 2002:a05:6871:5206:b0:3d4:876:34b1 with SMTP id 586e51a60fabf-3eca16ac768mr138953fac.33.1763593075407;
        Wed, 19 Nov 2025 14:57:55 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ec9dcfe28csm346496fac.22.2025.11.19.14.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 14:57:54 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH V3 0/3] Add HDMI for Gameforce Ace
Date: Wed, 19 Nov 2025 16:55:23 -0600
Message-ID: <20251119225526.70588-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_145757_257764_300E474E 
X-CRM114-Status: GOOD (  11.38  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, rfoss@kernel.org, heiko@sntech.de, jonas@kwiboo.se, dri-devel@lists.freedesktop.org, neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>, sebastian.reichel@collabora.com, mripard@kernel.org, andrzej.hajda@intel.com, jernej.skrabec@gmail.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, Laurent.pinchart@ideasonboard.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the micro HDMI port for the Gameforce Ace. This port does
not have a HPD pin so it requires making changes to the HDMI controller
to support this configuration.

Changes since v1:
 - Simplified checking of no-hpd parameter and changed to
   device_property_read_bool() function.

Changes since v2:
 - Changed dev_dbg i2c read and write errors to i2c_dbg_ratelimited.
 - Added a TODO: note in an appropriate location to disable or limit
   the ability for this driver to enable scrambling when no_hpd = 1.
   Scrambling is not currently supported by this driver but the author
   expects that it will be soon.

Chris Morgan (3):
  dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
  drm/bridge: dw-hdmi-qp: Add support for missing HPD
  arm64: dts: rockchip: Add HDMI to Gameforce Ace

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |  6 ++
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 63 +++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c  | 34 ++++++++--
 3 files changed, 99 insertions(+), 4 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
