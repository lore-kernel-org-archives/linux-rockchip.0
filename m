Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EEE6C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 12:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ToqVxuTgPhZ4Kx/pZoTzF8RRHMJ+AjKLrwsI6G3m0Kc=; b=0XUjTyXVPkSusq
	f1CBmtCFcJmLl0Mqmuqcq9Pb7BUHbpDVsL4vu2K53rI3Gwx/Nttk+nt0LigGsTgV6/r5gBDTdwFXc
	b4/9BSQEdkooS4TlhPLcY/0bsvWK+YhINre8Z7mOAsKnXJSwjt5C2NTUqG1yhl+TqwlmT4zTWd/St
	/uvsnme5nzmnvDV/qT/Lm2pBSGkj8jooHMEuGS8nZNe8P/zReijdotKAKuGtTbiwiIpVJLK7oFEFd
	KSCK1twapjKyRpMOA1+WHxazFFGdp7MTUpuGz83nN7YcPNBNUdZqizoOOrQLFyil4CWszLqMZbPmV
	WaMZrlel5KbuxYIsykAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFBBs-0000000F619-0UwX;
	Wed, 14 May 2025 12:26:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQl-0000000EuY5-3bAK;
	Wed, 14 May 2025 11:37:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E025C5C303E;
	Wed, 14 May 2025 11:35:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2C81C4CEEB;
	Wed, 14 May 2025 11:37:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222666;
	bh=JzEkcnZJ9VU3/RyEXnVJDwWtRvNpABazrUcSwCWJKAk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=cXMZqIxSjVBYh0fPn1klEs0n3eiErW+MsOAyDLorX3kaMca6c0o5oiqVNGs8PnfQr
	 wCKQjgE2cCzwY9ZlsYV3Z9vfdIg3UQVm3OM1YGlPHUENUeFBprcw7qEGYHUbRiitwv
	 sJWm61Q5hIcpVPDTk5aaLQN57jVsgVdR+tRBx/F2F5ZBcDAjsnA1KttynrEyucpBsP
	 tJJjBzX2g9FkDJqpmzn4HPy/qBlKXaA3HXUNZqHpQz1y7NUZSJStIYOzOetbpiDfAq
	 Iw60nvw3EAGLrFPTuDoNTDU2alez3it1+MmeCOtyJzSTG/dn5ffieeCAfsNN1J6b++
	 m2yuH+rqbx5oQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250415011824.2320039-1-robh@kernel.org>
References: <20250415011824.2320039-1-robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: phy: rockchip: Convert RK3399 PCIe PHY
 to schema
Message-Id: <174722266452.85510.1639873129821152677.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:44 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043747_940906_43A658DE 
X-CRM114-Status: UNSURE (   5.06  )
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


On Mon, 14 Apr 2025 20:18:23 -0500, Rob Herring (Arm) wrote:
> Convert the Rockchip RK3399 PCIe PHY to DT schema format. Move the
> example to the GRF binding as that has the complete block.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: rockchip: Convert RK3399 PCIe PHY to schema
      commit: 1d6fc048b86b76db73073ded8e84b0fd8757c908

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
