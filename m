Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C799FC3DA63
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 07:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qgzYy88bYscWwOWX4UMCpbAaVqmO366fCpRK3fV2LQg=; b=X7iAivNFVISgqk
	Vz1z4G8njMEc3e5gJXo//RVoS3C5Zn4As7VOsrwhBKipztS/VS5jHuMTiS21Ltk2fbdajYvoH8ci2
	/VWVQNzzgz0BYAokhFPDFsOlckwxM6ytUdVXhuY2y+ciAdFLAeikv8Y3pb+DzSirEOQWFd71LJ2+S
	gdzXelbHiCXleCj015+n+tKa6Px12jol17pIzykKzn0uahE9IOhHO9Szxy3HG9qjeOVEvHk1/vrm0
	mMM3fxvvR/XojU5jk5Eg8R6lTyT8Oawk2vjFfV0SrHuAfUXIoeE+VB+4HVAqtwoXFKhIaQN/EzyIH
	hCnR554lJr80U038Gbsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXFKB-00000003Arz-1Hhk;
	Fri, 26 Jul 2024 07:25:11 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXFK6-00000003Anc-3UiA
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jul 2024 07:25:08 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-7a1d024f775so28031585a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jul 2024 00:25:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1721978703; x=1722583503; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=avcZ0XeDvxhFCHHWnLz/cvRXaQLXwQeaSCVLcihXW2k=;
        b=yeRLeeKHrdgOouIGieWLZA9Rj8xjy6UZ8opUxySb6GAtp4MaRB3qjr++/SW+hqKK69
         B+f6JF7Tw20fW8qpPyEcn4zd/IaVbOGNeWpbxrVEdlciY4WFU70wjIo41NdabuMDkdWt
         jAX/ZZbnEcfBzvqhbUkisInKiRG4i0eeCiJfhzHUdyaZUsD9YW32XvdONOCAEQ4Cbeo2
         2zq2W/RiaLHL+z1MEUOnEp7s35Hs3E84o9tlCIruTGpYobtvsfkqzdnViB/FY0uaoXdo
         o0w4DVPMbIIJlxljoM11yLc8r0LGgA0+EqdRRETrIARqP+v+ceUOrXJmngXUGIvjwVly
         JfYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721978703; x=1722583503;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=avcZ0XeDvxhFCHHWnLz/cvRXaQLXwQeaSCVLcihXW2k=;
        b=l+XjRWGDmhm0zwnl+YhT5ntNjfgwky38hr4Wuup72Az1fIn4yjApqWfXbMTVVKoHzp
         rQIZugFmOeGeo+QmDUlfLOY44tQF2CE7huQmY6/1mFqi1x4QVSpnyCc8Hgj5k9QpDbdF
         7zvFI6i68utqGhaDnp6yFaFfXEu+7oZfPOToIIJsFEog/nwq9gtDIRF4Og7WhbpAQZj/
         tierIXjOy7mABsQ3akGvc04AtKWm4BVEWCNJCspxNZV8gH/uGCx3tumBOpRL7k7aEEIm
         pBuZ3rC2Jm4nwfUQf3rnW5djJrAtF/8wsNq5ToORHWD7r0+rzagCse5JQKMndCkwnGlo
         2kGA==
X-Forwarded-Encrypted: i=1; AJvYcCV4N8vOirroCum0Yp7ZkPfeeLqBZSbqjKw5FPEE1guK4Mf/XXrTOLab4E3iaGzkDi4izDaYaTaJqFPXuFJtbtGXgp9vBGBeTAGL0/VUDaWU7RJf
X-Gm-Message-State: AOJu0Yy2R2K+OheNsq6oo5EFZvGvUwZ0rH/kmMkKkra5Q32s45w1cN/9
	tZtDEaP5sB3IsaLUNMQomG4bs8KECujAXrNRvTxVJDhuCGNM6ZzBwhu2mfzXxf4FZMJ2PFRhf57
	gMdGjjlN325qP2GsclfFhwuXcYjfVOPGgy8NLpg==
X-Google-Smtp-Source: AGHT+IEQMpCGcCv6MJDs37LwNfhYJ/aHQOmhySiSwOE4b8vVqH4/XnV6OaZWgrzn4PNCU6z/pjfP9qGkBv6/dQosuiY=
X-Received: by 2002:a05:620a:1a15:b0:79f:c9e:6269 with SMTP id
 af79cd13be357-7a1d7e8463cmr446035485a.37.1721978702356; Fri, 26 Jul 2024
 00:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20240724101015.523535-1-vignesh.raman@collabora.com> <20240724101015.523535-3-vignesh.raman@collabora.com>
In-Reply-To: <20240724101015.523535-3-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 26 Jul 2024 08:24:50 +0100
Message-ID: <CAPj87rMfs+_EMyJT1PoLTXmrosDiqQy_N4VYSA+M3R5q4sit5Q@mail.gmail.com>
Subject: Re: [PATCH v8 2/5] drm/ci: mediatek: add tests for mediatek display driver
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, 
	guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	deborah.brouwer@collabora.com, robdclark@gmail.com, 
	linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_002506_921113_B4590F7A 
X-CRM114-Status: UNSURE (   5.76  )
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

Hi Vignesh,

On Wed, 24 Jul 2024 at 11:11, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> +dumb_buffer@create-clear,Fail
> +dumb_buffer@create-valid-dumb,Fail
> +dumb_buffer@invalid-bpp,Fail
> +dumb_buffer@map-invalid-size,Fail
> +dumb_buffer@map-uaf,Fail
> +dumb_buffer@map-valid,Fail
> +fbdev@eof,Fail
> +fbdev@read,Fail
> +fbdev@unaligned-read,Fail

Please skip dumb_buffer and fbdev tests for all GPU-only drivers,
because those are testing display functionality.

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
