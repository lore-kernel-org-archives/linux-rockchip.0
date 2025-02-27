Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB619C021BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 10:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2s1Cn1RQk16mpCHBS+RlrkXD+xybtar2Kv9hlD6woOk=; b=uupsj26+fH8pHY
	9PNDm6ZdtHw2HtuzLGloU5Tpcr7T6us036r1xyepMnt8Q9mDl787Z4VkfldTT69p5RBDFV3uWtLRQ
	pRCcMI1PJawN4GB/U/pJmtsy3fdhCFAEBKAQbkO9y3koIcoLRJdBB9XrHQ4houMyHyP6gwdib7bGq
	pLjXke8B1Xv6UwjqHlF0P/18tIp/CWtn48nHqLTRR0nw6FXXrnYSimyTpxPmb/82+FHFPczvFfCSx
	rDg7icIZs+OdnFYDU4OEDrlkr7NxByN2S7kF6antL1zAK1FyE3E/fc1EViH7iWvOcV1v1hWudV8PZ
	3azXJEXv3C83imm4lV+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbbF-000000074Je-2VvI;
	Thu, 27 Feb 2025 10:58:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbYY-000000073d8-3iFZ;
	Thu, 27 Feb 2025 10:55:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=WAw3zkvChaokZP/EIQV/XtYpCHOZ+jZa4e8VVZ5rP1E=; b=BtlIf09N8Z01zGJauVBo20e/ic
	lj9FcGghUcxKjgDzdvU9VqJ+tXybxXHe9L9WmuX9W+9h/mIhiOfrcygo4I/IFc9KtNEA7J+sTIYan
	mVfF5e6muJRdMsllk7UfHDdCE3TE2kXNIKcdifaGQC7b4LHHTXYwXH9oBl24944q4S/75vqTtswZu
	+gR6ZlHFHAEbhiLeL7mIZUMYLwfnS8GrbchupZFxERLhOgSvFTJ3Q4F2IGZQEjBXdy9dm0gp2Wn7T
	XuBabPUGxa443riihq9Oajkg8659gs3TwoGjf4tyCauVAkJAFmlOAxEQzUF3qNdlZCxjpx6p0IMqG
	DUWUHvmQ==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnbY7-00008f-5I; Thu, 27 Feb 2025 11:55:27 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/5] Improve Rockchip VOP2 display modes handling on RK3588 HDMI1
Date: Thu, 27 Feb 2025 11:55:14 +0100
Message-ID: <174065370896.4124124.16006853478934870173.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250223-vop2-hdmi1-disp-modes-v2-0-f4cec5e06fbe@collabora.com>
References: <20250223-vop2-hdmi1-disp-modes-v2-0-f4cec5e06fbe@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_025554_940497_425770CD 
X-CRM114-Status: GOOD (  13.09  )
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


On Sun, 23 Feb 2025 11:31:36 +0200, Cristian Ciocaltea wrote:
> As a followup to getting basic HDMI1 output support [1] merged upstream,
> make use of the HDMI1 PHY PLL to provide better VOP2 display modes
> handling for the second HDMI output port on RK3588 SoC, similarly to
> what has been achieved recently for HDMI0 [2].
> 
> Please note Heiko's fix [3] in of_clk_get_hw_from_clkspec() is also
> required for boards that do not provide HDMI0 output, that is to ensure
> devm_clk_get_optional() returns NULL instead of ERR_PTR(-EPROBE_DEFER),
> which otherwise would put rockchip-drm module in a permanent deferred
> probe mode.
> 
> [...]

Applied, thanks!

[1/5] drm/rockchip: vop2: Improve display modes handling on RK3588 HDMI1
      commit: f8dd7fc9ba88bc4a6ea85269287a51fb756440e2
[2/5] drm/rockchip: vop2: Consistently use dev_err_probe()
      commit: b06d1ef3355571383cdb463cf0195b7a02efdfbf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
