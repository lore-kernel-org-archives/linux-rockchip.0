Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A1E8C25B78
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 May 2024 22:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zXXCZ35pZN4Loke3wIM69HaGKzFWAIl1I+8cvC7G48=; b=zA0VN+4mnv8QL4
	4cVIOebNNBRsLYHXy2gy8+/QsC773o6tJBLMwZQ+3SJ4q+wXSHvZlMw065zTo2d9QERnz8wby53Kf
	nKZyuC8ez2IxKnQEGaepCb7ik7HBpoFLM7CaTeD9F7TWVaPwAjff4SlKNty81xpG/8t2cwbf/Aay2
	gtcob/VHZ1omRAFRIYwYfRy7w1711Cow4cvVeVNiOuqaBKO9alSM3hFA5y4yC392OWccF2s9j7WOY
	1NCgj6dPfpXG0JmhBi9vPJuB0/FDZbmaDH8Vxpf0pAtzxOdUkmqSpLx8WgIzJYfB0s7JlR+8O+YI/
	A0ngqvLVa1KPatBbbvmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9uGc-00000004FKT-1LvP;
	Wed, 22 May 2024 22:17:02 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9uGZ-00000004FIa-1TgE
	for linux-rockchip@lists.infradead.org;
	Wed, 22 May 2024 22:17:00 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-52327368e59so7860272e87.1
        for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2024 15:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716416213; x=1717021013; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vOv8Z9OuvrouyMMtf2t9ALTmfVkIrc4vJ4mhIPjt+Xw=;
        b=Ql7h4J9w5TH9t2bCyu329Q1QxN1jT8w1NmaesQpzv1aBCXUzir/bfwpdLlpAICkuwL
         uZP7xwt37OyeTTiP21Ikd1P3JfqR4BvNQRz2HW8O/LftK38QMtBFeAIGmUND848ym+vj
         JIacTmhQNMzbTFM0X6Zuq0ITBSi5KT8TY38oGex0NEKE3pR+ohyiRNFlotns2JKM+1U/
         HyvlC9Ckvp5Jgq7LsJ6LD20lwYdKKRdmcKycJAbHmHWwy/Fvc+JoBBUe+fYl0d23BcnN
         3BSCWWHgCc1pNhbiEGeOIuehviXWWDyCvOdvWXXulW6PGPZdIAHMdYOvO5eHhAGlTZbj
         DTaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716416213; x=1717021013;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vOv8Z9OuvrouyMMtf2t9ALTmfVkIrc4vJ4mhIPjt+Xw=;
        b=GioqBnRcMBeq3BlbB55CWEqHqahBsjX+cUR+cfgBxxO7vC/eHIcaRuTwCaoPyE3W5S
         dQ8SDe5Ng1lowBrWpf7/+T+Eg6jao0YMd3tGbb9qb/osK6CqD5tljfrJnSfmPRToRJri
         NIP/0rPbQK9v1fOnIw23dOT2ujDAtvd8geOJZ1Ek+ubPigXXgDXI/V0ELFKUXeGXa6/4
         EB24nELN0YlkGZn0d2DTELNkT7xf8MP8+1OVU+W1+20yjEuogzDUDrhtntKktOuIC8Cs
         Ft4pTq/Regsmw4zkSHPJ5fUe7bDNGh85nKmN3Z3S1zIX46KKZmx6HCaMZ+Gb+Ex/tvRp
         EU7w==
X-Forwarded-Encrypted: i=1; AJvYcCUpwVjWGvSzJnaJU4BGaa5hRjhdR1Ogroy66SxFCxIfLAJ/T+OgSXfK8AJwwHC71iWc0uENTnpNRM33SH4GPliE8yPi1rVOWv6euU5qhyqanzjv
X-Gm-Message-State: AOJu0Yy0BLS/AIlsQtAdnHNc2p7805kW4NQjLRJQDqDN4VWriE0taLuy
	ntQ++xcRX5dP3typyAPcU1NDVDXLZ+38orsubOqgiSdEV1nsW3invn4cXuNat78=
X-Google-Smtp-Source: AGHT+IEuFGymLQfp5rTalVoB9wZNPMs9O3YdvgJXkOez5hZ61Aob79NQskger3tI6SZIHM2Dj+fRCw==
X-Received: by 2002:ac2:5ec6:0:b0:523:8a79:ed62 with SMTP id 2adb3069b0e04-526bed9e8famr2047667e87.3.1716416213020;
        Wed, 22 May 2024 15:16:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5238f6fee2csm2840002e87.181.2024.05.22.15.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 15:16:52 -0700 (PDT)
Date: Thu, 23 May 2024 01:16:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sebastian Wick <sebastian.wick@redhat.com>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH v14 03/28] drm/tests: connector: Add tests for
 drmm_connector_hdmi_init
Message-ID: <ex52reilea7p7fkayf47cuewa4cpuaxpq2ezr7f6cvflmpugc5@bbeo6uvs32kj>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-3-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-3-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_151659_404743_46F38F19 
X-CRM114-Status: GOOD (  11.60  )
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

On Tue, May 21, 2024 at 12:13:36PM +0200, Maxime Ripard wrote:
> We just introduced a new initialization function for our connectors, so
> let's build a kunit test suite for it as well.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/tests/drm_connector_test.c | 123 +++++++++++++++++++++++++++++
>  1 file changed, 123 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
