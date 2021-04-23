Return-Path: <SRS0=DeNp=JU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A968C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 18:07:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F0D3961207
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 18:07:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F0D3961207
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AILnmGavgpvj1+69ly9Al1cPc/JH+jE3sQfqBYat2yk=; b=AOxc4uG2wkGS25wG6pMUK9a6M
	AClvNbfqQCJXFz6zLJ1g1JZG54FYo3SDNGr4iwMP3VzZ3iM+izmyCHOrMA/iU+hmYM3hn4A9KCoV4
	pBG79049la9YfQjnsSinAdRpksjuaEyDvdT7XNa3LZZWUMnI0yY3L9KvmlAswkbYUGNzmh9/rf9DT
	Hx76TD8tQMTE168WQ7l9a1p9mLt0JvLF/8SN1NQx1OOsMbpd79gEStCx907yS5ZrblFn8ZGvWCo7e
	e/eC59uMVnwCpWDafVMLna/vwnh66PiUUO9icDv5fh40SoBTxm35fR16a/HZlDBiNuDoSUdgnWt7W
	CHWYUIrGw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1la0Cl-0025LR-IK; Fri, 23 Apr 2021 18:07:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1la0Cg-0025L6-D5
 for linux-rockchip@desiato.infradead.org; Fri, 23 Apr 2021 18:06:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=aJwiR8LyEpRBLtQYO6WrsDXcgPgrpvoQm7iEXOGKjfg=; b=0SkwrTDPjlOLkOh5QKxU0a+nWW
 3SFw8sJKb9hvTXWqz0aV/PbxjBcGh4eIcLyYqK/NZa3lZhTV73WKj5RutsHriuc7BNM0ymyIPCMY+
 9kWYwEuUyJwCUnn4HZwC3jy4QNtSTuKAwZHUfnwhWXRdi3fn8rGYXEWmkZXQvRT71YMx2jJRoufIW
 zcBj/tpEs8bVk+KIvRi2Cv1N1kDVZQE8//AZAiHZYWBC34ZHmMr8QPaqTr3UCpQqUVacSAElUmlSu
 9Ilr7MiItuxrfWQH1Q64kAitlGpNheVzDlsCPnVKineKzRP17wtr7JFFh6hf/33ybLXZWABtcAJkl
 gmsQ0Y+g==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1la0Cb-00EbpB-1L
 for linux-rockchip@lists.infradead.org; Fri, 23 Apr 2021 18:06:57 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1E34C60FE6;
 Fri, 23 Apr 2021 18:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1619201211;
 bh=zY8W3QUzcAWl6AFnPYVD24wO4KnCsJRKIXsxHN8wx1c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=dTiTKJSplBFdws7Z670JSl0N3QnlSoG/MoXHlgmknls69QEaMI4AZS0zAiJVGn6Sn
 80zKX+YZ7XvG4iXz0s4AVJF7PHczSnd/AQyvbSPpNTLmdAyn5lOtZNTpooK7p/6FC1
 tYpZxIH9z9nzGB0SI+BfDZ9E2AzLg15qzJrGXI7jqb/mpOpg1Jm17zVT5pVi2O1jwY
 DMnxOBp4giIJ6ylJop8R/4fT32MRGwUN31+Hqn+yShNjHWYwq9skVN5ws+UvxLITk6
 WHyYdsAyNQGxXM95V//QHFcNbIjUOm+qm21Uw46Or6ZeP4jSGF8o5Ss30h+6QcdSiP
 spTh0yeAk27/g==
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Ezequiel Garcia <ezequiel@collabora.com>, devicetree@vger.kernel.org
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Joseph Chen <chenjh@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 kernel@collabora.com, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Tang Cheng (TCS)
Date: Fri, 23 Apr 2021 19:06:17 +0100
Message-Id: <161920103667.15429.2219995515166264842.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210421210338.43819-1-ezequiel@collabora.com>
References: <20210421210338.43819-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_110653_136113_7B1F8653 
X-CRM114-Status: GOOD (  10.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, 21 Apr 2021 18:03:36 -0300, Ezequiel Garcia wrote:
> Shenzhen City Tang Cheng Technology (http://www.tctek.cn/)
> is a power management IC manufacturer.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/3] dt-bindings: vendor-prefixes: Add Tang Cheng (TCS)
      commit: 3007accc39776e0888f7692bd1cb639c51cc29c5
[2/3] dt-bindings: regulator: Add support for TCS4525
      commit: f80505fdff771c89c9350895e99140ffc824e564
[3/3] regulator: fan53555: Add TCS4525 DCDC support
      commit: 914df8faa7d6fdff7afa1fbde888a2bed8d72fa7

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
