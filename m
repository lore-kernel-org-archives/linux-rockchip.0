Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C002C54EBE
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 18:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ngSUqu3uD5xe9+Va7/Ld3jLDbBxpVr9ihvt5xKFYjV8=; b=ZMCQmKmPjbWDVr
	Yt83Q+HdCqxowkXN8X0wi+n895KoVq7MucNfYXnlY9E4vhuPsZVaPg18wZ7uC1+fKBNPrCmUS2hUr
	RcdgAjIU6WpL8LguFXDg6zR4DeXhqUkn41l8vR9FcxRiACFE5Y7amLUKrtgDkMiAIJ76OvDMC7jlF
	ok4nm4w31/RzekL1A8fIf4mgXRw85hONRIezWCRIrW2K+ubOdnIqvfVoSOoBvhwjx8J9OXXHrKrAs
	5yRYTsAVZzzyYdHl+Y04hrJfOVrjpiIAd9FMDk2TC8G6VN2RBeR8ojZQwQZiT18wKLEsgsGtjg1tf
	nHEo6DExeciiDrSfK55w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHUMf-00BjiR-Gt; Mon, 16 Jan 2023 18:37:49 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHUMb-00BjhY-0C; Mon, 16 Jan 2023 18:37:48 +0000
Received: by mail-oi1-x236.google.com with SMTP id p185so2969381oif.2;
        Mon, 16 Jan 2023 10:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bz6Srssb7KxtWIp2StQowmALBQ/ecYiEATmxxDpLUgE=;
        b=da/8FrC3su8n4920e9FOvu1j/TWeGMIAZK3QFppvkb8spsp70RYdvbMm2q6kr8fatp
         5ZhAWveL0+ghlV+yoW55uxO1VApqKx7SI3P9NQE44tN5xuWeO0ji9XuxwTvr/dlc9rsT
         tVUpF37v44gwmO7bLXKdtbiGDN/w5BQAj3xAbBkq52KC4lJdYL5HB8bnXAJ4+Its3plb
         v4Jme9uznTgidvg/tGOHCdyd7VszsqLeOpmjJn9xH6h/dQojHZTl8CSLKaqG/edls6PK
         yQ1U3V9Jp+1Ca32YYe1xYlqr5URZI2+ZvAQNN1kMuPpVWR6dfbhkvE0JUVZPCO257Kdu
         QMeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bz6Srssb7KxtWIp2StQowmALBQ/ecYiEATmxxDpLUgE=;
        b=DCLjWkdmaHaK2OAqu+h4PScNZECdI9TBLZI7+Znu8FBOxxseSLrHzVGnlvxgXFxltC
         1+O9hPk5AFiVhNLrE+eNXq5RN41yr+x2/a+dfdKiASgzTRK43P6tOljMTQCRd0TTxJ9n
         0mtPurWS5CLEX4gv134Z187T3i8Rx9l+Gu6vzsd3SATSNNmlEZ8JpJ5155svD9+AH5KZ
         1d1KY40eZFQ9iRD3R19M4YNSKPBQAQYYemHftEYyTg6keEo8bbs6mnN32h3ya5bW1w14
         8TeA5zlGG3NJQ2F2gMpTk07S+2hQCc2lRGyqmkY8KXWEfGT1hVN8KM1Gc4gf3R0lkUhz
         vTzA==
X-Gm-Message-State: AFqh2kotPFPsi6EePM4xojdDHmngcppymMYo0Xsi+4O36VQndbeN70qL
	26Ztx2ArJao8RUNVyTiZ0n5zgEPs60dhTfU1HtwzQfE3
X-Google-Smtp-Source: AMrXdXtOKveG9OHXqQHo9xNE/hNA9+TOjgR84/kFoTmzmkWJIw/wZWO6Z17PeC1Jr2qOmQVHIKAxEfu0US9MC60q0b0=
X-Received: by 2002:aca:2807:0:b0:35b:f5f7:3ed0 with SMTP id
 7-20020aca2807000000b0035bf5f73ed0mr17751oix.46.1673894262477; Mon, 16 Jan
 2023 10:37:42 -0800 (PST)
MIME-Version: 1.0
References: <20230116131235.18917-1-tzimmermann@suse.de> <87k01me9jn.fsf@intel.com>
In-Reply-To: <87k01me9jn.fsf@intel.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 16 Jan 2023 13:37:31 -0500
Message-ID: <CADnq5_PsL8N27_LC_h1m8i_FCg6mJtr7K9Yjv=guw-KGD2wU5w@mail.gmail.com>
Subject: Re: [PATCH 00/22] drm: Remove includes for drm_crtc_helper.h
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>, sam@ravnborg.org, daniel@ffwll.ch, 
	airlied@gmail.com, linux-aspeed@lists.ozlabs.org, 
	nouveau@lists.freedesktop.org, linux-mips@vger.kernel.org, 
	amd-gfx@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_103745_068952_D763843E 
X-CRM114-Status: GOOD (  15.71  )
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

On Mon, Jan 16, 2023 at 11:20 AM Jani Nikula
<jani.nikula@linux.intel.com> wrote:
>
> On Mon, 16 Jan 2023, Thomas Zimmermann <tzimmermann@suse.de> wrote:
> > A lot of source files include drm_crtc_helper.h for its contained
> > include statements. This leads to excessive compile-time dependencies.
> >
> > Where possible, remove the include statements for drm_crtc_helper.h
> > and include the required source files directly. Also remove the
> > include statements from drm_crtc_helper.h itself, which doesn't need
> > most of them.
> >
> > I built this patchset on x86-64, aarch64 and arm. Hopefully I found
> > all include dependencies.
>
> I think this is the right direction and I support this. Personally I
> think it's enough to build test and fix any fallout afterwards.
>
> To that end, I did build test this myself with my config, and it was
> fine, though that probably doesn't add much coverage.
>
> FWIW,
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Agreed.  I applied 1/22 since it was an unrelated cleanup, but the
rest of the series is:
Acked-by: Alex Deucher <alexander.deucher@amd.com>

>
>
> --
> Jani Nikula, Intel Open Source Graphics Center

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
