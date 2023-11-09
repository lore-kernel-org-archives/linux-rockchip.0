Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12C19C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 20:22:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU2TJk11jzs9n1AmKb3RYnMtkrpEv7qAPs7bD6Eu8Sg=; b=jik6EAZQxRRMRF
	doBDSKMs4+fwAcvtsRNWEk2Ka1pHRIOaxAfZONuUwjFdQwLdl2SfQYX2nd1ulMpuTzq5TxyTNMPxy
	OVtCi4cotSozkva4K+5kzvSohwZaSouEt3MY5tq6PSljEnVfxwKxwAuDz8VHGAizsjc+eLlBib27J
	ef9esCj6t6bM+2/kiyYApBkHCLJr2a4lH/qPPftXu8tD4VfDKNWCrJhE+mAPmNL7Uh2S4rJ2IxDwB
	wgxn7uWQwZBZyHKXigg6o8ZePyIdNvi1pNzVqiGXiGoVI4gNCahrtMnxBr7Z+7ECvr3UeDoU+RX8w
	NUVUTXohKCo68ksXcC/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1BXY-007AwT-1a;
	Thu, 09 Nov 2023 20:22:12 +0000
Received: from mail-vk1-xa2c.google.com ([2607:f8b0:4864:20::a2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1BXU-007AvF-2M;
	Thu, 09 Nov 2023 20:22:10 +0000
Received: by mail-vk1-xa2c.google.com with SMTP id 71dfb90a1353d-4ac42a7bffeso557958e0c.2;
        Thu, 09 Nov 2023 12:22:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699561324; x=1700166124; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=79oUciC1MphFLchMyW5zN+ld+Ip/ohdJ3MzsnnkdArI=;
        b=Y1bHWUvrualm5xtRth7u9xmjC2dDNcaX8/tNudL1jTnDEPPD4wsCpGIULrz3BOhgRM
         RlLEtQu2eONyD/IezfwSRuKfXcsLX2T3MwBMyw2XB844q+BazzbWFka0RKNOMpg54Ro8
         7GW5Ahccvfb/Vs7CZemxWPuEHTp1RPO2aMoquRNld/T35i/MV3Pd6tLKCeceZRa9ku/d
         uw54Y4ISrNc7SnxlIvvYns7vihWduESgPJxM9i+PuAqodsduE1wq48xsiFBpjKiGAAF8
         AuvhIf4agrehxpo65N1aggVUG5K/Fz1IvJs+aQIvrEhVd8IizMgUa9QQEXNeIJGgMjuZ
         owVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699561324; x=1700166124;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=79oUciC1MphFLchMyW5zN+ld+Ip/ohdJ3MzsnnkdArI=;
        b=saSrJypo/9gjo8PiSZHKgOJbylCvdavd2cPTU7zO8pXPK6U4nutrduBlLLrWBMJc+H
         mVm6vOLUbEANtNoTuAfnset4qH0k4O6oy+X6RENBqPsexKg5+rN5ktGPPTDV+UxcMTNL
         nShcTeywFoxBoomStIH0hSizr3wBfLZeuwVfrDu1rlpCsejLdxGm2tI2mUJj5a5Kg/Lq
         cmiIqetBUk/zF0R5KrMNUVTygqrE3W6ulEA/n+s4cjY4H98/3OF3miQAYTDYdbvuxuyD
         qyc0BSaGiOpnZzlmbuaMsyH95ASHSWKMxikTR73P/ski6t9sPpl7zLDpWXEwk2/+ke+9
         6/PQ==
X-Gm-Message-State: AOJu0YwNTy5eAPWoffbwuuhA+Jai1JuhIXqS20gEfEMWFrKo+fODNeN3
	arFR77DNqUJDhFpdgZLKoF4P3l4cChwjqXPbE08=
X-Google-Smtp-Source: AGHT+IHeEYBi5nUVdK8O1Fji9SXoWwVQ1ionOejtl0pq9n4Oxy3eyVaDJB4oTZ8X0i5CLfXx5Mqs5VNvA3gtw+Gk21c=
X-Received: by 2002:a05:6122:1807:b0:4a1:7278:3bf5 with SMTP id
 ay7-20020a056122180700b004a172783bf5mr2992264vkb.4.1699561324079; Thu, 09 Nov
 2023 12:22:04 -0800 (PST)
MIME-Version: 1.0
References: <20231109163512.179524-14-benjamin.gaignard@collabora.com> <20231109163512.179524-39-benjamin.gaignard@collabora.com>
In-Reply-To: <20231109163512.179524-39-benjamin.gaignard@collabora.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 9 Nov 2023 20:21:17 +0000
Message-ID: <CA+V-a8t33Q5C00dUmo=i=wd5wPzqdCNVO8MLH8to-7Ge9SjYuQ@mail.gmail.com>
Subject: Re: [PATCH v15 38/56] media: ti: Stop direct calls to queue
 num_buffers field
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, tfiga@chromium.org, m.szyprowski@samsung.com, 
	ming.qian@nxp.com, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, 
	gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl, 
	nicolas.dufresne@collabora.com, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	kernel@collabora.com, Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_122208_812946_E20E5085 
X-CRM114-Status: GOOD (  16.58  )
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

T24gVGh1LCBOb3YgOSwgMjAyMyBhdCA0OjM44oCvUE0gQmVuamFtaW4gR2FpZ25hcmQKPGJlbmph
bWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gVXNlIHZiMl9nZXRfbnVtX2J1
ZmZlcnMoKSB0byBhdm9pZCB1c2luZyBxdWV1ZSBudW1fYnVmZmVycyBmaWVsZCBkaXJlY3RseS4K
PiBUaGlzIGFsbG93cyB1cyB0byBjaGFuZ2UgaG93IHRoZSBudW1iZXIgb2YgYnVmZmVycyBpcyBj
b21wdXRlZCBpbiB0aGUKPiBmdXR1cmUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWln
bmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPiBSZXZpZXdlZC1ieTogQW5k
cnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4KPiBDQzogIkxhZCwg
UHJhYmhha2FyIiA8cHJhYmhha2FyLmNzZW5nZ0BnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdGkvYW00Mzd4L2FtNDM3eC12cGZlLmMgICB8IDUgKysrLS0KPiAgZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS90aS9jYWwvY2FsLXZpZGVvLmMgICAgICAgIHwgNSArKystLQo+
ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3RpL2RhdmluY2kvdnBpZl9jYXB0dXJlLmMgfCA1ICsr
Ky0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdGkvZGF2aW5jaS92cGlmX2Rpc3BsYXkuYyB8
IDUgKysrLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9vbWFwL29tYXBfdm91dC5jICAg
ICAgIHwgNSArKystLQo+ICA1IGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDEwIGRl
bGV0aW9ucygtKQo+ClJldmlld2VkLWJ5OiBQcmFiaGFrYXIgPHByYWJoYWthci5jc2VuZ2dAZ21h
aWwuY29tPgoKQ2hlZXJzLApQcmFiaGFrYXIKCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdGkvYW00Mzd4L2FtNDM3eC12cGZlLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3RpL2FtNDM3eC9hbTQzN3gtdnBmZS5jCj4gaW5kZXggNWZhMmVhOTAyNWQ5Li5mMThhY2Y5Mjg2
YTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9hbTQzN3gvYW00Mzd4
LXZwZmUuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdGkvYW00Mzd4L2FtNDM3eC12
cGZlLmMKPiBAQCAtMTc3MSw5ICsxNzcxLDEwIEBAIHN0YXRpYyBpbnQgdnBmZV9xdWV1ZV9zZXR1
cChzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwKPiAgewo+ICAgICAgICAgc3RydWN0IHZwZmVfZGV2aWNl
ICp2cGZlID0gdmIyX2dldF9kcnZfcHJpdih2cSk7Cj4gICAgICAgICB1bnNpZ25lZCBzaXplID0g
dnBmZS0+Zm10LmZtdC5waXguc2l6ZWltYWdlOwo+ICsgICAgICAgdW5zaWduZWQgaW50IHFfbnVt
X2J1ZnMgPSB2YjJfZ2V0X251bV9idWZmZXJzKHZxKTsKPgo+IC0gICAgICAgaWYgKHZxLT5udW1f
YnVmZmVycyArICpuYnVmZmVycyA8IDMpCj4gLSAgICAgICAgICAgICAgICpuYnVmZmVycyA9IDMg
LSB2cS0+bnVtX2J1ZmZlcnM7Cj4gKyAgICAgICBpZiAocV9udW1fYnVmcyArICpuYnVmZmVycyA8
IDMpCj4gKyAgICAgICAgICAgICAgICpuYnVmZmVycyA9IDMgLSBxX251bV9idWZzOwo+Cj4gICAg
ICAgICBpZiAoKm5wbGFuZXMpIHsKPiAgICAgICAgICAgICAgICAgaWYgKHNpemVzWzBdIDwgc2l6
ZSkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9jYWwvY2FsLXZpZGVv
LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3RpL2NhbC9jYWwtdmlkZW8uYwo+IGluZGV4IGE4
YWJjZDBmZWUxNy4uOTRlNjdjMDU3YTIwIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdGkvY2FsL2NhbC12aWRlby5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90
aS9jYWwvY2FsLXZpZGVvLmMKPiBAQCAtNjAzLDkgKzYwMywxMCBAQCBzdGF0aWMgaW50IGNhbF9x
dWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwKPiAgewo+ICAgICAgICAgc3RydWN0IGNh
bF9jdHggKmN0eCA9IHZiMl9nZXRfZHJ2X3ByaXYodnEpOwo+ICAgICAgICAgdW5zaWduZWQgaW50
IHNpemUgPSBjdHgtPnZfZm10LmZtdC5waXguc2l6ZWltYWdlOwo+ICsgICAgICAgdW5zaWduZWQg
aW50IHFfbnVtX2J1ZnMgPSB2YjJfZ2V0X251bV9idWZmZXJzKHZxKTsKPgo+IC0gICAgICAgaWYg
KHZxLT5udW1fYnVmZmVycyArICpuYnVmZmVycyA8IDMpCj4gLSAgICAgICAgICAgICAgICpuYnVm
ZmVycyA9IDMgLSB2cS0+bnVtX2J1ZmZlcnM7Cj4gKyAgICAgICBpZiAocV9udW1fYnVmcyArICpu
YnVmZmVycyA8IDMpCj4gKyAgICAgICAgICAgICAgICpuYnVmZmVycyA9IDMgLSBxX251bV9idWZz
Owo+Cj4gICAgICAgICBpZiAoKm5wbGFuZXMpIHsKPiAgICAgICAgICAgICAgICAgaWYgKHNpemVz
WzBdIDwgc2l6ZSkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9kYXZp
bmNpL3ZwaWZfY2FwdHVyZS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9kYXZpbmNpL3Zw
aWZfY2FwdHVyZS5jCj4gaW5kZXggOTlmYWU4ODMwYzQxLi5mYzQyYjRiYzM3ZTYgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9kYXZpbmNpL3ZwaWZfY2FwdHVyZS5jCj4g
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9kYXZpbmNpL3ZwaWZfY2FwdHVyZS5jCj4g
QEAgLTExMyw2ICsxMTMsNyBAQCBzdGF0aWMgaW50IHZwaWZfYnVmZmVyX3F1ZXVlX3NldHVwKHN0
cnVjdCB2YjJfcXVldWUgKnZxLAo+ICAgICAgICAgc3RydWN0IGNoYW5uZWxfb2JqICpjaCA9IHZi
Ml9nZXRfZHJ2X3ByaXYodnEpOwo+ICAgICAgICAgc3RydWN0IGNvbW1vbl9vYmogKmNvbW1vbiA9
ICZjaC0+Y29tbW9uW1ZQSUZfVklERU9fSU5ERVhdOwo+ICAgICAgICAgdW5zaWduZWQgc2l6ZSA9
IGNvbW1vbi0+Zm10LmZtdC5waXguc2l6ZWltYWdlOwo+ICsgICAgICAgdW5zaWduZWQgaW50IHFf
bnVtX2J1ZnMgPSB2YjJfZ2V0X251bV9idWZmZXJzKHZxKTsKPgo+ICAgICAgICAgdnBpZl9kYmco
MiwgZGVidWcsICJ2cGlmX2J1ZmZlcl9zZXR1cFxuIik7Cj4KPiBAQCAtMTIyLDggKzEyMyw4IEBA
IHN0YXRpYyBpbnQgdnBpZl9idWZmZXJfcXVldWVfc2V0dXAoc3RydWN0IHZiMl9xdWV1ZSAqdnEs
Cj4gICAgICAgICAgICAgICAgIHNpemUgPSBzaXplc1swXTsKPiAgICAgICAgIH0KPgo+IC0gICAg
ICAgaWYgKHZxLT5udW1fYnVmZmVycyArICpuYnVmZmVycyA8IDMpCj4gLSAgICAgICAgICAgICAg
ICpuYnVmZmVycyA9IDMgLSB2cS0+bnVtX2J1ZmZlcnM7Cj4gKyAgICAgICBpZiAocV9udW1fYnVm
cyArICpuYnVmZmVycyA8IDMpCj4gKyAgICAgICAgICAgICAgICpuYnVmZmVycyA9IDMgLSBxX251
bV9idWZzOwo+Cj4gICAgICAgICAqbnBsYW5lcyA9IDE7Cj4gICAgICAgICBzaXplc1swXSA9IHNp
emU7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdGkvZGF2aW5jaS92cGlm
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdGkvZGF2aW5jaS92cGlmX2Rpc3Bs
YXkuYwo+IGluZGV4IGY4ZWMyOTkxYzY2Ny4uOWRiYWIxMDAzYzFkIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdGkvZGF2aW5jaS92cGlmX2Rpc3BsYXkuYwo+ICsrKyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdGkvZGF2aW5jaS92cGlmX2Rpc3BsYXkuYwo+IEBAIC0xMTUs
NiArMTE1LDcgQEAgc3RhdGljIGludCB2cGlmX2J1ZmZlcl9xdWV1ZV9zZXR1cChzdHJ1Y3QgdmIy
X3F1ZXVlICp2cSwKPiAgICAgICAgIHN0cnVjdCBjaGFubmVsX29iaiAqY2ggPSB2YjJfZ2V0X2Ry
dl9wcml2KHZxKTsKPiAgICAgICAgIHN0cnVjdCBjb21tb25fb2JqICpjb21tb24gPSAmY2gtPmNv
bW1vbltWUElGX1ZJREVPX0lOREVYXTsKPiAgICAgICAgIHVuc2lnbmVkIHNpemUgPSBjb21tb24t
PmZtdC5mbXQucGl4LnNpemVpbWFnZTsKPiArICAgICAgIHVuc2lnbmVkIGludCBxX251bV9idWZz
ID0gdmIyX2dldF9udW1fYnVmZmVycyh2cSk7Cj4KPiAgICAgICAgIGlmICgqbnBsYW5lcykgewo+
ICAgICAgICAgICAgICAgICBpZiAoc2l6ZXNbMF0gPCBzaXplKQo+IEBAIC0xMjIsOCArMTIzLDgg
QEAgc3RhdGljIGludCB2cGlmX2J1ZmZlcl9xdWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICp2
cSwKPiAgICAgICAgICAgICAgICAgc2l6ZSA9IHNpemVzWzBdOwo+ICAgICAgICAgfQo+Cj4gLSAg
ICAgICBpZiAodnEtPm51bV9idWZmZXJzICsgKm5idWZmZXJzIDwgMykKPiAtICAgICAgICAgICAg
ICAgKm5idWZmZXJzID0gMyAtIHZxLT5udW1fYnVmZmVyczsKPiArICAgICAgIGlmIChxX251bV9i
dWZzICsgKm5idWZmZXJzIDwgMykKPiArICAgICAgICAgICAgICAgKm5idWZmZXJzID0gMyAtIHFf
bnVtX2J1ZnM7Cj4KPiAgICAgICAgICpucGxhbmVzID0gMTsKPiAgICAgICAgIHNpemVzWzBdID0g
c2l6ZTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9vbWFwL29tYXBf
dm91dC5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS9vbWFwL29tYXBfdm91dC5jCj4gaW5k
ZXggNDE0MzI3NDA4OWMzLi43MmNlOTAzNzE3ZDMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS90aS9vbWFwL29tYXBfdm91dC5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS90aS9vbWFwL29tYXBfdm91dC5jCj4gQEAgLTk0NCwxMCArOTQ0LDExIEBAIHN0YXRpYyBp
bnQgb21hcF92b3V0X3ZiMl9xdWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRldmljZSAqYWxsb2NfZGV2
c1tdKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3Qgb21hcF92b3V0X2RldmljZSAqdm91dCA9IHZiMl9n
ZXRfZHJ2X3ByaXYodnEpOwo+ICsgICAgICAgdW5zaWduZWQgaW50IHFfbnVtX2J1ZnMgPSB2YjJf
Z2V0X251bV9idWZmZXJzKHZxKTsKPiAgICAgICAgIGludCBzaXplID0gdm91dC0+cGl4LnNpemVp
bWFnZTsKPgo+IC0gICAgICAgaWYgKGlzX3JvdGF0aW9uX2VuYWJsZWQodm91dCkgJiYgdnEtPm51
bV9idWZmZXJzICsgKm5idWZzID4gVlJGQl9OVU1fQlVGUykgewo+IC0gICAgICAgICAgICAgICAq
bmJ1ZnMgPSBWUkZCX05VTV9CVUZTIC0gdnEtPm51bV9idWZmZXJzOwo+ICsgICAgICAgaWYgKGlz
X3JvdGF0aW9uX2VuYWJsZWQodm91dCkgJiYgcV9udW1fYnVmcyArICpuYnVmcyA+IFZSRkJfTlVN
X0JVRlMpIHsKPiArICAgICAgICAgICAgICAgKm5idWZzID0gVlJGQl9OVU1fQlVGUyAtIHFfbnVt
X2J1ZnM7Cj4gICAgICAgICAgICAgICAgIGlmICgqbmJ1ZnMgPT0gMCkKPiAgICAgICAgICAgICAg
ICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiAgICAgICAgIH0KPiAtLQo+IDIuMzkuMgo+Cgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
