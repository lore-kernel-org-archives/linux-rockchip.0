Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 031C5F483EE
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Mar 2026 20:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CP0ixgUz48i1Pxv51zz12RhWOE6uiDznj8eq0F1vvYg=; b=x0/BmPCpBrAUYf
	mJ1omAyAFjR/Ve5OB8fRtIxTOEPIZ+xPnqLkG9vgb0UPXX1FU0QBfns5t743bwYTQ8GxMZyYZbiv2
	EHx1yDWk51TQknTVlt9rM1cTOFP7GYQOfr0iVzD+Ha+P3BIedToqJS8j84h0tnzNr4pu1Hh97VXOI
	F4AcQaObYrVl3zEvAOJs0WQpp0Xm3nqSM5rBHCQX5gy9omtilZG/eY5MUPF6F8bm9uJpZo1rBrxa9
	7FRW7orqETBi8K7XA1oLYVS2n8leOC91chHkdB4HfrkSxjuKBfNYkAmrH87g5nh25C6hMzqzh366O
	9WfUzYHnzmap+YxuCJyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4lS5-0000000HWra-21sE;
	Mon, 23 Mar 2026 20:00:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4lS3-0000000HWqv-2oFt;
	Mon, 23 Mar 2026 20:00:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id D08E4600CB;
	Mon, 23 Mar 2026 20:00:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 475C0C4CEF7;
	Mon, 23 Mar 2026 20:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774296038;
	bh=+x9AG17Hp/EBhtYzQohBkV903DY2Vh6iSe2BBxsw5YM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k5GWk/YUuKdPBeWP84YtTOoDx7rfII8l4iT1yBV9NgYZP2jInEiNUsNQH+ZIy+TLl
	 8PBfxs681Ew0ZlxDOfoxW1DhbnRm6LEvn7KTAF/ZBaTM+0SUsrC8fWv7LDPV1AK+yz
	 UXvCmwWOQGyTxzzDW/O96L/vHXzHVoW/M7plyQwV2aLeLfpIUm/VuiZ4XpmHYZr0a5
	 QJTua9wgXm1AMxQoQHK0DVqvR8syf19HA+LqXHBtHOF0+XxHMBWELgXIwkvM+Hs3LZ
	 g4qBWXPLGpBKp8CRJ4R3EXR2uD0vKsxUcz/I9T+LDQZTq32N/uGlteB39Otu/cebCU
	 D5Alz3WNmVYcA==
Date: Mon, 23 Mar 2026 15:00:37 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Yubing Zhang <yubing.zhang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v3 01/12] dt-bindings: phy: rockchip-usbdp: add improved
 ports scheme
Message-ID: <177429603690.1305360.6710008166136949728.robh@kernel.org>
References: <20260313-rockchip-usbdp-cleanup-v3-0-3e8fe89a35b5@collabora.com>
 <20260313-rockchip-usbdp-cleanup-v3-1-3e8fe89a35b5@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260313-rockchip-usbdp-cleanup-v3-1-3e8fe89a35b5@collabora.com>
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


On Fri, 13 Mar 2026 18:57:10 +0100, Sebastian Reichel wrote:
> Currently the Rockchip USBDP PHY is missing a documented port scheme.
> Meanwhile upstream RK3588 DTS files are a bit messy and use different
> port schemes. The upstream USBDP PHY Linux kernel driver does not yet
> parse the ports at all and thus does not create any implicit ABI either.
> 
> But with the current mess it is not possible to properly support USB-C
> DP AltMode. Thus this introduces a proper port scheme following roughly
> the ports design of the Qualcomm QMP USB4-USB3-DP PHY controller binding
> with a slight difference that there is an additional port for the
> USB-C SBU port as the Rockchip USB-DP PHY also contains the SBU mux.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  .../bindings/phy/phy-rockchip-usbdp.yaml           | 23 ++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
