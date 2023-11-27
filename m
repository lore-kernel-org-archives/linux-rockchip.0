Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C40FC07CB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 13:22:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ow31NRiWzAPqqFrmQV+2ayOAhgrr5amTr3foSAnBtkQ=; b=PUbN7WUtyo4rgA
	EaAuXnVaWh87ztDsm7iz18+IfSAM1gnATwHeafP5I/lG5gxVm95hpq8iyc/6YeTeP8hnguFpCMjT+
	JApAV58va55B4Yc4Olg7SszrL3GwdPk9riZqsz7aM7xNnaAMJsg5ZK5eTzsjzpu6xj20f7/QCmdUj
	TKZ+fhTBoSwghyKKstdkTuvwEQ9DBXqzRQg+o8rt57L3TU7PWFNJtn0fh5ugs58Pmy5zTorVQ5QHJ
	IAxflq1L4Cup4Z18yHVQDuae/vo/T5gVmAPd1RkzVi/kLLMxi8dP6sw3jY9vZnrvTQikgjzHprf5S
	mGNNj0BZ30rDxQtnzBLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bZP-002YTk-1j;
	Mon, 27 Nov 2023 13:22:39 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bZH-002YNL-2A;
	Mon, 27 Nov 2023 13:22:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 26FB1CE0EBC;
	Mon, 27 Nov 2023 13:22:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 756C5C433C8;
	Mon, 27 Nov 2023 13:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701091347;
	bh=2JKjpQ+5QKANLP+xGmPCkybvq6kf6sMCsdtq+PhVm3o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bCbLnI25DgO/3NhVtGI6COesZn76ioTqblgX0vP1w6UCsafKA1UsKw7/uB3q5Si7E
	 p3Kwxii8gLbZ2pI48nGZ95j7tCxkjRhPDeDT7MIb1pu3byNgX7F9a4EJOuREIhO0KE
	 omLxzqv8kaY+/4fjVKkhTbtcao3YOMTD+yEee7TTDbDD0gN9sSx0tOisOzv+002ZU9
	 NSNR9SnqbE5j0LVkbDbzY9ZBG53CmO/nLruMScsiR115l2tUbzLKTvIGkd4MoZGRKI
	 eyfyZQWOIpSFd+X71z4OeyFouedfd4sC93e34la6eVNuzs3w8/gDNq1j5lW7DL4YbT
	 QcrR/GgjDKUdg==
From: Vinod Koul <vkoul@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Alex Bee <knaerzche@gmail.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, 
 Johan Jonker <jbx6244@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
Subject: Re: (subset) [PATCH 00/31] Fix and improve Rockchip RK3128 support
Message-Id: <170109134007.42627.12929766893521974712.b4-ty@kernel.org>
Date: Mon, 27 Nov 2023 18:52:20 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_052232_008952_3F60608D 
X-CRM114-Status: GOOD (  11.56  )
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


On Tue, 29 Aug 2023 19:16:16 +0200, Alex Bee wrote:
> this series fixes some issues I found when testing my "new" RK3128 board
> with the mainline kernel and adds some core functionality like SMP bringup,
> usb and networking.
> 
> The propably most distinctive change is the split up of the DTs for the
> different SoCs of this platform: RK3126 and RK3128. Even if I'm not adding
> a RK3126 board in this series: I think this change should be done as early
> as possible in order to avoid issues in future.
> Actually it should have been done like that in the first place.
> 
> [...]

Applied, thanks!

[08/31] phy: rockchip-inno-usb2: Split ID interrupt phy registers
        commit: 2fda59099462ee700e424ba3ac928d13ad6389a8
[09/31] phy: phy-rockchip-inno-usb2: Add RK3128 support
        commit: 62ff41017e147472b07de6125c3be82ce02a8dd7

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
