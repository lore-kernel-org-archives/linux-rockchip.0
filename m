Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED09FC28D13
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 02:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HC4Z71bRHVxNScSEsAMCJjghC7jtzrbRw+5nZN/KwwM=; b=gPrKvVp0LBYJmR
	h7cTj9y0S/fkEABiDkeb1kZJGDR29BXlGsczWUyMgREL9QBL1Ccz9IOhXRSkUyLAnEunfymXndzL5
	sSP04bUjWAyLJDdL1/qpzxjNBt/3K5lvn6uSx3zj1vAVJTT0FNuCfhlZnNeQdaxGLTO/gaQDb/b16
	BF0T7qfFb+Gg4ja70ifkKrkAuygybPdoDPhTFsJcbz6EtBZU5B7QX1uT0ewj69g99SPMYFau+ViQw
	J+VR13JMpXNhfYOBfNa4aEeNJuzv/GiMV2Ouf9rK1dd7HVEBT+obey761iEkp/3gYz9bIptmAF5F1
	f8JR52T3v1tYvljcEI5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQK0A-000tsO-34; Tue, 23 Aug 2022 02:50:50 +0000
Received: from mail-m11885.qiye.163.com ([115.236.118.85])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQJzk-000tFU-H3; Tue, 23 Aug 2022 02:50:29 +0000
Received: from [192.168.111.100] (unknown [58.22.7.114])
	by mail-m11885.qiye.163.com (Hmail) with ESMTPA id D79B04C0485;
	Tue, 23 Aug 2022 10:50:13 +0800 (CST)
Message-ID: <5cb0a457-b667-76e5-d383-6e93457d5d12@rock-chips.com>
Date: Tue, 23 Aug 2022 10:50:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 2/2] gpio/rockchip: Toggle edge trigger mode after acking
To: Doug Anderson <dianders@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Linus Walleij
 <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Brian Norris <briannorris@chromium.org>
References: <20220820095933.20234-1-jeffy.chen@rock-chips.com>
 <20220820095933.20234-2-jeffy.chen@rock-chips.com>
 <CAD=FV=X0qJ2OC1SrAmhSQ5YeKEwvsSCbfVGPh457YYEuPCbRtg@mail.gmail.com>
Content-Language: en-US
From: Chen Jeffy <jeffy.chen@rock-chips.com>
In-Reply-To: <CAD=FV=X0qJ2OC1SrAmhSQ5YeKEwvsSCbfVGPh457YYEuPCbRtg@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZSk9MVkgdHUofSh5PTE9KHVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITkhVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NDI6Qhw6Sj08AQkwShYuEjkN
	QwMwCUJVSlVKTU1KSUlIS0pPTktLVTMWGhIXVREeHR0CVRgTHhU7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFOQ01LNwY+
X-HM-Tid: 0a82c89b8ecb2eb9kusnd79b04c0485
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_195024_755236_4916E669 
X-CRM114-Status: GOOD (  23.98  )
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

SGkgRG91ZywKCkl0J3MgYmVlbiBhIGxvbmcgdGltZSwgaG9wZSB5b3UncmUgZG9pbmcgd2VsbCA6
KQoKT24gOC8yMyDmmJ/mnJ/kuowgMTowOCwgRG91ZyBBbmRlcnNvbiB3cm90ZToKPiBIaSwKPiAK
PiBPbiBTYXQsIEF1ZyAyMCwgMjAyMiBhdCAzOjA3IEFNIEplZmZ5IENoZW4gPGplZmZ5LmNoZW5A
cm9jay1jaGlwcy5jb20+IHdyb3RlOgo+Pgo+PiBPdGhlcndpc2UgdGhlIHRyaWdnZXIgbW9kZSBt
aWdodCBiZSBvdXQtb2Ytc3luYyB3aGVuIGEgbGV2ZWwgY2hhbmdlCj4+IG9jY3VycmVkIGluIGJl
dHdlZW4uCj4+Cj4+IEZpeGVzOiA1M2IxYmZjNzZkZjIgKCJwaW5jdHJsOiByb2NrY2hpcDogQXZv
aWQgbG9zaW5nIGludGVycnVwdHMgd2hlbiBzdXBwb3J0aW5nIGJvdGggZWRnZXMiKQo+PiBTaWdu
ZWQtb2ZmLWJ5OiBKZWZmeSBDaGVuIDxqZWZmeS5jaGVuQHJvY2stY2hpcHMuY29tPgo+PiAtLS0K
Pj4KPj4gICBkcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jIHwgNCArLS0tCj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tj
aGlwLmMKPj4gaW5kZXggYTk4MzUxY2Q2ODIxLi43MzZiNGQ5MGYxY2EgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPj4gKysrIGIvZHJpdmVycy9ncGlvL2dwaW8t
cm9ja2NoaXAuYwo+PiBAQCAtMzM4LDcgKzMzOCw3IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2ly
cV9kZW11eChzdHJ1Y3QgaXJxX2Rlc2MgKmRlc2MpCj4+ICAgICAgICAgICAgICAgICAgaXJxID0g
X19mZnMocGVuZCk7Cj4+ICAgICAgICAgICAgICAgICAgcGVuZCAmPSB+QklUKGlycSk7Cj4+Cj4+
IC0gICAgICAgICAgICAgICBkZXZfZGJnKGJhbmstPmRldiwgImhhbmRsaW5nIGlycSAlZFxuIiwg
aXJxKTsKPj4gKyAgICAgICAgICAgICAgIGdlbmVyaWNfaGFuZGxlX2RvbWFpbl9pcnEoYmFuay0+
ZG9tYWluLCBpcnEpOwo+Pgo+PiAgICAgICAgICAgICAgICAgIC8qCj4+ICAgICAgICAgICAgICAg
ICAgICogVHJpZ2dlcmluZyBJUlEgb24gYm90aCByaXNpbmcgYW5kIGZhbGxpbmcgZWRnZQo+PiBA
QCAtMzcwLDggKzM3MCw2IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2lycV9kZW11eChzdHJ1Y3Qg
aXJxX2Rlc2MgKmRlc2MpCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGJhbmstPmdwaW9fcmVncy0+ZXh0X3BvcnQpOwo+PiAgICAgICAgICAg
ICAgICAgICAgICAgICAgfSB3aGlsZSAoKGRhdGEgJiBCSVQoaXJxKSkgIT0gKGRhdGFfb2xkICYg
QklUKGlycSkpKTsKPj4gICAgICAgICAgICAgICAgICB9Cj4+IC0KPj4gLSAgICAgICAgICAgICAg
IGdlbmVyaWNfaGFuZGxlX2RvbWFpbl9pcnEoYmFuay0+ZG9tYWluLCBpcnEpOwo+IAo+IEknbSBo
YXBweSB0byBsZXQgb3RoZXJzIHNheSBmb3Igc3VyZSwgYnV0IGZyb20gbXkgcG9pbnQgb2Ygdmll
dyBJJ20KPiBub3QgY29udmluY2VkLiBJdCBmZWVscyBsaWtlIHdpdGggeW91ciBuZXcgY29kZSB5
b3UgY291bGQgbG9zZSBlZGdlcy4KPiAKPiBUaGUgYWJzdHJhY3Rpb24gSSBhbHdheXMgYXNzdW1l
IGZvciBlZGdlIHRyaWdnZXJlZCBpbnRlcnJ1cHRzIGlzIHRoYXQKPiBtdWx0aXBsZSBlZGdlcyBh
cmUgY29hbGVzY2VkIGludG8gb25lIElSUSBidXQgdGhhdCBpZiBhbiBlZGdlIGNvbWVzIGluCj4g
YWZ0ZXIgdGhlIGZpcnN0IGxpbmUgb2YgdGhlIElSUSBoYW5kbGVyIHN0YXJ0cyBleGVjdXRpbmcg
dGhlbiB0aGUgSVJRCj4gaGFuZGxlciB3aWxsIHJ1biBhZ2Fpbi4gSW4gb3RoZXIgd29yZHM6Cj4g
Cj4gLSBlZGdlIEEKPiAtIGVkZ2UgQgo+IC0gSVJRIGhhbmRsZXIgc3RhcnRzIHJ1bm5pbmcgKG9u
Y2UgZm9yIEEvQikKPiAtIElSUSBoYW5kbGVyIGZpbmlzaGVzIHJ1bm5pbmcKPiAtIDxpZGxlPgo+
IC0gZWRnZSBDCj4gLSBJUlEgaGFuZGxlciBzdGFydHMgcnVubmluZyAoZm9yIEMpCj4gLSBlZGdl
IEQKPiAtIGVkZ2UgRQo+IC0gSVJRIGhhbmRsZXIgZmluaXNoZXMgcnVubmluZwo+IC0gSVJRIGhh
bmRsZXIgc3RhcnRzIHJ1bm5pbmcgKGZvciBEL0UpCj4gLSBJUlEgaGFuZGxlciBmaW5pc2hlcyBy
dW5uaW5nCj4gLSA8aWRsZT4KClRoZSB0aGluZyBpcywgd2UgYXJlIGN1cnJlbnRseSB0b2dnbGlu
ZyB0aGUgdHJpZ2dlciBtb2RlIHRvIG1ha2Ugc3VyZSBpdCAKbWF0Y2hlcyB0aGUgY3VycmVudCBH
UElPIGxldmVsIChlLmcuIGxldmVsIGxvdyAtPiByaXNpbmcgZWRnZSBtb2RlKSwgCnRoYW4gYWNr
IGl0IGluIGdwaW8gSVJRIGhhbmRsZXIuCgpTbyBpZiBhbiBlZGdlIGNvbWUgaW4gYmV0d2Vlbiwg
dGhhdCBuZXcgSVJRIHN0YXR1cyB3b3VsZCBiZSAKYWNrZWQoY2xlYXJlZCkgaW4gdGhlIGZvbGxv
d2luZyBHUElPIGlycSBoYW5kbGVyIGFzIHdlbGwgYXMgdGhlIG9sZCBvbmUsIAp3aXRob3V0IHRy
aWdnZXJpbmcgYW5vdGhlciBJUlEgZGVtdXgoKSB0byB0b2dnbGUgdGhlIHRyaWdnZXIgbW9kZS4K
Ci0gcmlzaW5nIGVkZ2UKLSB0b2dnbGUgdG8gZmFsbGluZyBlZGdlIG1vZGUKLSBHUElPIGhpZ2gg
d2l0aCBmYWxsaW5nIGVkZ2UgbW9kZSA8LS0gY29ycmVjdAotIGZhbGxpbmcgZWRnZQotIElSUSBo
YW5kbGVyIGFja2VkIHRoYXQgSVJRCi0gSVJRIGhhbmRsZXIgZmluaXNoZWQKLSBHUElPIGxvdyB3
aXRoIGZhbGxpbmcgZWRnZSBtb2RlIDwtLSBvb3BzCi0gcmlzaW5nIGVkZ2UgPC0tIG1pc3NlZAoK
PiAKPiBGb3IgeW91ciBuZXcgY29kZSBJIGRvbid0IHRoaW5rIHRoYXQgd2lsbCBuZWNlc3Nhcmls
eSBiZSB0aGUgY2FzZS4gSQo+IHRoaW5rIHRoaXMgY2FuIGhhcHBlbiB3aXRoIHlvdXIgbmV3IGNv
ZGU6Cj4gCj4gLSByaXNpbmcgZWRnZQo+IC0gSVJRIGhhbmRsZXIgc3RhcnRzIHJ1bm5pbmcgZm9y
IHJpc2luZyBlZGdlCj4gLSBJUlEgaGFuZGxlciBmaW5pc2hlcyBydW5uaW5nIGZvciByaXNpbmcg
ZWRnZQo+IC0gZmFsbGluZyBlZGdlIChub3QgbGF0Y2hlZCBzaW5jZSB3ZSdyZSBsb29raW5nIGZv
ciByaXNpbmcgZWRnZXMpCj4gLSBub3RpY2UgdGhhdCBsZXZlbCBpcyBsb3cKPiAtIGtlZXAgaXQg
Y29uZmlndXJlZCBmb3IgcmlzaW5nIGVkZ2UKPiAKPiAuLi5pbiBvdGhlciB3b3JkcyBhbiBlZGdl
IGhhcHBlbmVkIF9hZnRlcl8gdGhlIElSUSBoYW5kbGVyIHJhbiBidXQgd2UKPiBkaWRuJ3QgY2Fs
bCB0aGUgSVJRIGhhbmRsZXIgYWdhaW4uIEkgZG9uJ3QgdGhpbmsgdGhpcyBpcyByaWdodC4KPiAK
ClJpZ2h0LCBzbyBndWVzc2luZyB3ZSBjb3VsZCBzb21laG93IG1vdmUgdGhlIElSUSBhY2sgaW50
byB0aGUgdG9nZ2xpbmcgCmZsb3cgdG8gbWFrZSBzdXJlIHRoYXQgaXQgd291bGQgbm90IGNsZWFy
IHRoZSBuZXcgSVJRPwoKQW5kIGl0IGxvb2tzIGxpa2UgdGhlcmUgYXJlIHF1aXRlIGEgZmV3IGRy
aXZlcnMgaGF2aW5nIHRoaXMga2luZCBvZiAKbmVlZCwgd291bGQgaXQgbWFrZSBzZW5zZSB0byBo
YW5kbGUgaXQgaW4gdGhlIGZyYW1ld29yaz8KCj4gCj4gV2hhdCBwcm9ibGVtIGFyZSB5b3UgdHJ5
aW5nIHRvIHNvbHZlPwo+IAo+IC1Eb3VnCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
