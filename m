Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B581C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 18:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ij4D30FEiW3dm0W6PLopjzbrk1yAuJ5pQ+cczP9Lyxo=; b=2Kyw+dSICmgqFX
	xNnR3TbeOVBA7c584/MFTLaTaGm/PSDPwbVy7Xxcl1gpOdY1+wqxsOXTv28N1xK9up1QX2HUH2hoj
	amUkCvOuX7jzmbO3dw4C+DiQw64v2UDAIN2w3ils6wEHXvlzF6Z0kxrxYH80EBGXYbfce2o69tejs
	uW1Eq9jmgxJ/oKb09iBHk8Mlq3X9nor+ZxIHw9EbSFEfkOreSVPSlhXX9fRW71zY7AKp8S7ycE4Tt
	FZxNeExsheIFfC0TA/C/fvhhfTDBpn088RInV2Nir4B6S7hvHjUhk0ClECCr+bi8aT5JAACSMoA/b
	BYRnkQbGF2+nZZ0jXt/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPQmL-0000000E6YR-3qWs;
	Thu, 04 Jul 2024 18:01:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPQlv-0000000E6PE-0QEn;
	Thu, 04 Jul 2024 18:01:33 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPQls-00049m-Ll; Thu, 04 Jul 2024 20:01:28 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chen-Yu Tsai <wens@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add dma-names to uart1 on quartz64-b
Date: Thu,  4 Jul 2024 20:01:23 +0200
Message-Id: <172011606369.897267.6481211960386426581.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240628120130.24076-1-didi.debian@cknow.org>
References: <20240628120130.24076-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_110131_165860_BBF08218 
X-CRM114-Status: GOOD (  13.79  )
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

On Fri, 28 Jun 2024 14:00:43 +0200, Diederik de Haas wrote:
> There have been several attempts to set the dma-names property on the
> SoC level (in rk356x.dtsi), but that appears to cause problems when set
> on channels without flow control.
> 
> Quoting part of a previous attempt for clarification:
> 
> > Nah, enabling it for bluetooth is fine because you have flow control.
> > My issues have been on channels without flow control. Without DMA it
> > simply drops messages or the channel hangs until you close and reopen
> > it. With DMA, when an overflow locks up the channel it is usually
> > unavailable until the board is rebooted.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add dma-names to uart1 on quartz64-b
      commit: bf6f26deb0e84089700c1b864f643442e262e16b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
