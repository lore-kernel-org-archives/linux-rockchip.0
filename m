Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EF70C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 10:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brOyTPVyUkPX2ndBb+vml8bloqicvdPYH1PioBhDPFo=; b=T8gI4aILwLcVn3
	QBxRx66gL08zkjHku3J5xgVfYutTR0foUNn3Pu+D5qpCKnbtzLAEDVixM7gWl83Aaz4zjYx+OoiMS
	PZcxyh9V0VZq+VvJmcy8WUmgSOLkJS/4pNVgMhpnJdydIf6jYXmBdFBsj9nyVvBSlcq+Q6eu9SgIe
	mgryOwNqLejxkOrsDZA7sddD7wDVU8Yduf3GkMAINvL90znu6gALI9nHdWFQh+oqc9CIXzQi7L3mu
	LydMkPx5FwSZZ6dGItnft448bMuIoBfI80qsvqpwzA27/t3bjgoOWqTWmQBq7hfrjmqXh2u9mADeH
	h8wAdMkyjSrVL7+uI/qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Yfx-0023Sw-12;
	Mon, 27 Nov 2023 10:17:13 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Yft-0023QH-1Q;
	Mon, 27 Nov 2023 10:17:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD4422F4;
	Mon, 27 Nov 2023 02:17:39 -0800 (PST)
Received: from [10.57.4.90] (unknown [10.57.4.90])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B068D3F73F;
	Mon, 27 Nov 2023 02:16:50 -0800 (PST)
Message-ID: <573ec775-c1f0-4a09-afe4-83793fb11f3c@arm.com>
Date: Mon, 27 Nov 2023 10:17:51 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to
 rk3399 GPU
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 conor+dt@kernel.org, daniel.lezcano@linaro.org
References: <20231127081511.1911706-1-lukasz.luba@arm.com>
 <CAGXv+5EgDk2B_FYo9hNiLVogq+mww1j140W4hsDhywExzgpf2g@mail.gmail.com>
From: Lukasz Luba <lukasz.luba@arm.com>
In-Reply-To: <CAGXv+5EgDk2B_FYo9hNiLVogq+mww1j140W4hsDhywExzgpf2g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_021709_574161_BD86C234 
X-CRM114-Status: GOOD (  16.61  )
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

CgpPbiAxMS8yNy8yMyAxMDowMiwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+IE9uIE1vbiwgTm92IDI3
LCAyMDIzIGF0IDQ6MTTigK9QTSBMdWthc3ogTHViYSA8bHVrYXN6Lmx1YmFAYXJtLmNvbT4gd3Jv
dGU6Cj4+Cj4+IEFkZCBkeW5hbWljLXBvd2VyLWNvZWZmaWNpZW50IHRvIHRoZSBHUFUgbm9kZS4g
VGhhdCB3aWxsIGNyZWF0ZSBFbmVyZ3kKPj4gTW9kZWwgZm9yIHRoZSBHUFUgYmFzZWQgb24gdGhl
IGNvZWZmaWNpZW50IGFuZCBPUFAgdGFibGUgaW5mb3JtYXRpb24uCj4+IEl0IHdpbGwgZW5hYmxl
IG1lY2hhbmlzbSBzdWNoIGFzIERUTVAgb3IgSVBBIHRvIHdvcmsgd2l0aCB0aGUgR1BVIERWRlMu
Cj4+IEluIHNpbWlsYXIgd2F5IHRoZSBFbmVyZ3kgTW9kZWwgZm9yIENQVXMgaW4gcmszMzk5IGlz
IGNyZWF0ZWQsIHNvIGJvdGgKPj4gYXJlIGFsaWduZWQgaW4gcG93ZXIgc2NhbGUuIFRoZSBtYXhp
bXVtIHBvd2VyIHVzZWQgZnJvbSB0aGlzIGNvZWZmaWNpZW50Cj4+IGlzIDEuNVcgYXQgNjAwTUh6
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMdWthc3ogTHViYSA8bHVrYXN6Lmx1YmFAYXJtLmNvbT4K
Pj4gLS0tCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSB8IDEg
Kwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaSBiL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKPj4gaW5kZXggOWRhMGI2ZDc3YzhkLi44N2NmZGY1
NzBiMTkgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkuZHRzaQo+
PiBAQCAtMjExMyw2ICsyMTEzLDcgQEAgZ3B1OiBncHVAZmY5YTAwMDAgewo+PiAgICAgICAgICAg
ICAgICAgIGludGVycnVwdC1uYW1lcyA9ICJqb2IiLCAibW11IiwgImdwdSI7Cj4+ICAgICAgICAg
ICAgICAgICAgY2xvY2tzID0gPCZjcnUgQUNMS19HUFU+Owo+PiAgICAgICAgICAgICAgICAgICNj
b29saW5nLWNlbGxzID0gPDI+Owo+PiArICAgICAgICAgICAgICAgZHluYW1pYy1wb3dlci1jb2Vm
ZmljaWVudCA9IDwyNjQwPjsKPiAKPiBGb3IgcmVmZXJlbmNlLCBpbiB0aGUgQ2hyb21lT1MgZG93
bnN0cmVhbiB2NS4xMCBrZXJuZWwgd2UgaGF2ZToKPiAKPiBncHVfcG93ZXJfbW9kZWw6IHBvd2Vy
X21vZGVsIHsKPiAgICAgICAgICBjb21wYXRpYmxlID0gImFybSxtYWxpLXNpbXBsZS1wb3dlci1t
b2RlbCI7Cj4gICAgICAgICAgc3RhdGljLWNvZWZmaWNpZW50ID0gPDQxMTUyMj47Cj4gICAgICAg
ICAgZHluYW1pYy1jb2VmZmljaWVudCA9IDw5Nzc+Owo+ICAgICAgICAgIHRzID0gPDMyMDAwIDQ3
MDAgKC04MCkgMj47Cj4gICAgICAgICAgdGhlcm1hbC16b25lID0gImdwdSI7Cj4gfTsKPiAKPiBU
aGlzIGlzIGZvciB0aGUgTWFsaSBrYmFzZS4KClRoYXQncyBkb3duc3RyZWFtIGRyaXZlciBmb3Ig
ZG93bnN0cmVhbSBJUEEgdGhlcm1hbCBnb3Zlcm5vciwgd2hpY2ggaXMKZGlmZmVyZW50LiBBcyB5
b3UgY2FuIHNlZSB0aGVyZSwgdGhlcmUgaXMgYSBzcGxpdCBvZiB0aGUgdG90YWwgcG93ZXIKdG8g
J3N0YXRpYyBwb3dlcicgYW5kICdkeW5hbWljIHBvd2VyJyBhbmQgdGh1cyB0aG9zZSAyIGNvZWZm
aWNpZW50czoKJ3N0YXRpYy1jb2VmZmljaWVudCcgYW5kICdkeW5hbWljLWNvZWZmaWNpZW50Jy4g
VGhlcmUgaXMgYWxzbwpwb2x5bm9taWFsIGZvciB0aGUgZXhwb25lbnRpYWwgY3VydmUgYXBwcm94
aW1hdGluZyB0ZW1wZXJhdHVyZSBpbXBhY3QKdG8gdGhlIGluY3JlYXNpbmcgbGVha2FnZSAoc3Rh
dGljIHBvd2VyKS4KClRoaXMgaXMgdG90YWxseSBub3QgdXBzdHJlYW0gY29kZSBhbmQgcXVpdGUg
Y29tcGxleCB0byBkZXJpdmUgdGh1cwpmbHkgdXBzdHJlYW0uIFRoZXJlZm9yZSwgaW4gdXBzdHJl
YW0gd2UgaGF2ZSB2ZXJ5IHNpbXBsZSBwb3dlcgptb2RlbCByaWdodCBub3csIGJ1dCBpdCB3aWxs
IGJlIHBvc3NpYmxlIHRvIHVwZGF0ZSBpdCBhdCBydW50aW1lCndoZW4gdGhlIGxlYWthZ2UgaXMg
aW5jcmVhc2VkLiBJIGhvcGUgdGhlIG5ldyB2NSB2ZXJzaW9uIHRoYXQKSSdtIGdvaW5nIHRvIHNl
bmQsIHdpbGwgZ2V0IGludG8gbWFpbmxpbmUgc29vbiBbMV0uCgpSZWdhcmRzLApMdWthc3oKClsx
XSAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIzMDkyNTA4MTEzOS4xMzA1NzY2LTEt
bHVrYXN6Lmx1YmFAYXJtLmNvbS8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
