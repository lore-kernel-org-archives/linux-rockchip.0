Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B5FCD5D695
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Nov 2024 01:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQNfJxfbHsiCynWUzdqqVoIoByC4FUkWr8QcvLbwsAw=; b=NJ5xAo+NW2OJ+p
	nJqeG0IIWQXeyinEYKzol89OOUxWb0DU5dYjVBeX46gXo0koQqGGzPvWe6+DUV3WEAGD+WqXofX6i
	wfa06FNDuj00cV0kS7jSF+4kKghBPnDf1K85K/zGxcONSjMEWGZeZf2YzHWSLRa35vV0PXoO4MX1a
	EQjI0s7U7OkjBKi7JoLGLqje7vVyQ3jSCq3lhafN0eG09sQFqRbunP0kgzPCMqxjx+eaJTzqU9KIQ
	9+NNnqGEJd2cL2bIQYfHFgB6BD0oUcyMlpT4J4CG+MBX93nczLKBLpheVqiDqvAV7oZZZ+jL1zLlx
	9PyaRDbartjeAf/dfkhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9DQU-00000008tRi-3DtW;
	Fri, 08 Nov 2024 01:04:38 +0000
Received: from mail-m6029.netease.com ([210.79.60.29])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9DQO-00000008tQx-0FuQ
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Nov 2024 01:04:34 +0000
Received: from [172.16.12.45] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 222b801f;
	Fri, 8 Nov 2024 09:04:18 +0800 (GMT+08:00)
Message-ID: <a65a8ec4-9b75-493a-961c-7b570dd834b5@rock-chips.com>
Date: Fri, 8 Nov 2024 09:04:19 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Rob Herring <robh+dt@kernel.org>,
 "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, YiFeng Zhao <zyf@rock-chips.com>,
 Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 1/7] scsi: ufs: core: Add
 UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
 <1730705521-23081-2-git-send-email-shawn.lin@rock-chips.com>
 <20241107155128.paqyo7een2ggzejs@thinkpad>
Content-Language: en-GB
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20241107155128.paqyo7een2ggzejs@thinkpad>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ05CSVZDQ0hOS00dSx1KGEhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93094cf63309cckunm222b801f
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRA6DSo*KjIiKDQfCgENPCoI
	TggaFAhVSlVKTEhKS0lMQ01LTU9NVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhLS0I3Bg++
DKIM-Signature: a=rsa-sha256;
	b=caDQOPOqYhwi2ZXxVysG81TPPpMKkpTk3KK6/IvlXq2IRkjMK6XSEEWzC9O7NJeY0qeV8EejJ0RnOa0FT3ycYpYPNbFQ2zzs+L+n/Qy49QWCJINP9ijli4ZtIVb4PgesulGI73aUSP8xyjPuSb8hkbwXyZn6T5vfKkBMEOxE7V4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Kza4I0HzRT2xsTR4YzkXyNx0h5y2MmaFHxdi3ivQ7So=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_170432_659874_F5B1F4AB 
X-CRM114-Status: GOOD (  22.91  )
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

SGkgTWFuaSwKCuWcqCAyMDI0LzExLzcgMjM6NTEsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSDlhpnp
gZM6Cj4gT24gTW9uLCBOb3YgMDQsIDIwMjQgYXQgMDM6MzE6NTVQTSArMDgwMCwgU2hhd24gTGlu
IHdyb3RlOgo+PiBIQ0Ugb24gUm9ja2NoaXAgU29DIGlzIGRpZmZlcmVudCBmcm9tIGJvdGggb2Yg
dWZzaGNkX2hiYV9leGVjdXRlX2hjZSgpCj4+IGFuZCBVRlNIQ0lfUVVJUktfQlJPS0VOX0hDRSBj
YXNlLiBJdCBuZWVkIHRvIGRvIGRtZV9yZXNldCBhbmQgZG1lX2VuYWJsZQo+PiBhZnRlciBlbmFi
bGluZyBIQ0UuIFNvIGluIG9yZGVyIG5vdCB0byBhYnVzZSBVRlNIQ0lfUVVJUktfQlJPS0VOX0hD
RSwgYWRkCj4+IGEgbmV3IHF1aXJrIFVGU0hDSV9RVUlSS19ETUVfUkVTRVRfRU5BQkxFX0FGVEVS
X0hDRSwgdG8gZGVhbCB3aXRoIHRoYXQKPj4gbGltaXRhdGlvbi4KPj4KPj4gU3VnZ2VzdGVkLWJ5
OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3Jn
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4K
Pj4gLS0tCj4+Cj4+IENoYW5nZXMgaW4gdjQ6Cj4+IC0gZml4IHR5cG8KPj4KPj4gQ2hhbmdlcyBp
biB2MzogTm9uZQo+PiBDaGFuZ2VzIGluIHYyOiBOb25lCj4+Cj4+ICAgZHJpdmVycy91ZnMvY29y
ZS91ZnNoY2QuYyB8IDE3ICsrKysrKysrKysrKysrKysrCj4+ICAgaW5jbHVkZS91ZnMvdWZzaGNk
LmggICAgICB8ICA2ICsrKysrKwo+PiAgIDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygr
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy91ZnMvY29yZS91ZnNoY2QuYyBiL2RyaXZlcnMv
dWZzL2NvcmUvdWZzaGNkLmMKPj4gaW5kZXggN2NhYjEwMzEuLjQwODRiZjkgMTAwNjQ0Cj4+IC0t
LSBhL2RyaXZlcnMvdWZzL2NvcmUvdWZzaGNkLmMKPj4gKysrIGIvZHJpdmVycy91ZnMvY29yZS91
ZnNoY2QuYwo+PiBAQCAtNDgxOSw2ICs0ODE5LDcgQEAgc3RhdGljIGludCB1ZnNoY2RfaGJhX2V4
ZWN1dGVfaGNlKHN0cnVjdCB1ZnNfaGJhICpoYmEpCj4+ICAgewo+PiAgIAlpbnQgcmV0cnlfb3V0
ZXIgPSAzOwo+PiAgIAlpbnQgcmV0cnlfaW5uZXI7Cj4+ICsJaW50IHJldDsKPj4gICAKPj4gICBz
dGFydDoKPj4gICAJaWYgKHVmc2hjZF9pc19oYmFfYWN0aXZlKGhiYSkpCj4+IEBAIC00ODY1LDYg
KzQ4NjYsMjIgQEAgc3RhdGljIGludCB1ZnNoY2RfaGJhX2V4ZWN1dGVfaGNlKHN0cnVjdCB1ZnNf
aGJhICpoYmEpCj4+ICAgCS8qIGVuYWJsZSBVSUMgcmVsYXRlZCBpbnRlcnJ1cHRzICovCj4+ICAg
CXVmc2hjZF9lbmFibGVfaW50cihoYmEsIFVGU0hDRF9VSUNfTUFTSyk7Cj4+ICAgCj4+ICsJLyoK
Pj4gKwkgKiBEbyBkbWVfcmVzZXQgYW5kIGRtZV9lbmFibGUgaWYgYSBVRlMgaG9zdCBjb250cm9s
bGVyIG5lZWRzCj4+ICsJICogdGhpcyBwcm9jZWR1cmUgdG8gYWN0dWFsbHkgZmluaXNoIEhDRS4K
Pj4gKwkgKi8KPj4gKwlpZiAoaGJhLT5xdWlya3MgJiBVRlNIQ0lfUVVJUktfRE1FX1JFU0VUX0VO
QUJMRV9BRlRFUl9IQ0UpIHsKPj4gKwkJcmV0ID0gdWZzaGNkX2RtZV9yZXNldChoYmEpOwo+PiAr
CQlpZiAoIXJldCkgewo+PiArCQkJcmV0ID0gdWZzaGNkX2RtZV9lbmFibGUoaGJhKTsKPj4gKwkJ
CWlmIChyZXQpCj4+ICsJCQkJZGV2X2VycihoYmEtPmRldiwKPj4gKwkJCQkJIkZhaWxlZCB0byBk
byBkbWVfZW5hYmxlIGFmdGVyIEhDRS5cbiIpOwo+IAo+IERvbid0IHlvdSBuZWVkIHRvIHJldHVy
biBmYWlsdXJlIGZvciB0aGlzIGFuZCBiZWxvdyBlcnJvciBwYXRocz8gUHJvYmFibHkgeW91Cj4g
bmVlZCB0byBza2lwIHBvc3QgY2hhbmdlIG5vdGlmaWNhdGlvbiBhcyB3ZWxsIGluIHRoZSBjYXNl
IG9mIGZhaWx1cmUuCgpPb3BzLCBteSBiYWQuCgo+IAo+PiArCQl9IGVsc2Ugewo+PiArCQkJZGV2
X2VycihoYmEtPmRldiwgIkZhaWxlZCB0byBkbyBkbWVfcmVzZXQgYWZ0ZXIgSENFLlxuIik7Cj4+
ICsJCX0KPj4gKwl9Cj4+ICsKPj4gICAJdWZzaGNkX3ZvcHNfaGNlX2VuYWJsZV9ub3RpZnkoaGJh
LCBQT1NUX0NIQU5HRSk7Cj4gCj4gSXMgaXQgcG9zc2libGUgZm9yIHlvdSB0byBjYXJyeSBvdXQg
ZG1lX3Jlc2V0KCkgYW5kIGRtZV9lbmFibGUoKSBpbiB0aGUgcG9zdAo+IGNoYW5nZSBub3RpZmll
ciBvZiB0aGUgcm9ja2NoaXAgZ2x1ZSBkcml2ZXI/IEknbSB0cnlpbmcgdG8gc2VlIGlmIHdlIGNh
biBhdm9pZAo+IGhhdmluZyB0aGUgcXVpcmsgd2hpY2ggaXMgb25seSBzcGVjaWZpYyB0byBSb2Nr
Y2hpcC4KPiAKCkkgd2lsbCBjaGVjayBhbmQgdGVzdCB0aGlzIGFwcHJvYWNoLiBUaGFua3MuCgo+
IC0gTWFuaQo+IAo+PiAgIAo+PiAgIAlyZXR1cm4gMDsKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUv
dWZzL3Vmc2hjZC5oIGIvaW5jbHVkZS91ZnMvdWZzaGNkLmgKPj4gaW5kZXggYTk1MjgyYi4uZTkz
OWFmOCAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS91ZnMvdWZzaGNkLmgKPj4gKysrIGIvaW5jbHVk
ZS91ZnMvdWZzaGNkLmgKPj4gQEAgLTY4NSw2ICs2ODUsMTIgQEAgZW51bSB1ZnNoY2RfcXVpcmtz
IHsKPj4gICAJICogc2luZ2xlIGRvb3JiZWxsIG1vZGUuCj4+ICAgCSAqLwo+PiAgIAlVRlNIQ0Rf
UVVJUktfQlJPS0VOX0xTREJTX0NBUAkJCT0gMSA8PCAyNSwKPj4gKwo+PiArCS8qCj4+ICsJICog
VGhpcyBxdWlyayBuZWVkcyB0byBiZSBlbmFibGVkIGlmIGhvc3QgY29udHJvbGxlciBuZWVkIHRv
Cj4+ICsJICogZG8gZG1lX3Jlc2V0IGFuZCBkbWVfZW5hYmxlIGFmdGVyIGhjZS4KPj4gKwkgKi8K
Pj4gKwlVRlNIQ0lfUVVJUktfRE1FX1JFU0VUX0VOQUJMRV9BRlRFUl9IQ0UJCT0gMSA8PCAyNiwK
Pj4gICB9Owo+PiAgIAo+PiAgIGVudW0gdWZzaGNkX2NhcHMgewo+PiAtLSAKPj4gMi43LjQKPj4K
PiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
