Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD132C5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wCbQn1k1ZTTrTfQlb388nmFBfVknGILImAJ/laJW/M8=; b=KS44HGJlGRIMTj
	cFb6ezW1CCaJ8VeH23Jh8FUc2Kt7a5rVd43m7iL+im1wAssUzuB6Sm07MBb20qXUd0AvjnL258s77
	udmN3sByeFrhH19RhYWvGBmEBKu6EXZqFa7827cjSyopfSixvtK/8k1p71i1ZYPzpix42l6I5Kodp
	AwJz00+xzcBHAW3LSmMjFxBt0OXec9dRekeRgdpf40g8+P9bLgMT3V0a6PwAkDjV1VAk5JqHJWQgm
	oRKctZ/eeDcgMnRaySx+b1KDTL1fn0mAZY7ylrX1jMBBc2UEIGJUfN/zHcJuEqdA/KXUu1ukJe9pn
	q0N3i863gBRdNu9Wh79g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYfP-00Atmw-Rq; Wed, 11 Jan 2023 10:49:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYep-00AtUy-9N; Wed, 11 Jan 2023 10:48:37 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFYem-0004Wz-VS; Wed, 11 Jan 2023 11:48:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Caleb Connolly <kc@postmarketos.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: fix input enable pinconf on rk3399
Date: Wed, 11 Jan 2023 11:48:25 +0100
Message-Id: <167343400179.2680857.5225762201628008377.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221215101947.254896-1-arnaud.ferraris@collabora.com>
References: <20221215101947.254896-1-arnaud.ferraris@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_024835_355931_4966D4D6 
X-CRM114-Status: GOOD (  12.22  )
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

On Thu, 15 Dec 2022 11:19:47 +0100, Arnaud Ferraris wrote:
> When the input enable pinconf was introduced, a default drive-strength
> value of 2 was set for the pull up/down configs. However, this parameter
> is unneeded when configuring the pin as input, and having a single
> hardcoded value here is actually harmful: GPIOs on the RK3399 have
> various same drive-strength capabilities depending on the bank and port
> they belong to.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: fix input enable pinconf on rk3399
      commit: 6f515b663d49a14fb63f8c5d0a2a4ae53d44790a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
