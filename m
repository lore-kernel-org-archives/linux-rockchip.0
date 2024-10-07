Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FC8CCFB45F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 20:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2gRelJh24Ld8aYVgrNS+oKkKhXZSxCaT2BWwX6Z+Skg=; b=Md5YdR08OaAJqV
	5UwV3cm9N6kLHvt5QWp/0Nj/nA7nIyOi0q5yqjWN9vYd+8Pi1npCuzbgJ2DN90ODZ65Kk8Wx1h4gp
	M0ZtQ4zUUKTWBNyQfrlAHNdgVFo1OvUCCWHXpLf3QuycL6iYBLi8523JKHIW+BFCd7cwO7Pc/G6Tm
	7kCCfPJ2jCbROJej/fF7hDxy/dmPKEMIVDzmE3/tgwklll0t/Xv2ipyMvmI8IP238liUU7Lrj9VDx
	fWuvhXcCStvaj76VOduuXS46xG3aEv/gJNApXvsd8TQgpRpJzN9vWgZpOubxoWwioTzL1c+Ex8c6s
	H7ZEn6E/bja/HTi1OlzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxu5z-00000003hux-1tZF;
	Mon, 07 Oct 2024 20:12:43 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxu4f-00000003hil-11s1;
	Mon, 07 Oct 2024 20:11:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 35EFFA42588;
	Mon,  7 Oct 2024 20:11:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54B03C4CEC6;
	Mon,  7 Oct 2024 20:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728331879;
	bh=SYtr/4gcSfXcVr29qn4rBMAGsvYyAgt2rpNPLMtwFiY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fCa+E6pIleCBfL6XsVkaU1LPzTBKDAQf7WxSkh2HJJSD3JvSGpKsMLuge3IddJaJf
	 iRtF4nBquybECuafmB8UnSogqKd9tS5KkV0Mw2E+UhumYUkqvWXkP80EOUfPuFEMzf
	 tiV94HGrZhJU0FFyZEH44HNGWq7P9Ez/jKzsaAbM4XbdopiM9u58lQNA0er3YZyPmW
	 /6pDQpBzOurYqzhv8NskDGhboqjXyJxKPmiV3kjhg/oLt6q6fBZtf7GYxAryQd0hHg
	 4ZkJk1Wnk4LVnmUhrhgnNoSsuTozeO7zwy+DU2CGQ5Ci7a7/ssQ3xOVT65TQToUfmu
	 FL9rHmodNmpRg==
Date: Mon, 7 Oct 2024 15:11:18 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: kishon@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: phy: rk3228-hdmi-phy: convert to yaml
Message-ID: <172833187233.2320517.14578580436121276126.robh@kernel.org>
References: <20241007162732.2450168-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007162732.2450168-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_131121_367044_304F90ED 
X-CRM114-Status: UNSURE (   9.28  )
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


On Mon, 07 Oct 2024 18:27:32 +0200, Heiko Stuebner wrote:
> Convert the binding to yaml and rename it according to its first
> compatible instead of the unspecific rockchip-inno-hdmi naming.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/phy/phy-rockchip-inno-hdmi.txt   | 43 --------
>  .../phy/rockchip,rk3228-hdmi-phy.yaml         | 97 +++++++++++++++++++
>  2 files changed, 97 insertions(+), 43 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-inno-hdmi.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3228-hdmi-phy.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
