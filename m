Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ACFDC07E9D
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 18:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkYRc+wchTrGHEUrVbxP9u0itTEqqsyCq6JOQmlKa4Y=; b=yES7isiqZERHu7
	vfMjTBIlHQkSSYWEx9Ftb9x/PGkLaGJVs/BYR0ftVmijqaEn9tX6/D6Ldsy1Fjf6wL84TgDOkpZKn
	wdWKihkzF6C6U1eVn/K0j3O9j0qZiDi2L1ZkBfIZJf7P+rGc6zP6JWKr8i89P4U6N5M/MWLtskMP7
	WNgatFQEIMArlv4H98rcsA85yKO89NpJ8Isfm/8557touZWs3A6uNx9iPf7ak6EWmm5eWDSWQ1mB2
	OaG5yJoPQmvTkxLOJNKFndCBEI7ELG+/VaNtsrce5MzfH8OyCoaii+7OTZfb5Onxm09t8ZvbqlDiv
	hI1klDuSeI1meAEcMhPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obnkL-005Oir-Ct; Fri, 23 Sep 2022 18:49:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obnkA-005OgG-Be; Fri, 23 Sep 2022 18:49:47 +0000
Received: from p508fdd76.dip0.t-ipconnect.de ([80.143.221.118] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1obnk0-0000Xi-AJ; Fri, 23 Sep 2022 20:49:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: andy.yan@rock-chips.com,
	shawn.lin@rock-chips.com,
	nfraprado@collabora.com,
	zhangqing@rock-chips.com,
	Johan Jonker <jbx6244@gmail.com>,
	finley.xiao@rock-chips.com,
	zhengxing@rock-chips.com,
	jeffy.chen@rock-chips.com,
	mylene.josserand@collabora.com,
	eric@engestrom.ch
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] dt-bindings: clock: rockchip: change SPDX-License-Identifier
Date: Fri, 23 Sep 2022 20:49:34 +0200
Message-Id: <166395896579.557333.16068266328759395969.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20c6a502-2ff5-bdb1-fb4f-0741f3a2c19c@gmail.com>
References: <20c6a502-2ff5-bdb1-fb4f-0741f3a2c19c@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_114946_414539_3A27799F 
X-CRM114-Status: UNSURE (   7.55  )
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

On Tue, 20 Sep 2022 00:25:07 +0200, Johan Jonker wrote:
> Change SPDX-License-Identifier to (GPL-2.0+ OR MIT)
> for Rockchip clock bindings.

Applied, thanks!

[1/1] dt-bindings: clock: rockchip: change SPDX-License-Identifier
      commit: fffa0fa4d029c10406d417dd33f630bee4b12c02

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
