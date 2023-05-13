Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D8FEC7EE26
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 16:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YCGYc6G++Pd1Y+/51c8jzptkClv4mNXmp6cf6Ry9ZqI=; b=O6jQySmNAbaSvB
	7akZi6kZGvyROLqMy6IKxFM9F6F6ZiSuY6zvH1k28jRgAotONdtGlLrMKwSJ8IYyGJw6Ct5U4qXDc
	AB66IonQR+OUVPfvIboIDC7uLrLgpNhHMhh2eBN0yUm/j6FCc+OG3qWqYVgPTosvyyhfEL1yBw39m
	y7bD6mhyuyeFIjk2lx7lZsmYGeuLCYJCMgU8VagMdYNe3nSICVySNYn4+PjYe701C3ocupRC3nTid
	6h4pVC5ImDZrG/rAbuE6NoU24SdUy6zJ7zDMNWRC3BZfm0VHMilcTIaS/jAijzpLBrwQlQVAaM6Nb
	bl3TzC6i7I7fm6zyaOXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsR4-00FQR1-2o;
	Sat, 13 May 2023 16:49:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxsR2-00FQPp-2X;
	Sat, 13 May 2023 16:49:33 +0000
Received: from p508fce4f.dip0.t-ipconnect.de ([80.143.206.79] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pxsR0-0000Vh-Cn; Sat, 13 May 2023 18:49:30 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Tianling Shen <cnsztl@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: fix button reset pin for nanopi r5c
Date: Sat, 13 May 2023 18:49:24 +0200
Message-Id: <168399655509.610817.9447804188799510954.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230510161850.4866-1-cnsztl@gmail.com>
References: <20230510161850.4866-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_094932_828103_9150FC43 
X-CRM114-Status: UNSURE (   9.74  )
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

On Thu, 11 May 2023 00:18:50 +0800, Tianling Shen wrote:
> The reset pin was wrongly assigned due to a copy/paste error,
> fix it to match actual gpio pin.
> 
> While at it, remove a blank line from nanopi r5s dts.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: fix button reset pin for nanopi r5c
      commit: 5325593377f07de31f7e473a9677a28a04c891f3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
