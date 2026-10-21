Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B91F0606A32E
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 02:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4fG0+KzH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=NYaa27a+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZG6EUCzaIH4ARPh3Pef9CQDKAAJrJCn+Zgo/iDjtmc=; b=4fG0+KzHllt+TW
	R1o4Cfs87hWFOZtO9W1aig84kH7hejh0hBFGFqM80NUnJscpO6WS+FwZDhSeLjjEAZujkr89iPeIk
	vTn5w0kW7EOUn/ZRliE3hBX1DcHke65MFmZVAj8MRrXjMLCp3LKr/xKMrN4GnO+7gueYgFirDQ4dj
	vPy0en0rNAP0NrGOOohWjggEpM8mmEVjOLThaMmOEB9aurpd5AdokJM087jDY4p69y42xWLXe5pMw
	MnM4y/monh0LBulNsKg3kGm6K7TzcEc2NpoUf0YCL8CBaUM+uI9UEWwO93XRl/55Zi4FSpE2KPDqY
	grmhoMqZCGiuyLO2dVLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJLw6-0000000Aw59-45Wj;
	Wed, 21 Oct 2026 02:20:14 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJLw4-0000000Aw4j-2zpI;
	Wed, 21 Oct 2026 02:20:12 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 638FA60A66;
	Wed, 21 Oct 2026 02:20:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BC5E1F000CA;
	Wed, 21 Oct 2026 02:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792549211;
	bh=CPwgKGW+9+HgEnPqxnA55xboDkaUxoq5NKTXtZj/nJE=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc;
	b=NYaa27a+E7gei+Ol9psKdfXfiAU6OpungqJR76z1KeeQFEFjyBLQ7xIxVzxWnluTL
	 lv3N7b/TqCO/EiJdxHVaCU/fcS6BXhoq6fF14VrgR+8ZHJNQf46BZXs2+XZrUw9yu2
	 /5Dr1WnBxhlBBstrX1xZ2aF6ul1B9XIocoPHlvkMtCSnKmDJeRAtjl0UvhLiY7ZJYp
	 3UJd9MC0EZ19gJ/B5qErRGgDAFgHjiX+qs3qfbAw2AxYBptLmuv9JTlDFdtBnYRi2t
	 k1Q1LqBg+wMQ3NJei12Fvm2YJG37ykFf7fVyuZSUo5hlj3OGXZY/EK4OAQNR3gnpqp
	 SiLeJk2xQV++w==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F146D3809A0D;
	Wed, 21 Oct 2026 02:20:10 +0000 (UTC)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH net-next v16 0/7] net: stmmac: qcom-ethqos: add support
 for
 SCMI power domains
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <179254920980.330607.14638814196996636300.git-patchwork-notify@kernel.org>
Date: Wed, 21 Oct 2026 02:20:09 +0000
References: <20261014-qcom-sa8255p-emac-v16-0-0266c2ead980@oss.qualcomm.com>
In-Reply-To: <20261014-qcom-sa8255p-emac-v16-0-0266c2ead980@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, andrew+netdev@lunn.ch,
 davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com, vkoul@kernel.org,
 peppe.cavallaro@st.com, wens@kernel.org, jernej.skrabec@gmail.com,
 neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com,
 shawnguo@kernel.org, festevam@gmail.com, jan.petrous@oss.nxp.com,
 s32@nxp.com, mohd.anwar@oss.qualcomm.com, romain.gantois@bootlin.com,
 geert+renesas@glider.be, magnus.damm@gmail.com, mripard@kernel.org,
 christophe.roullier@foss.st.com, brgl@kernel.org, edumazet@kernel.org,
 radu@rendec.net, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, dfustini@tenstorrent.com,
 linux-sunxi@lists.linux.dev, linux-amlogic@lists.infradead.org,
 linux-mips@vger.kernel.org, imx@lists.linux.dev,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 sophgo@lists.linux.dev, linux-riscv@lists.infradead.org,
 bartosz.golaszewski@linaro.org, sashiko-bot@kernel.org,
 martin.blumenstingl@googlemail.com, krzysztof.kozlowski@oss.qualcomm.com,
 prabhakar.mahadev-lad.rj@bp.renesas.com
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hello:

This series was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Wed, 14 Oct 2026 14:36:39 +0200 you wrote:
> Add support for the firmware-managed variant of the DesignWare MAC on
> the sa8255p platform. This series contains new DT bindings and driver
> changes required to support the MAC in the STMMAC driver.
> 
> It also reorganizes the ethqos code quite a bit to make the introduction
> of power domains into the driver a bit easier on the eye.
> 
> [...]

Here is the summary with links:
  - [net-next,v16,1/7] net: stmmac: dwmac4: don't program the 1us tick counter without a CSR clock
    https://git.kernel.org/netdev/net-next/c/d09d7b8e86e5
  - [net-next,v16,2/7] dt-bindings: net: qcom: document the ethqos device for SCMI-based systems
    https://git.kernel.org/netdev/net-next/c/534198a05d92
  - [net-next,v16,3/7] net: stmmac: qcom-ethqos: set serdes mode before powerup
    https://git.kernel.org/netdev/net-next/c/7af44cb9e447
  - [net-next,v16,4/7] net: stmmac: qcom-ethqos: update phy_mode to the resolved interface in mac_finish()
    https://git.kernel.org/netdev/net-next/c/05b3ea7346e3
  - [net-next,v16,5/7] net: stmmac: qcom-ethqos: reuse the address of ethqos_emac_driver_data
    https://git.kernel.org/netdev/net-next/c/92719abd6378
  - [net-next,v16,6/7] net: stmmac: qcom-ethqos: factor out linux-level setup into a separate function
    https://git.kernel.org/netdev/net-next/c/acf1e3db9151
  - [net-next,v16,7/7] net: stmmac: qcom-ethqos: add support for sa8255p
    https://git.kernel.org/netdev/net-next/c/bb3183e1c938

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
