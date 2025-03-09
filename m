Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE1B0C28B2E
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 09:20:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPldIb4msA7pkL9hVq58Ll8NBIZE+yUBPD+VUw1z4vE=; b=ec0nBixUgxAnGB
	LLwMiBoRhbTttz/B1lHGb+XCL3wyfvhndcXRaCwa26eeCx21Zcq7yPJkSr0udMhVlmViCrSXIPllx
	r4IlDVaidD5TiLP5UWqofr6yIVEI2zZkK1PnyHd2XWlJ3xzxPMakhRVUVBU8aDixRRHgcqgV7sn2h
	kxOH2PSgJd5bVYnkbhWCWBXlDi83sLK8w36wNh+jfY06MZw/m+jmJ47OLWxpecUjarU7VBdswiNh1
	iuz18Ts7oOQx708k7RrCpdI3+jolhEzchrt4zVeJmySLm7XgXEU0bBF9GnReScpJSbIcf1kx8cwn9
	h0dAK3OypjFIxmNRcfew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCpC-00000000Gh1-0JN8;
	Sun, 09 Mar 2025 09:19:58 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCni-00000000GNn-3Aiy
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 09:18:27 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-e639040ec74so211922276.1
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 01:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741511905; x=1742116705; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wS4IhIBI1yx2mGgdeLumrUYH4CZGsZF+Y3g2R+4QCNM=;
        b=RAH2jFgkVu62N8oTRlyx05CTRknJ2ENS5SSRa3MLnXWYvYOoW6iyPJj2HLKJ1IcR+U
         PRPUwxkbPXDtIGoeA/Ou3rk0M/nS3mKAcErE0RdLY97ZOjyoy1YAiC/x+Sn4nz0YOMlK
         4vz5uvM8+qZmqlQKn/vlc1mPg3hspk7QIod/2GjKXSW2ORyxMYMvuaWqKUeKRan+bdlv
         tz8NXBum+839/amWka+NAkeLzWk+RsEXGkvHHPScTqovSTB7NZDUf9i4s4KuVgbntHRE
         OTrxF/N7j/7Jqe8RMsjavdt8t5QJOoUPPZdPSKYSmL20kGv75efifIc5gaR8p5xzdG6a
         j00w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741511905; x=1742116705;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wS4IhIBI1yx2mGgdeLumrUYH4CZGsZF+Y3g2R+4QCNM=;
        b=NjPBw2rQ57p0jKZPU+zmuFTbKoIyGUUq046YBbDWCclpL/QXoOkkFxyDpJDCYdss/0
         eb/+Jm0QGO2mQTCQnQY0qz0pWiJvgb75qpka1aYSCQeRej8tieCklpFEmjd2rUYuQWuE
         zPeniVeyP/AW9Ws+Ahwb2pxrigggstFcGXnTSxoAlIONLhn2NxRuVYLFpBneHP/MXsOr
         KK09nkNPYuUY5hbemLPt+nSOovw3cNRliRdT1+DGTK/q7hSuv8DLQzMUf/DbqLXTN1oW
         tbCwBc/ZJD0ECG2GdnkGJEVV95VZXnDEJ32at5GncxjCpbWfDb/9eK77t5QZ4fF1rMRr
         GXYw==
X-Forwarded-Encrypted: i=1; AJvYcCWYjZXzBgEQnH8VECcdfprGJnekol25TF/ZrZwLR5rvCu09n+xMBDtsXOD1mKAaz+QfSwC3QmDykVltFygDIg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzzpQ00StHHVjAQwL0CJ/JTJWf5prdjflHpQ9Dpqe1uH+/lq2QD
	7XDkKfTXwXdrMF+9+3DpuccH1Tp3126iX0Z1KMHTUtLU58hrcmCeIFlMrDsEw/Gi1bA45+Ftdi1
	eXCSFCgVoeDgv7CEirT0c2oS3raUpkXOBTv2W/w==
X-Gm-Gg: ASbGncv1rWLEarxnDu2KHr3DIi0ohseuBmAewVhGRhq6n9fWKqfO3ICF6AixRMv5GSX
	RTP3wAbc/kLvw0LfLIkMZ0cn8yOGdiMSfYK+OkVoB1/Xh7FeLAqjmqOPV7vl0jEivt/gLOp6qbB
	Vfa8m/Dmw+YbTEPwdbeNnzj3sKPgQuSPAlyDRDaR9y9B94UoCXj3k=
X-Google-Smtp-Source: AGHT+IHmsF91K1D6VLx4YvpkoZQQE1k1xzhlV0FUEYyz+Ynn23igUj9beuV6WExyljR4D+jdGEc0UrQaoLqBGQ5Y8I4=
X-Received: by 2002:a5b:f4f:0:b0:e63:7084:fc01 with SMTP id
 3f1490d57ef6-e637084fc04mr5253669276.0.1741511905671; Sun, 09 Mar 2025
 01:18:25 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-4-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-4-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:18:14 +0200
X-Gm-Features: AQ5f1JqwlpVv48DTqejukDRuK53dcVgbu-cHC1EtLzGRaEU0x0TorpoDNNMztSM
Message-ID: <CAA8EJpo0073Ub-WNdQoAq0=Zvet8M9aan3e6v9cnKORCTkqMKw@mail.gmail.com>
Subject: Re: [PATCH v5 04/12] phy: rockchip: samsung-hdptx: Drop unused struct lcpll_config
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_011826_796029_B92850D4 
X-CRM114-Status: UNSURE (   8.21  )
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

On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> This is just a leftover from downstream support for HDMI 2.1.
> Remove the unused struct for now.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 31 -----------------------
>  1 file changed, 31 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
