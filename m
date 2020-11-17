Return-Path: <SRS0=Nc53=EX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18A78C2D0E4
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:45:59 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7B1E12222E
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2020 19:45:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1f89kHUB";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bEGG7+pW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7B1E12222E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n4HYaZnQyC7yfcL3WgzZ/OnowBHnHDYrg+Z3MbCjzUY=; b=1f89kHUBO7wcOD6nhzD8NssTT3
	w6ThsJAEwOpqliNUyzGqEFqYRIEMvgr2mq3LdEFES7X7BSU6CI0zcOC+dta8VZOo39qi7wz79/SEE
	tOiEKLUiuMDA3wa4EQDgMX4Sy4pRJxrrDMt1yKC8SZJN1ZbDqx74u6ek5JbQiyWLsZQDb1vWSRu5/
	xm2OwGQSuMbmGQ1phG/0eN7UryRPkAXiLS0fz8ViAq7pF+Hou+HMyI48r5zOdeSLu0bJzSzdRecTe
	Uxz2bZrGVM10NsS8v0cK0gRkmXfyQVeuwbQ2JvAwHBbtvETZ4KiQhtQ7yHKXPYJ+dCKe6CcrIjo+V
	E3RJDH8w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kf6vF-00033v-5S; Tue, 17 Nov 2020 19:45:49 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kf6ul-0002sv-Av; Tue, 17 Nov 2020 19:45:21 +0000
Received: by mail-ed1-x544.google.com with SMTP id t11so23696061edj.13;
 Tue, 17 Nov 2020 11:45:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=7FuTWq4BSG35jYcVC2y/aAokRjHupx3BOtYk6g9sB7k=;
 b=bEGG7+pWjohHYGCns+rU7864961TKkiTrUm42uvT6LxfEO1YbnvJekuitA/BWkBKCo
 qsN7cTlm7OY2hRiTAQmLfnUp5/8RZkKp3Z1cgY6qHSkU2RUHKqAoAI1oAj92qbp+41pe
 b6MjEliAQcKXdDVxBibvY1dzSUPVoAUuBdgwaCY1IAT2zds2yNeNwWnKqoWmVMTxDpmU
 Akl7TpvzvH5UZnc2SzUfp1e4+K8aIFpDLyllv88lW4vf7WvlidV+fOa2lO/WErCtz9Eb
 wrQ/xv8kRnYDHyi6GvBxmPENKiQuoaJ2MA8DAOb2WxOwi6mr7o/5gY81Y8VYrIQ0wr9s
 1piQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7FuTWq4BSG35jYcVC2y/aAokRjHupx3BOtYk6g9sB7k=;
 b=KZHw+akaqTTKXBIjGChesAb69EjMlMUit5lPTGhzvB4Fe5wo+pLnoKN6l7JORizPBV
 a142xIun/gXWiU15X5iU095mk3x89KXEb8+f5yw1mw19DdYQvX8axLCouTYNX+JPsPqj
 swwAPdu+thsTjP4bERFVXDJVYExpAweD1lHuRQO4mKa0QaOGXF+Qxu4xFN+6EyNC0V23
 MKTCfASdCulo3RhBE8dwhl4s5Xv66mIDDrWepIiXLk5wd5gZ/C6RpA6oEASTIYoj1RRM
 BB9JTLNDOWJw3+qGzrRxk3qqMrgrWm+0fiY7YdCw09vCpPJ2UDIboyMZnwQHcH82p+zg
 fRoQ==
X-Gm-Message-State: AOAM531HmL2LwseXD6m2ZTVcAUsaiNzF/u2zs4xWVz4qu0qlKjiYK0nO
 L1Tv8Kka6sWlK4+3E0TPDxo=
X-Google-Smtp-Source: ABdhPJwioSe6dJaxInh8X3IisG9hWd9obKO0KYfxQKA8qdRvbEI9nQjadusnXlOz4yN8QPtxAn5+Fg==
X-Received: by 2002:aa7:df82:: with SMTP id b2mr21560851edy.251.1605642316279; 
 Tue, 17 Nov 2020 11:45:16 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm727972ejc.109.2020.11.17.11.45.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Nov 2020 11:45:15 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v4 0/7] Enable rk3066a HDMI sound
Date: Tue, 17 Nov 2020 20:45:00 +0100
Message-Id: <20201117194507.14843-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201117_144519_494464_BE3E371B 
X-CRM114-Status: GOOD (  11.86  )
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
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, mturquette@baylibre.com,
 hjc@rock-chips.com, dri-devel@lists.freedesktop.org, lgirdwood@gmail.com,
 sboyd@kernel.org, robh+dt@kernel.org, broonie@kernel.org, daniel@ffwll.ch,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

First fix some legacy things in clk-rk3188.c that was never updated,
because probably nobody used rk3066a I2S before in the mainline kernel.
Update the rk3066a HDMI documents with a #sound-dai-cells property.
Include the code for sound in the HDMI driver.
Add a simple-sound-card compatible node to rk3066a.dtsi,
because I2S0 and HDMI TX are connected internally.
And as last enable rk3066a HDMI sound in the rk3066a-mk808.dts file.

Johan Jonker (6):
  clk: rockchip: add CLK_SET_RATE_PARENT to sclk for rk3066a i2s and
    uart clocks
  clk: rockchip: fix i2s gate bits on rk3066 and rk3188
  dt-bindings: display: add #sound-dai-cells property to rockchip rk3066
    hdmi
  ARM: dts: rockchip: rk3066a: add #sound-dai-cells to hdmi node
  ARM: dts: rockchip: add hdmi-sound node to rk3066a.dtsi
  ARM: dts: rockchip: enable hdmi_sound and i2s0 for rk3066a-mk808

Zheng Yang (1):
  drm: rockchip: add sound support to rk3066 hdmi driver

 .../display/rockchip/rockchip,rk3066-hdmi.yaml     |   4 +
 arch/arm/boot/dts/rk3066a-mk808.dts                |   8 +
 arch/arm/boot/dts/rk3066a.dtsi                     |  17 ++
 drivers/clk/rockchip/clk-rk3188.c                  |  35 +--
 drivers/gpu/drm/rockchip/Kconfig                   |   2 +
 drivers/gpu/drm/rockchip/rk3066_hdmi.c             | 272 ++++++++++++++++++++-
 6 files changed, 320 insertions(+), 18 deletions(-)

--
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
