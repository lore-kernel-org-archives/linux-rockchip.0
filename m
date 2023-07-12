Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 796A6EB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jul 2023 16:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=miGD+PbCbeZKxdYZgBRidhGMXQNeYB5GDAQUPbQS6nk=; b=wp8QZLwlLbTe8P
	mV8ydPvuG5IhTDXi3NWYd4PaSEdSKprd8siWkdAWitr1ZEgfnwWEyRs870Up119fsp+FC4h9Scgw3
	WCNl2ksCgBfMLWVsPCIF2h08Cm2pepeTD3myo+wrvqTdiS0PTxJHugL/ipOr2UWae3Bah7YGe9N5S
	MeDKcKb3+5cZsq9bnNvE9iPxJsEuews1mB97CHfFNbqD6FvXb1GBpFAPziymU9KwOc6wu8CXr/iKx
	Y7VsY3X/IS5odRnnxQEXoIixQoVBbbnlCPLvmhZdg6SQNL6A2fF7AwrWwWOZAf1d1T6/KVjtYCYLR
	kWg8qtV4A87637nt4sdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJd5C-000ezX-0Z;
	Wed, 12 Jul 2023 16:52:54 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJd57-000euQ-2c;
	Wed, 12 Jul 2023 16:52:51 +0000
Received: from jupiter.universe (dyndsl-091-248-191-111.ewe-ip-backbone.de [91.248.191.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E941D6606FEC;
	Wed, 12 Jul 2023 17:52:44 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689180765;
	bh=o5jGOCe3JrCIePhdA38C/esV4A5QqCAZDo9gwsQJ8E0=;
	h=From:To:Cc:Subject:Date:From;
	b=WcAqPxZhX7zAPB4mH9fCd/j4+8vpaij20ovYwitZidvoYe/yuCK1ui6TaMObwzFyr
	 T+AUyeui/zMalRo/mnoWszTQVMkZ4rQxEu0+L0R7imvp4RIfM/is11XEJMrmfC17c/
	 SSIUmyGyGXu5b0kKxlogY4N2fI/Le+XkUPvEMlN+Yj0NOvzBDcAa4gwpzVXKC9WqpK
	 h9HhQuStQ18izoCotrT2vpkxtNpC9kbwdGvYaOOm2jwX3kykv/8PXv1E9RNJoQcKL5
	 n+OvJmUdorvYCFPc6QVH32TAnmbABgGLqOcDSA9XPSEElVbKu50vtRXjifG5LYXJjN
	 A+qKiuwjRYrpA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 16FF2480592; Wed, 12 Jul 2023 18:52:43 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 0/4] RK3588 USB2 support
Date: Wed, 12 Jul 2023 18:51:02 +0200
Message-Id: <20230712165106.65603-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_095250_022305_38476CF8 
X-CRM114-Status: UNSURE (   8.44  )
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

Hi,

This adds USB2 support to Rock 5A, 5B and the EVB1. The necessary USB2 PHY
changes have been queued to the PHY tree and are available in linux-next.

-- Sebastian

Sebastian Reichel (4):
  arm64: dts: rockchip: rk3588: add USB2 support
  arm64: dts: rockchip: rk3588-evb1: add USB2
  arm64: dts: rockchip: rk3588-rock5b: add USB2
  arm64: dts: rockchip: rk3588s-rock5a: add USB2

 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 74 +++++++++++++++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 55 +++++++++++
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 78 +++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 94 +++++++++++++++++++
 4 files changed, 301 insertions(+)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
