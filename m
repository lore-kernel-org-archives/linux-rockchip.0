Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F123BC47092
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 15:47:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B646761042
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 15:47:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B646761042
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ts3zl26ok2YdModbEH6D5aFiRnbkuwSO7mqYebLE8iQ=; b=yEdLvnidDWFAmO
	Xri4/afIEij7GvJWokxcOjTkiMjJiWCybjDIGhgpeNSq8gwbFkCu+RNB/2F6a+ms+CkZ/I9mxbZQ9
	UhrNuuPns6G15qeqoJ9OCavN0Qt6IBwJKayL5KkYKyF6B9L/hcgOafCSNKoVnUy0Xf2smCzrZMc9D
	5MmH/tG6mhz2ftDK8I1cT7oTdFFLhJly0CpKwSfhUyb6Qe+9+lm6VwvzEbFOot6yuCS8AsQ+I9xca
	XV9E2lwAfwesvfcIp21M3ErrcoMUmyGxLQvrTTDCopH9F5IM0OdFN4R6QRMkL/qbnctWDEYRBpKFo
	Kr0g0wh4IADiWSulIjgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo6bZ-00HJ4h-9Y; Tue, 01 Jun 2021 15:46:57 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo6bX-00HJ3J-Dt
 for linux-rockchip@lists.infradead.org; Tue, 01 Jun 2021 15:46:56 +0000
Received: by mail-wr1-x433.google.com with SMTP id n4so14881409wrw.3
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Jun 2021 08:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=exFIxZuOrD7Plr1Np3AS/tQawGwgEP79Gok5C1va520=;
 b=Sjx9YHyswPIyxritg2eQKQLwWxgZcxEjPBd1aoPRJx2iVjp8I4s7B2xEcC0qChfNs6
 8oXfF7L7nZ2PrCZTD2bsNk1ohhgRp5nEv/rIS6rN3kvm9S21t+YfU3gplobwvWxIpCrW
 kfH4ajPSDEkTfn2ozzy6+7muVP9uK0diLv4k7hYHKLfvJ41av+52MQ4P+J4PASOO7pJG
 h5BuNxJ9aoiljsBK7yFfV4KnnhHOvqHSHzs2+9wa9uv23ryXn24sO5zvwnCf0aT1Og0z
 ALzEwl+zrozYTSRE/AySTHxZ0oWTkA+TeMfMbxkMOyQHY4M7K+WGL4eQ6HCgRBaIysiA
 gSEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=exFIxZuOrD7Plr1Np3AS/tQawGwgEP79Gok5C1va520=;
 b=cNxMMCdxJWKLgRhJCaPDzrWcnTxs+rMPB1vGRRg6/wTZOwyFpmdptCduReYXmziB2d
 p7Y3mIm3WZQksLOU2x+FGBDT9ySAHponAX7lP0aQ2wpk7S1T/Ni682ppj7BU5UGUXqIm
 FjFV9JMpkTzkCOWz50WV1Ns6s530NWAfcCI/QJ7Joh5mVt6ScLXEWDYA/TKIuHaE9wDr
 bT5FTKbHsIWKLve6B/vcF40XMzT/vpsam7J9+EXtigAMFnjEMJbxVBPuS9Ua1Y/EmRak
 xgk9A035k2ggFmEuuXg7SuPaUNGJFY3g6Fp9bvfPq909ez5jmeQ/Rux2ISJR8pFV1TE2
 m5rQ==
X-Gm-Message-State: AOAM533T0PUP0odc22RHsFu7SsnULNIq91A6mLfTgL1ez+SIdDbBRHtE
 lQ/T+CxSjCHtO6ua6X83x39low==
X-Google-Smtp-Source: ABdhPJxF67vbMP6BSXVX7i7BEayuWA1qe+1M9Gi9KHneZ4+6CHVCj6+4FxBdy6cgFyCIxJV3874yLQ==
X-Received: by 2002:a5d:4a4b:: with SMTP id v11mr14929357wrs.246.1622562414194; 
 Tue, 01 Jun 2021 08:46:54 -0700 (PDT)
Received: from dell ([91.110.221.249])
 by smtp.gmail.com with ESMTPSA id u8sm2738305wmq.29.2021.06.01.08.46.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Jun 2021 08:46:53 -0700 (PDT)
Date: Tue, 1 Jun 2021 16:46:51 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 01/12] dt-bindings: mfd: syscon: add Rockchip
 RK3036/RK3228 qos compatibles
Message-ID: <20210601154651.GE2159518@dell>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
 <20210527154455.358869-2-knaerzche@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210527154455.358869-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_084655_524398_7A89B0FA 
X-CRM114-Status: GOOD (  11.16  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCAyNyBNYXkgMjAyMSwgQWxleCBCZWUgd3JvdGU6Cgo+IERvY3VtZW50IFJvY2tjaGlw
IFJLMzAzNi9SSzMyMjggcW9zIGNvbXBhdGlibGVzCj4gCj4gU2lnbmVkLW9mZi1ieTogQWxleCBC
ZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxo
ZWlrb0BzbnRlY2guZGU+Cj4gLS0tCj4gCj4gIENoYW5nZXMgaW4gdjI6Cj4gIC0gY29sbGVjdCBS
ZXZpZXdlZCB0YWcKPiAKPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9z
eXNjb24ueWFtbCB8IDIgKysKPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKQXBw
bGllZCwgdGhhbmtzLgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2Fs
IExlYWQgLSBEZXZlbG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29m
dHdhcmUgZm9yIEFybSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJs
b2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
