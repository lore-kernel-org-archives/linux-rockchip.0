Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27DD1C43602
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 19:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wv6Jtovs7tt75bK5QwhNaAAO9TGusOW8KiiJB04dm20=; b=O7mgw4Q8M0rM8V
	VNW959CrwIBduTFr0iL+NVdh3cHnJ9geop5sNrDSE+5/LtdDQQfuW2IO/ODytVfPKFqzne3EppAXo
	2ZSVm/PePHia2+tyUUnLMmB4jWpK/HjXmsc+NaSFMHIVpnBPwi3qYoL0m27CIs+KDG1h8cryAzsFd
	aZvNawbXvSu83KvuCBsYoR7xuE8TrFEJHEcdpD+j0c9x3YxkfxnE9i/zt/oHMXyZkL50rKU0F47ZD
	SGMMVsQMcm+HeuZCXZfVUJoRRH7orFckC5CvzPuTGlwDAHZfpi5kh8euKSPYCk5CQYdsqtRkRpZaE
	80Nx9+ewMjIZ3q/kuwqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whBin-0000000FnRF-2zBQ;
	Tue, 07 Jul 2026 19:44:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whBih-0000000FnMU-2boy;
	Tue, 07 Jul 2026 19:44:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=uPIFmf4gi/tHeUmRTlNHk2NPJBJwT3A0d8KvxPUdG/8=; b=0SreCQZ4n0F9Ek7P0cJ/2XseCr
	4LWaRJTXNrKp9xx4AT+egjLzTulRlqU+94jVpH5pDRO/+Iq4jv/OkL4cV0LUDQ7uoHCEvNmcyBHUR
	Easvn+jjAeL7MIAGzfp2NHWOeAo5apguGvXPAIJ7sSdYmQDPWJJOYpVTA2EMsAprGzwK6IQ8Bp7Ce
	jK3/Q+Uz4XRWzSRUlU40KMVf+MxjY4FPKpqJfO+BswoRcXnr0npYaNkR2n8ydagMUgQ/n3fxygA+8
	knOl4+f3Q/HxymN7Wt80aBSLhvDMjwWpM24VLeYcgD3mKwHOEJ2C+hr1ZCVVYho/wvsLKjmHZNyGL
	7C3SlJpQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>,
	stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3588s-roc-pc audio description
Date: Tue,  7 Jul 2026 21:44:31 +0200
Message-ID: <178345345847.664858.7864543249465975825.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260703025648.180135-1-festevam@gmail.com>
References: <20260703025648.180135-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_124439_820920_9B9DF7F2 
X-CRM114-Status: GOOD (  10.42  )
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


On Thu, 02 Jul 2026 23:56:48 -0300, Fabio Estevam wrote:
> The rk3588s-roc-pc ES8388 codec is connected to the i2s0_8ch audio
> interface.  Use the matching I2S0 MCLK output for the codec clock
> instead of I2S1.
> 
> Using the I2S1 MCLK can leave the ALSA PCM running while the codec has
> no usable master clock for the active audio path, resulting in silent
> headphone output.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Fix rk3588s-roc-pc audio description
      commit: 3354976953e1bcbec4ff1135b8ec08631a9fac3a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
