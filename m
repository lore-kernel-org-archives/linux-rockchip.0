Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86E6DCEFCEF
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 18:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hEVn3TB5bysvHHUZCvTD+9R17sNvdB63JnLXoy4mguc=; b=FZ9EwZkc1LgKWm
	TbfLu4dzDGG8QOH/9roX1xU4WlOEny1vZnVfxhjSoftubQVKFNx/zmjKYATQYbdGBPR0DAH+TKEW9
	9fHAU/hrQKbZLN08veiAdoHrsUhy9KX8zZmvf4KZyw/q0iqYg//oy9A1IJfWk2QLhcIgzo8v2P3UH
	ZuDj/9vYY+66Ij68dz9zcjIY0KrOmoasj0mxAkLfk1xgcK67UIqOuhp4DN2Viukc/MIqUYeI4sDpO
	6n6YPvNWk4fgubrw4i0iuUoMQoNrCu2v1k0Hd0kM9m/PL9wiEIQJHR+TPcztzMVT+sy7onLZHTE/a
	ijzu8OpasomaPV3u0eLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC0Y-0000000DhGh-171F;
	Tue, 06 Jan 2026 18:42:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdC0S-0000000DhAf-05kQ;
	Tue, 06 Jan 2026 18:42:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=3Roch5L1+VH1+0dO78IGziVT5agDLByROysfuWI2AQw=; b=VVQBll6/qPS9kEYWtjU8WzaoZr
	Yc2k9SUnJFgYIHeiJWSK+hjpc+dnC270P3Qox2EWklLP0Y8sgv3QiDA8fLuf6WBiHALD4jt5DGZbv
	ekzxSyRb563y0DXN/A8qVBxk0V1BEKAUlYqy6JMe+BVvxeCTc1b38nqeAjBTEfovF/9HIIOVVGz3D
	I5U5EOURziotTALYFJZSsm0+ddDeVx/etvzewbg9lUSxtW3yqnpDC3l8PkghGJL1Up74vnWQGra4K
	csQ6FTcZ4d2Fane5gVvJTo4AyMrzycFhO97EzaMUBjv6lkC63w2N75fNBYTtLuHneqmzDVZMaHdJ/
	h4brQY6g==;
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdC0O-001Hfs-PE; Tue, 06 Jan 2026 19:42:09 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ricardo Pardini <ricardo@pardini.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: Enable the NPU on some rk3588 boards
Date: Tue,  6 Jan 2026 19:42:02 +0100
Message-ID: <176772487184.3029798.10396828129680965302.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
References: <20260101-arm64-dts-rockchip-rk3588-npu-enablements-v2-0-013cf5d5c39d@pardini.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_104212_089611_23BE4771 
X-CRM114-Status: GOOD (  12.86  )
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


On Thu, 01 Jan 2026 07:43:08 +0100, Ricardo Pardini wrote:
> This series enables the NPU on a few Rockchip rk3588 boards.
> In every case here, the required regulator was already in place.
> As suggested by Jimmy Hon [1], since the NPU power domain supply is
> being described, also remove the always-on property from the regulator.
> 
> In Jimmy's words: the commit message for the introduction of the
> pd_npu label mentions how the regulator no longer needs to be always on.
> [2]
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: Enable the NPU on NanoPC T6/T6-LTS
      commit: 7127b6d899c74a2ba7af09f1755a22cf9c72dba9
[2/3] arm64: dts: rockchip: Enable the NPU on FriendlyElec CM3588
      commit: 628aea397d81cbec3f2ff9067c5223c927f220a2
[3/3] arm64: dts: rockchip: Enable the NPU on Turing RK1
      commit: 5360ad495b7bf1e3ea95f0e47961d5447a829f8e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
