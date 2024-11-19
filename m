Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1301D6207C
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Nov 2024 17:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rijAayQIEFNKQHwQFAc4xuqBJb7SCx+M6Faqnoyric8=; b=Kj4Lv4PkIu6kTL
	XmPqgfAe4g2qr9PZomYC4N6b9ku7Lyt0lgIMObDK20XFDGazCC3wdLqotmgpiiPclRPDX+twJM940
	kIv633aj6AWgE/vOaEZ8zEMOThFYbJW3/Liw2P7WGONsAHbQvkMOe7Dni7uoAEfQtGbu5xEjoSvVy
	h8AUmhuuY9gSCHTjzeS2HkN4bABcPf/M7jhUuTNDyJOgpzkSDQ0j5h9R/LMYotaLcyWp2CID4v6HJ
	YCxylpIrDSdBQF3lqcf16KY6JY5NQT3FhLnnLKI2Xz7C9i8SpKZ5fNezf4cpJjJae0dxunb+CMMIv
	9gahxk/U9TnqXK2GUYbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDS5f-0000000DEI6-348v;
	Tue, 19 Nov 2024 17:32:39 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDS4j-0000000DE6u-010q;
	Tue, 19 Nov 2024 17:31:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id A0DB9A42D82;
	Tue, 19 Nov 2024 17:29:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F0D6C4CECF;
	Tue, 19 Nov 2024 17:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732037499;
	bh=40Ii4Ih1KqmFT5zuzSv/DvymQGmG/a5ga66P7ata0S0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IZQeQnxxstdafeNAMT6sD8X/MdhUScQYTiGKvOH3DJMOfnqSn2XU9RwAX7dmMAiHd
	 FvNrTAj3Iuhk8Vmu93NTXroeg6z//DRsVfG0lU/INkG3vmzquhYyJmkCgSNTNjfsuT
	 A/FtIszbH3tsQRaqHCYa2fE6upz8639qFJRVWdYKFtDJNWRrnMEx516kyhMZGCJk0X
	 /8PknydiKkIiY/iVauIth5w3fVsIlgInhUhVepO85p75eGyKUPOePDBpE9hrouvVFC
	 AkQPtzCcCaQyhqIDGN+TiGLV9lssO7rFvpqQK7FpZe+MWF8F8B71ZqDlXY+JT/6whW
	 h1tqe0wQvow3A==
Date: Tue, 19 Nov 2024 11:31:37 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: krzk+dt@kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add Firefly
 ROC-RK3576-PC binding
Message-ID: <173203749067.1857292.2755074403775735257.robh@kernel.org>
References: <20241117201855.789945-1-heiko@sntech.de>
 <20241117201855.789945-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241117201855.789945-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_093141_099581_9C36DCB9 
X-CRM114-Status: UNSURE (   9.86  )
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


On Sun, 17 Nov 2024 21:18:54 +0100, Heiko Stuebner wrote:
> Add devicetree binding for the ROC-RK3576-PC SBC.
> 
> The board is based on the RK3576 SoC (4*Cortex-A72 + 4*Cortex-A53).
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
