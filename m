Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25DB7C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 10:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaYP6qP/EW973KCa4PJnrvuFkhS7mkZRfAaAiJiVpyk=; b=EpwfqIU0AR4Qyr
	bj4X9ndMNHvB7C5C4XTGmiepVica9AI5syjGutlkwabkzMaV3ORfVq/CiAmwJmlECJJJSIOTvpOMN
	APDQjoq/21aEO2SkWSdrCdY8Zax3XSEZSp1i86kK+iwZpcy1YAP5JEHxeAjaV9CDGvBK481ZRsqbF
	xbbDe7P29AmJu5/HY1Furv10KaZAXCU6alW0je20SkSKYmLLt8DiUuuNlQWNtEEH1jSA7ZiSNtH/a
	yfA1X3LM08Uz7o5xs001VBozYPg0MdvlgmtLMNsgnDj54SM4PyK30jrRcV6rvVbRTnOKYXZrRtPyP
	gOp0VN002I9O2LaPgAWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5JJ-00000005nnx-2Flj;
	Thu, 23 May 2024 10:04:33 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sA5JE-00000005ni0-1DyN
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 10:04:30 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2e724bc46bfso52847011fa.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 03:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716458665; x=1717063465; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=y4dfGDIGi6g96GxO6el+LliDi+3YKJVZHbevMlNSfR0=;
        b=zom/1azVu+qOGLa5eu3JVCtEKMH7Gia9BuoppyLCh3bDA2ghvkp4EcldyXJe/QkvXZ
         Xr2NoMUKb47D9TGjGqWl28wSmNPYW8ID+nzua27rJ0oZj7tmVykI40DA5T1kUnfO/1YP
         BTJ6qlfUQAP0nXXJrDqpyru+eIpaiWZlsJCSbqPxq70OUfm+pIMLG6WZCV69ONNWQhi6
         0cSRelK9/yh5+nxXbyYhM622Q7kV9ibFH3/gCBSd+jQfytfX7Sm3Rmm9IqFvt6yyeA/U
         3EkQ5zp3YbVLO3m0xMe68rgSHe+9BWP1cDzUzILwutQYKkKPG6byZHpV5cBAzotzU2Rg
         Imdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716458665; x=1717063465;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y4dfGDIGi6g96GxO6el+LliDi+3YKJVZHbevMlNSfR0=;
        b=VF9wgaPJgdU4RDv5AY+/cFPJ8SWELQt0hYQLbnnhwLR/Lb1V/hnquhrlSCES/Ui27a
         886bjf8AKM4LEuXwPk79YWFDjDPJXnJlfCsyFlqKtfrMd155shGI9PVLdV0614ufofIy
         uEUlI5rse0pQ5Bx8C65YXUgu0k15zVjpql2BxaMoCq4KgjLQ/r0/B1aXjfm1cA4neBuL
         S8CGANcvrnv1X/UA7Y5i6lZrHIOXLDeRJDYW11RE4859nYdSK8Xn5+EDbF5bCVd3aDKY
         b3Tdv0De5rUiPyvkMz8+p3hFRm5gm24EuwXnKLnrBZ/I2jq3683uJKZKB4QZZuNti/Xv
         tmVg==
X-Forwarded-Encrypted: i=1; AJvYcCX0hNyvV70olcPS4pz6IACKrYph/AWUdrBlRYMkzSb6UzxaiU6Q0i6qgcm7A7v24gd+yJaTkCLhahQnQFbO1753f0riXvQSZ+DfO5UXoiYiE23C
X-Gm-Message-State: AOJu0Yy0xv+12gISvcGGnp6sE3vBIbd6IQQHCwitRQKyH5DheAIerRt1
	c4Zl9RnVoYVInecoXHmWPCX+9DEFpXSGBPq2hEHG+v7q9sJ4uUB0jSI116UNgTU=
X-Google-Smtp-Source: AGHT+IHI9JqXzb0Cyfhcs6KeNERwPEvQfkeVQfr9ZS+SMw0TkOUBh/ztRskPl/+x+XS30MmAlFxklg==
X-Received: by 2002:ac2:5044:0:b0:523:3be3:cbfe with SMTP id 2adb3069b0e04-526bfc02bbemr2577217e87.65.1716458665403;
        Thu, 23 May 2024 03:04:25 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5236d2e9ad9sm3382898e87.178.2024.05.23.03.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 03:04:24 -0700 (PDT)
Date: Thu, 23 May 2024 13:04:22 +0300
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
Subject: Re: [PATCH v14 14/28] drm/tests: Add HDMI connector rate filter hook
 tests
Message-ID: <zds53yg36qf7ft7mrvvgv2k5avbjib3zy2pdd2azrnvthppngu@2bep5gso3wic>
References: <20240521-kms-hdmi-connector-state-v14-0-51950db4fedb@kernel.org>
 <20240521-kms-hdmi-connector-state-v14-14-51950db4fedb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240521-kms-hdmi-connector-state-v14-14-51950db4fedb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_030428_568803_FDB38401 
X-CRM114-Status: GOOD (  12.76  )
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

On Tue, May 21, 2024 at 12:13:47PM +0200, Maxime Ripard wrote:
> The previous patch adds a new hook for HDMI connectors to filter out
> configurations based on the TMDS character rate. Let's add some tests to
> make sure it works as expected.
> 
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>
> ---
>  drivers/gpu/drm/tests/drm_hdmi_state_helper_test.c | 65 ++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
