Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F87BC0015E
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jul 2023 20:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=13xyoXllarB83WnxqBgW9venylN8kJN10Iz6TDUyEbE=; b=ZchQjo1bpWh2LW
	jJeMu8qise/ABNa8Bjky6AMm/NabV1HJ39acu1lTng/mZtkwbPrvXLD8eqtEGlXk6bhEjGHEXMjCD
	NKwOdHukpN7kD+bN/+xC7AU+sKe0c2+TJDQK+gEEgXmzHabc3ngAYwF7fa8M143WEcf76/mgWrNVu
	MeXtxOxMxqX+VS5LtXQSu1yH90/82AYDI0miEfGqaK4JAIIHJcjoDtTnfor0smhVx3HAFntClXPUd
	a3eNTBc8k8e+BVXybUrBhu+H2Y7jl+7ofMp0eaULy1KQSDCVqWtmCR+wCK06j7c1Jfkjkx8+bYpKk
	3cKoP9jMvm8SjTrkuVXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPTdS-004ux1-16;
	Fri, 28 Jul 2023 20:00:26 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPTdO-004uvv-26
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Jul 2023 20:00:24 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-d066d72eb12so3478542276.1
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Jul 2023 13:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690574418; x=1691179218;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+c7MR/bJd4Hz6dTew8BkstsuRnMMAYcSoL0ChCst6AA=;
        b=nJ7XhKK2oRjENGChjgarXAF/oxfIodtk+0diUD6AgPm8jm5eDcUEbUrezeaZenvjON
         s4X/eyzQ+3zXM/N1fvxYIR3incawecxMQRck9EU5SbxQwTV1wqvdyvU1cFJndG4BjDRM
         agnxuIgvGsXCRI3OrVB/QExBsGRLlVROKTxkioWgr0Mxi2uTvLiUcLAz7hs37+rmHZx7
         RY8VC61b4Q5Wmm1XwWmjS0Y9iW6zfc8gVEvNQVKmVq11q6UhxiUB98qSZh/ssVWEz+Fa
         +JEw3zmiv7TECgvmSLJxRR21ywv2ZFXgMcqeAUCCDtWnsD0E2AdLOkYHHXsCzSzcBBbq
         vMqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690574418; x=1691179218;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+c7MR/bJd4Hz6dTew8BkstsuRnMMAYcSoL0ChCst6AA=;
        b=ewuJlvYcRNNaft0ogE0R7cV2SSogzZ86RZLI8abWwsvPYZBKbe4Cc7ImBmGYAhQQp6
         93ta2+LyHqDWq7uKzIUTU/u+ackCQhPVZU+YxExvFRq+LXy2PkiMU8w9lX1Y9U0C4rWm
         z6o4+jdsf76EwDfzbykuOXPSsydL52+Ra7+aopveRFxzdnunKXHcnqCVU2l9lWhHal3E
         BlZmz+fDoWs+02MhLEC4Kl/odZtIe7nBN7iLylC6y8PyrCY2GCW9/xSzRAJShk/r3lEq
         EgMEaAsOBi2Ck0+Q/urVpALs9HzlphEWJDH//pTCLc/I7TDJKMpT+utFuNj3FvPzS8Qy
         xBRQ==
X-Gm-Message-State: ABy/qLbxniH6ZebUerCqSOT3NZXFdfart0as/4Qdz4VWGFuWoVhchpUq
	UgdmrjH27kDuxVBV7DD7hrmAlGL+8KXrcZw58PPx3w==
X-Google-Smtp-Source: APBJJlGpALC/ukx/XzWD4GYg1zwDicd7CUoA9JJyWOi/lHUHLhHaOiAAOWaMHG007eWk6fLKaY0PRSXfxyK1rnCr83k=
X-Received: by 2002:a25:6894:0:b0:ce7:3374:5664 with SMTP id
 d142-20020a256894000000b00ce733745664mr3163001ybc.15.1690574418678; Fri, 28
 Jul 2023 13:00:18 -0700 (PDT)
MIME-Version: 1.0
References: <20230727073912.4178659-1-ruanjinjie@huawei.com>
In-Reply-To: <20230727073912.4178659-1-ruanjinjie@huawei.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 28 Jul 2023 22:00:07 +0200
Message-ID: <CACRpkdbjYJxU6Dy_0jrNFhLMH_PqsSq+uvXzmZ3EiYYk4=HM=A@mail.gmail.com>
Subject: Re: [PATCH -next] iio: adc: Remove redundant dev_err_probe()
To: Ruan Jinjie <ruanjinjie@huawei.com>
Cc: jic23@kernel.org, lars@metafoo.de, haibo.chen@nxp.com, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-imx@nxp.com, heiko@sntech.de, ktsai@capellamicro.com, 
	risca@dalakolonin.se, christophe.jaillet@wanadoo.fr, dan.carpenter@linaro.org, 
	linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230728_130022_837669_6B499A07 
X-CRM114-Status: UNSURE (   8.83  )
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

T24gVGh1LCBKdWwgMjcsIDIwMjMgYXQgOTozOeKAr0FNIFJ1YW4gSmluamllIDxydWFuamluamll
QGh1YXdlaS5jb20+IHdyb3RlOgoKPiBUaGVyZSBpcyBubyBuZWVkIHRvIGNhbGwgdGhlIGRldl9l
cnIoKSBmdW5jdGlvbiBkaXJlY3RseSB0byBwcmludCBhIGN1c3RvbQo+IG1lc3NhZ2Ugd2hlbiBo
YW5kbGluZyBhbiBlcnJvciBmcm9tIGVpdGhlciB0aGUgcGxhdGZvcm1fZ2V0X2lycSgpIG9yCj4g
cGxhdGZvcm1fZ2V0X2lycV9ieW5hbWUoKSBmdW5jdGlvbnMgYXMgYm90aCBhcmUgZ29pbmcgdG8g
ZGlzcGxheSBhbgo+IGFwcHJvcHJpYXRlIGVycm9yIG1lc3NhZ2UgaW4gY2FzZSBvZiBhIGZhaWx1
cmUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBSdWFuIEppbmppZSA8cnVhbmppbmppZUBodWF3ZWkuY29t
PgoKUmV2aWV3ZWQtYnk6IExpbnVzIFdhbGxlaWogPGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4K
CllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
