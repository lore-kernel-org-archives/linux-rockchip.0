Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8EC3CF07BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 08:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d1NXbCVZ2r3WVQ83XqXeLPbLKKL3QRb6stJPOBGTGXk=; b=DWF2jjPl6NJjKL
	AxcbCAPAO3RNGtJXo8yvuLDIskEEz1PMwgES3KUeFqg9Zni9yCc2FXhAISLSyvzH57vRqFL0Xecjw
	ndKHVa9ocJ9ZArHUGveKXKetPW/hgode+C3vc5EKOLbkr/7Q133VAfYn0+JBTqLuTW4fyqsqfgOwo
	QwQ+1eolzgsbQFZs1YsxsvZfmt59X3PmhSZpMz5ZImly5G20fOEo/zTvYh6GM6G/m7cvzLa3rKBSE
	BB87dqAUkgC1LrzsK7IWk1vJ0+5No9d3/OCV7mGoZOFW4cGPraX7d068CX91208v+A6xqyLOxckEm
	D/NolwAuHAhdUiZpUwhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syoYv-0000000C0aH-09DA;
	Thu, 10 Oct 2024 08:30:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syoNI-0000000BxPr-3CXz;
	Thu, 10 Oct 2024 08:18:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2F0495C2743;
	Thu, 10 Oct 2024 08:18:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B0D2C4CEC5;
	Thu, 10 Oct 2024 08:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728548298;
	bh=AVattL+Jk3iSC5PSLuDU03CTMio8BerpFM7lRB9AtYY=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=jtzO/oUrbPtPSnL//FZnH0DGE8a7bGnlrI5r/6BnsviZyEYdBA8oMwXZDbjOZA4dP
	 mpsZXGdxoomFDgMGS0N9QtTbOD2HZLZPU1tgx0cQg8nSgo7meRNCCSwqh5N6cB9KBt
	 6DhlkCLcfxCLSP/g8SH+hV/VSyVKgXdnCoBqFuAtrUHdAdWb2ZLr91q+gT5Mm1xHDl
	 P05zqRFma5nUfxuMnBO3LVPRSTVa0AX7TQHcjerOK/1865Ew3QhMQCE3flkcr3LDp+
	 nScxH7BQ1+ZPYiI+BjRyxAB0nPotqlga0fsUz+8rC8LNBqE0teKBK25UF9xn3j8Rqp
	 eyIBcFSNw3jNg==
Message-ID: <c9380ad4bffc044e014b3a9b276b474a@kernel.org>
Date: Thu, 10 Oct 2024 08:18:15 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v9 1/3] drm/bridge: synopsys: Add DW HDMI QP TX
 Controller support library
In-Reply-To: <20241010-b4-rk3588-bridge-upstream-v9-1-68c47dde0410@collabora.com>
References: <20241010-b4-rk3588-bridge-upstream-v9-1-68c47dde0410@collabora.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Alexandre
 ARNOUD" <aarnoud@me.com>, "Algea Cao" <algea.cao@rock-chips.com>, "Andrzej
 Hajda" <andrzej.hajda@intel.com>, "Andy Yan" <andy.yan@rock-chips.com>, "Conor
 Dooley" <conor+dt@kernel.org>, "David Airlie" <airlied@gmail.com>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Luis de Arquer" <ldearquer@gmail.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Mark Yao" <markyao0591@gmail.com>, "Maxime
 Ripard" <mripard@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Robert Foss" <rfoss@kernel.org>, "Sandy Huang" <hjc@rock-chips.com>, "Sascha
 Hauer" <s.hauer@pengutronix.de>, "Simona Vetter" <simona.vetter@ffwll.ch>, "Simona
 Vetter" <simona@ffwll.ch>, "Thomas Zimmermann" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_011821_649809_B57A9366 
X-CRM114-Status: UNSURE (   5.17  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 10 Oct 2024 01:40:49 +0300, Cristian Ciocaltea wrote:
> The Synopsys DesignWare HDMI 2.1 Quad-Pixel (QP) TX Controller IP
> supports the following features, among others:
> 
> * Fixed Rate Link (FRL)
> * Display Stream Compression (DSC)
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
