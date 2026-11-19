Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A9B606A320
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Nov 2026 20:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=PEWmXNOa;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=DtTQf70T
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Y9jPcUvosKWdJbeO/zPx349kl25UomE41hX5uRb+AWI=; b=PEWmXNOadW2TtcwyHVD4jeNFAl
	4T90VcqPREQdaqY0t47dX6cvCI5BilHvE3OISjHtNfs13muahgycCOxDqQ4MwHaCaf0buazEmetpR
	+cqFOJMg13qYVpYwfbPUS4q0gozKRp/0+OIZ+HxprB2Cb7hH0A7g3ZIgRKDWWltqZtHAb/JZDdfTZ
	6ortpumhME2J8Mvbrjh5x+Bdb5sbSPIuX3hSCOB2UOJZy2WDcLUNZXGCj3CXhtmPynrq7hjGsRMtY
	bWN3wIq1edvoPqxFMYix5wQqY9OrTGZf95ckuLvH7RAw/wSpn5nV2XAB/FaxUXRI1b3a0iuiDFmnf
	lhDX3b8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU8cD-0000000DKwV-03RV;
	Thu, 19 Nov 2026 20:20:17 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xU8c9-0000000DKvj-1HYY
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Nov 2026 20:20:15 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4bb64ef5a00so928015e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Nov 2026 12:20:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795119611; x=1795724411; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:content-type:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=oUxQWUg0cFfOfFkOLUnILAxBRHkeTjUzpnJn7oclOAs=;
        b=DtTQf70TsOCuYJC2fT6urVJh1LFlqyirsEt8hwnbJCOMZ0WNxaEHIfBz6EUQAeuYnK
         8q8JVqJzlnMj+j9Yb8SvH8ALKtXoFhV8DyxoOU7lCD6b1enEwLQLT7An1+8Z38tcdzYN
         Nb1mUTuMvYl+FyGEn/nYDkOKnolEUnztj+WcXjMSLTL/eUq9rDxGevG1vmLi7mXbMsNz
         sBM2BFSn9lRzjnaVH3zV4hJZ8pVtXxxWkBeNCsW/afqsA3hqHDX3IBBazTi3T9Hd5nvg
         Qe5G8+ME+QflWJNUhP60rq6UWyLYrerc32fDPnYV9wgfcF0XQIgPju73eZq8/nFe6i05
         rykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795119611; x=1795724411;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:content-type:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oUxQWUg0cFfOfFkOLUnILAxBRHkeTjUzpnJn7oclOAs=;
        b=czHEDDGSnIysIhmvGbSy7U2CAwvwxX6SMggngz9bXM/7WPBGDQinJZ3+PgFzDOQGJt
         pBantSJC+VkTxsQPKPNeByZ+KREr8Do6PMLk46ilszV18owGN/zgymC5Fg7KVZ9Tg0Gm
         ynxROrwrTG4Ap2QNA5U6SugCVl9LUXtVbfBiMQQ5RjfcpGJc15t4zLMZHpewwfa6OgGq
         xIVojdRH6RGSpByXxR6b8ghmlJln2tnS7Jr/U6N4VKxm+3lY5vq6MuAHnYnWhYMc9UG4
         DpfxwCMwzSSxk766ksmoIF0wp5+dYIuiKQEDWOqOdEJIIKH59aVjkCNVR/ifcwvbOdYx
         irag==
X-Forwarded-Encrypted: i=1; AL+hErF6QCOeAmKMrq78/9hfP4msgZ/dVXPuMfscszCNL7zhxGMlhrjJBoHjElWxmJkXwUBFcA376PLn9SBHz+7Lqw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+ZXy+ssj30fe20B0D5z9evq1pr3fnR8P06wWKLnbuR5DqVwrYS
	PN0vELGn2BcVQq9RpWqI4ry7wMppFdSr6yVCPuBg6KRriytvKVtGhmHVKPhhAWdGbAM=
X-Gm-Gg: AYBFou2M3+ooPPDBlwsUEftO9YRExReY1eutjcvDN7Hx6PZA/C74ZBttVZtyxfAYHsb
	DdaOH7b8Qk1DrR+XoYRsnwwmkQZeM5NmEicmFrPYip3hfoLgUX7gJfWNa/SZzB1+54FBIxyezSO
	S5Ccuxl9K5e4agGYNYgRHYRlijTfArtwKU/GP5LcGx4lS7Ng+wsav69Tb6k/F1t24aPquNLO5Pb
	IhO2Sazpqg+mseqSFymHuDWZiCEWnQIq32P5fkc5gryIIFOsDnjx54OeDRmyAoVbNgrp/t7qlrT
	9ycCFyZJLhn+zASmimsVw630xn+cZ8waQhhuQiYRxAhV1XVx5c/nh3AUuRoqhRbd2UuCChHyM6j
	38xUSMgfkULMb9X3DG2hEHaixmU44u4WP1SJv3L+XXvZvM6YY+afR4EPNIXVlkis9OXVN+no02C
	gDabfY7a8NCzhrW4hB1u3r4KzuBxg/qfG6AjeZA1FAhH+qNGTjlnDJ/S5UfYfO6QaF2YgOcIRJD
	YqUVHbuQkKR+IIsuLN7l4R6sdQL2XPO4QI2g29nSiYyXJgGe0zLqQ4CseYARY+YfhSO3P0iodWA
	qTzY6GZw2CzplVYtXjG2L/9GLzQoE52R58sxmm5UPijIC66GcefDtBB8ZAoAchoR6/Rf948a
X-Received: by 2002:a05:600c:64c8:b0:4a0:1c0e:b057 with SMTP id 5b1f17b1804b1-4bb887e2380mr14648215e9.4.1795119610866;
        Thu, 19 Nov 2026 12:20:10 -0800 (PST)
Received: from smtpclient.apple ([77.83.249.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb8538b09bsm94509405e9.4.2026.11.19.12.20.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Nov 2026 12:20:10 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3901.200.71.1.16\))
Subject: Re: [PATCH v7 2/4] media: rockchip: Add JPEG decoder driver
From: Sergei Khomenkov <shomenkow@gmail.com>
In-Reply-To: <85353f59-52a0-446d-ace3-65e2d03d0d0b@pengutronix.de>
Date: Thu, 19 Nov 2026 22:19:57 +0200
Cc: Lucas Sinn <lucas.sinn@wolfvision.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Message-Id: <92CE2271-6485-4B33-AF75-480F9BD56980@gmail.com>
References: <20261022-rockchip-jpegdec-v7-0-3fd7dd55f408@pengutronix.de>
 <20261022-rockchip-jpegdec-v7-2-3fd7dd55f408@pengutronix.de>
 <596F6C9E-4A5D-4AE8-8D26-7A7247050D7D@gmail.com>
 <85353f59-52a0-446d-ace3-65e2d03d0d0b@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3901.200.71.1.16)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261119_122013_387686_F2EB7807 
X-CRM114-Status: GOOD (  13.77  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Sascha,

On 2026-11-18 14:27, Sascha Hauer wrote:
> I haven't been affected by this issue lately, but saw it when the series
> was still based on the hantro driver. Yes, I'll change to 3 bytes per
> pixel next round and make that the floor of sizeimage. Would be nice to
> have a proper solution for this rather than either wasting tons of
> memory or risk having too small buffers.

Thanks. A correction to my last mail: 3 bytes per pixel is not a worst
case for 4:2:0, despite what tj3JPEGBufSize() suggests. Since then I
built 4:2:0 test patterns that push the quality 100 scan as far as I
could: libjpeg-turbo writes 3.35 bytes per pixel of scan data, byte
stuffing included, for one of them (640x480), and the Hantro H1
encoder on the RK3026 3.14. At quality 99 the largest I found was 3.08
(libjpeg-turbo) and 2.88 (H1). The patterns, 96x48 and 640x480 JPEGs,
the same frames as raw NV12 and a short script that makes them at any
size, are at https://homenkow.ru/kernel/vpu/

With the Annex K Huffman tables and 8-bit samples, a baseline 4:2:0
scan is at most about 3.3 bytes per pixel before byte stuffing and 4.9
after it, at quality 100 (lower qualities are smaller). Other tables
give a higher bound, and APPn/COM segments add any amount on top, so
for a decoder any fixed factor is a trade-off.

So 3 bytes per pixel covers what the H1 wrote up to quality 99 and most
of its quality 100 frames, but libjpeg-turbo goes over it from quality
99 up. If that trade-off is fine for you, I have no objection; I only
would not call it the worst case in the commit message or a comment.

Sergei

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
