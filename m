Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D654C4828F
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Feb 2024 11:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67yqSzK2uNV1ycNGhuFeu1SiL8JGAj1MnZBSO3ZN8Rk=; b=fzWlasg0fnJJ0i
	BNikVx36UX+4bdqQL0Xf0pWhzOtIetB7JnPP5ax9thgCcllVnQqfK1I0/zSOa9f6mt2Ytdp2cI4O+
	hC2Tgm8MJlo88XX35bK3nc4oFN12CLBZbmgOcy0jt/ZirOh4vx2WRHPWzJja0pjCA8il3EuyXX+u8
	EcBtF9o4PmAQQIIBY3jNguqPps3J8gr0AR83BRTf4/oesIRdvZxEpl8PcLnW7M4I/FfXsHBcQ6+9O
	WQhqWtZSG+k8B0F2VkisPbEUy1m2kBJcmPXgW5Jh+euQ9kb+BnJxVgjGgHDsEVvWBfF3IU3cwV4HR
	O4RLXbtasxSUymCyPqcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaUv-00000000e48-2nBu;
	Sun, 04 Feb 2024 11:17:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWaUs-00000000e36-44KC
	for linux-rockchip@lists.infradead.org;
	Sun, 04 Feb 2024 11:17:16 +0000
Received: from [185.175.219.2] (helo=phil.fosdem.net)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rWaUp-00051V-FN; Sun, 04 Feb 2024 12:17:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	Trooper_Max <troopermax@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add Touch to Anbernic RG-ARC D
Date: Sun,  4 Feb 2024 12:17:07 +0100
Message-Id: <170704542188.2517832.12838935433827901522.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240201150620.886786-1-macroalpha82@gmail.com>
References: <20240201150620.886786-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_031715_138920_22BDD3EF 
X-CRM114-Status: UNSURE (   8.76  )
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

On Thu, 1 Feb 2024 09:06:20 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the Goodix GT927 touchscreen to the Anbernic RG-ARC D.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Add Touch to Anbernic RG-ARC D
      commit: 2ec7d42918f0170331cb4206d36d10837c815549

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
