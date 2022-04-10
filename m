Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15AA4C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Apr 2022 17:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPJ67XjYfUNEJoENzx5nRwR5ezPOSwXDtETGznH5emM=; b=2FnVY26SV77EwF
	sXTePwLtGHj65+//6Kt7EO15EMGsW3ittRFfXVEWhX+ScYHLb++WJ07jAqwj/Z9gQrGkQhChCmoKJ
	bkDm+6/+yCKiBf3nX1QjltdK19QTmt5h1KTfGNPAMq+fr0OGl89dn52S0rnCwpQIBGUs5heikNDte
	EMrZVkjwvDIgyOv0aGdxfn6X0Jak4RjgnYlK8WMPyGXFc3GRgAT1bmd0EzSjD9s5K4Q9TWsAiWaBV
	yzEwKreXjtRipwCH0oHojV3qk+9cMTNGOoR2LwXwEI6D/bSQ88yp/ZG+TUpEPhXEIbFnFKdPOqIV6
	W7SnV4mRjn6lP3RAR6vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndb88-005Ael-9a; Sun, 10 Apr 2022 17:13:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndb7V-005AMi-FY; Sun, 10 Apr 2022 17:13:02 +0000
Received: from p508fdda7.dip0.t-ipconnect.de ([80.143.221.167]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1ndb7T-0006hD-1c; Sun, 10 Apr 2022 19:12:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: zhangqing@rock-chips.com,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, sboyd@kernel.org,
 linux-clk@vger.kernel.org, robh+dt@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/6] dt-bindings: clock: fix some conversion style
 issues for rockchip, rk3399-cru.yaml
Date: Sun, 10 Apr 2022 19:12:54 +0200
Message-Id: <164961074166.23152.14936570481603649083.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220329150742.22093-1-jbx6244@gmail.com>
References: <20220329150742.22093-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220410_101301_552261_DB33D560 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, 29 Mar 2022 17:07:37 +0200, Johan Jonker wrote:
> With the conversion of rockchip,rk3399-cru.txt a table with external clocks
> was copied. Make it a bit cleaner by aligning the columns. Also fix
> a description. Phrases start with a capital.

Applied, thanks!

[1/6] dt-bindings: clock: fix some conversion style issues for rockchip,rk3399-cru.yaml
      commit: 04d3e427148f8ed7322f70e324731c81460671df
[2/6] dt-bindings: clock: replace a maintainer for rockchip,rk3399-cru.yaml
      commit: 50cfde33494072c74bf39a0c281cfa0c3289bd57
[3/6] dt-bindings: clock: use generic node name for pmucru example in rockchip,rk3399-cru.yaml
      commit: 91154f0cd889ed3772a0ac0e24ee363f93fe784c
[4/6] dt-bindings: clock: fix rk3399 cru clock issues
      commit: 7adc1b98bb6e6611bc9122de77737b193b693122
[5/6] arm64: dts: rockchip: rk3399: use generic node name for pmucru
      commit: e03774ff21493f4f82ec7853b33fb3ccc35e4363
[6/6] arm64: dts: rockchip: add clocks property to cru nodes rk3399
      commit: 14fc86b9aa5435bf7dd75839c9a73d9a85a98396

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
