Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3727C4707C
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jan 2024 09:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysx3TDuQLKkb6wL1F5FtRhr1EtIOaaxFF8WDPSys9xA=; b=dfMVIKM3JvcBWM
	Ues4nIDUR31wqrY8R1Ehz+Y79f9NdhFDpRHp2HhXa3Mh1/lo7xYKzooBNyimWrOm/dUBFjhL0Vu0D
	zkqVplrd2RvgLM+t5uhYWDzDDMKYfaEwrAJy4t4xM3Vy3f9zrLnMwO2YV0tSNjdRMBrZGfs83anR5
	8SrsqAvX718cNHdS/98ADab3iGQC336BTp5AfpoItv2G6nHl31IWkoUDtb9sgQkpx5vAXcssTqDTf
	GCDVzXEQW2/UukeBQ5769T3jAOyvZ1XZ3eeTJKOBoO1SdV11YkfZYwyCC4vXTTx03zR8sw5qYOmqq
	65wLU+9rmluUYrBC23jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rODn8-002JXb-2z;
	Fri, 12 Jan 2024 09:25:30 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rODn6-002JWT-0q
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jan 2024 09:25:29 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40e6275e9beso6002975e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jan 2024 01:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705051523; x=1705656323; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q3bfVv8WtMnQ2fP3XkB2eOBLDf/LsCJjP8wfwX/T4wM=;
        b=xu0Fbci0EupKWHb8p7DNrO3HnSxE45hG7tcJQSu0uV26f9WSXzmB7HR7CGgNotrs/g
         TWF51vp4Ck6ZH4uvpJGBMA52dZ7JOuTB4vioxZRaM4nyj9y++5QEbvP0WdB6uP8igwmX
         jg44XYJHjGeU/BfYbJi8qRACpX1lV/mpJyPuF2gQ5ESICQ3YJWULt905ba+FX8OdknfQ
         fSLZcAQGBOEr7V1c35GRfSwaBm5MtgHvF+BDJPJpLLS1N4dqDMX8lIUH5dyu+zz1yOym
         RJaDsNCZZ6IblZ3OwOYCOpjRqTD5fIa9hlpAhcMwN6LIlVfnEczW9QgcXVP2pMIbDiqM
         GwXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705051523; x=1705656323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q3bfVv8WtMnQ2fP3XkB2eOBLDf/LsCJjP8wfwX/T4wM=;
        b=winUrCFiGEkaI8yA0cZqZmal79b6oS8yAK60/ajHWzdBsKvxhxmUI1q9Bn/K3+y1KI
         MoPjt3lxeGqoyDvHwaSb8PbEO2//lAIEufC8eyxfzxa5ES0WhalxIj97it0Ky0aXk4DW
         wEwvTkQViz17zU2mN6keSzXyuILRuz6e0jxLUsFQHKyVZXmOB/q/161e7fAEN/x602Mm
         uyPwYm9nPgDCJVEiP52zDtxR6VZrpp00qEJsZb6cpzm4pznIi5vtGiCajiRgNyxfVy8m
         DuKoEl6SXrVf+p7TTPTI1Z68ykKvOmE+W+uXxm8/Yv9DCOXQE1+KhF0nLBdJDwgVncPw
         EgVw==
X-Gm-Message-State: AOJu0YwGiaGWN7sLvSXf0ZZ6nteQlmDaxMdlStKkYaA7QQFFMOpAGVRo
	nMlV4+gKh9E7kbQplJBfK5Z+yfcQwmhAFQ==
X-Google-Smtp-Source: AGHT+IEMwKZ9XV3E5enGXhcHiQsIucq3Zsj1wJo8Uj7nGouthpJzDE5uay5WsPpo048DpY1o1KYFwg==
X-Received: by 2002:a05:600c:6a19:b0:40d:8881:4d1e with SMTP id jj25-20020a05600c6a1900b0040d88814d1emr550199wmb.66.1705051522693;
        Fri, 12 Jan 2024 01:25:22 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id l6-20020a7bc346000000b0040d81ca11casm4901880wmj.28.2024.01.12.01.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jan 2024 01:25:22 -0800 (PST)
From: neil.armstrong@linaro.org
To: Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Segfault <awarnecke002@hotmail.com>,
	Arnaud Ferraris <aferraris@debian.org>,
	Danct12 <danct12@riseup.net>,
	Ondrej Jirman <megi@xff.cz>,
	Manuel Traut <manut@mecka.net>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH v3 0/4] arm64: rockchip: Pine64 PineTab2 support
Date: Fri, 12 Jan 2024 10:25:18 +0100
Message-Id: <170505150474.933870.7165654280857450168.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_012528_340316_296740B3 
X-CRM114-Status: GOOD (  10.71  )
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

From: Neil Armstrong <neil.armstrong@linaro.org>

Hi,

On Tue, 02 Jan 2024 17:15:43 +0100, Manuel Traut wrote:
> This adds support for the BOE TH101MB31IG002 LCD Panel used in PineTab2 [1] and
> PineTab-V [2] as well as the devictrees for the PineTab2 v0.1 and v2.0.
> 
> The BOE LCD Panel patch was retrieved from [3]. The function-name prefix has
> been adapted and the LCD init section was simplified.
> 
> The PineTab2 devicetree patch was retrieved from [4]. Some renaming was needed
> to pass the dtb-checks, the brightness-levels are specified as range and steps
> instead of a list of values.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/4] dt-bindings: display: panel: Add BOE TH101MB31IG002-28A panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=baae3a0b10c499d4228514a701602f6fd2a8d6b4
[2/4] drm/panel: Add driver for BOE TH101MB31IG002-28A panel
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=420186db1483da4e16cd5d5a472f511a35dbc1b7

-- 
Neil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
