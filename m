Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD866C282DE
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 21:11:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KWdvOeh6JbQsqOV142LqyEo5vbLMWfBE6Sl1Qm08EUU=; b=yKiozbAVh1sNYH
	qYBCJZW2qO+avIIzUg0+VZhcfE7lk19CVigggeBXQOSBiAlC69VyrdbBTl2STqswSLFwliYgrVvtL
	m3lyqJOKYcCjk8RR0S8EU7cTSSTEkDimk4JsOZnOKMsRuStgW0IMeh6TFkZYaEgmUw40h42jOJ88u
	5b2yYbA6WmmW81EuNpADYvudGKJWQlLPZG7HQS+XtP7LekFP/jOn5UClo+Crb7pNrOA2rmYA3d5Jm
	sRflm/lllIJhI4zm9+8JZHkzKPwoKb32gJY0PUoET0wP6ExKRJap5sl9Mhnbpqe/3dqecEqUwvlZZ
	ZR8CJvFArbsTOU8xwOQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqIUZ-0000000CE32-2DMX;
	Thu, 06 Mar 2025 21:10:55 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqITj-0000000CDsl-28yR
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 21:10:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1741295402;
 bh=sDXS6ccmXHM7aVTn2W8PvKDj84puFXbx1PJBmmh83iE=;
 b=p5ugOss8RGqOEIGV/X54kmjfx87TiB2fCDoZPDjw5Qec+e91CPS8dGVsiESxNXqMj7A7/k5xr
 j5HNU+BnEMeFynL9+tInZLOmA6SNYtlR82RC//TS59KTEE/GJnL8Eqmg++QBVn7WDZqgSy7fM+R
 qcFxjJ3gUX+4wJ6hrboOiT3V2xJUDfO9uSgoYhd3L33E5oVJhsn3yreNIrHbdbW3XVSqnO+Jom6
 cK4E1VZrBw3ioXKJshWTNyMps4exY9nQqErn0GLQfT5vBC+SYaC/MP4+a2p6M+76RlnfAWitUmm
 Py84Y2YuIbhSVXDa+uF3taQo7XeAvSFFWvQ9qoEer7Jg==
X-Forward-Email-ID: 67ca0f24ad3e70e1cd99d7f2
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/2] net: stmmac: dwmac-rk: Validate rockchip,grf and php-grf during probe
Date: Thu,  6 Mar 2025 21:09:44 +0000
Message-ID: <20250306210950.1686713-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_131003_590551_37A6DD12 
X-CRM114-Status: UNSURE (   6.83  )
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

All Rockchip GMAC variants require writing to GRF to configure e.g.
interface mode and MAC rx/tx delay. The GRF syscon regmap is located
with help of a rockchip,grf and rockchip,php-grf phandle.

However, validating the rockchip,grf and rockchip,php-grf syscon regmap
is deferred until e.g. interface mode or speed is configured.

This series change to validate the rockchip,grf and rockchip,php-grf
syscon regmap at probe time to help simplify the SoC specific operations.

I do not expect that this will introduce any regression. Prior to this,
use of a device tree without a rockchip,grf would fail when interface
mode or speed is configured, with this use of such device tree would
instead result in failure at probe time.

Jonas Karlman (2):
  dt-bindings: net: rockchip-dwmac: Require rockchip,grf and
    rockchip,php-grf
  net: stmmac: dwmac-rk: Validate rockchip,grf and php-grf during probe

 .../bindings/net/rockchip-dwmac.yaml          |  17 +-
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 269 ++----------------
 2 files changed, 32 insertions(+), 254 deletions(-)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
