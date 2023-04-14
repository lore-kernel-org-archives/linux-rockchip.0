Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EE02C77B70
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 09:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OBqQeB9pTGprqotzky/dw2hkHvNrxg1BJDK+tsKkNKA=; b=KvCpm5VAn3ehB5
	0jeQtdzSm3ImywBNWw7ow7uYeQO0VmWQh+jrnirQQLsjbZJphI4BKjZ7lC5cKIXaxJmjGjF1ldHmH
	kJxG37Gmd3FmECsJNNXSeRTHL2S3PlFeRPHxnSugbqP5QYIAZh9GIr16wFPaKYoAltxo+MvC2Jsrd
	71f1sGKG+TKRmhJVKMErW90W4Vmd3Gbm6jtHggUqFktfUPspMVTrxoMPDUXlgqkAPoT2xccyxr+yY
	Zp0K/4P/Ww75XZU+Z4/nPiS2ZidQ0UAIx4RfoK8PO6fMdAkrINiMktqK1vbj7siN26itOOvgzDIjf
	VVGq18klB5Vj4ScTiiSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnFp5-008sdj-2A;
	Fri, 14 Apr 2023 09:34:27 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnFoz-008sbf-2d;
	Fri, 14 Apr 2023 09:34:23 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id AEAD266031C6;
	Fri, 14 Apr 2023 10:34:15 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681464855;
	bh=M/Zt0EOj4LIQThEVbo30D78JWsDa3kNHxL7hcZHzi7E=;
	h=From:To:Cc:Subject:Date:From;
	b=Cd+LSSJOIQjJv3zflq8yIMpr4TqHH4Vg/BU0QGb+No+eNZb85JFOUKiIXXDgjZ6KJ
	 p8Y1xm94v5VDfaSECLXmVnJ9BZJrGx1cpn1DCz5HzBQPg7MvyTLGpyTUkgc0yWpk4l
	 9HGwIgFZxjxtUzdcMCmkpvj6u6xPOEu9mLiPzeGru+jPQhuKmlQiazYPaX9e3Gs8uC
	 TDJ5E/LNd9SMyMHMyKIROB0nnBzb844wJ0C5Eypc7/hkm7ccftOG7HPiv7B6gd904G
	 cyD9b1mHDyAzAc6FpQk25LgBN7RxwIUkwHcFhtoxP2Z/2wnoAl7OpyoHrKgw8kEMVn
	 C5WNCmQoRWo4g==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 0/3] Add regulators to Rock 5B's CPU big cores
Date: Fri, 14 Apr 2023 12:34:08 +0300
Message-Id: <20230414093411.113787-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_023422_000263_D0CE7E02 
X-CRM114-Status: UNSURE (   8.80  )
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

The CPU big cores on the Rock 5B board are powered by the RK8602/RK8603
regulators. Since the support for those regulators has been recently 
merged via [1], add the necessary device tree nodes and bind them to 
the corresponding CPU nodes.

Additionally, provide a couple of unrelated DTS fixes/improvements.

[1] https://lore.kernel.org/lkml/20230406194158.963352-1-cristian.ciocaltea@collabora.com/

Cristian Ciocaltea (3):
  arm64: dts: rockchip: Drop RTC clock-frequency on rk3588-rock-5b
  arm64: dts: rockchip: Use generic name for es8316 on rk3588-rock-5b
  arm64: dts: rockchip: Add vdd_cpu_big regulators to rk3588-rock-5b

 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 59 ++++++++++++++++++-
 1 file changed, 57 insertions(+), 2 deletions(-)

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
