Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83289D15DB4
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 15:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OKrV3c3+0QaQVBTcv8oLW1B3/8QBqZ/A0rs2bWUI9NI=; b=49m07nZkgiyiKd
	Z+vCiS2/sFFf4G3Pdae/itxHwzpk009OYiBExLLy6NGgAYYxAIqNxjTNgjuG0FcNh4fgEsjOxGAxM
	jlNUcpI//QS3AQz3vecK2Qx8mPtKHPDEOs0lBvos5gIZ1YEsJqy15fn5fkf2wLGUkGEP7jAMhWn6O
	S4d7+dsAlCfCdUYJyLtldk8RmnNHwd+nw6D2YYITbC+YsyWJEmbV9uB1kUAiZ5n5PdERWMyow9Mwg
	ruUMT5+IkF0J+fswvOLkyrVojQVMfjwAnTrPdqToia9HPMoG0Xw5XBxnKAtTEFHFvjyjmtvpbD966
	XRFI6G1rj2CqA9yB5nDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2ubq-00000007qbx-0hVW;
	Mon, 21 Oct 2024 15:46:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2uaK-00000007qD8-398D;
	Mon, 21 Oct 2024 15:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=c0W2ng9Yj925A0G4lxtdQaaSAaFVmMai1E17frApkOI=; b=rj0MLLsGhI1GQyyd87PpczRJS2
	pU+dyi0xR+SNT3ibRIItrvJ51t8km+LX0LE5sqxWBDV5lPNTXzkCzoqMIFsGlSiB6obq4HGb68XeZ
	dXT4HHYO60kwIFZX5/9KhaEvmQDLFc7hTq//xQJ0UmrMO0RQ7gT/fhskRUEPxdeHrjo/3WdiLCv+C
	SL9oODhT5wvIXG06x61D50kDiIkM/x4KhuYtda/ZXamoJqsgwCx2fWy1nb9jm5rAaSvImL/LjvQbT
	ZdgG1DqRp6oewJjQvTJGSoxV3jjneyoQ3tF3C+8hy85VjOb5dLg67IhnIZ1usp6muMOC9jStGMiMQ
	xlYHyVnQ==;
Received: from i53875b34.versanet.de ([83.135.91.52] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1t2uaI-0005jR-HL; Mon, 21 Oct 2024 17:44:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: vkoul@kernel.org,
	Frank Wang <frawang.cn@gmail.com>,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	Frank Wang <frank.wang@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tim.chen@rock-chips.com,
	yubing.zhang@rock-chips.com
Subject: Re: (subset) [PATCH v2 1/3] dt-bindings: soc: rockchip: add rk3576 vo1-grf syscon
Date: Mon, 21 Oct 2024 17:44:35 +0200
Message-ID: <172952545664.1342338.6248295314780049545.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241017025230.28752-1-frawang.cn@gmail.com>
References: <20241017025230.28752-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_084444_865351_7B8CBDF5 
X-CRM114-Status: UNSURE (   7.72  )
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

On Thu, 17 Oct 2024 10:52:28 +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Add rockchip,rk3576-vo1-grf syscon compatible, the vo1-grf is
> configured in usbdp phy driver.
> 
> 

Applied, thanks!

[1/3] dt-bindings: soc: rockchip: add rk3576 vo1-grf syscon
      commit: ab79914808df7163564bffbc9f79801898fa906d

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
