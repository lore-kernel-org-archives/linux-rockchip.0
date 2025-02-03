Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49C6CC02192
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Feb 2025 17:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jh5db365lAo6dnYIAOd0N6meN+5+ICzOKETMGkqxQuA=; b=m7Oft7UrJawrYU
	zTtxmy0DGhUIrgHspGwdEamB/JdWw2/eh3i8fvJSXR8nyUZA3XTmeYgGMz1gYWQuURfDHEY470c4W
	0qDC25gXIWlUpag59UkbgRjx2ZacOJKcCa4AfcrRL2V2m9S11mtaidPKyF3HKnDVwsi+9FR0UOc6l
	BqebYSYtQ+ZbhqbwTV2vnkq/87dToAt51FrWbmWdUdGoK7evp6xCwt3Jhx6BRBjRok40ODViZgrpO
	kQPBaXZOSuBTSGpvbvIFyA9OY7LfPK/NISAGShf9BY+aGFKSjGPUQiP6qLDytk2uiF7NwS1ih5w7I
	xvOBI3XPTXH3w2HtL1Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf085-0000000G7dZ-3w1v;
	Mon, 03 Feb 2025 17:21:01 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf06i-0000000G73x-3TMD;
	Mon, 03 Feb 2025 17:19:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1738603173;
	bh=5ePCDsb1bAP/jNuRJMfVI3ZCEU/mC/+hPJaIbtgjCxE=;
	h=From:To:Cc:Subject:Date:From;
	b=QnMyC7jEtXz9PjgfXLoqF7VIO8wrBcTFADIGNXd61AJkiYzCyxjFT4b9dAddVLYOM
	 SO1bStZOV5xiXwXDojtG/AclRbI66ECkQoKw4kZKNT75lLcGielPu1ESxWA48X2X2y
	 Zkmv7MeVuvcuK9xHPVbNHxzrjmdsmD0wjcjZhcB5zMofMg1ZZh7tcBmib3TDWdMTUo
	 zvzakJ0y6tJ5xpAHb9CEWU8Zb8623yJ0KjzYIOjdC830X18li0VOyMusYukbaUdeFe
	 eUM3uz6ITrDi8U2ibnRfOGNSY++kv2yX9cu90VwGnXQnTE6hXtkn8/zLBiGcyJGzQs
	 tt8ZaQRL414zg==
Received: from earth.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 99BA817E0CED;
	Mon,  3 Feb 2025 18:19:29 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/3] Add HDMI audio on the rk3588 SoC
Date: Mon,  3 Feb 2025 12:16:30 -0500
Message-ID: <20250203171925.126309-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_091937_022768_FCCFEF85 
X-CRM114-Status: GOOD (  15.76  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Quentin Schulz <quentin.schulz@cherry.de>, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, Niklas Cassel <cassel@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

To support HDMI audio on the rk3588 based devices, the generic HDMI
Codec framework is used in the dw-hdmi-qp DRM bridge driver.

The implementation is mainly based on the downstream driver, ported to the
generic HDMI Codec framework [1] recently merged in the master branch.
The parameters computation has been kept as is and the data stored in the
dw_hdmi_qp struct as been cleaned up.

The table for the N values has been edited to reflect N recommended values
as well as CTS recommended values.

The downstream kernel also implements a machine driver for HDMI audio but
it is doing exactly what the simple-audio-card driver does, so use that
instead in the RK3588 SoC device tree.

Based on Linus' master branch.

[1]: https://lore.kernel.org/all/20241224-drm-bridge-hdmi-connector-v10-0-dc89577cd438@linaro.org/

Changes since v4:
 - Moved hdmi0_audio node the rk3588-base.dtsi
 - Enable hdmi0_audio in rk3588-rock-5b.dts

Changes since v3:
 - Renamed function to start with dw_hdmi_qp

Changes since v2:
 - Also clear the audio infoframe
 - Write AUDI_CONTENTS0 to its default value in case it gets overwritten.
 - Store tmds_char_rate in the dw_hdmi_qp struct in atomic_enable
 - Clear tmds_char_rate in atomic_disable and only write registers when
   tmds_char_rate is not 0.
 - Do not use connector_state duplicates

Changes since v1:
 - Remove useless audio_mutex (was used downstream for multiple drivers access
   to audio functions)
 - Let hdmi_codec build and setup audio infoframes
 - Only access audio registers when connector is connected
 - Rebased on master branch


Detlev Casanova (2):
  arm64: dts: rockchip: Add HDMI0 audio output for rk3588 SoC
  arm64: dts: rockchip: Enable HDMI0 audio output for Rock 5B

Sugar Zhang (1):
  drm/bridge: synopsys: Add audio support for dw-hdmi-qp

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  17 +
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   8 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c  | 497 ++++++++++++++++++
 3 files changed, 522 insertions(+)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
