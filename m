Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 929BFC282C1
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 13:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7E8hrlXegd5hH3B0OrqwH9hyN3OlsCgMdxa4eV2W9jI=; b=LLM7giHggvI7MI
	E8W1mCZecIeeOWQ6yTAA+PTuefxvgqSdEH/9Rq5nbWny0y1ayptgp3xkxRcf2cIW2FaVTpqRIfXsE
	LXDe1pZzUnwk0Ob3JwmeDWEt7aADDll9myp8O2R9Jkd8LGfA+OiRI2Xo0pQ+Xbc1F1nQEcGxTHOUn
	OAKso7zEN3XmeVQmw7uhCVUFNny5/LtS3VD6MadqbFerKZ8HzeO9sDlIQt1dswnHENCciUUqF9l0A
	f3KZ4UHUdkyj8NqEwNcChUmyggZ+JjztpJf+8feACnUK+OebOSi5kPpxCnc6KsRszkdcaLdz6sVmi
	nB475oSoFmOsMkIsP7hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tneB9-00000007a4u-0dBU;
	Thu, 27 Feb 2025 13:43:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tne6E-00000007YtG-3wXS;
	Thu, 27 Feb 2025 13:38:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=meVcx23r/r7Dytz72YqeRZuHInvAetvSfHOgo60wpy0=; b=GFEjVF6ZyupV+W2QCWTF/Utl7O
	OgQTRNZSJUwppxQptsnxIyzoPnuntHdT7WgyzUD4CkcAl6USJGFTmLpdZ/tz74XVbyfjBeK5PVB8y
	0hNKQaRQzJYxypYzSM1xgSOFhfX6CZ+UuUetDCtXpKz8ueb+DuvP2mWQfsRLeJ4cLM0HJAwZ4PiJ4
	vUooOewyVgpD4ivZJyI6I3cOiMjwSKjWewiRIcb7U5FZAVqdfbNMsOtwjayDkOg4dkM0TcJ3g9tSv
	pEc7yNRYplHFBKsFXE5hpDqZLN08+/MRsbFu1tFadAfS91BTShdk8v1jVlLuE76cWtgaWbmdgPtBB
	2JN7VILA==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tne5Y-00018T-RH; Thu, 27 Feb 2025 14:38:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
	Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: (subset) [PATCH v7 0/3] Add HDMI audio on the rk3588 SoC
Date: Thu, 27 Feb 2025 14:37:52 +0100
Message-ID: <174066344874.4164500.18360075305644085277.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250217215641.372723-1-detlev.casanova@collabora.com>
References: <20250217215641.372723-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_053851_002064_A69A2F94 
X-CRM114-Status: GOOD (  13.82  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, dri-devel@lists.freedesktop.org, Niklas Cassel <cassel@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 17 Feb 2025 16:47:39 -0500, Detlev Casanova wrote:
> To support HDMI audio on the rk3588 based devices, the generic HDMI
> Codec framework is used in the dw-hdmi-qp DRM bridge driver.
> 
> The implementation is mainly based on the downstream driver, ported to the
> generic HDMI Codec framework [1] recently merged in the master branch.
> The parameters computation has been kept as is and the data stored in the
> dw_hdmi_qp struct as been cleaned up.
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: rockchip: Add HDMI audio outputs for rk3588 SoC
      commit: b8c6c136971c0e9750eec89f367529b2854d3a3c
[3/3] arm64: dts: rockchip: Enable HDMI audio outputs for Rock 5B
      commit: 97aa62ed1e970bf8aa9f57e87c946a95fa3d5bef

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
