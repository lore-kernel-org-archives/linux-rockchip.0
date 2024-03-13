Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA8EAC54E66
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Mar 2024 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vzLiZpxEQZL6uVAr7d+qx9U4nyTrfPmrkbN7iLLQihs=; b=rf6T6dtNTOSg+T
	my3c5fpCRH+VYM4791NehZkSIUx/BUZdDASwtVvMx43HrNs/ws3gg9bGv/l/lt7tyqIVH5gEuuYsM
	qnLbCXDdQEI2rsIZGzCMcNmDxb+4zE/TsgYO0P1SJhIuEw0KXTaTAqP3CeydDrkb3tL0OCEj3Qk5h
	CXoFFu1Ipckzn93Rvg+LX6EQEL10gigtvacNiqI5y6pQDndflRcpARf+fH3HcYf3AUG31DavEvQCb
	MxidnLQ3+EjYjxVrUjyIX5QVgHJvUgjqJBcKNapcafucEXjx+rCwugFIrnewVum08T+WOteBE0swV
	wIWhpSoOTsqkIbD971RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkY7R-0000000CHMA-3bjQ;
	Wed, 13 Mar 2024 23:34:45 +0000
Received: from out-174.mta1.migadu.com ([95.215.58.174])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkY7P-0000000CHJg-0vGf
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Mar 2024 23:34:44 +0000
Message-ID: <4b1c71bd-10fb-4177-bacf-44ce77ae1c52@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1710372875;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=aXQaEFsum6OMqBMgCJr/1CyC37B3P/uDQXWPsVF6tQE=;
	b=ZlnC1hRUo5KNFY1GdEQxvESkKLLFy9LfseRTKgurcQl5VqEAS6NqtJ23muCOZCtFNcVyx5
	Hgz0dsyvNEqIn/lPi6JC0iuMzOy4GDuZcbBmtjPssNR0X6rvxpZJS+dxntt0oAuAjRY2GK
	kVFTgeWNsYzTiABktxLawoErr4pl6mI=
Date: Thu, 14 Mar 2024 07:34:11 +0800
MIME-Version: 1.0
Subject: Re: [v9,01/27] drm/connector: Introduce an HDMI connector
 initialization function
Content-Language: en-US
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev, Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20240311-kms-hdmi-connector-state-v9-1-d45890323344@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <20240311-kms-hdmi-connector-state-v9-1-d45890323344@kernel.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_163443_422566_02E915EF 
X-CRM114-Status: GOOD (  11.46  )
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


On 2024/3/11 22:49, Maxime Ripard wrote:
> A lot of the various HDMI drivers duplicate some logic that depends on
> the HDMI spec itself and not really a particular hardware
> implementation.
>
> Output BPC or format selection, infoframe generation are good examples
> of such areas.
>
> This creates a lot of boilerplate, with a lot of variations, which makes
> it hard for userspace to rely on, and makes it difficult to get it right
> for drivers.
>
> In the next patches, we'll add a lot of infrastructure around the
> drm_connector and drm_connector_state structures, which will allow to
> abstract away the duplicated logic. This infrastructure comes with a few
> requirements though, and thus we need a new initialization function.
>
> Hopefully, this will make drivers simpler to handle, and their behaviour
> more consistent.
>
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>


Reviewed-by: Sui Jingfeng <sui.jingfeng@linux.dev>

-- 
Best regards,
Sui


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
