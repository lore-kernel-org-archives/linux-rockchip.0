Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E842C46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 19:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qk1nJoDWR4tEXcucygiThFfcBk2bkmBJWky8lcSXwdg=; b=JPgOkr2lahUgfC
	4ZeG14Nmc1RONYVpVO4QnhCgMe1bnaDuKWXVtd3uApjpeNBkKlwu3U5vky5jgAr7Xz6xuYWWAa9XE
	iJySDIWSuoPCZZhp8eHTbnPUMx4bYbMkwkDh0jdKnKRrapMEkCspX8UVL23s8GysQu57KyaldcSbA
	tK1U822LGc3aPIwZ1IGBmSFraTuS/cw34cs7c75VamyY/sKowjzpvuaumjvUBl5T1HOL08j1HOyvy
	ex9OvESKMWUdImfhBqWIXPC3g1bfBe0dG5VEfAkLjPz6M5N7LlAL233LhCvN73VYHlBqqu69DKm+s
	6s0KgN3Vy1sLLb4MogZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKhZ-008NVx-MQ; Tue, 10 Jan 2023 19:54:29 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKh7-008NOv-IU; Tue, 10 Jan 2023 19:54:04 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c7:6883:e501:329c:8425:8e97:eae9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D21096602D93;
	Tue, 10 Jan 2023 19:53:57 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673380438;
	bh=DQ1lSSmLlKw1V2qE5V5/GrXF6T+Z9D5U9iRwAWX3sco=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PaxMQglptCncEgUmVaIoHY/w5I4emzip73uVg5J1MPZrLZfODx5o+wDyrhIy21VIq
	 QyrZ70GRR9Q5vgsRbVgdYF2mlNRuu20K2M2mShwqizAZ6Xlq6Yzeps5sRTW4HuvKeS
	 kOUhusrp3QVh+XbEIUhhO5tmxLKjALq0Md3Pj8ZNUK3cxFZr7H6jstBiIFtDTG+46x
	 zwMlFOVuCJFALG5iQCFLTOlESvPvgYZEmpQdhKFqhCLJsfuGD7geBOOmNIREwI1sWi
	 1WTFDv+9yNC+RN53e9mx+xY43tAocU6KkXsd6OU6TXstjz28VNggwI1b8U0ER7U8Fw
	 4A6AdS5FgL9HA==
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
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Update sdhci alias for rock-5b
Date: Tue, 10 Jan 2023 19:53:52 +0000
Message-Id: <20230110195352.272360-4-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230110195352.272360-1-chris.obbard@collabora.com>
References: <20230110195352.272360-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_115401_879636_28EA3457 
X-CRM114-Status: GOOD (  12.78  )
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

In the previous version, the sdhci alias was set to mmc1: an artifact
leftover from the port from vendor kernel. Update the alias to mmc0 to
match the device's boot order.

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
