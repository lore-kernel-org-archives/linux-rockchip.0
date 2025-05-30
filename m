Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EA52C54FB3
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 May 2025 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xcNcwvpMEyUbllxmN3S4IO07L6ykDgKgwljn6BrPcRg=; b=AzuMVxBXs+W2YI
	clD6E/Lo6KMMQlaWrczbk5sJ72cC/4YOBNLbuP+UamfODa+VHtoGB+WF6xHx7mH+iiWV0kLDU2Au5
	tu5UKHq7rlKQO7V822n7smvU2AQYXhJ7sgtrDVY+3Lay2HdBdQmI+GSXSHBrNQ25CwL3Ri0Py9iWp
	ejABZy/hxvrDikJa/5l8XooVOvOtGlTQjn2Z2OzbVORadZKnH8JxSYccKz4mht839dlCrUndOidCh
	vcerqZoGD+LA4M169/Vb2aU/UULgsMaYHF9dXS8mRCy/9fyCrEkWXb+opgZcD7FvkGQYtQNi/sarZ
	DTsZIQOiBrWBkLvfBNHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKq9N-0000000H0OG-0bdc;
	Fri, 30 May 2025 03:11:17 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKq9H-0000000H0KN-1t1X
	for linux-rockchip@lists.infradead.org;
	Fri, 30 May 2025 03:11:16 +0000
X-QQ-mid: zesmtpgz3t1748574651t1f688200
X-QQ-Originating-IP: 5OdztFYpI2CQ6CtR9zM4QisGTIm1CN/fzpZK7SrLLX8=
Received: from chainsx-ubuntu-server.lan ( [182.245.65.180])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 30 May 2025 11:10:49 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 5599866305784924053
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v5 0/2] Add support for Firefly Station-M3/ROC-RK3588S-PC
Date: Fri, 30 May 2025 11:10:44 +0800
Message-Id: <20250530031046.166202-1-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: NkkRVlbtkC301Tdt/mvciw6xJWmZKN5WZP9uzHl6Vvverl8wNllYu39C
	xPYAk9B3yzAXmSVx9VnGSDi48IgwYQhNpOrnB7GD70n06FqImPT2I8oia3zKbxWp/4Aw7Hh
	nW4md6ugNS2bSQMP0585rpxAoA5yN7FdCyuyx3uf+rzOkfjmOAcqn+YwMiBwsdSagRMb62U
	e8v+trAAZ6a1K++gSShnK7kmglAvpkU9h0wVH2V31aLv6BFxWBftqYWu/WPPjxUxXQrnYSu
	YUO4WJJHnmgK0HauGh2LrGVa39xCNvLALgHrGsWQZ2xk0L/CLxtBFd3NcaQt8yXx6f/xgOi
	2e82Vz7I93z/uDt9NkjeEAyF9Q+BKbVZiPJjt+NSHsDApMGsV9oRYQnwFIloM023SpJoI1W
	QnHal33ediQjDS9wdtNM587YYyN9pHahKYE0DEOJwnBjQAMtg18YnGWNKTGZv32VKSaTHj2
	5jPljO0XrdTYyH98KQF/aioq+jWO9qCezPvBJGLvRFOgF0Iq2o8AMVB5wo1e7EJsuuQ/ISv
	LXMvHUnKDO20Ri8SerSGN0kNtYMI0hMlV883wb29CDu2xdV5dw65LzXGs3iFlroyDuC9e4H
	miX50BUBVhB9XoM/INrcYe/T1HLP1EqBTf1ZtoKnKIFcwi7+KCxPV3aYWREoF2CQF9k/xo8
	L1L4mQVvwOJQOXvE8n9eDwH/GpQAAvTsAHsqHOd+hhlHopN+3uOR1FxKRpuWhk2fYdRpwui
	qRSfTXjoz8RomBcDDHjHjN8KHuWQrc/T4knQ5SLqDvKvejiyddTQabW0G0iYgAIpopVZJc7
	oXL3uDrlb4mTAUQQm8/if/ZbfvdU4NIkJrQwzfRG9z9yrF448qmInmWP1IzClos/PnYhWLr
	lqw8CJmp0kT5IJ1/7OBlHIFX4fRcTcgmhQiR7H3KWhJhMF9rr6txYKGSdGsHKB/Z98Fzt+p
	zq6G5NnE43NDDuzOpqL4Jm5oEn8ZjcvzmBgptsMsKJ3qn26ahs3VFEpeW30Tery1Bt2+G+i
	LYaJyHrA==
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_201112_066449_5F591532 
X-CRM114-Status: GOOD (  10.90  )
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
Cc: andrew@lunn.ch, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This series add support for Firefly Station-M3/ROC-RK3588S-PC.

Info of device can be found at:
https://wiki.t-firefly.com/en/Station-M3/index.html

Changes in v5:
- Make led-1 off by default (Chukun Pan, v4)
- Add color settings for led (Chukun Pan, v4)
- Remove vcc5v0_usbdcin
- Put enable/gpio before regulator (Chukun Pan, v4)
- Remove always-on and boot-on from vcc5v0_host (Chukun Pan, v4)
- Update the name of vbus_typec (Chukun Pan, v4)
- Remove always-on and boot-on from vbus5v0_typec (Chukun Pan, v4)
- Put pinctrl-names before pinctrl-0 (Chukun Pan, v4)
- Remove usb_con node
- Remove extra blank lines (Chukun Pan, v4)
- Add phy-supply for u2phy3_host (Chukun Pan, v4)

Changes in v4:
- Update the name of the regulator
- Remove the i2s5_8ch node

Changes in v3:
- Update the name of leds
- Add more cpu nodes
- Update mdio compatible
- Fix the order in the node
- Add the default serial port(uart2)
- Patch 1: Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>

Changes in v2:
- Fix rgmii delays

Changes in v1:
- Add support for Firefly ROC-RK3588S-PC

Hsun Lai (2):
  dt-bindings: arm: rockchip: Add Firefly ROC-RK3588S-PC
  arm64: dts: rockchip: add DTs for Firefly ROC-RK3588S-PC

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3588s-roc-pc.dts      | 838 ++++++++++++++++++
 3 files changed, 844 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
