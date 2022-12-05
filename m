Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41CB4C4321E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 06:22:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NLcP1HgbcATmymfss5I9CGvqsBnuCauBB/mkssIaI4=; b=HEb64vIOT51ec7
	BiPzVb8ZV5X2y4t2iN6v9r/O9DkgIERDc8rqwsILntEA4IV2IVv+XXYIRZzk0D6dXKheenStQwSEv
	UHyoFsj4REpQnRwPCGYNKS1488N6bubn5mcVxYKUBTlDbaL5KTktwn9v2Qv5pTQx+2pGaaJmCikXx
	UgmTO9h6oOo9q50IOBqr8DIUUmmNk21tKFgZOLzkOv1Y+gbWrIwAPiR8HhwVI92X05pVyUdc39HSe
	/MfMT0kFK9X0I9E741NmB7dyRLC01q+0f0UCVL0Qxw1JJxMjBuYLj5WLwQszoDYiorfi5tXPma6P9
	EqX32Qj+AkxfTpr+vZ2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p24rp-00EYRq-NE; Mon, 05 Dec 2022 06:22:17 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p24re-00EY5B-5X; Mon, 05 Dec 2022 06:22:08 +0000
Received: from canpemm500010.china.huawei.com (unknown [172.30.72.53])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NQYMn4NtVzmW2t;
	Mon,  5 Dec 2022 14:21:09 +0800 (CST)
Received: from [10.174.179.191] (10.174.179.191) by
 canpemm500010.china.huawei.com (7.192.105.118) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 5 Dec 2022 14:21:56 +0800
Message-ID: <f6bab0d1-008d-c5c0-ef29-28a61df91e65@huawei.com>
Date: Mon, 5 Dec 2022 14:21:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.0
Subject: Re: [PATCH] gpio/rockchip: fix refcount leak in
 rockchip_gpiolib_register()
To: <linus.walleij@linaro.org>, <brgl@bgdev.pl>, <heiko@sntech.de>
CC: <linux-gpio@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <jay.xu@rock-chips.com>
References: <1670221196-36806-1-git-send-email-wangyufen@huawei.com>
From: wangyufen <wangyufen@huawei.com>
In-Reply-To: <1670221196-36806-1-git-send-email-wangyufen@huawei.com>
X-Originating-IP: [10.174.179.191]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 canpemm500010.china.huawei.com (7.192.105.118)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221204_222206_399608_3266E117 
X-CRM114-Status: UNSURE (   9.98  )
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

CgrlnKggMjAyMi8xMi81IDE0OjE5LCBXYW5nIFl1ZmVuIOWGmemBkzoKPiBUaGUgbm9kZSByZXR1
cm5lZCBieSBvZl9nZXRfcGFyZW50KCkgd2l0aCByZWZjb3VudCBpbmNyZW1lbnRlZCwKPiBvZl9u
b2RlX3B1dCgpIG5lZWRzIGJlIGNhbGxlZCB3aGVuIGZpbmlzaCB1c2luZyBpdC4gU28gYWRkIGl0
IGluIHRoZQo+IGVuZCBvZiBvZl9waW5jdHJsX2dldCgpLgo+IAo+IEZpeGVzOiA5MzZlZTI2NzVl
ZWUgKCJncGlvL3JvY2tjaGlwOiBhZGQgZHJpdmVyIGZvciByb2NrY2hpcCBncGlvIikKPiBTaWdu
ZWQtb2ZmLWJ5OiBXYW5nIFl1ZmVuIDx3YW5neXVmZW5AaHVhd2VpLmNvbT4KPiAtLS0KPiAgIGRy
aXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMgfCAxICsKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5j
IGIvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+IGluZGV4IDg3MDkxMGIuLjIwMGU0M2Eg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZl
cnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPiBAQCAtNjEwLDYgKzYxMCw3IEBAIHN0YXRpYyBpbnQg
cm9ja2NoaXBfZ3Bpb2xpYl9yZWdpc3RlcihzdHJ1Y3Qgcm9ja2NoaXBfcGluX2JhbmsgKmJhbmsp
Cj4gICAJCQlyZXR1cm4gLUVOT0RBVEE7Cj4gICAKPiAgIAkJcGN0bGRldiA9IG9mX3BpbmN0cmxf
Z2V0KHBjdGxucCk7Cj4gKwkJb2Zfbm9kZV9wdXQocGN0bG5wKTsKPiAgIAkJaWYgKCFwY3RsZGV2
KQo+ICAgCQkJcmV0dXJuIC1FTk9ERVY7Cj4gICAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
