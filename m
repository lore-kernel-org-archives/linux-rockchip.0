Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A95DC28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 09:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=joaqwECF24ApKJEUJOStRB3Y0uIaCKLCL8HSQu4qrO0=; b=Ke8emnJJve7jKa
	4Ytr9xj2cS7nArhHo3m1CJ9LU8I3Dy4c/qO9n9U6kb65B9cGJmtQ+7wm9CvHoy3VsinN5GD9Ff2SJ
	Jrxv7yFRNbzmMUPvdGy+GwKR5Yv1Slg8eGtSdE0tcWuq7hqu1bXkZZQnG8HzIz5Ne7cqB+WDzSPE0
	tZgICXK3Zf1Xq6nPjdoDCAyt9mJ2ujq0qd1eItbSRsYdDoMoauWlALTR7cgtGW3/phDpIBjqOWx4c
	2aaoUIKKR7JXskOlo5WybHRE8MKBb2Q/chPUrClqO0n8LTZ5XprxjdzlalAPPxj6JwmYkLpZIAgoL
	WP1HwDIUS1LYWhFxU+Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ3T2-006rNh-23; Mon, 22 Aug 2022 09:11:32 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ3L9-006mYr-Np
	for linux-rockchip@lists.infradead.org; Mon, 22 Aug 2022 09:03:25 +0000
Received: by mail-ed1-x533.google.com with SMTP id w10so838952edc.3
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 02:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=PfP60D9HcZlcTmmRkDILCGp84nMKR71wAxP/XLHNcOc=;
        b=dcOe3X+PKAbEoSgP1SZmV125Z3qv1XttTwkArPyYcr4xSsp1l0HctYY2pv0uExaNHs
         BSjz8aI9/G3YSdKhzFhH4CM26Cp3NbzkVihaziCi6knnGjVWDuodYzoqNDXyfNKbrhPb
         UHDG2NBq7HvBzE/cVwbtE5cAhkXQhMN87foLuPRlelhuP82lAzr5Yde41DKpyBIzO+mN
         HIVVXPLUopYlfKhEimJOiRXK27dIR5p0EdpWDotSbKPfnQzDABmMtGMYeN6kyfaZbYRN
         0s61P20Acr+L1GVSLBYmoWZlAAvXC2NhF9tw6XT5iUBlLjrqMQ71IR+FoqGenpIcgCK0
         3j0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=PfP60D9HcZlcTmmRkDILCGp84nMKR71wAxP/XLHNcOc=;
        b=6LBn9rVkfatGrB4A9PxpSn7drCcvJ7n5p92G9YOCWX/fh2MFhJBUo1N0iuQjtoNc3f
         VD+tOHxeCh018uNsjh/wqfTzGfjTX9JMApuNj4PidMooKHFSAbip8bY/Kqo/U6cPcE84
         a2ssoazSlzyzCOdmIAnyFZj5s/Vp1ym8x+TzzxJO/EOpYU5i2sEKkETpZEwGc3703v8v
         gNDLlJBuRKQG93MzY2peNrk9bs8eTVObOlzhN1yfCZx7NSqydApcrlYU4GbjxXy4GtEW
         d6ea6nfbOH07MyIs4fm3ade/yZBfkE/LRFk3S/GFzj2uZ0UFtsWI62phjZk5295nFW8N
         anCA==
X-Gm-Message-State: ACgBeo2F5+BCk58ygjcUZ4w/H1LRGy+X5ma4ey65Q+MBqJrQPXomPOkt
	Et8X6tB1CrjYJLQHsu2gwPrAUVdSJAb1ve5s4kTPxA==
X-Google-Smtp-Source: AA6agR4jfiw9ukbwgaBM5kt0WK81+CDs8BDK8ocqBwlyo9nrKF50l8XJTQbKiqdo/xZ0koN9LAIfirRH7ThqRuR3Ic4=
X-Received: by 2002:a05:6402:1f8c:b0:43e:8fab:76c with SMTP id
 c12-20020a0564021f8c00b0043e8fab076cmr15225219edc.126.1661158999829; Mon, 22
 Aug 2022 02:03:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220808025121.110223-1-jhlspies@gmail.com>
In-Reply-To: <20220808025121.110223-1-jhlspies@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 22 Aug 2022 11:03:08 +0200
Message-ID: <CACRpkda6VoNjJfKY3+oCvdB+V6O_4cumKpjVSdBb9e8mEmHF6g@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: Enhance support for IRQ_TYPE_EDGE_BOTH
To: =?UTF-8?B?Sm/Do28gSC4gU3BpZXM=?= <jhlspies@gmail.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Heiko Stuebner <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>, 
	Maya Matuszczyk <maccraft123mc@gmail.com>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_020323_837929_74998778 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBBdWcgOCwgMjAyMiBhdCA0OjUzIEFNIEpvw6NvIEguIFNwaWVzIDxqaGxzcGllc0Bn
bWFpbC5jb20+IHdyb3RlOgoKPiBTd2l0Y2hpbmcgYmV0d2VlbiBmYWxsaW5nL3Jpc2luZyBlZGdl
cyBmb3IgSVJRX1RZUEVfRURHRV9CT1RIIG9uIHBpbnMgdGhhdAo+IHJlcXVpcmUgZGVib3VuY2Ug
Y2FuIGNhdXNlIHRoZSBkZXZpY2UgdG8gbG9zZSBldmVudHMgZHVlIHRvIGEgZGVzeW5jCj4gYmV0
d2VlbiBwaW4gc3RhdGUgYW5kIGlycSB0eXBlLgo+Cj4gVGhpcyBwcm9ibGVtIGlzIHJlc29sdmVk
IGJ5IHN3aXRjaGluZyBiZXR3ZWVuIElSUV9UWVBFX0xFVkVMX0xPVyBhbmQKPiBJUlFfVFlQRV9M
RVZFTF9ISUdIIGluc3RlYWQuCj4KPiBGaXhlczogOTM2ZWUyNiAoImdwaW8vcm9ja2NoaXA6IGFk
ZCBkcml2ZXIgZm9yIHJvY2tjaGlwIGdwaW8iKQo+IFNpZ25lZC1vZmYtYnk6IEpvw6NvIEguIFNw
aWVzIDxqaGxzcGllc0BnbWFpbC5jb20+CgpObyByZWFjdGlvbiBmcm9tIG1haW50YWluZXJzIHNv
IEknbSBqdXN0IGdvbm5hIGFzc3VtZSB0aGlzIGZpeCBpcwpjb3JyZWN0IGFuZCBhcHBsaWVkIGZv
ciBmaXhlcy4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
