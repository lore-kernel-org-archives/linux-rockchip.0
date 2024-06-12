Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00D89C27C78
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 01:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+O/Sxaqs/coNsP86eMGkylVbGZtBV2dRdk3epVXiUKk=; b=FB48ktMQhMrWgo
	wL1idISeHBkS+KH6NsUG/ZCSOGXTRLsK7o/PzXjOt50Yb1j719LWNGrVxk+rWHMlxNDa5Hv7JnBkR
	TNFDEBlUtbjCIq2ELQk8mPv4QxWnpl2BP7sioBc+Vh2CSJEGa0vHpDanjNXbDajOLxukBJymlNgUw
	oc3unQNwEBModltKUOOEVrcbZ9qHHtRP8xKwtQ5JDNE8fqT7z5AHkfvahSKvA2MQtdYxxdl2jVNs0
	ehu2Z36xMB78SWmc488rHTK793CWwDmrBRjKe111kE5oFbHOjrd1E/YGCB/IVVvwI1YvBNxo3McZe
	dyXKemtvscbR10o4dXcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHCZT-0000000AeIS-1cbo;
	Wed, 12 Jun 2024 01:14:39 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHCZQ-0000000AeF2-0tnW
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 01:14:38 +0000
X-QQ-mid: bizesmtp77t1718154838tmm3c9ui
X-QQ-Originating-IP: hzFwlcaF6A3ehe/ZfSkHF2KUdnPUxqRl4fZFJNOFJDo=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 12 Jun 2024 09:13:55 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17490978406212277040
Message-ID: <3BA71BD12E90A400+a882cc79-85c5-48c7-acb0-bb31f45c7b9a@radxa.com>
Date: Wed, 12 Jun 2024 10:13:54 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: make "poweroff" work on rock-5a
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240611122746.751-1-naoki@radxa.com>
 <f623e316c7f94a318c78da9c48f66dc7@manjaro.org>
 <bf202a47cc6453d5aaacf09a29009380@manjaro.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <bf202a47cc6453d5aaacf09a29009380@manjaro.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz6a-0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_181436_826066_271FB34C 
X-CRM114-Status: GOOD (  15.60  )
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

SGVsbG8gRHJhZ2FuLAoKVGhhbmsgeW91IHNvIG11Y2ggZm9yIHlvdXIgcmVwbHkhCgpCZXN0IHJl
Z2FyZHMsCgotLQpGVUtBVU1JIE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBM
dGQuCgpPbiA2LzExLzI0IDIyOjQ1LCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gT24gMjAyNC0wNi0x
MSAxNTozNywgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiBIZWxsbyBGdWthbWksCj4+Cj4+IE9uIDIw
MjQtMDYtMTEgMTQ6MjcsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+PiB0byBtYWtlICJwb3dlcm9m
ZiIgY29tbWFuZCB3b3JrLCBhZGQgInN5c3RlbS1wb3dlci1jb250cm9sbGVyOyIgaW50bwo+Pj4g
cG1pY0AwLiB3aXRob3V0IHRoaXMsICJwb3dlcm9mZiIgd29ya3MgYXMgc2FtZSBhcyAicmVib290
Ii4KPiAKPiBTb3JyeSwgSSBmb3Jnb3QgdG8gYWRkIHRoYXQgdGhlIGRlc2NyaXB0aW9uIGFib3Zl
IGNvdWxkIGJlIHJld29yZGVkCj4gYSBiaXQsIGUuZy4gbm90IHRvIHJlcGVhdCB3aGF0J3MgYWxy
ZWFkeSB2aXNpYmxlIGluIHRoZSBwYXRjaCBpdHNlbGYuCj4gCj4gRm9yIGV4YW1wbGU6Cj4gCj4g
IMKgwqDCoCBEZXNpZ25hdGUgdGhlIFJLODA2IFBNSUMgb24gdGhlIFJhZHhhIFJPQ0sgNUEgYXMg
dGhlIHN5c3RlbSBwb3dlcgo+ICDCoMKgwqAgY29udHJvbGxlciwgc28gdGhlIGJvYXJkIHNodXRz
IGRvd24gcHJvcGVybHkgb24gcG93ZXJvZmYoOCkuCj4gCj4gVGhlIHBhdGNoIHN1YmplY3QgY291
bGQgYWxzbyBiZSB0d2Vha2VkIGEgYml0LCBlLmcuIHRvIHJlZmVyIHRvIHRoZQo+IGJvYXJkIGFz
ICJSYWR4YSBST0NLIDVBIi4KPiAKPj4+IEZpeGVzOiA3NWZkY2JjOGY0YzEgKCJhcm02NDogZHRz
OiByb2NrY2hpcDogYWRkIFBNSUMgdG8gcm9jay01YSIpCj4+PiBTaWduZWQtb2ZmLWJ5OiBGVUtB
VU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+Cj4+Cj4+IExvb2tpbmcgZ29vZCB0byBtZSwgd2l0
aCBhIHNtYWxsIHJlbWFyayBiZWxvdy4KPj4KPj4gUmV2aWV3ZWQtYnk6IERyYWdhbiBTaW1pYyA8
ZHNpbWljQG1hbmphcm8ub3JnPgo+Pgo+Pj4gLS0tCj4+PiDCoGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4cy1yb2NrLTVhLmR0cyB8IDIgKysKPj4+IMKgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHMKPj4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODhzLXJvY2stNWEuZHRzCj4+PiBpbmRleCBiMDcwOTU1NjI3YmUuLmNmN2I4
NzhhM2ViMiAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4cy1yb2NrLTVhLmR0cwo+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODhzLXJvY2stNWEuZHRzCj4+PiBAQCAtMzk1LDYgKzM5NSw4IEBAIHBtaWNAMCB7Cj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JnJrODA2X2R2czJfbnVsbD4sIDwmcms4
MDZfZHZzM19udWxsPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqAgc3BpLW1heC1mcmVxdWVuY3kgPSA8
MTAwMDAwMD47Cj4+Pgo+Pgo+PiBJIGRvbid0IHRoaW5rIHRoZXJlJ3MgbmVlZCBmb3IgdGhlIGVt
cHR5IGxpbmUgcmlnaHQgYWJvdmUsIGkuZS4KPj4gYmV0d2VlbiB0aGUgInNwaS1tYXgtZnJlcXVl
bmN5IiBhbmQgInN5c3RlbS1wb3dlci1jb250cm9sbGVyIiBsaW5lcy4KPj4KPj4+ICvCoMKgwqDC
oMKgwqDCoCBzeXN0ZW0tcG93ZXItY29udHJvbGxlcjsKPj4+ICsKPj4+IMKgwqDCoMKgwqDCoMKg
wqAgdmNjMS1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoCB2Y2My
LXN1cHBseSA9IDwmdmNjNXYwX3N5cz47Cj4+PiDCoMKgwqDCoMKgwqDCoMKgIHZjYzMtc3VwcGx5
ID0gPCZ2Y2M1djBfc3lzPjsKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4+IExpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo+IAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
