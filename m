Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA76EC54E67
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Mar 2024 11:37:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUbfn5BfyzK7IIFHgZQGqPZpQn0IZ4IJWykvGsUTqU0=; b=x7uIR0PpAjoSj0
	zsVjfCjdJzDBUj8qwcPZJUwA9T07qLoM5IVVGajoVtvSzSHoShZtRy4G25enF9YW8ZmPZA5RboDKw
	qo6UhgQcCprKfwOJJLbHKt7NeH1uAt9f4JmtwJzyaWx7C5OyPHCBwrScDKhFRUsmbK51fyVnzqPh1
	ZFx/iAv3n0nLiAjxzItJjizGggHyNls3oJME+NS2vFEHRFT3k/phIoLMD74QQK6ktUOP1ERHYK+gR
	ZOmBIJ84pkWtBgkvTKNQQursKIqacCpSAmAUc1Ff9VciyGzJpud0awaOZrqorOO3CygPpU4CPqMhD
	WQVUeHcnzTj4NzfznSzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl5sf-00000000369-1fTp;
	Fri, 15 Mar 2024 11:37:45 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl5sb-00000000345-1zMf
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Mar 2024 11:37:44 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-db3a09e96daso1726352276.3
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Mar 2024 04:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710502656; x=1711107456; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=W1YjIjeqOSOzfGq2xXT4IYkQmnAHVepprgGXQRagfTY=;
        b=PylynIzpUuMbvUvr6vIrP9+33rYEqLBTqlDM9adiLhAvjiwJvacb0TvM48SCuZv2Hh
         xLNXIrG1T0YtEiTPSpyCOtwVjyktQ+PmmRMIjk5/6mGjJBlz4Lsvh1xWRsjgkNIkNwvy
         /LqtDnQHbMUNny1tfmePF1eqKjIekkV9sBfVf6BHLFAv6T6WCryRPMCyPh+1Pzhe6v+v
         r24ciHn3QqISDeeGJors3mQWyQspCTMEhaWyEfn6Uxw0Q+7AU+7nnd2SvwlyjfvrnRAp
         pBVk9ZBsYcSyK2UKMCKLrbc/tzi/WNnO/T9Tw72oPqYawE5B7ofR28DXxPXVtekwISq8
         clCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710502656; x=1711107456;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W1YjIjeqOSOzfGq2xXT4IYkQmnAHVepprgGXQRagfTY=;
        b=ljuJtuPBYqxfYlxucpHMxVD6w2NjuWwZeivypIO6WsRufm7MDPbD9OlYD3Rrp+6ku3
         hQGGBi7rnnNnaVUFZYRlAn4My//FhzgPgb398h87YMSafO0C+VyB8AAI3bTjleyEST0l
         wobOpA8NF0qvq2+oe15kXPHtLJaL4WhaF4bR+AHSrYYYGyWWx+vwJv7lfolCbK/YkeFG
         qGxb5xt2ezVk/MqDu3zf3wQbj/U/ZlznkjWggS8p7BK8v1n98AGWpelcRL6O8Pee48dw
         OfXcJ/SBFsRDtguko+1oEXw7Kounsi4b48vKQppFz6AiAHIgAcjRQw9ckkbwLpRWnCxk
         hxlQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+fcxEZmNnQpsBuZUs49rAVawUcEWYk0Iwvv1aNIksrvjdrMBN9AFGsTH3nhvrPzPov4V78lpX8MkEM3IR0Dd+ShT5PaQiJtVWE2RSBqeHK/QP
X-Gm-Message-State: AOJu0YztpSOOTOY6N4Hbxo6eOhHMI86OiFlqUEeQ6GG0KUFWz+GIRm75
	0NaBDOFxPviya8V0DaAKczMTAy+/1Ftlt3UgLJ5tKiFYDrzQjbxyZr05bznhB2yw34dYqa6kKmf
	JibLaSeQEnSJfcGnulJy7IQ35QgnuPynU2vMGUw==
X-Google-Smtp-Source: AGHT+IGNjJToPdVH5hgnrzbo2/Y+N7SoBZsHPueEWHCi3sAAnAaUw/tww8bYLv5uKat8ny98eFlvnQEHDXDY2PazX2c=
X-Received: by 2002:a25:c5cb:0:b0:dc6:c2b2:c039 with SMTP id
 v194-20020a25c5cb000000b00dc6c2b2c039mr4303557ybe.41.1710502656113; Fri, 15
 Mar 2024 04:37:36 -0700 (PDT)
MIME-Version: 1.0
References: <20240306030649.60269-1-vignesh.raman@collabora.com> <20240306030649.60269-4-vignesh.raman@collabora.com>
In-Reply-To: <20240306030649.60269-4-vignesh.raman@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Mar 2024 13:37:25 +0200
Message-ID: <CAA8EJpo=OXUitC+NPjZd5Kpq9dF04BSffvgsMYnn7LmmEoh09A@mail.gmail.com>
Subject: Re: [PATCH v4 03/11] drm/ci: uprev IGT and update testlist
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
	helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, 
	emma@anholt.net, robdclark@gmail.com, david.heidelberg@collabora.com, 
	guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
	hamohammed.sa@gmail.com, rodrigosiqueiramelo@gmail.com, melissa.srw@gmail.com, 
	mairacanal@riseup.net, mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_043741_580594_8C684269 
X-CRM114-Status: GOOD (  10.22  )
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

On Wed, 6 Mar 2024 at 05:08, Vignesh Raman <vignesh.raman@collabora.com> wrote:
>
> Uprev IGT and add amd, v3d, vc4 and vgem specific
> tests to testlist. Have testlist.txt per driver
> and include a base testlist so that the driver
> specific tests will run only on those hardware.
> Also add testlists to the MAINTAINERS file.

I think we should move away from specifying tests explicitly. They can
easily get out of sync. A month ago I had to manually go through the
list of the tests and update it to follow changes in the IGT.

I think we should directly use testlist.txt from IGT and then filter
it out using skips.

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
