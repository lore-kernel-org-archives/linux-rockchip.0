Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A96E8E77199
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 05:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VR1XbFgMxf5BAV1m6BpW2zZmIfYCkZuq3xfFGMt7c+U=; b=ar7QKieF0GFOiL
	0K6zkmNQ9Go2wQ6DJxYOrmwG8RxqsgftqNMzd6wJPMOZ51LvFaT79S96u8+nd9GGLzoq3Y0yZ/bNw
	urwiZbPQ5hvk33lF0ln8zKdICIRVBK644tF2JYGH3YB1FGbi6uNChPoQlgvgriw125P00OMgyUhlO
	t+Wv1NHtaimgAI8LforGKatywqJAcp2mM7+/dU9YdNTvqXV8mPE6ijoheF10czq+waGfhJRSb7b/S
	FcyL6geIOdct4D75+ObHFs9BedANPfKO4lFfwxZSLu6FoDBzzbvSD6k+Tr15Ls4BOJXVMlzNIF5o/
	9w3W4m3kTO/hYBe63/mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVkvn-0000000AmXd-1bWx;
	Thu, 09 Jan 2025 05:18:07 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVkuX-0000000AmQf-001q;
	Thu, 09 Jan 2025 05:16:50 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-71e2851de95so176155a34.0;
        Wed, 08 Jan 2025 21:16:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736399807; x=1737004607; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uyAA2e97hpKNoXsZhlJ3QNCUtbrd7+Jbj4Q7AKJdGhM=;
        b=LEqvuBysZzcrlxxqnLKRfG/BcapY8nLe3L3SAy7u2oTY5DLw9wbM174CPcuiN08X2q
         csSnyOup1/3+DaEjD2PyAIVar+okeu5nWJgmFMJ0ekPnq9S12a/Yhx7qsB3CdN8bG5JB
         /030vZ7Ts0w9NYh9qw1sWCh1FsGeAfyioJjrS7300rINiET9kXZ9uzueSmTLKYrQo4M6
         SzF4VDbKj11g1dStlWTo/JXWzBExukWdJhOpRm13r4lrdZJNckFgNfowl+UfoZDht/6a
         mhp1ClN4fors2/9kDBCc4F7HKF3Otbjtz2EXSR14Zb/znndO/hxfzZBMVVxYGErpq1i8
         taaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736399807; x=1737004607;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uyAA2e97hpKNoXsZhlJ3QNCUtbrd7+Jbj4Q7AKJdGhM=;
        b=gbmG8TDksfIdcaGUHeKqscCxkEZECunTZ8fpTiG4D2E/YlnctCtlM7XA/5uYUq/MR8
         hrAEur3DE3RuoiC9GhBxZ2uhtHjU6GFYEMvF74wcuVq1fvABl9cTTKs/6NDhrO68YH7T
         WxBKXQEo8FRKEDsojJaLkkto2JMYJIr586RtgxsWypj5BIvTlyQUoY/UZio/1z7atntN
         G81OqeZfzKX9HaG/86NAltk49pOO9qOsrQbD1XERaoweCqR1p0G+wfm0Q59plkxLIRG6
         adHhv0LfytVYNEXIDG7KL/Y7yXOgZixInN+Dyc8CgjbkJKp4PaCf6ul57ZSxcNaJQWP5
         7LRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWAMeJRGOCZAOyan1X4uGnTkf4DcFG7gggRJcqGqdylokWkertn9M352ADKpNBO3RWM432VSTFSKIB14nZgKfNH@lists.infradead.org, AJvYcCWFrpEJ9MkkU9c9P4z9Nznv0PYH1Ro1AP/vTlYCd2VHokXXZ0ZdexVbiPVS1YcRl6nP7JU6Kp6W8W4IYqW9DEE=@lists.infradead.org
X-Gm-Message-State: AOJu0YxJk7OcB6PpGgsUIjk5q5Z1ZWmW33NkhTn2ly1fSKHGbTv6Bvso
	CwLSc29KazH+wX4JYj/K70ZGgMKCz7tPLir/lB0tE4YdkskH/yZM
X-Gm-Gg: ASbGncuipi0QV+u95BHXX6TMNV1qqiCRdfeh+NUniRxQWsEKCTi5UO2Dyt8oEXdOXwO
	MAXu2rcl8TvGM4oL8yspbQP2jEweWswj3Y5cthx4lPPTWD+FyAxdpedbdANJ7o/fKtuhgUcBAKg
	yjr6rd+cRBmdaFLB2bh4FuRmrhE64x22hCL1ypMb+0jhDfgOgBD92YlE6lKpwXWZ25yNUe914fo
	J7QvFCncD2GCYpJbD2/b+Ud/9bnGFxIIzYuePp5ioHU/jeNQ/DcctzF/mypwHijGg==
X-Google-Smtp-Source: AGHT+IHpvhV0n1MWMR5QOj5LEYgK4tR/bDZhfQMT/ySGHTL4kUeXpyNlzbLXHUVerw8aIu6Nh6E6pw==
X-Received: by 2002:a05:6830:6994:b0:71d:f21b:a447 with SMTP id 46e09a7af769-721e2e5b5a6mr3183007a34.17.1736399807192;
        Wed, 08 Jan 2025 21:16:47 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:f022:ffa3:5bc0:c1c3])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-723185481bcsm187612a34.21.2025.01.08.21.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:16:45 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v8 0/4] Orange Pi 5 Max
Date: Wed,  8 Jan 2025 23:16:14 -0600
Message-ID: <20250109051619.1825-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_211649_061924_C470D9F9 
X-CRM114-Status: GOOD (  13.28  )
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

Add device-tree for Orange Pi 5 Max

Orange Pi now has 3 SBCs using the RK3588 SOC. Refactor the common parts
of the 5 Plus DTS so it can be shared with the 5 Max and the 5 Ultra.
The 5 Max and 5 Ultra have a similar credit-card sized board layout and
will also share a DTSI between them.

5 Plus: HDMI0, HDMI1, HDMI RX, M.2 E-key, USB-C
5 Max: HDMI0, HDMI1, WiFi/BT using SDIO/UART
5 Ultra: HDMI1, HDMI RX, WiFi/BT using SDIO/UART

Changes in v8:
- Rebase with updated 5 Plus USB 3 patch

Changes in v7:
- Add signed-off to first commit
- Expand first commit description 

Changes in v6:
- Remove clock-names from incorrect merge conflict

Changes in v5:
- Include Orange Pi 5 Plus USB 3.0 change in baseline before refactor
- Defer Orange Pi 5 Ultra to a later series
- Defer Orange Pi 5 Plus HDMI1 to a later series

Changes in v4:
- Orange Pi 5 Ultra was released and does not use VP0 to HDMI0
- Move HDMI0 from common to the board level
- Make DTSI to be shared by the credit card sized 5 Max and 5 Ultra
- Updates for the newly submitted HDMI1 support
- Add Ack for dt-binding

Changes in v3:
- Refactor to share common include with Orange Pi 5 Plus

Changes in v2:
- squashed commits together for initial board file

Link to v1: https://lore.kernel.org/linux-rockchip/20241026100310.52679-1-honyuenkwun@gmail.com/

Jimmy Hon (4):
  arm64: dts: rockchip: refactor common rk3588-orangepi-5.dtsi
  dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
  arm64: dts: rockchip: Add Orange Pi 5 Max board
  arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-orangepi-5-compact.dtsi   | 151 ++++
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 101 +++
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 855 ++----------------
 .../boot/dts/rockchip/rk3588-orangepi-5.dtsi  | 805 +++++++++++++++++
 6 files changed, 1127 insertions(+), 792 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi


base-commit: 2859e1ac3110f2d428a794bda26ea0d90b2254c6
prerequisite-patch-id: 4672b745f4308a7be527749279edb71625d120e6
prerequisite-patch-id: 2743fb64eba2a29eaf993ebc8a5d6ee445b69dfa
-- 
2.47.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
