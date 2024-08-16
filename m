Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99C1AC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 09:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMgv30gn/2v5Hci8Z1LF5V2PIsTXXF8UeMzk9mGiTWY=; b=Vd39QrLnvBbrkg
	UruA96d+Rg4QfNFwOkn7UWQuO2cBlxqNy4gwQOu5Qc28BqKV6xxmSjq55rWc3yjnMy8uJqUmI+ktc
	HSI4ITm9XYjSUj3YYCoqVeoA7pEtAcW+/ZGxCawdyt3Bdpcn1IOPzeiRzSMYWVYntlemHcHpr+w9H
	1fx+ql0HVEbtnlcAbqXsEekxOn/msjQZGT40qbeAmRxyIpUPtKsFCPsF2EuksUm94qfu74NZZsBG/
	o3GLOC3KgPwDEJkMdhWVKkV+xBDQlM0PsHaoXI5VF8Wz2xam/rjb70VaPQC1mDT9CcsQnlZyOggZC
	yiZ3/2/VnQJcM7KpCzuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sete4-0000000CVDq-31tC;
	Fri, 16 Aug 2024 09:53:20 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1setcb-0000000CUkQ-10I1
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 09:51:50 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-52f04150796so2181737e87.3
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Aug 2024 02:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723801907; x=1724406707; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cZKQ9SGEFFZ7Ozck5+ma3O19D5pAx2pPSfe4wqt41Z0=;
        b=rLGo/T31f0JumgYbQ9WuVnujEDB9ahjQ4DvL7oaV+WaXO5mNdNKEyavcr0QwzxiWK5
         qZJA/QyOVj8sM4H2IML7c5O4ENN+HSv9vX/Gadfb3fHE/H38lBzRhwQAPSWqqbugIKdJ
         nxWx9wyw3+0i+QhU3wb0iwDbRQDbzzJG7h1Jf8+SVmBTlWrtIB3AP1WSW7mRFJTEM06P
         8g0AqTaB16Vt3/tjTILbN38cOvMtbwthlnlLgfxym3L8TKvxOJeVm+tBdnTS1mS5rvIT
         4KMCQxcHiDYJWbsAgD9beiy+d5wvgvhgNIS1croCyfsa3fL0D5jzjCpyLu4lYBPayzI8
         8TIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723801907; x=1724406707;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cZKQ9SGEFFZ7Ozck5+ma3O19D5pAx2pPSfe4wqt41Z0=;
        b=e/izKeF0SBgCOLL2k2rrRT1clXjk8IWlxl/Z16NZgP3L/8gqt62gFbZRaO8qStS9sG
         Wz/rhHlFmgQS/ZvdcvdRwafTudNgGMxhoXdptMKO7GuKA85NxnV/1ej5Lnmn7stlOVmZ
         phJjdnnZoLrhyUutIZSftoD3eWDAyhtfmMGh7p8WL7PM+LEpN5iKCwuJSMab/qdK9AlR
         O0dmXgwUIHjAIzm20dUWitC+mm2zS15u7T9ATAD2tpyOt87IQt2bz+QcOgwjuSphTZP8
         LY0x6UbSinJZu6Ly2W+cFB6pOkuGG1/nNdgnCALnPK3qKi0fsiiTT1QKHGftv3LKP9WZ
         hhbA==
X-Forwarded-Encrypted: i=1; AJvYcCXYpQM2qqqq8gh49XUF5pYvf2zSSh4wF9FIG3G+X5eTDt38z1pazLTHlakfh8m0t2u7DrisXutE2xvM4TxZVw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyCAe4yiDgJPXXl8oXJzOg7dIw/Pd+cmgn3joY5Ccd5jtEAOxd2
	Io9F5QNyH81UZdMaR61HYFhfbYsRWq8nmnzhxt1mQYt8DcyhRUGA3zwqhpQRqw03TItsCoPq1K6
	00b8hfuBK0ArfIhHtbLa+HU4y3KnFzBSAAbFbdQ==
X-Google-Smtp-Source: AGHT+IFvf4NVVwAMYnNZ7wUfCDLw1BETNHu6+3V8GBs5LuzbFRx9yZcyI3xlLzEbUp13L+Uf5Nt/CA8AsBf32lrvGWw=
X-Received: by 2002:a05:6512:3e09:b0:52c:82fa:ef7b with SMTP id
 2adb3069b0e04-5331c6dc2e5mr1455045e87.44.1723801906649; Fri, 16 Aug 2024
 02:51:46 -0700 (PDT)
MIME-Version: 1.0
References: <20240815071651.3645949-1-ye.zhang@rock-chips.com> <20240815071651.3645949-5-ye.zhang@rock-chips.com>
In-Reply-To: <20240815071651.3645949-5-ye.zhang@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Fri, 16 Aug 2024 11:51:35 +0200
Message-ID: <CAMRc=MdjazVyck=KDqs-zUVwzzRhFFF7e4Gh5Sk9LYzv5am2pw@mail.gmail.com>
Subject: Re: [PATCH v1 4/5] gpio: rockchip: avoid division by zero
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_025149_284212_A3ABF514 
X-CRM114-Status: GOOD (  17.52  )
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

T24gVGh1LCBBdWcgMTUsIDIwMjQgYXQgOToxN+KAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBJZiB0aGUgY2xrX2dldF9yYXRlIHJldHVybiAnMCcsIGl0
IHdpbGwgaGFwcGVuIGRpdmlzaW9uIGJ5IHplcm8uCj4KClRoaXMgbG9va3MgbGlrZSBhIGJhY2tw
b3J0YWJsZSBmaXguIFBsZWFzZSBhZGQgYSBGaXhlczogdGFnIGFuZCBtb3ZlCnRoZSBjb21taXQg
dG8gdGhlIGZpcnN0IHBsYWNlIGluIHRoZSBzZXJpZXMgc28gdGhhdCBpdCBjYW4gYmUgc2VudCBm
b3IKdjYuMTEgYW5kIHN0YWJsZSBhbHJlYWR5LgoKPiBTaWduZWQtb2ZmLWJ5OiBZZSBaaGFuZyA8
eWUuemhhbmdAcm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlvLXJvY2tj
aGlwLmMgfCA0ICsrKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMgYi9k
cml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4gaW5kZXggODk0OTMyNGVkODE2Li4wM2U5NDli
MGEzNDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+ICsrKyBi
L2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPiBAQCAtMjEyLDggKzIxMiwxMCBAQCBzdGF0
aWMgaW50IHJvY2tjaGlwX2dwaW9fc2V0X2RlYm91bmNlKHN0cnVjdCBncGlvX2NoaXAgKmdjLAo+
ICAgICAgICAgaWYgKGJhbmstPmdwaW9fdHlwZSA9PSBHUElPX1RZUEVfVjIgJiYgIUlTX0VSUihi
YW5rLT5kYl9jbGspKSB7Cj4gICAgICAgICAgICAgICAgIGRpdl9kZWJvdW5jZV9zdXBwb3J0ID0g
dHJ1ZTsKPiAgICAgICAgICAgICAgICAgZnJlcSA9IGNsa19nZXRfcmF0ZShiYW5rLT5kYl9jbGsp
Owo+ICsgICAgICAgICAgICAgICBpZiAoIWZyZXEpCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
cmV0dXJuIC1FSU5WQUw7CgpOZXdsaW5lIGhlcmUuCgo+ICAgICAgICAgICAgICAgICBtYXhfZGVi
b3VuY2UgPSAoR0VOTUFTSygyMywgMCkgKyAxKSAqIDIgKiAxMDAwMDAwIC8gZnJlcTsKPiAtICAg
ICAgICAgICAgICAgaWYgKGRlYm91bmNlID4gbWF4X2RlYm91bmNlKQo+ICsgICAgICAgICAgICAg
ICBpZiAoKHVuc2lnbmVkIGxvbmcpZGVib3VuY2UgPiBtYXhfZGVib3VuY2UpCgpUaGlzIGlzIGEg
c2VwYXJhdGUgY2hhbmdlLCBwbGVhc2UgcHV0IGl0IGludG8gYSBkaWZmZXJlbnQgY29tbWl0LgoK
QmFydAoKPiAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPgo+ICAgICAg
ICAgICAgICAgICBkaXYgPSBkZWJvdW5jZSAqIGZyZXE7Cj4gLS0KPiAyLjM0LjEKPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
