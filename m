Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D669C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 16:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=32rS4oiyuvW2HGn+dlLvC50ExX4W+pllMOgcuP7nsHc=; b=bdHAAJ3f9v9+nO
	3EqukkQqE+JDmGOIUN+Vf7odcaVgctr/vTBHPqrveMeQF3xU+GiIij9Rh1fPxcZTAvXk7gWX6dvWH
	dDCrSYKgrVkb0zJgdklR4qBrjclWG+V77/J3VPd6DRoJw9oMfY/Zwjzf7cT19DLT0m3QohS258ylQ
	kk1ce5RzY4LMjZd4ZtPI/pOA1i65jxDPyTuRBFDJ2vEFTbq51/isLINMd46zR9IsICr1AUC7asBKu
	Ot2i67jaG6sC/Vyst8lJl2orrPKvXYC73TXKjPhXlO85mIVfPGDfesCU3oAboXonxMkt8whcs4p6K
	tChcF4idS0BpM/a02Img==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGo4-00DLoT-06;
	Thu, 07 Dec 2023 16:00:56 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGo0-00DLnw-0T;
	Thu, 07 Dec 2023 16:00:53 +0000
Received: from [10.3.2.161] (zone.collabora.co.uk [167.235.23.81])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BE36A660739F;
	Thu,  7 Dec 2023 16:00:47 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1701964848;
	bh=o60ZivJAjuNVk9lMONJuI83P129Uc3ICsB0e+skvORE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=J+HzaMOmkobFxYMAtj8seSUoTES01PM+gUy6AJ1Rby/oRd0J7+PDOezsV5mD/tn6K
	 EkSmnkdqoJuT8pb2R0q7hAurSYtX9c9b2lEnTDBPrmyJ/TIrJppmb14MZFbw8y86I3
	 FqvfijCWVaKSW5bq6BY73mzVmS6dSpfajFksSpBuz1tD8SlmOMXZ7zYvChz2eZ+FD/
	 NKR9hvbaqcvGJHK2sB9UhMf5OUH9dBlNMribUGYAOrOZ3fqexBu7YRmg4XGYHuJH1h
	 71YB2AJZxJOwZKdvEGbB7jC0hPO+HAoOew1HOrDkHkjJlB9iER4S6RVUXfxJ/7FuB9
	 3wlZgxaWA9ALg==
Message-ID: <95cc7716-ba01-e239-e7c0-eba0b7da7955@collabora.com>
Date: Thu, 7 Dec 2023 19:00:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2] i2c: rk3x: fix potential spinlock recursion on poll
Content-Language: en-US
To: Dragan Simic <dsimic@manjaro.org>,
 Jensen Huang <jensenhuang@friendlyarm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Andi Shyti <andi.shyti@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chris Morgan <macroalpha82@gmail.com>, Benjamin Bara <bbara93@gmail.com>
References: <20231207082200.16388-1-jensenhuang@friendlyarm.com>
 <ebf6cf8ec3b5befd673d295061fa2738@manjaro.org>
 <CAMpZ1qHUnTDQ78gdrQF9Sx_-XfLM-B+H-0bL1-+twKsno+JOvg@mail.gmail.com>
 <5e11553952c02ad20591992be4284bbd@manjaro.org>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <5e11553952c02ad20591992be4284bbd@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_080052_366260_D8C2BA69 
X-CRM114-Status: GOOD (  17.62  )
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

T24gMTIvNy8yMyAxNzoxMCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IE9uIDIwMjMtMTItMDcgMTA6
MjUsIEplbnNlbiBIdWFuZyB3cm90ZToKPj4gT24gVGh1LCBEZWMgNywgMjAyMyBhdCA0OjM34oCv
UE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+Pj4KPj4+IE9uIDIw
MjMtMTItMDcgMDk6MjEsIEplbnNlbiBIdWFuZyB3cm90ZToKPj4+ID4gUG9zc2libGUgZGVhZGxv
Y2sgc2NlbmFyaW8gKG9uIHJlYm9vdCk6Cj4+PiA+IHJrM3hfaTJjX3hmZXJfY29tbW9uKHBvbGxp
bmcpCj4+PiA+wqDCoMKgwqAgLT4gcmszeF9pMmNfd2FpdF94ZmVyX3BvbGwoKQo+Pj4gPsKgwqDC
oMKgwqDCoMKgwqAgLT4gcmszeF9pMmNfaXJxKDAsIGkyYyk7Cj4+PiA+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC0tPiBzcGluX2xvY2soJmkyYy0+bG9jayk7Cj4+PiA+wqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC4uLgo+Pj4gPsKgwqDCoMKgwqDCoMKgwqAgPHJrM3ggaTJjIGludGVycnVwdD4K
Pj4+ID7CoMKgwqDCoMKgwqDCoMKgIC0+IHJrM3hfaTJjX2lycSgwLCBpMmMpOwo+Pj4gPsKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAtLT4gc3Bpbl9sb2NrKCZpMmMtPmxvY2spOyAoZGVhZGxvY2sg
aGVyZSkKPj4+ID4KPj4+ID4gU3RvcmUgdGhlIElSUSBudW1iZXIgYW5kIGRpc2FibGUvZW5hYmxl
IGl0IGFyb3VuZCB0aGUgcG9sbGluZwo+Pj4gdHJhbnNmZXIuCj4+PiA+IFRoaXMgcGF0Y2ggaGFz
IGJlZW4gdGVzdGVkIG9uIE5hbm9QQy1UNC4KPj4+Cj4+PiBJbiBjYXNlIHlvdSBoYXZlbid0IGFs
cmVhZHkgc2VlbiB0aGUgcmVsYXRlZCBkaXNjdXNzaW9uIGxpbmtlZCBiZWxvdywKPj4+IHBsZWFz
ZSBoYXZlIGEgbG9vay7CoCBJIGFsc28gYWRkZWQgbW9yZSBwZW9wbGUgdG8gdGhlIGxpc3Qgb2Yg
cmVjaXBpZW50cywKPj4+IGluIGFuIGF0dGVtcHQgdG8gbWFrZSBldmVyeW9uZSBhd2FyZSBvZiB0
aGUgZGlmZmVyZW50IGFwcHJvYWNoZXMgdG8KPj4+IHNvbHZpbmcgdGhpcyBpc3N1ZS4KPj4+Cj4+
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvNjU1MTc3ZjQuMDUwYTAyMjAuZDg1YzkuM2Jh
MEBteC5nb29nbGUuY29tL1QvI202ZmM5YzIxNDQ1MmZlYzY2ODE4NDNlN2Y0NTU5NzhjMzVjNmY2
YzhiCj4+Cj4+IFRoYW5rIHlvdSBmb3IgcHJvdmlkaW5nIHRoZSBpbmZvcm1hdGlvbi4gSSBoYWRu
J3Qgc2VlbiB0aGlzIGxpbmsgYmVmb3JlLgo+PiBBZnRlciBjYXJlZnVsbHkgbG9va2luZyBpbnRv
IHRoZSByZWxhdGVkIGRpc2N1c3Npb24sIGl0IGFwcGVhcnMgdGhhdAo+PiBEbWl0cnkgT3NpcGVu
a28gaXMgYWxyZWFkeSB3b3JraW5nIG9uIGEgc3VpdGFibGUgcGF0Y2guIFRvIGF2b2lkCj4+IGR1
cGxpY2F0aW9uCj4+IG9yIGNvbmZsaWN0cywgbXkgcGF0Y2ggY2FuIGJlIGRpc2NhcmRlZC4KPiAK
PiBUaGFuayB5b3UgZm9yIHJlc3BvbmRpbmcgc28gcXVpY2tseS7CoCBQZXJoYXBzIGl0IHdvdWxk
IGJlIGJlc3QgdG8gaGVhcgo+IGZyb20gRG1pdHJ5IGFzIHdlbGwsIGJlZm9yZSBkaXNjYXJkaW5n
IGFueXRoaW5nLsKgIEl0J3MgYmVlbiBhIHdoaWxlCj4gc2luY2UgRG1pdHJ5IHdyb3RlIGFib3V0
IHdvcmtpbmcgb24gdGhlIHBhdGNoLCBzbyBoZSBtaWdodCBoYXZlCj4gYWJhbmRvbmVkIGl0LgoK
VGhpcyBwYXRjaCBpcyBva2F5LiBJbiBnZW5lcmFsLCB3aWxsIGJlIGJldHRlciB0byBoYXZlIElS
USBkaXNhYmxlZCBieQpkZWZhdWx0IGxpa2UgSSBkaWQgaW4gbXkgdmFyaWFudCwgaXQgc2hvdWxk
IGFsbG93IHRvIHJlbW92ZSB0aGUgc3BpbmxvY2sKZW50aXJlbHkuIE9mIGNvdXJzZSB0aGlzIGFs
c28gY2FuIGJlIGRvbmUgbGF0ZXIgb24gaW4gYSBmb2xsb3cgdXAKcGF0Y2hlcy4gSmVuc2VuLCBm
ZWVsIGZyZWUgdG8gdXNlIG15IHZhcmlhbnQgb2YgdGhlIHBhdGNoLCBhZGQgbXkKcy1vLWIrY28t
ZGV2ZWxvcGVkIHRhZ3MgdG8gdGhlIGNvbW1pdCBtc2cgaWYgeW91J2xsIGRvLiBPdGhlcndpc2Ug
SSdsbApiZSBhYmxlIHRvIHNlbmQgbXkgcGF0Y2ggbmV4dCB3ZWVrLgoKLS0gCkJlc3QgcmVnYXJk
cywKRG1pdHJ5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
