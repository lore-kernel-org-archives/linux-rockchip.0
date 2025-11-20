Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 390EBCF9C77
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 17:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01q6MX3wdcL4BSs5Guex1NhabqEyJmibbt4dGt95JYY=; b=le0bfRW7BTcdKy
	22a9tuvWoxrhjgRU/83u2+gkTi/B2sijRG88cUx90xaxHiXwllOY3Q7fFHyS5HYMn6INqX8Oet0OE
	3teVDnTzYITmbIUhK+/ngqGnWIxi3P8gTbQ2rVPkeT/Rf8xhxP1FnPNcq3as7WCc/re69WhrXTjBj
	lgBuqVN5VaXW84a3DjD99exLyIQ8Hr/yfsBEFAwJOwv8Ote0epE2pP4f12UW86U8FNGJHev1X/7or
	7WZk5pZ2pVWWTD4vIrBDd8/QyWjt8tKdzYN2B/2+MK4o3ux+TDLv8hfTO6jD41kBGJaD3jrXDEx7P
	j+8G79DEJag5ToxCbVpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8CR-000000074HJ-2vic;
	Thu, 20 Nov 2025 17:12:03 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM8CP-000000074FI-2Iqf;
	Thu, 20 Nov 2025 17:12:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 031BB601A2;
	Thu, 20 Nov 2025 17:12:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8D9CC116C6;
	Thu, 20 Nov 2025 17:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763658720;
	bh=306eperlM4wCcbGW8nKxdjfPeNuuV0fZ9m1o8JhX/MQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=RIarhtuRylKTVhhYPhhuyippL3Niv51E7buXzAxQ3IoTW9Sqj5JbHJ3wlL6hJck42
	 I4pMQkyPuJmoNrdGD0f2tQ1QPNvJwS+czhAn90atHO2A4SVGdSenez/rnlCi1yKVn8
	 oe+Yqr/zPoobs4RvYo0tNYOgtAOdYNCpcISb/6sWl2eFI3wXFn2de5nzOuF9m5HEjM
	 aXH34muDTqbLwtvJyZxG90lFLXvaxhjBIVCki040e4+EAX4li1+bf11S3Rdx/liChH
	 O0qGeG4l2Q/Ihu/UTdBQLluVETuyOTL99Mq1W9rkmmsa1m0uqjOL7aZ5yZ2cEeW63Z
	 Q5+lz/JuZZDDg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Dmitry Baryshkov <lumag@kernel.org>, 
 Algea Cao <algea.cao@rock-chips.com>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20251028-phy-hdptx-fixes-v1-0-ecc642a59d94@collabora.com>
References: <20251028-phy-hdptx-fixes-v1-0-ecc642a59d94@collabora.com>
Subject: Re: [PATCH RESEND 0/3] Fixes for phy-rockchip-samsung-hdptx
Message-Id: <176365871731.207696.6981124772253997386.b4-ty@kernel.org>
Date: Thu, 20 Nov 2025 22:41:57 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 28 Oct 2025 10:00:53 +0200, Cristian Ciocaltea wrote:
> These patches were initially part of the HDMI 2.1 FRL support series [1]
> aiming to provide a few fixes for the Samsung HDMI/eDP Transmitter Combo
> PHY.
> 
> I'm sending this as a distinct series right now, since the FRL part
> might require additional time for review.
> 
> [...]

Applied, thanks!

[1/3] phy: rockchip: samsung-hdptx: Fix reported clock rate in high bpc mode
      commit: 72126e9623e1696ea83c77ef6d0306a6263bdd6b
[2/3] phy: rockchip: samsung-hdptx: Reduce ROPLL loop bandwidth
      commit: 8daaced9f5eeb4a2c8ca08b0a8286b6a498a8387
[3/3] phy: rockchip: samsung-hdptx: Prevent Inter-Pair Skew from exceeding the limits
      commit: 51023cf6cc5db3423dea6620746d9087e336e024

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
