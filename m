Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D044BC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 17:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aA5/uJerzPH4/4tVh0yzPd2Klifuk2JmQesgYpYgYAQ=; b=YgVu89zDPUJgN+
	rVLeLxznaESRImZZS2cXe70T0sEDF9nuB1o0z3dE9pXM/jH/HyFWxXpPu4e17OReOsff9jKCBlHQG
	7tQFxH2/UxOigKqZmN6ZSKKkHeNvsIkEjnrvdHlk2Gv1L1+kH0/YfrVMnIBgaxfivlYWHaAPqqy+4
	vBY50yACoShf5nXtm4b1ex9OWk/+HI+4fzHV4UaVqwoBFh7gKVVMr4vD5FF0Uc1Q721LzgDbfzabk
	sV5jBeu6m6v0fiyebFVwSwtGdVPH3Ymx34kSymrwPV20fsEGymCstazcr99trrtjbxLkPIKgJ0BQB
	AmOYSt2X39vn1DIa9RCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZwEs-00000009dRN-2h09;
	Fri, 02 Aug 2024 17:38:50 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZwEN-00000009dIS-0d6n;
	Fri, 02 Aug 2024 17:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722620295;
	bh=yC3FRVJKi3Xwt1Y61uCi0MiAs3SjdNui7AprlfgBrqI=;
	h=From:To:Cc:Subject:Date:From;
	b=QULeO+utqLiuBPXK02gv3hMKNwwqElCpHgXUbAK6v99TJfT0ECTd+iUJFcUZISvX0
	 /uqHtKVQqA3zOFwn3muMJ4ZZtdwpcjfr8ve+08c7kANlIYtJ7Da/6807RQZZdXTe2H
	 6ojkpEoniLcoKkyKml76FBXGtqltABgnH0fCzg/6j3xiEpVF4E/moNmS1kAJJbdk95
	 +1ssDwPPCyEU0fTSZVIVRnhgfz7kYN1mL/cD4kh2fHbxW2sVeQu0ukxAZcJko8bTa6
	 mAhdojU0dsz9/kvORfYiLpEpG5C2YvUhwEB261QQXmuT7einhNLjh0xZOGRiqKnQSa
	 kU9gbcShASWcQ==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 981B73782219;
	Fri,  2 Aug 2024 17:38:12 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	David Wu <david.wu@rock-chips.com>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	"David S . Miller" <davem@davemloft.net>,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: [PATCH 0/2] Add GMAC support for rk3576
Date: Fri,  2 Aug 2024 13:38:01 -0400
Message-ID: <20240802173918.301668-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_103819_350018_A0647E45 
X-CRM114-Status: UNSURE (   7.32  )
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

Add the necessary constants and functions to support the GMAC devices on
the rk3576.

David Wu (1):
  ethernet: stmmac: dwmac-rk: Add GMAC support for RK3576

Detlev Casanova (1):
  dt-bindings: net: Add rk3576 dwmac bindings

 .../bindings/net/rockchip-dwmac.yaml          |   2 +
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 156 ++++++++++++++++++
 2 files changed, 158 insertions(+)

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
