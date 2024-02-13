Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA38DC4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=goBrtOgzck/RBf+gkuPTwCjtt+lGLcou99T66toQGe4=; b=2+xC2NHUFKDp40
	FxFkhN2ZKKCtudXq/6Z3AjuHd6jI1aRYG4DW1b+V8LP1gTalXHR1NFD2roGTg3HBBYkRCLUGxCaMT
	2nzM1KIPymfb5Nzt6Bw59H8GBZrQB87xG0T9f3dqwh/En3M/JDvVX5/tb4KIuVmU2WzWoZZZBDJTa
	GQPfz9r+hMTB1rS6KI2HW64jMql7ZexiaO3FpPtq3CPV1gdLfvcGd84SwoPDyqZIlLPiT86Wk+2z1
	y0xNPjrW4krKQfSvwiQgMgSgMwr/tK94JsCH5UDKIykEZEk5mGqPyTFd2bP2tJmCWNKdFjhLjvYmd
	PSpd4uTKCFqOBp/dK/bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZybR-0000000AUwR-3R2N;
	Tue, 13 Feb 2024 19:38:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZybO-0000000AUuK-0Ltn
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Feb 2024 19:37:59 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZybL-0008Re-Kh; Tue, 13 Feb 2024 20:37:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Updates for Indiedroid Nova
Date: Tue, 13 Feb 2024 20:37:52 +0100
Message-Id: <170785305476.3362031.18397699265683418315.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240125201943.90476-1-macroalpha82@gmail.com>
References: <20240125201943.90476-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_113758_144180_E418D10F 
X-CRM114-Status: UNSURE (   9.20  )
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

On Thu, 25 Jan 2024 14:19:41 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Correct a problem with the GPIO names on the Indiedroid Nova, activate
> the full size USB 3.0 ports.
> 
> Chris Morgan (2):
>   arm64: dts: rockchip: Correct Indiedroid GPIO Names
>   arm64: dts: rockchip: Add USB3.0 to Indiedroid Nova
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Correct Indiedroid GPIO Names
      commit: c22d03a95b0d815cd186302fdd93f74d99f1c914
[2/2] arm64: dts: rockchip: Add USB3.0 to Indiedroid Nova
      commit: 4622485f005aaf0f7a684b69280d0494e0ea301e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
