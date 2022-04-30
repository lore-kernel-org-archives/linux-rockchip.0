Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C5ECC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 14:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53yGTJ3iSYAm+HiefEd4ixYJKZ3dEtX4kgLR6Zlvz/k=; b=ris9UQ+WHQCRXY
	Q2HH5gaXm+b2gfbI/MghgimSpqqJRu4NhlMpVbj+CBmcjqEkInzPSD27q3a7FZSjiJLgkS33zYzfO
	gnkHYQ9jPwjw+OjQetm8fhAq9LPwlK/xYKXep03s+1Q70ytLtlMl/gbGsc4k3Uj4GLjFbCnSZ5RTi
	0XFhaBKVt6GK1mUw9YUVOAwiF3vhb6kDl6j6AjwqpdH25ShHMjjTIHUgiZDj6g4cVlJrMFFnTn5IW
	NQNbpRxRADnZJb+35QFVlqTkZ7mIRJMydgusnOsebh/VF27pFzE7OR9GaAkis7nHUhzGO9fF32lKw
	j4i9sYa6CCWeolQqbRHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nknjV-00EQXA-MT; Sat, 30 Apr 2022 14:06:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nknjT-00EQVE-Ma
 for linux-rockchip@lists.infradead.org; Sat, 30 Apr 2022 14:06:00 +0000
Received: from wf0416.dip.tu-dresden.de ([141.76.181.160]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nknjR-0001Wl-On; Sat, 30 Apr 2022 16:05:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>,
	Arnd Bergmann <arnd@arndb.de>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 1/3] soc: rockchip: Clean up Kconfig whitespace
Date: Sat, 30 Apr 2022 16:05:50 +0200
Message-Id: <165132754299.647302.4728790940190347184.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426014545.628100-1-briannorris@chromium.org>
References: <20220426014545.628100-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_070559_773279_920299A5 
X-CRM114-Status: UNSURE (   7.68  )
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

On Mon, 25 Apr 2022 18:45:42 -0700, Brian Norris wrote:
> There are spaces instead of tabs, and other inconsistent indentation.

Applied, thanks!

[1/3] soc: rockchip: Clean up Kconfig whitespace
      commit: 9be1a9996ebd8da27cafc947e4578b2d419dc07e
[2/3] soc: rockchip: power-domain: Replace dsb() with smb()
      commit: 2ca9e472c70f15de768ab200571e2f6634f66394
[3/3] soc: rockchip: Fix compile-testing SoC drivers
      commit: add9f6f30e54b5c07e7a0260cda459ef1d9646b7

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
