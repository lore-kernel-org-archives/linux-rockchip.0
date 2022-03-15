Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F381DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 06:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbfhBawCYLjxeVO6G6wEBFdGEfahqvLqlWrgKDhIsPI=; b=GuYUVuHPr1NpNM
	/q6tG8Ej9tCH9VfVZNFJzjmbMlGMuU+kjyacOYGagpzGAchQ8tBwouz7PaVGySIKQpjOSJQxg0BN9
	Vf7rZ/qLebLuX1AhtjY0nUSdJgNhuHOvMXc2u8gxWdaNJngTY7njMRWSaES7GyAUz54o6s+RcbHor
	PSVYHs3lIzULxeDL7z+3lKNLsZPKnL8bureuSe8E0MaTt0ffeS4w56aOSi3WJhyihM8qcFyYoYdNq
	MJqYkZaCDzlMsv9voy6unr8EbRDOrqYxA8XTd0bq+HOtl6vnjjR/Y6sNWzxEFDaoYvteXkzy1Vb3O
	SM54Gw0HKxlfQHqiR6jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nU0xI-0080vp-2V; Tue, 15 Mar 2022 06:46:52 +0000
Received: from mail-m121144.qiye.163.com ([115.236.121.144])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nU0x6-0080tz-0m; Tue, 15 Mar 2022 06:46:41 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 713ECAC023E;
 Tue, 15 Mar 2022 14:46:36 +0800 (CST)
Message-ID: <9ec29d9b-8197-98fb-c612-5c842e4212c4@rock-chips.com>
Date: Tue, 15 Mar 2022 14:46:35 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v8 22/24] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20220311083323.887372-1-s.hauer@pengutronix.de>
 <20220311083323.887372-23-s.hauer@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220311083323.887372-23-s.hauer@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUIaGh1WH0IfSE5OHx
 1PQk5CVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PUk6Ezo*DD5NES9PCBQvEVYT
 AxJPCxBVSlVKTU9MSElNTEJMS09DVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSElJTTcG
X-HM-Tid: 0a7f8c541bd1b039kuuu713ecac023e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_234640_255675_2541959F 
X-CRM114-Status: GOOD (  15.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sascha:

On 3/11/22 16:33, Sascha Hauer wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
>
> The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> It replaces the VOP unit found in the older Rockchip SoCs.
>
> This driver has been derived from the downstream Rockchip Kernel and
> heavily modified:
>
> - All nonstandard DRM properties have been removed
> - dropped struct vop2_plane_state and pass around less data between
>    functions
> - Dropped all DRM_FORMAT_* not known on upstream
> - rework register access to get rid of excessively used macros
> - Drop all waiting for framesyncs
>
> The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> board. Overlay support is tested with the modetest utility. AFBC support
> on the cluster windows is tested with weston-simple-dmabuf-egl on
> weston using the (yet to be upstreamed) panfrost driver support.

Do we need some modification to test AFBC by weston-simple-dma-egl ?

I have a buildroot system with weston-10.0.9 and mesa 21.3.5.

After launch weston, I run weston-simple-dmabuf-egl, but from the output

of sys/kernel/debug/dri/0/state, the weston is still use Smart0-win0, 
which is

a non-AFBC window.

Do i need to modify the vop2 driver to set one Cluster window as primary 
plane?



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
