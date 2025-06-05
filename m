Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74977C5AE59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 06:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1TTFnexQEdrKX2GHXiHls+VZ9LPGZi4btiVEuJ7KNVA=; b=QRofrkI7rq9UkR
	vRnPd26kINLk/kXHoz7/6xi2RCNE4ziQppPts/6ydgv6ZukdtXIKt2TxM9b/57P68PAsrvnwDtPQ2
	woIagR67PXlLgMyzRXFsAJSXItsrB5B+VOLPVZgbwrfed+NGoUU5eOLd4FReA9XO8VSvK1RxNRfMH
	jPDOcHmao+edm3Ahn9Wq4qAj0+y6K9J2Zi+Yv8e7MbvEll/1ZY9SIDW1/sLXJtdKh3cVasfPUBgfL
	bM5jYtmt+a8S56cvI8qf4cyP7dyT6ku4QUzOeX1nJ3Z5iCpdDAswejrwjw83G6U/8qlNx20xWF2St
	BjX0m4wLk64Py8bk4lDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN4Vx-0000000EtH2-0SjK;
	Thu, 05 Jun 2025 06:55:49 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN4Vr-0000000EtFk-16uf
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 06:55:48 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-3a366843fa6so315126f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jun 2025 23:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749106541; x=1749711341; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I1cmNoRs5L/SZXtziMOQOBk1cq8IiZkG+yzMUuOZvQQ=;
        b=xUdaoAze5u2ZNmmFdnr30kpaPgFQKjiBoI1UCIYf8mTSDOuVtjf7GBbkceCPWxjg+E
         0EmyK7VKIMGk+FkfqSU5tkjcHCje+6YzirCu3FYhIAeav9/sQG/MWsylSZ6xD46pWWWQ
         MgfP+PpcdSDrgFxfEUXrvzjiPrLfD9dQBDXcwfa2hN1w0pT6Iv70zh3eoOYrXf24D97J
         V5g5ztoUw5UiWRS2uwVGwTblc3C+m+kW1sXsf8ckGNcaCbXk1SiZUHakFZgDeHBzZkih
         olsG9xKLqTZue/y5+XLgAjxIXuVag21lLW4sZjUSB2s9D/A+c3N9aKp3eSAkPZ1jqWiB
         En/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749106541; x=1749711341;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I1cmNoRs5L/SZXtziMOQOBk1cq8IiZkG+yzMUuOZvQQ=;
        b=h0dvHraWSCc3URPdqbIMZtTv0fdC997RTDXXuktGWnjtDR5QmftkrqZrMP6e7Kzvje
         UleCpEHfcpv6worDxRf5zOZGny5f6YSj00N4rN3kAGLqssBIFafD2eDK8VVg8dy+802j
         X56rQf/F0rwCVUMy/pH+Xl66cPNuN5zRnLTLhrqrSf2GSpY1F3HMdMxoXKNJWy8iIcvk
         QEs20bkEP0pl3iHNepEpqywG4xP4X8T2WDovlAcjE3soQmfzMuyO39EUC3k06SpLCUnk
         oG67x0t0MpiSwPARWJkp1k+DpUuPsul2bwZuUUU/kU74sdRmxr7ypGKBTMy/6qPLZ72g
         ItEg==
X-Gm-Message-State: AOJu0YzTRggymld54NoEpiozIN4pPVazGDM8iQW+fFZ+AZWYmClMY816
	OPjBMUcOgrl43G3mrlfFckZQrEi3+otm+7mn5U/V5UsoET+QPBPCwbeUqBItWtSV9js=
X-Gm-Gg: ASbGncvlJveJwffCUsL2SXVrOmjFuzTznEcXwZv2kaCzuRaBaflEKw3x4d05g9XeeYi
	93NRgy2A7dkb6t6k6wdB7prtfmhh67io7Tp+ElKS8sPU9Qph+rSesBjhE1qtxTDkmVFyxOTN6yN
	8TgX0cWoUjM5gksBz+a2wAOnqwuLZ9NaZ57roE+bAT+vHMFmodPev7y+Mh79OZWCHbjQX1zKdrN
	wnrq/ofmZ/VTHxEYv2WRSzx6z7S6MRYC9cvDMG9OPOvmIIM46b0kuxtjSLGhOfii6iuXFN8AAAQ
	vwT1F0PgKsojPeWMUc3YE9iN2gnY11S9pdQ8r2AHFOvJ2Se+jYKg0Rs7C6ubienSHA03rsVZ2AC
	4AJYRk74=
X-Google-Smtp-Source: AGHT+IG4qMaCm9ff92XhUazbUDhs+FfvLsC7udBMc/0wwXw4qh4sez9eJKKpj+5LACYOzCSDf4/esA==
X-Received: by 2002:a05:6000:2388:b0:3a4:f7af:b41 with SMTP id ffacd0b85a97d-3a51d91d9abmr5074479f8f.15.1749106541527;
        Wed, 04 Jun 2025 23:55:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a526057278sm1910099f8f.63.2025.06.04.23.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 23:55:41 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: dri-devel@lists.freedesktop.org, Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org, 
 krzk+dt@kernel.org, robh@kernel.org, tzimmermann@suse.de, 
 mripard@kernel.org, maarten.lankhorst@linux.intel.com, simona@ffwll.ch, 
 airlied@gmail.com, quic_jesszhan@quicinc.com, javierm@redhat.com, 
 megi@xff.cz, Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH 0/4] Add DSI Panel for Gameforce Ace
Message-Id: <174910654079.1422723.8534685714859723952.b4-ty@linaro.org>
Date: Thu, 05 Jun 2025 08:55:40 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_235543_324110_0A24F04D 
X-CRM114-Status: UNSURE (   8.05  )
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

On Tue, 03 Jun 2025 14:39:26 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the DSI panel as found on the Gameforce Ace handheld
> gaming console based on the RK3588s.
> 
> Chris Morgan (4):
>   dt-bindings: vendor-prefixes: Add prefix for Huiling
>   dt-bindings: display: himax-hx8394: Add Huiling hl055fhav028c
>   drm/panel: himax-hx8394: Add Support for Huiling hl055fhav028c
>   arm64: dts: rockchip: Add DSI panel support for gameforce-ace
> 
> [...]

Thanks, Applied to https://gitlab.freedesktop.org/drm/misc/kernel.git (drm-misc-next)

[1/4] dt-bindings: vendor-prefixes: Add prefix for Huiling
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/4d20c1b073e6b501ec82db2d409f27a8eccb2b5e
[2/4] dt-bindings: display: himax-hx8394: Add Huiling hl055fhav028c
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/ab9be0b75af59876727b8a88dfc28d6b59a70446
[3/4] drm/panel: himax-hx8394: Add Support for Huiling hl055fhav028c
      https://gitlab.freedesktop.org/drm/misc/kernel/-/commit/b837937c0237ea4f17493bc17f8ccd4a5e29b2c5

-- 
Neil


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
