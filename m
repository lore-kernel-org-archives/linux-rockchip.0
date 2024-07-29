Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D954FC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 20:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GAKLMaNEF8ZYsQtVGOaKPuSI+VQdedF4tKhQUoqRK7I=; b=yUPC3pxr0xsBTb
	ZS4OTPXimtDOQKE2q9vAE7fKpmGH64QKT28oAsyojA2n86QAMrcLtifoACdA+vYDn+fpCIjZ/jZCJ
	RdHIHUe27kPKzFnmvAffCDHc6uPSnl74RaFTZhvvde6OYsrRei4RJkUr9R1J2VaPeQdSH07ySpbqm
	IC3r6CLu0umT2mZFupFMPLZFOHwUOmfO+mddc3Wnr2BSHC+V0fNdfBP971pc/iOmTOnE8ia79X4lh
	mSVr5tTqeIxUoPdLw6WYLzfh7lejrF65HGnI8xrkUk1kESZhkwYXyYHUnLbGL+wJ9owACIuvNy+Gq
	venKL+1zA6NMBIuLmT8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWuu-0000000CdDl-0nUr;
	Mon, 29 Jul 2024 20:24:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWrq-0000000Cc6S-3JIX;
	Mon, 29 Jul 2024 20:21:16 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYWrn-0007Xp-Ut; Mon, 29 Jul 2024 22:21:12 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Christopher Obbard <chris.obbard@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Collabora Kernel Mailing List <kernel@collabora.com>,
	linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>
Subject: Re: [PATCH v3 0/3] Add support for Firefly Core-PX30-JD4 SoM & baseboard
Date: Mon, 29 Jul 2024 22:21:01 +0200
Message-Id: <172228429362.2312452.6948912348651428897.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240718-rockchip-px30-firefly-v3-0-3835cdd22eae@collabora.com>
References: <20240718-rockchip-px30-firefly-v3-0-3835cdd22eae@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_132114_910340_5FCAE9B1 
X-CRM114-Status: UNSURE (   9.82  )
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

On Thu, 18 Jul 2024 09:40:23 +0100, Christopher Obbard wrote:
> This adds support for the PX30-based Core-PX30-JD4 system-on-module from
> Firefly and includes support for the SoM in combination with the
> Firefly MB-JD4-PX30 baseboard.
> 

Applied, thanks!

[1/3] dt-bindings: arm: rockchip: Add Firefly Core-PX30-JD4 on baseboard
      commit: 0406da35b4967e3e40036495627b76a48db51113
[2/3] arm64: dts: rockchip: add Firefly Core-PX30-JD4 SoM
      commit: a32b1a46502ee5748ec54268209ed539ebf675a4
[3/3] arm64: dts: rockchip: add Firefly JD4 baseboard with Core-PX30-JD4 SoM
      commit: 710a568b6ab83742c31507c96201e2cf6652562d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
