Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83FB8CA6004
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Oct 2026 21:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qKjiG1VJBgyvM2f46jhobQARaRy7ZvT3wQH/9BL4eU=; b=fuG+hSRULkSS+r
	n9FFV01VSnX2B9TbNYxDWx5xB/rk/Atj7AVOU6Gl3LQQ61VywfLf34ibv/ag4rgbcX+wmmDAUpUUd
	//ywrcfU8b1jOpuhDnK4JnWMz61QK2CTBZHH9822SHR7/PHoUnILM8JB2+Hm+NpUXzNj/Tz9QFehG
	3Jw4FbhbIpHf8kyeb+aa0AhvYfkCTmYDc7vXfYKnBTPiAmbPY9OQw5LcmWFec+6NVqedC+z+sDv2l
	TWvGL1cFaRXgDFcUqfymxFtV82XZgo9hUKG78Ysl8Kc6znK4BhbjQEdJ8B/y93d9yXh6HW5VyyBvb
	wXvPQ+FxG+TnOeEhMjTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEZ1L-00000003BMf-2OKu;
	Wed, 07 Oct 2026 21:17:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEZ1K-00000003BLp-0Kap;
	Wed, 07 Oct 2026 21:17:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 86DBA60A53;
	Wed,  7 Oct 2026 21:17:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 128C01F000FF;
	Wed,  7 Oct 2026 21:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791407869;
	bh=VFF3LPZl8ZhJEd5YpwT/YjFiCZO7rblB8TxKAWBvQ6w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZMa8U76nE2tvAbtN7nHxioC57XLL5twQGg4tccenKDGDDn5R3Es3UZ0hyAMvIdL13
	 KJNLYufm9K9g96mSDU2pn0QSubXw3NvV4UgdHZBnjJQibEvrHCAyDekJmCoNKBj1T3
	 jfeQyqomiGBI9XTzyXESwdrYSuWqBgrxeqI01o2K500AizVBSOD/7Vpn4liO81/pNc
	 DyNiLFhNnR2iRkxIY5Sy6XP5J3r9ny/XLd4bnMPf/j2k/bsSwrL1SpeACwuSGeYkcW
	 UtD8CVZMj2fQ5IsQrH/nRidHTmwgfzNgLmgdWRv032HrfTCkQxpA7CB+UY6omt0cN4
	 bUDqc19pAMMUg==
Date: Wed, 7 Oct 2026 16:17:48 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Alexey Charkov <alchark@flipper.net>
Cc: Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-pm@vger.kernel.org,
	Sebastian Reichel <sre@kernel.org>
Subject: Re: [PATCH v3 1/5] dt-bindings: soc: rockchip: add boot ROM download
 boot mode
Message-ID: <179140786784.381047.12884810066150774616.robh@kernel.org>
References: <20261006-b4-rk3576-reboot-mode-v3-0-6edba064693b@flipper.net>
 <20261006-b4-rk3576-reboot-mode-v3-1-6edba064693b@flipper.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261006-b4-rk3576-reboot-mode-v3-1-6edba064693b@flipper.net>
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


On Tue, 06 Oct 2026 20:02:39 +0400, Alexey Charkov wrote:
> Rockchip boot ROMs enter USB download mode, commonly known as maskrom,
> when they find 0xef08a53c in the register they take the boot mode from.
> Add the magic under the name U-Boot already uses for it, so that boards
> able to request it can do so symbolically.
> 
> Signed-off-by: Alexey Charkov <alchark@flipper.net>
> ---
>  include/dt-bindings/soc/rockchip,boot-mode.h | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
