Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDDC2C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 10:57:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZDMY6nrUtaJXsHCFy7FiF+8JFWt3UtLTi7u7mXXteoA=; b=rJXHFi0pu3W2n2
	C/kavc7WV0E3EKw2Rl1nHZJaD5ugq+Fg3D+Wew0xU/RD6tPL/7viKpYc5EddROvgRM7OnOsTeWDfQ
	1cYJ1KEAqjiaREzxFM5mAlZbRrxphs7EL7wjU9rDydJREJffF5M6Xy5iVMz+gjIXy2+TnuyoJ1laZ
	+NTDofONyXJ9YLMNasePAho9vICQSXVcnQpcIBlaIJiseP620+Vj2yrX/xbGO+T5oCA+CWx80KZhM
	9MArYqUj0f/MQnjqFNYqNAzVJUEYf0jEARG0OJKuTIFtD+SCSmrh5zxoSHkNLtIE2t9yObWx28Epu
	O4lokP3OcBfNtwbcj0nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shRyl-0000000GS68-3BvN;
	Fri, 23 Aug 2024 10:57:15 +0000
Received: from mail-m32110.qiye.163.com ([220.197.32.110])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shRuV-0000000GR7s-3jbU;
	Fri, 23 Aug 2024 10:52:53 +0000
DKIM-Signature: a=rsa-sha256;
	b=OMnh+gH1pqoLDJG1/RyMtivsZe7uz4d40xO9C7VjyTQFMkdaTXKx98SHxhxJRrmcAYUDYfUcMtgCL5fvKhQak/yH3iYsHdnnfVaUnc6HSxwO+rn4lrJG7D8KhJRR9PJDUr7IRPe8VC6TaWsWKmYgtbNJJPaPQp41+wSHtj2ZgBA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=+FlFQ9W3aFSvGgRgzhH/suTQ4ZoLYUscTAd93Wv0Jtk=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id B1647460200;
	Fri, 23 Aug 2024 18:52:28 +0800 (CST)
Message-ID: <70b6e321-0b8d-4dd1-b098-4cb6a0f83f93@rock-chips.com>
Date: Fri, 23 Aug 2024 18:52:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, mika.westerberg@linux.intel.com,
 andriy.shevchenko@linux.intel.com, tao.huang@rock-chips.com,
 finley.xiao@rock-chips.com, tim.chen@rock-chips.com,
 elaine.zhang@rock-chips.com
Subject: Re: [PATCH v2] gpio: rockchip: release reference to device node
To: Ye Zhang <ye.zhang@rock-chips.com>, linus.walleij@linaro.org,
 brgl@bgdev.pl, heiko@sntech.de, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
 <20240823034314.62305-3-ye.zhang@rock-chips.com>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20240823034314.62305-3-ye.zhang@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhoZT1ZJGUJLT0MeGkgYHR1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917eddc7ec03aekunmb1647460200
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PzI6MRw4MjI2LCIfTig6Ax0I
	LS9PCUlVSlVKTElPT0pLSE9CQk1JVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlMTkI3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_035252_181204_AEAD9C7D 
X-CRM114-Status: GOOD (  12.37  )
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

5ZyoIDIwMjQvOC8yMyAxMTo0MywgWWUgWmhhbmcg5YaZ6YGTOgo+IEFkZGVkIGEgY2FsbCB0byBv
Zl9ub2RlX3B1dChwY3RsbnApIGluIHJvY2tjaGlwX2dwaW9fcHJvYmUgdG8gcHJvcGVybHkKPiBy
ZWxlYXNlIHRoZSByZWZlcmVuY2UgdG8gdGhlIGRldmljZSBub2RlLCBpbXByb3ZpbmcgbWVtb3J5
IG1hbmFnZW1lbnQKPiBhbmQgcHJldmVudGluZyBwb3RlbnRpYWwgbGVha3MuCj4gCj4gRml4ZXM6
IDkzNmVlMjY3NWVlZSAoImdwaW8vcm9ja2NoaXA6IGFkZCBkcml2ZXIgZm9yIHJvY2tjaGlwIGdw
aW8iKQo+IFNpZ25lZC1vZmYtYnk6IFllIFpoYW5nIDx5ZS56aGFuZ0Byb2NrLWNoaXBzLmNvbT4K
ClJldmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCj4gLS0t
Cj4gICBkcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIHwgMSArCj4gICAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL2dwaW8tcm9j
a2NoaXAuYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPiBpbmRleCA3MTIyNTgyMjRl
YjMuLjVmNjAxNjJiYWFlYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hp
cC5jCj4gKysrIGIvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+IEBAIC03MTUsNiArNzE1
LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9ncGlvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZp
Y2UgKnBkZXYpCj4gICAJCXJldHVybiAtRU5PREVWOwo+ICAgCj4gICAJcGN0bGRldiA9IG9mX3Bp
bmN0cmxfZ2V0KHBjdGxucCk7Cj4gKwlvZl9ub2RlX3B1dChwY3RsbnApOwo+ICAgCWlmICghcGN0
bGRldikKPiAgIAkJcmV0dXJuIC1FUFJPQkVfREVGRVI7Cj4gICAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
