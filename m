Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DF05C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UHSPK6FOHGKBSH9YKEcjAyOKbEtfzYo2TGyNBXDOEH4=; b=H4W19OU48dQfDP
	+povEs6vRmBQlrQn1XNLvtF5c+N82F7XcJ767xfVL+9i9EN2PKNcRs2YuCKWHMb42gbWg4ym9xih7
	b8CHGgYbtgFVjIAlgLZaIYveY2YpPYIIsk+fjgtekiSxfybjp7rayBkEZ32RGwvJSH7hRz4HF0KN+
	iZHLM4dnnHmDP/lnn1VQIgz/prdhdKiyI5ah+LvmBvXG9stZ14grObIlOeAG8XAAZq1irKTeIH6f9
	ZZJIPsjFV62NqND/id9P9leCd8cTuQGcTvY8pPTlGjlEIAugVAR03Y4pGIsEe2PwhT7PRfsPkTkR2
	bxBblYhic8Ka2eEBSyhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDLTJ-00000003Mij-3Rka;
	Fri, 09 May 2025 11:00:53 +0000
Received: from out28-195.mail.aliyun.com ([115.124.28.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDKkO-00000003EEB-2zi1;
	Fri, 09 May 2025 10:14:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=coolkit.cn; s=default;
	t=1746785664; h=From:To:Subject:Date:Message-Id:MIME-Version;
	bh=Gs19F+1WIkB6GNDNJjv2vHXESzCcZJhcfuVCqnf0BsQ=;
	b=hMqgCNJmZZfcBmIj3FRXHgWMGhcjvpkReWKTrVZWMxTXy/3Kbex+C+DCJfdTHjsC+W1t7FQk/5IPdZhPmoHSG8q0V7Db/RsLSpxoxf3LxmA8cjiasIwqg1fwdgw9qBqw4YHiVHICqI83DL2KqOgVffQiPGWTMJoqBnR9+FMc6Ts=
Received: from ubuntu-z.lan(mailfrom:hao.zhang@coolkit.cn fp:SMTPD_---.cjsv3WY_1746785661 cluster:ay29)
          by smtp.aliyun-inc.com;
          Fri, 09 May 2025 18:14:22 +0800
From: Hao Zhang <hao.zhang@coolkit.cn>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	tim@feathertop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Hao Zhang <hao.zhang@coolkit.cn>
Subject: [PATCH v2 0/2] arm: dts: rockchip: Adapt to IO domain and SDIO for Sonoff iHost
Date: Fri,  9 May 2025 18:14:17 +0800
Message-Id: <20250509101419.460473-1-hao.zhang@coolkit.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_031429_231974_BA623D95 
X-CRM114-Status: UNSURE (   7.73  )
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

Changes since v1:
- Use full name 'Hao Zhang' instead of login in From and Signed-off-by

This patch series makes two corrections for the RV1126-based 
Sonoff iHost board:

- Patch 1 adjusts the SDIO max-frequency to improve WiFi stability.
- Patch 2 updates the IO domain voltages to match the board schematics.

The voltage fix is based on verified schematics and helps avoid potential
hardware instability due to mismatched IO levels. 

Tested on multiple units with improved long-term WiFi operation.

Tim Lunn is Cc'd as the original board support contributor.

*** BLURB HERE ***

Hao Zhang (2):
  ARM: dts: rockchip: Sonoff-iHost: adjust SDIO for stability
  ARM: dts: rockchip: Sonoff-iHost: correct IO domain voltages

 .../arm/boot/dts/rockchip/rv1126-sonoff-ihost.dtsi | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
