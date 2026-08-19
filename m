Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94580C5DF6D
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 06:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A31xtDsoHnh0bwOIF7RPbVuqyuyES8ddZ5rkUjJ2+cs=; b=XeuUf2NY0Pxvez
	AkYkxa5hcBRXmNij4iyveUwA9vXvyohMb5QKOC3wuCoVYwaj1XgwCTWSa5ZbyyM4MlwBpcx+AfGLm
	MMkuKA/ufZQxaRqy6phf3vHiKgbNBabDmUuOW4sMlXHLcR9i7SrmDfWgJCx2P7DFfp30V2VcUAJmH
	ahwT1d8ZnGJnTxbG4raRoa//Mfq6ZvBLlOQ1d40deFgpjI73NWZ1wOzcS39Cc56kTjqEIwi7dQB7q
	7QlCURK6pv3LboAibygW3bh6NCOQ6fT87ZmhNYZbVwoMRKwsXKtsNxIVFeNS2xfR3Kbke4g5B0pjZ
	Olt+eArKVpkE2QFLYwSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwaAz-0000000989f-2o5z;
	Wed, 19 Aug 2026 06:53:29 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwaAw-0000000988h-46SB
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 06:53:28 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-49545ba3d4eso3139265e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Aug 2026 23:53:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787122404; x=1787727204; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=IpqeN5lIytC9amcBTT7riRYHzG5rbVz5f45Yb8g38Eo=;
        b=g4ngspOQwN/Er5vDVxkd5piUwjYmfPHNM2SJxLA+GXqMTY/nfCHhTeURRxAdl0I1Vj
         N/7ERvzDRFCOIf1liYOpNGug4di0o+2T1I84BI2p1rCC0OgeUa9R8UPrPjlCraMtDOZp
         N1gGusgBjFsJnso1RC6bxY672sqJXoWYcI0zHmbyGDaem9dnD5c4Un0/v5dvoA2Skb1I
         cz4HHYsqEUgraBtuJ3H/zCms+q4TsZwBK8PavU1zthqV90xyVujCtOQ6i3282qsYitvu
         JKOItnQs7kivl6lVLHg3CgOw/xgmjtcmIETaWLUO51nUxkfoWG4JJC/706Ly+O+HuH0L
         JuvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787122404; x=1787727204;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IpqeN5lIytC9amcBTT7riRYHzG5rbVz5f45Yb8g38Eo=;
        b=M31YbN6PlfVipCEBfmYio2uiU+Rp7jVLcbGegfT1Mog9w5Bp/LH8SOYfPNh3q95oon
         YgLG9CfVwdcvS6hm2cYQ5FVd1KfwJDOiV4H/jvtxAOcdi8xrKhor/aTx7BcbPaBN+KKz
         XY3u8nmTDyOzTduxsZujBsZZs3b7LZ4jM3jCK4UF1Mg/37CbdsvKzkz3SUCrlJ9ZnE6X
         gvgbNWC9m00m80FS+HJG3KH2/qyj6at1FD2Pq7wncYYliBSv81WmdK6zvnt3iI0ejNPP
         sMEdNXYZs11USpLbX+iN6685cHDX2U24nNu7fVTcrpI+4N+NVcBgbgc3PUUEdMt0eUaD
         e/jg==
X-Forwarded-Encrypted: i=1; AHgh+Rprb8hzq784xJ5jzI5qZKaGwMf2Wi278zgaWLhSRefDPjvkYsGAY2Yga56LiuisBZgDn6MAeUQ6YggPqta4JA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwvPwR/crMk/iB4Oa0PvrHh+X6JN/fESfuWeWddSaPlVK3ojehB
	SIgyeigc0N1hTWixRyWOmODNvkajfGZWZmzkJ1pdRJ2ZoigzNurWB3Zl
X-Gm-Gg: AR+sD12sTl2mR9qoLiKCk8ZIo4TszT8ainHHzta9MN1+G8U0Q0OI5T1zwJYxj1WG/mg
	XZdSpgNkzid+Q059rL9vv8dBjfaaMVnsKArrAqJrgMVZ0nq2FEy4GlCQ6FmX/4Hs1VER5GcsinZ
	6qtQQAiLE2FtzyiiPhiYLvJP3fvOYVntOnN1ARopNDhM8aMMvF6b5+/LCEsuJXtk2u2WivhfkPC
	mCyp/9DvV1q1ldd4WfGY9+xkIGB2RdkrE15IhLGmf6fuT6CL/jITPlhuDD/oohkG9mjItVvbIA7
	SUQWP7fx0zyAc9fvsbigtPBSPUyWNib0N0r8895FhPzm1J3jT+cZtIJR18/O2YMYFxi9yQdd+Gb
	a6n/YoHTPcHrWRBw5tonVIbrZQBuhsrn0RkODRki5D7NOqW2w/y8Kl4WqsQu6cJcZ6sOPPMM5Wp
	z9pjmEMHrjpmYYmRVwzy1AZNghbbFpWGA/x7vtIoIm4QvybDFK1ZMRDeceB4RucRMx3UVvK/zdj
	h98oYdX2LiSmUfVnsTDt4Xyt0YMRhsSI2fYadw8kbpanGwFelHWWvj9C3LbGFpvlNSer1MO25uz
	tCNQqLlZzDmHGhSd2qDzIEgExgnXAPDta/ABrX1dU/QSx5ty4NYFbqQK513Jhwk2HYJs9HVis8F
	yaoLUDz0NRyHcJhp1Yz1BoFVQsN6Khfn1usuGMs5dIbenlsmoxoCHDn7ITAbDSxYHg168qA==
X-Received: by 2002:a05:600c:4e55:b0:499:a07d:a482 with SMTP id 5b1f17b1804b1-499aa1a28efmr46091735e9.10.1787122404470;
        Tue, 18 Aug 2026 23:53:24 -0700 (PDT)
Received: from localhost (90-182-112-124.rcp.o2.cz. [90.182.112.124])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa0d6a84sm35256565e9.10.2026.08.18.23.53.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2026 23:53:24 -0700 (PDT)
Date: Wed, 19 Aug 2026 08:52:55 +0200
From: Joshua Crofts <joshua.crofts1@gmail.com>
To: Vladislav Leonov <vlad@zlab.su>
Cc: Jonathan Cameron <jic23@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Andy Shevchenko <andy@kernel.org>, David Lechner <dlechner@baylibre.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>, Rob
 Herring <robh@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Simon Glass
 <sjg@chromium.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: adc: rockchip-saradc: Fix RV1106
 compatible
Message-ID: <20260819085255.00001e60@gmail.com>
In-Reply-To: <20260816113636.33635-1-vlad@zlab.su>
References: <20260816113636.33635-1-vlad@zlab.su>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-w64-mingw32)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_235327_201568_AB3A24E3 
X-CRM114-Status: GOOD (  13.23  )
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

On Sun, 16 Aug 2026 14:36:36 +0300
Vladislav Leonov <vlad@zlab.su> wrote:

> rockchip,rv1106-saradc was folded into the fallback enum together
> with rockchip,rk3576-saradc, falling back to rockchip,rk3588-saradc.
> The two IP blocks are not equivalent, though: per the RV1106 TRM v0.3,
> chapter 20 (SAR-ADC), RV1106 only has 2 channels at 10-bit resolution,
> versus 8 channels at 12-bit on RK3588. Documenting it as falling back
> to rk3588-saradc allows device trees that would bind against the wrong
> channel table and report an incorrect voltage scale.
> 
> Remove rockchip,rv1106-saradc from the RK3588 fallback enum and give
> it its own standalone compatible entry, matching the dedicated match
> table entry added by the driver patch.
> 
> Fixes: bdba14f6122c ("dt-bindings: iio: adc: rockchip-saradc: Add RV1106 compatible")
> Link: https://lore.kernel.org/all/20260810090826.146758-1-vlad@zlab.su
> Signed-off-by: Vladislav Leonov <vlad@zlab.su>
> ---

Looking at the link provided, it seems that there should be a Suggested-by
tag for Jonathan?

Otherwise LGTM

Reviewed-by: Joshua Crofts <joshua.crofts1@gmail.com>

-- 
Kind regards,
Joshua Crofts

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
