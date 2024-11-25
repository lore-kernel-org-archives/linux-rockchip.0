Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13A43D3B7E8
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Nov 2024 07:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LboenicZ2OPrAG4Ev6kF4NcRFLB88TUKzPaMtZUT610=; b=QI0AcoS7ia2mH8
	9+pdkBpiUk0QuYOm1ch/3JTZWYQGNcK5iSkpRp5bzNPxLZT8YBq9am19+vxM1lfB78jhrFS3J+1CL
	3QfCRUczl66Piy4PZ7S7qFjamofFiJgy1XNFAUzZ+T0Tff5hPwBwrLyk+8NLHTymopDPsLN6U8WPU
	REDe4sZR40lFdtoihymFm46VzpWt7WJNbzOVY5aJFi72gODn2vxonlZkYhgKhBOfLNxq0IPC7exBE
	GJRBtPq09jRkX8Z7cGchYdT8AY69CtjvR6VpZiMkP3Xnr163MQdndNvBfiM39coMOB7WSqdSN47aA
	2SW1CUQqlyvlUScPgTJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFTyI-00000007I6E-2gXm;
	Mon, 25 Nov 2024 07:57:26 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFTxK-00000007HzI-3aXy;
	Mon, 25 Nov 2024 07:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=lWCuFhfEEKaJ3GUTrOrOQrEiKfJAVkt+IjzyiGjhhsc=; b=d
	/W2sNUon1A5TrNFPVd/HnCzuRvVoFeaTeqUvynbz5k6KJzbjF3prXezzfvGgYxGi
	3lyvYeOdNNt5gmcOKMOj7Muy1mes9W+lgrerxXCOYJNV2z49HRdZUOecLIA17mry
	53NK8KG7+odK7pBsUeDQQk+GwqT7e8/dlXjvVUNPWM=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-120 (Coremail) ; Mon, 25 Nov 2024 15:55:41 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Mon, 25 Nov 2024 15:55:41 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Detlev Casanova" <detlev.casanova@collabora.com>
Subject: Re:[PATCH v4 0/3] drm: rockchip: vop2: Add VP clock resets support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20241115162120.83990-1-detlev.casanova@collabora.com>
References: <20241115162120.83990-1-detlev.casanova@collabora.com>
X-NTES-SC: AL_Qu2YAPmZvksv5yWRYekZnEobh+Y5UcK2s/ki2YFXN5k0qiTx3icwbG5AE1jE9fm/KwSmoQmXQjhw185jW61SUJh5vIZhoMZOdqc6vyh/TPcw
MIME-Version: 1.0
Message-ID: <3e8f91fa.8700.1936251b29e.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eCgvCgCHP8d9LURn0i4vAA--.51834W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqR+iXmdEJXnuHgABsE
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241124_235627_202496_BA19676E 
X-CRM114-Status: UNSURE (   9.81  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko.stuebner@cherry.de>, linux-arm-kernel@lists.infradead.org, Jianfeng Liu <liujianfeng1994@gmail.com>, linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Detlev,

At 2024-11-16 00:20:39, "Detlev Casanova" <detlev.casanova@collabora.com> wrote:
>The clock reset must be used when the VOP is configured. Skipping it can
>put the VOP in an unknown state where the HDMI signal is either lost or
>not matching the selected mode.

Can you provide some detail about how to reproduce this issue ?
If we can reproduce this issue, we might be able to do a more deep analysis.

>
>This adds support for rk3588(s) based SoCs.
>
>Changes since v3:
>- Rebased on drm-misc-next
>- Reword first patch subject
>- Reorder commits for different trees
>
>Changes since v2:
>- Rebase on latest master
>- Add details on how to reproduce the issue
>
>Changes since v1:
>- Add AXI and AHB clock resets
>- Set maxItems for !rk3588 in vop2 bindings
>
>Detlev Casanova (3):
>  dt-bindings: display: vop2: Add VP clock resets
>  drm/rockchip: vop2: Add clock resets support
>  arm64: dts: rockchip: Add VOP clock resets for rk3588s
>
> .../display/rockchip/rockchip-vop2.yaml       | 40 +++++++++++++++++++
> arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 12 ++++++
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 30 ++++++++++++++
> 3 files changed, 82 insertions(+)
>
>-- 
>2.47.0
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
