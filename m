Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBA03C2BA18
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 20:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qilxF5+1WFSRlT1fUtMbqDIsjXj3DiwniidBuIlMnAc=; b=vgl8Qgm2lL+Pu1
	3+1LO9BIPt2MCTdmM67Nf4lC5Jb5SeGEl42UxQNLoxWlPHpMWnyIQKSYNnJ6K78JuFEAlTiovcMH5
	yhjngXlZd4DIOMUOifDlzgkDXnoWHK+C8YbyvotJVSIK5Ft4rioBwaTbHmmic8tbGDhNka/MFrwaL
	gmvI8j5JIbPpq9zeb9cMsYgGIw3kpgwEEoQTmnzHeoGfdgR83wm1CucuBaNDLzIyR8mC/vGVcF1PZ
	su6QFc4V+H4ch3Cz7FvU82U2tmIB3F7nl3cXh+pl/VtM5SyDpQuKxlcjMfHpXE4+NgNza1AI5xkOk
	mPp5XkYwsKoUoUOjSrQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKOrr-00000006hWq-1FLV;
	Thu, 20 Jun 2024 20:58:51 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKOro-00000006hQs-01Kz
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Jun 2024 20:58:50 +0000
X-QQ-mid: bizesmtpsz4t1718917097tm5f1kn
X-QQ-Originating-IP: uO/26qzv3iDQK1W9oyz8S8UFqJ5jycG6m2/2BWstDe8=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 21 Jun 2024 04:58:15 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 11653067985614190756
Message-ID: <552DCDA324D37FD9+83963e69-a869-49aa-baec-3185c6be7a03@radxa.com>
Date: Fri, 21 Jun 2024 05:58:15 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix mmc aliases for Radxa ZERO
 3E/3W
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: jonas@kwiboo.se, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240619232734.1126-1-naoki@radxa.com>
 <10613118.nitPUkWRp2@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <10613118.nitPUkWRp2@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_135848_714960_08FDD72F 
X-CRM114-Status: GOOD (  16.29  )
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

SGksCgpPbiA2LzIxLzI0IDA1OjM1LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSwKPiAKPiBB
bSBEb25uZXJzdGFnLCAyMC4gSnVuaSAyMDI0LCAwMToyNzozNCBDRVNUIHNjaHJpZWIgRlVLQVVN
SSBOYW9raToKPj4gYWxpZ24gd2l0aCBvdGhlciBSYWR4YSBwcm9kdWN0cy4KPj4KPj4gLSBtbWMw
IGlzIGVNTUMKPj4gLSBtbWMxIGlzIG1pY3JvU0QKPj4KPiAKPiBzbyB5ZXMgd2UgY2FuIHN0aWxs
IGNoYW5nZSB0aGUgbW1jIGFsaWFzZXMgYXMgdGhlIHplcm8gd2lsbCBvbmx5IGJlY29tZSBwYXJ0
IG9mIDYuMTEKPiBCdXQgbW1jIGFsaWFzZXMgc2hvdWxkIHN0YXJ0IGF0IDAgYW5kIG5vdCBjb250
YWluIGhvbGVzLgo+IAo+IFNvIGlmIHlvdSBjYXJlIG11Y2ggYWJvdXQgdGhlIG9yZGVyaW5nLCBt
b3ZlIHRoZSBhbGlhcyBibG9jayBvdXQgb2YgdGhlIHplcm8tMy5kdHNpCj4gYW5kIGludHJvZHVj
ZSBzZXBhcmF0ZSBibG9ja3MgZm9yIGVhY2ggYm9hcmQuCj4gCj4gCj4gSW4gemVyby0zdzoKPiAg
ICAJYWxpYXNlcyB7Cj4gCQltbWMwID0gJnNkbW1jMDsKPiAgICAJfTsKPiAKPiBJbiB6ZXJvLTN3
Ogo+ICAgIAlhbGlhc2VzIHsKPiAJCW1tYzAgPSAmc2RoY2k7Cj4gCQltbWMxID0gJnNkbW1jMDsK
PiAgICAJCW1tYzIgPSAmc2RtbWMxOwo+ICAgIAl9OwoKb2theSwgSSdsbCBzZW5kIHYyLgp0aGFu
ayB5b3UgZm9yIHlvdXIgY29tbWVudC4KCkJlc3QgcmVnYXJkcywKCi0tCkZVS0FVTUkgTmFva2kK
UmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KCj4gQWx0ZXJuYXRpdmVseSwgbGVh
dmUgdGhlIGFsaWFzZXMgYXMgdGhleSBhcmUgbm93Cj4gSGVpa28KPiAKPj4gRml4ZXM6IDFhNWM4
ZDMwN2M4MyAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgUmFkeGEgWkVSTyAzVy8zRSIpCj4+
IFNpZ25lZC1vZmYtYnk6IEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4KPj4gLS0tCj4+
ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcmFkeGEtemVyby0zLmR0c2kg
fCAyICstCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcmFkeGEtemVy
by0zdy5kdHMgfCAyICstCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2Ni1yYWR4YS16ZXJvLTMuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY2LXJhZHhhLXplcm8tMy5kdHNpCj4+IGluZGV4IDYyM2Q1OTM5ZDE5NC4uODVkNzZk
NTM1MzM4IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
Ni1yYWR4YS16ZXJvLTMuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2Ni1yYWR4YS16ZXJvLTMuZHRzaQo+PiBAQCAtNyw3ICs3LDcgQEAKPj4gICAKPj4gICAv
IHsKPj4gICAJYWxpYXNlcyB7Cj4+IC0JCW1tYzAgPSAmc2RtbWMwOwo+PiArCQltbWMxID0gJnNk
bW1jMDsKPj4gICAJfTsKPj4gICAKPj4gICAJY2hvc2VuIHsKPj4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXJhZHhhLXplcm8tM3cuZHRzIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcmFkeGEtemVyby0zdy5kdHMKPj4gaW5kZXgg
OWJmNGY0NjQ5MTVmLi4xODgxNDdjNGI3OGIgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTY2LXJhZHhhLXplcm8tM3cuZHRzCj4+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXJhZHhhLXplcm8tM3cuZHRzCj4+IEBAIC05LDcg
KzksNyBAQCAvIHsKPj4gICAJY29tcGF0aWJsZSA9ICJyYWR4YSx6ZXJvLTN3IiwgInJvY2tjaGlw
LHJrMzU2NiI7Cj4+ICAgCj4+ICAgCWFsaWFzZXMgewo+PiAtCQltbWMxID0gJnNkaGNpOwo+PiAr
CQltbWMwID0gJnNkaGNpOwo+PiAgIAkJbW1jMiA9ICZzZG1tYzE7Cj4+ICAgCX07Cj4+ICAgCj4+
Cj4gCj4gCj4gCj4gCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
