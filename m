Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C31DC3A5A7
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Dec 2022 09:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EsIXaW/YcW48bETiHt14FxulXzDdQtkKrRUwGfNURvQ=; b=tL8xxQLf/SvyJh
	UZj6+XL313uBdMtA9lwI8gUsB+K/w5V5aAH0eYmu1wBpapDucm6MuUh2Rttd992i98c76+PWoHcSC
	MErkJ5MGyd/XTt8q/YkDM3f3B6TPx8PQtPQt8lTRWFzahYiN3XA+8MZw+QtOsSsYQ5ZAetgmBQmJr
	61j8QUjW3tiNqPBbjflS4YFO9M0W7M8IXGmFWP26njZcJVV4ihISXCH2nf2QKwssZ9ItN0+fWbNqd
	F4715KlzcwF54WNvqa3cxcds/BuW/bBCkAkoTNuSfuYwqSMmFKMez6Q6UDuTeW/yzUOrkMHErKpjD
	1n9ugL1KThLe1wUTJrbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2U01-005avp-5l; Tue, 06 Dec 2022 09:12:25 +0000
Received: from mail-vs1-xe2b.google.com ([2607:f8b0:4864:20::e2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Tzq-005an7-UF
	for linux-rockchip@lists.infradead.org; Tue, 06 Dec 2022 09:12:16 +0000
Received: by mail-vs1-xe2b.google.com with SMTP id 3so12724738vsq.7
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Dec 2022 01:12:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hlN2+7DweJBI+0ZbyELLqp7L8/wV+kOEIdMWGeIWMSU=;
        b=so5DaPIRVAiN9c1JbsjUx3p1OP2bOsJ6Hr8q3aw1h8syCFLSOZbTa/zyVay/QBmcFm
         7nKAC+7Ze+KQsyj/c8XzEw8QlNtyvIe2KZ0/Qd5diK/N2t1LOcCDC1VrveQyTjOMl0CP
         8CPz7/uj3W0aFSICrYAwKFlJ/LIvSV5nM8GmqyuPipRi40y+wBrroVKDj7u7XiVaBMfg
         G1JVLbzwC2+u/4/zczKeME8UDb8V0a/LhRM7l3HQCCWI71zyGVoUjCrQ458N337qPXZx
         GmCH5GqIasjDpR33GGVM3hUDQ6qcMuEg2MiKyLn2ZzjjFQ3NG7fP2XD9hBg338movnXN
         aL7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hlN2+7DweJBI+0ZbyELLqp7L8/wV+kOEIdMWGeIWMSU=;
        b=sW/BO7QO6CPBA5qvaHylNveEi/6ksyavpPnzXnEn4LGKk8oyZi0JkioZB2pK+O8/iP
         2ZCTGibwJRHlHbXoh6Eu5l7NbMBMH6TSlAK2mtiJQJT5N6+iGj/hRtQxwLKSEF+dTzNt
         9jVSiMCiItdkEugyNuRU97rNwMsPLpO54BK3beZSHn23ZO8BTqY3q1w8gwO4ZwDuzmB9
         SqD34s+s3I5zuhgyz/1bexHi3im2ktK7GYWmNWx0Q1ZUHRVYFyd/WvWpzSN1LWGdBFhj
         sm5Neb6U6FL0BKOOh9ANK8eR4wkgjnL9Gaxcbfu1Mw5Ib24n0qpB122VhqcaNn56eU7e
         A1Wg==
X-Gm-Message-State: ANoB5pkfuRLFjufxW1NNmuirfRA6Ms01WbsZCGEAwRNg1qaKfhM1RGHF
	akRExyUvJ+OFfOGbOf637Y9ExKAHWifHoelWMx7DNg==
X-Google-Smtp-Source: AA0mqf64L2iAbcP0f1MrVQ32b22AN+Wz2W2Xrz+41KFrZyKe4/D5r81yqMAPZseq06oTlN5EtVtJtWjHqVkIjzJ+4nc=
X-Received: by 2002:a67:ca86:0:b0:3b1:33bd:7fc7 with SMTP id
 a6-20020a67ca86000000b003b133bd7fc7mr5729196vsl.13.1670317931506; Tue, 06 Dec
 2022 01:12:11 -0800 (PST)
MIME-Version: 1.0
References: <1670221196-36806-1-git-send-email-wangyufen@huawei.com>
 <f6bab0d1-008d-c5c0-ef29-28a61df91e65@huawei.com> <CAMRc=MfD84WstmUO+qnkrAYviq_ESwvk554TGCjZq0P9JAG24w@mail.gmail.com>
 <ff96aac6-d5e5-222a-307a-d17ccc8b3201@huawei.com>
In-Reply-To: <ff96aac6-d5e5-222a-307a-d17ccc8b3201@huawei.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 6 Dec 2022 10:12:00 +0100
Message-ID: <CAMRc=MdoCwMWxPoybZ_fDfcMJcoen=j=tgoFELCGFdBB2CzbSQ@mail.gmail.com>
Subject: Re: [PATCH] gpio/rockchip: fix refcount leak in rockchip_gpiolib_register()
To: wangyufen <wangyufen@huawei.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	jay.xu@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_011215_002733_3F73D4D4 
X-CRM114-Status: GOOD (  18.54  )
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

T24gVHVlLCBEZWMgNiwgMjAyMiBhdCAyOjQyIEFNIHdhbmd5dWZlbiA8d2FuZ3l1ZmVuQGh1YXdl
aS5jb20+IHdyb3RlOgo+Cj4KPgo+IOWcqCAyMDIyLzEyLzUgMTg6MjYsIEJhcnRvc3ogR29sYXN6
ZXdza2kg5YaZ6YGTOgo+ID4gT24gTW9uLCBEZWMgNSwgMjAyMiBhdCA3OjIxIEFNIHdhbmd5dWZl
biA8d2FuZ3l1ZmVuQGh1YXdlaS5jb20+IHdyb3RlOgo+ID4+Cj4gPj4KPiA+Pgo+ID4+IOWcqCAy
MDIyLzEyLzUgMTQ6MTksIFdhbmcgWXVmZW4g5YaZ6YGTOgo+ID4+PiBUaGUgbm9kZSByZXR1cm5l
ZCBieSBvZl9nZXRfcGFyZW50KCkgd2l0aCByZWZjb3VudCBpbmNyZW1lbnRlZCwKPiA+Pj4gb2Zf
bm9kZV9wdXQoKSBuZWVkcyBiZSBjYWxsZWQgd2hlbiBmaW5pc2ggdXNpbmcgaXQuIFNvIGFkZCBp
dCBpbiB0aGUKPiA+Pj4gZW5kIG9mIG9mX3BpbmN0cmxfZ2V0KCkuCj4gPj4+Cj4gPj4+IEZpeGVz
OiA5MzZlZTI2NzVlZWUgKCJncGlvL3JvY2tjaGlwOiBhZGQgZHJpdmVyIGZvciByb2NrY2hpcCBn
cGlvIikKPiA+Pj4gU2lnbmVkLW9mZi1ieTogV2FuZyBZdWZlbiA8d2FuZ3l1ZmVuQGh1YXdlaS5j
b20+Cj4gPj4+IC0tLQo+ID4+PiAgICBkcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIHwgMSAr
Cj4gPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4+Pgo+ID4+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3Bpby9ncGlv
LXJvY2tjaGlwLmMKPiA+Pj4gaW5kZXggODcwOTEwYi4uMjAwZTQzYSAxMDA2NDQKPiA+Pj4gLS0t
IGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+ID4+PiArKysgYi9kcml2ZXJzL2dwaW8v
Z3Bpby1yb2NrY2hpcC5jCj4gPj4+IEBAIC02MTAsNiArNjEwLDcgQEAgc3RhdGljIGludCByb2Nr
Y2hpcF9ncGlvbGliX3JlZ2lzdGVyKHN0cnVjdCByb2NrY2hpcF9waW5fYmFuayAqYmFuaykKPiA+
Pj4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RBVEE7Cj4gPj4+Cj4gPj4+ICAg
ICAgICAgICAgICAgIHBjdGxkZXYgPSBvZl9waW5jdHJsX2dldChwY3RsbnApOwo+ID4+PiArICAg
ICAgICAgICAgIG9mX25vZGVfcHV0KHBjdGxucCk7Cj4gPj4+ICAgICAgICAgICAgICAgIGlmICgh
cGN0bGRldikKPiA+Pj4gICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiA+
Pj4KPiA+Cj4gPiBTb21ldGhpbmcgd2VudCB3cm9uZyB3aGVuIHNlbmRpbmcgdGhlIHBhdGNoPyBE
aWQgeW91IHVzZSBnaXQgc2VuZC1lbWFpbD8KPiA+Cj4KPiBUaGUgcGF0Y2ggaXRzZWxmIGlzIGZp
bmUsIGJ1dCBJIGZvcmdvdCB0byBDYyB0aGUgYXV0aG9yIG9mIHRoZSBwYXRjaCBJCj4gZml4ZWQs
IHNvIEkgYWRkZWQgYSBDYy4KPgo+IFRoYW5rcywKPiBXYW5nCj4KPiA+IEJhcnQKPiA+CgpJIGRv
bid0IGhhdmUgaXQgaW4gbXkgaW5ib3gsIG5vdCBldmVuIGluIHNwYW0uIEkgZmV0Y2hlZCB0aGUg
cGF0Y2gKZnJvbSBwYXRjaHdvcmsgYW5kIGFwcGxpZWQgaXQgZm9yIGZpeGVzLCB0aGFua3MuCgpC
YXJ0CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
