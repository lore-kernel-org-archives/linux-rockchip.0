Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5454C3ABBF
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 May 2025 13:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+xmzNA0cYYoIF/fzc3lQIkDANqZl91OMrCqDT33g1Y=; b=EG4vQzYIx0zBC9
	pnbc1zC/4REkIMQKgrEEG0hye9KoaLLJmxNmj4w1hWVqnQ1gNU6fd6jHC4hDQ3z1xxbDcpu/1Lz/d
	NP540slTHce42/jEkNEMbbTuObLRod5995txlbFp1VJQeGAYSI6PtnB4I9nl+MAIGtnl39nCrl12v
	TPIuw25zdJpvJ0rj8AlL79dZRrdQtYnn7yjYj6nq79S/x8qyY7ypfF9gBTELheJLyXdIFLAubHkIP
	Cr6ipnKyd/DhgEiOxRaulV/DBo2kfB62Vl+abtR+Gpsvg/qy3dQiXh5DtNcmVFhrz8SfBfTn6DPka
	sB4FWgc7JQ9sWoEs7pfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCI1d-0000000C1yv-1NeF;
	Tue, 06 May 2025 13:07:57 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCFlr-0000000BbhX-47yY;
	Tue, 06 May 2025 10:43:33 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1746528200; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=BGG4TmAnG6+ywnboo774xVV7bpcy3rojy+zvDZ/saM9Q8tw2fZPcINHb+6pWmuClY/X8wEwlWO1wRWPZZ8lfQKaUTPXXbOljgJl3V9y35mP5uidG+elz+QHVR5ruvGZrewQA4Y3QuDsCzbcOWXUc61cAOJuPdmQqAysq58rIDMc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1746528200; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=zbj7FigzPl1wygMFk3E/KVSAQVl9deVtek5AIIz7Erg=; 
	b=H8l76H9flmzhmYbgRd4g8O9aAiyDK6dxko1ltX9TCtpQEbW2DCH4eCsm8IZVVQRSJxiSJm/13J175j8V3pjMNnH3hLEu9P7OK5KdFGdYiaie2Re4X7bS1+2Grpzp1Da6Ms/j0vjkxQAP8gse4B6acKNAtI+InrhoIT1iUT1OmEQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1746528200;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=zbj7FigzPl1wygMFk3E/KVSAQVl9deVtek5AIIz7Erg=;
	b=E2V2wqLHv8RMazfFo3M8f4FOY/Q3bNX7vKjPSp3b7yp5RA97JL5xVaGObdL7XCZy
	YQB/MFtqC912b+FjTxcbCwb3AGcg/PiRf1myucrLT+YCHU2wILWRC5GtSR0iRhmQ6xq
	qaptEZqwiHJkPAY3beDdwn1GkJQWKwqydUy1Oj5g=
Received: by mx.zohomail.com with SMTPS id 1746528198845647.6559446026723;
	Tue, 6 May 2025 03:43:18 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 06 May 2025 12:42:43 +0200
Subject: [PATCH v4 4/5] arm64: dts: rockchip: Enable HDMI audio on Sige5
MIME-Version: 1.0
Message-Id: <20250506-rk3576-sai-v4-4-a8b5f5733ceb@collabora.com>
References: <20250506-rk3576-sai-v4-0-a8b5f5733ceb@collabora.com>
In-Reply-To: <20250506-rk3576-sai-v4-0-a8b5f5733ceb@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Sugar Zhang <sugar.zhang@rock-chips.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_034332_086729_24BF5D83 
X-CRM114-Status: GOOD (  10.58  )
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
Cc: devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, Luca Ceresoli <luca.ceresoli@bootlin.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With the hdmi_sound node added to the base RK3576 SoC tree, we can now
enable it on the Sige5 SBC.

Do this, and also enable the corresponding SAI6 audio controller node.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
index 2c991ad974a95fe1995a8d15eaba3e7b07d4dfb6..b09e789c75c47fec7cf7e9810ab0dcca32d9404a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
@@ -275,6 +275,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &hdptxphy {
 	status = "okay";
 };
@@ -736,6 +740,10 @@ &sai1m0_sdi0
 	status = "okay";
 };
 
+&sai6 {
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	full-pwr-cycle-in-suspend;

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
