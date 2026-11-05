Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F4F606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 11:56:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=OnT/96BP;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=UGhIPchC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=KXnUfh+P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=h5yoz/80VqUu26zmuc9D9vlQP8t8oYGlhmF0dcejFn4=; b=OnT/96BP7QlyLF79FSE0Hl7uXf
	6Y53MdGXZJDuiUp1VDuxWkyxcC9/CsXr6OCqgSXeMtSkq8mpS08dRTRP+5Q8bzgtsgm2mfbgqA7Se
	7YMcNdjUBmgfByOKR6BpHdYGLf0tH9/AG6OAt8Ags2rgkntfnLdQ+VeTz8dfoSE7SjDl6E+vJ+UQh
	nQzINuweay3dNp24jsKhpzLrTmh6C9tL3WPGL6FTLyV9Zd+Sqw15bJSC3Gvw3g+0kbGSYe1LjdlgN
	gOnkFl64fFJ0ZCDdO9ao9KBvC+77Q1WELMy2WRLlzcd6naGmrVYyifvaxYNMlPIRvhnvpfrX1dGzQ
	4ZcD4R0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOw4f-00000008mvU-2mnX;
	Thu, 05 Nov 2026 11:56:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOw4e-00000008mun-3Rn0
	for linux-rockchip@bombadil.infradead.org;
	Thu, 05 Nov 2026 11:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=PaO3mUrvyrlxLx6T6FMLOlGYCy2w7sWQHAyzdDwn7S0=; b=UGhIPchCHKtNh4iO44G3gdip7X
	IflxzZKlWc1RDZx45btv/vW+u4CD/5shScZCmTvwME95v1u+0kKrGCH42mfZbMgPVjToziRYMb5ec
	ywE6kdLrArnIe238CfdEdLwGfC0CRKtBeE+/qWk2sddnHjUIyg2E2M75A/tIQ+tsE7HAlwE6h8rcH
	wWd+dtiXx6/fBqJmPf/W1VBQDvG8ocJRJAX4RLLswQtQkRFp4fUCJ7OklBEkDsNNaptIfhPmKesOV
	UFPcSIlWZGlfXq6n7MEWSortU4wo8ss0/7Uceb8F8eCjAVRDOvRn6vH4A0eoHNzb5601/leMKcWCc
	okhpaBkg==;
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOw4b-00000002vOA-31gv
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 11:56:07 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-cc758830601so1238032a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 03:56:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793879763; cv=none;
        d=google.com; s=arc-20260327;
        b=UKmoXAXEzer8bVklS2ZgkPVgZhcyiPfPPpO1gzFLibEY0qGab932uIl4okK9+RViI+
         BV5VFCuc3mTGboDWbmR47YUKSQO/+lOx1zBqdV/PBIxC/4+SfU+y0Ptbwk2oNMnGbwJF
         nxVMdd+r/fWCCNOqvCZHhmSguFIBxaF9UXUqibTvsZtfCMX1hXDrDPhvgHX0P6FpsVvT
         AyB2lULnhqfizT3mIp2g3mP5xSbAWACj3tEAtZ70WFo80br68Gn40iwqmYjKfkSREMUH
         UD94GMpFFgiAUCaIBfVqWgl0Vz1QTJk3XSgVyF7haxWlCLLT6qb2WrqVmpJ9IZ/rjLmV
         T9Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PaO3mUrvyrlxLx6T6FMLOlGYCy2w7sWQHAyzdDwn7S0=;
        fh=RpZHnB1hleObU4PO1Eel7nZVpJMi+rxH041Ee32gK3U=;
        b=g/YQ0M6sAw3ee5BZpRW/HXi1XO4y02QxEoKm3I5eGou9UGMeXMw8iWNgSRioMU0/lC
         BGkNgo/amM9oStZS269lmyO23omf2hX6knp2995IT7xa0Ae1Q9RUTuOjq4a3OkdXu+CL
         YeANpml92bSJFE0df3p1O73ofi8lf/pZX5OyjJwn+R95jqEPHT8tHgeDiY2qcvO5eHkn
         hKVatuvZI4WcyPGH5B9+5JbQyTABUq7H8tX6v1GxIOPeduhE9BGV7J3I9ROiKRbhnAPy
         m/uZ9tgBCfhPYUtLNyIS8rHUEBl0N1UHEXKE8mSMqIFD33hFLzI6GoyCQq8ipAkaVQg9
         uOvQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793879763; x=1794484563; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PaO3mUrvyrlxLx6T6FMLOlGYCy2w7sWQHAyzdDwn7S0=;
        b=KXnUfh+Pr+kFeLWcEYxtogMeYsntIPVeC7W76T4Yi839FO/LhYyA53dbIB7FIMSu+H
         s18ZlThDNtiDuWlmotnCbzDQ0qljh6aAgw/ifvjgUvZVo1bIJaZPZUW4RoMgcRusipQx
         8KDcee7GsUgixlQCBpX2chDoMQS9z80FOIYwFodXiGwrXIZ/RUMUDr2MlAIRoynhv6jS
         ThdaJCbWEYnDZ3a0r1R+yCbx2BQY4TwXqyv1N0uAebpe6OkvAJuawDlOz7PmC1WLNHZo
         +3GHjAtg9O4vAkl0GQFUlD33eed8N4a/57Ti0HC/9K0obBnePXoNdAaApxf0QrXca3Zn
         ApqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793879763; x=1794484563;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=PaO3mUrvyrlxLx6T6FMLOlGYCy2w7sWQHAyzdDwn7S0=;
        b=Vz+rmJTrF90p8rYELgfBTZ0t8pThPqaI1/cPmXv8gLAa9tJqiH671eq4aUWdDDNHKH
         aUtrKtQdLArxHDJ7c65g7t8x1XsJhMysSh/r0nwoPDdc9M88rNm4jWRFOWmHzwldRnbw
         2zD4Okp6wjWrM1dXX2Y6moqky2i6cYPohZF5VcNz5z91/6lDZc0gPyHIxd4GurwGe7X/
         ejWhJyVC32zrm8q6Kq1K52+pxyKs630C/I23rn/xbBQH2fyvkyRmK0jwliOZeASW6hMN
         y9u8g6DNNyNZevcfbg9R0QTj1q4XX29bIrsuod19fZwnU1tDkiGgdS7O5YNR+N2oL+Z/
         Q14A==
X-Forwarded-Encrypted: i=1; AKwUvBwkMIIkZZDe87RwiaUfIlhWd6G0YXQEojF26HjjLiA7wJkrvmycV9yPDjMnuJD2TBCpStXUmWuR5nfZTk4RPA==@lists.infradead.org
X-Gm-Message-State: APuU4Z/hSWZfe8UyD0eU49wo4Elptl7Feks/ZgRiZ0mWUabpIi0M/jrI
	OE+v/mj2I5n6e2BIFk1n8qOtKtiSCgXCAHLIhotXMrYyM4t1ls/l7n6EcBXgct62CLKgDxTEHMZ
	WB/IuTEPc1fjF3PdKQGT8SvACBAwZ/4gUW7YHVSXFow==
X-Gm-Gg: AYBFou0zfd8O+NndGy3cy1Y7B/0oBWzxR3B13V/LOrg3+63wZhyuZEKg+hpmE737Xzy
	DPkYtjnz0cG4OKUduI/GFKjW3HbV/r1BziUXDhDM3qgkAHcSm6dxElN/NpaXECfAcxI+GPQZrke
	JXEHKqtIGAAXcMW50wV/ULqnbF8iPiybJNGqptxkItPRtO853xlJQ3y7VhYK7yk8S8T8By9GFXa
	ATtrvG+KEX4L+rYxITbudETXp+qdfWui2lPypS2qd0nkFnzvIXiOzUK8J2pimpig8Eg8EaxWyzl
	SrFISEaLdEE0HqIr9+1p0JIoN/cjxy7StqlcDytRddL9CJUY80kPEuUIHRqHKEIbz0UXbNM6amy
	Sr9Gl+1uTOJ7DuWfcuAM5fSTiM26qUJVZC/I0
X-Received: by 2002:a17:90b:3b83:b0:3a8:5d1f:59ad with SMTP id
 98e67ed59e1d1-3ae89819ff5mr17083778a91.43.1793879762611; Thu, 05 Nov 2026
 03:56:02 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com> <20261105-dw-hdmi-qp-yuv-v6-12-1bb63ef5766e@collabora.com>
In-Reply-To: <20261105-dw-hdmi-qp-yuv-v6-12-1bb63ef5766e@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 11:55:50 +0000
X-Gm-Features: AclHuK8Jj7G6el-i8_82b6TJ0oa9AUPdN0owTnb0JTIANqcEHa0Ic8C9cFJ1sYI
Message-ID: <CAPj87rOAjcLZeKsKCMr84NoN89VzRDLV7Z8LySHK-DVyRW=u2Q@mail.gmail.com>
Subject: Re: [PATCH v6 12/15] drm/rockchip: dw_hdmi_qp: Do not mask error code
 in atomic_check()
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andyshrk@163.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Daniel Stone <daniels@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sashiko <sashiko-bot@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_115605_860754_3D79FD21 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 5 Nov 2026 at 01:01, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> dw_hdmi_qp_rockchip_get_vop_format() calls
> drm_atomic_get_bridge_state(), which takes the bridge private object
> lock through the atomic state's ww acquire context and may therefore
> fail with -EDEADLK when the lock is contended.
>
> The DRM core expects -EDEADLK to be propagated up from atomic_check()
> so it can drop all held locks and restart the commit.  Replacing it
> with a hardcoded -EINVAL defeats this backoff mechanism, making
> otherwise valid commits fail spuriously when multiple threads perform
> atomic commits concurrently.
>
> Propagate the error code returned by the helper instead of
> unnecessarily overriding it.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
