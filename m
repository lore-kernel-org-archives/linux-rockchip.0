Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF2B1C47089
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Dec 2022 01:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xKBFdJAbfZpWZyiv1Caz96Lzg6gPQgCnWtzXJnJTAg8=; b=JMUuBc/UK9lJZB
	h+GW/WZuIa4cfWfHAtqnnmPd00foyKJu2asP5Fc76S9rWA+dt+cmUk6qnz9IFf7fmwy05tcbXjKCJ
	+umCDqopBsNC0bHKozi0mG/FRZBjCKB/ZpvDXLRjiJz02sbOarjTfljF6SAw1gFufYjNrwXefGaVc
	peog3g5S5h6jolgYKnmsomt/E5xXYcQ+n8hPj7N0eF4yps4N34Wz8NKt0UhlGr52l320PEN1tX9mK
	qdYlZz/UdNnl26n8cZ/fUUDQH0ci9qhvRaBswzVQMnQOGye18fx8cA2WC3dItqPtE5NiqOmHYeWU4
	pPuw2gAzv0PChE/kWTww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2MyX-00Ey7K-6q; Tue, 06 Dec 2022 01:42:25 +0000
Received: from szxga03-in.huawei.com ([45.249.212.189])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2MyL-00Exbf-Kl; Tue, 06 Dec 2022 01:42:15 +0000
Received: from canpemm500010.china.huawei.com (unknown [172.30.72.53])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4NR33K36MPzJp54;
	Tue,  6 Dec 2022 09:38:37 +0800 (CST)
Received: from [10.174.179.191] (10.174.179.191) by
 canpemm500010.china.huawei.com (7.192.105.118) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Dec 2022 09:42:06 +0800
Message-ID: <ff96aac6-d5e5-222a-307a-d17ccc8b3201@huawei.com>
Date: Tue, 6 Dec 2022 09:42:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] gpio/rockchip: fix refcount leak in
 rockchip_gpiolib_register()
To: Bartosz Golaszewski <brgl@bgdev.pl>
CC: <linus.walleij@linaro.org>, <heiko@sntech.de>,
	<linux-gpio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <jay.xu@rock-chips.com>
References: <1670221196-36806-1-git-send-email-wangyufen@huawei.com>
 <f6bab0d1-008d-c5c0-ef29-28a61df91e65@huawei.com>
 <CAMRc=MfD84WstmUO+qnkrAYviq_ESwvk554TGCjZq0P9JAG24w@mail.gmail.com>
From: wangyufen <wangyufen@huawei.com>
In-Reply-To: <CAMRc=MfD84WstmUO+qnkrAYviq_ESwvk554TGCjZq0P9JAG24w@mail.gmail.com>
X-Originating-IP: [10.174.179.191]
X-ClientProxiedBy: dggems704-chm.china.huawei.com (10.3.19.181) To
 canpemm500010.china.huawei.com (7.192.105.118)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_174213_880896_344E2756 
X-CRM114-Status: UNSURE (   8.73  )
X-CRM114-Notice: Please train this message.
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CgrlnKggMjAyMi8xMi81IDE4OjI2LCBCYXJ0b3N6IEdvbGFzemV3c2tpIOWGmemBkzoKPiBPbiBN
b24sIERlYyA1LCAyMDIyIGF0IDc6MjEgQU0gd2FuZ3l1ZmVuIDx3YW5neXVmZW5AaHVhd2VpLmNv
bT4gd3JvdGU6Cj4+Cj4+Cj4+Cj4+IOWcqCAyMDIyLzEyLzUgMTQ6MTksIFdhbmcgWXVmZW4g5YaZ
6YGTOgo+Pj4gVGhlIG5vZGUgcmV0dXJuZWQgYnkgb2ZfZ2V0X3BhcmVudCgpIHdpdGggcmVmY291
bnQgaW5jcmVtZW50ZWQsCj4+PiBvZl9ub2RlX3B1dCgpIG5lZWRzIGJlIGNhbGxlZCB3aGVuIGZp
bmlzaCB1c2luZyBpdC4gU28gYWRkIGl0IGluIHRoZQo+Pj4gZW5kIG9mIG9mX3BpbmN0cmxfZ2V0
KCkuCj4+Pgo+Pj4gRml4ZXM6IDkzNmVlMjY3NWVlZSAoImdwaW8vcm9ja2NoaXA6IGFkZCBkcml2
ZXIgZm9yIHJvY2tjaGlwIGdwaW8iKQo+Pj4gU2lnbmVkLW9mZi1ieTogV2FuZyBZdWZlbiA8d2Fu
Z3l1ZmVuQGh1YXdlaS5jb20+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvZ3Bpby9ncGlvLXJvY2tj
aGlwLmMgfCAxICsKPj4+ICAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pj4KPj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncGlv
L2dwaW8tcm9ja2NoaXAuYwo+Pj4gaW5kZXggODcwOTEwYi4uMjAwZTQzYSAxMDA2NDQKPj4+IC0t
LSBhL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3Bpby9n
cGlvLXJvY2tjaGlwLmMKPj4+IEBAIC02MTAsNiArNjEwLDcgQEAgc3RhdGljIGludCByb2NrY2hp
cF9ncGlvbGliX3JlZ2lzdGVyKHN0cnVjdCByb2NrY2hpcF9waW5fYmFuayAqYmFuaykKPj4+ICAg
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9EQVRBOwo+Pj4KPj4+ICAgICAgICAgICAg
ICAgIHBjdGxkZXYgPSBvZl9waW5jdHJsX2dldChwY3RsbnApOwo+Pj4gKyAgICAgICAgICAgICBv
Zl9ub2RlX3B1dChwY3RsbnApOwo+Pj4gICAgICAgICAgICAgICAgaWYgKCFwY3RsZGV2KQo+Pj4g
ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPj4+Cj4gCj4gU29tZXRoaW5n
IHdlbnQgd3Jvbmcgd2hlbiBzZW5kaW5nIHRoZSBwYXRjaD8gRGlkIHlvdSB1c2UgZ2l0IHNlbmQt
ZW1haWw/Cj4gCgpUaGUgcGF0Y2ggaXRzZWxmIGlzIGZpbmUsIGJ1dCBJIGZvcmdvdCB0byBDYyB0
aGUgYXV0aG9yIG9mIHRoZSBwYXRjaCBJIApmaXhlZCwgc28gSSBhZGRlZCBhIENjLgoKVGhhbmtz
LApXYW5nCgo+IEJhcnQKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
