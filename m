Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D523C10DC3
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 08:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TX3pKT8n7sp9xXUn1iBC93rU7NqzVzYXBtsFEAaCtkk=; b=PfzZF1pG6SLifF
	WyM0CGIHWUwezRezonxjUuezm+t7W4tB4rlJXpAZjZwyWNFvhfrMWGMuilwkG4hRugTbQFBsdbGgt
	GxppRJnVBGbg9KrvmmUOqUHNESF/0IISq/1AhjIYf2Zv4Fw7xyzVgV25mJDNMQXF21o8Od9Bi0UXy
	hXeMJbfsAhGr3PrB3iNnI77Z5w5/L940gfn7rsYQSxhpo/ICH1JJZYpgRwkMUlbKzaZ/k0ijxCe2k
	8NxlsD8nLCzerP+HvHFJD4xZCCbkyOQTv/hvdYVWXAnv1qaxTd+k8fqFQ5Xa9GcMv0RC8FP0CEqUu
	Er7lx5EVcQ0KZCFQaC7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQle-006e5a-2i;
	Tue, 05 Dec 2023 08:26:58 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAQlb-006e51-1F
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 08:26:57 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40c08af319cso26240795e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Dec 2023 00:26:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701764813; x=1702369613; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2xo+/EwDShXw+0ErTm/Pk49sbvWBMtU3LMyMVMefHxA=;
        b=exH/LODzPZdqUNT8Sxl9WENVBTDKb8GMsBHIlbwmyzBs27lfVesyc/vi7VXXHokFsJ
         olRa8oFSMFhwCfI2U7j+lhtzeNl7KIVJTosgqwdMOALNlBuL6fhCoRJnVYkvLMbj+RBs
         xronhPv5C0fWclUG5WeGseZ3/0iO7dAbxzlZLNmFBDKa1v50ALYpRn/lE6U9m8KPQTz1
         rYMhdvldW910zYQfAXDVq1hP/ZlpsjvImFE70KKsbd46SJaPCLPgGKs/ctGvgetodWlL
         bsELezFquX7m/FvgBeurS2INk1GcgS+N2l7PvO/71VtvXdQd7e+Ur4WokhgiW6cXL1os
         WWMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701764813; x=1702369613;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2xo+/EwDShXw+0ErTm/Pk49sbvWBMtU3LMyMVMefHxA=;
        b=eWLYDTsBfOrcfyuJ0JCXp7e+g8f3bB+vc3Aikx7tkA2FUehuLTlCedEyTplFvgxoxn
         z3B8BauNTcZZPx1vgUZfNHpFQoV/clAvPQujeSoU85gKzwmud/hmV3Eq9/bylneRkL7T
         86rTS3G3FRFWIbFyLAMQkQzaXdPG1nzP8hWJK9mcTvQsRKonRJRuxlBDkZSNh6Y/klGK
         cxoY22RuoFyKMvrixNlOfPwDwrHmEU5KkuccQjZQLpp4fQGjFv0b3idDMCiYcNKL2ln2
         8wTfK5MgmZj3ehK+DFXKYl4dBxt28wF6JTNtYELTExK5aNLqTNNDLYHNFGrvkHtt3klU
         PLvw==
X-Gm-Message-State: AOJu0YzN0TXjFrD984AZXiAI5rEkD+8BK5gYycmj/rRV2MNOBvWU/UEl
	fG/CCxl6m5RvS7bEc7aaDC07IQ==
X-Google-Smtp-Source: AGHT+IHm8d3BCfIGqE69y8jUoy6J3Kzb+QtEPPQ+oGlTFuH/rWCx6J2gokcJ9ngcoHN+c1BW732iPw==
X-Received: by 2002:a05:600c:4655:b0:40b:5e1c:5c1f with SMTP id n21-20020a05600c465500b0040b5e1c5c1fmr234872wmo.52.1701764813586;
        Tue, 05 Dec 2023 00:26:53 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id d4-20020a05600c3ac400b0040b538047b4sm21329282wms.3.2023.12.05.00.26.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 00:26:53 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-rockchip@lists.infradead.org, 
 Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, sboyd@kernel.org, mturquette@baylibre.com, 
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com, 
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, 
 quic_jesszhan@quicinc.com, javierm@redhat.com, heiko@sntech.de, 
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
 Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20231204185719.569021-1-macroalpha82@gmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
Subject: Re: [PATCH V2 00/10] rockchip: Add Powkiddy X55
Message-Id: <170176481258.4073725.14793788958228896320.b4-ty@linaro.org>
Date: Tue, 05 Dec 2023 09:26:52 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_002655_430203_8C82664A 
X-CRM114-Status: UNSURE (   8.87  )
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

On Mon, 04 Dec 2023 12:57:09 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Rockchip RK3566 based Powkiddy X55 handheld gaming
> console.
> 
> Changes since V1:
>  - Corrected a bug with the DRM mode flags for the video driver.
>  - Adjusted panel front and back porch and pixel clock to fix
>    issues with display that occurred after correcting DRM mode
>    flag bug.
>  - Add a new clk frequency for PLL_VPLL to get panel to run at ~60hz.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[01/10] drm/panel: himax-hx8394: Drop prepare/unprepare tracking
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=8c2c5d1d33f0725b7995f44f87a81311d13a441d
[02/10] drm/panel: himax-hx8394: Drop shutdown logic
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=e4f53a4d921eba6187a2599cf184a3beeb604fe2
[03/10] dt-bindings: display: Document Himax HX8394 panel rotation
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=be478bc7ab08127473ce9ed893378cc2a8762611
[04/10] drm/panel: himax-hx8394: Add Panel Rotation Support
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=a695a5009c8fd239a98d98209489997ff5397d2b
[05/10] dt-bindings: display: himax-hx8394: Add Powkiddy X55 panel
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=00830a0d8f0d820335e7beb26e251069d90f2574
[06/10] drm/panel: himax-hx8394: Add Support for Powkiddy X55 panel
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=38db985966d2f0f89f7e1891253489a16936fc5e
[07/10] clk: rockchip: Mark pclk_usb as critical on rk3568
        (no commit info)
[08/10] clk: rockchip: rk3568: Add PLL rate for 126.4MHz
        (no commit info)
[09/10] dt-bindings: arm: rockchip: Add Powkiddy X55
        (no commit info)
[10/10] arm64: dts: rockchip: Add Powkiddy X55
        (no commit info)

-- 
Neil


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
