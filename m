Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82DBECD6E55
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 13:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XodAKtF+DFJtyWVnHQlWvXt/31lAX0HM2WAnmRGvTDQ=; b=GHlVchgavZuuu2
	4aRstAZQcC3QgQR+N6O3RnyfuMrtB7Bz3aJCG9qBMYMUUQu+4FxfzUXjQoBpP/hB60dQ9gzNK4CdQ
	hztmMKdTxbAOaNbjOnYyTNu4Rv908f8wJ5m9LimS79zqLhp2tsbpxGSoJZP0GwalEWsoKIrldycPU
	OWhH56d1kBe7A9jIp1O45OIYJ0vP1S7nGyFHrDq4GZrrInK0jO3qmpf10+b89rl14m7xSulaB4SEM
	RSwhv79eDRg3fQUyJYC+C+LFV+WdenC6y0ekDlHHW83LpFcDURpIiM9OJY49A+fUKhrEtPXKmiixZ
	TiTVYGlAzA3DtMZtcEWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU2ww-0000000BE56-2WnJ;
	Mon, 01 Jun 2026 13:45:02 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU2wt-0000000BE44-1Krn;
	Mon, 01 Jun 2026 13:45:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=oXODjuqrY4OBNW73p3++vJQePAvD2CddI9jj9bMuC9U=; b=N
	kqfjVGTMhJtZs6BaN/bpi1eK9gxiOQbO9W7+kp7SPmHco1+Ac3WcJG2fSRl2S2DL
	hPysTQkGX6t4UnzvLvt6QeAuNoQCl7QHMQASsPWjrK/CHtETaw+fCsE53oOEPzEn
	o4JNoYhinzSy3a+7fR+mFhVU06d5avW7cdgRmWVad4=
Received: from andyshrk$163.com ( [61.154.14.86] ) by
 ajax-webmail-wmsvr-40-120 (Coremail) ; Mon, 1 Jun 2026 21:44:15 +0800 (CST)
X-Originating-IP: [61.154.14.86]
Date: Mon, 1 Jun 2026 21:44:15 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: "Sandy Huang" <hjc@rock-chips.com>,
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
	"Maxime Ripard" <mripard@kernel.org>,
	"Thomas Zimmermann" <tzimmermann@suse.de>,
	"David Airlie" <airlied@gmail.com>,
	"Simona Vetter" <simona@ffwll.ch>, kernel@collabora.com,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re:[PATCH 0/2] YUV support for VOP2 background color
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260403(27802f6d) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260524-vop2-bg-yuv-v1-0-dcb6a52923f5@collabora.com>
References: <20260524-vop2-bg-yuv-v1-0-dcb6a52923f5@collabora.com>
X-CM-CTRLMSGS: FN07+3BsdXM9MTc4MDMyMTQ1NTA1MF9kNmRjY2YzNjU0MmEwNTIyYjc0YWExM
 mI1MmZiMDMyMg==
X-NTES-SC: AL_Qu2TAv+Zvkwu4yObYukfmUgWjuw/WsG1v/Ul1YBSP556jDLp4yQsdlhFB13k6v+RMTGlqAieVTxg0OFXWa1WfaYt+PjPcFvWK/NZy9+E76AqHw==
MIME-Version: 1.0
Message-ID: <8061cc0.a9f1.19e836d8cf0.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eCgvCgD3_0ivjB1q9MivAA--.26891W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxg8wjmodjK9X4AAA3U
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_064459_845804_37618D3E 
X-CRM114-Status: UNSURE (   5.97  )
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


Hello Cristian,

At 2026-05-25 00:27:27, "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com> wrote:
>Since commit bec7cbfa7d4f ("drm/rockchip: vop2: Support setting custom
>background color") the VOP2 display controller allows configuring the
>background color of each video output port.
>
>However, this is currently limited to RGB formats.  When operating in
>YUV overlay mode, the color must be programmed using YUV format.
>
>Add the necessary RGB-to-YCbCr conversion logic, covering all color
>spaces supported by the display controller: BT601L, BT601F, BT709L and
>BT2020L.
>


Do you currently have a branch that makes dw-hdmi-qp output in YUV mode ?

>Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>---
>Cristian Ciocaltea (2):
>      drm/rockchip: vop2: Rename CSC_BT2020 to CSC_BT2020L
>      drm/rockchip: vop2: Add YUV support to background color
>
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 154 ++++++++++++++++++++++++---
> drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |   2 +-
> 2 files changed, 139 insertions(+), 17 deletions(-)
>---
>base-commit: 213c92ac9717e4951f052a499f91c89302889813
>change-id: 20260524-vop2-bg-yuv-1b0e6a09c579
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
