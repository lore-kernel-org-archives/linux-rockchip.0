Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ADBDC25B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 15:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ThrokbayO1tTny8FvlcBIz631TrrAfo2YTwZW1lR41w=; b=dg9gh8/GKAZ3do
	Kzjpa2x0r1RFqxeLTS6S2MxrSMNDCnX2NxWREN40q+pwp9jlftcKS5wC0cJkZaI7dHl5n4dWDpVGw
	klo8DOf0qY8DNo/DSf01bsj2vP0a8twl7gBHhdmbCa5Y6tABjBO5O8ntAe/lxcAlhQ3vpt0Bh16h/
	8vK1WGUvdlc/Mitu5tQUxDgf1abPrJn5vBRToAWNAXrZgQxEaEgHtjwWiQ8mIrBjvhbKgFXcqvapg
	X0pa2ukVhcCMO+5XeHeK9wbL49eHZkYN8cSCYwhMl6y+/X0G9een/LAGp743lQ9lHEVB4ukx8opOC
	cJDJINSPDRoz03q0CDLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBySS-000000019MM-1IB4;
	Tue, 28 May 2024 15:09:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBySM-000000019Ip-2tcY;
	Tue, 28 May 2024 15:09:43 +0000
Received: from [213.70.33.226] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBySI-0004pm-Ez; Tue, 28 May 2024 17:09:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Alex Bee <knaerzche@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH 0/3] Add VPU support for RK3128
Date: Tue, 28 May 2024 17:09:22 +0200
Message-Id: <171690893336.1899981.5081114224300578276.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240523185633.71355-1-knaerzche@gmail.com>
References: <20240523185633.71355-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_080942_753838_7A630A36 
X-CRM114-Status: GOOD (  10.14  )
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

On Thu, 23 May 2024 20:56:30 +0200, Alex Bee wrote:
> Similar to most Rockchip SoCs RK312x have hantro G1 based decoder and a
> hantro H1 based encoder with attached iommu.
> 
> The existing drivers can be used as-is.
> 
> Fluster scores:
>   - FFmpeg:
>     - H.264: 127/135
>     - VP8:    59/61
>   - GStreamer:
>     - H.264: 129/135
>     - VP8:    59/61
> 
> [...]

Applied, thanks!

[2/3] soc: rockchip: grf: Set RK3128's vpu main clock
      commit: b465223129f951d110e633a305085bd8430d7df0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
