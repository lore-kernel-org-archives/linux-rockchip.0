Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20631C43458
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 19:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ir1Xm0RWXeyD3my3P8LV7DmEj0HMuD6mtr/sh9TvsIE=; b=aCC8dSfPs3rF5H
	quqF9QjX8WMz4cBVJwYjcqHYIm89oLOq3wNRQDgSaU9T3qV0YzJy7UjqNI7VXtt2531Ig0SzI+gn/
	+UNk4tM17qyoHqhbbdWINKf4RhAEfPlsiEm9FViZ2GKbx0PLgSmPi8sGpnKrOjtH0BzAofWUcW2J6
	ERFBxf+xp2eoPP9PIv/gsVwtWwxwSvbgK7pvp8rl0DvuZ5de32cu9eLNDyURo6YE07wWJkF7tKKvE
	jo742rdrptUcIWsqCekEfWYmXDhqF2wZndRK/Xq9UV1ndeFZO1qbihjiHD6xMOTcm7qj5i9Ljn8gG
	u2Vd/oxQXa7RVEBX+PyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whBjB-0000000FnpU-1oQG;
	Tue, 07 Jul 2026 19:45:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whBim-0000000FnP3-1q8y;
	Tue, 07 Jul 2026 19:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9f9Cvj2KSde9fRau9nU9jeL+1j23YWkk4574iWOOJXo=; b=Rj8hJ71k4borJmrIC2KxsgFdTq
	+VkuMIyJ6mIo+3jqjiZNA9vj5VGc5v2xlHI7v0oVYGk/TWj9fGWhUGNy3UKtTJjaGC/yedWsazSuf
	1tGfQtAO7TT62+yz+ZrmAlhUUIy4iIEQZAN9rzIZi00Zvp5SD652+4/PbLI14CCzaeWVkEoEZmKey
	mGeogaKNdETJ5MEyzvhplzHnDsxIVQe1nsApHqVWNccYqsjMTtLdAlPA8SsxwF5ye9ZfJ6xuM64zH
	JA+mMrCO82B13/5Z7VuZ/l4JZ29th/06P0dbjAc5cyBrZBk0HEMRJpTcI6USmfumsHpXKkQ0fyatr
	8XSfkNJg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: pmu: Narrow definition of reboot-mode
Date: Tue,  7 Jul 2026 21:44:32 +0200
Message-ID: <178345345848.664858.15922395581813500396.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260701105849.197086-3-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260701105849.197086-3-krzysztof.kozlowski@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_124444_498582_92847466 
X-CRM114-Status: GOOD (  12.49  )
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


On Wed, 01 Jul 2026 12:58:50 +0200, Krzysztof Kozlowski wrote:
> The 'reboot-mode' child of PMU node must be a syscon-reboot-mode one, so
> add missing $ref to enforce the validation and disallow other
> reboot-mode handlers.
> Defining 'type: object' is on the other hand not necessary when other
> schema is referenced.
> 
> This can be further restricted to match hardware/firmware:
> syscon-reboot-mode schema allows arbitrary "mode-.* properties but only
> a subset actually makes sense and is valid.  Provide negative look-ahead
> pattern to disallow any modes not supported by the device, which
> tightens the binding.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: rockchip: pmu: Narrow definition of reboot-mode
      commit: c63037c69a5173dd87efde82bfa4c339adefd72e
[2/2] dt-bindings: rockchip: grf: Narrow allowed reboot modes
      commit: 39eace59ac826465fae0788d0a6b304ec94f9944

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
