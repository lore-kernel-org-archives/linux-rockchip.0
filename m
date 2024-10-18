Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9066BD30019
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Oct 2024 15:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUitC7lIsvY6hkvqJzwY3S6bPJRihBDJeurc3ofvkOE=; b=LIMDygayeyt2ee
	rm0q1PaiNm9hOmU/V3pbH+QguVZr5uhA1K9zHepDuvTccCA3BMwqlADyprUnkGv7YBx2cJIF8nk8O
	c9NufTIILQdm/nspEWivUnvbQvOE82bQb2VPd36G1X02vUREok1gg+w+x7IS1OoVjZlvGCfLFz5FP
	N2eDXSk8D1ASEn83Du6IfMJ9NF7p4pxcCFhFrlDVUMgUnLAtqKG3jdf1m1GVXp7QNXBspn+eTG2Ob
	S9+M4CwRpqe52VpJBR2OjAiL7tX1MqLm1U+7m9FXraVrBYL/kdjJLpjZxso1oeVHUu4YOGwnaUuXf
	DjkLe2rr2Zic3Ay5vLlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1pIp-00000001GF1-2tTI;
	Fri, 18 Oct 2024 15:54:11 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1pIm-00000001GDb-2bGK
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Oct 2024 15:54:09 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-539fb49c64aso3382545e87.0
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Oct 2024 08:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729266846; x=1729871646; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jpwCbM4LBCW7939H36OgTv3MYW3D2YNl0kDGBqimkqU=;
        b=WW7evk/86+FvjZeX/NvG67P+SYp3MnB4Sse3kVIAoD23GmkQWtivtl2uNnvMNbJchP
         +wGyoMi3jPofpGEf8Fiwi69Us45vqxM5JAgU5kIrgfeOAJK8CAc7AyaPs/T+a6u6ytB0
         aD5M46WErgrASaBXdQHxQHVv9clvZl7j8d3s+DdOtSyekko/dXcVOop2ahDkVkwcUdBI
         SqSotPh3wV1Hvc+DagDqqek6/Dn3a+PPVxpA82dMYaiDeRHvj89wxYSLGS7ujfF0b6/w
         vNqkdRenALG9d9yhnoZccf0D+v+x4JWFqMSIrR0FI+ND0q8mlKfeqkymVnBvISfKqWqt
         ZUKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729266846; x=1729871646;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jpwCbM4LBCW7939H36OgTv3MYW3D2YNl0kDGBqimkqU=;
        b=WZHjomZ7cDtMl8+gu5TESXSzaG4fa7+8KQOtBngpWyKb86yBW2u3PGBKdOUtNIMzKe
         7IcvC9Nj6AK+spMzqtpDEzGWGbxtWB/u+lt5JWMl7Sgfl2AIX6Jux+YyaLOhZj8Rbhrr
         rndZppFmcjS4yBWzaqDZiwMA7PhueFwqrWYgHiNwDZcN7HDWN6DIm97+WUjkWdIL+d5m
         NE+wo5TMR4Tc7oz6ndSk+s94RislToJdAWYNDr0ebiWgX16uG8vTlYRj4sroD+rNDxT0
         5CXjF9uzCAfJdd/Ew8F351vzWgXSgeoj9Ia7HrLk1OO7jz3N2oDm8sU/xAju/AtJLz8b
         /VmA==
X-Forwarded-Encrypted: i=1; AJvYcCVeRu7gpIULcsxUUE2BlvlefWs62qwCDe4aL4mF9iY8VN93S7DfQjzvUQlXGRbbzpzulGJRL4znAhFbhkE6VA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1fxJvBzCLlIZyRuGqFX0eVvPmkg4URD19bLVMMc+OIyrL+yoY
	VC0s5/uU69wYsEIZ5lJbJ8JxH2yBIuWwDxx31KZl1juWf99p0olnRGmMjhK+iJ4=
X-Google-Smtp-Source: AGHT+IGhho3L1K3a1JYBXIXN9ildFXC/piLjygCrOlVDIveDLOAwyGQX/DIfb23VIc6IiDg6s0rRXw==
X-Received: by 2002:a05:6512:3d8f:b0:52c:deb9:904b with SMTP id 2adb3069b0e04-53a154ca09dmr2914041e87.38.1729266846118;
        Fri, 18 Oct 2024 08:54:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a152041edsm247311e87.184.2024.10.18.08.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 08:54:04 -0700 (PDT)
Date: Fri, 18 Oct 2024 18:54:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Arnd Bergmann <arnd@kernel.org>
Subject: Re: [PATCH] drm/rockchip: avoid 64-bit division
Message-ID: <ff5eq2x5vhv3jxv6fjjd3bdohndyhurxqa3o4a5jbnis3543wb@jyfd3iikkzc2>
References: <20241018151016.3496613-1-arnd@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241018151016.3496613-1-arnd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_085408_682858_7DE4882E 
X-CRM114-Status: GOOD (  13.11  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Algea Cao <algea.cao@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Oct 18, 2024 at 03:10:10PM +0000, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> Dividing a 64-bit integer prevents building this for 32-bit targets:
> 
> ERROR: modpost: "__aeabi_uldivmod" [drivers/gpu/drm/rockchip/rockchipdrm.ko] undefined!
> 
> As this function is not performance criticial, just Use the div_u64() helper.
> 
> Fixes: 128a9bf8ace2 ("drm/rockchip: Add basic RK3588 HDMI output support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
