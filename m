Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E3ABCD98C8
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 08:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5FpNLaAG4dE1elPYYTldZQcS1Ko+KMxZgvT0RDKWo6U=; b=KIweseYbZg4uDz
	O5Prksna6MuFskvtvAkQym1IHP3pTdggQFwcNivfyBQtQ0yZm/+7AzzfT+WEuVMthKmLjX3A+o6LT
	I9zxFjG7wjqk9E4CN/vBvIXS4rUR2RCUg+pvFkU4/6aB5qq6cRXdSYOBsrrD17oVXUydry22o4eaM
	F3nuS0P59H2jdTc08qh+XJSZAzwtP/tXlNb8DiIz8SMkeHKN7eYTktLhm5RFIGXLOnlfeAM5DTnk3
	3S+qmuZ3Jf6zaiV9Gh4bIauFbSv0VecEUJVYog3BbkFIoFf+Qh/70+zqrePfo67SGAv+fpOPEIDMh
	2TnvVhrkxrObp48PsdIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXE4w-000000072J1-3XQw;
	Wed, 10 Jun 2026 08:14:26 +0000
Received: from out-177.mta1.migadu.com ([95.215.58.177])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXE4t-000000072Gf-3LyR
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 08:14:25 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1781079261;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4D3U0MJrq3HMALbVG4yy5LYGiwOLwK/bQQJ3BITNLwM=;
	b=NqlJu1XQMQhaZi7mQd/ZOpEchPr+6zrwj3xNiK+0D8Ko97FQl9fiDao64Tv2W03aTZOkM/
	PRrJn0gHWNAItsWzuKZ6Z88MV/dMcDUfjdsml+OG9OnOC0hA163TdPxEfxK8i7v0vT7ORH
	rhIxZWUJCEjFA4tMfM5bTE9k2BcE4C8UBVhmTXvMKA7aV6KOF8ugrlSkKr71PDTzwLwHDB
	5hOFtos5Ldd4PqC5j3DXZy0MiCwqIYWW/TJOu5H9kfLKIyrcT7QvRrIGH1Ee66OhZeDMSZ
	9YmnU7Wu8VSYL85dsLtmfDdpeSxSlGvcDaF/Rn17xBttHzxXNz/t+PpbOHW+7g==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
	Diederik de Haas <diederik@cknow-tech.com>,
	stable@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: Fix USB hub phy-supply config for NanoPC-T6 LTS
Date: Wed, 10 Jun 2026 10:04:06 +0200
Message-ID: <20260610081400.758687-3-diederik@cknow-tech.com>
In-Reply-To: <20260610081400.758687-1-diederik@cknow-tech.com>
References: <20260610081400.758687-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_011423_987090_47080AD3 
X-CRM114-Status: UNSURE (   9.35  )
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

The MTT USB 2.0 hub is connected to the SoC's USB20 HOST1, so the phy-supply
belongs to u2phy3_host, not u2phy2_host as that is for USB20 HOST0.

Fixes: db1dcbe5f752 ("arm64: dts: rockchip: add NanoPC-T6 LTS")
Cc: stable@vger.kernel.org
Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
index 0ee67ee24f3c..0e15a2e1f2ff 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
@@ -38,6 +38,6 @@ usb20_host_pwren: usb20-host-pwren {
 	};
 };
 
-&u2phy2_host {
+&u2phy3_host {
 	phy-supply = <&vcc5v0_usb20_host>;
 };
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
