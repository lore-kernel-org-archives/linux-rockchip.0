Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67392C43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 22:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9neh5ikGeDICxFy9O9eztrY0ttLbWFWBFBjmeqToBck=; b=TMAgmNCngO+Bnr
	zflsPH8VNdX2UpOCETM1h8pIUo7qg5c1gKiONDtW0ad+G0CRZX7TlXcbWK0g1HMDRkIuuhrWbsUQc
	BslyHkVwVOl4MouJGAdQyEfT+q9PyRh5L1lLmUEu2pLCabrw2nvU/2nnnqGjFNHjRYAVWT6Dkam4n
	3WnzAZ1LEFbC277/B77bNEQcJ0h/Zn3qEsRLwcLU1Al1tju1BtHZqGzfHEOEI/OJSo+TDQCvBdxAI
	by352yUUaWBNbEsrWoBozBHG1zbvJ1b2BKKvAajWo/Qo4IEGXj1iZh0aW4og5JD5soVYf1ZDcyeFi
	Pz7wlV2Hsh9IKD1GwmOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgrvc-0000000Dj40-2Vr7;
	Mon, 06 Jul 2026 22:36:40 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgrvY-0000000Dj0r-2WmV
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 22:36:38 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-493c1950518so188675e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 15:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783377394; x=1783982194; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=15lXngfbV3oHOC8Vn3lhHZSCcqaMFAt4guZPgjqF3Ck=;
        b=CZY9EZb7oRHkolW6jEO9Ri4eCEB2HW+7AfVvVJcpzE0VWT+Mie0NLy5adDZ6C7P5lP
         uO+PVlhO1qGeks2NjpvS7ym3RuGypls2i9iaZ5LZHttmBmvAOmihBfC6tm61NjUztzsU
         iz5OcIzp9kSQKxZWhME8zLvotBqUT492BLfEYiD8revsRvEPD+JoxdcRotR2LzfKtNmV
         HauYbxlp7stFfX+dlw7itO2lux8gazG1MJm93AX7E/3QHuSRQ9UcA53G1QebfZjDbv7a
         ZaSn1Cd8pRqUUq/R0e6J0o9PYPBdrCFHDOe3rzUZvgd5otIGpk/jbKb+spqCsaWyNRjC
         UhuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783377394; x=1783982194;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=15lXngfbV3oHOC8Vn3lhHZSCcqaMFAt4guZPgjqF3Ck=;
        b=dWWOoQ0QIdtKil3UsjzXboLnFfXykScAYbum3Q8jyXQv+KQnbcbWTk2AD61Ek0cu4R
         DMnvh/oxoXp9Mb9iVh75X89s1ZFbbg5pcrwnf4QTgfWLq/ZHxpyqotDF43usgW9EdJf1
         Rtjqoch6QvJbXp8/Tgf3U5THhIA7C6fTALBfxIqaim3OR42/PvNT5F0M1egTFDO9fHK5
         5LhyK+I7MnOhcF/upVbf03uLDIE+DVmeS8sKgmYlNG1v7VMAamchkJPIoRA06xuahZYe
         QzRQirC8Iu7m6QYC1PnbgfM0RFxTVHEJDSq1ibJ+aBQBV4zDrIEDVlYsfRA+LGryBtB9
         8+ow==
X-Forwarded-Encrypted: i=1; AHgh+RodYPISkoDiHBICATFAV3aYGR0qm49ZETO3ZAcm7dcDbQA2eKYqZDwgEBD67+h62i/EdvivUzeK1rI0s6A59w==@lists.infradead.org
X-Gm-Message-State: AOJu0YyoFjn4CTsghOG/IaKUFmvGXe20TBT6/kxvJlwl9/Gb72darz2R
	j+oVsJIeSdqrB0HJZ3aiNUt6uHJkkFkhIFNwRm/XNoiVenoSGyIJse5GLPeItq61
X-Gm-Gg: AfdE7cnBRdDj/EMbZRIA2YU2PIV/t66Z/K9GDX8taCoY3O9zg8T9MW/IYMA0Va36z2m
	vO71j1ZflyNQR3o80FX6myadCmyWO4w5GOMXCzrEpQOYxgrQl9wcWfO7mVLu5iM8W398DJ+NegK
	zPw0NCQ7GfsQVkfdOXafczABFXsJ/gGBKUj8D5FB4gQL9nBs+3dG6cVMLtP81/ko3TxYX1oeJ/b
	2FFQYAV0RmCn9NIJQ3A9HutEOZpCo8S0UxeoEoTpwoclBt6ZDI67aFuVFAAthkGhT6Gw8ECOJ/g
	/12OcUWdZB8yKLouozaF7cOGvisKy7+9kBCrhR90CMpnfUkxm4Kh3xTQMoI8bGXebOeSnJRAmXl
	pXOVMHWZStRtJA25lYK9fZnS6TfpIf8H+5UwSM56YJWkSv4FbBgdKrUZLq4SeWKHKP+Jj6xHP1F
	0HEQSfsn4Gl/nOSYg9b5LbJH14SQf4z+IWXfPSwWN8mUhWpombQezNTDVS7O3tWQ==
X-Received: by 2002:a05:600c:1595:b0:490:55d9:149a with SMTP id 5b1f17b1804b1-493e104d170mr977625e9.18.1783377394164;
        Mon, 06 Jul 2026 15:36:34 -0700 (PDT)
Received: from turbine.fritz.box (p5785b224.dip0.t-ipconnect.de. [87.133.178.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d6da9sm27491387f8f.12.2026.07.06.15.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 15:36:33 -0700 (PDT)
From: Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Frank Wang <frank.wang@rock-chips.com>,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Andreas Zdziarstek <andreas.zdziarstek@gmail.com>
Subject: [RFC PATCH v1 0/2] phy: rockchip: inno-usb2: fix USB gadget hot-plug on peripheral-only OTG ports
Date: Tue,  7 Jul 2026 00:36:25 +0200
Message-ID: <20260706223627.113814-1-andreas.zdziarstek@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_153636_662833_F45A1FCA 
X-CRM114-Status: GOOD (  21.62  )
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

Hi All,

I had an interesting time trying out the USB OTG micro-USB port on the
Odroid-M1S (Rockchip RK3566) on the mainline Kernel. My intention was to
set up a cdc_ncm+cdc_acm peripheral gadget as a hot-pluggable debug
port.

For the most part that went swimmingly. Just not quite with the
hot-plugging. The apparent first problem was that peripheral mode only
works if the host is connected at boot time of the RK3566 Kernel,
regardless if the dr_mode settings is "otg" or "peripheral". When no
connection is present at boot, gadget setup fails with a
"failed to enable ep0out" error and the port seems to end up in an
unrecoverable state afterwards.

I investigated a little as to why. With my very limited understanding
of the subsystems involved, I think I have identified some problems.
All seem largely related to each other.

* The M1S references its 5V OTG VBUS switch as phy-supply of the OTG
  port in its DT. The phy core unconditionally enables that on phy
  power_on. From then on it powers its own VBUSDET input, making further
  cable VBUS detection impossible. Also, apparently, after reading the
  schematic, that means even with a cable connected at boot (and
  peripheral mode therefore working), the board will try to back-power
  the host. Seems my host port is pretty robust, luckily.
* The inno-usb2 driver seems to generally lack DRP power supply VBUS
  switching support? At least PHY and VBUS supply are semantically
  treated the same.
* The inno-usb2 driver's state machine powers off the Phy in several
  places: on an initial no-VBUS sample, on DCP detection and on
  disconnect. That seems to happen unrelated to controller-initiated
  phy_power_on/off calls and looks like the main cause the gadget setup
  fails and then borks the controller state.

My proposed fixes are in two places:

* set the micro-USB M1S port to "peripheral" in DTS and remove the
  supply node. The board has two USB-A host ports, so device mode is the
  most likely usage scenario for the microUSB and real compliant DRP
  does not seem to be in the cards in the current state. Also, this
  fixes the potentially harmful back-powering issue. (2nd patch)
* keep the inno-usb2 phy driver from autonomously powering off when in
  peripheral mode. This makes hot-plugging and gadget-setup without a
  connected cable work. (1st patch)

This "works great for me". No issues whatsoever with the M1S in device
mode. I can plug/unplug/replug at will at any time, rock solid.

However, I am also doubting myself if I have completely misunderstood
the whole Dual-Role status quo and should have just done something
differently.

Also even if I am right about the problems, I would agree with anyone
saying that this isn't the "proper" fix for the whole situation. It
seems the rockchip vendor kernel is doing DRP related stuff differently,
e.g. an additional vbus-supply setting in DT with apparent support for
VBUS role-switching. Fully automatic OTG with gadget support *should*
be possible to do. Possibly a lot of work, though.

Still, I would say having a solid peripheral-only option including
hot-plugging is an improvement to the status-quo.

Host-only configs in other DTs should be unaffected as the inno-usb2
changes won't matter there. The autonomous power-off will still happen,
for better or worse.

Would love to get some insights on this from the experts.

Cheers,
Andy

Andreas Zdziarstek (2):
  phy: rockchip: inno-usb2: keep peripheral-only OTG port active
  arm64: dts: rockchip: fix gadget hot-plug on ODROID-M1S micro-USB

 .../boot/dts/rockchip/rk3566-odroid-m1s.dts   |  2 +-
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 27 +++++++++++++++----
 2 files changed, 23 insertions(+), 6 deletions(-)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
