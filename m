Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B645C5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 11:32:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xcNcwvpMEyUbllxmN3S4IO07L6ykDgKgwljn6BrPcRg=; b=13NvJs32VFHfpJ
	zfGXRxHfGDxDMhmzRy+w4qL3PdZTmqFFrAz7ftytgLtxQP95H/2qyHHv8VefZZXfU4tKa38/tgMkv
	lFOmbDM2w2IVldO3neH5caqSdWGm2Yz2XrEwJxWG6Daj6XcA9kbcLZi3a9IASyji59PbIQ1zICj1H
	eoFXNWYlzHnOJrOioiUbMD+RBNIOrwZ1DqSahLZ4lNoWc7jrfsmY3R/wIfm9HYuFUYewJ6VWwoRJz
	Vb74zhtwYCM2HyOZhvIvFGjdb4//8V2pVSA45itxMNVwu5fdqbqmUBUWHk2B3YkxWeH4u9oraH50f
	HMyDjenM+W2qbLrSUVkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOakD-000000041st-0GnT;
	Mon, 09 Jun 2025 11:32:49 +0000
Received: from smtpbg151.qq.com ([18.169.211.239])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOaid-000000041gJ-0mun
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Jun 2025 11:31:14 +0000
X-QQ-mid: zesmtpgz1t1749468649t03990109
X-QQ-Originating-IP: DgbvBjSokVTQG43IbUieazUxITiBXvTzFEVmAUCGFIk=
Received: from chainsx-ubuntu-server.lan ( [182.245.65.180])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 09 Jun 2025 19:30:47 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9665082274307116488
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [RESEND PATCH v5 0/2] Add support for Firefly Station-M3/ROC-RK3588S-PC
Date: Mon,  9 Jun 2025 19:30:42 +0800
Message-Id: <20250609113044.8846-1-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: MjlOSqg8Riw0yiHnc7w/miRMh0pW4B5/XCjNIs6r0zyd6XZwtH/XQn3c
	CDfYXtiUiEdlCpE8HXNfMGKVah4VLoosN+3xUsKZKOaK3sYXscneRKNClatFbxe4jF3iPRM
	TdfrtB9HDneMnNFb/roBi4i+LgZL3DEgU0OB5Ugxa3Vw6OPtpetVlz/8ba19KVv2U/rsdcs
	UF7FV+g5+TbuvXjplfDBWBYrH0zkWdYgsVFrfeDXzuksi/4HPaH3PNGHgnn51N0AGx/BwPJ
	+X22OuGLAHg2lAwI19L/B+sV7zq2BBP7zXg0hGphvALug/3hNR8tVtqnoBmJfAykxiUnniU
	qVzHjlHZ5FtJ/6DP2AYpw4KeSjphHWsobN4LnHzGkAjD2aZ7XVTX6yXrECulGXivgV29WZo
	36da4I+ZAF012AsbTMQICDVp19hcr+sfirnf93qJYw+Q14XzObhEYwl4lbqt5aCm+J4jpaL
	Dp9Ei9j96LXokNGWPspYB9koUZhmG1aNXRz9JFfPwkG71A1o6d919BFRQ9gjulnq7ugI4sl
	HaWkGRhMgHOkK0/B/gW0YZXYhEQkuiKfueA3PQZq9cinss4XSH4MiYYZPZAhGYJypTOydDQ
	WPt7vHJ0RBhHzoPMD8J+aFWEGbs4hGc4gI3kCOQpAjRDx/e3cRVBpr3YW4c6zrScOLa9Cvo
	QB9DOwn0NAtEECzpmrLgz173J1oTa/DrC2fJCggKyFWnj9AEKZ9P+w3AQk+YSYH1rCkBP4c
	VAdbPjIMR++Wn3Clrg+yTe5J31gYkeq90s9FhOLAGEbYT3F2MYTCZV0qGYDl0m8f25P9O0q
	tG7xJOXc7b138GL0X0017Fupz7N/C0RAkQ2OoigRQmVT1YpYjnaJls8MGDuhr2JuzVXiPA5
	B6EdS43Hut88qq6oIv8DweRTKPu8cIoa2EtYKhSnNKKN1ArI4tKM+jbU9Hau2mr75zRZPkE
	DFHwv7LBFAi6Ay3DzLTyE5Xu2PLU3kaHIrQiQjVJHAxMRLgMNdapI0OBW5Urxlta5IP8=
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_043111_786534_5ED88E02 
X-CRM114-Status: GOOD (  10.26  )
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
