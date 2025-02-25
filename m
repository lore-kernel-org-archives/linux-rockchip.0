Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 241D8C021A4
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 01:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvFbazv5BbGuW00CLM4vrS+9D772Hpx9G+AGo4Coovk=; b=to2FeIjw5T5ZGe
	NGOrUcTymiY6SvNxBQXB27CvI4gxnRt2L3UOcwPhiofazxdBbL+j0NcGqUmk+JtxjFV8C8f/ysC/e
	l2TywimYdkbgL6InOhLHkgDoe5t1/Z8i0CYMYRBDGklm0bPQJsn24GBrZHsCwvSZRGURY4U6BS4Ue
	NbxqnZ9AqpnlWI2yON+KfnfTnGytHWc42Z3TVRJOmfDZKNKmcB6+KEG5AAhp0mCrDUxAWQhyK+sr1
	k5E5y44/zgIkfsElixYiL6aZHWxvseSaBPNRFq34VGr68eSPeT0W0MzWjP8IrjwSiR1W7i2Yg5vpV
	O6Ncz+cRadX3ElR/wPqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmk2g-0000000FjV5-0e7C;
	Tue, 25 Feb 2025 01:47:26 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmk2e-0000000FjUM-1L7J
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 01:47:25 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5dccaaca646so8851740a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Feb 2025 17:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1740448042; x=1741052842; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=loyJuf6zNk03z78etJFgemOo09eYVwdWkJ6KQXv4Jfk=;
        b=Mz68fjyWNxQ+UA5438bITKxNSNZO6vsJGzAsNdZDdf8liUkzRIxqdUrgbFYZjfCmTT
         A9rP4Ls9ll/BC9EpaH2S4DzTnShkzK27YTT61OYdOS2uYPkFZwov7jg0P342AYyoAKRL
         2M1Hox/Dm41HFKWHuUkY8zX2E/SZECTyVmg7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740448042; x=1741052842;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=loyJuf6zNk03z78etJFgemOo09eYVwdWkJ6KQXv4Jfk=;
        b=guEvlJaRrQ+hqDxqqhAOur4K/4D8AhVYjLXXmJ3GcemKYMiUDZqw/o61AnxjNdL341
         H9udh7J0tzx212gvEvEu3QdMZk9ro5oNwUF4baWr44B1LGm37oxlmJUHBNuzDqhdkEKm
         VSVzNHc5Fdqtt+F3b9h1K+mO9yJqefIGtODRVabt3TF9DWCikXe4l05SPKIsWhM2YshQ
         0EJM6yuEIftGnOSqGvpOqids89qFeEZhz/NcixwfZPo184/+kSBM2r1xGnT5lMOcOA0V
         NfyRvDcHwyY4DouGvc89mM342U8CZ8Hr+XgeevqiCX2UbmlwEMcOJBBSsR4qpxMx3aAf
         q0vg==
X-Forwarded-Encrypted: i=1; AJvYcCX4jpkTb5ieDqvhTBXUp+toDv2pFKI+t4PwwH48imh1ZdevIBN/dp64DCOREQ5izCgUx8mFggZdC569s3PlGQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyxVMBk5TxncmSzKRZomgY4jmagX8qa23YdMSeE3tzHbyq6mPH+
	8lpZ+HhN2i2b1nE20ZtzWvTb3aze4RQHzPjqnTdPJCXNvabh2bOO0R2z4orr3u2Png1XbaM55mS
	auBGZ
X-Gm-Gg: ASbGnctmxf0WO28lJqXqkDp0WkfLy5lI2LcJH+IsDTvyrtTXtluvVhzSJuvSAM2biy4
	GnGvlVf4YAVvM6DmLvzdpUiOicG7oRuS4W/55ZKjc2y+Y6nopCmIH6EyZtkkcugAOyos5fhV1J6
	/QCiotBJomcet7V3yFFjvg1IphIGT9QHof07tMwSRqg2JyOvzGa5A1v1U/coMyBbDJHihRSrYY2
	vMv13bWfvN+osPnzg1V/+COmi8BM2gT93UWqTCwsQ3gYN3mVqzU1o7GZ//5WC4L0g0ldiux0p67
	jXAlY5UOn9LZPoLF7EfCS648CjZVoRmPXXCNEWkgIDkxMcRNrScVFMm8o2R2qCx+Cw==
X-Google-Smtp-Source: AGHT+IHgpK2o58xqSpxbqDlsTOVekIfGJruOkInOzDLtjQhZ20XCcBzk61pTZcqy/1ugMqATtDjkTg==
X-Received: by 2002:a05:6402:5241:b0:5e0:7d70:bc73 with SMTP id 4fb4d7f45d1cf-5e0b634dcd6mr14032459a12.13.1740448042363;
        Mon, 24 Feb 2025 17:47:22 -0800 (PST)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com. [209.85.208.49])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e459c3f92fsm439403a12.4.2025.02.24.17.47.21
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2025 17:47:22 -0800 (PST)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5dee1626093so10979527a12.1
        for <linux-rockchip@lists.infradead.org>; Mon, 24 Feb 2025 17:47:21 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXXKX3o9tTJTSj3umFaFVeVq3yjkXVrcsAjuYIAz5f1k0IZjzpNjwl3z5fllM7ONg0MZCnVAphVVLdrD+qf2w==@lists.infradead.org
X-Received: by 2002:a05:6512:1253:b0:545:6a2:e59 with SMTP id
 2adb3069b0e04-54838cb627cmr5635189e87.18.1740447736562; Mon, 24 Feb 2025
 17:42:16 -0800 (PST)
MIME-Version: 1.0
References: <20250224081325.96724-1-damon.ding@rock-chips.com> <20250224081325.96724-11-damon.ding@rock-chips.com>
In-Reply-To: <20250224081325.96724-11-damon.ding@rock-chips.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 24 Feb 2025 17:42:05 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WS_2JAKMyFFmrNtaN7-O4dh2hOXHc25FytDxXAjAr+5A@mail.gmail.com>
X-Gm-Features: AWEUYZkb9AduQv4S2t7Q6Lb4ouepbii0QdSB144heJ2UJlKArYXhKCxoqxEOhvg
Message-ID: <CAD=FV=WS_2JAKMyFFmrNtaN7-O4dh2hOXHc25FytDxXAjAr+5A@mail.gmail.com>
Subject: Re: [PATCH v7 10/15] drm/rockchip: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_174724_367045_70903103 
X-CRM114-Status: GOOD (  14.50  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, dmitry.baryshkov@linaro.org, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBNb24sIEZlYiAyNCwgMjAyNSBhdCAxMjoxNOKAr0FNIERhbW9uIERpbmcgPGRhbW9u
LmRpbmdAcm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gQEAgLTM5MiwxMSArMzkzLDI3IEBAIHN0
YXRpYyBjb25zdCBzdHJ1Y3QgY29tcG9uZW50X29wcyByb2NrY2hpcF9kcF9jb21wb25lbnRfb3Bz
ID0gewo+ICAgICAgICAgLnVuYmluZCA9IHJvY2tjaGlwX2RwX3VuYmluZCwKPiAgfTsKPgo+ICtz
dGF0aWMgaW50IHJvY2tjaGlwX2RwX2xpbmtfcGFuZWwoc3RydWN0IGRybV9kcF9hdXggKmF1eCkK
PiArewo+ICsgICAgICAgc3RydWN0IGFuYWxvZ2l4X2RwX3BsYXRfZGF0YSAqcGxhdF9kYXRhID0g
YW5hbG9naXhfZHBfYXV4X3RvX3BsYXRfZGF0YShhdXgpOwo+ICsgICAgICAgc3RydWN0IHJvY2tj
aGlwX2RwX2RldmljZSAqZHAgPSBwZGF0YV9lbmNvZGVyX3RvX2RwKHBsYXRfZGF0YSk7Cj4gKyAg
ICAgICBpbnQgcmV0Owo+ICsKPiArICAgICAgIHJldCA9IGRybV9vZl9maW5kX3BhbmVsX29yX2Jy
aWRnZShkcC0+ZGV2LT5vZl9ub2RlLCAxLCAwLCAmcGxhdF9kYXRhLT5wYW5lbCwgTlVMTCk7Cj4g
KyAgICAgICBpZiAocmV0ICYmIHJldCAhPSAtRU5PREVWKQo+ICsgICAgICAgICAgICAgICByZXR1
cm4gcmV0OwoKQ2FuIHlvdSBleHBsYWluIHdoeSB5b3UgdHJlYXQgLUVOT0RFViBhcyBhIG5vbi1l
cnJvciBjYXNlIGhlcmU/IE1heWJlCnRoaXMgaXMgZm9yIHRoZSBub24tZURQIGNhc2UgKEFLQSB0
aGUgRFAgY2FzZSkgd2hlcmUgdGhlcmUncyBubwpmdXJ0aGVyIHBhbmVscyBvciBicmlkZ2VzPyBN
YXliZSBhIGNvbW1lbnQgd291bGQgYmUgaGVscGZ1bCB0byByZW1pbmQKdXM/CgoKPiArICAgICAg
IHJldCA9IGNvbXBvbmVudF9hZGQoZHAtPmRldiwgJnJvY2tjaGlwX2RwX2NvbXBvbmVudF9vcHMp
Owo+ICsgICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArCj4g
KyAgICAgICByZXR1cm4gcmV0OwoKbml0OiB0aGUgYWJvdmUgY291bGQganVzdCBiZToKCnJldHVy
biBjb21wb25lbnRfYWRkKGRwLT5kZXYsICZyb2NrY2hpcF9kcF9jb21wb25lbnRfb3BzKTsKCgo+
IEBAIC00NDgsOSArNDYwLDE2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZHBfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgICAgICAgIGlmIChJU19FUlIoZHAtPmFkcCkpCj4g
ICAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJSKGRwLT5hZHApOwo+Cj4gLSAgICAgICByZXQg
PSBjb21wb25lbnRfYWRkKGRldiwgJnJvY2tjaGlwX2RwX2NvbXBvbmVudF9vcHMpOwo+IC0gICAg
ICAgaWYgKHJldCkKPiAtICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArICAgICAgIHJldCA9
IGRldm1fb2ZfZHBfYXV4X3BvcHVsYXRlX2J1cyhhbmFsb2dpeF9kcF9nZXRfYXV4KGRwLT5hZHAp
LCByb2NrY2hpcF9kcF9saW5rX3BhbmVsKTsKPiArICAgICAgIGlmIChyZXQpIHsKPiArICAgICAg
ICAgICAgICAgaWYgKHJldCAhPSAtRU5PREVWKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHJl
dHVybiBkZXZfZXJyX3Byb2JlKGRwLT5kZXYsIHJldCwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAiZmFpbGVkIHRvIHBvcHVsYXRlIGF1eCBidXMgOiAlZFxu
IiwgcmV0KTsKCklJUkMgdGhpcyAtRU5PREVWIGNhc2UgaXMgZm9yIG9sZCBsZWdhY3kgcGFuZWxz
IHRoYXQgYXJlbid0IGxpc3RlZAp1bmRlciB0aGUgYXV4IGJ1cyBpbiB0aGUgZGV2aWNlIHRyZWUu
IE1heWJlIGEgY29tbWVudCB3b3VsZCBiZSBoZWxwZnVsCnRvIHJlbWluZCB1cz8KCm5pdDogZG9u
J3QgbmVlZCB0aGUgJWQgaW4geW91ciBlcnJvciBtZXNzYWdlLiBkZXZfZXJyX3Byb2JlKCkgYWxy
ZWFkeQpwcmludHMgdGhlIGVycm9yIGNvZGUuCgoKPiArICAgICAgICAgICAgICAgcmV0ID0gcm9j
a2NoaXBfZHBfbGlua19wYW5lbChhbmFsb2dpeF9kcF9nZXRfYXV4KGRwLT5hZHApKTsKPiArICAg
ICAgICAgICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0
Owo+ICsgICAgICAgfQo+Cj4gICAgICAgICByZXR1cm4gMDsKCllvdSBjYW4gZ2V0IHJpZCBvZiBh
IGZldyBvZiB5b3VyIHJldHVybiBjYXNlcyBieSBqdXN0IHJldHVybmluZyAicmV0IiBoZXJlLgoK
Ci1Eb3VnCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
