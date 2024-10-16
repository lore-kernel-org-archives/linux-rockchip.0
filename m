Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F88BD2A53D
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 18:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EL0DmpXzHsbXPFiJk+9lJtf1dPrL1Wvpgtqkr2cXXE4=; b=A4rekRUqjnbwpP
	sde0qhXRt13v/x+VSVQqkkaBRN9AL1JuRp+9elysWNPBbrzfJt1Q2C/r0E4P7zT7/FdJ52pGMy6A8
	DoSgLKzM8KFcjCqL+Ye3bb4EW9ffB7Fuhr1N2i0gLy9BzQBn6nBtG6sLP8QjupyOpdmgC+jj7mYuS
	PsKlTv4n8Kiowq+vxoNZ36ZhXsawDxHluEemvertKcySjHHVfQVCvxuup2gXz89Kn9ntYJMJKEAdu
	sYFc7mG9hYZ2tGgJ7SRB7ma49i+ryosGtqOvhTEFtDArWFJUnh6VAnncmiz0XDedsWO0Kjkk2iENf
	CahB2LgcEMEXAG5TS/8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t191n-0000000CiUn-2t9I;
	Wed, 16 Oct 2024 18:45:47 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t17or-0000000CY2P-1dwu;
	Wed, 16 Oct 2024 17:28:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5A45D5C588E;
	Wed, 16 Oct 2024 17:28:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CDD2C4CECE;
	Wed, 16 Oct 2024 17:28:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729099700;
	bh=LjDcX667/F9Hi+2Io56Vk5FjxxOv458dsz9pGrGc0d8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T0abOOeb75W+adAf3te2gfQWfgHXvgw9M6rDuHYd1w8O669wIlY1JIULTC0fyiJw1
	 RolzVYSpQXzlnwaY5Kgcs69+ZAfL00by4ByPDcZeEFxrBJ2hc+fFu3YHswoUBHZIId
	 O32DMc/m2qNUpDZnRI5qY2J96fV0xEjr9NhRDS6fQ2IMv1kH8C9WG2KiHKapwBVeWA
	 IFasGt/yWuceRLy7a78f+pprMDOZ+rZTrTS4aX9YJPRjEKhpYt1XJiYewC9O3NyTlD
	 I3cVYo1MPMyjsRh/Y4MizUvBtiU+a8Yr2pxZ/ObB2YibKB+G/FEC25tVzhgjFnpyV4
	 EELVvOElIUUOA==
Date: Wed, 16 Oct 2024 12:28:19 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: linux-phy@lists.infradead.org, krzk+dt@kernel.org, kishon@kernel.org,
	conor+dt@kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, vkoul@kernel.org,
	devicetree@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org, william.wu@rock-chips.com,
	heiko@sntech.de, tim.chen@rock-chips.com
Subject: Re: [PATCH v6 2/4] dt-bindings: soc: rockchip: add rk3576 usb2phy
 syscon
Message-ID: <172909969920.2069526.212963099055166502.robh@kernel.org>
References: <20241016073713.14133-1-frawang.cn@gmail.com>
 <20241016073713.14133-2-frawang.cn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241016073713.14133-2-frawang.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_102821_496746_6DC31C2E 
X-CRM114-Status: UNSURE (   9.87  )
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


On Wed, 16 Oct 2024 15:37:11 +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> The usb2phy is accessible via a syscon registers on RK3576, similar
> to RK3588.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
> Changelog:
> v6:
>  - This is a new patch adds rk3576-usb2phy-grf syscon.
> 
> v1-v5:
>  - none
> 
>  Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
