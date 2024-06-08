Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8656C27C5F
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Jun 2024 15:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0h+ffQiw8tI5+H5qZMxTBla9yG9pOBx1WieYirm4QUA=; b=PRQkqoC3svUSg6
	DrAei1541XeQb2Hy11VLuwqT6XUH7J29KbZ2zjNqjzJSz5+VjOrl5bkp4X6t0Y8+HzJXEi3xYCWcC
	LlwwOjABjxUlcizkBguBh1ek9atC5dfXF61x/UURNVwQRWTfQ29XxVwdn4RDgPO7RB27nhph41XuY
	Cv+7cOt0/7Zeh4kXWkUz/HEbIAW37YTQxt4f74eqeRRAgA19gBwRAryZGUDnR6FupfWhbfHiUOEsk
	sdz8+EBSzNWG1JT8thfZg4gi1pRH1ydl725kYrFrBsyIEdU5qVl0Xe8m6BO1OWgm8sfB87R9E9LPG
	uMtObBNdbEDn4Bh9LO9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFxox-000000009dM-1ZTW;
	Sat, 08 Jun 2024 15:17:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFxos-000000009bR-1jDk;
	Sat, 08 Jun 2024 15:17:28 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFxon-0000Ur-8O; Sat, 08 Jun 2024 17:17:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/2] Add RK3128's sound nodes
Date: Sat,  8 Jun 2024 17:17:18 +0200
Message-Id: <171785983007.2839639.9120766327861589006.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240506155103.206592-1-knaerzche@gmail.com>
References: <20240506155103.206592-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240608_081726_764085_F8BF909D 
X-CRM114-Status: GOOD (  12.09  )
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

On Mon, 6 May 2024 17:51:01 +0200, Alex Bee wrote:
> RK3128 has two I2S, and one S/PDIF controller. They are already supported
> by the drivers and covered by the bindings. All it needs to make use of
> them is exposing them in the SoC device tree.
> 
> Alex Bee (2):
>   ARM: dts: rockchip: Add i2s nodes for RK3128
>   ARM: dts: rockchip: Add spdif node for RK3128
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: Add i2s nodes for RK3128
      commit: 760e49dc6cee85994f7ece74f7145887ea7b64ca
[2/2] ARM: dts: rockchip: Add spdif node for RK3128
      commit: a6b661c2a38a92b7de826f74e57596fe33fe17fa

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
