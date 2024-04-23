Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E98AC4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Apr 2024 15:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nhzH1M8L5HmnHfLQl3ZFxqAEDh0kasO7BlEbZ25ZzKk=; b=bkCzTRwR6go2B8
	sUXPVM3QsQGRr28ZfohDXo1SIxTsBcomnbH1NFRx9vHwWNxXaeO1T9SUGTTL6rB9JRKrAUfe4PKIf
	xPTWAKpMIMDPL+lU/X3PBWIDq75JFEV3pSRGOVsBo+qyJ6KK933i31/MzHGmak+wsUJwtWQ2Cp4dI
	HR2T3aJG0AJsgE4jydxnYasLcBkFGx+dDwrHCivFqFRPcW4ri1vsAsB0bq54lP7q5qcuXTK4P43No
	lTYPNfNGqI/gxcra9OWZSg/H1HF2FHN8wtz8/7kJylFwN6ED/y2jHVmJ9OU7puQlQEJEQb+lz5a0h
	O0aUE0ylgF1gltPot+pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzIF6-00000000ZO2-0ENW;
	Tue, 23 Apr 2024 15:39:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzIEq-00000000ZHa-3cry
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Apr 2024 15:39:23 +0000
Received: from i5e861d9e.versanet.de ([94.134.29.158] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rzIEo-0007h9-3X; Tue, 23 Apr 2024 17:39:18 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jing Luo <jing@jing.rocks>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com,
	jagan@edgeble.ai,
	cfsworks@gmail.com,
	robh+dt@kernel.org,
	conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: correct gpio_pwrctrl1 typos on rk3588(s) boards
Date: Tue, 23 Apr 2024 17:39:15 +0200
Message-Id: <171388674748.2655666.197923029393759084.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240420130355.639406-1-jing@jing.rocks>
References: <20240420130355.639406-1-jing@jing.rocks>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_083921_666568_DD636928 
X-CRM114-Status: UNSURE (   8.29  )
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

On Sat, 20 Apr 2024 22:03:55 +0900, Jing Luo wrote:
> gpio_pwrctrl2 gets duplicated by both rk806_dvs1_null and rk806_dvs2_null
> gpio_pwrctrl1 is unset. This typo appears in multiple files. Let's fix them.
> 
> Note: I haven't had the chance to test them all because I don't own all
> of these boards (obviously). Please test if it's needed.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: correct gpio_pwrctrl1 typos on rk3588(s) boards
      commit: d7f2039e5321636069baa77ef2f1e5d22cb69a88

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
