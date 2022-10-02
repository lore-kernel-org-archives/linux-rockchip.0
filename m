Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 874C5C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 06:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cwqh5jYFGBSr/3HjQSG+pm9A68l2hPdh+rQACu/Z3cg=; b=1Ov1/N1O1Luiy8
	4U+wz4snJR10OZ25Pz7Xve4dUZ254y/h2nxpf09KNEICjIRaiExbZ5G+Dd4Kty61PygLnOhYNAxBK
	+Z3DcFupYIO0PowPME46EJP6Sjsw7QAoBem+qX0LZxqPEi3NZNwCtVznTLZNKZNRozNovTAExJM1a
	WyFpwYRgnumrunfXMQntvMjic75OqSpJidLvMyIl2ZQNWgdUV5on0mpQg+Em9R6Z6AieRDjWpQixz
	8W25qben3PVu+ax1C4ew+NCKl7+g9x1d05ktXi94HZ9cjqP7ZfRcZfkZfu9p7t0rZaVheQS8ORMVK
	sip+IdTpOMIZX2UsgU1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjf-0003wT-5n; Sun, 02 Oct 2022 06:45:59 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oesjR-0003me-Ct
	for linux-rockchip@lists.infradead.org; Sun, 02 Oct 2022 06:45:48 +0000
Received: by mail-ej1-x635.google.com with SMTP id nb11so16550465ejc.5
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Oct 2022 23:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=8DoxyrrNurSSCa9HyAR/BM9iY3WZi9m5+lPpxJ0Uuwo=;
        b=PODqI7EtFcGiZpzJBCGkv4ktWLDnRU9EOapB6eH3P9+9XM5qNC7Gyoku5e5dYaCD2k
         5lPV1udTtxuYEW3Ye2pn7Gs3ljboJN3ezbSriC7kNh3YWMNL5jZZ+UhsX97qVqmjXXhk
         SCvB0/xkHPFxkHg+UK1Icwm5mHCknJ219+W+A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=8DoxyrrNurSSCa9HyAR/BM9iY3WZi9m5+lPpxJ0Uuwo=;
        b=SzmfvCROImz/Zmyc3DrnSB8YWs6M30bhukSlA8NjEuxcBwBfPCsGuIngOXPdhufxlD
         nOndOVkuEzJ3WzDhLmRkSkGaNBuiqhB1K7j88pYtRgyt2qwZNVBFm1eu8mJy3LRxssZ6
         MNrT5Uxwv4TitcqUX7Yu7Ev4MdAwMcEmoikkfdF48tZUTq0eAbMtZQr1PLcnK3KSRUR2
         o5hHi1a5EMoW6kml0EJxCGfjSpcGyQf/ou3p38rY50PtovIXg7SyVvuWaUK2aL3sHpsh
         YLZl9AZD4C39rQ4a9nkszxnm8l8V683sdVlkYbPeZr0h4KFWJNzfeyziXCt+Y1YZILr+
         a/OQ==
X-Gm-Message-State: ACrzQf3O/C7zohAiHwhjFqQz48dDhUaU16/RsFXgINR1v0gCyXlUezMm
	zpEhe8pBczK0Lv9tCJ5ZA14bXg==
X-Google-Smtp-Source: AMsMyM4/ckulTLgZqHNHnMxdJWtdBMFlK4rffsHgscSLjCkKU2bBfQg8KGjFilHHLfjxdWmKDWM1aQ==
X-Received: by 2002:a17:906:5d16:b0:783:78d5:e47a with SMTP id g22-20020a1709065d1600b0078378d5e47amr11572855ejt.453.1664693143152;
        Sat, 01 Oct 2022 23:45:43 -0700 (PDT)
Received: from panicking.. ([109.52.206.103])
        by smtp.gmail.com with ESMTPSA id 26-20020a170906329a00b0077f5e96129fsm3569894ejw.158.2022.10.01.23.45.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 23:45:42 -0700 (PDT)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-amarula@amarulasolutions.com
Subject: [RFC PATCH 0/4] Add RGB ttl connection on rockchip phy
Date: Sun,  2 Oct 2022 08:45:36 +0200
Message-Id: <20221002064540.2500257-1-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221001_234545_490182_5B17DCEB 
X-CRM114-Status: GOOD (  12.65  )
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

The rockchip phy can be convigured in ttl mode. The phy is shared
between lvds, dsi, ttl. The configuration that now I'm able to support
has the display output on some set of pins on standard vop output
and a set of pins using the ttl phy. The solution is not clean as I
would like to have because some register that are used to enable
the TTL, are in the same register area of the dsi controller.
In order to test I must add the following

dsi_dphy: phy@ff2e0000 {

	reg = <0x0 0xff2e0000 0x0 0x10000>,
		<0x0 0xff450000 0x0 0x10000>;
	...
}

The problem here is the second region I have added is the same of
dsi logic. Only one register is needed by the the phy driver

Michael Trimarchi (4):
  phy: add PHY_MODE_TTL
  phy: rockchip: Add inno_is_valid_phy_mode
  phy: rockchip: Implement TTY phy mode
  drm/rockchip: rgb: Add dphy connection to rgb output

 drivers/gpu/drm/rockchip/rockchip_rgb.c       | 18 +++++
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 72 +++++++++++++++++++
 include/linux/phy/phy.h                       |  3 +-
 3 files changed, 92 insertions(+), 1 deletion(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
