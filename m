Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86329C0218D
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jan 2025 09:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nqOkPd9QGTuNPZAw9IpPUSQdtQ1l4oPEdARQhOUz44U=; b=R9XjLwoohpVrDd
	DKphJ4240TfL2tdDEgVcZtWLYDv/WoJeXg+aHfznrOb0WxP6Q7xOw9MN99SOFdsxANgJObBhzFcWs
	Ck/CpEyT1bCPtwiClfGo4SAv8Y2SQDtxyb8ohJjo1Vva/nXgq4Yh8h1h4PtEGUYBrwlAeEHyFx0gv
	RDx1cM0v27C/D4uK/u/xy+TeHFloL7q9X5srNHnQf/duId33PWC2gjyjsmk7bhJ7gESkuK8RcYETI
	k3fdBDvMyQz/9PmIEyknpqZltACZAinWq9w1jQ9uwzmafYvyG59UpK3UbxhpHVv6wYaTN8dPyDjD2
	WGkBrmdBQUQg9p0oRmaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdniz-0000000ALWK-1bjD;
	Fri, 31 Jan 2025 09:54:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdnhf-0000000ALJG-0X4w;
	Fri, 31 Jan 2025 09:52:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EC7135C62C9;
	Fri, 31 Jan 2025 09:52:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E5EAC4CED1;
	Fri, 31 Jan 2025 09:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738317165;
	bh=H+IlFfMfsD9g1qejv8TSC7mY3PZmOkwq9GIvivm50sA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=CJizKJwYL5Bm0XraUmEKjV6TXmxBB9kp0MsEkpu+QvtqRovckEyFvj1Z7SDdm9TIJ
	 UmIp4ojsLbE8Uj+Xf3cGcHPlfsYXjnmygk0+EbvAcDpbkZ2HY2LABRcJVVTBlODCqe
	 kwTSxyMJrib9sZVethhjvUAd1iHdT0ejZFVi8bkPlcni3wJWz4bggSWz5YJ3Ard9sk
	 jNxg8CuMfs2Ydf/u6+3GEiyn8eZZCMHBa4rJJz6S1A2sbXsjwd7jabsFjzZCZpj+dd
	 J0gdHbxwfyGqSXlP3CZqDtZzMRU5kQPtcFWxhNLJs6SHvVC9Pu4oMvAyIWo3CF6cu0
	 USwmF2iLw0WTA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, 
 Arnd Bergmann <arnd@kernel.org>
In-Reply-To: <20250122065249.1390081-1-arnd@kernel.org>
References: <20250122065249.1390081-1-arnd@kernel.org>
Subject: Re: [PATCH] phy: rockchip: fix Kconfig dependency more
Message-Id: <173831716159.670164.8181803651884997358.b4-ty@kernel.org>
Date: Fri, 31 Jan 2025 15:22:41 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250131_015247_211730_72FF3168 
X-CRM114-Status: UNSURE (   8.59  )
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
Cc: linux-rockchip@lists.infradead.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Zhang Yubing <yubing.zhang@rock-chips.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Wed, 22 Jan 2025 07:52:44 +0100, Arnd Bergmann wrote:
> A previous patch ensured that USB Type C connector support is enabled,
> but it is still possible to build the phy driver without enabling
> CONFIG_USB (host support) or CONFIG_USB_GADGET (device support), and
> in that case the common helper functions are unavailable:
> 
> aarch64-linux-ld: drivers/phy/rockchip/phy-rockchip-usbdp.o: in function `rk_udphy_probe':
> phy-rockchip-usbdp.c:(.text+0xe74): undefined reference to `usb_get_maximum_speed'
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip: fix Kconfig dependency more
      commit: ca996321d32a732ee12e7af8ccd0c84bf885fd6f

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
