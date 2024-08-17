Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 129DDC52D7D
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Aug 2024 06:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FMocB35zR0TUs9rz3SyF2lNGBmckDv4h8612u54qhMg=; b=KAJIGeDo1Z0iYfxi7gc1KE7p6x
	zCaUGpEih3rd5z+tYJmFI2M7QF5EPCtdNJlXKZCL3BjCw98MCH8Y+Kbo3R6Ysg/aqRx339axIqCrQ
	4omD8XTXa4JUxp3+9agHVRnqbQ5w7aB9Hkh2jdYWtuzWu4bk3VFh36C0N01sh6Ds876rOUKIA+wsL
	uhpOpmk14ZdJG6qW0oSrk9tY/6qFvVVPaJK/THpKWbCgiOr3zqHF4CAbObUg3Jz3glWA3BesEBJJj
	Mz95tcGn6HchhvdxPigm9+qCwQ3oG/FWZMUKvf6dswG+R9agxh/KLbFpVbKbp9U89W7CUPoQ9hyjP
	hUkoECdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfDJ1-0000000En9U-0Giz;
	Sat, 17 Aug 2024 06:52:55 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfDII-0000000En21-3vsp;
	Sat, 17 Aug 2024 06:52:12 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723877526;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6ajXNLehEHAoItRTdTFepO1J4PMhcHWqezEIcekJb2I=;
	b=BVmxMd9c3smjJUe4ao94yg+XXNmRJ4YiV/fDJ/knlfx+MuDkUFLe7yEOKDBGEzfLkmEW6p
	hic+wrqBm9wP+cXExok4QqbjYHGeTc/R4V7iUu+sNfD2qZQaRl3VzEnLtl5BVhg8R+qPiA
	vlZ56OccJlvOQfPitXtcH7gqw3OK72Ih5e7AR93Q7fgiQawWQ65u/7P7ekfOsn9TG8oyGP
	qUh3j0O4UeM9bGV9piVm8C1wTGBmMcnolY2q6Zzg3tuGvcksmXhhn2BDKxU41cCuSkX0Mb
	FzTzZboLNL2FAzxZ0pIXtK+2OvsdKbaZMy7hSpOBEp2jnKEi0LxBVjvI04NH+w==
Date: Sat, 17 Aug 2024 08:52:05 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 vkoul@kernel.org, kishon@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: phy-rockchip-inno-usb2: Handle failed extcon
 allocation better
In-Reply-To: <4927264.xgNZFEDtJV@diego>
References: <5fa7796d71e2f46344e972bc98a54539f55b6109.1723551599.git.dsimic@manjaro.org>
 <4927264.xgNZFEDtJV@diego>
Message-ID: <93d7cfcf3ce97f22e29cc93241b65bc1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_235211_473692_27B8D705 
X-CRM114-Status: GOOD (  11.40  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTA4LTE1IDE4OjEyLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToK
PiBBbSBEaWVuc3RhZywgMTMuIEF1Z3VzdCAyMDI0LCAyMDozODoxNyBDRVNUIHNjaHJpZWIgRHJh
Z2FuIFNpbWljOgo+PiBSZXR1cm4gdGhlIGFjdHVhbCBlcnJvciBjb2RlIHVwb24gZmFpbHVyZSB0
byBhbGxvY2F0ZSBleHRjb24gZGV2aWNlLCAKPj4gaW5zdGVhZAo+PiBvZiBoYXJkY29kaW5nIC1F
Tk9NRU0uICBXaGlsZSB0aGVyZSwgcHJvZHVjZSBhbiBhcHByb3ByaWF0ZSBlcnJvciAKPj4gbWVz
c2FnZS4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8u
b3JnPgo+PiAtLS0KPj4gIGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVz
YjIuYyB8IDYgKysrKy0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRl
bGV0aW9ucygtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC1pbm5vLXVzYjIuYyAKPj4gYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtaW5uby11c2IyLmMKPj4gaW5kZXggNGY3MTM3M2FlNmUxLi5kMzM0MThhMWU3YTggMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIuYwo+
PiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby11c2IyLmMKPj4g
QEAgLTQzNCw4ICs0MzQsMTAgQEAgc3RhdGljIGludCAKPj4gcm9ja2NoaXBfdXNiMnBoeV9leHRj
b25fcmVnaXN0ZXIoc3RydWN0IHJvY2tjaGlwX3VzYjJwaHkgKnJwaHkpCj4+ICAJCWVkZXYgPSBk
ZXZtX2V4dGNvbl9kZXZfYWxsb2NhdGUocnBoeS0+ZGV2LAo+PiAgCQkJCQkJcm9ja2NoaXBfdXNi
MnBoeV9leHRjb25fY2FibGUpOwo+PiAKPj4gLQkJaWYgKElTX0VSUihlZGV2KSkKPj4gLQkJCXJl
dHVybiAtRU5PTUVNOwo+PiArCQlpZiAoSVNfRVJSKGVkZXYpKSB7Cj4+ICsJCQlkZXZfZXJyKHJw
aHktPmRldiwgImZhaWxlZCB0byBhbGxvY2F0ZSBleHRjb24gZGV2aWNlXG4iKTsKPj4gKwkJCXJl
dHVybiBQVFJfRVJSKGVkZXYpOwo+PiArCQl9Cj4gCj4gbWF5YmUgZXZlbiB1c2UgZGV2X2Vycl9w
cm9iZT8KPiAKPiByb2NrY2hpcF91c2IycGh5X2V4dGNvbl9yZWdpc3RlcigpIGdldHMgY2FsbGVk
IGZyb20gdGhlIHByb2JlIGZ1bmN0aW9uLAo+IHNvIGV2ZW4gdXNpbmcgaXQgaXMgYWxzbyBzZW1h
dGljYWxseSBjb3JyZWN0IDstKSAuCgpHb29kIHN1Z2dlc3Rpb24sIHRoYW5rcyEgIEknbGwgdXNl
IGRldl9lcnJfcHJvYmUoKSBpbiB0aGUgdjIsIGFsYmVpdCBpdAphbHNvIGNhbGxzIGZvciB0dXJu
aW5nIHRoaXMgaW50byBhIHNtYWxsIHBhdGNoIHNlcmllcyB0aGF0IGFkZGl0aW9uYWxseQpyZXBs
YWNlcyBkZXZfZXJyKCkgd2l0aCBkZXZfZXJyX3Byb2JlKCkgaW4gdGhlIHJvY2tjaGlwX3VzYjJw
aHlfcHJvYmUoKQpmdW5jdGlvbiwgZm9yIGNvbnNpc3RlbmN5LiA6KQoKPj4gIAkJcmV0ID0gZGV2
bV9leHRjb25fZGV2X3JlZ2lzdGVyKHJwaHktPmRldiwgZWRldik7Cj4+ICAJCWlmIChyZXQpIHsK
Pj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
