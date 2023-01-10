Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EA27C54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 15:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oF0MwpkuKvj5BpGVf8JbnUKEQc6/wpr20B5W+f7aqno=; b=a1LkR5T5Y/HLQ6
	pmURLQ606OZPna0xuz2KPpRswykrNI1XfJBvHvCmA9OyS5rn9OCHt8uPv3fyfX39yY4IVOSwUD7bJ
	cbMeEZUYORuMZQHik/W+NdIv69D373DLFH1iRtf1AxNASHN/xCQ37fTBrglQeuWwLBd5+3iWjC3nZ
	yKfdGcWztNE3eE1BOdYyXUgjEguGvPEQdRw5P6CHUSocrJBUWBRGDn1dP7dNUX10pV7hFwj+Q7QZ5
	UzHeApN4kMvnVOsvp5MtTXJGBP39yHx1rBLXX6i35okejU/nW7xq/Qpa0ie84Opmdr0kRXE5M1zKh
	2ubAVq0C0KnSWkbVoopw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGwo-007g0x-In; Tue, 10 Jan 2023 15:53:58 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGvu-007fTc-GK; Tue, 10 Jan 2023 15:53:05 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c7:6883:e501:329c:8425:8e97:eae9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BC95C6602D81;
	Tue, 10 Jan 2023 15:52:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673365978;
	bh=37/eGoyWURxAWAvYGjV9ek4VQtScHfjgbrz67unm7Cg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kRn2WxT00nphHOBV0lgXu6r09P4TGCYkoxo1gcIACuWrtH6gkfrK9YupJCcNe22cp
	 sQuNA0XnAFSogJEsG1nxp7YxxiktWoiANHe1lmsczjpJQkPTTfrbUEAuk8EyPvGn7w
	 eBKvjPWjbTc6FXtXHfnuf8LUFwMdf3o3RoH3JU8h6YCRyKAE761d8jIYNW/1wLdk66
	 dNu9KkrEhwTkKdXNKzEgkS8xO3eys5pF5e/yY0S6hCotQwEnnm5eAc1Fih2Nj7KfXz
	 mMxg9xFcDvZqibmfQsono5ap4/vz1Y6aT/92tOZAsxpMuG492ooZbW5UYDC6pbdAx9
	 nKWCtWDdVPI+A==
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
Subject: [PATCH v1 1/3] arm64: dts: rockchip: Update sdhci alias for rock-5a
Date: Tue, 10 Jan 2023 15:52:50 +0000
Message-Id: <20230110155252.189300-2-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230110155252.189300-1-chris.obbard@collabora.com>
References: <20230110155252.189300-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_075302_783633_251701D7 
X-CRM114-Status: GOOD (  12.57  )
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

Fixes: a4a8f1afb360 ("arm64: dts: rockchip: Add rock-5a board")
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 409a43d059d8..c85af1334c05 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -11,7 +11,7 @@ / {
 	compatible = "radxa,rock-5a", "rockchip,rk3588s";
 
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
