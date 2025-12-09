Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8C52D3B7EA
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 12:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiL0Kp1BcicRIzp7M7f+K4pw/m3jwDrdLBOd/qT7tIs=; b=BPom1ce6VHw+NZ
	DpsiGbABQsEk0lu4u7CL7BBt6T/nQRUcUdepfkeUgVvupML+dBvE1BtqiZ7g4w9TfGyKLlcIQKO0T
	rdKE0nNsSVflL46wLWVlExPKIk4R1BJNv295+rF3kXK3eobrviEkps0TNkkeQECvXf5xOCqYwoufZ
	L3Rkh3hf54hbVxTR94eq1EAScL5F0EBKt6qxZ/sY6aPY+dbv0akuiN+7pUrj4lfFZqD9ZoT6+JJcq
	0ZXX/17Ieo9+47zliF9t5qMK20i51dpVEg5Y6eeSFKMKTaJK5jhHPva8Tl+Ha0BWGLIH116jF5fTM
	fZck8S4hOZdndl6mUzig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSwwK-0000000EGJC-0H3C;
	Tue, 09 Dec 2025 12:35:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSwwH-0000000EGIC-10Ze;
	Tue, 09 Dec 2025 12:35:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xxEyI/m4jP3NK+9omDGjHNBVqFAKxQf4F7O6U4IQKoo=; b=ugvX8vPqK2eKIzZ7gi70O05f+8
	ZDyNYpVEFR7VcjhO3cf27DGj4LVp9Sb+i5t7rfRjlJfndIIx//YDPv2LHAbqo6/8D64Lvi0/iEOht
	qsTiHsfUSKrsJXrBgLPI4zEXXnVWRrP3pkTJWIbaFoarY7Hlf/c6/pwX9Mg3qdqXzFn6uvv+WvRsK
	+ii4FiSIyVlI3vrgu8+d2GkUth8y0jKb2UFVN31dw0o0BNWIUNQhst/zyoCL51fLhfFqdrIt30S8x
	Fi2o3yV1YlhB/JYqIR+B7bkIP3WNPbWha1qKWa/Ne/HIimVe6ibInJKXlUE1OWbEIHEJpEazRV85k
	RM0LMB0g==;
Received: from i53875a42.versanet.de ([83.135.90.66] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vSwwA-0007hg-Fr; Tue, 09 Dec 2025 13:35:26 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Ye Zhang <ye.zhang@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ye Zhang <ye.zhang@rock-chips.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, tao.huang@rock-chips.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 1/8] dt-bindings: pinctrl: Add rk3506 pinctrl support
Date: Tue, 09 Dec 2025 13:35:25 +0100
Message-ID: <2043731.usQuhbGJ8B@diego>
In-Reply-To: <20251206050844.402958-2-ye.zhang@rock-chips.com>
References: <20251206050844.402958-1-ye.zhang@rock-chips.com>
 <20251206050844.402958-2-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_043533_304855_9334DBE9 
X-CRM114-Status: GOOD (  14.45  )
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

SGkgWWUgWmhhbmcsCgpBbSBTYW1zdGFnLCA2LiBEZXplbWJlciAyMDI1LCAwNjowODozNyBNaXR0
ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFllIFpoYW5nOgo+IEFkZCB0aGUgY29t
cGF0aWJsZSBzdHJpbmcgZm9yIHRoZSByazM1MDYgU29DLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFll
IFpoYW5nIDx5ZS56aGFuZ0Byb2NrLWNoaXBzLmNvbT4KPiBSZXZpZXdlZC1ieTogSGVpa28gU3R1
ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiBBY2tlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8
a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgoKVGhpcyBwYXRjaCB3YXMgYWxyZWFkeSBt
ZXJnZWQgaW50byB0aGUgcGluY3RybCB0cmVlIGluIHYxIGFuZCBlbnRlcmVkCnRoZSBtYWlubGlu
ZSBrZXJuZWwgZHVyaW5nIHRoZSA2LjE5IG1lcmdlLXdpbmRvdyBbMF0KClNhbWUgZm9yIHRoZSBh
Y3R1YWwgcmszNTA2IGRyaXZlciBjaGFuZ2UuIFNvIHBsZWFzZSBiYXNlIGZ1dHVyZSB2ZXJzaW9u
cwpvZiB5b3VyIHdvcmsgb24gdG9wIG9mIHRoYXQuCgpUaGFua3MgYSBsb3QKSGVpa28KCgpbMF0g
aHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMv
bGludXguZ2l0L2NvbW1pdC8/aWQ9MTMwNjQ5NTAzMzlmZmM3M2EwZTU1ZTliNDg5OGRmODYxYjA0
ODQ4ZQoKPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BpbmN0cmwv
cm9ja2NoaXAscGluY3RybC55YW1sIHwgMSArCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGluY3RybC9yb2NrY2hpcCxwaW5jdHJsLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGluY3RybC9yb2NrY2hpcCxwaW5jdHJsLnlhbWwKPiBpbmRleCAxMjVhZjc2NmI5
OTIuLjc2ZTYwNzI4MTcxNiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcGluY3RybC9yb2NrY2hpcCxwaW5jdHJsLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGluY3RybC9yb2NrY2hpcCxwaW5jdHJsLnlhbWwKPiBA
QCAtNDQsNiArNDQsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAgICAtIHJvY2tjaGlwLHJrMzMyOC1w
aW5jdHJsCj4gICAgICAgIC0gcm9ja2NoaXAscmszMzY4LXBpbmN0cmwKPiAgICAgICAgLSByb2Nr
Y2hpcCxyazMzOTktcGluY3RybAo+ICsgICAgICAtIHJvY2tjaGlwLHJrMzUwNi1waW5jdHJsCj4g
ICAgICAgIC0gcm9ja2NoaXAscmszNTI4LXBpbmN0cmwKPiAgICAgICAgLSByb2NrY2hpcCxyazM1
NjItcGluY3RybAo+ICAgICAgICAtIHJvY2tjaGlwLHJrMzU2OC1waW5jdHJsCj4gCgoKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
