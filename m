Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 974A8C197A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 08:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jWWhs7L8B6+WJ6MKXLD8+ZT9K33lSE9AJTcrXs8KX5g=; b=2Y2sAjkPxgIR1J
	I5r9o7ETXpvTZesVp6RE2MN/y4ZrUgK7YcIMOLD2y+oOVwRHsJM+rsF4oYSdUOg8Rkp8AfgWw7zuz
	fEEihCMcKk2Il88O8oiKc2iQW93onIWBm4B26bneHigrN3+EJ8xLonGnK3gfHUNYaWVtbnV5Xni1u
	/BjyU9L6sY5tfkGWGKduRy2sMgdJhi05aP9ZsR6x3T2WFMAgASoii1U7wDJjamUoVKMak4AgzPbGq
	3ombkjFlNyurnb+XJW2G4Y5iqS7MOgKhcz5LEo0/Q9BW2h7Fz4965acag6Y3rt3VlvD2h0Lal2lMF
	cneDXl4TqoLt9FqAyBMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4zpX-00BWdW-2T;
	Mon, 20 Nov 2023 08:40:31 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4zpV-00BWcl-0j
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 08:40:30 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-407c3adef8eso16415175e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 00:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700469624; x=1701074424; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ITTlts2FMAHsu8yiJvG2iiuD8q4hyDHNB8Yd0fE8j4A=;
        b=wQq/4JjlObO2rlLZEAYSvCc8mMdXj9lDRemtNI56SRnig0UhfRdcO/h9ghGfYp2nBZ
         w6X1BHwEM4wd6LeC8KLIFJ4rJX+gVs0w267gxOTqTaK+AckRjXxDyNn6syn8Q3Mtm1dr
         /t2XCsn+bcKeaPfDNMeJ59Ylc6R6D0pHQ3mnWrVFie4lJEA8T9IQqHebx0vF1gRmV1ZO
         EA6+1PGgU8i8icnfsKQkBQslG/v9c9IJN08Kx7O5xmO3zZSyZlWXnIOrU4nOe6Xwrf4Q
         qI4b+dx9xWzoJoaH3FTjl2ANgi4BbVIFL29te6xJlmBhFWQNzPAmBZrLAzzczT0Nn68v
         CSqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700469624; x=1701074424;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ITTlts2FMAHsu8yiJvG2iiuD8q4hyDHNB8Yd0fE8j4A=;
        b=sMcjMeQd6xzhEBtsswdD8b7GYuv4EFq3Q07ltTSZ6ELqE2c0pb63yJqtr4eFlEFn0b
         KSAMfGIVNuhoWxDzaYAt9YW+1GAVDCWV/gQfTeMmo1uPIHJ0d+AlgcWIBNOXnP43PaNH
         /ktfelvL6yEhguCWqtZxf9F10fqx9+h/SfEg2skrRMff7sBiu/GyuDbAfKB5JyY86oE5
         UXCkrBXjxwRMLxlTcgFHqyEu+DxXY1gzbaNSvZ46wk/4qLaUMWJMk39u1Yuxz6G9agZp
         W/gTcKfNQrwzRAvAaO147WtUgcVzm6O4xrAwUw5rkHHoX8iyugNdl43eG1la1J/klwSK
         TGyw==
X-Gm-Message-State: AOJu0YyMdjGmXvd+k4Ao5MOJgxbjyoW49vliR/Bol/CVG7HDbJ1pcrPW
	H0t5q3KSkLepBgRQv9kaj41mPg==
X-Google-Smtp-Source: AGHT+IG//wixe+QsViWThUQ8nC1JWJAiQgbIKXGNz5qbnCz1AkTvk72ZCJXZVHyHW1cqX31G8TUDPw==
X-Received: by 2002:a05:600c:3109:b0:40a:3e41:7df1 with SMTP id g9-20020a05600c310900b0040a3e417df1mr5565578wmo.37.1700469624315;
        Mon, 20 Nov 2023 00:40:24 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id z16-20020a05600c221000b0040472ad9a3dsm12386618wml.14.2023.11.20.00.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 00:40:23 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-rockchip@lists.infradead.org, 
 Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 sebastian.reichel@collabora.com, daniel@ffwll.ch, airlied@gmail.com, 
 sam@ravnborg.org, heiko@sntech.de, conor+dt@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
 Chris Morgan <macromorgan@hotmail.com>
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
Subject: Re: (subset) [PATCH V4 0/6] rockchip: Add Powkiddy RK2023
Message-Id: <170046962348.1110472.9022953040371276101.b4-ty@linaro.org>
Date: Mon, 20 Nov 2023 09:40:23 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_004029_288315_6F19D888 
X-CRM114-Status: UNSURE (   6.22  )
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

On Fri, 17 Nov 2023 14:25:30 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RK2023, which is extremely similar to
> existing Powkiddy RGB30 device.
> 
> Changes since V3:
>  - Corrected commit subject lines.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[1/6] dt-bindings: display: nv3051d: Update NewVision NV3051D compatibles
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=8bcac1be55e188e5bac3353b550c9cddb70fbbed
[2/6] drm/panel: nv3051d: Hold panel in reset for unprepare
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=697ebc319b942403a6fee894607fd2cd47cca069
[3/6] drm/panel: nv3051d: Add Powkiddy RK2023 Panel Support
      https://cgit.freedesktop.org/drm/drm-misc/commit/?id=0aa1cfa3d287930cbecc52cd2b38683a4bf98463

-- 
Neil


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
