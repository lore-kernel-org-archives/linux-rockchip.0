Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6926C27C6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 16:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MtlRLtIVI8RKMxZ2rYLdMVKLt/9PNvJLUSN38hrCXOY=; b=Dzegcxyl8tmLit
	J8V+0BI3xBCCtvIefZZmDDxutChPtK7DqYnDZwgVBO2Jb6qdPWgi1QW+OLZDWc374VXg6svhu1TNo
	QDMxfmccAWDcBS7VfdvUHqS2c6fB+v2BP/UmvsUHptYOpT1NCADJhlROSKVDFmNym4aPn3EsIInvG
	vIGd+wfb1Vk1wPzzEEpk2l5O62B71xov87A0GVjYxnDMLR3vywSs00xMd6WRz/Y5lrFDs5BtlVOfl
	06KREAyTvMKSC1UQAz/JWVPgyuTjTGyjLt2KcmBm7qHcuDrxKRUhTtRu2PF0GskKD1BA9Elj7pjbZ
	qAFr2i9C8N39Pt04qMGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI9s1-00000003RST-2oDk;
	Fri, 14 Jun 2024 16:33:45 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI9rz-00000003RRI-1QGE
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 16:33:44 +0000
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2eaea28868dso33077761fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Jun 2024 09:33:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718382821; x=1718987621; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2d55ULbnkaBid8TOFZdzcvS/9s8SVhV1X5mA5njwAFo=;
        b=DOG8b6P09c/xIg/8ZvHAvt5RCLfjmRfXcnoeyTIv1aon94H0n109v8e5P8/vZUwYcP
         /VbHSx0CdnCuSKZ11oQvxItAK1kT22c/JsRxzN6uQXaBjZq50DhzeBsjop8EU5UqSk4j
         zSkmKxoDH0eL2zP+vQCOPAEVtcdyvGjgrehPZqCe14DxzJEMAdpvWNGHkHeJiPZowKCl
         q+TK6807gEEvJom2Rwroxxxg3Sl0QqRfUKeBvgAcXdKYXWpCis7ENQnyIcg/Tghhk5Ap
         m5de0enSzocQPmJ7G3kLVZKPayX0Ucrkx4ndYAVkLV4HTCjj11XdZpiypq6XfIGiFN1O
         GWXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718382821; x=1718987621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2d55ULbnkaBid8TOFZdzcvS/9s8SVhV1X5mA5njwAFo=;
        b=fMCcGggfaa8+iuYwOuttmiq+hmwEmnRWXdxXIXfv8scV59j15+NmrLySIUFxSF9jo5
         vvkvA5Jh4SskY1QO6PRDsvGX+bjaTU/pjr6kkvto4iRd+uiaWYmsvgP6c7pyCXuOXU99
         NMdqrS+0p9YkHfIMW0sT3YgKye3whBg/Q1NbqBr8hGPyOaLsZSaLi5xos3J8AX3kW7cC
         kWmA76OFGVRy2SO1yZdl+JPx4Msa6/uPAsgJgFsg1Ng62BxxNzzTxCrSXzrBr4wfAwZV
         8wUGPJn9dIyotD+zG4ROL/3qultpn+Qg4gbUVVjUUuyL0rr9ZY9J76359Bs1qQUzpm2Y
         7OHw==
X-Forwarded-Encrypted: i=1; AJvYcCXhl8SshSx/anR3KG+lqxn7UbiozWjnd224K45z453k4CUZB1Gjj5K0t+50IzOj3G4SZ6o8uxhNbc/PXXp0YhFmhqIUsGdREJghAVkvGrmRhyZ5
X-Gm-Message-State: AOJu0Yx48BXc5NqM4fBPyg0ahc7Gd4VdMos8l9wtDCHuhZmPcUd6Ue5i
	IMDXy9rtM3BzwpNerrPHeMeg+WAfaDMqRWEhrg2wHJrcrHrDQAM+S9pjxfsmOHY=
X-Google-Smtp-Source: AGHT+IEnB+fBfP43mYT/p53SnlqGh8oUvLF5M1CtSsLsttHfAwsPZDksfX2T6AKsZ/OOhCIWhq9eBQ==
X-Received: by 2002:a2e:9f44:0:b0:2ea:edac:4886 with SMTP id 38308e7fff4ca-2ec0e5c9a5fmr24401781fa.45.1718382821099;
        Fri, 14 Jun 2024 09:33:41 -0700 (PDT)
Received: from eriador.lan (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c89a99sm5527931fa.107.2024.06.14.09.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 09:33:40 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Douglas Anderson <dianders@chromium.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jeffrey Hugo <quic_jhugo@quicinc.com>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 0/3] drm/panel-edp: remove several legacy compatibles used by the driver
Date: Fri, 14 Jun 2024 19:33:37 +0300
Message-ID: <171838280388.2978747.14895279716639954590.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240614-edp-panel-drop-v4-0-4e0a112eec46@linaro.org>
References: <20240614-edp-panel-drop-v4-0-4e0a112eec46@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_093343_399071_EAE2A753 
X-CRM114-Status: GOOD (  12.24  )
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

On Fri, 14 Jun 2024 03:02:19 +0300, Dmitry Baryshkov wrote:
> There are two ways to describe an eDP panel in device tree. The
> recommended way is to add a device on the AUX bus, ideally using the
> edp-panel compatible. The legacy way is to define a top-level platform
> device for the panel.
> 
> Document that adding support for eDP panels in a legacy way is strongly
> discouraged (if not forbidden at all).
> 
> [...]

Applied to drm-misc-next, thanks!

[1/3] drm/panel-edp: add fat warning against adding new panel compatibles
      commit: faeebafe1d273ed6271dfb6555cd90ee730343c1
[2/3] dt-bindings: display: panel-edp-legacy: drop several eDP panels
      commit: 73458101e5681a7d766184cb4e16cb7b87571359
[3/3] drm/panel-edp: drop several legacy panels
      commit: 51e1fb144f17c277309ed5a1c6f0d921df0064d7

Best regards,
-- 
With best wishes
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
