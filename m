Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4EE5C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 19:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tawz0fEvcvbixj16mlWHlqmOYhdAE7h2mboA742x13U=; b=NryPnMv6l1a8vm
	fbQpNcxSuizAVg4j9f4VFBTYspaiVt9UCJuNjCYAPUL9OvTdb5uI12keJQm8ArUruqvpVTd2FtRMt
	sIsL+WCiHELj//i1vjkrK/KzgtCsTnLICf6CZOJRLbiUHBysc8TRLNM+kVozE2LUkX3O7DLcj/xAK
	3/SQul9yAMJtpbVLPqUMZQChE8gOgIzX2GpzPTLcmCPrEWQ4mtu3fJ09AOmYKoTFDOsUWd/3dX5rs
	oC70OZjF3HW6Rkom4+IUo432czxcZ28cfftr6+VPcjf0a0WE+apQvA9SSHV4Dy9pKIwq1oxPBJ1Bg
	Ic1+FT9Dzfm23ShYUXgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKhR-008NSB-6U; Tue, 10 Jan 2023 19:54:21 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKh7-008NOt-IW; Tue, 10 Jan 2023 19:54:03 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c7:6883:e501:329c:8425:8e97:eae9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 98A3F6602D8F;
	Tue, 10 Jan 2023 19:53:57 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673380437;
	bh=NifcOS43y+N68BurrSuB+JMF2pV8C2qpP/aWsRXSUKk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=N0fRjUzXMP3KKEK371KCiEY6xzuepwB3W220WKNzyE8Cl+fA2WBxL98pvTueApZV2
	 2UwtBaIFvF+beMw7bgIChN0ZL9GIJkjovDsoRv+odSa80yhywUJCLqZlHRCQ9nLNU/
	 bJBgfFgd0a1FNselkgwfbN5D6cUIF/RMdhcpWYypgqoO2Y68he8LfcBG4rtqO0uGDx
	 q0Bq0woKucT6tSEny8LypHxCldBJvhtIt/b7y4u7sYrbuMTsNwas5FVFgqjOKlO+sK
	 whLu5tV7MpD+SZooXqNWEq0X7wk0FyZ1HfW/ZoG9UQiR716POq0q1bdpUTtGzqGb9v
	 /iU3fmYCFlHfQ==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v2 2/3] arm64: dts: rockchip: Remove empty line from rock-5a
Date: Tue, 10 Jan 2023 19:53:51 +0000
Message-Id: <20230110195352.272360-3-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230110195352.272360-1-chris.obbard@collabora.com>
References: <20230110195352.272360-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_115401_871370_6C39BB4B 
X-CRM114-Status: UNSURE (   9.27  )
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

There is a line which is empty. Remove it.

Fixes: a4a8f1afb360 ("arm64: dts: rockchip: Add rock-5a board")
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index c85af1334c05..6432b586bf5a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -52,7 +52,6 @@ rtl8211f {
 		rtl8211f_rst: rtl8211f-rst {
 			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
-
 	};
 };
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
