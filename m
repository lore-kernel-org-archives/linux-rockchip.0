Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3118CD1284
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Apr 2024 11:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UA1HXPuc2c6J472IFsdB1falHi5TiUawcF3CeWeGyPQ=; b=vkqr2aQfcr9qxe
	H/c/n30LaKcoZKeYaBqiCSOGoixpQayM8UKgyHqIwWjwAWpzZwWonTu1h4CwqbJLOvz+N+hikbM3Q
	aVO3qjUFvEQUQBmC5aziX+oO2ncWZXgigVorNlAcYzS0/0Az0PrpU8Af7BqwD5Rk0JNQ5AhCL8yn4
	DdvZK3i1Ig+JvmG/4RpUoIMas+fuI4CJPn5MJIZ1kZS+sjIuPkNnRctj04vBGoie75RIv4m7DG0Ck
	SHXXnqdX/oQFRkcRDNCTd4tTqAOXh89mqnI5vVtWcl4JUTXJk1PHmAyUuntMehspHM3Qzcgip8DUE
	iWdvhKTJIueSJNgfFIhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru9q5-00000001jzS-3VJ2;
	Tue, 09 Apr 2024 11:40:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ru9q0-00000001jwe-2HOV;
	Tue, 09 Apr 2024 11:40:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id ED38D616A9;
	Tue,  9 Apr 2024 11:40:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 859F1C433C7;
	Tue,  9 Apr 2024 11:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712662827;
	bh=MDm0KRglBzo5PbbZbHHd+NCNNsHxXViVQ+IbGUpzics=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=pzL+6kJaDdYmTmRlcOvJ2z5VrVEFabYiYR/bxbdw6mPCztSRaxTjlVXSELOVjzSuF
	 h3Ui2P3fLh2PL3460wQDcaEKnZNHS64gKULMQ/ywho9MwUqniWuDm/s4VIdiNDudi5
	 RK47zeRtn45sYzkLQxJzUvFCsehKRdkBf0m4b4hk/0tlSqhnMXWRt++b8nypQwXGvv
	 e/ecFRCO606xd8j/7j2rxNpoWpyHVOx1wLQ2rHH5Gdd7f+E/lJmt26F5VAgEYOPggM
	 s5y3MOuf9E+8Wm5Cm8zwvqIEtTr2MDOqKxuQv12El8ExSf+A8tcExN6leXFEefb53h
	 X02ogHi+iqlJg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 73C10C395F6;
	Tue,  9 Apr 2024 11:40:27 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH] dt-bindings: net: rockchip-dwmac: use rgmii-id in example
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171266282747.30909.11983889718535172879.git-patchwork-notify@kernel.org>
Date: Tue, 09 Apr 2024 11:40:27 +0000
References: <20240408-rockchip-dwmac-rgmii-id-binding-v1-1-3886d1a8bd54@pengutronix.de>
In-Reply-To: <20240408-rockchip-dwmac-rgmii-id-binding-v1-1-3886d1a8bd54@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, david.wu@rock-chips.com,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, andrew@lunn.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_044028_672533_93F31514 
X-CRM114-Status: UNSURE (   9.69  )
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

Hello:

This patch was applied to netdev/net-next.git (main)
by Paolo Abeni <pabeni@redhat.com>:

On Mon, 08 Apr 2024 08:44:10 +0200 you wrote:
> The dwmac supports specifying the RGMII clock delays, but it is
> recommended to use rgmii-id and to specify the delays in the phy node
> instead [1].
> 
> Change the example accordingly to no longer promote this undesired
> setting.
> 
> [...]

Here is the summary with links:
  - dt-bindings: net: rockchip-dwmac: use rgmii-id in example
    https://git.kernel.org/netdev/net-next/c/220d63f249ec

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
