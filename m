Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4082C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 21:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=um6wGxAy5O4rpmcfoKPAIk/5rl+TXP/BCIb+u49WZas=; b=j3Fou0Oj5Z6qFG
	5QH8w0EUKdWF72pn85rvMHkk5BytbIF4jzfvtPQgVIPEJUn9hjtMjDJpHfWpUAToF0G3eJAKZDQXA
	RMRtpDbMPcJmaB6Yd7LkRfOjYNLcz/u32/g+EX8MBlI1n91vSGd7Sbdgs2CxAOk6DQ7zZpttRWHHI
	5aA8drhJdz92EcsbZtrFGZTvNvobp6ClaprpWBxvlT/ghzGvcIYvL4YguxqSzsT3vm+6trQprbtLO
	AwDP3pBjZpdyzgN8tThCKbrRos/DOoJHJYMLyysrmy63wjzpsDopvaKwai+sIFXKr3gv1QRiT4wih
	CV+F3CEbvA0CA1xqrkpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n09CK-00BLU6-CM; Wed, 22 Dec 2021 21:30:56 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n09C6-00BLN5-9G; Wed, 22 Dec 2021 21:30:43 +0000
Received: by mail-ed1-x534.google.com with SMTP id j21so13589042edt.9;
 Wed, 22 Dec 2021 13:30:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=coEccP6zZM5PP15UOTxsrXWW0cXc+iHQhmE0IjhaoXA=;
 b=bcNp1CEVtu7v7nuRrlPp98+zljrvIF77G8t06sYR5Zbo9dNuEoLl786DxwhmBRTou7
 Ul0UGE3V24X+95XbTcaYLCenGf0afhvOn7j2CoGU342YbYljzOsziOPX9FaRy4i+vtdO
 GibmYZq50QT9z+VYfCDoCzAOrx+SWR/pWWFbnZtn/tLqdjFV8nhZ7/EMuMvAHH34T6JB
 avoOe7OEj9l83OVPt4yBA6VrmvY6uCqpkpNaEYYjSkq2V5FbH1RAdW66MLmrmYRKMkla
 R+6Q0SsGuEu3RbAv7UOZj/Lj5/AB8yDdjrK0rDjiiou5w6Fkkx3VJo6xBGRZ3++W6vXL
 X5Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=coEccP6zZM5PP15UOTxsrXWW0cXc+iHQhmE0IjhaoXA=;
 b=CP1oHvq9VqPbtZD4VoeCbHHUMdtELWn2Z7Ve7lA6wrgLUJRHQHEqkCmKBqSHKrKQeA
 Y1N4FVG4U5W8Wxbo8e4bMoJcXPW+qZAWA7xAZPnec3rI7NZGuG0oa2ZSB3a4gb4r5RPo
 bxL9GmfHCudF3BIEgHA/bHGoPiH6/trPLqetuR63aDEVsbIb97sFrmCiGCnQrhUDIbrz
 5+1S0bNTNvueOxlTjtDkpLo+B4oPHY21eQzOMbv+aI/RNseWqiQwfqHDgAB/ygKREwad
 daDd0nicN259zFUkv78SHy4hn09K9TrxsevLoMT+jGHGX3iNWLyCQDzZtbatFCYE1YiJ
 iSBw==
X-Gm-Message-State: AOAM5306sif7J4gdxyq1v8X58YaP2yk8hzAGZczPu9zatun0MOVh5CqD
 MQAAta7WxdqiZdSo/XAk8C89QUlfdboPMw==
X-Google-Smtp-Source: ABdhPJxvSWOETcPDqQj7WXzbmesiuA3Egb0BiA6ohcGR6dWmohDfq5vLRiZt97656OhB2eVMXPBc9w==
X-Received: by 2002:a17:906:37d3:: with SMTP id
 o19mr4162211ejc.32.1640208639816; 
 Wed, 22 Dec 2021 13:30:39 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ne2sm1087776ejc.108.2021.12.22.13.30.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 13:30:39 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 p.zabel@pengutronix.de, lee.jones@linaro.org, yifeng.zhao@rock-chips.com,
 kever.yang@rock-chips.com, cl@rock-chips.com,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [RFC PATCH v6 0/4] Add Naneng multi phy support for rk3568
Date: Wed, 22 Dec 2021 22:30:28 +0100
Message-Id: <20211222213032.7678-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_133042_355128_C3CF1ACD 
X-CRM114-Status: GOOD (  13.89  )
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

=============================================

TEST COMPILED ONLY!
Driver not verified with hardware!
Produced in the hope that we can get some review progress
with this serie for the documents and driver.
Use at your own risk!

Renamed the combi phy driver to multi phy to highlight the different approach and
not to confuse with the driver from the Rockchip manufacturer tree.
By using a parent node it makes it hopefully easier to coordinate
for new futures/functions between nodes.

Removed a few properties, because it's not entire clear how they should be used.
To prevent the obligation to keep supporting them despite changed handling.

=============================================

Changes in v6:
- restyle
- rename defines
- change from comb to multi phy
- clean up includes
- add parent node
- change compatible strings
- remove rockchip,sgmii-mac-sel support
- remove rockchip,dis-u3otg0-port support
- remove rockchip,dis-u3otg1-port support

Changes in v5:
- modify description for ssc and ext-refclk
- remove apb reset
- add rockchip_combphy_updatel()
- restyle

Changes in v4:
- restyle
- remove some minItems
- add more properties
- remove reset-names
- move #phy-cells
- add rockchip,rk3568-pipe-grf
- add rockchip,rk3568-pipe-phy-grf
- add devm_reset_control_array_get()
- remove clk structure
- change refclk DT parse
- change dev_err message
- add dot to phrase
- add ext_refclk variable
- add enable_ssc variable
- rename rockchip_combphy_param_write
- remove param_read
- replace rockchip-naneng-combphy driver name
- rename node name

Changes in v3:
- Using api devm_reset_control_get_optional_exclusive and dev_err_probe.
- Remove apb_rst.
- Redefine registers address.
- Move pipe_phy_grf0 to rk3568.dtsi

Changes in v2:
- Fix dtschema/dtc warnings/errors
- Using api devm_platform_get_and_ioremap_resource.
- Modify rockchip_combphy_set_Mode.
- Add some PHY registers definition.
- Move phy0 to rk3568.dtsi

Johan Jonker (1):
  dt-bindings: mfd: syscon: add naneng multi phy register compatible

Yifeng Zhao (3):
  dt-bindings: phy: rockchip: add naneng multi phy bindings
  phy: rockchip: add naneng multi phy for rk3568
  arm64: dts: rockchip: add naneng multi phy nodes for rk3568

 .../devicetree/bindings/mfd/syscon.yaml       |   2 +
 .../phy/phy-rockchip-naneng-multiphy.yaml     | 167 +++++
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      |   4 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |  23 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  50 ++
 drivers/phy/rockchip/Kconfig                  |   8 +
 drivers/phy/rockchip/Makefile                 |   1 +
 .../rockchip/phy-rockchip-naneng-multiphy.c   | 661 ++++++++++++++++++
 8 files changed, 916 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-multiphy.yaml
 create mode 100644 drivers/phy/rockchip/phy-rockchip-naneng-multiphy.c

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
