Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D873D374A9
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Oct 2024 15:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIRZzPeQOcTl25sOubILQQrC0A585dWcM1JhcESVW9c=; b=c4VuP7jIRP0YpW
	DIXDrDaPVlznkWTNPxN7gqptvONYb0sTOFmqVeS6T1WCZr1EyxfXedxIc+BSDWko7lutWXXfkd6R3
	/QIyosCEPQwOMkykLivxcoQgKXpCMltArkcAToLHf61IQtbdvto2dx8Uyz1dPSt8TlgoPa2bR3IhG
	e47gDOn6SU+SS9ozJhrcR5J4XEldIUaDEE+tIhS2vt4bETpsWyy65w2e65uHYsuOb6uwnrCy1Yncy
	odqlOQP5Drm+fMvoPyIdeyJgufrBv46bq91xDaUXfVhdBu7s2WcjuD98nli+W2m3y6n2CcTNAoD6/
	G4S/zRleRouUabWYVEPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Sjt-0000000FM5t-0LrJ;
	Thu, 17 Oct 2024 15:48:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXt-0000000FIz0-0GGp;
	Thu, 17 Oct 2024 15:36:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1C2F75C60F4;
	Thu, 17 Oct 2024 15:36:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 923E8C4CEC3;
	Thu, 17 Oct 2024 15:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179372;
	bh=fo+CHF9qHwWN/uBVKplYMXMd5ty02jFEE2Ox30uGgf4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=KEgM85/zWOLKZ5N/8GHERiMJ5bO4Dj3IoNVywTfnEa4ZQ3HVCduEfskJZpsUNJpzy
	 zx5dNSNwizZOtU7TNJotLf6rrjYuhftYzjySzP2oL+3RnCZvat2HtDd0zkPDn0jot4
	 I12FQT+drgIh5tD1NBpb+HEWYpXwAO4ziZRpJmJjxwBe5ngVkSHJD2HirY7nigJZ3a
	 YayW+dR1dkKY5gvw/GeAhzu8E5O0o/mD8Ra9xQsO/7J2nUfV8roariIrsgT3jJMxnS
	 i0E6BQsvoY+0JXyPIWAD+zyuqzstxhvDJ4OdCn8Zlphkx1ZPX+C0KJWyCzC2IpoJf+
	 EL9TTGdi8RsnA==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241007162732.2450168-1-heiko@sntech.de>
References: <20241007162732.2450168-1-heiko@sntech.de>
Subject: Re: [PATCH] dt-bindings: phy: rk3228-hdmi-phy: convert to yaml
Message-Id: <172917936923.288841.7317586355645803007.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:06:09 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083614_241933_3F7DF8E5 
X-CRM114-Status: UNSURE (   4.80  )
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


On Mon, 07 Oct 2024 18:27:32 +0200, Heiko Stuebner wrote:
> Convert the binding to yaml and rename it according to its first
> compatible instead of the unspecific rockchip-inno-hdmi naming.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: rk3228-hdmi-phy: convert to yaml
      commit: de30906910f8c2a91b236ff77d7dd5edfb14bb55

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
