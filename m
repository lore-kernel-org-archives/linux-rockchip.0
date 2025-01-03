Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DED2E77188
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jan 2025 05:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmRrFCf2y+2dq9og0FWdh4vchyZKoqgvSoGy7IXbaRI=; b=rMBP5PAGbmKSAZ
	yh4C804WVLodSbHG9rlGhMHZSnMrpRNeSnxTIjrIUt/UBScJgxzpaI2Lpg2oKaNHWTeXTf2+ZK7+Y
	9UXsp9RdtS4lBPiMGeEZdvcKQg6kZbTaR+Nm6xpXTH27WUky4WlGJw+9nRQZWeJHDVueCICWIz5da
	9oXQ2W8uz3wi3COXUf/vA0QE3N5lxSPIuCaCmfmpnqSWHdS0zgVSTs1pTx1jQFW7yP+MokbmS2xkf
	qNWoaGEEzdNdw7/VlU7N+qJDFwuth3MFOlvsREuMvGBeD/KqSY0U3+0KVdgInnHgwyyvcYL8ksoU2
	A0yd8y36rvMKP4Ho3PLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTai7-0000000C9nk-3n2J;
	Fri, 03 Jan 2025 05:59:03 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTai4-0000000C9mM-2mGO
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jan 2025 05:59:02 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-3003d7ca01cso128265651fa.0
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jan 2025 21:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735883938; x=1736488738; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=sFlWSYAVuSson+OhthOc5MObp0JO2PaKlR/7cwxtKLk=;
        b=lJOCF4getyLfCTeb7T9gis1JfTlyqANzE85LuaJJDjqnhHKEfFUXaBl1pOx5+IbRaJ
         WSqfIche3gDO6hCmbpiqvFnUlNhDfvd0kGOThC5LwT6ny2gKBtAhE61MO+wF1+rtiUYI
         901Ozh5JDaLzwB8MmM0CsIOxsK+DOa+2qod6BTSBAORj0cuJuKMWQLuSQXe2wpeQB3Yg
         1o+hmCEU//PxONurY6juhbXJjqrZhCGKL5IJ55Pxz5mN+b3noKKCoqEZblL535LRj0LU
         Yn+9JuQsnp6K6WjQui2ZsyDshsjlwKKioUs1/xn0i9EdK/PMIEWWcniY8Rq8kcb5X2V1
         m88g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735883938; x=1736488738;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sFlWSYAVuSson+OhthOc5MObp0JO2PaKlR/7cwxtKLk=;
        b=HhRmJg2YZHb1jlEbZkUpHDek90Jf08fLox8L1tT6UPNToN9rgcjjQgTj8r2nHjfvDc
         qDW/fSaPztgGAoA8sQQY7vK47M6x5nUGG7HRoGoXvYlvSWJddthE8r4sdJDu/VosQVnz
         ZhFJmEEFOEkQWXxHRXxgeNWVh8VvNtsiGqWy4c+ZSb0jvODOgRSoW/HGJWGzJiHSEXkc
         qIGKsqV6/gJL7ivWi/UZPMkyteS2Hp0Tcaw2lgD6DZBd75Oz2mzPODKEnmpLLMYywO+e
         wMDdZwtPad/dL7PMqwdn6QGVo48utv3OXjD+8YFk78914oZxkjPpKPZ05GU4kss6V6+b
         kPqg==
X-Forwarded-Encrypted: i=1; AJvYcCWiN5V5NtzC5zyhvZQAnG5DCNtN5CD0nLoTGDyd3SviZBBdYxVQgkt6DSoE3CJPxOotKLAChMY8YuugtXaeNQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/hrb9xfxInrP52okyXX13V0x8ActGvz8PgFHXa3wgMprhlDjY
	w1zK5BEE+kpN/cDidM8Jg4EryPgHLpoyXxKm1yzpFcAzg8KoYba8CZv4oPaNlSU=
X-Gm-Gg: ASbGnctGgaaCsLFHZIWa8SRDfGeJkRuMXawC/xsTtIDrJpBsdnceb+zhjoW8oBmJJnc
	lIwe1fNIizXOotba/B01OPW6ttkUohA5WJ74EX3nf4FnlvNxXAOnkPYZ2/2CaUOwEd7CWEIPnsi
	Ki3/N7bbQOTSQShgIhcnpwLjDKfDWsvIAqwJedjMLgURKNcHlCOFltG70XXBx0oPdd4Ws8vk72C
	gW3z7ApU47hidYCTDdHVecltCPuqTnt/lR+cAhkq2UTF1cFtZsaguFL8vYNVraszs7zSF8/VJ1P
	YmO+q0O++jSOj4KyQlfbLeRSJyvlcfvEdNAV
X-Google-Smtp-Source: AGHT+IE6y4JdTtlzcbrnGGg7v7FjSgwU7e/vWxQ7TgNE5uhhWt7BpBzFop0XHrbVtbgwiv0CXbLJOQ==
X-Received: by 2002:a2e:bc1a:0:b0:302:3a46:10a7 with SMTP id 38308e7fff4ca-3046851f9cemr129431821fa.5.1735883938405;
        Thu, 02 Jan 2025 21:58:58 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3049ec4ca6bsm26165151fa.56.2025.01.02.21.58.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 21:58:57 -0800 (PST)
Date: Fri, 3 Jan 2025 07:58:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, robdclark@gmail.com, 
	guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] drm/ci: uprev IGT
Message-ID: <dj2r22upxnj2aicjnsvoqnhd4n73tyfgm36jtvixxp4vphocev@gggcjakm3xge>
References: <20241217160655.2371138-1-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241217160655.2371138-1-vignesh.raman@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_215900_709323_97C45165 
X-CRM114-Status: GOOD (  10.50  )
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

On Tue, Dec 17, 2024 at 09:36:52PM +0530, Vignesh Raman wrote:
> Uprev IGT to the latest version and update expectation files.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v1:
>   - Pipeline link - https://gitlab.freedesktop.org/vigneshraman/linux/-/pipelines/1327810
>     Will update the flake bug report link after v1 is reviewed.
> 
> v2:
>   - Pipeline link - https://gitlab.freedesktop.org/vigneshraman/linux/-/pipelines/1331363
>     Updated flake test bug report links.
> 

What is the current state of this patch? It would have been really nice
to get it in, we have patches depending on updated IGT.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
