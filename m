Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72C0DC001DE
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 07:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwTuh/qrqmwtwyQw2jEQdFyHZe3c6j9iyV6MUx08r+U=; b=3lKWLgdtenJH6t
	0jiwt/+a5L2PEzjWcaH22qeIUN2xo4SDoefJV8pntNTkhY/+AeR+RDdpCnBYgq4AhgRZSXSH2dZiJ
	UPA2hXa2ns0xPlsSxv4SJ6SapIFlszQWToDgm5/wlU1uKGY2FeGnfAU1qTNcBKP32J+gDWqPmLbBG
	1a1tvWVuy4nPOb4DK9XsOkRCWrNyXiVu46suxPE4RdO3/i56fNNCGtuVd9HiiCwKMbpPybwMs2A/b
	RM/zl0j34Io2burQ6lo4wBBZULSFOA9I6KoKGw5LPSC+4J9H4E15qZJgunFgT9OsrhLdOdUjBMjSO
	e3QL+n47D41LpisaQqvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ83J-00E1Hc-1L;
	Tue, 11 Jul 2023 07:44:53 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ83G-00E1GL-0K;
	Tue, 11 Jul 2023 07:44:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9E0DA61355;
	Tue, 11 Jul 2023 07:44:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D75AC433C7;
	Tue, 11 Jul 2023 07:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689061489;
	bh=fzY4SPbVj/3yMnNlQmbvE/VH/STLsTGDL1RF3su0iw8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=dL/YYpOZ9353AWN3aGM5uiCHHyo2O5VyjJLKXU57FPFX5v3MWFK/WAb8fwV2AjSvd
	 IjUp6tarta5Dx8u0pkN77TUTOmHiU9mhRpznRTDAwmkHkh+nIVkWeh5T947U37whiJ
	 oJ9db9YSPFK96gEe++nlxvYUH2FGBk25wA7Bj9XhUJXEJdgQMcTwiQ3ueYIf7Onk3l
	 xFkN8h9Dqxffr9ocpDgO9dpBgUGT7vvUjRahukl6fcjt/0kzxvqKDp9PWuSa0CfMkM
	 AXl6lvzeonAnzQV5oBIHv9zHznTnz19FbX1+51+QuWyGAVAln5MJaK5D95JrLAIxRi
	 RjdSYyORuDNEQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 kernel@collabora.com
In-Reply-To: <20230522170324.61349-1-sebastian.reichel@collabora.com>
References: <20230522170324.61349-1-sebastian.reichel@collabora.com>
Subject: Re: [PATCH v3 0/7] phy-rockchip-inno-usb2: add RK3588 support
Message-Id: <168906148486.189433.2848523710050580119.b4-ty@kernel.org>
Date: Tue, 11 Jul 2023 13:14:44 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_004450_179327_F112D0A8 
X-CRM114-Status: GOOD (  13.75  )
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


On Mon, 22 May 2023 19:03:17 +0200, Sebastian Reichel wrote:
> This adds RK3588 to the Rockchip Inno USB2 PHY driver. The RK3588 has four of
> them. Two are used for USB2 and two are used by USB3 controllers (for USB2
> fallback mode). All of them can be used with this patchset.
> 
> Changes since PATCHv2:
>  * https://lore.kernel.org/linux-phy/20230403202307.120562-1-sebastian.reichel@collabora.com/
>  * Dropped patch adding the syscon compatible to the DT binding (applied by Heiko)
>  * Collected Reviewed-by from Rob Herring for DT binding patch (DT binding)
>  * Rebased to v6.4-rc1
>  * Removed superfluous init found by Vinod Koul
>  * Added one additional patch improving the error message for missing phy-config
>  * Fixed address_cells=2 code to not break the PHY at offset 0. I didn't notice it with the
>    previous versions, since that PHY is used for USB3 on Rockchip evaluation board and I
>    only started working on that recently.
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: phy: rockchip,inno-usb2phy: add rk3588
      commit: 26720f89ee6878ef505812e852a3e914b7cbfe44
[2/7] phy: phy-rockchip-inno-usb2: add rk3588 support
      commit: 52b99b871eb79637342660b46c900642483d4412
[3/7] phy: phy-rockchip-inno-usb2: add reset support
      commit: 44d88aa9ae81c79ccc47ba4ef85aeda968bc4a50
[4/7] phy: phy-rockchip-inno-usb2: add rk3588 phy tuning support
      commit: 7d508a92e4588a59b909e235667d515051dd5955
[5/7] phy: phy-rockchip-inno-usb2: simplify phy clock handling
      commit: f4ca578b9803601074ab0d9e366b5fcda504e5a6
[6/7] phy: phy-rockchip-inno-usb2: simplify getting match data
      commit: 2e5ead8478e8e4a7b3d63a2001c2f0022b2f5e1b
[7/7] phy: phy-rockchip-inno-usb2: improve error message
      commit: e7254a4a7c444fa194440fa8dc73c7728e927162

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
