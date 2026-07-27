Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51068C53209
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 02:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+ko7p2aubrCJAGwkudZkynhdrlBvxxZDym8DIbFuIw=; b=QTiAeqBYrsYne5
	d6NBgywG1kkFyTlLguhnFsbRV7QYP4BcEB6G1HzN9okdokj6pjgvRzxpokPPWw8sDp3/QqR9wSV7i
	ol5vbfO8ElsTgttCNPkstDmERhMy6R4J6Ud2SdB3ow3VsBoY7b9YQzVu7Mi3b7VGCUSnBTL3rV5MU
	plNShwBy1C9AZiUzS8lsP2KwW9FD7fbKMKtAjEM8zk0OXZvzEkYrNqajOrXdv5e9F9VRYjyfr6z/A
	U10/nd7WO8aCNqoGqYb34IQCcXj2lI1V4e9CxF8KGPX8Z80ynUxNuVmhsbgyysjVG2q2cjJkI2fs8
	kvxiv09Utp+jY/PIZ4qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woAoA-00000001neP-3WJG;
	Mon, 27 Jul 2026 02:11:10 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woAo8-00000001ndP-43Ss
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 02:11:10 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2ceab75934dso27048495ad.2
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jul 2026 19:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785118268; x=1785723068; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bdXlW+/ogTDXuEYnIcppIc28hzmU6+dYC2I3iGVVVgs=;
        b=VCxLWNBJaxgJVuHN159NiUwWRpavQJkVWTEjYst0V8wef0CEa0R7IVFWxN1j+ZoZOE
         9NgAm+yOFIzGHg0XZxgnZx3K7GD7qz3fVIv3/tIZfgtTUp3SPQqYgq0R4GjGC06V5g6h
         JweLDG5auY4l9qGDa0X5zBa/8hhGB1xju7inZigleWpsYuzFQ6p+Ofhw89TcXuhtS6Xa
         sLDe/oQn+5rM6PrVt9780k5pFBS5zcTb5O5HfTAqPbUtNPfxvfmND2QJEZA9qbEgM5aE
         eOc1Uk1cfaM/CEbalKU8tamu//s6B5ZljD/wBMqHpmCdFQF+/NhFxycqXphM3uPfyvjS
         iI4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785118268; x=1785723068;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=bdXlW+/ogTDXuEYnIcppIc28hzmU6+dYC2I3iGVVVgs=;
        b=gMIlTVw9oxzcPU476Z5JOUdCGxEtWZRK8nr72k7JxseV4Uzjbl54UHuziYI7KmR9X5
         825A1pZbgsNJ6vC34/5VZJ3nPFnSehLz+yRKADvkRm6Ep154snKiDIwajYspYaZ2RjfV
         SR79J65djzVQM7cpvZpbM9kEMLxt5p46WDLyCvtClFhPkDvXE9sjxyIqxInEdQAUGFz/
         qGtxkeM0YjureVrSfF4C0UoTzJNcwUxQHzsoRkn8Ft44/pZdR8146OlaWagEkVTBhy+R
         1qDQ+bFzV9tp3yI6rGPvb7BcoiysJfws0sbihC9HHFU9PAcw4qHwrmLvWlxvDSR41akq
         H+EQ==
X-Forwarded-Encrypted: i=1; AHgh+RoeQtComQKaV2JEhvQe5vUuBuppHExwMRoI1bUU6DzlLzEF0rZO93Fqn2f/ZGu+icAofGzpRIiu+uORJNaYUg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxxzM7P4yvbZGMn+0dNDP8sqyl9yqLxG1qe3O3763k7OtKmv5yF
	o9fxkSOUHJIJJSdvr6ItG16tfm6euvjT1nxXMp1wDB+Z7UTc7/Tn4LrV
X-Gm-Gg: AR+sD13rJcR4sSt7iGd28B9Ov4C+rBj3nbkZiwWMAydepmuoL56sMJFnDS26hCBUTT0
	593MUw0VM9OlOAM75Zd3PDwSmmh45mG60Eg9WsXjeZFJYOrFhLNpM3Bo5DmkS6v1OYOkW3bgsoG
	D/+EALQ+0oQPATc1TZmPMonrWhpC2r+ti4M0BKWuoXlCrIjme+a4l6qOWhJPxEUo6G8WToDOLI6
	O9HaGih6PE/37mhuvawW4eHtfe3BmUzx0UWJ5bfoUJLabsmAOKNMucByqPyAi/iqyOhNHoPSVhs
	QJOcDBzBk+gRgFOOdph4BEPco4ExuT6Vw2E6xpeth5oYnTfRkFBBYXx8vg13Msuh7a/lK9FJMS4
	8DFRcDQvtJMLDenOqEkiElx1EOLrQ/MnSJ+az4thUd6mRYtWkEBZGy6QNgA5WSYjNWGC4IyEzJ6
	QJDtQkKIFRlQ7K13OxioKpgVE=
X-Received: by 2002:a05:6300:85:b0:3bf:983d:e9b4 with SMTP id adf61e73a8af0-3c67ddc3cabmr6375253637.33.1785118268171;
        Sun, 26 Jul 2026 19:11:08 -0700 (PDT)
Received: from attina.synaptics-inc.local ([199.33.119.15])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13e53094d65sm19162200c88.13.2026.07.26.19.10.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jul 2026 19:11:07 -0700 (PDT)
From: Gavin Gao <attinagaoxu@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	richardcochran@gmail.com,
	nicolas.frattaroli@collabora.com,
	sebastian.reichel@collabora.com,
	sashal@kernel.org,
	alchark@gmail.com,
	chaoyi.chen@rock-chips.com,
	attinagaoxu@gmail.com,
	amadeus@jmu.edu.cn,
	rmk+kernel@armlinux.org.uk,
	horms@kernel.org,
	alok.a.tiwari@oracle.com,
	david.wu@rock-chips.com,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH net-next 1/3] dt-bindings: net: rockchip-dwmac: Add 25M refout clock
Date: Mon, 27 Jul 2026 10:10:45 +0800
Message-ID: <20260727021048.3375444-2-attinagaoxu@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260727021048.3375444-1-attinagaoxu@gmail.com>
References: <20260727021048.3375444-1-attinagaoxu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_191109_013962_125AEB49 
X-CRM114-Status: UNSURE (   8.40  )
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

Some Rockchip GMAC instances can provide a 25 MHz reference clock output
for an external RGMII PHY.

Add a clock name for this 25 MHz reference output so SoC dtsi files can
describe it separately from the existing MAC reference clocks.

Signed-off-by: Gavin Gao <attinagaoxu@gmail.com>
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 0ac7c4b47d6b..074ac274f2e0 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -81,6 +81,7 @@ properties:
         - pclk_mac
         - clk_mac_ref
         - clk_mac_refout
+        - clk_mac_25m_refout
         - clk_mac_speed
 
   clock_in_out:
-- 
2.55.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
