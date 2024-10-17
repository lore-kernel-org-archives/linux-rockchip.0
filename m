Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A88ED374AE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 15:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSlZ1eKo25OTy4+PN0h+3H3ZemlfqMwzGc+C7mRTBLo=; b=Y0xTogvqroo8yh
	SActRRcQ9I5lUobnPjIhkeX9fn0TjT9d3v8BAFiFM01mQ7GTV261rQH5U8bkyctnTwAcXzyLx3Lti
	bRIUkUWgcV4TLuhL9sERpOqmabC3hKmvVzb4aEswTLfeq6h9bsw9PJF/NgdurRyWReijNMxUDV1ar
	fPBf8T5ZizkxK1kT5XU5VcZlrVAJOZT6Jikqh5j2auLfIBR6v6Tpg9SHFe64kA/e60hvH81xRTbbR
	47K1DXkRXTG0CF8rae6WdsclwOJvNn+SdSRlH+K/MYjBXTap7YRojf5v6Qf1GABQpGviySXH6Iute
	Y/RQ/E1C2hVsYgb0Yh6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Smk-0000000FMYM-02I1;
	Thu, 17 Oct 2024 15:51:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SY3-0000000FJ2o-2H2r;
	Thu, 17 Oct 2024 15:36:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 95F5A5C614C;
	Thu, 17 Oct 2024 15:36:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7364FC4CEC7;
	Thu, 17 Oct 2024 15:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179382;
	bh=VioDkU/PjFIM+BMA8JwIsGi2Honfh6sI28MlT1U/VzQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=a3yYh84EIJkVc4LkfQrgFttPMy4LcrMZeL+aThKAki8gAlyv0vCxpmxQffQVkcU6F
	 jFbUdnXJiqlRpUGYYumM6y9Ms34OxMfEXur0mifblC76BctDjlCsBMXh/m5koyIxPX
	 9A3GXxEFnFfdSnBB2l214Rqq7Vt6CNs7UscpdnXF0/0aLXCXAaumdXsoKae3KgZGJa
	 8/3Q3qjKT98Nr8G95ZqyjFzAJb484wNycwp6q0RNb23e73ykxQf+Fl8I8BGxcz2xNz
	 Xy628wguvkQPPcf6xhEm5/s8ITlDX+uruGTq6hLc7ObAnnxIJUAZ1jRuUNdXyyIqe/
	 ijtZ2mkuok5Zw==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Yan <andyshrk@163.com>
In-Reply-To: <20240920093629.7410-1-andyshrk@163.com>
References: <20240920093629.7410-1-andyshrk@163.com>
Subject: Re: [PATCH] phy: phy-rockchip-samsung-hdptx: Don't request
 RST_PHY/RST_ROPLL/RST_LCPLL
Message-Id: <172917938011.288841.10984149232863813080.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:06:20 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083623_653983_C1165CB8 
X-CRM114-Status: UNSURE (   5.48  )
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
Cc: kishon@kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Fri, 20 Sep 2024 17:36:28 +0800, Andy Yan wrote:
> RST_PHY/RST_ROPLL/RST_LCPLL are used for debug only on rk3588,
> and they are not exported on rk3576, no need to request it in
> driver.
> 
> 

Applied, thanks!

[1/1] phy: phy-rockchip-samsung-hdptx: Don't request RST_PHY/RST_ROPLL/RST_LCPLL
      commit: f2dbca169790ea1e436ffdd9ef37d7c3a4401c46

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
