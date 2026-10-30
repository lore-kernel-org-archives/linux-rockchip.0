Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452B7606A31A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 11:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=WrpOYFs/;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=X9YtF1t1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Wy5yqfdI4FN0fYIi9l08Hg1iQmKuNXdv6NUvhPjSJDk=; b=WrpOYFs/9PUQ5/j9E15zYjSK/4
	zIH/Bzx7OTmuVjlPrRd/Fg/pb+dWCSH6OeX/T1D5OwbtlKrxCeWeQH/5V8j5POxefhbZQDdUmCUxr
	F/Mm/kMIbVz6fn+sDF3mbXvbKOv7teNz0sveXZMFYT4MVSqklG3fjEIJXDb6H6GpOhGxrB+oK0y1a
	vdc12me6e1625jcFd3EZ+qSp0HdhCedBeiHfG95GcIgLHl/nvvwlV9rZFkGfOi5ettuEWrpal7I6B
	EWBS1zlfKPwzfwfqcOsp097CCe6HG3XmcT7LD0RdJ0bHk5pNOCsombBoBnwP0V4lpRK55MyjBK+Zu
	1RXAuASQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMksi-0000000BYtd-3NSf;
	Fri, 30 Oct 2026 11:34:48 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMksf-0000000BYst-22wC
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 11:34:47 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-2eac4877accso2022445ad.2
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 04:34:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793360084; cv=none;
        d=google.com; s=arc-20260327;
        b=PiYLRDyOepBS5s9zkSFR/QuzKVl5T+H4bw+pKJKaFmohFcrkX9SmD9uNKrDt2GADr/
         /z4Rwt4kCT+qEHTmNWAlENsbQJUV7amFqevtXhz9lovfZlh7Oq9Ri0TM/fJoGLiXFyR5
         a3JMcDTzwTFpVzzSQy6kQauSTQkhVAFLBUwgYUSBJvRoWzGI1ALu1Q/6gKWM7XopswyQ
         a8rdoy6nlXQtE+uEtNcR+HNEfVfB83kU2WS3YCVGuEg7rMXVsRrV88kEeuXlg8Vh+o8B
         LK9eW67NdwipJ3EgntwJZiM+g6N2GiXU8J7G+XuqXpFPYo19ieDfQOKozgtPAdVEkRtO
         HJoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=c97+eBSw0JgaFK2XxPHQ2OocTE5xGkKfdIwT0n7EkqY=;
        fh=oQNpnJB44yAYfs+lj/KxBt4pykxpRaxWWoiQAwV9UpU=;
        b=StrzioHTfsl3fZZdBgDh6wX+id4SjfiTqDaN2kbPtBAq7B5Pv1mEnHb7Aqk/hXzHhO
         OnTaHkrXa5a/pYVXfQYEqM/i4RaSMFdU/BihzCu33Kk7rHRi6ONckzys+ABaKx2f2GIh
         1l35N7aBGNl+JwJX/7BQTnwvJiZdLRSyUqYAFEdr1iPyj6zjzL5B1hwctKKYts57fG7o
         pntvmX8b4+9X+RTubPR7Le5cHq2Td80HxULNc0ZRxR/fGaTtmNa2Zn6N5yXF7bPErrrz
         /Y+789/A5ZsVHdRu10pmXi4OxohuLpgsgt6Qm8z1MFjRgbdv4evWk+xm1HLG7GAWUmkq
         GKpA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793360084; x=1793964884; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=c97+eBSw0JgaFK2XxPHQ2OocTE5xGkKfdIwT0n7EkqY=;
        b=X9YtF1t1NxJuxyn1q/iCYcz5bITsCAQ/7Vygleeghw8KOYLHwoElPTf4AC6OG+TRpY
         d8k8FT2Y+wYtLtJ0XfXPLjsrv8aDdrXWmNS3tFowG+VbQgYp1oS/vLKOXzBKvd4rYHcB
         QsIuLGW6g5aPL6e3lscf7MHWuDqmJZMlOu8zubOccvCI1CVrDVmhGZ6Y17YGRPHtCCWB
         KAd+CrpPl+m0Jz0PtuhzgUH91tkqlXXCDTpiF42rrxEuUHp12PIW0bnE3t+oMkr6RtpW
         lu/iY+7wxWh6X5qVKV7AShCKho92uZD11DZ/LtEc3ItxrUkEuzx5J+NmZL7owiD+H18t
         7zIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793360084; x=1793964884;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=c97+eBSw0JgaFK2XxPHQ2OocTE5xGkKfdIwT0n7EkqY=;
        b=F4bsCTlRsOwegoTOGNh0Kc8aCtQ78l9tlItiLn8/GYeqhW/VkoOKoQAQ0y5WGa+Ssn
         W2+9jGisIGI6xSrM+lMjm6UwkW1DuVAOWoh4awrRcoyA7pKXb3x08NP0Wgy7HX3/F1em
         y0Djd5yEoLdD/zMIunqNY1O9ytRJnnJlr89FV4VRlWByn/ERMHxDGGWeillvdPts/iNb
         /uFCqtEDjLNm2csMEhnhXYSCgo+AHH77kFWFMi3HoNWKihAv7J5+7L3zoEzoUYTQBx1g
         VzgikZt6KJ9SupuSA/9oBQx3ky4jdP6bfndI4HMN2H5u3uL16oDCaSGKei7EFTejHssT
         Z9jg==
X-Forwarded-Encrypted: i=1; AKwUvBwUqTBXt7pfsWOHtCHPck+RRqmb/7BxDkc3eoqwu8s5v9qq4RAESNoDYtwQ6zeol5ozQsyORBG3cZcZ43hjPA==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ/RzdVl11cBY8sMEiKuDsU5k/YCE9pUt4CwavXU/4ciEslcJX9
	kwOiIZlQ/651GWRmHIjJMDPJIh/4c7aPBv7pCdLIMw6tEuKwJlTq2RjaEF2eD8PjAKSXYygYZ5o
	z8kFF5g3VmhJ2pDqDt3drOwRXLx/n91MJPJgQN8XXDw==
X-Gm-Gg: AYBFou3SD+YSJ4qutgcTC6VU7TPkr4IgJS8AUA1N7tD84umShiLYsy0E+xumxgO/o3l
	/bFWTH8UMrAQOBGnLp4KypYOYjM+h8hyUrjLCZHREHSDDAbYsEvA4+6MHOKNHr79WOYdZlorI5h
	gXZmpPrhjbcqIYYs3hGOD9chr/d1gE84HOF3TTOXGf4raKFjpTto9o8OPR2EkJ73BwjUjx6yESx
	USBbzmZa2EdVbyWWI/qAz8oyQd6izT82M6CH7ckW+5im0n8dLAmIwKze3aBNw8lgRRGBq/2OwNf
	eKLhD1w72at1vSslmziObvlehMYYpyvLnDglzpVseuq1+Rn7EDI453kQLtWmO+Trz6XxUIhB8e9
	+G+xmwE3Yq/BrC2ksPqQiXSb0e/6Cov+mnigW
X-Received: by 2002:a17:903:384d:b0:2e9:9bac:2e90 with SMTP id
 d9443c01a7336-2eb3650d23fmr19334835ad.65.1793360084151; Fri, 30 Oct 2026
 04:34:44 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261014-dw-hdmi-qp-yuv-v5-0-6fab0fe43a9b@collabora.com> <20261014-dw-hdmi-qp-yuv-v5-2-6fab0fe43a9b@collabora.com>
In-Reply-To: <20261014-dw-hdmi-qp-yuv-v5-2-6fab0fe43a9b@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 30 Oct 2026 11:34:33 +0000
X-Gm-Features: AclHuK_tphtpQ4KgZ6QBDW1MCkhoNuUykWSbAiahdSvtWRJxD3fhHMWk1DFCw5Q
Message-ID: <CAPj87rMYHa6NmiwC3DJ30fSLukpyNJdgRa-Ri-TyZTpDu2NkrA@mail.gmail.com>
Subject: Re: [PATCH v5 02/15] drm/rockchip: vop2: Fix resource leak on
 vop2_enable() error path
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Daniel Stone <daniels@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com, 
	Andy Yan <andyshrk@163.com>, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sashiko <sashiko-bot@kernel.org>, Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_043445_527411_1E32DDE3 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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

On Tue, 13 Oct 2026 at 23:51, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> vop2_enable() returns void, so callers cannot tell whether powering up
> the VOP2 succeeded.
>
> Additionally, if rockchip_drm_dma_attach_device() fails, vop2_enable()
> returns without disabling the core clocks or dropping the runtime PM
> reference taken earlier, leaking both.
>
> Make vop2_enable() return int and unwind all resources on every failure
> path.  As disabling the core clocks is also needed in vop2_disable(),
> factor it out into a local helper used by both.

Reviewed-by: Daniel Stone <daniels@collabora.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
