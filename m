Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94F31C02194
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 11:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vorFVDU/Zbki4kVoOKrhHbUgKysrW5Kgw8uB2WVh4r8=; b=zkSpFrw5G43DjJ
	sIaxk69NXcZ+jOIQdZmQfVVUcpZbVGeGOSIJGBDwvYjKHoAujROxRzK+iFY7SG4Powp7G0G0uqndM
	gl2OgRaeVzDUE8Uv4Bi01bz68MnVXcc4V8aIhsRX+vj028+rDbwpF3mf5G4rafFjM7ugfu2hdm+b5
	bGHHHv5Qj3YJULb8xxS05hYm717kL3Q7srwm4wfM1zRa2jsslhudaCxdQcuq1zNdgMpzMA1vWJHmP
	JJVQVEMhZKBGcMnYFTzcTABBYbFC+EcBTS7o8ULMQd1bTqvYpmLIwyDvBS1F09lf/IyjTrUlUmsWR
	98hpKGzvMqqs+B9jwM1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tg0ED-00000006AAe-0kIX;
	Thu, 06 Feb 2025 11:39:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfzcP-000000062uJ-0A4M;
	Thu, 06 Feb 2025 11:00:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7UpvLke4oioUrowQXl7t8t90tDzY44J9nUrhfLcSw3E=; b=UD+fSb+q/jJLuMvhCZJ9lQLlTz
	9fTW9L9aye9GPqOGVlFXFniw014SVhHEZcUxlr0NyrA35vuklDcZYaUuTaAmabhOZZ6qGW3PhrPiy
	m8p4X0vYnIeFXzuNwBOXuATgfDbN7EW0izjuDNOFaKUL7lD2wmIhd2XnJW54bIyzRHKno1fW5LWiP
	KhZPpTkVDoEzOWtGLNexQ7Zzsz50GV2rh7WZSn1Z/oMyfr51+iUy2nd41HKImii24Gpt0Y8sZQcNh
	WX7cykD/tKIwr0EnRMayaahamxb4FATMF01o9kHvvUULWXMiMrbwL9W5t25AL+eSyRAuI+pTztcSb
	NuyC+suQ==;
Received: from i53875bc0.versanet.de ([83.135.91.192] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tfzc6-0008Kl-IV; Thu, 06 Feb 2025 12:00:06 +0100
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
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: (subset) [PATCH v3 0/5] Improve Rockchip VOP2 display modes handling on RK3588 HDMI0
Date: Thu,  6 Feb 2025 11:59:54 +0100
Message-ID: <173883958378.672361.1217084677686580584.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250204-vop2-hdmi0-disp-modes-v3-0-d71c6a196e58@collabora.com>
References: <20250204-vop2-hdmi0-disp-modes-v3-0-d71c6a196e58@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_030025_075016_44640427 
X-CRM114-Status: GOOD (  13.31  )
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


On Tue, 04 Feb 2025 14:40:03 +0200, Cristian Ciocaltea wrote:
> VOP2 support for RK3588 SoC is currently not capable to handle the full
> range of display modes advertised by the connected screens, e.g. it
> doesn't cope well with non-integer refresh rates like 59.94, 29.97,
> 23.98, etc.
> 
> There are two HDMI PHYs available on RK3588, each providing a PLL that
> can be used by three out of the four VOP2 video ports as an alternative
> and more accurate pixel clock source. They are able to handle display
> modes up to 4K@60Hz, anything above that, e.g. the maximum supported
> 8K@60Hz resolution, is supposed to be handled by the system CRU.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: display: vop2: Add optional PLL clock properties
      commit: 79982cbac896768c3860c241df2028c3e75f5a6b
[2/5] drm/rockchip: vop2: Drop unnecessary if_pixclk_rate computation
      commit: 9f40d7a94427a503e303b2a2d8db227d615e32c1
[3/5] drm/rockchip: vop2: Improve display modes handling on RK3588 HDMI0
      commit: 2c1268e7aad0819f38e56134bbc2095fd95fde1b

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
