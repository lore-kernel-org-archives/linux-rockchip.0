Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3E7E2CD98D3
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 19:32:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=guQUKiQmmTpx8VH4Q7s1goxc0th3ETCyJuEsJu80Ra8=; b=2qxxpzw9UdqQ5X
	akhmmU2rkx1lzYWT4Sb5ulNmpMX5ZVTV9cgDmEl7XV/OHaN3WH+f8/x2x80rbOoJH5tPjDpkA5uiJ
	L/9rsvTY+xvEdmfaANMB8EHYw8dHsUqOqGXIvVm59+tfhn8mC9adjCniTmRhBtSvyWrLnWlTr0d2K
	wOV1RiJdFRB3c9DQULjbDZWc5zT39CKk+Yg7r4yLqpoD3gaAQPff+08IiKIuLADH6MQY9KoVVOeH1
	YlIn/j/4wYW+aTcGKENdr0hZP1RALD45thFeQC/6W9hcOZRs+GrXOXIQWuZvS2A4k2x5Atkplnb91
	OsXXCEDj9YYIIb/mP8Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJd3E-0000000B0ST-1B4k;
	Thu, 13 Nov 2025 19:32:12 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJd3B-0000000B0QI-1uBk
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 19:32:10 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-7c70eae77d7so335069a34.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Nov 2025 11:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763062328; x=1763667128; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Lw/U+z5I4kWuL5rL8h4E+nT2ml8zVb8Mlz2CECK2kyU=;
        b=OHV03OBLf9AnDKlqRQhNb9V3+OIHNDrVGLAyvzVSomalSrCTuGf3H+5Epl3p6do1Zr
         1WoKINkcy2edOl3yoyM8PMij809beuXBgIjf2n7cXdYTkswVIkGkhOOVtQkITkvtzTd5
         wQE19CTaQ77j+6wdrsxjM9aHPNTmVg6auI6lI+nKnrjtts6DONXztpysMRHdrmEVGM4A
         VpaKmiAhRrDlBFQI0HiF4F5FVpmIsbhv2lJVp1EGMdqAQ0xoO/vuTdZj3i5rc7cR1Hg9
         PkQyRWCLk6nJYHAFezv3JopNKASjVF/K4W4HE2XOSoaVn64EYNEBQKE+EqS+KfAaeP9f
         4apA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763062328; x=1763667128;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lw/U+z5I4kWuL5rL8h4E+nT2ml8zVb8Mlz2CECK2kyU=;
        b=fxqMoF7jXlc3RWPiEpjcc1Kh9PsgYn+9Ws/u2ChviK3sN5WxzkFfHbQrXZmPsJn4pw
         9+W5y+/pycKh2v47pEN4yggL4iYDjLaD3D46jRInUCXhiyogI7Q5Q7IIPOZQOEnOI8GY
         eeLRXwKSH+Gf3URYRqdTaE/ZZupQKcRBpnPPCFCOSDkFH7tyWyebvKgdAk0c4PBWLGIS
         mQR59b/C2njev371+1JZY+dU7g7IW1+D0VnnRnDrYsV9VqFpzngTeJBb2aYIlJ+iNZv5
         jSv9VLXYDp0dMrRR2jxh8YoADv/pJjzdEsF976WNTZWOl/1uV0BZvMiNYivdZhFg4eJr
         pJWQ==
X-Gm-Message-State: AOJu0Yyb4bH3xLlyfTrvZru63PirR6ch+neQ0NIV5aq6JyB6zKCXvBv9
	50ZRhOEjKUvKC5eJ2Euu1SrRuZwILCJA3h9valo7R17Lwh/UBwalG13yGgUcZA==
X-Gm-Gg: ASbGncsmcGGNcXrSafpbsiizKrheZ9SnJlFKXgI/UJGMYG1IqTEOVd0jMduhRuNfvea
	8tdxy0F6k+uX+AIZT6A4ffW4bk9kah7SI5J2sgggyYXrM+f/UccCXfg+M6kzKjOMuUEUr29pxS9
	Qj01mhTQ0fLyjjdh/qNP9Okfl8Oq90n29iMGNAkgyBZ+3t2T1CKXNqgdOGYpOsj617lYFDFba3t
	8q4yMcH7bVGF0kgAZIrevqMK1qj5qID+5sWLOun5/MjEHuPxZQwdu5fdGzy4C4Ajzq1cvoKfZVz
	4sIZG7EPEWnDKmVNuAhbaPd0f9xZuRYkw1fBLd2kwoWHSq8ndbxa5TTnkPyMpAsdC3i0nNBvxrM
	yj9PsfVlrSUFWGo/LZHYhQr5ZNO6uyYSWi6tTse6sY3FByW/IZ7lLeCpgmYiNth4LzssVD5eoD5
	4yEESh5vHk
X-Google-Smtp-Source: AGHT+IFEgyX0ltKX3lDaJ+pACBb477rkzx0l2ZFB+JcPMhVtmDYkqFRhnbMiih50devZNHV+aa6GYw==
X-Received: by 2002:a05:6830:25d6:b0:7aa:4e01:f57d with SMTP id 46e09a7af769-7c7444fe486mr424984a34.18.1763062327571;
        Thu, 13 Nov 2025 11:32:07 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a392fa5sm1693527a34.19.2025.11.13.11.32.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 11:32:06 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 0/3] Add HDMI for Gameforce Ace
Date: Thu, 13 Nov 2025 13:29:36 -0600
Message-ID: <20251113192939.30031-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_113209_513869_99C7A3D8 
X-CRM114-Status: UNSURE (   8.17  )
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

Add support for the micro HDMI port for the Gameforce Ace. This port does
not have a HPD pin so it requires making changes to the HDMI controller
to support this configuration.

Changes since v1:
 - Simplified checking of no-hpd parameter and changed to
   device_property_read_bool() function.

Chris Morgan (3):
  dt-bindings: display: rockchip: Add no-hpd for dw-hdmi-qp controller
  drm/bridge: dw-hdmi-qp: Add support for missing HPD
  arm64: dts: rockchip: Add HDMI to Gameforce Ace

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |  6 ++
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 63 +++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c  | 32 ++++++++--
 3 files changed, 97 insertions(+), 4 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
