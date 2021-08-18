Return-Path: <SRS0=TfDj=NJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14BA3C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 21:52:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D988861103
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Aug 2021 21:52:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D988861103
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZETPLEZx5UOG/hpp8XhaXea2EX3zpqH580WOa2ZUROw=; b=Jy7f1IgKmupJrU
	GW2wK7CYk6thnT88LvSZYS/yA5Ivduj2q6ioBUkPH8GP0ydZJT8RZM+SgHFxzNLGkpIT2wkVj0VSn
	VAokd9CQqWhiMcEDwf06+6/vYO5RpJLh1kP+V687myOehfNr8lSMmpNboAj+1EkPHc0yMLdT4b+gY
	0cnsCwGpTN/urzUrH2OSyc9AjB+OR5ZbIW1pmkUAE4BV10aL/3UEGTAFXaagc/yjtM9peLzdSXDlp
	7izHca6Jk3ZFmpP6NiYxCmEjM5EHT1d3EMr2CJPAchYz6JyWbnq+mDYfYf8UcKZH3pNz9Al5noSXB
	pZ56Ve5Dl57mq9zGXl4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGTTg-006jUU-3V; Wed, 18 Aug 2021 21:52:04 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGTTR-006jRe-Qd; Wed, 18 Aug 2021 21:51:51 +0000
Received: by mail-oi1-x234.google.com with SMTP id o185so5471755oih.13;
 Wed, 18 Aug 2021 14:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WrbViX0wQKvaWuCri+CZMKvsdsPMmbuJGU6REqdEujk=;
 b=gRJochQghrev713LVE7XNVqpfWWXVIyAf41WsqX4eUKV1pbw8wDGju2iA+oUaIo3ix
 ConEdxYiBmm4dBGFFVOiAA7xxs96VAsznRjW2hwZdQSAn/cegC16eU4NjwLtgN7vR/CT
 WsV3YQxSZn0cKR9dC5AyZzA8473gIaN7KXVrMErJrFSm1a52JXXcP3QBiXJWdDXAmdQr
 cLNfP4CX2Ec0VzQhh66J9XTaT5sJ6D7lgRjT0x41RqPuh6txxUCO8qZSj7j4cXc2NY2+
 YKQfFXarxLig+iT4qeGm9clvf3Z10R/gd36BP6Z1Fg/D298mW9ZnqEGAkJDd3E7MqhbT
 NX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WrbViX0wQKvaWuCri+CZMKvsdsPMmbuJGU6REqdEujk=;
 b=LP8j0hOp1VIm9I6szx1wyLzCzizKM7PJ/B6sah9kCgdzFO7NW6Kye0bweUBNnPwWk1
 bdCDpnXVIas0q7sYL7BwFAi3zHPHLPJqcTd2cfTTNPQb6V999YGGW1FCteGj05CoWoYK
 zukAD4UTrMGtL9BLXHQhOjoMxQbarU6xWYBzkbSjNwktKeKVubjbrX3y2sz6tOBqtEGT
 0d9dtRcgqN9+XxeZK+ymLI4CoxtnTH+lIK7HeGR4zfN1NQt5OeWRJTK49+89RepSufaa
 1AbCaKBJKIFz3jAhMD9Semt5nDPf79O479d4SjKUdxepk++7lsyTGQCywR4FNz6hM6DH
 TTAg==
X-Gm-Message-State: AOAM533rvV8W0jRuRNsrCisHi8nbZOTiwRmg/wLhXLgt79DAs2GKpMIG
 6KuXs6C0X1l/CmweiT6tooV+PgcXcQ5SeZYOZTo=
X-Google-Smtp-Source: ABdhPJyb/T3+O4GXm462bouKYg/m2oSAgVUac1M9v28NUTBTso2dAhydO9+ec4Xvzly/53MqwkSj1Nat/NIzcxop9vE=
X-Received: by 2002:a05:6808:1390:: with SMTP id
 c16mr216682oiw.123.1629323508125; 
 Wed, 18 Aug 2021 14:51:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210818124114.28545-1-lukas.bulwahn@gmail.com>
 <20210818124114.28545-3-lukas.bulwahn@gmail.com>
In-Reply-To: <20210818124114.28545-3-lukas.bulwahn@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 18 Aug 2021 17:51:36 -0400
Message-ID: <CADnq5_MiTXcAu1kK3-9m=nFoT+SxF9SBv9wYgm2-WNVt_85RQA@mail.gmail.com>
Subject: Re: [PATCH 2/5] drm: amdgpu: remove obsolete reference to config CHASH
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Emma Anholt <emma@anholt.net>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Arnd Bergmann <arnd@arndb.de>, Tomi Valkeinen <tomi.valkeinen@ti.com>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip@lists.infradead.org, 
 kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_145149_922055_ACE9057F 
X-CRM114-Status: GOOD (  17.60  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Applied.  Thanks!

Alex

On Wed, Aug 18, 2021 at 8:41 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> Commit 04ed8459f334 ("drm/amdgpu: remove chash") removes the chash
> architecture and its corresponding config CHASH.
>
> There is still a reference to CHASH in the config DRM_AMDGPU in
> ./drivers/gpu/drm/Kconfig.
>
> Remove this obsolete reference to config CHASH.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
> ---
>  drivers/gpu/drm/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> index f3bc90baca61..8fc40317f2b7 100644
> --- a/drivers/gpu/drm/Kconfig
> +++ b/drivers/gpu/drm/Kconfig
> @@ -257,7 +257,6 @@ config DRM_AMDGPU
>         select HWMON
>         select BACKLIGHT_CLASS_DEVICE
>         select INTERVAL_TREE
> -       select CHASH
>         help
>           Choose this option if you have a recent AMD Radeon graphics card.
>
> --
> 2.26.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
