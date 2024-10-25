Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DF45D11704
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Oct 2024 07:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xfTN/VbpyopuWHP8AWGgCmWukdU0ijKJTogie/0pqo=; b=37GqehxErVH1Xu
	Vo7f6YdirlYbxI8s/St6Gf8qzaLXshMFvNHcfRb1CnhkaDuMSbahvXJtnz7DSn24hy1AbFOwtBAE+
	Oe+fpPkpTy/zKiZ4oyCuqYmGUmhz8nl88C31273NhSTCkcU1hjjDXviVfZsWxnmGqfneZTEy+yfdG
	yXQB5BoKz+jl7RxoRYdSiPP/P0ZhqsGg6ymVnI9IYryrkqyLW9+GLue4gze9FubSDtmE4wT5IqHAq
	84QSBMI7veRkVnA1fT/oxSlMhaUsO5Ll5f+0tQ/w1D44LT7MCWRVdZGHT2MCKUn36ltsZ3kqjIswi
	q5CGud8wYStoLxjvRAWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EZ2-00000002mwJ-4A8w;
	Fri, 25 Oct 2024 07:16:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EVu-00000002mSu-0TJC;
	Fri, 25 Oct 2024 07:13:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=enn3t52h/bw7Y5aOBI8X1K/59nvOCKaVHmDjz6Fts18=; b=TprDS9JZ2J1eX7KJTzixaefwPb
	3M//lguL2KfoaPPrfaTrYpY0lcX8faNJRjxv0X7W+S7IoMObLUW098msv9XXVv3EBLe9ZKjxC1mxG
	D+YOTu4urAjRxG0adiMYvBHa69ciArwIOS1PFWl8jCZP083ieHiOfGXUTTUFBquCD46YibrKCihTC
	6o22vekJO8qWu/EpnGAaLFm0lMJfiHMH8Xm0W+q1J0zrdxa9VpkmM+olIBGfhjE9aTqw59mLQB3pm
	nQVh3ApwtjbdlfLCZAsSRfFBMKCsGR0sZdUQclplpTwKd/hgC41wXMaZryWMqU8cpbynul6SwwqN1
	6BufvjWA==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t4EVr-0002dv-KD; Fri, 25 Oct 2024 09:13:35 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v7 1/3] arm64: dts: rockchip: refactor common Orange Pi 5 board
Date: Fri, 25 Oct 2024 09:13:32 +0200
Message-ID: <172984040935.1798677.17350099060125150020.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024095038.42079-1-cenk.uluisik@googlemail.com>
References: <20241024095038.42079-1-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_001338_337524_AF493748 
X-CRM114-Status: UNSURE (   9.04  )
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

On Thu, 24 Oct 2024 09:50:20 +0000, Cenk Uluisik wrote:
> Unique to the Orange Pi 5 board:
> - M.2 NVMe M-Key PCIe 2.0x1 on combphy0_ps
> - SPI NOR flash
> 
> 

Applied, thanks!

[1/3] arm64: dts: rockchip: refactor common Orange Pi 5 board
      commit: c37393b36c1d2a0f4fafe82d7e32bfb726f660db
[2/3] dt-bindings: arm: rockchip: Add Orange Pi 5b enum to Orange Pi 5 entry
      commit: 3d346d38367bf01e9a3aab7370973844e3808f65
[3/3] arm64: dts: rockchip: Add rk3588-orangepi-5b device tree
      commit: 46fa3fee0b1c027862b04717b51630195c253a30

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
