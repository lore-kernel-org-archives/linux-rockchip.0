Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60FD7C4321E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 10:26:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2XmsnBcsVmsRWUdv0VvrdpDkOdolLloni/srbigIII0=; b=muNQ1YPyKeJ2bI
	WNTOFtbCd+EbDOGeMBSSN807qd4LlL6KK1K801NDycipFQjv477qpd/ilT/iTvxFljwjbe7IA7HZg
	giJVYSzB0xpy3S/z7PeuUMPYrNYASXgSZjNxUUdUkOIdhym2kCoKM6A1nqSA1pAYbX+MNobmxkEsl
	rz5RLlHr/m+aI7spDgPoLOk/FN1cjyT+0WxYNZkKqC9oSEl7d4H7a6/pbFDwtQsOOHwlqOx7tLfY5
	Q5G6yPv22LvIucIKFHnQi7pts9pjkMXBJj8C9wlCFc1BYv98sTNblAyVmGMlE/lA1yv+gMqZA4BU4
	YMlKy4jeAx9igqzeUUiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p28g6-000cAe-Id; Mon, 05 Dec 2022 10:26:26 +0000
Received: from mail-vs1-xe2b.google.com ([2607:f8b0:4864:20::e2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p28g3-000c71-Kb
	for linux-rockchip@lists.infradead.org; Mon, 05 Dec 2022 10:26:25 +0000
Received: by mail-vs1-xe2b.google.com with SMTP id 125so10583755vsi.9
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Dec 2022 02:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zty3jcbSJCY21FYxkmZcyioKVxKHc26JDIwFsWCbPaU=;
        b=Y2VNYHWrF43Bg4rxDfA9Ty5w9QaZ4LZVeXPs2QLtd/Rco8MKeiXS1Vpap6cdsf/lMY
         lquyUX6BImWuMw+xaFT68I1Cog3xczhAFrdSXN73jDbPz+lFEGwDyjEq56avYGtjEJ08
         9FbezZlgdLMFvtcxnWCJSzzgOVLKqLBAmP6zO9Kc/gCi6vOWq6Nr/yAsvhfZxXQw2uIM
         el7cyQJNzz/lXx/HBzwjzdpTuyLZItcnfTDm6fVpfq2XedUXGpObfOYkpNyU+PwxXxMq
         +2A7W9WyAfSTDDQk1cUO02942LMdFv/tzSc+jpVzKksKxLm8urKc84hyRoYgeUrVJMhO
         OJdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zty3jcbSJCY21FYxkmZcyioKVxKHc26JDIwFsWCbPaU=;
        b=svO8o5tY9ykSBG8mSvqUdiouCtm6sHvSa59S2JGv4jd388fbKiMVcd+LA6JprPkWGi
         RoK/0IZvJ/B6RWvjVl6oG2mIvVimMRV8bwVwBi9bU8MKqtNjqaQYH8MLfCK4zW0Zx5nr
         z/MIPR9IJFvu2w7bhhddJ/oC5t1MgSTKBo8gfyly093lVm6K8Vo+754xt9G1Die4nKmr
         5FMCA5t+QzXhA63dOuXsP4ZZHVqD7KXf9iaiFXwTU3fhF+b2DSD4txgcM+Pn7sJPfyC0
         2vaJRrfMcocV/mfWgG61wJcpMm15fJCZA2ZE6Vn5bLX6FSw5EhK4uCto2Ggi+tu8Z/nE
         +Dxw==
X-Gm-Message-State: ANoB5plBzjLqM74DytPBk2LKwqJoQoMIOiy/ipRR2sjHKdWHnSnc7Ac1
	IQRQ9bxlprpMOEjuHsGHgt3xnh0rl/CiZqwwVi5vTA==
X-Google-Smtp-Source: AA0mqf7XaMCOcAftBOmcYj7F9JXEuTUEO9o7enbzW2eQRlT3vWxh55TXPKJUWOzqQP0MIthfUbXBtzxVumzDRwnl8wM=
X-Received: by 2002:a05:6102:722:b0:3b0:eec8:ce04 with SMTP id
 u2-20020a056102072200b003b0eec8ce04mr10612907vsg.16.1670235980438; Mon, 05
 Dec 2022 02:26:20 -0800 (PST)
MIME-Version: 1.0
References: <1670221196-36806-1-git-send-email-wangyufen@huawei.com> <f6bab0d1-008d-c5c0-ef29-28a61df91e65@huawei.com>
In-Reply-To: <f6bab0d1-008d-c5c0-ef29-28a61df91e65@huawei.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 5 Dec 2022 11:26:09 +0100
Message-ID: <CAMRc=MfD84WstmUO+qnkrAYviq_ESwvk554TGCjZq0P9JAG24w@mail.gmail.com>
Subject: Re: [PATCH] gpio/rockchip: fix refcount leak in rockchip_gpiolib_register()
To: wangyufen <wangyufen@huawei.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	jay.xu@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_022623_977882_FB378C83 
X-CRM114-Status: GOOD (  14.32  )
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

T24gTW9uLCBEZWMgNSwgMjAyMiBhdCA3OjIxIEFNIHdhbmd5dWZlbiA8d2FuZ3l1ZmVuQGh1YXdl
aS5jb20+IHdyb3RlOgo+Cj4KPgo+IOWcqCAyMDIyLzEyLzUgMTQ6MTksIFdhbmcgWXVmZW4g5YaZ
6YGTOgo+ID4gVGhlIG5vZGUgcmV0dXJuZWQgYnkgb2ZfZ2V0X3BhcmVudCgpIHdpdGggcmVmY291
bnQgaW5jcmVtZW50ZWQsCj4gPiBvZl9ub2RlX3B1dCgpIG5lZWRzIGJlIGNhbGxlZCB3aGVuIGZp
bmlzaCB1c2luZyBpdC4gU28gYWRkIGl0IGluIHRoZQo+ID4gZW5kIG9mIG9mX3BpbmN0cmxfZ2V0
KCkuCj4gPgo+ID4gRml4ZXM6IDkzNmVlMjY3NWVlZSAoImdwaW8vcm9ja2NoaXA6IGFkZCBkcml2
ZXIgZm9yIHJvY2tjaGlwIGdwaW8iKQo+ID4gU2lnbmVkLW9mZi1ieTogV2FuZyBZdWZlbiA8d2Fu
Z3l1ZmVuQGh1YXdlaS5jb20+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9ncGlvL2dwaW8tcm9ja2No
aXAuYyB8IDEgKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+Cj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3Bpby9n
cGlvLXJvY2tjaGlwLmMKPiA+IGluZGV4IDg3MDkxMGIuLjIwMGU0M2EgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4gPiArKysgYi9kcml2ZXJzL2dwaW8vZ3Bp
by1yb2NrY2hpcC5jCj4gPiBAQCAtNjEwLDYgKzYxMCw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBf
Z3Bpb2xpYl9yZWdpc3RlcihzdHJ1Y3Qgcm9ja2NoaXBfcGluX2JhbmsgKmJhbmspCj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9EQVRBOwo+ID4KPiA+ICAgICAgICAgICAgICAg
cGN0bGRldiA9IG9mX3BpbmN0cmxfZ2V0KHBjdGxucCk7Cj4gPiArICAgICAgICAgICAgIG9mX25v
ZGVfcHV0KHBjdGxucCk7Cj4gPiAgICAgICAgICAgICAgIGlmICghcGN0bGRldikKPiA+ICAgICAg
ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiA+CgpTb21ldGhpbmcgd2VudCB3cm9u
ZyB3aGVuIHNlbmRpbmcgdGhlIHBhdGNoPyBEaWQgeW91IHVzZSBnaXQgc2VuZC1lbWFpbD8KCkJh
cnQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
