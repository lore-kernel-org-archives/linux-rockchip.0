Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30E2C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 21:38:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A22A610F7
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 21:38:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3A22A610F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hXgqXP9UfofRusinGP9XHH9NlgNFEWri00fcJuqtuxc=; b=CKKIBE0+4Q7pPe1+WX9jefJQh9
	O+ONXo1ghM88Qd7D0JPaSSf+9SuJl0Kzk4k6p84bR00jKuYFpZ++EuJBc9jX3KRGySFUbygqzh4/d
	/bgMBiJTOLRugLm2H1f+bG1r6RRpnFQHBlB+Sk+Xnb8cQm0W57924IOW1Ha6bkHkYgPc0JaVNKMB8
	C2r78W+J6UPan1ANjk4lpsGbPy0k9cyp7KufgcXbmwsD4KR0Ph+w8mzXVF2+APjEpQrpHNTh2pWBa
	T15fRPKd8rHZ/uLX2wHMytpFb8FuEkJhqrIBKJp9a7tr0OsOFAJ2jakTxgpuM+7s0aRNmU0ljVBqN
	HaBWRC7A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lS51B-00B5rl-4E; Thu, 01 Apr 2021 21:38:21 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lS4zt-00B5aw-6f; Thu, 01 Apr 2021 21:37:10 +0000
Received: by mail-ej1-x62d.google.com with SMTP id u21so4931313ejo.13;
 Thu, 01 Apr 2021 14:36:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4Qm+59uCAR9vp39Y7VT6xDQzUUw6xyOHk+iDumVodlE=;
 b=aZaO17+SGBUHuOxA6HLN3ByDQQNSRVM+chqYLrdJJ6PpeS1J1+jxWRRzwq1eadKtNz
 1YqHBcrMTc6Lx/7dgAuPobooE6Q/GVFX20PgXkkqtvBB/lTkzoOAx0qx1CvP+F5NbXIP
 TEvdr4ZNNIAD4+7zvp58r7Xvj7aA8RFKp0+9AbYYS/r02tl4lSrif1PnqGVXXisgRPf/
 xr6/IrlgXxaG46icbzVZHY8ZlLyBb4GAihqV2GJzeWUaztMO4bDAghPmYzKEmF8VIyue
 p6FGkubFp5GUOj1vc8WAtacOutyDcm4NM7Y3AKS0353XTA9NZHay1Bfflj2uzHRKpet3
 KX3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4Qm+59uCAR9vp39Y7VT6xDQzUUw6xyOHk+iDumVodlE=;
 b=mdRKY4DT0R39AxdiAvZSJ/Z4g1wPGMiiw9LnqW5tM7Ie2TTp3nSKL6TvE/ko3gBWPl
 wzsf+BRQnddAA2Sq1GGCkwpdHDSbaHn9pcOPQg3Ng1QgxZ/2NtwZPHZkJ9gLsCLg3clx
 uRuCoFdhE7MtcRpn2mei2zj6oWd8mXw5Azgejdpo31lcB7/4k8TWHW/JjYoDeXgSAt8z
 xNsHhXwMm+X4ApXO8TWLT9sXNQ0TbuMfB5h8vPR0ROzlGVSdgNRw/aCsE0xlOJvJE0Hz
 JY+kLvb4vS9kLVgFqYh3ugHSZwVH9kErUH4RTOPjesfbWgR5wg25KBfqt2NukIANrmfE
 HVoQ==
X-Gm-Message-State: AOAM533hCNvCAuj6z8VN9pFd7UyxzqQrKOXsrypPVnRKeQo62lMRkPlh
 mUHwXVjMUmSlpMgWxmxbko8=
X-Google-Smtp-Source: ABdhPJyaSXrftQ9tYxNcnNignEGJiUDe3HXyDFGr7eJTmFv4CQAPnKl7qADsjGYi/P/aUIgDskYPFA==
X-Received: by 2002:a17:906:ae88:: with SMTP id
 md8mr10805611ejb.264.1617313019611; 
 Thu, 01 Apr 2021 14:36:59 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f9sm4237006edq.43.2021.04.01.14.36.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 01 Apr 2021 14:36:59 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, gregkh@linuxfoundation.org, balbi@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: [PATCH v6 0/4] convert rockchip,dwc3.txt to yaml
Date: Thu,  1 Apr 2021 23:36:48 +0200
Message-Id: <20210401213652.14676-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_223701_504679_B2B6FB0B 
X-CRM114-Status: GOOD (  16.68  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The conversion of rockchip,dwc3.txt to yaml was added to linux-next,
but the necessary changes for rk3399 are still pending.

For rk3399 dwc3 usb the wrapper node for only clocks makes no sense,
so that was removed in the YAML example.

Now dtbs_check still generates notifications for the compatibility string in
the dts files that doesn't match, because it changed from
"rockchip,rk3399-dwc3" to "rockchip,rk3399-dwc3", "snps,dwc3".

The problem is to keep compatible with old device trees.
I.e. a device running an older device tree should still work with newer
kernels.

Comment by Rob in version 3:
Presumably you are getting lucky here (with link order). The kernel
has no logic to decide which driver to bind to if there are 2 matching
drivers. If we did, it would probably be the opposite of what you want
here as we'd pick the most specific match. This driver should probably
bail probe if no dwc3 child node.

Please advise how to move forward with this serie.

Changed V6:
  rebase
  remove accepted patches from serie

Changed V5:
  add select

Changed V4:
  removed patch "of-simple: add compatible for rk3328"
  add patch "of-simple: bail probe if no dwc3 child node"

Changed V3:
  remove aclk_usb3_rksoc_axi_perf
  remove aclk_usb3

Changed V2:
  remove node wrapper

Johan Jonker (3):
  usb: dwc3: of-simple: bail probe if no dwc3 child node
  arm64: dts: rockchip: restyle rk3399 usbdrd3_0 node
  arm64: dts: rockchip: restyle rk3399 usbdrd3_1 node

Wu Liang feng (1):
  arm64: dts: rockchip: optimize clks for rk3399 dwc3

 arch/arm64/boot/dts/rockchip/rk3399-ficus.dts      |  4 +-
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts    | 12 +--
 .../boot/dts/rockchip/rk3399-gru-chromebook.dtsi   |  6 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi       |  6 +-
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 12 +--
 .../boot/dts/rockchip/rk3399-khadas-edge.dtsi      | 12 +--
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts  | 12 +--
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi   |  8 --
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts   | 12 +--
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts      |  8 --
 .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  4 -
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |  6 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi    | 10 +--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 12 +--
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dts    |  4 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi   |  8 --
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 12 +--
 arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi  | 12 +--
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           | 86 ++++++++--------------
 .../boot/dts/rockchip/rk3399pro-vmarc-som.dtsi     |  4 -
 drivers/usb/dwc3/dwc3-of-simple.c                  |  4 +
 22 files changed, 59 insertions(+), 197 deletions(-)

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
