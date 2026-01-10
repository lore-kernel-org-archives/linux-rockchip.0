Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE7D2D277CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 01:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cWZZIgkg2fpH5t5Sq3s2V9ahV/tmIGl10Hcd/4eFol8=; b=3oELcw1b+DtFJ9
	faA7rq+j0YnehLpz9Vxs4k2XHkoK3BomCsJm2UqultqoD7Liii7HgCMPbM74fH1ohb2wAP9T4QNHt
	Z1m6+SshZzaoRy9Gd3Krm1T3Zkv3tZBQT0JACoJ8d+/3Wx83Ihvg5PCJfCfyWxIeHA6IkO0Jhbnc+
	12qDV/vQNXuPkFyAs+qV0dWIUyjXgU6Vgio1crx9kstONL+sJziQ0o212XXr0JN5UtwD4sEkIcm6t
	ASAxKVrunWzC8st4bFhnrf9qnDpD4Fn8AcodGuiDwEu4zFQvhRsykkSFsctE7hA8ejJsf3v/vACtS
	a8IWSUPwbCWryPfFtmRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veO13-00000003AGj-113G;
	Sat, 10 Jan 2026 01:43:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veO10-00000003AG6-2yzZ;
	Sat, 10 Jan 2026 01:43:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 31A19600B0;
	Sat, 10 Jan 2026 01:43:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8045C4CEF1;
	Sat, 10 Jan 2026 01:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768009420;
	bh=cl5jRiYV3kNHVdEZfbTnum5lCpQivb1iKFoKtYMyqVU=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=i5pvintRKRVYeAWSh9dsiUf6pjBI2UULnfXgnyhJQaE2lHLFxheKUnVbs/uyF+b+v
	 Z8D1tnEEpDKf7/ynfT+O9Tt3EWtRFlyhlXFC7mu0ZplSSxlbnfnZFEZZmHffXqgPMU
	 aRvIo8Eqklv+IXqGCxggs9v+uL1ZxRJgrKoR5T27x67NipIWc4YRwIWX8O27ctZeJu
	 JwabJMAK/35OqNcRKjHgTZUtFZEdIFW5+Z2JyO8IV1kbWo2R/oGDZtoRICUyRgb9B6
	 xczg/NuI+T+X2uHa9UEXxjV9cNJLIVzC9fkSPDWSWRC2pneUWcaxRl0ePzoegU1rZ8
	 PWkwod7d/HTeg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B6B423AA9F46;
	Sat, 10 Jan 2026 01:40:17 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH net-next] dt-bindings: net: rockchip-dwmac: Allow
 "dma-coherent"
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <176800921652.446502.5954901087399203743.git-patchwork-notify@kernel.org>
Date: Sat, 10 Jan 2026 01:40:16 +0000
References: <20260108225318.1325114-2-robh@kernel.org>
In-Reply-To: <20260108225318.1325114-2-robh@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, krzk+dt@kernel.org, conor+dt@kernel.org,
 heiko@sntech.de, david.wu@rock-chips.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
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

Hello:

This patch was applied to netdev/net-next.git (main)
by Jakub Kicinski <kuba@kernel.org>:

On Thu,  8 Jan 2026 16:53:18 -0600 you wrote:
> The GMAC is coherent on RK3576, so allow the "dma-coherent" property.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Here is the summary with links:
  - [net-next] dt-bindings: net: rockchip-dwmac: Allow "dma-coherent"
    https://git.kernel.org/netdev/net-next/c/72dc44679b14

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
