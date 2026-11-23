Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D5F606A31E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 16:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vaAC9KQt;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=QqgJ7d2v
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=+qV3BJ/uCH2k1wSktQtnm1R5z1fT1G1zpcXji61bM+o=; b=vaAC9KQtF3q8LdIxq5wU1fnsWK
	Vuck9ppxWSpDkGx7xeMcyt/FNqVuuSU6HpQm/fGQUflhMdjaDWMOS3+MBk2pq4SkHFtQvwx2dfc0Z
	3EVMswU+940BjmZx2iEzd13zGrbWBGUYVYWXnHTx4wu6gaGgQDMFeDvVBQUwZcAU0PI+xIyicPofk
	zjwW/Idl2G7vWdZdMhefrza4VvCNgQUhYpa9TJvLwMmlxxrabVIyjaaytQC6wRCwJuoR+P1WAww6n
	hFBQtat+zeZR3quK9bsOGQei2HrHi/V1XPY+a106/HHPYgB74ZX0fRUCjwbyTECsvzfjUYL6jtO8S
	SG+/yw9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWZX-000000048KP-2YdJ;
	Mon, 23 Nov 2026 16:07:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWYq-0000000488c-3axq;
	Mon, 23 Nov 2026 16:06:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4F72A62350;
	Mon, 23 Nov 2026 16:06:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A887F1F000EF;
	Mon, 23 Nov 2026 16:06:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795449991;
	bh=3r+hUQa+rAKmwXtdf1nQj3yrmAj5PM06tZTg7mvEGIc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=QqgJ7d2vWDd1Bxz2cm7/D6YBpeuDuZd/TLwC9GimcjA4zKcJGl1TFB/vS1+nBe5d4
	 680Sp0UlADSTr80BWXvTIKtZf4xOcoFDPi9PqKdiUaYDQO+2GFvhhgZo5hsOYTx/2z
	 XSYwXXUI3jcy1H8H0TQStRsDaNUUn0X5JMJUTivqCkQJkUN2ph5ZZJMl/WQEYCuhXb
	 Ti1ZGej91s1q7GZaiFnb2qpcdw6+V4OWUoXHiRAaW/y1TTPoHq5yz0XH/m0cPcg6s6
	 tGVk/E8bc8e0nsa02ndV53bCs5XeNCTmh8E/hDar7mj8Cb9FJx4jHHxurNpDSRqxc6
	 jtiZfCJmWH6UQ==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Damon Ding <damon.ding@rock-chips.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Dave Jones <s.dave.jones@gmail.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261114083339.600986-1-damon.ding@rock-chips.com>
References: <20261114083339.600986-1-damon.ding@rock-chips.com>
Subject: Re: (subset) [PATCH v6 0/4] Add eDP support for RK3568
Message-Id: <179544998732.275844.17211132534453781481.b4-ty@kernel.org>
Date: Mon, 23 Nov 2026 21:36:27 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Sat, 14 Nov 2026 16:33:35 +0800, Damon Ding wrote:
> Picked from:
> https://lore.kernel.org/all/20261030064905.2248999-1-damon.ding@rock-chips.com/
> 
> The 'rockchip,rk3568-edp' display binding, the RK3568 support for the
> Analogix DP bridge driver and the RK3568 support for the Rockchip
> Analogix DP driver have been applied to the drm-misc-next tree.
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: Add rockchip,rk3568-edp-phy
      commit: f634e1dd3528fe4341ddc7fa44ad448821afbd21
[2/4] phy: rockchip: Add support for Naneng eDP phy
      commit: ecf8bf37197560c0dd8222ae2dc8791b6271c9f8
[4/4] MAINTAINERS: Add entry for Rockchip eDP phy
      commit: 3f63ca7ce197c661bbe53fc808d0cec444b40042

Best regards,
-- 
~Vinod



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
