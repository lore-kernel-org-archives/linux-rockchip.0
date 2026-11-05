Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B1D606D805
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 12:19:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YT3HgGxx;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=TmlRDwjS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=d13cenBUZdoThKT3yzA+D1I1Cv9J5AbwPD1diUTWJrI=; b=YT3HgGxxltRprMg1rMRDXz35OM
	KI6Lp5NBVN9X0rA9u4zcqVsG1th+R9ZwNzMQbZcQXz2pfRO+W6DtrmeDUCg2+feF2zhb/PUZfL2pO
	ix9sx6o8tLQ4HV7YqIB4PM5rhFGvRifrkP4J49utkgqKTeRyt23Y4wRaQBgxF3kwa0+Vw0EDxv5aS
	S2RIQi/42pMoFShFp/wWZUuT98n0ga0S65FU1+Rl0cZshNu3/o7zqbFPzotDfn3dmbt5ikE196rKi
	5DWzquxmXFTw4RPL3OSuNPdK19huYocpviwpieQKFuFqNo5AEiQ/e026zZKoBtO3/+WVNZt0qOCHt
	5mgvh26g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwQz-00000008uJG-065H;
	Thu, 05 Nov 2026 12:19:13 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwQw-00000008uIM-0Yvq
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 12:19:11 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-cdb681de50eso33003a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 04:19:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793881149; cv=none;
        d=google.com; s=arc-20260327;
        b=ACbHLHViVCZjj6wIshOuCQQ58Z+nVoMWt7QX2tPifQITQPamWADxz0vS2OSDgeSHPb
         j6l2Ambxw7TsVWd161YTazXyKssA5M3iDlX0Yiaq47n1jX/sExhjhVY0xYx9IOj4G/5O
         6cSA2wF66eeORYWmbAVTZ6HtZhh9B5VH3PJpDAl2mHxcS5FN+FUXjtNxVEs5rGgV1P1k
         T4lUtoo7wVsvJTVgUqqqNhdaB7FrY7L/IaJvMLsRkbBXQI+I6PsCwK2pjAPmbbO7TyP6
         zuuOc4FFy/ClE0rs8ezGOQxjULO9BRQSwYvv+DWczrtMa97t9d97tILksSYnqegpEJoi
         fa9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bt4DUf+UH7jk0+BorwFH3uFk7RSEIMOEju+OL5ej03Y=;
        fh=Qh4QcwGPgcPk5w+eBsD8oJKMndtoEFPL61j0PLUMifE=;
        b=Vk4SAGowD3T7VL4fXItCeHLObrxaeveY3xpiu/T2HQROBp5ILNthml6cjuxVV4cDvK
         1Xs+sWgaCcjeG2C6AuWcjIYmy29/d7osppWyjF1YK89tdfMlq0PZsU+AnO4QrR1bhOI0
         mSlOO8gXk/EjdevyAjNV3NxpmGLJjmYODCb/Gi4KDcusK84VyPuaN8WoiGnFIQDQt5tE
         2tjGduSQJGPS6qex3KofRwGkv0jRxi5W7PYy998COAw7skK7G8oV5GLssOHOA8YWHisC
         twgJge3o2LNdWTCw8RuFiSvn04RwjPeGAmp+exr8ZFolLoGhtHLE/YjLow5MirKUAV6T
         AkMA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793881149; x=1794485949; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bt4DUf+UH7jk0+BorwFH3uFk7RSEIMOEju+OL5ej03Y=;
        b=TmlRDwjSsHGp+1K55G9sIQJXF0/b6BImXkZ4mvhs7fLKBxz/dkIgjmrxbh/N6z2JxJ
         gUT5J0sIcGRKs86p0MSK6dE+eFHhmpFQOCz92DLgH8dlSqOK4nXjpXbHb3/PAiC47YWW
         BfEhJBUNJObXkhcJQoxuVrLf+di/iuq11+70EseqKwuJs5mfQtMAQmFRVG6xaDUQKFCu
         Zu8NY/vX7bK+wLgssr29CXW+8Lnw87ws0e06/aYGhv7ahNuOOEStv9yO3xvsiFNM1SC3
         9UoxTcg+E0FAnd3ZeLZOv/GzeoS48ThLGqCycXRq4/+TIL0y8fwot1LVrHD57UO/H9gE
         iFMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793881149; x=1794485949;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=bt4DUf+UH7jk0+BorwFH3uFk7RSEIMOEju+OL5ej03Y=;
        b=ms+108kZ4oSSmO2X2qDeBJxWvSU9jvPwE8iw6ijJzT1e79VHwJP956xCiKMQsT0lOJ
         5ZaZmTNjSq6iAeRTm57LiT7Pu6uAzDgyiGXI1Rd8FJuvae8toiaDZ+wXxqWzDUbKNoMe
         VaPQlvtvou4Nhg2AOB0rM63qaNffAEwetn4ufSggnMg1rNwXykOD463BOgY/Etw77DJQ
         /GBYrNvNFTeB4UiSINhDgN3yC0dFWjID3q2Zvkkjv91CTHcJU4spjHzVcYCOZGQAs9kL
         txF6ebrrMzLit3jbofYioeS/EOwiJA6hX6+Aoo7aUssKUr/pp4m2P1cHJ0goNhwkEzEm
         AkYw==
X-Forwarded-Encrypted: i=1; AKwUvBzYYtV9VtZxG+KJR8qgsAdJCu2Vm/MgmCM8c2YtGV59k12N0xhXlbWTy+aFvBcwW8zNqrLDRUVCHdKqlKviBQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/elv/OC/1qNOkkxMryiG7msWP0m87CMcixtkQAChMr6HWgLuLC
	AChljAO21hh8wnfJGbPKkQpsfGHHa3XfUW+PWHFXIUhdxrMFAKpeT9pliNLtVD77PI7fBf6LgP3
	EO9UIXORk0ZBxcMLmbfGHy5THmCLGhlSuFxpYOwCs+Q==
X-Gm-Gg: AYBFou1DDfpD8fJUjr4Y0xNUNh+K7XGGrXIfNxdfcs2QGeVeMDA+vFPp2EtnY2fNRZR
	q1cEyWQDy6/HH5o5yLwNJ/s8AJEnr8Un5cPo//OzJsRIJXFADHguoUWyp5PJrNV3pIpeqeMAA8K
	x7M248geLHhFZKyxe+ec7R3RPFZTHwpIJV2BNrH+ULao7KFpzm/A7guobe2OOO0GT0bevU8Vj5m
	kA2wHml4Cl/aNTHIg8F/hD22tFJ0fRiiiHJO3AtTuzVxdqQvCUJhFw+TAeKkE9Oog/Ny1z0Y81e
	nd5F78oT+aWX3e0Vwrn6r27KVkn5KuNG7YfFSOoMUJOldL6RcNUFUSVraPl01iRae/oADRBQTz4
	UbbXDLAK9IZ2HYd4sAuoWoRbs3kvuYJ26qOG6
X-Received: by 2002:a17:90b:2741:b0:3a0:e4ce:31fd with SMTP id
 98e67ed59e1d1-3ae896f8304mr16451431a91.10.1793881149147; Thu, 05 Nov 2026
 04:19:09 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com> <20261105-dw-hdmi-qp-yuv-v6-8-1bb63ef5766e@collabora.com>
In-Reply-To: <20261105-dw-hdmi-qp-yuv-v6-8-1bb63ef5766e@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 12:18:57 +0000
X-Gm-Features: AclHuK_2VZ_bwNEEFECKGIAUHsyDmb8_QQvXN9pJrwLdMDPCY5CttgkKVemI1Rw
Message-ID: <CAPj87rPk=girxTziKY5ROV3ZYqGhKRz471BLWpkCjtvNNseuog@mail.gmail.com>
Subject: Re: [PATCH v6 08/15] drm/rockchip: vop2: Consolidate HDMI PHY PLL
 clock parent switch
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andyshrk@163.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Daniel Stone <daniels@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_041910_174091_5B83243E 
X-CRM114-Status: UNSURE (   9.25  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

On Thu, 5 Nov 2026 at 01:01, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> +               if (pll_hdmiphy) {
> +                       ret = clk_set_parent(vp->dclk, pll_hdmiphy);
> +                       if (ret < 0)
> +                               drm_warn(vop2->drm,
> +                                        "Failed to switch DCLK to HDMI PHY PLL: %d\n",
> +                                        ret);
> +               }

I'm confused ... if we have switched to the PHY for dclk, then a mode
switch wants us to come back to the CRU source, don't we need to
reparent to dclk_src?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
