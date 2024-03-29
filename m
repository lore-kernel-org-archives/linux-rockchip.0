Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6C39CD128D
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 16:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3GfPSwmw1fX5c1Vaj20EmVufRhg9wKVNJV7927XVyc=; b=w3uJAyJNlI8P+w
	IVnnOgdrDprNYH0/sbkOI6vRSYKAHGUQzONsw5YnVkgEyJwkRxROVY+K8jefy6N2vdFomKdL06qSi
	Y0GAIEFzSgXZ/E/EyHVA2X4u9caEAKoItO/A+CFog2EQZbaJhl513dMCB/lfZxiuic75qBmdIzlWi
	E4/8wLAsNdkroa+j39NY8O5pao3CihkEKK5LZUqoqQ2wRV2SiiWOBNS1ogiIM2F+Y8sRGW35xdPdS
	BKRJckUExkH7SpBneJPDfpXl8xQMHDOz3aulQcCRIvWzKQ77u9ti4RFMFdQZL7c6qpNY4+s2AIqgi
	dbm1dh+mi1QI002vWW6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqFEy-00000001Koc-2lgW;
	Fri, 29 Mar 2024 16:38:04 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqFEu-00000001KmV-1hao
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Mar 2024 16:38:02 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-41549a9dcbaso10265065e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 29 Mar 2024 09:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711730279; x=1712335079; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UwLmF2g9SeFgO0qE9J71WGfItvHTsnplXOGpXDPoZl0=;
        b=VnPxY6TL0p4spAt8fTda3WCZhJv8jZvKW6E6qtI7xgiX23/sjgU9LdDi0uBBG+1mCN
         g1xt8rSGxF4gH0DkN4u1W36oJ+X/d/2W3JRCH0Dss0whklw00Ua5sVDFIZKF8NQYJPp7
         RaNpd2HBCE5F7lGbtroxL9kca8mS6Ick28i1YUUtOdS4kMQquySrMjw6aEHUOB/NasIt
         XbUj7WYL2C+rrBonFzVD+lz52vmbwidesbFs5tTQ6G2cuzaF1D+peU3UDBSDiZsInziH
         ZBROX6052ph+ah850yEBFot98LwtpTbps/3bG824qCaFw7CkOOOKnLEelwxvLtXBt2qD
         MTCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711730279; x=1712335079;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UwLmF2g9SeFgO0qE9J71WGfItvHTsnplXOGpXDPoZl0=;
        b=bFEvTfRaOsyzbWce81SXDFaraYWgh4pPE6kZfNywA6Xi2JXlGHi10c4Q69pYYoCvT9
         UZbuOpa9Gkmtux0W25wEgKM8pHC032acsGy4Dw+UigGIJVIo2BkiUpiKP4FPtQVzGmGZ
         mdLV5PPJEdOSIiusvD4D0oDj8TZtSqj9UN4zxBcZNSO3XTuQ2hEUc9LkMI3G0LrSApk9
         GHzS03AxpqxhCmAeOMYGIeC28WaSiHbXjapszFiEyM/lxblL5mM82a6w/gdzebzt8OxQ
         6cygMvUjYsLDXVUuE4YbO0q69gaNve6NMncPQpssf+ZQ+uSQxK22xKy7MLJI18HUnoXq
         WCkw==
X-Gm-Message-State: AOJu0YxCVKjqhP5xCaEH2Up7OAA1s8Fj4vlyF+NwL1ZG3dG7t/Mkt2ct
	b8ev1D/8FbCgp/lDisS7zTyrNoa0cZsPADCQfnnfDy35ikoMxRtcAw8czk2eG28=
X-Google-Smtp-Source: AGHT+IFxR9kCg8wK1tdVBWU2BipcSmXFIAMRH1mlDRbii8iRl38mOAwB9CBqVsbED9XR994yGHrUNw==
X-Received: by 2002:a05:600c:4f0c:b0:414:85f:1f72 with SMTP id l12-20020a05600c4f0c00b00414085f1f72mr1763054wmq.6.1711730279018;
        Fri, 29 Mar 2024 09:37:59 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id m4-20020a05600c4f4400b004146bcdde06sm5958736wmq.6.2024.03.29.09.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 09:37:58 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-rockchip@lists.infradead.org, 
 Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, 
 quic_jesszhan@quicinc.com, megi@xff.cz, kernel@puri.sm, agx@sigxcpu.org, 
 heiko@sntech.de, conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
 robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH 0/5] Add Support for RK3326 GameForce Chi
Message-Id: <171173027816.1500306.363820748335291439.b4-ty@linaro.org>
Date: Fri, 29 Mar 2024 17:37:58 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_093800_507192_25E9E278 
X-CRM114-Status: UNSURE (   7.96  )
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

Hi,

On Mon, 25 Mar 2024 08:49:54 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the GameForce Chi [1].
> 
> The GameForce Chi has the following hardware:
> Tested:
>  - 3.5" dual lane 640x480 DSI display.
>  - 15 GPIO based face buttons.
>  - 2 ADC based face buttons.
>  - 1 ADC joystick (left) connected to internal SARADC.
>  - RGB LED arrays for key backlighting
>  - Dual internal speakers.
>  - Realtek RTL8723BS SDIO WiFi.
>  - Single SDMMC slot.
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/5] dt-bindings: vendor-prefix: Add prefix for GameForce
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/59237fc04ee1c4cdf62ad5dba18244713970e36f
[2/5] dt-bindings: display: Add GameForce Chi Panel
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/387974a21a63b1c7efcbc19c48b9930f6ef5ac63
[3/5] drm/panel: st7703: Add GameForce Chi Panel Support
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4c4f33be7e4d476566246e7166c54ef175287e00

-- 
Neil


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
