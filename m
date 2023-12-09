Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E64B1C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Dec 2023 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z9NspyerL4nuoLfrP+gvM+kAC0P87KdFOTxh01/Lbm4=; b=Vbmerp/n0RCxYg
	KssdrCFbewTHKEd993UwOSDBa/V7TSd0brOvHANSwJd25Yy2YCMhFUcNXw6Gd23AxTTmv5MZ3VH7P
	bCRobHbDA6czMUUqFUZZ2rW4tge8ycMpQ4oQ33R87Ycy9JpOLpJGUQMUDqVwSXx4Guwzkord8H5w1
	9Sgis8UiRfrIoUVmdMHiDSfwdAwYBFjmO5Q2AT43/mFhBaOGKeMbjwA4tgxc0MBYsoMP/Eo8iUvMq
	eAyTs6W7CbwYpEN8W20A+Y1Iqs3My+zMIbNk2JKYfahkV9CsG0zmrNumyyu9NuiKhRIxDQ5AIXsoX
	AJgKlptGeVYmM4f/h2Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBuhh-00HRMs-2o;
	Sat, 09 Dec 2023 10:37:01 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBuhf-00HRM2-03;
	Sat, 09 Dec 2023 10:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=nxvyC
	PtBJqxL4mpNye7FAQBb1F7oftR/O+wCgJF/VlQ=; b=criHcOo2SC/p1+6OQQ5jD
	Yyj46C4pUyOlSmKTprldB0jbfr+QPzYAZU8rEOy0rZtvqJTXHTfVPgLFrs1doLVS
	kLKQyIQ2xRaihdx9DdR/MhDpW/AqINqyXytd/ku6ZzpBgKsJRB0HVoQPet13GwJK
	Yg+F5FyXnw9TmhXpNI+Z3w=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-4 (Coremail) with SMTP id _____wDXD4AoQ3RlNopIFA--.47691S2;
	Sat, 09 Dec 2023 18:36:28 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 0/5] Add 2 rk3588 based boards from Cool Pi
Date: Sat,  9 Dec 2023 18:36:22 +0800
Message-Id: <20231209103622.1568289-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDXD4AoQ3RlNopIFA--.47691S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKFWkCw15Jw1UKw4xGFy7GFg_yoWfCrX_Ka
	yxWryDZa18ZF1Ygas8tw4xGrZrJ3y29rs3Ka45ZF1vqFyDJw1xJayrta4aq3W8AF17uw1x
	Jr48XF1kJw15CjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRWSoJUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnBBBXlghl5vO6gAAsC
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231209_023659_439368_7D3EB487 
X-CRM114-Status: UNSURE (   7.81  )
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


Andy Yan (5):
  dt-bindings: vendor-prefixes: Add Cool Pi
  dt-bindings: arm: rockchip: Add Cool Pi 4B
  arm64: dts: rockchip: Add support for rk3588s based board CoolPi 4B
  dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
  arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5
    EVB

 .../devicetree/bindings/arm/rockchip.yaml     |  10 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    | 887 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   | 850 +++++++++++++++++
 5 files changed, 1751 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
