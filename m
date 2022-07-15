Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA56BC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 18:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3vrLPEr7OXCrSUEgWQKcW+POGu9dN767C408ZfXbT4=; b=XY6vGMLlOpAkam
	o5oM2LUO+gq+QH4VnQpD3jBE9e34J0ZWrHXVT5cINyCT40rn7uDxcdAcwwI9o1sbgELQ1nC6ObanN
	iEZr/AeMNqJTDCrXRp43k4o9BJoCf5ZgL4BOjSR1K8lvcdu5ImWHTA2r5+1PjXObwoUwhi9oXZrub
	N2NiVdh2aegVnracYvg1wZJH4l1h8PQFgH4///PXcyyQta9/R8k30nwWrutO381mGxcNyhalG0oiI
	esck8SnZhrJQXpX2u+B2DGsLEqBog8OWKdObh1Gu2rIurxVMztfE3GS8fKxc4S8Xr8PnBJVkEJWVv
	YQ/4rnzXnE51e97gP0Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCPnE-009NMM-Gi; Fri, 15 Jul 2022 18:12:00 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCPn2-009NKM-Or; Fri, 15 Jul 2022 18:11:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FDA212FC;
	Fri, 15 Jul 2022 11:11:45 -0700 (PDT)
Received: from [10.57.86.139] (unknown [10.57.86.139])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E769E3F792;
	Fri, 15 Jul 2022 11:11:43 -0700 (PDT)
Message-ID: <17a4c6f6-d79c-a7b2-860f-e5944b778f9f@arm.com>
Date: Fri, 15 Jul 2022 19:11:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v4] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
Content-Language: en-GB
To: =?UTF-8?Q?Christian_Kohlsch=c3=bctter?= <christian@kohlschutter.com>,
 wens@kernel.org, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
 <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
 <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
 <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
 <115AD6A4-021B-4879-BFB5-BC7689A0203E@kohlschutter.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <115AD6A4-021B-4879-BFB5-BC7689A0203E@kohlschutter.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_111148_922117_48BBD444 
X-CRM114-Status: GOOD (  18.12  )
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

T24gMjAyMi0wNy0xNSAxODoxNiwgQ2hyaXN0aWFuIEtvaGxzY2jDvHR0ZXIgd3JvdGU6Cj4gT0ss
IHRoaXMgdG9vayBtZSBhIHdoaWxlIHRvIGZpZ3VyZSBvdXQuCj4gCj4gV2hlbiBubyB1bmRlcnZv
bHRhZ2UgbGltaXQgaXMgY29uZmlndXJlZCwgSSBjYW4gcmVsaWFibHkgdHJpZ2dlciB0aGUgaW5p
dGlhbGl6YXRpb24gYnVnIHVwb24gYm9vdC4KPiBXaGVuIHRoZSBsaW1pdCBpcyBzZXQgdG8gMy4w
ViwgaXQgcmFyZWx5IG9jY3VycywgYnV0IGp1c3QgYWZ0ZXIgSSBzZW5kIHRoZSB2MyBwYXRjaCwg
SSB3YXMgYWJsZSB0byByZXByb2R1Y2UuLi4KCldlbGwgdGhpcyBoYXMgdG8gYmUgaW4gdGhlIHJ1
bm5pbmcgZm9yICJ3ZWlyZGVzdCBwbGFjZWJvIGV2ZXIiLi4uIDovCgpBbGwgaXQgYWN0dWFsbHkg
c2VlbXMgdG8gYWNoaWV2ZSBpcyBwcmludGluZyBhbiBlcnJvclsxXSAodGhpcyBpcyBhZnRlciAK
YWxsIGEgdGlueSA1LXBpbiBmaXhlZC12b2x0YWdlIExETyByZWd1bGF0b3IsIG5vdCBhbiBpbnRl
bGxpZ2VudCBQTUlDKSwgCmFuZCBpZiB0aGF0IG1ha2VzIGFuIGFwcHJlY2lhYmxlIGRpZmZlcmVu
Y2UgdGhlbiB0aGVyZSBoYXMgdG8gYmUgc29tZSAKa2luZCBvZiB3ZWlyZCB0aW1pbmcgY29uZGl0
aW9uIGF0IHBsYXkuIE1heWJlIHJlZ3VsYXRvcl9yZWdpc3RlcigpIGVuZHMgCnVwIHR1cm5pbmcg
aXQgb2ZmIGFuZCBvbiBhZ2FpbiByYXBpZGx5IGVub3VnaCB0aGF0IHRoZSBjYXJkIHNlZXMgYSAK
dm9sdGFnZSBicm93bm91dCBhbmQgZ2xpdGNoZXMsIGFuZCBhZGRpbmcgbW9yZSBkZWxheSBieSBw
cmludGluZyB0byB0aGUgCmNvbnNvbGUgc29tZXdoZXJlIGluIHRoZSBtaWRkbGUgZ2l2ZXMgaXQg
ZW5vdWdoIHRpbWUgdG8gYWN0IGFzIGEgcHJvcGVyIApwb3dlciBjeWNsZSB3aXRoIG5vIGlsbCBl
ZmZlY3Q/CgpJZiB5b3UganVzdCB3aGFjayBzb21ldGhpbmcgbGlrZSBhbiBtZGVsYXkoNTAwKSBh
dCBhcm91bmQgdGhhdCBwb2ludCBpbiAKc2V0X21hY2hpbmVfY29uc3RyYWludHMoKSwgd2l0aG91
dCB0aGUgRFQgcHJvcGVydHksIGRvZXMgaXQgaGF2ZSB0aGUgCnNhbWUgZWZmZWN0PwoKUm9iaW4u
CgpbMV0gCmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Rv
cnZhbGRzL2xpbnV4LmdpdC90cmVlL2RyaXZlcnMvcmVndWxhdG9yL2NvcmUuYyNuMTUyMQoKPj4g
QW0gMTUuMDcuMjAyMiB1bSAxOToxMiBzY2hyaWViIENocmlzdGlhbiBLb2hsc2Now7x0dGVyIDxj
aHJpc3RpYW5Aa29obHNjaHV0dGVyLmNvbT46Cj4+Cj4+IG1tYy9TRC1jYXJkIGluaXRpYWxpemF0
aW9uIG1heSBmYWlsIG9uIE5hbm9QaSBSNFMgd2l0aAo+PiAibW1jMTogcHJvYmxlbSByZWFkaW5n
IFNEIFN0YXR1cyByZWdpc3RlciIgLwo+PiAibW1jMTogZXJyb3IgLTExMCB3aGlsc3QgaW5pdGlh
bGlzaW5nIFNEIGNhcmQiCj4+IGVpdGhlciBvbiBjb2xkIGJvb3Qgb3IgYWZ0ZXIgYSByZWJvb3Qu
Cj4+Cj4+IE1vcmVvdmVyLCB0aGUgc3lzdGVtIHdvdWxkIGFsc28gc29tZXRpbWVzIGhhbmcgdXBv
biByZWJvb3QuCj4+Cj4+IFRoaXMgaXMgcHJldmVudGVkIGJ5IHNldHRpbmcgYW4gZXhwbGljaXQg
dW5kZXJ2b2x0YWdlIHByb3RlY3Rpb24gbGltaXQKPj4gZm9yIHRoZSBTRC1jYXJkLXNwZWNpZmlj
IHZjYzN2MF9zZCB2b2x0YWdlIHJlZ3VsYXRvci4KPj4KPj4gU2V0IHRoZSB1bmRlcnZvbHRhZ2Ug
cHJvdGVjdGlvbiBsaW1pdCB0byAyLjdWLCB3aGljaCBpcyB0aGUgbWluaW11bQo+PiBwZXJtaXNz
aWJsZSBTRCBjYXJkIG9wZXJhdGluZyB2b2x0YWdlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJp
c3RpYW4gS29obHNjaMO8dHRlciA8Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+Cj4+IC0tLQo+
PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kgfCA0ICsr
KysKPj4gMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+PiBtb2RlIGNoYW5nZSAxMDA2
NDQgPT4gMTAwNzU1IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LW5hbm9waTQu
ZHRzaQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktbmFub3BpNC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktbmFu
b3BpNC5kdHNpCj4+IG9sZCBtb2RlIDEwMDY0NAo+PiBuZXcgbW9kZSAxMDA3NTUKPj4gaW5kZXgg
OGMwZmY2Yzk2ZTAzLi42NjljNzRjZTRkMTMKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazMzOTktbmFub3BpNC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LW5hbm9waTQuZHRzaQo+PiBAQCAtNzMsNiArNzMsMTAgQEAgdmNjM3Yw
X3NkOiB2Y2MzdjAtc2Qgewo+PiAJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+IAkJcmVndWxhdG9y
LW1pbi1taWNyb3ZvbHQgPSA8MzAwMDAwMD47Cj4+IAkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQg
PSA8MzAwMDAwMD47Cj4+ICsKPj4gKwkJLy8gbXVzdCBiZSBjb25maWd1cmVkIG9yIFNEIGNhcmQg
bWF5IGZhaWwgdG8gaW5pdGlhbGl6ZSBvY2Nhc2lvbmFsbHkKPj4gKwkJcmVndWxhdG9yLXV2LXBy
b3RlY3Rpb24tbWljcm92b2x0ID0gPDI3MDAwMDA+Owo+PiArCj4+IAkJcmVndWxhdG9yLW5hbWUg
PSAidmNjM3YwX3NkIjsKPj4gCQl2aW4tc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPj4gCX07Cj4+
IC0tIAo+PiAyLjM2LjEKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
