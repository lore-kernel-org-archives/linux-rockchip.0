Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 393BCC46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Dec 2023 11:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cORHLESLEIdLP/1r8CNfZrVWi1/0iltbAwkN2S66n6Y=; b=zCMIIN8BLJ+b66
	fmN89WwVG5d9eePDLa6JoglG/edeWWF8DgbegcSqj4W13CJg7cptAv3L1+im2syiLwL7TBQ7XZSEt
	sr44PXse4EkZpFFSh1whEj4+pydKkbngmfdsT9AQjQP2hR1pBxlf9W6ql8fOy44fBT7tBZrE0nDoW
	jkEZQnHalird2gmA3lMrl20yzngcg7zscOkrOLkfeaSMSUqDZzDHR5wqs1xXJqOIQ1zdsq8tIY4hu
	9Ki1k+btDNx3mfSulX0Qvro5w+6lnKk4BlBUACElPPOsmicw/NB1H1EIL10Kbx0pKNMX0qUfIAmZ8
	qNIb95e2u4nYf/WphgPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rJXMO-002c5n-0r;
	Sat, 30 Dec 2023 11:18:32 +0000
Received: from forward101c.mail.yandex.net ([2a02:6b8:c03:500:1:45:d181:d101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rJXMK-002bzh-34;
	Sat, 30 Dec 2023 11:18:30 +0000
Received: from mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net [IPv6:2a02:6b8:c12:12ac:0:640:b64e:0])
	by forward101c.mail.yandex.net (Yandex) with ESMTP id 5534360911;
	Sat, 30 Dec 2023 14:18:16 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 3IVUxO8g5Ko0-nZJ5XVfj;
	Sat, 30 Dec 2023 14:18:15 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1703935095; bh=BkLXxvkZcvlWzWwt5EukMwaJ6+KICat66IUTEiv4y1Y=;
	h=Message-ID:Date:Cc:Subject:To:From;
	b=uh7D3nPXvD5cJR2HJ/2mZATHQyI3x116PPhqevg22Jc1qmJlFoIWmbPW5gUtaUpYD
	 4maKQJDgkKnFBg0cdd/s1ONMABLoX7eCG+n29SFxGGK9+/WAb7rRt56C5Lne7PNBtJ
	 HBXgDAZDl7TQk/XPoZqeT7hxd+W2q+O4GkVDe0Ac=
Authentication-Results: mail-nwsmtp-smtp-production-main-46.myt.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: efectn@6tel.net
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	inindev@gmail.com,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: [PATCH v2 0/3] Add Support for NanoPi R6S and R6C boards
Date: Sat, 30 Dec 2023 14:17:58 +0300
Message-ID: <cover.1703934548.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231230_031829_199775_C1E7353B 
X-CRM114-Status: GOOD (  10.10  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Hi, this series add support for RK3588S based NanoPi R6S and R6C boards.

Changes on v2:
* Add commit message to dt-bindings patch.
* Fix dtbs_check warnings.
* Rename vcc_3v3_s0 -> avcc_3v3_s0 and create new fixed vcc_3v3_s0 regulator.
* Rename vdd_ddr_pll_s0 -> avdd_ddr_pll_s0.
* Rename vdd_0v85_s0 -> avdd_0v85_s0.
* Fix rk806_dvs1_null and rk806_dvs2_null on pmic node.
* Add system-power-controller property to pmic node.

Muhammed Efe Cetin (3):
  dt-bindings: arm: rockchip: Add NanoPi R6 series boards
  arm64: dts: rockchip: Add support for NanoPi R6S
  arm64: dts: rockchip: Add support for NanoPi R6C

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   2 +
 .../boot/dts/rockchip/rk3588s-nanopi-r6c.dts  |  14 +
 .../boot/dts/rockchip/rk3588s-nanopi-r6s.dts  | 764 ++++++++++++++++++
 4 files changed, 787 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6c.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6s.dts

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
