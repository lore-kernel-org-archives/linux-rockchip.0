Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D71B9C02193
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Feb 2025 08:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oqVlU7Ot9JCvbMLBgHJTkaOGTmrQEw2Q6o9cgsYr/P0=; b=khmVXXTOOhO/zo
	juWtQ+UQGbQq4nqxp8A3uKBYGgQa1ylelts6BxfSsIMaLhrDdkyt09o2uVzeYnjjNHV+5mgDhlcAQ
	ttD7glaUvFxsRsjDbrvMVVNuXeQN9AAKi/1i/Ao1RChlGRxCnuq34oSYZ8scTwTDxM5gz4gVJKu7T
	DZKjD+kQIZRMiZippOfAAwvvT8INY6d+8+40Ze/vyYn3ZkANrBcPCIn6SrWNkfIDKVFAGUXjTfxHg
	7q9HBh8VK78h5zLdtMoi3aFeBzVqGHld3i8D2SUgi1GkPbbeSfLmWi3+LLWDMtgVIJellzGflzw2S
	VIzfzOhJtciF03UOkFog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1terh1-0000000EodX-373Z;
	Mon, 03 Feb 2025 08:20:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tercn-0000000EnUv-2Kzg;
	Mon, 03 Feb 2025 08:16:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=0zN/yPvq2oeObZchTOFj2wFtJfvhQeLm44D+1WAWTAU=; b=JlxRUjKIu4B5udpqRPxiUEr4fv
	H/OH2ox0dCxYz2PsqzXW8yPfZ9JV5N40SYdxDjEGj8uqLNZOJXY9rDPeJsDbHiHCVF4JQeYzCkS87
	/P4j7E8oIY9LuV9y0hHJDyxpH2wiinYzER+2QBFgL+I8pSwNr+mR+9Ud0h/PY8tBYRaa8sBJSs+39
	ZgqiWIogzYcEiLKT33sZnQgDNA7oiOxN7NUFaph8yBuMIZMI7GEfiuipOIetF5FLnfwwe/TI6Mp0i
	LM5UPLPjO8xtFRgFtc0A7XZp6Vk991qMia8rY5Xb8vKCC7W6syHjrnRHj/fO+Bn+brAmn1/vhB6MO
	8zQLxuvw==;
Received: from i53875b5c.versanet.de ([83.135.91.92] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1terci-0005Vr-VX; Mon, 03 Feb 2025 09:16:05 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Fan updates for Radxa Rock 5C
Date: Mon,  3 Feb 2025 09:15:52 +0100
Message-ID: <173857053619.78657.8857232933487355026.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250120-rock-5c-fan-v1-0-5fb8446c981b@gmail.com>
References: <20250120-rock-5c-fan-v1-0-5fb8446c981b@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_001609_614974_9982E1BA 
X-CRM114-Status: GOOD (  10.41  )
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


On Mon, 20 Jan 2025 23:22:45 +0400, Alexey Charkov wrote:
> Couple of small additions to the recently added Radxa Rock 5C device tree
> to improve cooling control using the onboard PWM fan, similar to other
> Radxa boards already in mainline
> 
> 

Applied, thanks!

[1/2] arm64: dts: rockchip: Add finer-grained PWM states for the fan on Rock 5C
      commit: 6ed35e6ff556626734c400fff5a636b38b91fe19
[2/2] arm64: dts: rockchip: Enable automatic fan control on Radxa Rock 5C
      commit: cd5681e63fb9887bd05d4ef59151d6a6b39c9d33

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
