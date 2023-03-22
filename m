Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A3A6C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 23:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eOmMwwZ8nYhj6SJ8nKql2/a0+GV3FN8TktmZZz3iJVg=; b=PmWbg2lncxvKyw
	9/lp7Q4c3kAFYhADUdMPjmIbtyTeE5OFtb6JufqrjIbp+k0gMkNvwbYcWP4qpmllcnKseJ0Gi7IkD
	X8XQJJzfFo6E0KuAt+T0zSd57EhILiegI7+AH9JI/+j79k5VQlhZLrI4jKzkU/zDHIV1rQnaKPsUg
	aWsuZTuqE2Pq7jP6F27Qd9YrLIXFG9/cVzvx/WHVN1oNsU809RRixddWhvKAXg9zh0MzO+ckPzatT
	MUBJWVdYrEiQh+kjF/7/srO9N94CiZ9R8lyAEha3Sgfexrpi3ciP7UOgoxtECBVYW6cJdVGZvwNK/
	+uYtibiOe65T81YGXa/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf88G-000CG5-2E;
	Wed, 22 Mar 2023 23:44:40 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pf88E-000CEi-0M
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Mar 2023 23:44:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 55979B81E9F;
	Wed, 22 Mar 2023 23:44:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 156F3C433EF;
	Wed, 22 Mar 2023 23:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679528675;
	bh=X0T3MzV72DC3xsS/BzUx423vl2zXQuHSu+yzIyuL82w=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=RCHAuZ8+cJJARHXGI+dpKAFV4q2baBzE328b7YD0UOY02PVuvIv88UlBwT4HK5I26
	 peLgac+q269msGYmbjkf+GtqnpMTffG/r0BEaEWxaeTazk92R3iKeSs94NTCiAMXtl
	 2FVj+ySE9KjU9zc1cggLf2IPUy5SO/S1lsqnb20P4tKFfCDbBA1vx5tl0a2fKdijP+
	 B9I2tDXy+lihutNwcOsMd/9Gksqb4u+vpFzJ+cJ37yqmmL7n9LTnIHuGU3gTrSCAXK
	 fGFLEuPDE+9S5YcV/ZOYOu5N/4Udyo5+y9ve8xruxqw0GSSk6zOec5vl/7+4U8eCj3
	 KPA77uIfH1cCA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id ED14FE52513;
	Wed, 22 Mar 2023 23:44:34 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH 0/3 V5] Bluetooth: Add support for RTL8821CS
From: patchwork-bot+bluetooth@kernel.org
Message-Id:  <167952867496.26660.4065106798245519325.git-patchwork-notify@kernel.org>
Date: Wed, 22 Mar 2023 23:44:34 +0000
References: <20230315173657.28692-1-macroalpha82@gmail.com>
In-Reply-To: <20230315173657.28692-1-macroalpha82@gmail.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-bluetooth@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alistair@alistair23.me, anarsoul@gmail.com,
 luiz.dentz@gmail.com, johan.hedberg@gmail.com, marcel@holtmann.org,
 heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 macromorgan@hotmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_164438_306647_B9D3A3CE 
X-CRM114-Status: GOOD (  13.35  )
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

This series was applied to bluetooth/bluetooth-next.git (master)
by Luiz Augusto von Dentz <luiz.von.dentz@intel.com>:

On Wed, 15 Mar 2023 12:36:54 -0500 you wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This patch series is to add support for the RTL8821CS Bluetooth
> controller found on the RTL8821CS WiFi/Bluetooth combo chip.
> 
> This has been tested with firmware version 0x75b8f098 which has been
> submitted by Realtek for inclusion in linux-firmware.
> 
> [...]

Here is the summary with links:
  - [1/3,V5] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
    (no matching commit)
  - [2/3,V5] Bluetooth: hci_h5: btrtl: Add support for RTL8821CS
    https://git.kernel.org/bluetooth/bluetooth-next/c/60f8c67d065a
  - [3/3,V5] arm64: dts: rockchip: Update compatible for bluetooth
    (no matching commit)

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
