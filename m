Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62B5CC7619A
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 02:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cdXEGmn6APNAVA35tNTPnnM6WwsDhCOEZf0YxYwJ1k=; b=tNYqFfJe91Ia4K
	chPxzuf4bEvAy71REjIoMB+oP3slwYiGzEdr365ukdTqZwdPAsHpuNGBpZnoYWXR2rEQwF4Wsb5m6
	LQsuMkK8Y+v5s+Mm/hMJaiCntcT3fiYVxyQLzGHRR/Z1zIUjcwSgSE/bhbD5EgNBJ1uGEJeRT0Zx3
	MPocgdocQYzKKUSgmeT5IRTUT+mwaf64dFGrJizYpqREVkuepOsc7hSVaFv8u4pZP/R4CR39v9kN+
	U6h/6LLkR06v64hFP883LlvvltqzhATIJGcaR7sRB7LLvy/3GPHY5cU7gydNXRXwVy+CQ1/TuFkp0
	8/GgkR8QcEp/Emap0Diw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi4fA-005dtz-0x;
	Fri, 31 Mar 2023 02:38:48 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi4f6-005dsl-2R
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Mar 2023 02:38:46 +0000
Received: by mail-lj1-x22f.google.com with SMTP id x20so21600638ljq.9
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 19:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112; t=1680230318;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cnjJbCFJ84xSw6+b+YYcpjgJUgGf7WAv7FcMkr2usx4=;
        b=mKGdDFJCcNtHk6Tmk3hrqlX+z+CDnpVSXLIsUXdBK3RDTeH65Z3Nz8troQzRChNX/9
         Ns8vSOnfC+Li8gfKlROPPj0QLVI5dYjfohmLos/AOrFCipBn4LOezDujZr2Azw09xY7/
         S/LZt3QwX5HV454c6o0UXsJRdEU/c/W2Mhc0S+oW8p7JmV6Axt/qCRpurhotBDpcC3GY
         phiRJfHgzA0riXKI44yGM7KiqhsViRMVCp5XIN2jA74Do0fEHlEX0Hw3bANQcRGHk0O2
         8ekr7LSfEdER1scE+qkwOMZ8OiF3lf38IiYjKENYUft2zQYajIdhCQVklDFrXol/5dyn
         XQ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680230318;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cnjJbCFJ84xSw6+b+YYcpjgJUgGf7WAv7FcMkr2usx4=;
        b=ZS+0F/ys+rYDrzzFPwbhXrSwrAEnQBiQYQY8sbK+3yhtrWZeEHLsiRh/FwaDRgKm19
         vjRwRAfwB32FNq8uetkFVF4/qoa947588YQrfj8Z5V8ci2o+xq/pn/I0p1a9PIET2qE/
         8LoOI/nUk33MeFkz5yCIqaeTm6wSq274fX2HuER+xSocSQ6KX74lh0eZ/j7UsPKJG1qi
         qQyJbF1VjqJJ5g/ab1VuaB7ZdA4HY+E2J/VNUXll25TQ2y1pBEncsDvizBatwM2XK3s9
         TVe+RFwqlDZ5YeplHtEa6xaiND6VLhEDVFIu5COi0boNIiJK5Jtt2cZEEznOTd/oD1cU
         AB0Q==
X-Gm-Message-State: AAQBX9fsmA2FcYTOtbqMiSIDkiWQQZ0iDZaa6J46TQtwxzKm77dbGVtU
	0F0OJ7uevGA5+0Skk4GYlS6IvulVqxmTSanjDiy0Uw==
X-Google-Smtp-Source: AKy350bRKZHNRV7Itzh8Oh1f8CZmHVlPGbkbKOlllyOEVc3Yf4lEzadXN7Cw5QbSnxAwFXkd4e6vqT8qeEfB2+/0OVM=
X-Received: by 2002:a2e:6a0d:0:b0:295:93eb:e790 with SMTP id
 f13-20020a2e6a0d000000b0029593ebe790mr7879693ljc.5.1680230317918; Thu, 30 Mar
 2023 19:38:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230313154132.3684181-1-zyytlz.wz@163.com>
In-Reply-To: <20230313154132.3684181-1-zyytlz.wz@163.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 30 Mar 2023 23:38:25 -0300
Message-ID: <CAAEAJfAjND_Bj9HRBae22eO7cG_Xm=AX93bL+CPEb24-sitWTg@mail.gmail.com>
Subject: Re: [PATCH v3] media: hantro: fix use after free bug in hantro_remove
 due to race condition
To: Zheng Wang <zyytlz.wz@163.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	hackerzheng666@gmail.com, 1395428693sheep@gmail.com, alex000young@gmail.com, 
	hverkuil@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_193844_794970_1CC4084D 
X-CRM114-Status: GOOD (  24.53  )
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

SGkgWmhlbmcsCgpPbiBNb24sIE1hciAxMywgMjAyMyBhdCAxMjo0MuKAr1BNIFpoZW5nIFdhbmcg
PHp5eXRsei53ekAxNjMuY29tPiB3cm90ZToKPgo+IEluIGhhbnRyb19wcm9iZSwgdnB1LT53YXRj
aGRvZ193b3JrIGlzIGJvdW5kIHdpdGgKPiBoYW50cm9fd2F0Y2hkb2cuIFRoZW4gaGFudHJvX2Vu
ZF9wcmVwYXJlX3J1biBtYXkKPiBiZSBjYWxsZWQgdG8gc3RhcnQgdGhlIHdvcmsuCj4KPiBJZiB3
ZSBjbG9zZSB0aGUgZmlsZSBvciByZW1vdmUgdGhlIG1vZHVsZSB3aGljaCB3aWxsCj4gY2FsbCBo
YW50cm9fcmVsZWFzZSBhbmQgaGFudHJvX3JlbW92ZSB0byBtYWtlIGNsZWFudXAsCgpJdCdzIG5v
dCBwb3NzaWJsZSB0byBjbG9zZSB0aGUgZmlsZSBvciByZW1vdmUgdGhlIG1vZHVsZSB3aGlsZSBh
IHdhdGNoZG9nIGlzCnNjaGVkdWxlZC4KClRoYXQncyBiZWNhdXNlIHRoZSB3YXRjaGRvZyBpcyBh
Y3RpdmUgb25seSBkdXJpbmcgYSBtZW0ybWVtIGpvYiwKYW5kIHRoZSBmaWxlIHdvbid0IGJlIGNs
b3NlZCB1bnRpbCB0aGUgam9iIGlzIGRvbmUuCgp2NGwyX20ybV9jdHhfcmVsZWFzZSBjYWxscyB2
NGwyX20ybV9jYW5jZWxfam9idwp3aGljaCB3YWl0cyB1bnRpbCB0aGUgam9iIGlzIGRvbmUuCgpJ
ZiB5b3UgY2FuIGNvbmZpcm0gaXQncyBwb3NzaWJsZSB0byByZW1vdmUgb3IgY2xvc2UgdGhlIGZp
bGUKd2hpbGUgYSBqb2IgaXMgcnVubmluZywgdGhhdCB3b3VsZCBiZSBhIGRyaXZlciBidWcuCgpU
aGFua3MgZm9yIHRoZSBwYXRjaCwgYnV0IGl0J3Mgbm90IG5lZWRlZC4KClJlZ2FyZHMsCkV6ZXF1
aWVsCgo+IHRoZXJlIG1heSBiZSBhbiB1bmZpbmlzaGVkIHdvcmsuIFRoZSBwb3NzaWJsZSBzZXF1
ZW5jZQo+IGlzIGFzIGZvbGxvd3MsIHdoaWNoIHdpbGwgY2F1c2UgYSB0eXBpY2FsIFVBRiBidWcu
Cj4KPiBUaGUgc2FtZSB0aGluZyB3aWxsIGhhcHBlbiBpbiBoYW50cm9fcmVsZWFzZSwgYW5kIHVz
ZQo+IGN0eCBhZnRlciBmcmVlaW5nIGl0Lgo+Cj4gRml4IGl0IGJ5IGNhbmNlbGluZyB0aGUgd29y
ayBiZWZvcmUgY2xlYW51cCBpbiBoYW50cm9fcmVsZWFzZS4KPgo+IENQVTAgICAgICAgICAgICAg
ICAgICBDUFUxCj4KPiAgICAgICAgICAgICAgICAgICAgIHxoYW50cm9fd2F0Y2hkb2cKPiBoYW50
cm9fcmVtb3ZlICAgICB8Cj4gICB2NGwyX20ybV9yZWxlYXNlICB8Cj4gICAgIGtmcmVlKG0ybV9k
ZXYpOyB8Cj4gICAgICAgICAgICAgICAgICAgICB8Cj4gICAgICAgICAgICAgICAgICAgICB8IHY0
bDJfbTJtX2dldF9jdXJyX3ByaXYKPiAgICAgICAgICAgICAgICAgICAgIHwgICBtMm1fZGV2LT5j
dXJyX2N0eCAvL3VzZQo+Cj4gU2lnbmVkLW9mZi1ieTogWmhlbmcgV2FuZyA8enl5dGx6Lnd6QDE2
My5jb20+Cj4gLS0tCj4gdjM6Cj4gLSB1c2UgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jIGluc3Rl
YWQgb2YgY2FuY2VsX2RlbGF5ZWRfd29yayBhbmQgYWRkIGl0IHRvCj4gaGFudHJvX3JlbGVhc2Ug
c3VnZ2VzdGVkIGJ5IEhhbnMgVmVya3VpbAo+Cj4gdjI6Cj4gLSBtb3ZlIHRoZSBjYW5jZWwtd29y
ay1yZWxhdGVkIGNvZGUgdG8gaGFudHJvX3JlbW92ZSBzdWdnZXN0ZWQgYnkgSGFucyBWZXJrdWls
Cj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5j
IHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgYi9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+IGluZGV4IGIwYWVl
ZGFlN2I2NS4uODZhNGMwZmE4YzdkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiBAQCAtNTk3LDYgKzU5Nyw3IEBAIHN0YXRpYyBp
bnQgaGFudHJvX3JlbGVhc2Uoc3RydWN0IGZpbGUgKmZpbHApCj4gICAgICAgICBzdHJ1Y3QgaGFu
dHJvX2N0eCAqY3R4ID0KPiAgICAgICAgICAgICAgICAgY29udGFpbmVyX29mKGZpbHAtPnByaXZh
dGVfZGF0YSwgc3RydWN0IGhhbnRyb19jdHgsIGZoKTsKPgo+ICsgICAgICAgY2FuY2VsX2RlbGF5
ZWRfd29ya19zeW5jKCZjdHgtPmRldi0+d2F0Y2hkb2dfd29yayk7Cj4gICAgICAgICAvKgo+ICAg
ICAgICAgICogTm8gbmVlZCBmb3IgZXh0cmEgbG9ja2luZyBiZWNhdXNlIHRoaXMgd2FzIHRoZSBs
YXN0IHJlZmVyZW5jZQo+ICAgICAgICAgICogdG8gdGhpcyBmaWxlLgo+IEBAIC0xMDk5LDYgKzEx
MDAsNyBAQCBzdGF0aWMgaW50IGhhbnRyb19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPgo+ICAgICAgICAgdjRsMl9pbmZvKCZ2cHUtPnY0bDJfZGV2LCAiUmVtb3ZpbmcgJXNc
biIsIHBkZXYtPm5hbWUpOwo+Cj4gKyAgICAgICBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJnZw
dS0+d2F0Y2hkb2dfd29yayk7Cj4gICAgICAgICBtZWRpYV9kZXZpY2VfdW5yZWdpc3RlcigmdnB1
LT5tZGV2KTsKPiAgICAgICAgIGhhbnRyb19yZW1vdmVfZGVjX2Z1bmModnB1KTsKPiAgICAgICAg
IGhhbnRyb19yZW1vdmVfZW5jX2Z1bmModnB1KTsKPiAtLQo+IDIuMjUuMQo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
