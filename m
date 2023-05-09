Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA3F4C7EE23
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 May 2023 16:21:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pS2VXcvsU6jvxmqy7H/DJ95MLS1H+qPM5sGh99j7S2Q=; b=g8RcxlCKzr+vNs
	Fxq6rv2UDVlVpcta73wyea3YRMrjoQRydjoO57vsPWy5s/Q4hCoSsJKFFLWfNecjz1jE7Y1w4lP9S
	rjER6nax1j7taTRkfSQfQYKf042oOqQm7vQItyB2iFm3ZA4lcAUf7yFF4M90bC09ZdV9CjBc/RBTk
	hBv9kzRnO0we8PxPhWo351WDFXnFxu4ljDQpiKfFwdQm8CZ+6j7sqenJj7R+cPLSD5hLfue2xD3zg
	OMirbKRlB9tpfG0dykaGaGPIlvAqV5RuX3Dxf5E1c19M4M/bx08X2TKt4SmBRhdO+mSSxviFyVLvO
	D0dKoJXE/MzQmdCRsHnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwQ5E-003n6y-1O;
	Tue, 09 May 2023 16:21:00 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwQ5B-003n6V-1Z
	for linux-rockchip@lists.infradead.org;
	Tue, 09 May 2023 16:20:59 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-50bc570b4a3so11387046a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 09 May 2023 09:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=yngvason.is; s=google; t=1683649255; x=1686241255;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ysxcmg33z3TkJckY07k1ph9gX5Ru2lXBSM10WSn2Y84=;
        b=MjeR4objWi9sLS3I39DMB9r46lT5HhDY7guiAfUZVxOniuuwBwfN+45MNRcCpt041B
         U5HNAkGqAa271lIcJTogCEAs1uEAn3vhLcCy2R9eHqdpB6RdBYZ8EoCA/HhIGcS8xuCe
         wS14dZ61cXE733flLNeGhMMWqw1sgIPmPLABc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683649255; x=1686241255;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ysxcmg33z3TkJckY07k1ph9gX5Ru2lXBSM10WSn2Y84=;
        b=AVucDxtfUblAWu/WvIarIm3fpUr/VkI3gWy3RuMRcAiRhAq+3cfZnvS+w/VZNv7sr2
         fpLgWbW0BbjutG6rAY6o7HxW462mUJ5u55N7qfrKTjz/Z+Eu7DXVzwjYAeDJp/vvo+e2
         VDS0nWaTofNYQyP/4kHz+Zv6mMfZHZmUOJfmf08fVzC3PIFaxyWiLiW9KhEE/ks14amt
         D2vqJ8OMkEhAwXm7ZJPrwhzpIEJ8ZQTy3HveHPug7r44u/+2joMnW5UMcISvD686hN4s
         jjlE8aItaD7ncUxpyDPl/l4UbjIFMlVL1z9rDPXrMygjPjNV9JPYxWs0VWxUCGIrWmvB
         J3rg==
X-Gm-Message-State: AC+VfDzYBO6IabL/ycTcmzdcwQoz0mWmoPZD6SX6+Sj3xCZx48WSwEPv
	6Zzhv+Mbi77DDAVEVQOHB9bMH2x1PL4l8wO+iUBMzA9hvYiplufkapLuiA==
X-Google-Smtp-Source: ACHHUZ52QCNDL1Ci8BCyrOTEQb8eZsqVdnhZAyNLAaXBqcBc60ReLpuautNWnH/j+udl16dNhDFHii+8x0rZVK1O1qI=
X-Received: by 2002:a17:906:eec5:b0:965:bdd1:1d22 with SMTP id
 wu5-20020a170906eec500b00965bdd11d22mr12055164ejb.68.1683649255241; Tue, 09
 May 2023 09:20:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230509150249.824440-1-andri@yngvason.is> <20230509150249.824440-2-andri@yngvason.is>
In-Reply-To: <20230509150249.824440-2-andri@yngvason.is>
From: Andri Yngvason <andri@yngvason.is>
Date: Tue, 9 May 2023 16:20:19 +0000
Message-ID: <CAFNQBQyta=tmDDFFtvpBxRV+to73mqs2zKZ9VOojTNnOE60zgg@mail.gmail.com>
Subject: Re: [PATCH 2/2] media: verisilicon: rockchip_vpu2_hw_jpeg_enc: Add
 data_offset to source addresses
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_092057_730776_CCE9EAB8 
X-CRM114-Status: GOOD (  15.56  )
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

w75yaS4sIDkuIG1hw60gMjAyMyBrbC4gMTU6MDMgc2tyaWZhw7BpIEFuZHJpIFluZ3Zhc29uIDxh
bmRyaUB5bmd2YXNvbi5pcz46Cj4KPiBUaGlzIGFjY29tbW9kYXRlcyBwbGFuZXMgdGhhdCBhcmUg
YmFja2VkIGJ5IGEgc2luZ2xlIGRtYWJ1Zi4KPgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJpIFluZ3Zh
c29uIDxhbmRyaUB5bmd2YXNvbi5pcz4KPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHUyX2h3X2pwZWdfZW5jLmMgfCAzICsrLQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHUyX2h3X2pwZWdf
ZW5jLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTJf
aHdfanBlZ19lbmMuYwo+IGluZGV4IDUyYzc2ZmI5MWM1Ni4uNzE2YzI0OGRjMmJmIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1Ml9o
d19qcGVnX2VuYy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9y
b2NrY2hpcF92cHUyX2h3X2pwZWdfZW5jLmMKPiBAQCAtOTksNyArOTksOCBAQCBzdGF0aWMgdm9p
ZCByb2NrY2hpcF92cHUyX2pwZWdfZW5jX3NldF9idWZmZXJzKHN0cnVjdCBoYW50cm9fZGV2ICp2
cHUsCj4gICAgICAgICB2ZXB1X3dyaXRlX3JlbGF4ZWQodnB1LCBzaXplX2xlZnQsIFZFUFVfUkVH
X1NUUl9CVUZfTElNSVQpOwo+Cj4gICAgICAgICBmb3IgKGkgPSAwOyBpIDwgbnVtX3BsYW5lczsg
aSsrKSB7Cj4gLSAgICAgICAgICAgICAgIHNyYyA9IHZiMl9kbWFfY29udGlnX3BsYW5lX2RtYV9h
ZGRyKHNyY19idWYsIGkpOwo+ICsgICAgICAgICAgICAgICBzcmMgPSB2YjJfZG1hX2NvbnRpZ19w
bGFuZV9kbWFfYWRkcihzcmNfYnVmLCBpKSArCj4gKyAgICAgICAgICAgICAgICAgICAgICAgc3Jj
X2J1Zi0+cGxhbmVzW2ldLmRhdGFfb2Zmc2V0Owo+ICAgICAgICAgICAgICAgICB2ZXB1X3dyaXRl
X3JlbGF4ZWQodnB1LCBzcmMsIF9fdmVwdV9yZWdfYWRkcl9mb3JfcGxhbmUoaSkpOwo+ICAgICAg
ICAgfQo+ICB9Cj4gLS0KPiAyLjQwLjEKPgoKSSBzZWUgbm93IHRoYXQgdGhlcmUgaXMgYWxyZWFk
eSBhIHBhdGNoIHN1Ym1pdHRlZCBmb3IgdGhpczoKaHR0cHM6Ly9tYXJjLmluZm8vP2w9bGludXgt
YXJtLWtlcm5lbCZtPTE2Nzk5MjM0NjQwNDc4OSZ3PTIKCkxldCdzIGNvbnRpbnVlIHdpdGggdGhh
dCBpbnN0ZWFkLiBJIGNhbiBjb25maXJtIHRob3VnaCwgdGhhdCBzZXR0aW5nCnRoZSBvZmZzZXQg
d29ya3MgZmluZSBmb3IgbWUuCgpSZWdhcmRzLApBbmRyaQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
