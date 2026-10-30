Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D666D606A31A
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 11:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JgA9wcEF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=Zf38XACO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vWY8C5hQZfR/wKDvTMJDkuJ+Y1orEDO6ooWDhgLdrrA=; b=JgA9wcEFmnl4HeHk3juV4oeedw
	7hTSdk4HsJIwsu2jI2AyYXynAcO5otLvk0Jg8ihxsG/Y22azajopk8hzxpEf6Rly13ENUnGwHws61
	hMnP6jH6AbXB1VwxxqhoG+tFONHJMIV2zSoIJsoIaYRrTVu1zBZpdMKa1mGLQo7QZtxZr5zbjxv86
	R//JsNC+AjLtDvTatSZaS7e+9IojjG7ZYv9JmqpuRHSEZ6Yx2yYOYQ5/AUjtHzFvcGhBZMZ+ZNf0E
	s52pTQFc9hJpZX+R/NcD/DSjVxc2nvzWoHtY9AdUurAXnyEDwx6m4PrFZiSHyb3RydPEJ9rsy/u8Z
	3WZSJ6Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMl03-0000000BZsW-477m;
	Fri, 30 Oct 2026 11:42:23 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMl01-0000000BZqy-0asG
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 11:42:22 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-cdab9e9761cso356869a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Oct 2026 04:42:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793360540; cv=none;
        d=google.com; s=arc-20260327;
        b=Gth8TxTd5ZD3SsVlAJiZAlye85qwzVhr9yY6QNYzFteG1rMLooxRahubMHL6vIdrzt
         cGHpIbAB+lz/WDLPnYsJdXgUCZEGdLIp2VhjSQvcne0n5Gpt8VuWdNwOSu6+IGlnxrPQ
         /nbaY41GTwHEy0IQyeKUaO5EanzackqxzVGeOeONgHOLQi4zD3/5Fc10klZMNZrdaQ2Y
         79iAVxIwZ5ZNHtDGeyzWP1/dMSDk4ec23MKQ5cijmSISH7Y4nlg9QpCoydKJX3t3BjGy
         Ao9s+7O5B0ABedvWUA3PAFX+T6K2g3N13mIgdJtufaF9X8Y67zS/zJywbwvIWmICmxqi
         DMGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4lcETnvcA1FO4VShSmFGhX4tA8WQyd2jA8DOJ8G3k5s=;
        fh=VdTfXDgyBf8SNU/MYhio3GbCL21kJr1xhZrAnA57z8E=;
        b=EHXihCAMsG11iuHkG6pC2dSLEg2RBQEDb3YpDnBZMeVE1ft2f5d7o7n7Be04XqryKI
         qr9dce9a1CzIZNfOHucALd1QRXg6JK+/zMhV0r5nNhkHxtSPDIvQQwf560N9zTsubj6a
         8Ag9kGwGAhRnCACD6rRvwMNoQuobDYHQZ5VESvVS/Uy1aechTXksyAS3GMkZ1VF2VhsB
         /VjzPj1lCeFE/FafRr3vSc+Vv1mUwL/smj9XMe3RTdd1APtq86pNRhFeiDtOdu4j+h8P
         wpl5Dsz0tZMgrx5o2MfsRvy0rv5h/VliWUr3tb+iANQC2zMboQJpFDuS40STzAc5NFxa
         qrog==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793360540; x=1793965340; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=4lcETnvcA1FO4VShSmFGhX4tA8WQyd2jA8DOJ8G3k5s=;
        b=Zf38XACOrafcLaixdmiZszKAXJbYvNxg6Z6N+GTQSw1Gc2yuj8rhylPcYgdH4Tkwt/
         va2nyO2cnkPDIfyyQETA3trijCHw+ZCmwVFtK/aEH1AAlFPYAVbniMo6VFbUN1BU1GvM
         UUEokSB6kSJzG3gMK9QW5seLOrRzsc9/3tJBWJc+2lxXPnul2NfOuZWRULzsYQkTrocq
         7gO/B2KrvS+Lch1+BrW5cd0w/fbuB1fUIppAtxlq1ZDG2SyYP6JVZbie2kGkIVKcMcLO
         sVcFP6bNJxaUPV7XvPPTmOEuyv3GoOmwjHfCAxE+qiVknp1A1a9yAy/JK2TNCAXFkVqR
         NzUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793360540; x=1793965340;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=4lcETnvcA1FO4VShSmFGhX4tA8WQyd2jA8DOJ8G3k5s=;
        b=lWgLHqCWIWTT7/HTNwu4zuxai3KQayHy3Onx0hUqJIA0lcm+2xlUr52Bb6nuqpoBbk
         2e2g/Pap3aMUq6oaSomQvazzQvXaZ5F5AxBUahH4ZFhlsDvmHSq2NIY8qEL5JvgxBGqV
         349WsaO9xzAm+nXf7pCIIqYKcn36Iq6pv1tsXGsbmRUfSxzAoKHLhpIKjhViIGgTrDww
         zyaXPVZK8o8yFYdBgVRCGZHDxQYRvzR07qwb6N1OJLlYTbqEAoj5JQSIObleBnhD5OyV
         oiPV9a+AlDQEdAM6N6ULLWH1Q71Cx/3397mwewdflde3xGbLnqVyCpr8q3Nxx9y0y6Bc
         qapA==
X-Forwarded-Encrypted: i=1; AKwUvBweMRYDO11IyvmLPpJGID3Xi4JurI/QTWUw/Ri4BQdwZXiZ7iCy6Yna5/nz7eZ1+qDeesGhXRwRMAdQW9BwYw==@lists.infradead.org
X-Gm-Message-State: AFq9FYLYoqPB4UezqTC0e3xPQjGDkWH0zw128L/OCDZft+voywYUKE/S
	WzST4TcvRaIzZYyjNEGP/p3gyFw7Qef+bxgla9EO74HnSRll/+SqGJjgz052g8dbUQi/mIbq3XA
	9BvWbmFEkjCqj3x25nM1r2JFZ1ROZa2PsuHMMPRJHHg==
X-Gm-Gg: AYBFou2PCqfuDCMT8BXRu/U7vitlGVC7tPAV+zhk4bc687UygUpsTqajq4DZycGscMS
	pf2sSIh4QSmaw9o8GRMGqZvYWdjGpKBOYH/2KzLwKFFpLsTjwnxJTwGtM8luyjWxKrkjKwrLvhN
	lqtvFluPIe7+xjECtqtZ1Tke4VYhRwvE8IOrwhakX4Kbe1ZIRXhGb9nRrFqSNbX7vAf5+KLyr7O
	Oh1Qb0GXmKpRXlXfZapRSnZLGtzdljZyPbFOqSBytclKi/n2AfmCd5unP+RcXFVeeziGgnxNsz/
	dqFEB6DTDll0r4ZTTOzoTFeGa94w6eDi0x/FNqye/YUxoVp3CSbQUtQwPoczCapfWdEgnKOvO+E
	zpQB8SylrlQlQqhrZY9YM7WMdMcO8ps3s101R
X-Received: by 2002:a17:90b:570c:b0:3ac:8897:7ba9 with SMTP id
 98e67ed59e1d1-3ae8985d52dmr1762888a91.56.1793360539713; Fri, 30 Oct 2026
 04:42:19 -0700 (PDT)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261014-dw-hdmi-qp-yuv-v5-0-6fab0fe43a9b@collabora.com> <20261014-dw-hdmi-qp-yuv-v5-8-6fab0fe43a9b@collabora.com>
In-Reply-To: <20261014-dw-hdmi-qp-yuv-v5-8-6fab0fe43a9b@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 30 Oct 2026 11:42:08 +0000
X-Gm-Features: AclHuK-tK26BAq3qSwy7dk58hnLMShmnME05ES1MHznr_rkGJBFi7nJKvVCEwy4
Message-ID: <CAPj87rPsh_cVQWtGEisDrXWiT+Zj6D6n5wXpmbuoFvMKtOi7TA@mail.gmail.com>
Subject: Re: [PATCH v5 08/15] drm/rockchip: vop2: Avoid DCLK source switch for
 10-bit YUV422 output
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
	Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_044221_255006_D3BEE76D 
X-CRM114-Status: GOOD (  10.12  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On Tue, 13 Oct 2026 at 23:51, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>         if (vop2->pll_hdmiphy0 || vop2->pll_hdmiphy1) {
> -               unsigned int bpc = vcstate->output_bpc ?: 8;
> +               /*
> +                * YUV422 always transmits two 12-bit components per clock
> +                * cycle, regardless of the color depth, which from a rate
> +                * perspective is equivalent to three 8-bit RGB components.
> +                * Force 8 bpc here so the bandwidth check reflects the actual
> +                * TMDS rate and avoids an unnecessary DCLK source switch.
> +                */
> +               unsigned int bpc = vcstate->output_mode == ROCKCHIP_OUT_MODE_YUV422 ?
> +                                       8 : (vcstate->output_bpc ?: 8);

The nested ternary is pretty violent; please write it out explicitly.
Either way, the equivalent clock adjustment for YUV420 is handled in
the setup_intf_mux() handler, so would it be better for YUV422 to also
live there, rather than mashed in with bpc here?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
