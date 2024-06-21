Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40FBAC2BA1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 09:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tI6JaiyOHOoE7930yj81vHBJ1pO2CJkDsSCMc55V/u0=; b=Wr6XjJ2V51bAnd
	vm1pzGZOfFzVRrH5ngjxWwttPc3D7CHCaxf9mjQUT6iKNUHdTiKckpddZYWM9+XltDk1nUtUvitUl
	eA50RAQCyly99S/fte8Vv8GfCcxPj4ikp5moTCezBtv29UNJnF5bwc36BzaOm++hbbzNIXIK3PBXr
	6vAmdy6ncqUjQAh4TDVzx3d2pa8w6EimnrHjuzqeAu+35sL8xBl9IVJgI7okQA8JqbL5PmC7rBW+3
	ULAxDim3hF0iLvzgiN1lZFQ6yh2/ARiHeSprI20ugQS9SRqsMbe6YrjhqpCzZp3BlAjTgSYIa8SHk
	gdO8/t0jCf2DpAJjrp6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKaI2-00000008Ugy-41pa;
	Fri, 21 Jun 2024 09:10:38 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKaHw-00000008UdT-15Td;
	Fri, 21 Jun 2024 09:10:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9DDE2CE2BC6;
	Fri, 21 Jun 2024 09:10:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3107C32781;
	Fri, 21 Jun 2024 09:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718961029;
	bh=dtNamkEHpUtPZU65QnkGixC6WZbt3TIA8r+pccjArFA=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=U1PI06Lx5vb8BQ15ziyZT7ferY0gRjZsLwdE8yrSGWKapNGOBigxYv65Fb2FTVUVf
	 fUmgfd5Ap62KFdpXtDhS8x+HSwhnglTyFK9PVU2WWcCtF/S5Cl1995aw6EJ5ERmeN3
	 fPBosWtN6+4/CdVvABZsweTgUK+hMnGJ2Xz3bQu0T9dKBltW9JCgDUXe6PVZx3cl85
	 h8ou/zmcOr0/lHrtOMr990qd4DNg0N3kgZt4KtbXXJflLzKfRWm0J07WSTFlW6QYt+
	 KD41A5zCUmFwZX1FygPsz9XkVsAAHme3PVWu9VS2opdV90UtP1//wRup/UbOTdVp/C
	 o05Wx6EGoVhOA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id C18E6C4332D;
	Fri, 21 Jun 2024 09:10:29 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH v1 0/3] cleanup arc emac
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: <171896102978.12983.298145904993537431.git-patchwork-notify@kernel.org>
Date: Fri, 21 Jun 2024 09:10:29 +0000
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
In-Reply-To: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240621_021032_510160_59423C4E 
X-CRM114-Status: UNSURE (   9.05  )
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

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Tue, 18 Jun 2024 18:11:49 +0200 you wrote:
> The Rockchip emac binding for rk3036/rk3066/rk3188 has been converted to YAML
> with the ethernet-phy node in a mdio node. This requires some driver fixes
> by someone that can do hardware testing.
> 
> In order to make a future fix easier make the driver 'Rockchip only'
> by removing the obsolete part of the arc emac driver.
> 
> [...]

Here is the summary with links:
  - [v1,1/3] ARM: dts: rockchip: rk3xxx: fix emac node
    (no matching commit)
  - [v1,2/3] net: ethernet: arc: remove emac_arc driver
    (no matching commit)
  - [v1,3/3] dt-bindings: net: remove arc_emac.txt
    https://git.kernel.org/netdev/net-next/c/8a3913c8e05b

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
