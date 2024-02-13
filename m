Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 289BDC48260
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 19:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tSF7XAvb8Hb879G/eEeVhPgwHnhpYy2+4ik4iLZut4=; b=SUueyQf06FwwzH
	qY75ZXd4YPXIuy7HgjTMKRM8Qe/s9yOTtLhz6tlPYivtIoq3Nc4+0d0WgKpxW26G1DOc+fMiGUGy8
	2+KMmjv6m12p0Qu+Ov+FO/f4bF7mmQHWKT/eQI4hp5M7K3iqnnHmiaJUARgJlne9EWFac/GCJzvXv
	P6sB06ym2x0vaP3rMNmAmLYLWVyOSZoaMvrnKEUw8aFgvuFw2CYv3TYgCmmBRyxgYb5J8eDxDStem
	OxaIO4HbNHi7rUSDivmJpA4GX9PZHJq2xZA8zFd3huh7Zu0tKsOXWc7qoQvWb3jadJ9GRMrC6LeVk
	Zc9Iz8QGcayzRhNl3v2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyKC-0000000ARab-3Fuj;
	Tue, 13 Feb 2024 19:20:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZyK9-0000000ARZW-0cEI;
	Tue, 13 Feb 2024 19:20:10 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rZyK2-0008K1-KX; Tue, 13 Feb 2024 20:20:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: robh+dt@kernel.org,
	Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	daniel@ffwll.ch,
	linux-kernel@vger.kernel.org,
	markyao0591@gmail.com,
	devicetree@vger.kernel.org,
	maarten.lankhorst@linux.intel.com,
	dri-devel@lists.freedesktop.org,
	conor+dt@kernel.org,
	hjc@rock-chips.com,
	linux-rockchip@lists.infradead.org,
	airlied@gmail.com,
	andy.yan@rock-chips.com,
	mripard@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	tzimmermann@suse.de
Subject: Re: (subset) [PATCH v2 1/6] dt-bindings: display: rockchip: rockchip,dw-hdmi: remove port property
Date: Tue, 13 Feb 2024 20:20:01 +0100
Message-Id: <170785199080.3350387.14199175297568955666.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
References: <a493c65e-7cf9-455f-95d5-8c98cad35710@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_112009_208527_6F72F06B 
X-CRM114-Status: GOOD (  12.16  )
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

On Wed, 31 Jan 2024 22:14:29 +0100, Johan Jonker wrote:
> The hdmi-connector nodes are now functional and the new way to model
> hdmi ports nodes with both in and output port subnodes. Unfortunately
> with the conversion to YAML the old method with only an input port node
> was used. Later the new method was also added to the binding.
> A binding must be unambiguously, so remove the old port property
> entirely and make port@0 and port@1 a requirement as all
> upstream dts files are updated as well and because checking
> deprecated stuff is a bit pointless.
> Update the example to avoid use of the removed property.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: display: rockchip: rockchip,dw-hdmi: remove port property
      commit: 0d192c4c72ce00ab07a6b27f068607e21f754a46
[2/6] dt-bindings: display: rockchip,dw-hdmi: add power-domains property
      commit: 6b1f93ea345947c94bf3a7a6e668a2acfd310918

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
