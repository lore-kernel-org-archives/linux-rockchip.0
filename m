Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 649AEEE644B
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Sep 2023 09:05:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t23hUdVpOa5ixiBGl+B0GkNu7f1Eaq0bfDRyHosyeho=; b=O8UW8Qi5WNHyNm
	yBfR5R7jZoN3EG06GispijOaB6xRn6IGoSYsDyx0bEQMX9obFTI0uxz216yk29EkQR2CZTrbr6as5
	jZyyyzQaeVy3ewvBJiP9IYWpiyg2cnO+g2hdgh7f40ukgZmqKkh3jGFkmC878SvVHm9iPJdMT2tL5
	d9KJ5vP3rX8tKAynQ609O1lau2Uut8XlxwtJ1eVCmZwY9XlzHEtgbgMgBJs7qJfvD0j+xFmAR21w8
	asA7FxpOutr8ioJ3RCXdtJp2Yvdn0esAQ7uhPsiEkC7ib2OiSLDoGsi2Ty+tlYL+hZOwCkycM1zOS
	sedlD83+hJvDh1PFP8DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qh4lL-00ADfJ-0e;
	Fri, 15 Sep 2023 09:05:19 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qh4lH-00ADeb-2d
	for linux-rockchip@lists.infradead.org;
	Fri, 15 Sep 2023 09:05:17 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6c09f50ae00so154438a34.0
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Sep 2023 02:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20230601.gappssmtp.com; s=20230601; t=1694768712; x=1695373512; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hh5TOPI/HhnIdtullXY4j7ld3pDUYM1OrpNZGBcpK+c=;
        b=BxzCHucSSqVdKMI0J3DbnoDI90ofwpGSA/70/AZ2+pPIGXMDcMLkK+YTv3+BiDQco0
         GIiRY7q+GzLcIGO9H2tFuzyC4SA6HRRdoZAC+HNmMCv5Ct7G0G7Qhq5V6cVEIySsw9wS
         LgJIqAmDtXDaawP8oEbMLFJtyibu0b4+/UShCavwv+oR485tt4v6TLqF5BQ5Ax6kulMl
         CLtA8gmsaMauNvtPq7Kl81gebWjj15JoUCNKfq5f7jybw0rqZaaaNUaAMIxhJi1kAJ8/
         ndQCV46vm9CW1h0/f5FXZJ4TqAKcs0QGOOzq9LTPsKJv4PLijDBgUcQUUTLvlahst+1z
         vOjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694768712; x=1695373512;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hh5TOPI/HhnIdtullXY4j7ld3pDUYM1OrpNZGBcpK+c=;
        b=l7zStlog780MG7nJou6okkVPy2pAnRsADtOfPJuBoqAanXsB96GRRlBQtLwuZw0oWr
         0GPaihTEcq+O88YO6g+uWghld+k8NWnQUGmSoBh7sljVvqLwRHl31s/vJdjFaiLzcXxD
         G5PZAR6h8yN1fDzaMwb08JkFPW+EBOII9LqoJg/14FPCXHHI5Ed6wFVledzLPb7mGpzM
         6tA3tF+9KPws9BLvLq+kCK4YDftRZ23/AU8XA8eT6MO1x0fNfFPW7c4vlOQ+GF/+3+G0
         gKMMZfI3zWjFgNahWCizqAjG/2OjfKdsVyNeOtT04gO8J/7Tk0gZvZfqlUmjv2CC8GhD
         fP4w==
X-Gm-Message-State: AOJu0YxRPvqriOwUX4dLeBTChuQUsO/z4vbOnBVJriPrHi8Y9FEruWAo
	hU3KfgXA4WhHJD80wT7lstq4zEda82ommcczG1MIHDO+Kfg2EavgBOI=
X-Google-Smtp-Source: AGHT+IE8u8fe94YCsJqYiGK6ZwicLPocu6NLl7huZjprcs8JWoLZrKk+EcweaUeqR5UJgGCMm6KIc2d1lfmqacBh0SA=
X-Received: by 2002:a05:6820:2081:b0:573:3a3b:594b with SMTP id
 bz1-20020a056820208100b005733a3b594bmr1377984oob.1.1694768711683; Fri, 15 Sep
 2023 02:05:11 -0700 (PDT)
MIME-Version: 1.0
References: <20230915065043.3401840-1-make_ruc2021@163.com>
In-Reply-To: <20230915065043.3401840-1-make_ruc2021@163.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 15 Sep 2023 11:05:00 +0200
Message-ID: <CAAEAJfANY07RE4Dw1LwDuCpv_qj_RQoLyXpLsC6r=rnfiN3QHw@mail.gmail.com>
Subject: Re: [PATCH] media: verisilicon: fix use after free bug in
 hantro_remove due to race condition
To: Ma Ke <make_ruc2021@163.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230915_020516_067888_4B64D1B1 
X-CRM114-Status: GOOD (  12.54  )
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

SGkgTWEsCgpUaGlzIHdhcyBhbHJlYWR5IGRpc2N1c3NlZDoKCmh0dHBzOi8vcGF0Y2h3b3JrLmtl
cm5lbC5vcmcvcHJvamVjdC9saW51eC1tZWRpYS9wYXRjaC8yMDIzMDMxMzE1NDEzMi4zNjg0MTgx
LTEtenl5dGx6Lnd6QDE2My5jb20vCgpUaGFua3MsCkV6ZXF1aWVsCgpPbiBGcmksIFNlcCAxNSwg
MjAyMyBhdCA4OjUx4oCvQU0gTWEgS2UgPG1ha2VfcnVjMjAyMUAxNjMuY29tPiB3cm90ZToKPgo+
IEluIGhhbnRyb19wcm9iZSwgdnB1LT53YXRjaGRvZ193b3JrIGlzIGJvdW5kIHdpdGggaGFudHJv
X3dhdGNoZG9nIGZ1bmN0aW9uLiBJbgo+IGhhbnRyb19lbmRfcHJlcGFyZV9ydW4sIGl0IHdpbGwg
c3RhcnRlZCBieSBzY2hlZHVsZV9kZWxheWVkX3dvcmsuIElmIHRoZXJlIGlzIGFuCj4gdW5maW5p
c2hlZCB3b3JrIGluIGhhbnRyb19yZW1vdmUsIHRoZXJlIG1heSBiZSBhIHJhY2UgY29uZGl0aW9u
IGFuZCB0cmlnZ2VyIFVBRgo+IGJ1Zy4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hIEtlIDxtYWtlX3J1
YzIwMjFAMTYzLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm9fZHJ2LmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
ZHJ2LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+
IGluZGV4IDQyM2ZjODVkNzllZS4uMWE1YjNhODVjNTIwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gKysrIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiBAQCAtMTE4Nyw2ICsxMTg3
LDcgQEAgc3RhdGljIHZvaWQgaGFudHJvX3JlbW92ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+Cj4gICAgICAgICB2NGwyX2luZm8oJnZwdS0+djRsMl9kZXYsICJSZW1vdmluZyAlc1xu
IiwgcGRldi0+bmFtZSk7Cj4KPiArICAgICAgIGNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygmdnB1
LT53YXRjaGRvZ193b3JrKTsKPiAgICAgICAgIG1lZGlhX2RldmljZV91bnJlZ2lzdGVyKCZ2cHUt
Pm1kZXYpOwo+ICAgICAgICAgaGFudHJvX3JlbW92ZV9kZWNfZnVuYyh2cHUpOwo+ICAgICAgICAg
aGFudHJvX3JlbW92ZV9lbmNfZnVuYyh2cHUpOwo+IC0tCj4gMi4zNy4yCj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
