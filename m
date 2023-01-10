Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FCC0C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 15:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pnpze7/4YjPIzcd4nS24fBuiwMIsqSE2h51da1ImiU=; b=4U/3qyxHdBWxPL
	sRyuY1TPTJQFREdCNSkd32rtEHfcQJp8N9rEd8nyq3uvFfz6hT3M1mpC3z0h8+BLQQmRTq5B4XGID
	bq9kqFcewdpbLgpJzJbJDUK7ClMCv/GfKu8tylniNY3cby/OK+K9JlLR8jsv/kBZtgFkuV9HYswVf
	+tMBb7yNjHwVtStCeh4TxAFl9DkoAjW2h4M2C7N5rqmtq3+kibtOOhNGgudpZU+g9unrAHHVPiFGc
	EDqU0z2RuOH1A/fz5g4GE5cGl34EHWkpZWNx65g6XuaKIlZX1JN1Q3sF1ZgLDZiqpEtplGJksFhGv
	5etRO7LtZkZfdvnpGSSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGwn-007g05-ID; Tue, 10 Jan 2023 15:53:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGvu-007fTr-G1; Tue, 10 Jan 2023 15:53:04 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c7:6883:e501:329c:8425:8e97:eae9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 34BD96602D8C;
	Tue, 10 Jan 2023 15:52:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673365979;
	bh=HGPm8usCmnU2uD/BuRoPEJSSk889DsjH2Tp5TOPZqMw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=NT9Vbkoxf2L5ZaPk8FS2cl5XJfmnt6po3uC7NuKz0yRJel16psP6G1HJY4WzT3oDt
	 cVM7LJaVImUqNWkEPtWve9uJ9iJD03P1l/zKIPD0FjnV42kYW+w9GWsoOerdlGMI0m
	 J6C1YpgMRGIl0mcHkJ/vL+raXMsTa4egEx+I9maTM87fCFsyTOBHkk73pKJDHndiYz
	 +19CDAALdMxK+eRw924lbINOTzD342hM9fBBUANInhmCix2BgIPOlyZDPwFv9culbW
	 gW3gridGAiUKUsUCMOiVVg5lCs9tenV5sLTyaEvY94u840/DJQRuFs99miiOEN+jYa
	 OWpyKtt8Bc/UQ==
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
Subject: [PATCH v1 3/3] arm64: dts: rockchip: Update sdhci alias for rock-5b
Date: Tue, 10 Jan 2023 15:52:52 +0000
Message-Id: <20230110155252.189300-4-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230110155252.189300-1-chris.obbard@collabora.com>
References: <20230110155252.189300-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_075302_774246_10BBCBAD 
X-CRM114-Status: GOOD (  12.77  )
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

In the previous version, the sdhci alias was set
to mmc1: an artifact leftover from the port from
vendor kernel. Update the alias to mmc0 to match
the device's boot order.

Fixes: 6fb2d1549786 ("arm64: dts: rockchip: Add rock-5b board")
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d2f1e963ce06..95805cb0adfa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -9,7 +9,7 @@ / {
 	compatible = "radxa,rock-5b", "rockchip,rk3588";
 
 	aliases {
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
 		serial2 = &uart2;
 	};
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
