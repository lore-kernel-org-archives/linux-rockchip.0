Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AEC7CD6E61
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 16:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WyRtwCGQFlqu2wUhVBL9awotKL8rPTJ/GZ3/k2P46gY=; b=ct0m0zCKymvout
	enPpbP8eMkgJVZl51Bw0puQXc70+MT9/GY5Z6BCj+/BZRYck9y5ZJfZUxwifeEdIrWmDrnNlh7V25
	3lflhmdyRGTh1A0sPqgnvEPXCBKovxEn0CEZZgNmeeh3tyCMLELBJyWQmH7aleek4Xj6hpogziHZ1
	ieAoy+ty9DWVOUdj11cpnGE/bkY9bpAY5uZQOFARcGeeaJfn2gNS86SB+TM/1c9ZDj1bPqTl9ByQq
	i7ShWbMSmUQvC4mc6BKnj9kcx5qbs+JAJdaE8CD0BshcCCMCSEXtrbwrYIDkjadr8dxUVxcb0TpBA
	ZeaUVsy0fNx8Y2oUudgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5Yd-0000000BUcn-1yAQ;
	Mon, 01 Jun 2026 16:32:07 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU5Ya-0000000BUat-0qGw
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 16:32:05 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-7e6b55bf04eso1317647a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 09:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780331523; x=1780936323; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S5wA0y5xa4moJ4rdc7wz+7I+lPNP20aj5XlTwm7Mx1g=;
        b=mbbZJ1tucCfWXxubrozeO1pYiGfJu/4fsOW4wnxTW4ava7B8CpMIhME+OiOIeqqMRI
         buiLOByiDtfeAfvo1n2eIX52kcVjiuXj14f69ODIs9GNZZufFkx42GnMjJXa8yqvsdGO
         3Ob3zIM2tGgpSofi8R/PFYSGKks61M7aQJjQVV3X+mr6K/IW/Y0sLjRRJDHide2puWyJ
         SzJq9zR1LYn/Q5gpCmqllXXxYOfffLddVA1GW3BfnHiaMYR1ymaHlHV7ffzoPJQvDbjQ
         fN5eB8qdgj1XYyLvaJ/iCFkwvnA7l1LNLg1hL6zQFjnf7JtkO8E5+MZXQyMHeksn2m7j
         BUmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780331523; x=1780936323;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S5wA0y5xa4moJ4rdc7wz+7I+lPNP20aj5XlTwm7Mx1g=;
        b=fWnGxXHIll79eIjbGT/7em7XazPBnQZiwh2KhF67NwPvG5FfS7o21zLtZFs8mLlF+L
         ZgGu21RMY+9FrpIZ920aXIl31bK7yilHW9o+nXuq6aJPa+zQNf2k1kox2EWfbxTPBsTB
         HXhobxKGbzjRqtr+zHq7tra2NFvk/7rZ0MwcjpxH6U6tBtibJkXMKC/2nsvIi1ghLotD
         JSsM5rns0LsmxKAOpEfrER/7Ek6br9YzvGLvkkk3SNu837Vlq97ag8uU3QytxDQkho6g
         IvQIvncwGQGZa30CSFwA0gsVQIX10W6EM99weLAvKXnr+XA5PT7EdAZmM7YjASdaD3xh
         smCg==
X-Gm-Message-State: AOJu0Yzj74PCrALvpM3HgQJ2kZDHHL2fgtBKhq8nboyeOjw8+mn2G8fy
	/iln1lPK/5qUsgK4lq5dv+bTIWmAaMj3HXHw6RjVmb//afmwl57ms4QjqxM5Qk1f
X-Gm-Gg: Acq92OEYCQbqbQcJi4PDY/jGDQA12NpX+knkMi1w5hvUn/462h/JoOrUAtkRzZyaB31
	MsG+KdrIbtjX2w9jlsF0rGbpqsDqjhGv3N+t1Jd52GkBnKZ0lL4A3YyND8IC7HqEVxwz4pjKJSz
	dDhfTi0chFZpKvXQ2ycjgWdVv+/bWrKxlYjNPSy6HsPD7a1Tt+YYS+/j6n9w3mXzk2e6+FGpdIC
	rsjzvasiy9HcDrK+qqQwXeHZ/OP3HEMhqVh22OuGTs6hK1XHJ/6NqvQTXXe/rY1aKiMXl2rZk7/
	x0paeb/LytlGcaUTMPmGeDixiSJk77grxN+qO2t1bJeq5DFCIJthztdqDQoWgWbowCtPya4p9bg
	7qUFiqSz8CwscM2jNkoc3T6rKaaQdzb/brbe4ymLGzWYr/LJJxcMOmJ07A6aLs+Z8N4uYjyXrVD
	kCXGLyXjtiReiiYW3Hqzfj99kBegGxQ9jYOeDuCN9wng==
X-Received: by 2002:a05:6830:2a0a:b0:7d9:b2b8:e06f with SMTP id 46e09a7af769-7e6a1e09574mr7543417a34.21.1780331522670;
        Mon, 01 Jun 2026 09:32:02 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e695d69b20sm8024928a34.22.2026.06.01.09.32.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 09:32:02 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 0/6] Add Anbernic RG Vita-Pro
Date: Mon,  1 Jun 2026 11:29:45 -0500
Message-ID: <20260601162951.254968-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_093204_275922_C43AA8B1 
X-CRM114-Status: GOOD (  11.52  )
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

Add support for the Anbernic RG Vita-Pro, based on the Rockchip RK3576 SoC.

Changes Since V1:
 - Updated documentation filename to matche compatible string.
 - Corrected order of allocating IRQ in charger driver and switched
   to using devm managed function to allocate work queue.

Changes Since V2:
 - Corrected issue with naming of panel binding document and added
   fallback compatible string.
 - Switched to devm helpers in panel driver. Note that
   devm_drm_panel_add() is currently only in the drm-next branch.
 - Optimized setting GPIOs for panel driver.

Chris Morgan (6):
  dt-bindings: power: supply: sgm41542: document sgm41542
  power: supply: sgm41542: Add SG Micro sgm41542 charger
  dt-bindings: display: panel: document Anbernic TD4310 panel
  drm/panel: anbernic-td4310: Add RG Vita Pro panel
  dt-bindings: arm: rockchip: Add Anbernic RG Vita-Pro
  arm64: dts: rockchip: Add Anbernic RG Vita-Pro

 .../devicetree/bindings/arm/rockchip.yaml     |    6 +
 .../display/panel/anbernic,td4310.yaml        |   66 +
 .../power/supply/sgmicro,sgm41542.yaml        |   99 ++
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../rockchip/rk3576-anbernic-rg-vita-pro.dts  | 1317 +++++++++++++++++
 drivers/gpu/drm/panel/Kconfig                 |   10 +
 drivers/gpu/drm/panel/Makefile                |    1 +
 drivers/gpu/drm/panel/panel-anbernic-td4310.c |  251 ++++
 drivers/power/supply/Kconfig                  |    8 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/sgm41542_charger.c       | 1035 +++++++++++++
 11 files changed, 2795 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-anbernic-rg-vita-pro.dts
 create mode 100644 drivers/gpu/drm/panel/panel-anbernic-td4310.c
 create mode 100644 drivers/power/supply/sgm41542_charger.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
