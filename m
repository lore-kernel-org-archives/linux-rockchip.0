Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C595D606A335
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 20:25:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PfeSMhJv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ex/U3oX/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ob3H0IOhiMgE5GkDz3cb8upe+wKf/Zjo9i72FI+bKPo=; b=PfeSMhJvAQ99tWK2ej2qUD95gP
	vqHF1ejG9KeINTKmTQGPPltGF7jBAHAJNhCH7+Vq7qvoAk7ZwjYO9QtUkaZQRpXnnnxYrx63MjI7d
	R4+NSpriJH/2Ay5Gj9jw5F9IsaLkEb9Ipct65bhR/kHXu/9bkC1dIM+A6BfMmdhLNhIfUixFIqH8s
	WlO+iz4fObr0UMElI/Kks53bSvvjIFrbEGfDwZuriZNuYPDqJ46uwDY+d65eCfJM4CM9ijP8LOapG
	joCioIxoO4zWYjVSNFqu3pBZJsPDV5Kr7w/cC1qeSnkg8xwt6Y//g3PgWl+UVw/4P4ehHGDhtOiWe
	ziHxqkjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxpZ-0000000EOi4-0PdR;
	Fri, 13 Nov 2026 20:25:05 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRxpU-0000000EOgF-0pTk
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Nov 2026 20:25:03 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-3adfb0c9e3cso2655661fa.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 12:24:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794601498; cv=none;
        d=google.com; s=arc-20260327;
        b=lau7BiVubRGhVVpHJxxgbFgqqywwk3RH4z7kj2APKku8uT/Qq4nke+X8mqjJkAgf5c
         lH0L5vQqm2zmjuvKw+YSPQJW2T9ksQoUQSKtEs96+5o+Gx5oYWZJjb+XOqCEzK5Vkjso
         SK2rwnxPq54SRWb/KvJXHB2PhJntsqGHZoBYIcUCRXE5o4h0NrKwkLmYgx6/B074B21j
         ZA9v5JzIt+/oBORAqa2peQf5V7Ad/fnyunPXFqMzpu8A40gOGHjRuEMG/+u1ZQ3xfqSI
         3vmwOsuEwJpR1tuTS/3imeAEuiynUqWVa6WCl8skbXd/Wl1mcGrhymUAxFyo8pOrFxrE
         YuMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WU1bfrRJnySLXBq2fMTwUjF2uo3KDqqVLdyu6MbMrY4=;
        fh=umXe28x5CS0UDEz/LNwGKKNetp3CFyY96DGgMWHzfaw=;
        b=QS45GhT8KkfgWi6YocYgecvyW33gGCJWfDwsa+AA6ZWgzb6RSKrVnQ9RzMlnO8kQ3r
         O04Mw6tZ0Ln0MNwzH2D2J+rXDueen+G1T3yuvCKcFst9avcMZl8j5XEhLSzJmfOa7CfD
         r8Ulc5hyGewYpasPori3G1UVMXrOgop6GL/3fpKaVWJ/gKHjVf2hAbQP+CImJfQmVoFx
         VUTLVWkgeJDupjlCqP8CQYIOTdppjrLRbKkd9mNjD3JBY8HRtvvhehvdqK+IbMUpYHaj
         clxDWwjcNRu8e7s4MUFwci6aQu2rs4p334FM+ha4/T095h4f1kE2mdl1p+LjJrUQTjpC
         dOSQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794601498; x=1795206298; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WU1bfrRJnySLXBq2fMTwUjF2uo3KDqqVLdyu6MbMrY4=;
        b=ex/U3oX/+6AbdyptIXjo44xdXSy+K/+5/7wI2/qrW87w9/ukBw2ZeUqC7ev0MJ4wZG
         zK53Qcifg6K1qMyHTQTLGjle4IreaynB/lHTBJMDhQnsMGieCU/pllhShaWzB2L4TJjP
         7jFVMH+jXrCdS5UPdtfTIEEulO9CPtIqEwB2n5sMBHdi/LXNGaNg69IYyobBjX3y/Nyd
         wDbKE4CyoW1HUgR10vk/JmYS5uKYxMwdccmvb4NUn2MchjhDAEpXOHHevoBJMG00yOkU
         Cgn3akdOpK+s+l7WvHUlf2YCkfHNMS6IBNdTJIhnC78kPgwq/ZXDQnKJ6cSZFymfHwUU
         oUig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794601498; x=1795206298;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=WU1bfrRJnySLXBq2fMTwUjF2uo3KDqqVLdyu6MbMrY4=;
        b=mN2bpMaRRSb434Je1ZmU4yD0hivqwPHYECbmf9oXfYO0nwkP9xAY7LuSYiTiTcSwoe
         RAo+Danr2UlXqOb66weVvlydTGtvP7XnThdLJi5MRFeIUyrawhyTgHz+GCF4MyDcIHqZ
         Eu7pb4Cu2nGnuHw1t/Cg1zxjJifFE6ymrFUmnABjKhMzpklINFSxZ0kGpwGx/IJDMhHE
         jA+nQHmXpbO5TDCryOuwzKPZ/gblCSFcBb0AM5o+9t9q5lFoF5S4bEo/J9LejrLIRdYU
         8JffIM58k+wgP+x89lhUkfp+Q2fRefhUfonxXA1RCdKGTagHneKn03oekhNtCBcqKGTO
         oTyA==
X-Forwarded-Encrypted: i=1; AL+hErFMuAz3S57aXArfs2hY31Wfr05+CDkYihborriXFtGZnzQ9APzMnwKcXaSC+K6HIrQet9CwOMz42XyqOPNjJQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+ZxzjSV5mnZSGtYbltnUWumxFRJeSN/Ou+xUK6rOD55Uk1s9Ef
	b2VLRlxoBcr3drO0FZDP8ynT4YpRaIN6zzMpTYV4SvJgy79wqSYf6I8/Xsmhg2BKkjGld+n9od6
	fY7iVDGU4jOX+htwR8I25aBmqwQp0Fzo=
X-Gm-Gg: AYBFou1PH9IXpqV9IiuyqZC7QEPnxgx23gHQ3db3FMXuT/OXuVs1pmeEICzDckqPPzB
	GCxUzGDt/QvCsSERGjF7NzYqZ8E5PGJwT0Sj5jOUkZxyu5djnC6nEmXjzbqkLEcE7SjNvsQK1Hy
	ojyMNGWTBeaXrjdpAXFKS2hduoeplHsXEWAjMrJROR0Wq8RL23a2TnIqSDfBcUMv/Vte5mIJDrX
	S3MUOmlE6KOTwb1MmuDjCXBtkD7GQIzLzGHoeOlocSDsGc8qDc66ssA2XvQqhXEzCcIww1meztU
	XDw2/xvuwXONWd1eahBYzc7AJn46OMVJKI73P/AeXOZ9bbtY8QfDn6/+8egKk+A9qe22Xzp1NJN
	BgNtr46S6RWSiVjZm9d4qHIQL5dKS7RpSuM/cvjFNzjLAwlKet/GWvhCOcYARSMBaVSM0wtA=
X-Received: by 2002:ac2:4bd3:0:b0:5bf:f87e:3d25 with SMTP id
 2adb3069b0e04-5c17075fbeemr1839415e87.2.1794601497810; Fri, 13 Nov 2026
 12:24:57 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261112-vop2-fixes-v2-0-8218c1cf8ac8@gmail.com>
 <20261112-vop2-fixes-v2-3-8218c1cf8ac8@gmail.com> <a5b52d95-7fa2-4148-aa02-cfee6f195e1a@rock-chips.com>
In-Reply-To: <a5b52d95-7fa2-4148-aa02-cfee6f195e1a@rock-chips.com>
From: Arun Iyengar <aiyengar1990@gmail.com>
Date: Fri, 13 Nov 2026 12:24:46 -0800
X-Gm-Features: AclHuK9InRTgWzumTIOYOi5MivIL20TRnUBG8RNDv3yJlv7_a6OpEdGqBKKf5lU
Message-ID: <CAEy9hNVKy6sTA70B8kfhP7eBFCUFobFn4SvXUGMxzCs-bpXW0A@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] drm/rockchip: vop2: Fix the HDMI sync polarity on RK3588
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_122501_715346_2C53DBCE 
X-CRM114-Status: UNSURE (   5.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.8 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Simona Vetter <simona@ffwll.ch>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, linux-kernel@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Andy Yan <andyshrk@163.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, Piotr Zalewski <pZ010001011111@proton.me>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=0.2 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Damon, Chaoyi,

The TRM names GRF_VO1_CON0 bit 5 the HDMI0 vsync polarity and bit 6
hsync (7 and 8 for HDMI1); the driver, like the vendor kernel, uses
them the other way round.

The HDMI controller agrees with the TRM. With patch 3 and 1920x1080@144
+HSync -VSync the driver sets bit 6, and VIDEO_INTERFACE_STATUS0 reports
-HSync +VSync; with 1600x1280@60 -HSync +VSync it sets bit 5 and the
controller sees +HSync -VSync.

v3 keeps patch 3 as you reviewed it and adds patch 4, which swaps the
two bits; with it the controller reports both modes as set. Please
shout if the TRM is wrong here.

v3 4/8: https://lore.kernel.org/r/20261113-vop2-fixes-v3-4-08ae37e83b5c@gmail.com

Best regards,
Arun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
