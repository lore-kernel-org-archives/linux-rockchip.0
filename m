Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87FB1C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 15:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SDFm5yvvK5DfhMXDkQIXDvglU6x/yb0NkuidRRdpelA=; b=RKleJ6zh1/iGaN
	B5GlqEhrW1DkV+XhoaRMDpxo2kFOcP3bS1uiQQWaY8RKQ3wW5vUW2ipducZ1KJrqmkCaoqxhHlpW8
	E9R5rOJUAeNMJmJe1PvpOJKolINn35ulovRImhIqkjRAgXxsgbfvQNiZ8TJDgy4JJ97aNyHcfaLdQ
	mOGApXGLjyQj7ffPZ/KPAQkO41O6rjbg19aYVlabfFBy+1UpG1gxLwamvk4J53su/4Hu9vp++BgT3
	Olxs1vkTnJVqLyVsXW3WLvbip8sfjiCmWZpzXcyG/NOIKYg+FPcL+AmalHL7kTP37U1L1GesZ7/mT
	4/cCl/eE8NNElW6hDVBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBf4y-001AWl-Fo; Sun, 23 Jan 2022 15:46:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBez3-0018cq-14; Sun, 23 Jan 2022 15:40:50 +0000
Received: from p508fcdea.dip0.t-ipconnect.de ([80.143.205.234]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nBez0-0005OB-Pp; Sun, 23 Jan 2022 16:40:46 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Frank Wunderlich <linux@fw-web.de>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v1] arm64: dts: rk356x: fix dma-controller warning
Date: Sun, 23 Jan 2022 16:40:44 +0100
Message-Id: <164295214820.418606.10641294516834022045.b4-ty@sntech.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220123133615.135789-1-linux@fw-web.de>
References: <20220123133615.135789-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_074049_124324_EFEBEEC1 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sun, 23 Jan 2022 14:36:15 +0100, Frank Wunderlich wrote:
> DMA-Cotrollers defined in rk356x.dtsi do not match the pattern in bindings.
> 
> arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dt.yaml:
>   dmac@fe530000: $nodename:0: 'dmac@fe530000' does not match '^dma-controller(@.*)?$'
> 	From schema: Documentation/devicetree/bindings/dma/arm,pl330.yaml
> arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dt.yaml:
>   dmac@fe550000: $nodename:0: 'dmac@fe550000' does not match '^dma-controller(@.*)?$'
> 	From schema: Documentation/devicetree/bindings/dma/arm,pl330.yaml
> 
> [...]

Applied as fix for 5.17, thanks!

[1/1] arm64: dts: rk356x: fix dma-controller warning
      commit: 2ddd96aadbd0412040ef49eda94549c32de6c92c

I've adapted the subject to
    arm64: dts: rockchip: fix dma-controller node names on rk356x
though. Please use prefixes matching the subsystem
(i.e. arm64: dts: rockchip: ... in this case)

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
