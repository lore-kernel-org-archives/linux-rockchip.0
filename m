Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B204C531C9
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 02:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nXiKAMFZsFT2GCiJyPEB6l6mQ5jNcrlYE800q2OkoZY=; b=39CNOdAEEPZM7d
	RzgNMe94tpiQ7/pefO/7Pfa4B+ifnPCYPD249bBziUG8kpAl4NBsFBwtRT7MGHONJxproqIg5uVKp
	2YB6UdZ+1ZwfalARllKafaM6HtAE35xQHBh7iWxT+wryU+8liboaK+zeLnc8mHQuOpVNtAXogOG58
	pMDJ5vbLoLYljQIK1rZjkaTAQ5SiIzc4A+0t2FdGimRHg8Xk+evGOczmf0i7TQrdSXl8WXm7Sb6ll
	PmyM4OGbS1e9Vuhgb6rNKiaswTBGMbYT8y12MlNddUZzed5w1OQgCrreSOm5EXbUCZfjRy/32CxWE
	cyjGIEBfyiCxxebU2k6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woAo2-00000001nc8-30ri;
	Mon, 27 Jul 2026 02:11:02 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woAo0-00000001nbO-2lg1
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 02:11:01 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-38e08baf860so2213062a91.2
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jul 2026 19:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785118259; x=1785723059; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=1WNF/t9pK2HwnPJWbDOD3dXmKgsh35CNG6w7c87mKE0=;
        b=dwCmuZxjg59AiXBusFyL7YxH70KQrGoLU0II1a1oVKd1L20FZGzlXBZg8BNPPPvxqY
         W1vIXmIufGaivYvJQOi70pRY7QW953hKbf9K3zXwK8q/Ox89Aq3dzQu4FLxVZ/r7Pi9R
         PzpNmGPbb5HMv9OzWGiEBBKHIGsTQ7FRRsHs2C6UwJnrdhu5otr/q3Xl98x7v9v82cZb
         jfr+vUFd7XIFveZsrM1BG4qDgI1p0CTXwrSMtaR13VzYlFzh2SMJnaj+smYVqjcXT5Cw
         7FDtgAIkNvlIBAfQn+C6/WatFpphWllwhhjafgsBaFgHQXFEBqEXn6SiIObiN6EyqOmE
         5N4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785118259; x=1785723059;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1WNF/t9pK2HwnPJWbDOD3dXmKgsh35CNG6w7c87mKE0=;
        b=B1yBQZDGnnAnWAph52vLv6rhwpw5Uf+b4+djvdBNWYGI0rSVCFJxiGJ9UpH+O1GGSv
         9XFKzvo3nqXlW7yd4lr8c7Oe2wtwT4dyyMFFtFEVLEjbAG1ra/mBfNBkVxJ/KNueupjk
         qAvUp1WKLpqFRev0dHg0kXY52RK8ksBkqzpXACXyZATZGmLU2N/mBAGHW/nPCBrvA/XC
         QBJYttxXMBmy/YJwKoH2+9Bj5tsaiuDSM6zE5TTAD0HuIv2EmqY8k00U+1qqLmGcNkFr
         T4QJpUq/INr59dcYTFodYr+oIBG25lpNfxRqYOuRowW22inTDrk6lgT+Oz+JTKI+4VrZ
         cv2A==
X-Forwarded-Encrypted: i=1; AHgh+RrEfZMZc/vTx8dkh3qeh017iuSWsW3YJFy2dSnjgJHZ8NxyhN3hHNm0W4/DJUjr2TdP6+TZ0PUgmT2pGmCpbA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwUdxgJVLWAKJgsU8fuSgI+lIqiwF9gP2cHwx5Z2BL5LJgQiCkm
	RiBZUJKNnTEx5gQy+E79sPy6Ix2HYKwAGezPe3oekZfLnUb0Ab5/8ayo
X-Gm-Gg: AR+sD10ArO4Gcx8jhT7kHTMS8ZmBaKKJM/kUkDnfWjK3dqGyzd6lhASRIm6aPHbD0uy
	UXA420LNVyYwgz8qkDNIIbKuhzwBmZGW0QOXVKTrEneTe9S2R4mq2yU+FI2yePF3Aq27VvxtQZw
	nqko58sGsVACHmmDpab4wHZmwhpu9yrs6X18IcgVkW/L0BG0iqJ7W8yFlKMzLFaJjNJzFfKglM9
	KdPzSNBx3QDbzGV7SarXXxBO6m6FSKkoG/wxHNS4GmEL5mn3h/V+dCAwzw3AcZWTUe1C9nDBUY/
	B5/6MpeDwVK+bljXtbufjNaygGgRDLbM6XSEtHWw+aSrhhzp/f8YCa+dVe4b+Xghx5Gi+fBpb6G
	4UXOgeN2fCPV6d1DH62mc0kjkqyystL1g+0TwaJge0A0Nj9ZyFxBFPzLt+ROPXWRnWM8npJS3gs
	y2Zl4a9rShiPRqNLX0Oh+XM1M=
X-Received: by 2002:a17:90b:2791:b0:38e:67e1:15b with SMTP id 98e67ed59e1d1-38f293cc2eemr6150209a91.6.1785118259380;
        Sun, 26 Jul 2026 19:10:59 -0700 (PDT)
Received: from attina.synaptics-inc.local ([199.33.119.15])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13e53094d65sm19162200c88.13.2026.07.26.19.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Jul 2026 19:10:58 -0700 (PDT)
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
Subject: [PATCH net-next 0/3] net: stmmac: dwmac-rk: add RK3576 GMAC 25M refout support
Date: Mon, 27 Jul 2026 10:10:44 +0800
Message-ID: <20260727021048.3375444-1-attinagaoxu@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_191100_697358_46635B4E 
X-CRM114-Status: GOOD (  10.87  )
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

Some Rockchip GMAC instances can provide a 25 MHz reference clock output
for an external RGMII PHY. Boards already describe the MAC clock direction
with clock_in_out = "output", but the dwmac-rk driver does not currently
request or enable the corresponding 25 MHz reference output clock.

On RK3576, this means the REFCLKO25M_GMACx_OUT clock may be disabled by
the common clock framework as unused, even though the board expects the
GMAC block to provide the PHY reference clock.

This series adds an optional "clk_mac_25m_refout" clock name to the
Rockchip DWMAC binding, wires it up for RK3576 GMAC0/GMAC1, and enables
it from the dwmac-rk driver when the MAC is configured for RGMII output
clock mode.

The clock remains optional, so existing device trees and SoCs are not
affected.

Tested on a PicoCOM RK3576 ACP board with a Motorcomm YT8521 PHY.
The GMAC 25 MHz reference clock output remains active and Ethernet works.

Gavin Gao (3):
  dt-bindings: net: rockchip-dwmac: Add 25M refout clock
  arm64: dts: rockchip: Add RK3576 GMAC 25M refout clocks
  net: stmmac: dwmac-rk: Enable RGMII 25M refout clock

 .../bindings/net/rockchip-dwmac.yaml          |  1 +
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      |  8 ++---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 33 ++++++++++++++++++-
 3 files changed, 37 insertions(+), 5 deletions(-)

-- 
2.55.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
