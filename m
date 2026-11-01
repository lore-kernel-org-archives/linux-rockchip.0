Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA77606A33C
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 19:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ix5bnvxK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=LWfNsQzA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=dfYNvgBlZL+0RHKZhSRAAYvzVOPWTZl/Xf92+2nb2mE=; b=Ix5bnvxK8v/Rnb3w7V+XYRueM3
	uOMDSw8q40GDo6+y35WxT8SWTBhwnPAIvD49bp6XCtj1AyjmhasqoFWng4tL+64wJcHzegEoqH73g
	Xfnwzi84yVwKOWktr9Dr61IQyTiojS5mMcv/ug9ycPBULUx+g4cPK7aOXhA9Fxb40P6IFoo7hDxOk
	lQlpIB+5K9dRw4xNeqkSJdhz46MBPo8J4ElPudbfX6/kLC6UpXoMy/V7T3RUPl4pTEPBD7/7XIQsM
	DgZlhr6DUa2I5SxqPOZHUNvXNhwjyO24JrKd/06LgyurWoE+WeKf5cshomzIl1PL6pd9KITI7Jr7G
	6Tq7Hi+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNbFI-0000000Eoc6-17gR;
	Sun, 01 Nov 2026 19:29:36 +0000
Received: from mail-dy2-x08.google.com ([2607:f8b0:4864:36::8])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNbFG-0000000EobY-2wPO
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 19:29:35 +0000
Received: by mail-dy2-x08.google.com with SMTP id 5a478bee46e88-36758ba1f01so1182911eec.1
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Nov 2026 11:29:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793561373; x=1794166173; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=CGDnJpx3j3drQchpBAdAdBGb8yAOu+8mQ/5VXmFBbTQ=;
        b=LWfNsQzAg9dAs8QV6V8QKlhJDgzZZPNcUmPJ5MKl4ewdifgSaVX1AUXCEIHdB2vNHQ
         Q8nLUEQfAD0tnPFD8uZn8IcDDQyPEfeoh0ZfIbrouFY7g9VafMkCwLeOvb4aE0v+NtKj
         yIwPS/kc0cl6CyMRV4SzoQgIIDgt84mfAlGBXADFZ/+We9yyHpN579YTC5hHvGddQq12
         MAQjVUqoTS5Rx7LTsYKumm9b3BDSbg25WbmjvsxQabIRBOY0uPxSXBshEWVDFyfZTPHU
         PovOu97VDFNatHBJX1GVZaAhxysW+QGmsgxOt7FM+vyqCHZ//VD7OcaIPDLcjdpoSmZ3
         wHDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793561373; x=1794166173;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CGDnJpx3j3drQchpBAdAdBGb8yAOu+8mQ/5VXmFBbTQ=;
        b=KdSryHmD5w75gKJ2cShhhmlXyVy/v4leW5TM8UDZbfRMEKjsePIpwYZuDWSujJVc6c
         th0zx6Rp8/vTIOmfoRL/4Zmug/LI/i0msyIkFJQIVeew6zDnKAhpSo5463uiyVX45gpf
         HD9vJ2xqye4NJ1I/j4VygVpVqpMLo4Tw1mctvZBDltWCMOrqkfS4rxNhWtFVXtT6A/WY
         dRkqo1n3eIosNf6U2lGLKDJ07TjFIc84lJwumYm0ZsOD6L/Ls0TDE42Pvmftq6OweCb5
         vJ5P1wAY8obeIZtXmUZwB3rWtc8iRG3u/a4l3Y9p4W08rCTzm4B4FERqpWrR6iRz5aVN
         Yfww==
X-Forwarded-Encrypted: i=1; AKwUvBxHQ9iG3WvPiO0cOOhxpRcvKq77xaQ2KiQxTig+tfQNtGcGTaXIG2siYbDyxtDui91ZQtnyJaKGmqrtWU8LRw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/KeUFgZMc8HvC1zxh3DlEYDT/0W4R02mR/jWlRhGTdfBlTiaZ6
	lM4wMp7MizkQzfFuo0yK0zzvLkURrZE7ORJ2lbpA2H9OdKYOGJDgyRuj
X-Gm-Gg: AYBFou04XOp1zk5aniBxSVm801GraFUzZO6LaDN/OzwRJZqz8MIYJf/doS/VD8jJkv0
	DLo0cH068hj8Qj1sO0gzwlNBm0o8ewCtyuzYHdeam3vPffpDvocayDE+RrHZsSxlIGmVu7KZ9/B
	7m5j+j++J0n1caf2jCwpYkeU5cOlp/mxNS3vqJntW22ygci5ElR3FOIxJXu13ybyUvvDzKCuYYF
	idUc50VNZ2InGGp6hzw7aggJ0lBz0tdXXPQ3rXzueAaJ1nQSHIL6AGrDy8YfnBtpYrLk61P8bjf
	fX4ilGICEKU7r9SJFJgUMLNHdRPxZHMjxu7Ex0uFMY3DJuIrEAkFQqjjyZfRyIt7mTiNaV/K6xy
	LVTJZnas98p815T1CGk1vNBmoy5YFK6x6/0seIW2EVdNP00IjerhLp57OHlxLo4b1rCrqAI1AtV
	sQ7RtdGf9qxOwxyvy3VaAEydoZyNWh9vc7I4+U9frtQjIEGRieZE/e2rMMj9dC2+GmEy7TwetpH
	zNBM5msc0BJdIaAKTDrqfP5fim9YwGPnvj4c1U0+omHy3AfkGtAtnWgS/JmvkMGupmZE3o82gFE
	VCbG2JIhg8en2nTOKUppSx6IzxP1PbuqyxCpAYSCOnLrHSc7
X-Received: by 2002:a05:7300:8251:b0:36a:1a65:ebd3 with SMTP id 5a478bee46e88-36a4237d4a7mr11951653eec.18.1793561373232;
        Sun, 01 Nov 2026 11:29:33 -0800 (PST)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36a428af1dfsm31471861eec.7.2026.11.01.11.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2026 11:29:32 -0800 (PST)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Frank Wunderlich <frank-w@public-files.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Junhao Xie <bigfoot@classfun.cn>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH 0/5] arm64: dts: rockchip: fix GMAC clocks and USB OTG power on RK3568 boards
Date: Mon,  2 Nov 2026 03:28:02 +0800
Message-ID: <20261101192807.897562-1-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_112934_731477_C6260CA8 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series fixes two classes of board-level issues found while
bringing up several RK3568 boards.

The first four patches address GMAC clock parents. On these boards the
DTS lists SCLK_GMACx in assigned-clocks but only provides a parent for
SCLK_GMACx_RX_TX, so SCLK_GMACx keeps whatever parent the bootloader or
the hardware reset left. Add CLK_MACx_2TOP explicitly so the GMAC main
clock always comes from the internal source. BPI-R2 Pro additionally
describes clock_in_out wrongly ("input" while the port is a fixed-link
with no external 125 MHz clock); switch it to "output" to match the
hardware. On RK3568 clock_in_out does not change the hardware clock
routing today, so that part is a description fix.

The last patch fixes USB OTG power on the Ariaboard Photonicat. On
battery power the USB port is dead because usb2phy0_otg is fed from a
regulator that only exists when the DC input is present. Add a boost
regulator gated by the existing vcc5v0_usb30_otg0 rail and switch the
PHY supply to it, restoring USB host functionality on battery.
---
Coia Prant (5):
  arm64: dts: rockchip: fix GMAC clock parents on 9Tripod X3568 v4
  arm64: dts: rockchip: fix GMAC clock parents on Graperain G3568 v2
  arm64: dts: rockchip: fix GMAC clock setup on BPI-R2 Pro
  arm64: dts: rockchip: fix GMAC clock parent on Photonicat
  arm64: dts: rockchip: fix USB OTG power on Photonicat in battery mode

 .../dts/rockchip/rk3568-9tripod-x3568-v4.dts  |  4 ++--
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   |  4 +++-
 .../rockchip/rk3568-graperain-g3568-v2.dts    |  4 ++--
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 21 +++++++++++++++++--
 4 files changed, 26 insertions(+), 7 deletions(-)

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
