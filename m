Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62367C46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 18:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0z3iD0IfRgMvEgLpmMh1e6splw41tLBjlVAYl2NhF5U=; b=d3RuQNH+WYFQXO
	KraX81kboAYq3OqD4WFbSlXtkGGkYJK4eExImaYs10jlixMu02+y3FhESXfTNE03aqjZGg2dxbA6a
	hs9MfFkDerLHn/AXbuMXXX3yKzd07CGxIOJvWU0L0hbStkScQkBNp3xwQ71WOd1PO47ZP5GHZLXWT
	ZSyonPezGQB6GoQpjfnqGITh+ZCMeblJD/upFmgt6OwwEbf0fdit/0qu9R4cbZVndQhyuf6cjJVcZ
	fLcv6vIIl8wERKN09qCkwbxsskP6uRcXImfi64gIa2uXzKdU/LA6/Hfc/8SnwShL53exKOB1AXsbp
	yNLW8TUP4FFFVqPeTVyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHTrw-00BdxP-Lp; Mon, 16 Jan 2023 18:06:04 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHTru-00Bdw6-82; Mon, 16 Jan 2023 18:06:03 +0000
Received: by mail-oi1-x234.google.com with SMTP id v17so2672553oie.5;
        Mon, 16 Jan 2023 10:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jS6lFIJFjFUtY3mw8cyMrgKm76WlKsu232wNoOu9BFI=;
        b=pJUbclSZ3i6Jdg01liLqHc4w2CrtWVSvaOfhA/DUvmwvBfI9LV/fSr9f0+RsBvfbLx
         mSuHpfqzVwUOvdgr8BT+nESWO/0QhJY7FYtEC48w4a2xddiPX+BPDav7qXMtorGbTXUq
         hjQMR/WAaB4ryPMo9lf54fjFLNek6uWrPFOwM6l8Xd/xDdB6xaxgevUnUfNn/0eWYNTc
         bKMw7E9OC5EgqTES2vcg5jM7PqToB0TgsIByf+obkVK3lyB6P/PcTiK4JkRpIAYBGTyB
         1Id0dsqzXGVrfVIItHtSGIEkdKnSeVlrgExRRUQaOVdZ/2a73hix4y96Jlu2eI2bS7Za
         OBIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jS6lFIJFjFUtY3mw8cyMrgKm76WlKsu232wNoOu9BFI=;
        b=FA8Lc9h/f0pNYSrQv2NFP6VLmziOD1Yvw0JgqGjQnp797/pZ/iSiAnymtBycpYX7Ru
         LyMxNI/pR+TKGZf/hj8S12XfoJoPsHfY0j2a/WzKAnm2tm0q/TkbbsOE9+MD6tnx0xmX
         qpelf2pq7CVfmKHy0+VBTild8R9C0L4uhp1/qEyJJUMNwCAw+DfOtBbnYdqS0G4riY0s
         vu33Tr6yfJXZoYjGaOp9eUp64C41NFpOiWzk3EwiY27KE4s70FgZdZU0dQ4IHGoLuSUF
         PRKGCxT8A01xaTSIJYBXP6Luh9vOxaTSaUUKm231Jl6cKaFavqjnHYXah+jQCkWCpfLT
         lnwA==
X-Gm-Message-State: AFqh2kqV+0tXZw3PE1DHJhE20PMMLcZMYUoceVhcsLctsZ0EY0/ZhTzl
	9bhH8EXsHvMiTKWo6dcXhurh+DVk3ToWkllurlA=
X-Google-Smtp-Source: AMrXdXvrZGLO62Oo0eXSOIOLUZCvlkDtQzC8DtTWKD6P/g/Ade7N08+e9NEuxmouzOQHO07H0ArjVT5oqOGIBob8wbI=
X-Received: by 2002:a05:6808:4387:b0:35b:d93f:cbc4 with SMTP id
 dz7-20020a056808438700b0035bd93fcbc4mr8161oib.96.1673892358616; Mon, 16 Jan
 2023 10:05:58 -0800 (PST)
MIME-Version: 1.0
References: <20230116131235.18917-1-tzimmermann@suse.de> <20230116131235.18917-2-tzimmermann@suse.de>
In-Reply-To: <20230116131235.18917-2-tzimmermann@suse.de>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Jan 2023 13:05:47 -0500
Message-ID: <CADnq5_P4DgCi_JwXo2fJS=cCBmumsw5Og5ZYt+J4J_Lak74e0Q@mail.gmail.com>
Subject: Re: [PATCH 01/22] drm/amdgpu: Fix coding style
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: sam@ravnborg.org, daniel@ffwll.ch, airlied@gmail.com, 
	linux-aspeed@lists.ozlabs.org, nouveau@lists.freedesktop.org, 
	linux-mips@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	dri-devel@lists.freedesktop.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_100602_323082_2048AABB 
X-CRM114-Status: GOOD (  12.49  )
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

Applied.  Thanks!
On Mon, Jan 16, 2023 at 8:13 AM Thomas Zimmermann <tzimmermann@suse.de> wrote:
>
> Align a closing brace and remove trailing whitespaces. No functional
> changes.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_device.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> index e47058c2c294..0993ee91fe18 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
> @@ -5871,8 +5871,8 @@ void amdgpu_device_invalidate_hdp(struct amdgpu_device *adev,
>  int amdgpu_in_reset(struct amdgpu_device *adev)
>  {
>         return atomic_read(&adev->reset_domain->in_gpu_reset);
> -       }
> -
> +}
> +
>  /**
>   * amdgpu_device_halt() - bring hardware to some kind of halt state
>   *
> --
> 2.39.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
