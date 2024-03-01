Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29D7DC5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 10:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uj7MTgDA9EP1uRAOobcLZaqm/ke+OiILbMs+zTYd8nY=; b=TuWZsJdqj78MSF
	2djnWnjbEmrSpqOytkceB8liBOCt4yhLyFY2dLJKLMioJW2KC6ALm9fWzJ4/LQ8rpKRrqPqlgu7To
	F21kQQEuLLz4HrPH3EpwsaErDr15ChGJy5v8tmPjJ/qTmwTEVMdayiSGKnneWy0sRJepEoogj8mLX
	mjH3qPg36JkNTCmfFn7w6lJsFEf3HJGKcXlxOwnYAvpQhZTCHU8/QHyJEJueuBy1xrWeY83/Pb5c5
	/buRQIsic38nJPTnf52sJHjAoCLbAHLcLpF0RGZPTW+XQhcUxw26HD+xXqFEQLHRODItrAVCs7GML
	37IbMzL9Xiw/3R5iRaHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg0AS-0000000HMnL-2nSC;
	Fri, 01 Mar 2024 10:31:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg0AP-0000000HMmn-1beo;
	Fri, 01 Mar 2024 10:31:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 06A1960FD4;
	Fri,  1 Mar 2024 10:31:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BC35C433F1;
	Fri,  1 Mar 2024 10:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709289059;
	bh=dgKpI41QjGCHxUXx9zUpZ2jMevchmNMDZ5zbAW9T4z4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BuDHT623qzr/FGGXvtVM2chDjaossdPprsG1lRUK24tCYniAyYxhgC9m90qCS3Rru
	 JIjXBMl6X99Id1h2tLMiwQqLk0Urq6YAWJWdYoZlLmcypM68yq2Gq1JlqJsfv2oxxx
	 iCShHyIZvtG2HmHVD5kNQ1B4fFl5EU+KzBLVrOv1R3xoDoU7lmEEpq6VK+FHrG3NNe
	 JEF5MeLLx92PDkZ37IVduLvnfZ0YQ08kB1Lvu5t5w0H72gkiveJ8KfcHRvW7OBAyW7
	 YM76A0g/1nQVocwGbQf6FvqwVFaLiTsQmIxMhtqX0zKKtFsRjh61pTPKOvsYkiPEAN
	 1kNeUGJJuARTw==
Date: Fri, 1 Mar 2024 11:30:56 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Sebastian Wick <sebastian.wick@redhat.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH v7 21/36] drm/connector: hdmi: Add Broadcast RGB property
Message-ID: <20240301-light-impressive-grasshopper-adabeb@houat>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-21-8f4af575fce2@kernel.org>
 <20240229194726.GB166694@toolbox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240229194726.GB166694@toolbox>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_023101_490754_8367F4EF 
X-CRM114-Status: GOOD (  13.70  )
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

On Thu, Feb 29, 2024 at 08:47:26PM +0100, Sebastian Wick wrote:
> > @@ -1708,6 +1731,39 @@ EXPORT_SYMBOL(drm_connector_attach_dp_subconnector_property);
> >  /**
> >   * DOC: HDMI connector properties
> >   *
> > + * Broadcast RGB (HDMI specific)
> > + *      Indicates the Quantization Range (Full vs Limited) used. The color
> > + *      processing pipeline will be adjusted to match the value of the
> > + *      property, and the Infoframes will be generated and sent accordingly.
> > + *
> > + *      This property is only relevant if the HDMI output format is RGB. If
> > + *      it's one of the YCbCr variant, it will be ignored and the output will
> > + *      use a limited quantization range.
> 
> Uh, maybe just say that the quantization range is selected automatically
> in case a YCbCr output format is in use. I'm not sure every YCbCr
> variant requires limited and even if it does, new formats could change
> this.

I documented what i915 is doing:
https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/i915/display/intel_hdmi.c#L2143

Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
