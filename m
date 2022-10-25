Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD03CC38A2D
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Oct 2022 09:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFqaYcNs36p53urOHjOsrC5UwleZG37SnAhybPuirNM=; b=iMK9BtM555vu1U
	CMQ+7wqWK8FvAAdJ/U46j4ONBPiAHZxYOP19slyEQu2LtKjWx3tXYzHQyLtdDisGqN6Lip2YGZAYE
	ax3TtLj5VCrREg50+HP3mLGkB3rA2f8Kfttnt1kClGSEb/gfGD5A2AERp/2bU+NmdsgGJMIQviqA4
	J2zytxX+JSfah5jT6hfRabRu+nDjI+M2yYleYwCQpzjmzB8bmHrPrisUh7bqi00LzpDUiLYpVn3KB
	ONZFnb7azjnV0MFj9tBmOs6HQj6qLn/PM2ydlMsgRuWVgdOpPH/1upy6WIlU8MMVuqaQY+RghurCZ
	8LH/MQdJ+MyRfIF9/CJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onGGk-004b1I-7g; Tue, 25 Oct 2022 09:30:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onG6a-004Wqv-LS; Tue, 25 Oct 2022 09:20:18 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AFE2D61849;
	Tue, 25 Oct 2022 09:20:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7964DC433B5;
	Tue, 25 Oct 2022 09:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666689615;
	bh=hACZiTYZYDyzasP5wFsIpRZ9rdFhnDUQvmfvNfUMEEk=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=cD5C2J3lTb3LBmMjAjzGWol9h9jbj4EgeNEDKgtWDAoxdYNKos0clvUCJZcTuTHgH
	 DrWxir5YvrgdmkjmJ1/fF8EnlrygpahhqhwA5P4ZMmZ30gM1c1Bl4K6V9Q0h7sAFvZ
	 OMHEUtJYqeMISxQOOylqWkXAjpwiSt3wgikl4D1fH9XhFwcK+g1eoW3Vz5ESj4gYqt
	 e9BW+RO+eibNnHw1q8qbyFj3MiJF8V8OvFZIjFpnAcD9PmnPWOu03FwoDJvOO/irW7
	 wbWrcUgJ8aez3llBHmf1rhGsxSv0qW2/iR+YbkdSMKmihWmteSFH0T2cT+QnmIKLGy
	 eZAYRczEojtww==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 5B841E270DE;
	Tue, 25 Oct 2022 09:20:15 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] net: stmmac: rk3588: Allow multiple gmac controller
From: patchwork-bot+netdevbpf@kernel.org
Message-Id:  <166668961537.26490.4040099605594651458.git-patchwork-notify@kernel.org>
Date: Tue, 25 Oct 2022 09:20:15 +0000
References: <20221021172422.88534-1-sebastian.reichel@collabora.com>
In-Reply-To: <20221021172422.88534-1-sebastian.reichel@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: peppe.cavallaro@st.com, alexandre.torgue@foss.st.com,
 joabreu@synopsys.com, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@collabora.com, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_022016_770339_217B8AC1 
X-CRM114-Status: GOOD (  10.29  )
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

This patch was applied to netdev/net.git (master)
by Paolo Abeni <pabeni@redhat.com>:

On Fri, 21 Oct 2022 19:24:22 +0200 you wrote:
> From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> 
> RK3588(s) can have multiple gmac controllers.
> Re-use rk3568 logic to distinguish them.
> 
> Fixes: 2f2b60a0ec28 ("net: ethernet: stmmac: dwmac-rk: Add gmac support for rk3588")
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> [...]

Here is the summary with links:
  - [1/1] net: stmmac: rk3588: Allow multiple gmac controller
    https://git.kernel.org/netdev/net/c/88619e77b33d

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
