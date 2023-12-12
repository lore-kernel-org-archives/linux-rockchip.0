Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54636C4167D
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Dec 2023 12:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dTBHobOUO22S+iy17zPtvMqtATiiMPZ8GZZsRvWKWxQ=; b=2NE/F/7QxfAgi+
	g+j847JrAfb9Kyvv+haBn1Rh3jyRhDDY2Qb93I71X9B493+2z1F2/7lxm4tSKxuHWPVHAlWLwdm7s
	iKwqhCe4TVW0oVFnhfuAh2MsxqD8Q4i+1dzW4aDqBeVTqA21S9esPKWNyLPCaOOzF2jW/1lY+EaNk
	KTbeTeAzgQiiqcPI1avWLAHGKHQktac9XlYxFCLt6BZxSpkoJuFRkQ1EH8QkezOG8C56F0tlhBKJ8
	34itQZOgxnTrhhid3fqzCUSihAFe7MkOrtegQ8tzrWSX2kTTHFVUXZcZNVmzs5rXl/nT4JAwKgkXd
	TnXA1QyBE+3WsCJRw1+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD25s-00Bi69-0j;
	Tue, 12 Dec 2023 12:42:36 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rD25n-00Bi4z-2r;
	Tue, 12 Dec 2023 12:42:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=ZztcF
	4m8TPUVhvPQaLZh9GowClmn1CkB2GW7KAZDIzQ=; b=ACNoHcHmdMn4xjxZJYTnl
	RRtXmYGpwxWLLXJMIGyy6i0so2Hh93M1zDoT8JdtknoAUiakTzfbQ3WfjhNB8eIb
	uBqk0jKzkH4Vraa7HDRssNMMpwl1K61QyIH8bnW95ERSpK7If2l3jNo3QOGJwMgx
	rW0HNsmmWMSFz2lNRpthYQ=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g1-2 (Coremail) with SMTP id _____wAHjrkbVXhlFotZBA--.29150S2;
	Tue, 12 Dec 2023 20:42:06 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	sre@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v4 0/5] Add 2 rk3588 based boards from Cool Pi
Date: Tue, 12 Dec 2023 20:42:02 +0800
Message-Id: <20231212124202.1897238-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wAHjrkbVXhlFotZBA--.29150S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Kw17Ww45Jr1UJrW3urWUtwb_yoW8Cr1Upw
	n3CrZ8GFn7WFyxXFZIq3Z7Grs3Zwn5tay09rsxXFy2kr9IgF1UAFn3WwnxZ3sxG3W7Aayj
	gF1kKr47Kr1vqF7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0p_uc_UUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqB9EXmVOA6bhbwAAst
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231212_044232_388595_2013E637 
X-CRM114-Status: UNSURE (   9.93  )
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


This series add support for rk3588s based SBC Cool Pi 4B
and rk3588 based board Cool Pi CM5 EVB

Changes in v4:
- split pi-cm5 as a dtsi

Changes in v3:
- drop ununnecessary property status = "okay" for rtc
- reorder some nodes alphabetical
- remove disabled node
- Add compatible "coolpi,pi-cm5" for CM5
- drop ununnecessary property status = "okay" for backlight
- reorder some nodes alphabetical
- drop ununnecessary blank line

Changes in v2:
- change board compatible from "CoolPi 4 Model B" to "coolpi,pi-4b"
- change board compatible from "CoolPi 4 Model B" to "coolpi,pi-4b"
- drop ununnecessary property status = "okay" for gpio-led
- drop ununnecessary blank line
- change node name to rtc for hym8563
- change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"
- change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"

Andy Yan (5):
  dt-bindings: vendor-prefixes: Add Cool Pi
  dt-bindings: arm: rockchip: Add Cool Pi 4B
  arm64: dts: rockchip: Add support for rk3588s based board Cool Pi 4B
  dt-bindings: arm: rockchip: Add Cool Pi CM5
  arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5
    EVB

 .../devicetree/bindings/arm/rockchip.yaml     |  12 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    | 214 +++++
 .../boot/dts/rockchip/rk3588-coolpi-cm5.dtsi  | 659 ++++++++++++++
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 823 ++++++++++++++++++
 6 files changed, 1712 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
