Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4CE2C25B74
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 15:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdZn3wDzv1e9b73riwFxgD17yAtNWuigJQsjqRBMCig=; b=dTYnwkrkdzNozB
	ujAluEP1E7n3A04rFMGUDsTqJbOctiDuqVHiodnolS0QxHGyR5cWC93lwXQfj9/C/hkJUYeSN2niK
	KMJJJEm5UnwetR+W5Tu38OFAH6cWxkA2+smNX4QR+bl6r6e2LLoUxIqqJYMqOpI/4RVDjMIruCJBN
	G42SXV8PnhNmox/r0LwCVN4Bz/vtnHIv3bTBl1SrhZW43poyCs+oXHC2SRF3vEGmEftwR9Zh+eT1i
	WDqny8LrrflbtTj3VKnIfKg81OQnsblRWZDzZBo/KDnwNDQTo7yhrAG5GbdMP57CpOzfvR/LsdG2p
	O2rTrO22K9/VCUvzRpIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBcGF-0000000Faqx-0Cvm;
	Mon, 27 May 2024 15:27:43 +0000
Received: from out-173.mta1.migadu.com ([2001:41d0:203:375::ad])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBcGB-0000000Fapl-16ff
	for linux-rockchip@lists.infradead.org;
	Mon, 27 May 2024 15:27:40 +0000
X-Envelope-To: mripard@kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1716823652;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Vsw4ZGatsr0eZbdbPVbaiC9GTnbbEm5u3nRWlw+hGUc=;
	b=FfgPGAoHB1qlQWojPKPbc3dqBZe+TrUH4BSedSn814UMa4siCJ0fTL/3BQ2TGlKsDjfXHM
	5Y9klSvpPbdA23gk4DwM/9zAoaIfAXh1ELhXijHvf9FSzUNt0hDVBjkpojFdAEUePklnFY
	qvmpTQ9v8Z3A6HOiYnsXGLu5kOJRqyE=
X-Envelope-To: maarten.lankhorst@linux.intel.com
X-Envelope-To: tzimmermann@suse.de
X-Envelope-To: airlied@gmail.com
X-Envelope-To: daniel@ffwll.ch
X-Envelope-To: corbet@lwn.net
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: heiko@sntech.de
X-Envelope-To: wens@csie.org
X-Envelope-To: jernej.skrabec@gmail.com
X-Envelope-To: samuel@sholland.org
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: hverkuil@xs4all.nl
X-Envelope-To: sebastian.wick@redhat.com
X-Envelope-To: ville.syrjala@linux.intel.com
X-Envelope-To: dri-devel@lists.freedesktop.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-doc@vger.kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: linux-media@vger.kernel.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-sunxi@lists.linux.dev
X-Envelope-To: dave.stevenson@raspberrypi.com
X-Envelope-To: dmitry.baryshkov@linaro.org
Message-ID: <50622688-c1ab-4dde-8735-0456722fab14@linux.dev>
Date: Mon, 27 May 2024 23:27:21 +0800
MIME-Version: 1.0
Subject: Re: [v15,06/29] drm/tests: Add output bpc tests
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Dave Stevenson
 <dave.stevenson@raspberrypi.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20240527-kms-hdmi-connector-state-v15-6-c5af16c3aae2@kernel.org>
Content-Language: en-US, en-AU
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <20240527-kms-hdmi-connector-state-v15-6-c5af16c3aae2@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_082739_588754_BC47D5EC 
X-CRM114-Status: UNSURE (   5.57  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,


On 5/27/24 21:57, Maxime Ripard wrote:
> Now that we're tracking the output bpc count in the connector state,
> let's add a few tests to make sure it works as expected.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Tested-by: Sui Jingfeng <sui.jingfeng@linux.dev>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
