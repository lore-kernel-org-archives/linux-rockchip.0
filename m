Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CCE5C3ABCC
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 May 2025 12:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FA5n0vMecGJHbDkCX4ONGzwrd42yiTx+KvZKf/DVHrI=; b=bTsks/6HyZJONQ
	ti/VpNNydwuDKBu0vlPKuT0IGd3aBZtXFecSO8nBaqAlJL7UBHIq/9GoaX5fvm41fF/h5YjzYkdYE
	CDeWVUOw8OV0SX/FfKYExH7EgXiRtmh8FxkAfcUlUAwhGcPqNl9TVEsvRdGjtstdNX3bbKWb3d6JS
	VEh8OjL0n/M6OP/T6AXaVmFvwRT0eGFLmVl0f+wwUw8Yee8QuWT68iTAgM0u5XGm/sbAvoim3OOoE
	jWpJWH0EBhmMqbEnqZiVep7x/OSN4PZ4msxs+8IeXjovdbPjUCpFuJzNDkqIxCcdA92s0AYdTIzA8
	dnQVN6mHDkmbWCyeNOLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFBHq-0000000F6QY-28pi;
	Wed, 14 May 2025 12:32:38 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAR0-0000000EubO-0EbN;
	Wed, 14 May 2025 11:38:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 371065C0529;
	Wed, 14 May 2025 11:35:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF8EFC4CEF1;
	Wed, 14 May 2025 11:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222681;
	bh=VTTFlFqKbZj0R8bXBdiVnWfhHcHtgwA35tKgTuWcnVU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=hYEdMW7LCyn/VajqjaK57h7r8AIr9wN+sZU6do3nH9g10ZAapJSRlZ7IyL2jTwJJT
	 E0lHBkvqO5apGHk6vnvxGBjrEoF2CraczeBykW5lB/gRMGzgUFSMkxCefMcxj6X55z
	 I7mzAJqyT/H5Pyu6J5uo6NPluCkc4lphFKhQ45JHGeajXxZksrdY8NJveHmAt16luC
	 aidw2Z558EqKwupkCgSK4Xp4BY1nx6hK/zPRInmK0wxuqeEJk+gORwD/pBWKEPnjt6
	 fyU33tAJdUv3u0X4g0yD2l2uUS89g1EMqnbrj+6oKcy2XxK54rRyRtrGk3EmGQMQZn
	 h4p/WzsjKf5Sw==
From: Vinod Koul <vkoul@kernel.org>
To: heiko@sntech.de, Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250415050005.52773-1-kever.yang@rock-chips.com>
References: <20250415050005.52773-1-kever.yang@rock-chips.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3562
Message-Id: <174722267864.85510.12860114066219144808.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:58 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_043802_139708_81D8CDD9 
X-CRM114-Status: UNSURE (   4.98  )
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


On Tue, 15 Apr 2025 13:00:04 +0800, Kever Yang wrote:
> Add compatible for the USB2 phy in the Rockchip RK3562 SoC.
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: rockchip,inno-usb2phy: add rk3562
      commit: abf55cdf9c5e58bac1feaff2e21bec43b898746c
[2/2] phy: rockchip: inno-usb2: Add usb2 phy support for rk3562
      commit: 80edd21db00c0829c276baafa8871ae02c6e9d91

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
