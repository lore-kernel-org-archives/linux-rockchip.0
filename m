Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD5B7C3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 20:25:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rfn6Ef319tBOms0fGu607OAHaB0BUHZOF4z2XYsI71w=; b=NdSz4s0AZdOPrD
	WlIZt7O+BZ1rKA/w1WrHQmQEKX19qB4q8mTEmrD/xnCfezdrViBazn1xdtxgl88GW741bmOrrrmSM
	5BZPaDwQPSN5S+cGCm5pNZpgRvdG+MNSQ1vZyJajGWShX00+28rxkARhEAj71Psui7OZDusJHS1C/
	TNrAhVlnsqzZXQOrhoXLSXEnPdIqTWrt51L2RQXIFq4CdxYGdUNW6w0FVHVODWyGjdJOFIkX7q6ks
	qASkmcYlvOus6YgJDG1IwTXyHnlAaQP9UhwsCYg/2N7eG8Gpf+SpMCu1rgQkYL0PgMLmDtEtdXDiN
	HzPp/DOeeJLJMHIK+/Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWw7-0000000Cdee-16kD;
	Mon, 29 Jul 2024 20:25:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYWrq-0000000Cc6P-3KQ4;
	Mon, 29 Jul 2024 20:21:16 +0000
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYWrn-0007Xp-Cj; Mon, 29 Jul 2024 22:21:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v3 0/3] arm64: dts: rockchip: fixes support for Lunzn Fastrhino R6xS
Date: Mon, 29 Jul 2024 22:21:00 +0200
Message-Id: <172228429363.2312452.2816091351792477648.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240710143017.685905-1-amadeus@jmu.edu.cn>
References: <20240710143017.685905-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_132114_930912_1B78220D 
X-CRM114-Status: UNSURE (   8.93  )
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

On Wed, 10 Jul 2024 22:30:14 +0800, Chukun Pan wrote:
> Changes in v3:
>   Remove merged patches
>   Further explanation of the PHY reset time changes
> 
> Changes in v2:
>   Separate commits for regulator and supply changes
>   Separate commits for R68S Ethernet PHY changes
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: rockchip: use generic Ethernet PHY reset bindings for Lunzn Fastrhino R68S
      commit: 22de886d49613ea36b39bbe563bf77a2de057865
[2/3] arm64: dts: rockchip: remove useless tx/rx_delay for Lunzn Fastrhino R68S
      commit: ecb0835328a534f48f1213a257888d8510a1cad3
[3/3] arm64: dts: rockchip: Enable UHS-I SDR-50 for Lunzn FastRhino R66S
      commit: 9df34247766b2a42c48cf0d81a0dd756c546cbdc

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
