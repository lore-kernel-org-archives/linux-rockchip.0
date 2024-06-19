Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9C76C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 21:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvEa/mJa3vDn0iS4GUTPkQS7tP0u0oKobbNcEzuDVlE=; b=c0r4rg6OLSxPgm
	N8mfhb1+VlRbd26yLLXjYr60rmwLJdfXJy4vVkmXfiOru1naa5D62EWuWjVN/PFg3m/5qu7rRzN0O
	aFYoiBDw88SD+h+cKiz2l6PLtV+rCCIkCO6TiNUo/H/EpELQaFGicwWMsEU7WdY1c+Zj7im9E48JO
	XknZtnHEWyUw853TmaAZRf6vUx7Tv/q3QnUSC6fbMn0wWIaL4Fl2RlutJ7PgUsE/d/09AToWGwF+1
	6DBmHIKPUy11YuLEDiQv1B6eLvexy3SXv86Vzrzf0BsBnUOhXvgF9aR5t2YFyR450oO/qMDp8xPeS
	OJ5MXlF9ghsvfm2A/gXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK38t-00000002o0t-1XKf;
	Wed, 19 Jun 2024 21:46:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK38q-00000002o00-0Ctp;
	Wed, 19 Jun 2024 21:46:57 +0000
Received: from i5e8616dc.versanet.de ([94.134.22.220] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sK38o-0002AN-Df; Wed, 19 Jun 2024 23:46:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org,
	robh@kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] ARM: dts: rockchip: add hdmi-sound node to rk3066a.dtsi
Date: Wed, 19 Jun 2024 23:46:52 +0200
Message-Id: <171883360477.12879.3763495026323638228.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <5fe7c2fe-4a38-436a-8017-66989959329a@gmail.com>
References: <5fe7c2fe-4a38-436a-8017-66989959329a@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_144656_111528_C22614E4 
X-CRM114-Status: GOOD (  10.34  )
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

On Tue, 18 Jun 2024 14:02:25 +0200, Johan Jonker wrote:
> Add hdmi-sound node to rk3066a.dtsi, so that it
> can be reused by boards with HDMI support.
> 
> 

Applied, thanks!

[1/1] ARM: dts: rockchip: add hdmi-sound node to rk3066a.dtsi
      commit: 1e297069cc1c588bbece4752e0840b6a15982148

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
