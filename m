Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA2E1606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 11:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=s/dpNCa/
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xraCPyUuw1dPApMnI1yGOUhbX2Fg1Jvf4VGHgd0mC9A=; b=s/dpNCa/BqBDEqv8rMVDU7XQMB
	X11GxyqzuruOp+EKeRlIgeOgSkXNJM/ShMu0iKt3KP+0K2+R8OkuBjPBgNXrvDi84gsIdfzR8Ie/k
	Hzylr2onLbpXIlNO9jJVdqkzmmMNfaawvmRUV1X/U50bcopxE6utJOsrWD+2r9ET0jefp3vLxPDCN
	J26VOpHpwp10L2wpe9BohwHjQOpdqCYPd2/ftquFULmTbPGopKpFKwwBC74ykEbOjZlLfGStDnAv7
	qvny+jv4RqMrdkAiobceRSl+mtfyRSUCFYTLkH32KMSzpWbPRUvJYs4lWRkgy94/jRCaZFxOd+bHL
	LNSQ64uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQk1H-00000003dGX-400m;
	Tue, 10 Nov 2026 11:28:07 +0000
Received: from mail-wm1-f46.google.com ([209.85.128.46])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQk1F-00000003dF3-1OQZ
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 11:28:06 +0000
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4b7252a32c8so20101235e9.0
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2026 03:28:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794310083; x=1794914883;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:content-type:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+8SmpKfanibtqfQvPi11fKmx/q2tro7mfSWNxssCkTI=;
        b=SHujfCWv3s+FZhZ7JqWiuG32e+WcHa6JOlcwC25NUB93kEm77UZPEcH55dW3QM4mcX
         XA0CUeHaqqs3JpjbeDsI6UQpGmk7/b1y5C79/QtKd82IIIVuqPqkMRrB0ZBlq6CWi7av
         zalW4CFqh61O4gGKEnwlRhZd+V1vG+RTJdtQU9TnQF5Ut7NBAtXDQK0Nx6e1XO5VPxFL
         tvTN40Na+lRg2IANJDEpj6wBEiXgNt9nFjIqYS8hihSZHwAy5PfO9QIGksSw3+Sg2JDQ
         GcDyAhEjtBcGM1SfS2ZUUuN9QLyy0dNO2lGVe4wsq671DPq/wlqncUCUitSRCWhjwyXr
         s+Jw==
X-Forwarded-Encrypted: i=1; AL+hErGgRFn+QedIgdMhIrK6T8Kh1XRYKOJKwCZ7UlNoG9fI3XyYonQo4JQEL9F/YRBZEB4bPh+fTncRuG1WuMqcYQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z8quvoNYgjmVKCQ5wEufMV0czI9hiCIyF3bYhjSdoxJPMgacypg
	6S+NeNgY+RxMZZQHdedbdm0XIv1BZIQmZgJQQHFQj0ehfVczwnUurhkO
X-Gm-Gg: AYBFou0XGZKvC8ReuvIFyZWXWMAfiJNlR1uK0LETj5WOkMjp51jrxqJIFSCdR6ne3Fj
	2FfSNvEwTc6wPFAxtJPBc5g+EZINSxBfNFYLvTZY/6KOpJ6p3qquAwAtevIDTuY3GO87JF9BRr/
	fkap/UFFPefuNISJi/ejd0K3MF52wkZVNPGEcFrbNEtOZFgE2+N+kMM6QUN+ZNLUL1MYn8JMG8Z
	jufn2jeHxvOReuntZ9AF3MHO9gugjxAeYNADcUb7nWcpRRLDXAzae7as2yTSQUfk/xjgK1v+//Y
	nt9vSARj9PKD2z7hh3qr/DeF31tGbOBtg6K+/Ld2oAi6uQUVMCsQXfW5eZFwnzjP5cMsDUY7Moq
	dR/p9fJTOyAi5OnCwzwNVJ+qDoRfoV1rMbNBoeQRWLdGzZPWCd4p2XymmCzAvabkOn5Np2aU9sM
	/zrIsl1Jq9ATHSrY3H+4GqrtV6IJ49D84quauDrJuP18Z3Cf/cB/c0sQigslhJ1mXqLxe+aqNV4
	WHzPSnwp0JqSWyl0weGM/KOi4buZVntqVkS+zrBRDOx9nEbGuGu0v4s5mG7xWlARuehNk+NcPG3
	jkhcBI9VMmZGE/qLq3nXGUyNQ/l9mWyeNHnalT1U/QxZkdqwLqFEWLWADePMXJkSvmUBD56W
X-Received: by 2002:a05:600c:3b98:b0:4a7:462c:6b9e with SMTP id 5b1f17b1804b1-4ba02351506mr44181675e9.32.1794310082728;
        Tue, 10 Nov 2026 03:28:02 -0800 (PST)
Received: from smtpclient.apple ([194.64.145.190])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4ba0234a5dcsm58644735e9.2.2026.11.10.03.28.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2026 03:28:02 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3901.200.71.1.16\))
Subject: Re: [PATCH 3/3] media: verisilicon: leave room for the JPEG header
 and one stream burst
From: Sergei X. <shomenkow@gmail.com>
In-Reply-To: <d8ba9d67a9452bc44be219d5327aa9d7ad83275f.camel@collabora.com>
Date: Tue, 10 Nov 2026 13:27:50 +0200
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Chen-Yu Tsai <wenst@chromium.org>,
 Hugues Fruchet <hugues.fruchet@foss.st.com>,
 linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Message-Id: <46F3E2B2-AE47-46D9-BD41-6970B58763F3@gmail.com>
References: <20261109-hantro-buflimit-v1-0-f0b86ce61e66@gmail.com>
 <20261109-hantro-buflimit-v1-3-f0b86ce61e66@gmail.com>
 <d8ba9d67a9452bc44be219d5327aa9d7ad83275f.camel@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: Apple Mail (2.3901.200.71.1.16)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_032805_370570_15E858DD 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.0 (-)
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

> +                     max_t(u32, pix_mp->plane_fmt[0].sizeimage,
> +                           fmt->header_size + 64);
>
> Did you mean to align to 64 instead ?

No, the max() is meant as a floor: the 624-byte header plus one 64-byte
stream burst. Patch 2 already rounds the stream limit down to whole
64-byte bursts. ALIGN(sizeimage, 64) would neither keep that floor nor
align the stream part, which starts at offset 624.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
