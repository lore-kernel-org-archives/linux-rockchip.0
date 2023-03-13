Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1160C61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 13:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YRn0lauFxymBlfjl1bd8Ln/UeS5Ari9MkcSEjXCU6Jw=; b=qT3PJgfUj4asij
	Z1tlX1a/iA8IVZ/f4/RDm7v/tTDODcahqe99Tf7XdMlQPCjtl/LdiZ8y3dA4Me8u/YnrbbD6pNs4/
	3GS2aPqb5qw8tv3Frrw8HUYh/sTaN9ukgOUPHm0ywj9WgxkCrrBjvJERTW2CCjSzesPmgnf0i+mkV
	i2hCEr1mMPr7xL2zLQXjVZ95LjaH8K2uRrJ6YS/4dpiQO6CT88auBDssQhlWJXX1/iV3qbfig355z
	bvDnD0hzVKkWHGwKnQPAmRrmD/du/CdNAIAAXoXPv8aIufZifNczWB72/y7e/iZN+qAf4PVIayaYf
	NNc9VCoTyO2lAclJs9Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiV3-005yuz-OW; Mon, 13 Mar 2023 13:46:05 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiUz-005yqy-Nd
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 13:46:03 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 16so6903942pge.11
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Mar 2023 06:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678715159;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9wLaFePw5uizR8ACmMIJJlsaFTkZCvBfOgjm8YIL3M8=;
        b=eFS47Ssmt7X0FwhY4ytr+0HcNC+s4l132+lewLE6h3FqNYvWsLX1ZooOfoWgjHKpzY
         fUntVw+nFnXpH5JLd9XMpKqGOf9rXfOH6JcZK7qWE/G0nLJEjetc3Z8bgE6mTkrnhD+t
         wtvraxMxzmOETvmkyOak3onEodjxFzl1kEr5gJjkCToq9k/U9ok5+HPTrE3QKnUsEDYA
         avSydApo7/weB5xinrrvgJR0e8C6xPsUJqrP3o4Yx8vK165b9Ko8vKNWJK0jDcYQLhug
         YdsQIgZ/8hLBFDvH954hkEJSjznS94mXEr9qd3t1Yy+imZ8FpAaFjnsepAPHDT79S5YJ
         eidw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678715159;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9wLaFePw5uizR8ACmMIJJlsaFTkZCvBfOgjm8YIL3M8=;
        b=REDM6BwlHJjdpQvdSDAULdhP4LoUJjYDDVvfOsdOqIHl4ycHW9rUOUGiK2YffV2JgL
         L7TjinDcOI0PAmlau/603vrL2tN95tr6ZTFdTbKNQ3igQfGWaiYLoZqgugyeeTIDqqPL
         0l2t+lxrEFYEr3LbC18BR1V5CuBem9s2ySfpsfjHX3CtHZCLDPnmhTH/RTuFlMd7QJkF
         H155McqjoacH6XaZ7vZDU319I/kj/43CT0eibceZYUd+T62vl00wNdWjZgI/tjD/T2YG
         GedK6+s6aGZofPrHMMkJkrkzKN3zSLt00CZHCUq3CJptFvBwqAZGMS2rg0jNGHs+qOo/
         aa9A==
X-Gm-Message-State: AO0yUKUJ73tCnNNcaNA1ls/MjjCZIO55AyGMIiN5PwOYOIFI02vjem9s
	L7bc6hsql6sgAF7rJANj5kwtktGGZuh3PZSn4Cui6sPQh9bNb8T+
X-Google-Smtp-Source: AK7set/4ZrSgWUOtk8zrsPfXTKInpjR2EbM8Tull01+AqwU7TJ0HaK9Kxl7M3/EdWIkALOWLpSBkDTzHhVDkaRDwG/M=
X-Received: by 2002:a63:f0a:0:b0:502:f5c8:a00c with SMTP id
 e10-20020a630f0a000000b00502f5c8a00cmr11041793pgl.9.1678715158757; Mon, 13
 Mar 2023 06:45:58 -0700 (PDT)
MIME-Version: 1.0
References: <20230307153542.1178065-1-zyytlz.wz@163.com> <7f9796d2-1885-a6f2-b9e3-d6ea58524033@xs4all.nl>
In-Reply-To: <7f9796d2-1885-a6f2-b9e3-d6ea58524033@xs4all.nl>
From: Zheng Hacker <hackerzheng666@gmail.com>
Date: Mon, 13 Mar 2023 21:45:45 +0800
Message-ID: <CAJedcCwnvNK8Gbcxz2V5+ebRJFrEYjpoJsKTKZ7DOSETr_7LEQ@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: fix use after free bug in hantro_release
 due to race condition
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Zheng Wang <zyytlz.wz@163.com>, ezequiel@vanguardiasur.com.ar, 
	p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	1395428693sheep@gmail.com, alex000young@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064601_824108_485EFD54 
X-CRM114-Status: GOOD (  24.19  )
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

SGFucyBWZXJrdWlsIDxodmVya3VpbEB4czRhbGwubmw+IOS6jjIwMjPlubQz5pyIMTPml6Xlkajk
uIAgMjE6MTflhpnpgZPvvJoKPgo+IE9uIDA3LzAzLzIwMjMgMTY6MzUsIFpoZW5nIFdhbmcgd3Jv
dGU6Cj4gPiBJbiBoYW50cm9fcHJvYmUsIHZwdS0+d2F0Y2hkb2dfd29yayBpcyBib3VuZCB3aXRo
Cj4gPiBoYW50cm9fd2F0Y2hkb2cuIFRoZW4gaGFudHJvX2VuZF9wcmVwYXJlX3J1biBtYXkKPiA+
IGJlIGNhbGxlZCB0byBzdGFydCB0aGUgd29yay4KPiA+Cj4gPiBJZiB3ZSBjbG9zZSB0aGUgZmls
ZSBvciByZW1vdmUgdGhlIG1vZHVsZSB3aGljaCB3aWxsCj4gPiBjYWxsIGhhbnRyb19yZWxlYXNl
IGFuZCBoYW50cm9fcmVtb3ZlIHRvIG1ha2UgY2xlYW51cCwKPiA+IHRoZXJlIG1heSBiZSBhIHVu
ZmluaXNoZWQgd29yay4gVGhlIHBvc3NpYmxlIHNlcXVlbmNlCj4gPiBpcyBhcyBmb2xsb3dzLCB3
aGljaCB3aWxsIGNhdXNlIGEgdHlwaWNhbCBVQUYgYnVnLgo+ID4KPiA+IFRoZSBzYW1lIHRoaW5n
IHdpbGwgaGFwcGVuIGluIGhhbnRyb19yZWxlYXNlLCBhbmQgdXNlCj4gPiBjdHggYWZ0ZXIgZnJl
ZWluZyBpdC4KPiA+Cj4gPiBGaXggaXQgYnkgY2FuY2VsaW5nIHRoZSB3b3JrIGJlZm9yZSBjbGVh
bnVwIGluIGhhbnRyb19yZWxlYXNlLgo+ID4KPiA+IENQVTAgICAgICAgICAgICAgICAgICBDUFUx
Cj4gPgo+ID4gICAgICAgICAgICAgICAgICAgICB8aGFudHJvX3dhdGNoZG9nCj4gPiBoYW50cm9f
cmVtb3ZlICAgICB8Cj4gPiAgIHY0bDJfbTJtX3JlbGVhc2UgIHwKPiA+ICAgICBrZnJlZShtMm1f
ZGV2KTsgfAo+ID4gICAgICAgICAgICAgICAgICAgICB8Cj4gPiAgICAgICAgICAgICAgICAgICAg
IHwgdjRsMl9tMm1fZ2V0X2N1cnJfcHJpdgo+ID4gICAgICAgICAgICAgICAgICAgICB8ICAgbTJt
X2Rldi0+Y3Vycl9jdHggLy91c2UKPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBXYW5nIDx6
eXl0bHoud3pAMTYzLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX2Rydi5jIHwgMSArCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0
aW9uKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNp
bGljb24vaGFudHJvX2Rydi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9o
YW50cm9fZHJ2LmMKPiA+IGluZGV4IGIwYWVlZGFlN2I2NS4uY2YwMGNjYWE3ODI5IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMK
PiA+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5j
Cj4gPiBAQCAtNjAxLDYgKzYwMSw3IEBAIHN0YXRpYyBpbnQgaGFudHJvX3JlbGVhc2Uoc3RydWN0
IGZpbGUgKmZpbHApCj4gPiAgICAgICAgKiBObyBuZWVkIGZvciBleHRyYSBsb2NraW5nIGJlY2F1
c2UgdGhpcyB3YXMgdGhlIGxhc3QgcmVmZXJlbmNlCj4gPiAgICAgICAgKiB0byB0aGlzIGZpbGUu
Cj4gPiAgICAgICAgKi8KPiA+ICsgICAgIGNhbmNlbF9kZWxheWVkX3dvcmsoJnZwdS0+d2F0Y2hk
b2dfd29yayk7Cj4gPiAgICAgICB2NGwyX20ybV9jdHhfcmVsZWFzZShjdHgtPmZoLm0ybV9jdHgp
Owo+ID4gICAgICAgdjRsMl9maF9kZWwoJmN0eC0+ZmgpOwo+ID4gICAgICAgdjRsMl9maF9leGl0
KCZjdHgtPmZoKTsKPgo+IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X2Rydi5jOiBJbiBmdW5jdGlvbiDigJhoYW50cm9fcmVsZWFzZeKAmToKPiBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYzo2MDQ6MzA6IGVycm9yOiDigJh2cHXi
gJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g
4oCYZnB14oCZPwo+ICAgNjA0IHwgICAgICAgICBjYW5jZWxfZGVsYXllZF93b3JrKCZ2cHUtPndh
dGNoZG9nX3dvcmspOwo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn4K
PiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZnB1Cj4gZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmM6NjA0OjMwOiBub3RlOiBlYWNoIHVu
ZGVjbGFyZWQgaWRlbnRpZmllciBpcyByZXBvcnRlZCBvbmx5IG9uY2UgZm9yIGVhY2ggZnVuY3Rp
b24gaXQgYXBwZWFycyBpbgo+Cj4gWW91IGNsZWFybHkgZGlkbid0IGNvbXBpbGUgdGhpcyBwYXRj
aCEKPgpTb3JyeSBmb3IgbXkgbWlzdGFrZS4gSSB3YXMgaHVycmllZCB0byByZXBvcnQgdGhlIGlz
c3VlIGFuZCBkaXNjdXNzCndpdGggZGV2ZWxvcGVyIHRvIGNvbmZpcm0gaXQgLiBJJ2xsIGNvbXBs
ZXRlIGl0IGFuZCB0ZXN0IGl0IGxvY2FsbHkuCgpCZXN0IHJlZ2FyZHMsClpoZW5nCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
