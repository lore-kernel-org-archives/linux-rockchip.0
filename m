Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3497C61CE8
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jun 2025 19:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uhmZufVDguirUB1IKEjV4XloV5zTCqlvkqzPfKwWc+Y=; b=cs7OQWI/DhTxd5
	bwGdFMIt4dLS9ShSe85Q4cv7cOKDNtRuLEIrW/dZh0UVrE2K/jVMreZcFkpYmSm3syEYRKsI3Qrhc
	vH7A5E+fvHvdphD0+iAo8dgbIDeK7fWC2st4m3DOiZOYstQsyrX2nNVFFNvY4GxV0oxZBhocSmLqJ
	bbBN0gZymXavdlToWmb9RUbDwBFApwCNnTWI4OGTZOw2/WSTFbmuMbO+OIy42v3V0P8Ow9MapEk4m
	ipyadL3UWsywAftcM+zoDogszxZ9aL6nUNaBTcI53iSqSg/ozKw3ByRsqdFAxWySzroyTQrKccTG4
	IhE2v57UPrMUaCWYQh6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMXWN-0000000BjDs-0Mtt;
	Tue, 03 Jun 2025 19:42:03 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMXWK-0000000BjCg-39Sz
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Jun 2025 19:42:01 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-40667dc8a62so2830162b6e.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Jun 2025 12:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748979719; x=1749584519; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MSyG5GucZ6AHzHmHwEn8qWQPSg1ugWMZS3LrrRmBg9o=;
        b=nrE3jO7/plduWVsCYTn5oU2/wS3ghIvT1FkR/3C9uHfJEh7qkvau0vBOrVB6KBVM3K
         UvIjqgEWSoQoOYRPLrkWfBzzbYiqb8CzMt3sz+H+JWb4AhjRusY14giWh6GbCdz9H6kT
         0hpQ97N8/lFv4nlcXHvcKM4+y4FDKePNDJexo1PhF/IgMFaB54k2Uzs+VSJk0fevj17h
         jP+tiQ6ijfc+qExenwfFeD3GJg41gYp4TKmtTKgt+PloZri0ldN4borD21X8hzMUNcqG
         j+eil4NYn0pGpZPh+dOtAft8N8DLLQKhq1nu6MnjkR4HpcT8i857MH7kkbJbshyKpwwt
         LVYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748979719; x=1749584519;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MSyG5GucZ6AHzHmHwEn8qWQPSg1ugWMZS3LrrRmBg9o=;
        b=kG+TofE4Kvdts0426jGygGbkq5w7koeQlKigfFfaZNOROVdpvC5f1rh/G0IZfEwETh
         LPCPscSiLXv8YDU8nABMGsC+KGerj8cGBjkt1LxklWg8ZxvLFuoJ/LT1kdWb4EqxXYdS
         BfVnSJDS9JFTqJR8+JwHuLi367UJG8+9l34QJL0lNBwHKpPOld5lhPSnlfV3xJRsYVbS
         sLyBd5Y/BiIMHMDDcWu7UWlmQmK5KgJ6o7mpp+j3TyLRJ2UT1qnj7DWBHwYPewJh1f/S
         nh1zrw8r7jqkJ0Gn+FXSAZng8p19asccwX3v7DE5hFg+t+qGTjrdAxqfx++Llf5BG2Ew
         91yw==
X-Gm-Message-State: AOJu0YyrnxlGm2wiVzvdPAqms3m4w4hA7B4pQVAURHt1zq+Mvwjglm+J
	DK/2qmmaC443ZaFVjaI003jujXCYscABpr0HYYE1WQ8u0koof/sN7Bk3
X-Gm-Gg: ASbGncvdVbT7of/QVpJHjiMiLUBLaUQuD3agDbm515xfqy0cERXH9wQEfW4oLG8dbk1
	5mvy393M3hSHcEIwuSaVXByZ8cga2uH3J4w6AU+AcjvTx6+K5sDp62mGNGJ1aDyQ4fgMmCTvZ+R
	Za4gsCkMBz+BCK1PVJBrZcfO46G/aA1xMNR5IJ56IAR+DNPXWaqOikTh/NKuL+169vuG6awD+da
	fG8E7rXbHNIS6A2slBSWgqYHfI5ZT1ZR2z5A+1h747fkqDyDMexqCK5u/mkWKHnR3FVfZGseHv0
	zYBU68L1Daidd+y+xO2om1VcOoWagkRHnRmRY/+Yo3JVkLWA9PZBNxjxh3rUx5nDuXiV3+Y=
X-Google-Smtp-Source: AGHT+IElN/Ck5z9ng0Rakn/a4qKt/JIiKWpHTNjCGckeAoEv0oDayE2LOTvb/CPVlFlHYkXf/jaksg==
X-Received: by 2002:a05:6808:1c06:b0:406:7a50:948c with SMTP id 5614622812f47-408f0ff6cb0mr301894b6e.21.1748979718893;
        Tue, 03 Jun 2025 12:41:58 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:d19a:d10c:4358:1346])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c88f96sm1967615eaf.17.2025.06.03.12.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:41:58 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4] Add DSI Panel for Gameforce Ace
Date: Tue,  3 Jun 2025 14:39:26 -0500
Message-ID: <20250603193930.323607-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_124200_815333_289E119C 
X-CRM114-Status: UNSURE (   8.85  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the DSI panel as found on the Gameforce Ace handheld
gaming console based on the RK3588s.

Chris Morgan (4):
  dt-bindings: vendor-prefixes: Add prefix for Huiling
  dt-bindings: display: himax-hx8394: Add Huiling hl055fhav028c
  drm/panel: himax-hx8394: Add Support for Huiling hl055fhav028c
  arm64: dts: rockchip: Add DSI panel support for gameforce-ace

 .../bindings/display/panel/himax,hx8394.yaml  |  17 ++-
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../dts/rockchip/rk3588s-gameforce-ace.dts    |  66 ++++++++
 drivers/gpu/drm/panel/panel-himax-hx8394.c    | 142 ++++++++++++++++++
 4 files changed, 221 insertions(+), 6 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
