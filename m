Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7082CF649E
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Nov 2025 00:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDBySl6/BUjohrcsHSoxUqvdhByOJYKxjmqjdOxwUoI=; b=GkqsptN3CHHn97
	0GjGf0oi0+4t619r2JZMFO1unaQo401OvBvXwn+/5zxRKvSf4bQg4bqwSqhEB7TQu+kEvBExPLbdl
	WJ0eHKzgyi+tH+jdmUNmM8HahsefaT+myqBgPE8VfRYMds+0aAi6YaqR4wCTjMh5VnQxDpWO8g/Fy
	ClwEdEf+ZsnM5csdKQugk2tCq6/C0uJVAH6apyH/v0G+yOVm+nD+j+DhXbsY7ix/N60u0CmVQw6QJ
	eRkpCK1CD8wn44PXzPh66WeKqzFf1AEyVXh1IIqQwEYehyB1LWg/RyRwyGGDH8/A3A30BJs6+zJeU
	+G45QpXLlhbg/mOvIKOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLsd4-00000005tZk-0DaF;
	Thu, 20 Nov 2025 00:34:30 +0000
Received: from mail-m82218.xmail.ntesmail.com ([156.224.82.218])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLscz-00000005tZH-22yT
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Nov 2025 00:34:28 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2a32d8a7d;
	Thu, 20 Nov 2025 08:34:15 +0800 (GMT+08:00)
Message-ID: <1451d8b9-0751-4785-9644-9ce68230ed27@rock-chips.com>
Date: Thu, 20 Nov 2025 08:34:11 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-pm@vger.kernel.org, jonas@kwiboo.se,
 pgwipeout@gmail.com, finley.xiao@rock-chips.com, kever.yang@rock-chips.com,
 sebastian.reichel@collabora.com, heiko@sntech.de, ulf.hansson@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] pmdomain: rockchip: quiet regulator error on
 -EPROBE_DEFER
To: Chris Morgan <macroalpha82@gmail.com>
References: <20251119161250.60885-1-macroalpha82@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251119161250.60885-1-macroalpha82@gmail.com>
X-HM-Tid: 0a9a9eaeebd709cckunm0ca1951dff30a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0xCGFZOH0NOSE4aS09CQx1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TWnhObUuq5hTPEv0Hm+mCMi1NdmVaVmWnXCgINZThojczXFU+8BcgsJoqbwAP0finLYc5zbG1o3XFzk93aLkVrcq6bx38Q+tKqZmuO+jcpXo8li/c6Ns/WO6v0puOyye9TEjtbDjpfsPPORRDOcjYteMYu70/fGOlRZFF54Vlg0=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=xfUyjh56QuH0slCMrQSdQkVJf8Ne/u1gnZkXmUM8mbQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_163426_073737_A370EF50 
X-CRM114-Status: GOOD (  13.67  )
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

5ZyoIDIwMjUvMTEvMjAg5pif5pyf5ZubIDA6MTIsIENocmlzIE1vcmdhbiDlhpnpgZM6Cj4gRnJv
bTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiAKPiBDaGFuZ2UgdGhl
IGRldl9lcnIoKSB0byBkZXZfZXJyX3Byb2JlKCkgdW5kZXIgcm9ja2NoaXBfcGRfcG93ZXJfb24o
KQo+IHRvIHByZXZlbnQgZXJyb3JzIGVhcmx5IGluIHRoZSBib290IHByb2Nlc3Mgd2hlbiB0aGUg
cmVxdWVzdGVkCj4gcmVndWxhdG9yIGlzIG5vdCB5ZXQgYXZhaWxhYmxlLiBUaGlzIGNvbnZlcnRz
IGVycm9ycyBsaWtlIHRoZSBmb2xsb3dpbmcKPiB0byBkZWJ1ZyBtZXNzYWdlczoKPiAKPiByb2Nr
Y2hpcC1wbS1kb21haW4gZmQ4ZDgwMDAucG93ZXItbWFuYWdlbWVudDpwb3dlci1jb250cm9sbGVy
OiBGYWlsZWQgdG8gZW5hYmxlIHN1cHBseTogLTUxNwo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL3BtZG9t
YWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyB8IDMgKystCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcG1k
b21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jIGIvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9w
bS1kb21haW5zLmMKPiBpbmRleCAxOTU1YzZkNDUzZTQuLjNjODRhNjVkZTFhNSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwo+ICsrKyBiL2RyaXZl
cnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCj4gQEAgLTY4OCw3ICs2ODgsOCBAQCBz
dGF0aWMgaW50IHJvY2tjaGlwX3BkX3Bvd2VyX29uKHN0cnVjdCBnZW5lcmljX3BtX2RvbWFpbiAq
ZG9tYWluKQo+ICAgCj4gICAJcmV0ID0gcm9ja2NoaXBfcGRfcmVndWxhdG9yX2VuYWJsZShwZCk7
Cj4gICAJaWYgKHJldCkgewo+IC0JCWRldl9lcnIocGQtPnBtdS0+ZGV2LCAiRmFpbGVkIHRvIGVu
YWJsZSBzdXBwbHk6ICVkXG4iLCByZXQpOwo+ICsJCWRldl9lcnJfcHJvYmUocGQtPnBtdS0+ZGV2
LCByZXQsCj4gKwkJCSAgICAgICJGYWlsZWQgdG8gZW5hYmxlIHN1cHBseTogJWRcbiIsIHJldCk7
Cj4gICAJCXJldHVybiByZXQ7CgpyZXR1cm4gZGV2X2Vycl9wcm9iZShwZC0+cG11LT5kZXYsIHJl
dCwgIkZhaWxlZCB0byBlbmFibGUgc3VwcGx5OiAlZFxuIiwgCnJldCk7ID8KCj4gICAJfQo+ICAg
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
