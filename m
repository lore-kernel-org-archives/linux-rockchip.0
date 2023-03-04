Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53910C61DA3
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Mar 2023 00:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Date:
	Message-Id:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jBF4WwUcR/yxLbao3KZjMjU3i4sSaMMXo8iKxITpZgA=; b=f7TutrTu1yraH1
	yctvRluhhCN0w/RUnhzu7jV2mpRxpRzhM5XXdyQ0MOs4JII4xGqDfy75kZStko0icBhUn+YdraNM2
	bLhj3jZ0ySuz5Ymg00fNOCbTfniknknrejd287Fm9bDg00Wgq14+63xMZ3QF46tgRXA6aDfiqAmrR
	sD4Klid2TVoEsBFpoCziZbhFCtMepBQyOsVlBNv2zNASagAdRwhBDCxFpuHgfSRtJ7kMaDCd5k8wH
	LUxZ9tkCMqxP7rAz25EFEVMJ3TKunZ48/J/Uf1Nj5BFnMzE8oIXp3hU4XAZdcgR201rEc/JPYJDYZ
	KC5nd9kZzBTomT3vXVjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYG6V-007wK6-EE; Sat, 04 Mar 2023 00:50:27 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYG6T-007wJH-4i
	for linux-rockchip@lists.infradead.org; Sat, 04 Mar 2023 00:50:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 9843EB81A0F;
	Sat,  4 Mar 2023 00:50:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4966DC433EF;
	Sat,  4 Mar 2023 00:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677891020;
	bh=rVcauREmGmmQhQT6XeByGl7eoUGolgEpVbV3+QvEZEI=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=U3UE4Tek4mroXX3oKxCGw23OL2tPUkWiy7Kz684lj4s0OOcNulWQe5xcPbmThex9M
	 qfVrrpSBcu0mqArjhbszDRdlt7kRgIolGmPdHPvz+tK9ZpUsesnA5elFK3BUuAsu9Y
	 B2fyqi39Ppspuu5g/HDYsc1cQfMW+Vw4u4SnK+qmZ6k48Ikxdc3bl6BFvG6cWi1r8P
	 ay2kNfbD+L9CrBJX5oBRD57F75tDqjSBi1yPM36MU7u2oilfePYuAp963u9ARlSte3
	 mQxtLtuZXXztrcSsNRDdKbRJrWjNayC6BToyBllSOu4zpu8fGLvusC59IfkrH+1ByM
	 VuxkETT+GJV5g==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 30C70C00445;
	Sat,  4 Mar 2023 00:50:20 +0000 (UTC)
MIME-Version: 1.0
Subject: Re: [PATCH 0/3 V4] Bluetooth: Add support for RTL8821CS
From: patchwork-bot+bluetooth@kernel.org
Message-Id:  <167789102019.19976.12427542691000246930.git-patchwork-notify@kernel.org>
Date: Sat, 04 Mar 2023 00:50:20 +0000
References: <20230228152205.133582-1-macroalpha82@gmail.com>
In-Reply-To: <20230228152205.133582-1-macroalpha82@gmail.com>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-bluetooth@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alistair@alistair23.me, anarsoul@gmail.com,
 luiz.dentz@gmail.com, johan.hedberg@gmail.com, marcel@holtmann.org,
 heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 macromorgan@hotmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_165025_363410_823926AC 
X-CRM114-Status: GOOD (  13.19  )
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

On Tue, 28 Feb 2023 09:22:02 -0600 you wrote:
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
  - [1/3,V4] dt-bindings: net: realtek-bluetooth: Add RTL8821CS
    https://git.kernel.org/bluetooth/bluetooth-next/c/b564bad5b54d
  - [2/3,V4] Bluetooth: hci_h5: btrtl: Add support for RTL8821CS
    https://git.kernel.org/bluetooth/bluetooth-next/c/8b449db459d9
  - [3/3,V4] arm64: dts: rockchip: Update compatible for bluetooth
    https://git.kernel.org/bluetooth/bluetooth-next/c/d305437d4d2a

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
