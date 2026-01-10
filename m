Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF777D277F3
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 16:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=myRONd9YSGp+BsHPTnRb7qDDKdXYUsw6fckRDj6GI0o=; b=j86FZhgBIiYCuE
	OKLfjnIXl1mjLRrm5jKx/xQQ+0ogY6IDFNdcD+xpUT/GfL0U2FuIsxtwoh4vWoAb3raB4PY5I+1gA
	6ZByqpon/G6KHxFwDU+Qyan89mDu/dwxTrqZ2uXHSWAlvSnmaP4v+AS8PHCbZAnt2YVQ5bLUxkVFV
	R07nN9Sm+wSZbhxgQ7ZPWuRm861ckP//BhRhkd/DNCx1fQ6eDrT4zgMqvlZExYH8p684VSc2NkHj4
	1dEkzRtCpllASnoakD5K+GqXxs101bDYckZSM+KRdrz9Tf4HtjHfHUXGENenqoKjvS6otWBe9cWTm
	erYKGMXdpxM2f3Obd+AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vecFJ-00000003Yjd-3DZ8;
	Sat, 10 Jan 2026 16:55:25 +0000
Received: from mail-yx1-xb12c.google.com ([2607:f8b0:4864:20::b12c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vecFH-00000003YjI-4Arw
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jan 2026 16:55:25 +0000
Received: by mail-yx1-xb12c.google.com with SMTP id 956f58d0204a3-6446704997cso4576992d50.2
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Jan 2026 08:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1768064123; x=1768668923; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y/o1xqvbJ45vGrFZHnF5jBvuEbHXNcCQ1ufW03hbPtI=;
        b=To+L+uQlP0O6499M698+Sp/MyiKLJmG3XX3959Y7j/ODhJ4ks1W4xw2PgMctAfoKoH
         6x1D7NU7d8x3Hu/aubDvsPkBY389xftiyya0ymRKR4YbpLKyXkFAkUezkUhpNsO4OgxV
         m3t8X8zwn1KNt4veaX0okWFTKB9Y58Vdn0Pp6jxhr5h4Agg7v7Gu1p1wzFtWCPlB+Hm5
         bicJKv+9KzupulSK5/U5ncM23RERDS+NZyQOcOkfaEXbdQpbmeXtSaRSZq/MsvFIz3pL
         1inywv7kfu6SEWlIMj6f8PcatXP5W1HggWdQH7hTkJPYVtqJfv4n3F4mZhKA04wgZT3c
         C47g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768064123; x=1768668923;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Y/o1xqvbJ45vGrFZHnF5jBvuEbHXNcCQ1ufW03hbPtI=;
        b=X3qoPiFRf20cU0PH5CD5DzhofQXypaXVzzV4UkGUVTxIAWngDCdFY4Or+5b13NKu94
         UrZgzeRypKfiFyrW49lF3K3VK9SLxGxoq4l6YFrUl/me3635kzlqfW269tXZxQbEl9a0
         k6UKt0X5KinFMj+mUB6JVRw2lPLU4WFMHAIVmXNVdQMpY6Nur78gWZFlhRXcYl9Cjrnw
         oYsc4zMLnfY2BBTbmAIVExjgF7xN2wNWD97iRXFdN5u9D0I7BPjM6g6qgkRxYQRyEwH/
         vr4k9GGkRZblQ7/2WF85w7wIlIbWzyn9BDaqprjh6AbcpqnDUiZj88pYCRv/bKkObuJs
         v/Xg==
X-Forwarded-Encrypted: i=1; AJvYcCWdmpRDh4fyGSVxX71bxaK0tm/jsqxw/W2fQvM2RuQm93t59QhU2SLscBT0F39/ApTlJO0lqBTbWLkbqiv7OQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxcqwxq5eunupycOGPRPa/dLvWKWN7QhbIHixcmGrhSIFubcz8r
	9TaMEdRb+eGm3d6dWsqSzoUpG9OgqplGzQ0bhfQ1Ffg9uBlCpIH6R/4Zj5+/RofgPWKgBf3M+gz
	vqMAPESo=
X-Gm-Gg: AY/fxX4dJqNZYqHfbbKSzjp1Ni+F6gs99aUEGDs6a3mD45Vt0xGObApFWzZ3QZvcIYn
	Uu64CLNe8Pz053S8UV8hPkLjwzTGGnsd/8zbjAi0NTg0ITWBu/VoWdJ9NhFJ/HOcLeK0H1PPZxG
	/ADCz4KGGbEoS6/f88g/9jaN83S3CDowmgwkic+tLYCYzdHSY0MFBASyn8+1LOJJTWuj0DSCJJv
	qWiHYnaEayyyhLNWp8juRns36Zv+sjdiuh9Z9NSXXAQ7miKTsrxfXOfVx8d5UCe/rY3oVVy3Gce
	QlRGibAbQsiIRUjrEFstDpkTEy1FHP76sr79eHHy+ad/PTuKM3tn9b9+6Nv/ytDsN31WmLMMx9k
	5hBhVxHFZnHq0kBzQcw3FyWYSA40mjzmnIzRSV8mDW8YqvN1f1btJ4E5wxfRg9cKI1Yg79v54Pi
	t+1P00Xa8hzk/it953B8AM5dI1HSQnOzmyoFUlMGrKbWCNikgY5w==
X-Google-Smtp-Source: AGHT+IFf3ani//MnthH+puIGunhv8s2cor0KG7zerNOK0feL0njfLv1SLLsKUiH59CAWNx5C8T19lA==
X-Received: by 2002:a05:690e:1286:b0:644:1c42:37a3 with SMTP id 956f58d0204a3-64716c4ff8emr10714325d50.65.1768064122849;
        Sat, 10 Jan 2026 08:55:22 -0800 (PST)
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com. [74.125.224.49])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-6470d89d4c9sm5949759d50.14.2026.01.10.08.55.22
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Jan 2026 08:55:22 -0800 (PST)
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-6446704997cso4576989d50.2
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Jan 2026 08:55:22 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVM1re+lwAe7gZliTJS99bq5Z/ntVVSagXz0kae00w7e2k6u9TPgT91OtnlBu6OYcwrUC099Bf5G6Wv5MQDng==@lists.infradead.org
X-Received: by 2002:a05:690e:1c08:b0:640:d119:d339 with SMTP id
 956f58d0204a3-64716ba37camr10747408d50.33.1768064121923; Sat, 10 Jan 2026
 08:55:21 -0800 (PST)
MIME-Version: 1.0
References: <20251215-rocket-reuse-find-core-v1-1-be86a1d2734c@cherry.de>
In-Reply-To: <20251215-rocket-reuse-find-core-v1-1-be86a1d2734c@cherry.de>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Sat, 10 Jan 2026 17:55:10 +0100
X-Gmail-Original-Message-ID: <CAAObsKDqv6Df15xrPpNYe3QP5AcwATM5EwpX4Ny7HSYNwAUpZQ@mail.gmail.com>
X-Gm-Features: AQt7F2r6hrO0wDYQpOUYquIFuvYoTOGI9f8Gm9_u7eurcCDn3ycXpkBly2nAGDU
Message-ID: <CAAObsKDqv6Df15xrPpNYe3QP5AcwATM5EwpX4Ny7HSYNwAUpZQ@mail.gmail.com>
Subject: Re: [PATCH] accel/rocket: factor out code with find_core_for_dev in rocket_remove
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Oded Gabbay <ogabbay@kernel.org>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Quentin Schulz <quentin.schulz@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260110_085524_042129_0800DF66 
X-CRM114-Status: GOOD (  23.45  )
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

T24gTW9uLCBEZWMgMTUsIDIwMjUgYXQgNjowN+KAr1BNIFF1ZW50aW4gU2NodWx6IDxmb3NzK2tl
cm5lbEAwbGVpbC5uZXQ+IHdyb3RlOgo+Cj4gRnJvbTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4u
c2NodWx6QGNoZXJyeS5kZT4KPgo+IFRoZXJlIGFscmVhZHkgaXMgYSBmdW5jdGlvbiB0byByZXR1
cm4gdGhlIG9mZnNldCBvZiB0aGUgY29yZSBmb3IgYSBnaXZlbgo+IHN0cnVjdCBkZXZpY2UsIHNv
IGxldCdzIHJldXNlIHRoYXQgZnVuY3Rpb24gaW5zdGVhZCBvZiByZWltcGxlbWVudGluZwo+IHRo
ZSBzYW1lIGxvZ2ljLgo+Cj4gVGhlcmUncyBvbmUgY2hhbmdlIGluIGJlaGF2aW9yIHdoZW4gYSBz
dHJ1Y3QgZGV2aWNlIGlzIHBhc3NlZCB3aGljaAo+IGRvZXNuJ3QgbWF0Y2ggYW55IGNvcmUncy4g
QmVmb3JlLCB3ZSB3b3VsZCBjb250aW51ZSB0aHJvdWdoCj4gcm9ja2V0X3JlbW92ZSgpIGJ1dCBu
b3cgd2UgZXhpdCBlYXJseSwgdG8gbWF0Y2ggd2hhdCBvdGhlciBjYWxsZXJzIG9mCj4gZmluZF9j
b3JlX2Zvcl9kZXYoKSAocm9ja2V0X2RldmljZV9ydW50aW1lX3Jlc3VtZS9zdXNwZW5kKCkpIGFy
ZSBkb2luZy4KPiBUaGlzIGhvd2V2ZXIgc2hvdWxkIG5ldmVyIGhhcHBlbi4gQXNpZGUgZnJvbSB0
aGF0LCBubyBpbnRlbmRlZCBjaGFuZ2UgaW4KPiBiZWhhdmlvci4KPgo+IFNpZ25lZC1vZmYtYnk6
IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+CgpUaGFuayB5b3UsIHB1
c2hlZCBpdCB0byBkcm0tbWlzYy1uZXh0LgoKQmVzdCByZWdhcmRzLAoKVG9tZXUgVml6b3NvCgo+
IC0tLQo+ICBkcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZHJ2LmMgfCAxNSArKysrKysrKy0t
LS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZHJ2LmMgYi9kcml2
ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZHJ2LmMKPiBpbmRleCA1YzBiNjNmMGE4ZjAwLi4yOGJm
NmM2MDJmODAyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9kcnYu
Ywo+ICsrKyBiL2RyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9kcnYuYwo+IEBAIC0xODAsMTcg
KzE4MCwxOCBAQCBzdGF0aWMgaW50IHJvY2tldF9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNl
ICpwZGV2KQo+ICAgICAgICAgcmV0dXJuIHJvY2tldF9jb3JlX2luaXQoJnJkZXYtPmNvcmVzW2Nv
cmVdKTsKPiAgfQo+Cj4gK3N0YXRpYyBpbnQgZmluZF9jb3JlX2Zvcl9kZXYoc3RydWN0IGRldmlj
ZSAqZGV2KTsKPiArCj4gIHN0YXRpYyB2b2lkIHJvY2tldF9yZW1vdmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiAgewo+ICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYt
PmRldjsKPiArICAgICAgIGludCBjb3JlID0gZmluZF9jb3JlX2Zvcl9kZXYoZGV2KTsKPgo+IC0g
ICAgICAgZm9yICh1bnNpZ25lZCBpbnQgY29yZSA9IDA7IGNvcmUgPCByZGV2LT5udW1fY29yZXM7
IGNvcmUrKykgewo+IC0gICAgICAgICAgICAgICBpZiAocmRldi0+Y29yZXNbY29yZV0uZGV2ID09
IGRldikgewo+IC0gICAgICAgICAgICAgICAgICAgICAgIHJvY2tldF9jb3JlX2ZpbmkoJnJkZXYt
PmNvcmVzW2NvcmVdKTsKPiAtICAgICAgICAgICAgICAgICAgICAgICByZGV2LT5udW1fY29yZXMt
LTsKPiAtICAgICAgICAgICAgICAgICAgICAgICBicmVhazsKPiAtICAgICAgICAgICAgICAgfQo+
IC0gICAgICAgfQo+ICsgICAgICAgaWYgKGNvcmUgPCAwKQo+ICsgICAgICAgICAgICAgICByZXR1
cm47Cj4gKwo+ICsgICAgICAgcm9ja2V0X2NvcmVfZmluaSgmcmRldi0+Y29yZXNbY29yZV0pOwo+
ICsgICAgICAgcmRldi0+bnVtX2NvcmVzLS07Cj4KPiAgICAgICAgIGlmIChyZGV2LT5udW1fY29y
ZXMgPT0gMCkgewo+ICAgICAgICAgICAgICAgICAvKiBMYXN0IGNvcmUgcmVtb3ZlZCwgZGVpbml0
aWFsaXplIERSTSBkZXZpY2UuICovCj4KPiAtLS0KPiBiYXNlLWNvbW1pdDogYTYxOTc0NmQyNWM4
YWRhZmUyOTQ3NzdjYzk4YzQ3YTA5NzU5YjNlZAo+IGNoYW5nZS1pZDogMjAyNTEyMTUtcm9ja2V0
LXJldXNlLWZpbmQtY29yZS04ZWNiN2VkMjRjYWIKPgo+IEJlc3QgcmVnYXJkcywKPiAtLQo+IFF1
ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
