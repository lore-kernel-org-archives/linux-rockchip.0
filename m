Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31FDEC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 11:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sH99WVdXWWWQrQ6r27Jstkf/XpCRNRHbAj8jBTAlpUE=; b=UleUfVy4WeyrZV
	eEOad79l1h7eAjD0Mbkb5SIEMUxOwCn7jP5w6u+mDvk3c5np5XvPLkQS8rbYYud4obEC767oXUsan
	dDpu2H6jHHD4X+ALGM4/IO/ze2M7Fa/OozUvZMRzPvlMJ0AoOid/1RPSXbTFF+nb7tYfLJoak3zOb
	8cG8IaeFbb0vzz+iaSviWIwQ956iRROBDyl8RQeNH16WxIWmTIQEvOUFFN2I3fIzm3bxFKzJalupk
	QAuyuhmbqDbqVS0L+L9kL1eSNmE/SLl4pwpDI0lbCwDAkEdtn++2NvI6dCCZSIPgxYYxCJ+KEK1nS
	f76stlw72fhlbpuijNeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZsXt-001wG1-UJ; Thu, 31 Mar 2022 11:00:53 +0000
Received: from mail-m176237.qiye.163.com ([59.111.176.237])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZsXh-001wDK-NG; Thu, 31 Mar 2022 11:00:44 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m176237.qiye.163.com (Hmail) with ESMTPA id 29203C40318;
 Thu, 31 Mar 2022 19:00:35 +0800 (CST)
Message-ID: <8aa9da47-d7ed-41bf-384c-103757c19fe2@rock-chips.com>
Date: Thu, 31 Mar 2022 19:00:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v9 20/23] drm/rockchip: Make VOP driver optional
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Kever Yang <Kever.yang@rock-chips.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <20220328151116.2034635-21-s.hauer@pengutronix.de>
 <274a12a9-61f1-7d6a-e89c-52237621930b@rock-chips.com>
 <20220330063913.GW12181@pengutronix.de>
 <9619ce71-db59-d6cd-c254-2b67122fa245@rock-chips.com>
 <20220331070614.GD4012@pengutronix.de>
 <eebd2731-f18b-af1c-b0b9-09df669f5a3c@rock-chips.com>
 <20220331081815.GF4012@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220331081815.GF4012@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRoYGRlWTEsaS09NT0
 tMQh9IVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OBA6KQw5GD5DKw03PSItLUwC
 LTUaCjxVSlVKTU9DTElPT0hOTEJOVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTU5NQzcG
X-HM-Tid: 0a7fdfa2623dd9afkuws29203c40318
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_040042_181427_2576873A 
X-CRM114-Status: GOOD (  30.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGk6CgpPbiAzLzMxLzIyIDE2OjE4LCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4gT24gVGh1LCBNYXIg
MzEsIDIwMjIgYXQgMDM6MjA6MzdQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6Cj4+IEhpIFNhc2No
YToKPj4KPj4gT24gMy8zMS8yMiAxNTowNiwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+Pj4gT24gV2Vk
LCBNYXIgMzAsIDIwMjIgYXQgMDg6NTA6MDlQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6Cj4+Pj4g
SGkgU2FzY2hhOgo+Pj4+Cj4+Pj4gT24gMy8zMC8yMiAxNDozOSwgU2FzY2hhIEhhdWVyIHdyb3Rl
Ogo+Pj4+PiBIaSBBbmR5LAo+Pj4+Pgo+Pj4+PiBPbiBUdWUsIE1hciAyOSwgMjAyMiBhdCAwNzo1
NjoyN1BNICswODAwLCBBbmR5IFlhbiB3cm90ZToKPj4+Pj4+IEhpIFNhc2NoYToKPj4+Pj4+Cj4+
Pj4+PiBPbiAzLzI4LzIyIDIzOjExLCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4+Pj4+Pj4gV2l0aCB1
cGNvbWluZyBWT1AyIHN1cHBvcnQgVk9QIHdvbid0IGJlIHRoZSBvbmx5IGNob2ljZSBhbnltb3Jl
LCBzbyBtYWtlCj4+Pj4+Pj4gdGhlIFZPUCBkcml2ZXIgb3B0aW9uYWwuCj4+Pj4+Pj4KPj4+Pj4+
PiBTaWduZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4+
Pj4+Pj4gLS0tCj4+Pj4+Pj4gICAgICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyAg
ICAgICAgICAgIHwgOCArKysrKysrKwo+Pj4+Pj4+ICAgICAgZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL01ha2VmaWxlICAgICAgICAgICB8IDMgKystCj4+Pj4+Pj4gICAgICBkcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIHwgMiArLQo+Pj4+Pj4+ICAgICAgMyBmaWxl
cyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pj4+Pj4+Cj4+Pj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPj4+Pj4+PiBpbmRleCBmYTVjZmRhNGU5MGUzLi43
ZDIyZTI5OTdhNTcxIDEwMDY0NAo+Pj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9LY29uZmlnCj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcK
Pj4+Pj4+PiBAQCAtMjMsOCArMjMsMTYgQEAgY29uZmlnIERSTV9ST0NLQ0hJUAo+Pj4+Pj4+ICAg
ICAgaWYgRFJNX1JPQ0tDSElQCj4+Pj4+Pj4gK2NvbmZpZyBST0NLQ0hJUF9WT1AKPj4+Pj4+PiAr
CWJvb2wgIlJvY2tjaGlwIFZPUCBkcml2ZXIiCj4+Pj4+Pj4gKwlkZWZhdWx0IHkKPj4+Pj4+PiAr
CWhlbHAKPj4+Pj4+PiArCSAgVGhpcyBzZWxlY3RzIHN1cHBvcnQgZm9yIHRoZSBWT1AgZHJpdmVy
LiBZb3Ugc2hvdWxkIGVuYWJsZSBpdAo+Pj4+Pj4+ICsJICBvbiBhbGwgb2xkZXIgU29DcyB1cCB0
byBSSzMzOTkuCj4+Pj4+IFRoYXQgcmVtaW5kcyBtZSB0aGF0IEkgd2FudGVkIHRvIHJlcGhyYXNl
IHRoaXMuIFdpbGwgY2hhbmdlIGluIG5leHQKPj4+Pj4gcm91bmQuCj4+Pj4+Cj4+Pj4+Pj4gKwo+
Pj4+Pj4+ICAgICAgY29uZmlnIFJPQ0tDSElQX0FOQUxPR0lYX0RQCj4+Pj4+Pj4gICAgICAJYm9v
bCAiUm9ja2NoaXAgc3BlY2lmaWMgZXh0ZW5zaW9ucyBmb3IgQW5hbG9naXggRFAgZHJpdmVyIgo+
Pj4+Pj4+ICsJZGVwZW5kcyBvbiBST0NLQ0hJUF9WT1AKPj4+Pj4+IEFhbmxvZ2l4IGRwIGlzIGFs
c28gb24gdm9wMiBiYXNlIHNvYyBzdWNoIGFzwqAgcmszNTZ4IGFuZCByazM1ODguCj4+PiBCVFcg
SSBqdXN0IGxvb2tlZCBhdCB0aGUgZG93bnN0cmVhbSBkcml2ZXIuIEhlcmUgd2UgaGF2ZSB0aGUg
c2FtZQo+Pj4gc2l0dWF0aW9uIHRoYXQgdGhlIGFuYWxvZ2l4IGRwIGRyaXZlciBjYWxscyByb2Nr
Y2hpcF9kcm1fd2FpdF92YWN0X2VuZCgpCj4+PiB3aGljaCBpcyBpbXBsZW1lbnRlZCBpbiB0aGUg
Vk9QIGRyaXZlciwgc28gd2hlbiB0aGUgYW5hbG9naXggZHAgZHJpdmVyCj4+PiBpcyBhY3R1YWxs
eSB1c2VkIG9uIGEgVk9QMiBTb0MgdGhlbiBpdCBpcyBlaXRoZXIgdXNlZCBpbiBhIHdheSB0aGF0
Cj4+PiByb2NrY2hpcF9kcm1fd2FpdF92YWN0X2VuZCgpIHdpbGwgbmV2ZXIgYmUgY2FsbGVkIG9y
IGl0IGV4cGxvZGVzIGluIGFsbAo+Pj4gY29sb3Vycy4KPj4+Cj4+Pj4+IEkgYWRkZWQgdGhlIGRl
cGVuZGVuY3kgYmVjYXVzZSBhbmFsb2dpeF9kcC1yb2NrY2hpcC5jIGNhbGxzCj4+Pj4+IHJvY2tj
aGlwX2RybV93YWl0X3ZhY3RfZW5kKCkgd2hpY2ggaXMgaW1wbGVtZW50ZWQgaW4gdGhlIFZPUCBk
cml2ZXIsCj4+Pj4+IHNvIHRoaXMgZHJpdmVyIGN1cnJlbnR5IGNhbid0IHdvcmsgd2l0aCB0aGUg
Vk9QMiBkcml2ZXIgYW5kIGNhbid0Cj4+Pj4+IGJlIGxpbmtlZCB3aXRob3V0IHRoZSBWT1AgZHJp
dmVyIGJlaW5nIHByZXNlbnQuCj4+Pj4+IEknbGwgYWRkIGEgZmV3IHdvcmRzIHRvIHRoZSBjb21t
aXQgbWVzc2FnZS4KPj4+PiBNYXliZSBhIGJldHRlciBkaXJlY3Rpb24gaXMgbW92ZSByb2NrY2hp
cF9kcm1fd2FpdF92YWN0X2VuZCBmcm9tIHRoZSBWT1AKPj4+PiBkcml2ZXIgdG8gcm9ja2NoaXBf
ZHJtX2Rydi5jCj4+PiBJIGFtIG5vdCBzdXJlIGlmIHRoYXQncyByZWFsbHkgd29ydGggaXQuIFll
cywgdGhlIGRpcmVjdGlvbiBtaWdodCBiZSB0aGUKPj4+IHJpZ2h0IG9uZSwgYnV0IEkgd291bGQg
cmVhbGx5IHByZWZlciB3aGVuIHNvbWVib2R5IGRvZXMgdGhlIGNoYW5nZSB3aG8KPj4+IGNhbiB0
ZXN0IGFuZCBjb25maXJtIHRoYXQgdGhlIGFuYWxvZ2l4IGRwIHJlYWxseSB3b3JrcyB3aXRoIFZP
UDIgaW4gdGhlCj4+PiBlbmQuCj4+IElmIGZvbGxvdyB0aGlzIHBvaW50LCB0aGUgY3VycmVudCBE
V19NSVBJIGFsc28gaGFzIG5vdCBiZWVuIHRlc3RlZCBmb3IKPj4gY29uZmlybSB0aGF0IGl0Cj4+
Cj4+IGNhbiByZWFsbHkgd29yayB3aXRoIFZPUDIsIHNvIHlvdSBzaG91bGQgYWxzbyBtYWtlIGl0
IGRlcGVuZHMgb24KPj4gUk9DS0NISVBfVk9QLgo+IFdlbGwgYXQgbGVhc3QgSSBoYXZlIHBhdGNo
ZXMgaGVyZSB3aGljaCBtYWtlIERXX01JUEkgd29yayB3aXRoIFZPUDIgOykKCgpCdXQgeW91IERX
X01JUEkgcGF0Y2hlcyBmb3IgcmszNTZ4IGRpZG4ndCBjb21lLiBTbyB0aGlzIGlzIG5vdCBrZWVw
IApjb25zaXN0ZW5jeSB3aXRoIHRoaXMgcG9pbnQuCgo+Cj4gV2hhdCBhYm91dCB0aGUgb3RoZXJz
LCBsaWtlIExWRFMgYW5kIFJHQj8KCgpZZXMsIHdlIGFsc28gaGF2ZSBvdGhlciBpbnRlcmZhY2Ug
LCBSSzM1NlggaGFzIExWRFMvUkdCL0JUMTEyMC9CVDY1NiwgClJLMzU4OCBoYXMgQlQxMTIwL0JU
NjU2LCBubyBMVkRTIG9yIFJHQi4KCj4+IEkgdGhpbmsgdGhlIGN1cnJlbnQgc29sdXRpb24gaXMg
anVzdCBhIHdvcmthcm91bmQgdG8gbWFrZSB5b3VyIHBhdGNoIHBhc3MKPj4gdGhlIGtlcm5lbCBj
b21waWxlCj4gSW5kZWVkLgo+Cj4gSSBhZ3JlZSB0aGF0IGl0IHdvdWxkIGJlIGdvb2QgdG8gYWRk
IGEgbm90ZSBzb21ld2hlcmUgd2hpY2ggb3V0cHV0cwo+IHdvcmsgd2l0aCB0aGUgVk9QMiBkcml2
ZXIgKGN1cnJlbnRseSBvbmx5IEhETUkpLCBidXQgSSB3b25kZXIgaWYgS2NvbmZpZwo+IGRlcGVu
ZGVuY2llcyBpcyB0aGUgcmlnaHQgcGxhY2UgZm9yIGl0LCBiZWNhdXNlIG9ubHkgcGVvcGxlIHdo
byBkZWxpYmVyYXRlbHkKPiBkaXNhYmxlIFZPUCBzdXBwb3J0IHdpbGwgc2VlIHRoaXMgaW5mb3Jt
YXRpb24uCj4gTWF5YmUgd2Ugc2hvdWxkIHJhdGhlciBhZGQgaXQgdG8gdGhlIEtjb25maWcgaGVs
cCB0ZXh0PwoKCklmIGEgZGV2aWNlIGlzIHN1cHBvcnRlZCBmb3IgdGhpcyBzb2MsIHdlIHdpbGwg
YWRkIGR0IG5vZGUgYXQgdGhlIGR0c2kgZmlsZS4KCkEgS2NvbmZpZyBkZXBlbmRlbmNpZXMgZG9u
J3Qgc2VlbXMgYSBnb29kIGlkZWEuCgoKPgo+IFNhc2NoYQo+CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
