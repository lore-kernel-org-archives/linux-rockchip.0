Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE246E77181
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 15:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wazy+6O5rTWHkK+AkXEgcGGqRuRFoRYVHUjg5dkZUPg=; b=Xd1G+qbAE8P2nO
	/2kUo4vGM8/MfJIEcGHQw3zr9P8LwOQSBqc4rN7Kc5+IWm6+u6hyD7RV3jvJ+FN8c3Gpb+MzUhgSp
	5u9DwjVMz2thumJs5txtSfjTQPr2Q8TkHNZk4exQtgnZShSGcgPp0T0RFP+9ZHK5pYMjVBJqQrOJR
	KRtlm71ydcZUZ+X1Oz1pZAqeXcwC0plx7Aw5mwgybY5jmaKsecs0ICmZETxD1xgxST9/9/n7aE50G
	++dHHJ5FBO7Ik64ySS5HvAEogjoI8QR5pPeL3Yp/Ake5JIVNK59u2L+6V0J1zmGs4A1zo6Bc6v+J3
	Eq/erUitZINeYd/P+leQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKfLi-00000008KLb-3qQa;
	Mon, 09 Dec 2024 15:07:02 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKfL5-00000008KEE-2Lip
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 15:06:25 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-434f0432089so16433135e9.2
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Dec 2024 07:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thaumatec-com.20230601.gappssmtp.com; s=20230601; t=1733756781; x=1734361581; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fBemlKVePg1M8JMVZCDuH/Kc392eD263a2QapCaGV9U=;
        b=xlIrA0ygL9IrHZGo8e2RFW/AkQ4gF41Kep9vWmLqNHtb1RNcc75w0cwqsG1lOe77Eq
         e+9rEr+iu0KhXIaLQVcwmpTZXLkzqR+GuWFbBlpeTp+u8oyQB9h1PFjsrFgg3R8CDFxY
         fat+yT/hl+vnRiOFVBp0ODG7YxveFmShQia4eshkS1C3BaJfMnWuH4uge46RkFcOOMpq
         ar7mhIuH8KjXgaDSOh3z1uhs29xUnnZVKcuhvDiy3P7eLgjtWTEQWqhpAz1A58W+WbJX
         I4QFG+8ZajBIXpM4TkaVqz+R/dCD5PhBMmz0GCAnTwAM1zaN6vEO/bdhNeW6YRY7QCsM
         dwjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733756781; x=1734361581;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fBemlKVePg1M8JMVZCDuH/Kc392eD263a2QapCaGV9U=;
        b=o/HXO5hjo1lXqT5g9WIyLE5JslOLXqA/Ek9yVeJ0fdR6tpdkaQqq1rcfEm+L40Yba1
         2LiAVvIYfSmZlpMbUOI8tkLQTVxn+3W9aPTnF4shH5cb4zlOqwL5XpczwAHEZ4s0L8sZ
         /c/I1BSYMRLmhaOo1bCjkoosE8NnfxvP7HXCKxT9LzgRdcjeWSJCIKISKG6hIj33xmWp
         n9vXE9u0Sfs4MO0dYpALPXofHNhOqptxzg8RoRsTnmNK7h4eQl0CBaz1S+BXEWuGyarD
         uK6FTQQlcrJM/KXhkecY1KT4NrmWdx4xGUKCufSyIuNvr9cPSp+6yUBW5Oi0sOWvyWkK
         uqCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwQax1OX9ed32RGsp19FeJ76XdM7q8UXEo1j4xEFuV2lnXSFoGVEOYNzLhvh8GR2iq6rV9Ihd5FJEAWL+8VQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzj2xtDqFBla82c0/cOKcCU6r/jSDQqulA4V+S6OSUzEAHxqBQA
	A7IgFqcZUiRsdDj2CE7/XFG0SjEA6bAjg/zeJXPceUverIqMgMl6UoZ1dyCapXCbjVjftYqTBbe
	MkbE=
X-Gm-Gg: ASbGnctFqNKTKpSqlMFJW1zUpes6eWUX+PPrswYmv1Fc94LgM7d/PF34N+NFB+WOyrK
	x+JKnw7u+QhqEbh87QDHr2ksNob+5ltIu6fVUU/tlDVSi6bRsnqMRpt6a43lv0h8MPocI7fh7vf
	ZaTEf9dEpe2gKOVVycsoJABLTMAQ5hQOmKy7Gl9JUdDYZy+RK/HrFZWFfy1N/xqbQhRjzRKHNEX
	iqpXOB8auyo27U1umtr/BqCzu7DkLiYBHkY/+g5
X-Google-Smtp-Source: AGHT+IEaMojRUAQLLwed4/ER+OeZapLgzpX/2UyzkziLJwq8W59lZWRdfU3Peh7xaUCEk69zEFgm5A==
X-Received: by 2002:a05:600c:a09:b0:434:fb65:ebbb with SMTP id 5b1f17b1804b1-434fb65ecb9mr25947035e9.17.1733756781170;
        Mon, 09 Dec 2024 07:06:21 -0800 (PST)
Received: from fedora.. ([91.90.172.13])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d43809fdsm103296665e9.1.2024.12.09.07.06.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Dec 2024 07:06:20 -0800 (PST)
From: Daniel Semkowicz <dse@thaumatec.com>
To: heiko@sntech.de
Cc: Laurent.pinchart@ideasonboard.com,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	quentin.schulz@cherry.de,
	rfoss@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de
Subject: Re: [PATCH v3 0/3] drm/rockchip: Add driver for the new DSI2 controller
Date: Mon,  9 Dec 2024 16:06:08 +0100
Message-ID: <20241209150619.33998-1-dse@thaumatec.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241203165450.1501219-1-heiko@sntech.de>
References: <20241203165450.1501219-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_070623_753392_76578411 
X-CRM114-Status: GOOD (  18.40  )
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

Hello Heiko,

On 03.12.24 21:54, Heiko Stuebner wrote:
> This series adds a bridge and glue driver for the DSI2 controller found
> in the rk3588 soc from Rockchip, that is based on a Synopsis IP block.
> 
> As the manual states:
> The Display Serial Interface 2 (DSI-2) is part of a group of communication
> protocols defined by the MIPI Alliance. The MIPI DSI-2 Host Controller is
> a digital core that implements all protocol functions defined in the
> MIPI DSI-2 Specification.
> 
> 
> While the driver structure is very similar to the previous DSI controller,
> the programming model of the core is quite different, with a completely
> new register set.
> 
> Another notable difference is that the phy interface is variable now too
> in its width and some other settings.
> 

I did more tests with different LVDS displays. I tested following
configurations with DSI/LVDS bridge:
- 1024x600@60.01
- 1024x768@60.02
- 1280x800@60.07
- 1366x768@60.06

All of them worked without issues, except 1366x768.
With this resolution, video is blurry, and offset incorrectly
to the left. There are also repeating errors on the console:

  rockchip-drm display-subsystem: [drm] *ERROR* POST_BUF_EMPTY irq err at vp3

In correct operation with other resolutions, there is no error.
I am not sure if this is a problem in your series or rather in VOP2
driver.

I tried to track down the problem, and it seems to be a generic issue
when horizontal line width is not divisible by 4.
Lowering line width to 1364px fixes the issue, but of course I have two
vertical lines of black pixels on the right.
I also made some tests with 720x1280 DSI display. Lowering horizontal
line to 718px shows the same problem. With 720px and 716px it works
correctly.

Kind regards
Daniel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
