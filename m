Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5B3FCCD184
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 05:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tJMb/PeQzBCvbhHvOkcGrSYnXOxvj4e464rEIgYp0Y=; b=mG4UpCFOK6lPpX
	mzJIyeie6jKwK7z6qLc8/YeHWz9KcEHAVuaCh6Egm1X6Im1KOOBB6RKQYkWAkG2B5fSZXO/ck0J0F
	9iAJhvVbjPjnRDDuJIkj8TC7wqtMUhenJt7SNndm61zdBeBbA46w87noAoWmYFgySIVTphs8smlzy
	rtW7ZgSRS00FeWilJ4PdQV5915GYBWT+64spluOfgu8iHKOz7rnExEiAEa0EQZI/rhDdH09Ie5y90
	0LV2F5Jvk/Izt4OYcP3oV0ySkAClOwuhuRpFqLX6B5ANAfjOlt3l5lFpcGZ8rAQoKFhPbsR6clN0y
	rYD+YveH1l6EzsJrU36g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9crW-00000006bhy-418h;
	Fri, 17 Oct 2025 05:18:46 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9crU-00000006bgS-0hye
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Oct 2025 05:18:45 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-781001e3846so1487508b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Oct 2025 22:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760678323; x=1761283123; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=l6S63uReOFquePjk+el+IDhyWrHQTPL8Zy49l1W17no=;
        b=fn9pUa1+NX5CQG1g2GuzdLtXFzqBVEVeMFF8eqQOCixb3EoL04Zcns8y/eo/M4mwxg
         F5Y3ls7ZoNEsVJxKZLvkB70ABSMcwUUH1JXj71ZdJ9KJe7cgnvl61MmJ1MBSMBquPwD2
         2C6BRpc1xf/i5yq8E2TASZx6/FdZxz02rpmwQyIbF5fv0MZlLieb90JnMSamwZvl6QDb
         BMQyHGw9+jyfqVUuHmASn1L+zpuBB5qXvtnfaqOpkSJ6uxyufx07JWNlSsHebtFu7xhI
         92PpkDmOWkVBGqu1pxT8CXSb6rAtB8+gRnEW4rdbgjSntUCm0/ZgkaETD2fFyaVz6uVW
         xe9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760678323; x=1761283123;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l6S63uReOFquePjk+el+IDhyWrHQTPL8Zy49l1W17no=;
        b=rcJ4U/2v4upMbEs3q5Bzh28a2zlW2cQvbnVLrYSK/4zWQYzTBjEGXCOLy4WYj8klPj
         sosNz5pUM2kOzKDQGMIt+vnTJKNnU+zkKJ33DMiKK7AFP3s5dZBMJO1dcYX7DyKIULUb
         QBkatlp646L/4YQHQiWrtwd0oM+3Q6abLg4zWn+8Z7U3Mk+bjdoGhQXgm6z4ND4TjBBo
         +FK9FbtucRMFynvoddj7zDPon/lRpb01HNvSxvQQ4QYta0HKN5+aMfoqsWUZ4z7OTxdP
         2isi0s1e34x1i74yanYS6e8adTrw0JF8Inq/2e7RpB9rYND6QDlw7bn4+prb2IoMFuRS
         fVQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWogkRO8T8mehpYa/+nUMWLJUjgzkByruFJGO0OUgBA3c3AqpmDZi4qIr+VDXeYrj4VNvt6q88tShM73uWapw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyiBM6h1ZigVIYNOOPATMPssjeClnDmPv5pQfnHW9LnWiOx8z84
	/WVSMe5sgC4IwcmrjbIO5j4G2EX1YXXHx8CzT6lzzbIBWFHDq+Ib/pjY
X-Gm-Gg: ASbGncvUrXGt+qEDzX1MF8/E5v1rz1xb7+aNE9/PIVidgcdMi1dks9NZAORcTAwNGF2
	mKHIiZPvCu+TYhYSmf+thE3v/BdPHDghRLNqitWelI8m6QuTqGr7GQ+xmDmg4oluFIdjUVicW8n
	9AzBzGB1JegCxQZcfaG+44VELRIPsnd636D9kBTNIQN1EdJU8qlUJzHk3zKTYI2VbLU3QJQyAkl
	gXqdkPZt0tn66KNEkNwe2CryXTHkSgb971gjbjIP5X53TBBH3sFLiHvKw6JmVfrY1uPyiXS4S2e
	NxyT+yQA9jV+wgR7f0xFljyl9unVdBQ7CMMt8klicw4ldKzWaJYNycywmQOLFJ1u0pq95gQuXBo
	e4eACY5Cc8UKQ/NzbNbDLdati59ny4s52Pp2AXuT4QTHm1OncZuZScJ1b92RtDIFNH8HEYM7w5B
	mvHoisLZWQfy1LkAINeTTRKIrHtxIt4BofTR/6ucabxRGR37fgOS4=
X-Google-Smtp-Source: AGHT+IEoZYavaM7njBnG3D3Z+hduFKNotyz+5aU6kPX8BleR1uI1Sy5GSDkuztm0nYl05g784spRlg==
X-Received: by 2002:a05:6a20:9185:b0:32d:b946:dd20 with SMTP id adf61e73a8af0-334a8566437mr3249260637.24.1760678322944;
        Thu, 16 Oct 2025 22:18:42 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:df8a:9eba:d1a8:6b39])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d993853sm24177361b3a.74.2025.10.16.22.18.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 22:18:42 -0700 (PDT)
Date: Thu, 16 Oct 2025 22:18:38 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Ricardo Ribalda <ribalda@chromium.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Krzysztof =?utf-8?Q?Ha=C5=82asa?= <khalasa@piap.pl>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Leon Luo <leonl@leopardimaging.com>, 
	Kieran Bingham <kieran.bingham@ideasonboard.com>, Jacopo Mondi <jacopo+renesas@jmondi.org>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, 
	Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, Julien Massot <julien.massot@collabora.com>, 
	Jacopo Mondi <jacopo@jmondi.org>, Daniel Scally <djrscally@gmail.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, Yong Zhi <yong.zhi@intel.com>, Bingbu Cao <bingbu.cao@intel.com>, 
	Tianshu Qiu <tian.shu.qiu@intel.com>, Tiffany Lin <tiffany.lin@mediatek.com>, 
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Rui Miguel Silva <rmfrfs@gmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Martin Kepplinger <martink@posteo.de>, 
	Purism Kernel Team <kernel@puri.sm>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Yemike Abhilash Chandra <y-abhilashchandra@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev
Subject: Re: [PATCH 01/32] Input: cyttsp5 - Use %pe format specifier
Message-ID: <xirb6664gow5ldjy7xihkz2wooidbm4bsyl7qrm2uosdybdki7@mqkdqzeznx6h>
References: <20251013-ptr_err-v1-0-2c5efbd82952@chromium.org>
 <20251013-ptr_err-v1-1-2c5efbd82952@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013-ptr_err-v1-1-2c5efbd82952@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_221844_218825_FF98E515 
X-CRM114-Status: GOOD (  10.35  )
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

On Mon, Oct 13, 2025 at 02:14:41PM +0000, Ricardo Ribalda wrote:
> The %pe format specifier is designed to print error pointers. It prints
> a symbolic error name (eg. -EINVAL) and it makes the code simpler by
> omitting PTR_ERR()
> 
> This patch fixes this cocci report:
> ./cyttsp5.c:927:3-10: WARNING: Consider using %pe to print PTR_ERR()
> 
> Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>

Applied, thank you.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
