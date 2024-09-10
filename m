Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BFA4EDE999
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 15:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QahB+uhUnhfCadsVRBX4goNs+hHvzlf4UBeK7E/CsEY=; b=cweyOla+LxgQLv
	NGrjb8Vc4H+7qoYNYxywvjnuVxYM2lAYtXVTwPmXPpQ6JX7EBX/cw1WXCsCiyLiwpWhQUwDJ25b+t
	c79dS9PKazcWgoAGaWVqMgUsUrtxuQrD8q1dyhDVx51qkc9OtlTO3PDzjqnd8yqZi8CWFnDPUOmIz
	YM6dZB0Gyj2QAhlX3vIrdAJke8twY3KfoptSCYo4oGDDApTPtP4O0kkcPs+Pw5iUxaf1BwHR0tVCR
	em+LX3ZsyQnGL6CJmwuTSnhi5kU89X4gzKr8qd9yYNDoNmx2k0kMfJjM58BLlS16QHB9o16v2tYaD
	qSRqKuYO82WU/pQjiZ8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so2SO-00000005zlJ-0JDY;
	Tue, 10 Sep 2024 15:07:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so2RL-00000005zc8-0wj7;
	Tue, 10 Sep 2024 15:06:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=MbtVK41xgK4idgq8PGW89PrBOMGskTuzUaGyT2iw6+Q=; b=2Pm3vRG68XGpfyN2ZCgPfKGopi
	we4pslGmbNcTqh8LaiL9VvtvJ9i0dITV4GyirSq363XY6TySOhmHg23VcnplIbKJZfdfPMIJB01TN
	dUg96aoBCxn580xFvbFxPBS2CTsEYmYv2H6z/QQ/0DuEQmMHIFXrYFlo+GtCkI3pXXRw9HkRyAXAQ
	zl8sQZQVRkaG973q46UFmxdARTOog4suJE9YUV4DWXNSj7saAxXFoi+ng0N/nVkbrJZFVkx0X26NI
	wGxiZj6r645B1cBZI2XfZ92Q9x6kgUrWJqCGEBjTuwhanFKELn7o7Aqr87Li0qISJY94eKMpMXdhf
	if5auyIQ==;
Received: from i53875a02.versanet.de ([83.135.90.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1so2Qt-0005VN-MJ; Tue, 10 Sep 2024 17:05:31 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v6 3/3] drm/rockchip: Add basic RK3588 HDMI output support
Date: Tue, 10 Sep 2024 17:07:57 +0200
Message-ID: <1785617.Ii9rTq9gLj@diego>
In-Reply-To: <20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb@collabora.com>
References: <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
 <20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_080559_279523_54DD3156 
X-CRM114-Status: GOOD (  12.78  )
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

Am Freitag, 6. September 2024, 03:17:42 CEST schrieb Cristian Ciocaltea:
> The RK3588 SoC family integrates the newer Synopsys DesignWare HDMI 2.1
> Quad-Pixel (QP) TX controller IP and a HDMI/eDP TX Combo PHY based on a
> Samsung IP block.
> 
> Add just the basic support for now, i.e. RGB output up to 4K@60Hz,
> without audio, CEC or any of the HDMI 2.1 specific features.
> 
> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

I had switched from the v3 to this v6 in my playground-kernel today,
with v3 I've never seen those, but now with v6 I have gotten multiple
times:

[  805.730608] Internal error: synchronous external abort: 0000000096000010 [#1] PREEMPT SMP
[  805.739764] Modules linked in: snd_soc_simple_card crct10dif_ce snd_soc_simple_card_utils panthor drm_gpuvm drm_exec fuse
[  805.752031] CPU: 3 UID: 0 PID: 775 Comm: Xorg Not tainted 6.11.0-rc7-00099-g459302f1f908-dirty #934
[  805.762143] Hardware name: Theobroma Systems RK3588-Q7 SoM on Haikou devkit (DT)
[  805.770407] pstate: 204000c9 (nzCv daIF +PAN -UAO -TCO -DIT -SSBS BTYPE=--)
[  805.778186] pc : regmap_mmio_read32le+0x8/0x20
[  805.783155] lr : regmap_mmio_read+0x44/0x70
[  805.787828] sp : ffff80008293b830
[  805.791516] x29: ffff80008293b830 x28: ffff80008293bce8 x27: ffff0001f20ab080
[  805.799495] x26: ffff800081139500 x25: 0000000000000000 x24: 0000000000000010
[  805.807472] x23: 0000000000000000 x22: ffff0001f5a4b400 x21: ffff80008293b8c4
[  805.815450] x20: 0000000000000968 x19: ffff0001f5a27a80 x18: 0000000000000070
[  805.823428] x17: 0002441400000005 x16: 000004650441043c x15: 0438000008980804
[  805.831406] x14: 07d8089807800780 x13: 0438000008980804 x12: ffff800081133630
[  805.839384] x11: 0002441400000005 x10: 000004650441043c x9 : ffff800081a59000
[  805.847361] x8 : 07d8089807800780 x7 : 0000000000000000 x6 : ffff0001f5b453c0
[  805.855339] x5 : ffff800080750dc0 x4 : 0000000000000968 x3 : 0000000000000968
[  805.863316] x2 : ffff800080751520 x1 : 0000000000000968 x0 : ffff800083b20968
[  805.871294] Call trace:
[  805.874012]  regmap_mmio_read32le+0x8/0x20
[  805.878588]  _regmap_bus_reg_read+0x6c/0xac
[  805.883262]  _regmap_read+0x60/0xd8
[  805.887159]  _regmap_update_bits+0xf4/0x140
[  805.891832]  regmap_update_bits_base+0x64/0xa0
[  805.896797]  dw_hdmi_qp_bridge_atomic_enable+0x134/0x220
[  805.902734]  drm_atomic_bridge_chain_enable+0x54/0xc8
[  805.908380]  drm_atomic_helper_commit_modeset_enables+0x194/0x280
[  805.915190]  drm_atomic_helper_commit_tail_rpm+0x50/0xa0
[  805.921125]  commit_tail+0xa0/0x1a0
[  805.925021]  drm_atomic_helper_commit+0x17c/0x1b0
[  805.930276]  drm_atomic_commit+0xb8/0x100
[  805.934754]  drm_atomic_connector_commit_dpms+0xe0/0x110
[  805.940690]  drm_mode_obj_set_property_ioctl+0x1c0/0x420
[  805.946626]  drm_connector_property_set_ioctl+0x3c/0x68
[  805.952465]  drm_ioctl_kernel+0xc0/0x130
[  805.956846]  drm_ioctl+0x214/0x4a0
[  805.960643]  __arm64_sys_ioctl+0xac/0xf8
[  805.965025]  invoke_syscall+0x48/0x104
[  805.969214]  el0_svc_common.constprop.0+0x40/0xe0
[  805.974470]  do_el0_svc+0x1c/0x28
[  805.978171]  el0_svc+0x34/0xe0
[  805.981582]  el0t_64_sync_handler+0x120/0x12c
[  805.986449]  el0t_64_sync+0x190/0x194
[  805.990540] Code: d503201f d503201f f9400000 8b214000 (b9400000)

I guess that might be some clocking issue?



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
