Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29C99CFB45F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 20:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cvk0kJ1GAWpxOxPhGegenAdBLpBCv5IKiK49mAcfgX4=; b=qd7xoVNxcgM2cT
	CuQNm6kX8lhaQTIketlnoWlReHOs4bfsGjqyDWJgyMOf+8ZO16H3L5r1auydcJZk73BhGVJrY2nTc
	r1jVTGnI5LlXGEo6LD3+woLPmGqnCiPGywXCcvbMtlr5f6qkA1Nn2Ku6dufVUFGegb1BbhFiTsEVm
	VQWb1LH+v0ABHGy7dYHsmkfJ42lfwU5vkus1BToVf/kU5X8wp3HgOZeUJDs996aZ2NJPbd+BT3aqK
	wx6QDDRWCYcrfeYntVA2so2IXSdFONZlXiJ4GBrsSSb+c9N/PsLw4lSEprGOgBWxeYVoc4I/Pz6e8
	JGdi7sYl2eXvN9DDSvUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxu8W-00000003iQV-1uhW;
	Mon, 07 Oct 2024 20:15:20 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxu5w-00000003htH-1T1i;
	Mon, 07 Oct 2024 20:12:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5BE975C3A78;
	Mon,  7 Oct 2024 20:12:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3699AC4CEC6;
	Mon,  7 Oct 2024 20:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728331959;
	bh=luEIaffhWqESf7hIQ7l8nkL5P040xkqBuXpkvCb9Mqk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l8QUUxpqqS/cPnB77e40GdZVvM8c3ncvPEnXkKSYSqsUiiOZR7ZJNQs3DhtFqufRY
	 3PkeQn138ZtpSzf0GAHwyghMMHDBRoLz11eV9Oi+vDbGpr6E+PGiKLxkroLvhW5xn5
	 5qCtsRRBwdyKZrYT446qyJxHm1HP1BK29yxClPgsSJzq8qv3dt3uN2BQER7WXHFPD6
	 pir0IAd8mYFWdx8hauqOEpr3pbCpx36V1ZeawVCCa12JGiI3HAZBuDZEm8HGa4Bs6N
	 WQdDUxYwCe5zWSZfWHQXOL2wnah50+1HHCIYtbwkZ3Jz4XuX2MSjr1PAmrn22CN6U+
	 VzC+nbLMUvnIw==
Date: Mon, 7 Oct 2024 15:12:38 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	conor+dt@kernel.org, broonie@kernel.org, krzk+dt@kernel.org,
	lgirdwood@gmail.com, linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: rockchip,rk3036-codec: convert to yaml
Message-ID: <172833195769.2322621.15377290813075812117.robh@kernel.org>
References: <20241007164542.2452315-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007164542.2452315-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_131240_454509_04CEC4E4 
X-CRM114-Status: GOOD (  14.19  )
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


On Mon, 07 Oct 2024 18:45:42 +0200, Heiko Stuebner wrote:
> Convert the binding to yaml.
> 
> The codec seems to be from Innosilicon, but the compatible has ever only
> been rockchip-based, as they sythesized the codec for the rk3036.
> 
> So the yaml file gets a name matching that compatible.
> The only other notable change is the addition of the #sound-dai-cells
> property, that is always required.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../devicetree/bindings/sound/inno-rk3036.txt | 20 -------
>  .../bindings/sound/rockchip,rk3036-codec.yaml | 57 +++++++++++++++++++
>  2 files changed, 57 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/inno-rk3036.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,rk3036-codec.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
