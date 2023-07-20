Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5005DC001DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jul 2023 04:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SS44OkHal97hDdWdwzBS7TH12RBtMHZ97fpRYlsXywI=; b=37tPd39/wexafl
	ll4Bvb6QahDAo88UV1QWaOCDi4+6TucgGECV/joRoM9cD8DAW8vBSfKFNJpjRgFi6B1Sest3qLBP9
	gQxyTs9i/xBYMAm29Y+AZKBf4QslT50iIft+kFUPMQFRxJ/kcISlFixAAq5+Idr/VLZWFKpwwt/t4
	yfk1rgCHOjpl/Vez9FXBAfbrMRF6lpv6dNq2cVy+MNurxlJv/yHB4APLtdv0axyX9TDRENGEjbZUh
	X+cTkE9LdgUeYTCWBgg6HZm1FA/Izx8VXxCotpi9WOcr2FbGBDSKUHzctgt1OZXn21H30CYpjMWNn
	QUgxX7zGL+lg+WSnuqWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMKq3-009h42-0V;
	Thu, 20 Jul 2023 04:00:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMKpz-009h2k-2M;
	Thu, 20 Jul 2023 04:00:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A8478615B4;
	Thu, 20 Jul 2023 04:00:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EB8BC433CA;
	Thu, 20 Jul 2023 04:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689825622;
	bh=Asw33ccJGt+82XG4DwTLLFE/7jX9zPKbdust7yp+7zo=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=T82iKtVh2/i6QbhxfzzhypcrFBwq6I4+pUDf3qD4BugGzMEhLOFAkh4XuryqIaHKO
	 5PtMH/12pLabp95FXlLv6ixoT4Wx2Cp50Yx+cONhno+Jv1CrpuEKbiznlhKFYrnTmM
	 6pBIhUbrzNTVF/Te3c5vQy0X1IXp6XQ4o6HoYAG2WLWU6jZpfqAPzEbVSK2LDBbQhl
	 ChnIIS7mPDVdGdhB+1/fN5SDnsTzmcQlBfVtHS0fTbVH5K/CCTDb7SpnVgRvQkYWZ2
	 kpNrr6hF3zHDc5lMfM6NNb1bAMEer1Bvqwze3pLlCKaxuifl1sYf138y9DpNc+e1wN
	 UEZgA+dPKQ1sA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id EDB11E21EFE;
	Thu, 20 Jul 2023 04:00:21 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH] dt-bindings: net: rockchip-dwmac: add default 'input' for
 clock_in_out
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <168982562196.4243.14007279822210402667.git-patchwork-notify@kernel.org>
Date: Thu, 20 Jul 2023 04:00:21 +0000
References: <20230718090914.282293-1-eugen.hristev@collabora.com>
In-Reply-To: <20230718090914.282293-1-eugen.hristev@collabora.com>
To: Eugen Hristev <eugen.hristev@collabora.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, david.wu@rock-chips.com, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230719_210023_812214_5B4B1B80 
X-CRM114-Status: GOOD (  11.41  )
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

On Tue, 18 Jul 2023 12:09:14 +0300 you wrote:
> 'clock_in_out' property is optional, and it can be one of two enums.
> The binding does not specify what is the behavior when the property is
> missing altogether.
> Hence, add a default value that the driver can use.
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@collabora.com>
> 
> [...]

Here is the summary with links:
  - dt-bindings: net: rockchip-dwmac: add default 'input' for clock_in_out
    https://git.kernel.org/netdev/net-next/c/51318bf44395

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
