Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C6CCC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 01:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqz6IqWcMsPh6hiFmnJHQ/7UAlEotkbGNVcnzEB3W1I=; b=A0CFQNcBP5fGMi
	/ehtlKqmhtPgkhgFrSlCVpDYu1wANYWUYR6UiXw1RbsXXEmFXu8dPtV068+PWauASgxEcZtlNH0XS
	bwFBIR+bMqJeHwjWH/aJgat/TNJnyjlLKcRdnLeDkdbGm5V/nbc2ZUHtV//RwqP4BmOb/6Sq+Yc4Q
	6HrOnRaORNHCjInlVi9+Bxhp3xKzwHwK6XjCb+tXMSLenFbnQIpwd+p/siVXGH+nkhPmLI023+nb+
	YsD8ydZxb5lZv+Qdo2r4cX54gxpP0rj5CEiukPJnL+UbcHZ1l66B1F6jA6Go95UVQoU8PMmb8mpnb
	KRp7H/vpJMYCaYaESp3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naSWU-007iZE-0l; Sat, 02 Apr 2022 01:25:50 +0000
Received: from mail-m17637.qiye.163.com ([59.111.176.37])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naSWH-007iWF-Gb; Sat, 02 Apr 2022 01:25:40 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m17637.qiye.163.com (Hmail) with ESMTPA id 61F4298040C;
 Sat,  2 Apr 2022 09:25:34 +0800 (CST)
Message-ID: <7b2630d8-0575-5d65-dd81-3ef336ad5ba7@rock-chips.com>
Date: Sat, 2 Apr 2022 09:25:33 +0800
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
 <8aa9da47-d7ed-41bf-384c-103757c19fe2@rock-chips.com>
 <20220401125527.GM4012@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220401125527.GM4012@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRofT0JWT05KS0hPTE
 seQklDVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTo6HRw4Ij5PSgNWKyE5UToz
 KhdPFAxVSlVKTU9DQ01JTEhPQkJLVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTE9MSDcG
X-HM-Tid: 0a7fe7e0a98bd992kuws61f4298040c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_182537_912137_5ABCF07D 
X-CRM114-Status: GOOD (  29.07  )
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

SGkgU2FzY2hhOgoKT24gNC8xLzIyIDIwOjU1LCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4gT24gVGh1
LCBNYXIgMzEsIDIwMjIgYXQgMDc6MDA6MzRQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6Cj4+IEhp
Ogo+Pgo+PiBPbiAzLzMxLzIyIDE2OjE4LCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4+PiBPbiBUaHUs
IE1hciAzMSwgMjAyMiBhdCAwMzoyMDozN1BNICswODAwLCBBbmR5IFlhbiB3cm90ZToKPj4+PiBI
aSBTYXNjaGE6Cj4+Pj4KPj4+PiBPbiAzLzMxLzIyIDE1OjA2LCBTYXNjaGEgSGF1ZXIgd3JvdGU6
Cj4+Pj4+IE9uIFdlZCwgTWFyIDMwLCAyMDIyIGF0IDA4OjUwOjA5UE0gKzA4MDAsIEFuZHkgWWFu
IHdyb3RlOgo+Pj4+Pj4gSGkgU2FzY2hhOgo+Pj4+Pj4KPj4+Pj4+IE9uIDMvMzAvMjIgMTQ6Mzks
IFNhc2NoYSBIYXVlciB3cm90ZToKPj4+Pj4+PiBIaSBBbmR5LAo+Pj4+Pj4+Cj4+Pj4+Pj4gT24g
VHVlLCBNYXIgMjksIDIwMjIgYXQgMDc6NTY6MjdQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6Cj4+
Pj4+Pj4+IEhpIFNhc2NoYToKPj4+Pj4+Pj4KPj4+Pj4+Pj4gT24gMy8yOC8yMiAyMzoxMSwgU2Fz
Y2hhIEhhdWVyIHdyb3RlOgo+Pj4+Pj4+Pj4gV2l0aCB1cGNvbWluZyBWT1AyIHN1cHBvcnQgVk9Q
IHdvbid0IGJlIHRoZSBvbmx5IGNob2ljZSBhbnltb3JlLCBzbyBtYWtlCj4+Pj4+Pj4+PiB0aGUg
Vk9QIGRyaXZlciBvcHRpb25hbC4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBT
YXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4+Pj4+Pj4+PiAtLS0KPj4+Pj4+
Pj4+ICAgICAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnICAgICAgICAgICAgfCA4
ICsrKysrKysrCj4+Pj4+Pj4+PiAgICAgICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvTWFrZWZp
bGUgICAgICAgICAgIHwgMyArKy0KPj4+Pj4+Pj4+ICAgICAgIGRyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgfCAyICstCj4+Pj4+Pj4+PiAgICAgICAzIGZpbGVzIGNo
YW5nZWQsIDExIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pj4+Pj4+Pgo+Pj4+Pj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnIGIvZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPj4+Pj4+Pj4+IGluZGV4IGZhNWNmZGE0ZTkwZTMu
LjdkMjJlMjk5N2E1NzEgMTAwNjQ0Cj4+Pj4+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvS2NvbmZpZwo+Pj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tj
b25maWcKPj4+Pj4+Pj4+IEBAIC0yMyw4ICsyMywxNiBAQCBjb25maWcgRFJNX1JPQ0tDSElQCj4+
Pj4+Pj4+PiAgICAgICBpZiBEUk1fUk9DS0NISVAKPj4+Pj4+Pj4+ICtjb25maWcgUk9DS0NISVBf
Vk9QCj4+Pj4+Pj4+PiArCWJvb2wgIlJvY2tjaGlwIFZPUCBkcml2ZXIiCj4+Pj4+Pj4+PiArCWRl
ZmF1bHQgeQo+Pj4+Pj4+Pj4gKwloZWxwCj4+Pj4+Pj4+PiArCSAgVGhpcyBzZWxlY3RzIHN1cHBv
cnQgZm9yIHRoZSBWT1AgZHJpdmVyLiBZb3Ugc2hvdWxkIGVuYWJsZSBpdAo+Pj4+Pj4+Pj4gKwkg
IG9uIGFsbCBvbGRlciBTb0NzIHVwIHRvIFJLMzM5OS4KPj4+Pj4+PiBUaGF0IHJlbWluZHMgbWUg
dGhhdCBJIHdhbnRlZCB0byByZXBocmFzZSB0aGlzLiBXaWxsIGNoYW5nZSBpbiBuZXh0Cj4+Pj4+
Pj4gcm91bmQuCj4+Pj4+Pj4KPj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+ICAgICAgIGNvbmZpZyBST0NL
Q0hJUF9BTkFMT0dJWF9EUAo+Pj4+Pj4+Pj4gICAgICAgCWJvb2wgIlJvY2tjaGlwIHNwZWNpZmlj
IGV4dGVuc2lvbnMgZm9yIEFuYWxvZ2l4IERQIGRyaXZlciIKPj4+Pj4+Pj4+ICsJZGVwZW5kcyBv
biBST0NLQ0hJUF9WT1AKPj4+Pj4+Pj4gQWFubG9naXggZHAgaXMgYWxzbyBvbiB2b3AyIGJhc2Ug
c29jIHN1Y2ggYXPCoCByazM1NnggYW5kIHJrMzU4OC4KPj4+Pj4gQlRXIEkganVzdCBsb29rZWQg
YXQgdGhlIGRvd25zdHJlYW0gZHJpdmVyLiBIZXJlIHdlIGhhdmUgdGhlIHNhbWUKPj4+Pj4gc2l0
dWF0aW9uIHRoYXQgdGhlIGFuYWxvZ2l4IGRwIGRyaXZlciBjYWxscyByb2NrY2hpcF9kcm1fd2Fp
dF92YWN0X2VuZCgpCj4+Pj4+IHdoaWNoIGlzIGltcGxlbWVudGVkIGluIHRoZSBWT1AgZHJpdmVy
LCBzbyB3aGVuIHRoZSBhbmFsb2dpeCBkcCBkcml2ZXIKPj4+Pj4gaXMgYWN0dWFsbHkgdXNlZCBv
biBhIFZPUDIgU29DIHRoZW4gaXQgaXMgZWl0aGVyIHVzZWQgaW4gYSB3YXkgdGhhdAo+Pj4+PiBy
b2NrY2hpcF9kcm1fd2FpdF92YWN0X2VuZCgpIHdpbGwgbmV2ZXIgYmUgY2FsbGVkIG9yIGl0IGV4
cGxvZGVzIGluIGFsbAo+Pj4+PiBjb2xvdXJzLgo+Pj4+Pgo+Pj4+Pj4+IEkgYWRkZWQgdGhlIGRl
cGVuZGVuY3kgYmVjYXVzZSBhbmFsb2dpeF9kcC1yb2NrY2hpcC5jIGNhbGxzCj4+Pj4+Pj4gcm9j
a2NoaXBfZHJtX3dhaXRfdmFjdF9lbmQoKSB3aGljaCBpcyBpbXBsZW1lbnRlZCBpbiB0aGUgVk9Q
IGRyaXZlciwKPj4+Pj4+PiBzbyB0aGlzIGRyaXZlciBjdXJyZW50eSBjYW4ndCB3b3JrIHdpdGgg
dGhlIFZPUDIgZHJpdmVyIGFuZCBjYW4ndAo+Pj4+Pj4+IGJlIGxpbmtlZCB3aXRob3V0IHRoZSBW
T1AgZHJpdmVyIGJlaW5nIHByZXNlbnQuCj4+Pj4+Pj4gSSdsbCBhZGQgYSBmZXcgd29yZHMgdG8g
dGhlIGNvbW1pdCBtZXNzYWdlLgo+Pj4+Pj4gTWF5YmUgYSBiZXR0ZXIgZGlyZWN0aW9uIGlzIG1v
dmUgcm9ja2NoaXBfZHJtX3dhaXRfdmFjdF9lbmQgZnJvbSB0aGUgVk9QCj4+Pj4+PiBkcml2ZXIg
dG8gcm9ja2NoaXBfZHJtX2Rydi5jCj4+Pj4+IEkgYW0gbm90IHN1cmUgaWYgdGhhdCdzIHJlYWxs
eSB3b3J0aCBpdC4gWWVzLCB0aGUgZGlyZWN0aW9uIG1pZ2h0IGJlIHRoZQo+Pj4+PiByaWdodCBv
bmUsIGJ1dCBJIHdvdWxkIHJlYWxseSBwcmVmZXIgd2hlbiBzb21lYm9keSBkb2VzIHRoZSBjaGFu
Z2Ugd2hvCj4+Pj4+IGNhbiB0ZXN0IGFuZCBjb25maXJtIHRoYXQgdGhlIGFuYWxvZ2l4IGRwIHJl
YWxseSB3b3JrcyB3aXRoIFZPUDIgaW4gdGhlCj4+Pj4+IGVuZC4KPj4+PiBJZiBmb2xsb3cgdGhp
cyBwb2ludCwgdGhlIGN1cnJlbnQgRFdfTUlQSSBhbHNvIGhhcyBub3QgYmVlbiB0ZXN0ZWQgZm9y
Cj4+Pj4gY29uZmlybSB0aGF0IGl0Cj4+Pj4KPj4+PiBjYW4gcmVhbGx5IHdvcmsgd2l0aCBWT1Ay
LCBzbyB5b3Ugc2hvdWxkIGFsc28gbWFrZSBpdCBkZXBlbmRzIG9uCj4+Pj4gUk9DS0NISVBfVk9Q
Lgo+Pj4gV2VsbCBhdCBsZWFzdCBJIGhhdmUgcGF0Y2hlcyBoZXJlIHdoaWNoIG1ha2UgRFdfTUlQ
SSB3b3JrIHdpdGggVk9QMiA7KQo+Pgo+PiBCdXQgeW91IERXX01JUEkgcGF0Y2hlcyBmb3Igcmsz
NTZ4IGRpZG4ndCBjb21lLiBTbyB0aGlzIGlzIG5vdCBrZWVwCj4+IGNvbnNpc3RlbmN5IHdpdGgg
dGhpcyBwb2ludC4KPj4KPj4+IFdoYXQgYWJvdXQgdGhlIG90aGVycywgbGlrZSBMVkRTIGFuZCBS
R0I/Cj4+Cj4+IFllcywgd2UgYWxzbyBoYXZlIG90aGVyIGludGVyZmFjZSAsIFJLMzU2WCBoYXMg
TFZEUy9SR0IvQlQxMTIwL0JUNjU2LCBSSzM1ODgKPj4gaGFzIEJUMTEyMC9CVDY1Niwgbm8gTFZE
UyBvciBSR0IuCj4+Cj4+Pj4gSSB0aGluayB0aGUgY3VycmVudCBzb2x1dGlvbiBpcyBqdXN0IGEg
d29ya2Fyb3VuZCB0byBtYWtlIHlvdXIgcGF0Y2ggcGFzcwo+Pj4+IHRoZSBrZXJuZWwgY29tcGls
ZQo+Pj4gSW5kZWVkLgo+Pj4KPj4+IEkgYWdyZWUgdGhhdCBpdCB3b3VsZCBiZSBnb29kIHRvIGFk
ZCBhIG5vdGUgc29tZXdoZXJlIHdoaWNoIG91dHB1dHMKPj4+IHdvcmsgd2l0aCB0aGUgVk9QMiBk
cml2ZXIgKGN1cnJlbnRseSBvbmx5IEhETUkpLCBidXQgSSB3b25kZXIgaWYgS2NvbmZpZwo+Pj4g
ZGVwZW5kZW5jaWVzIGlzIHRoZSByaWdodCBwbGFjZSBmb3IgaXQsIGJlY2F1c2Ugb25seSBwZW9w
bGUgd2hvIGRlbGliZXJhdGVseQo+Pj4gZGlzYWJsZSBWT1Agc3VwcG9ydCB3aWxsIHNlZSB0aGlz
IGluZm9ybWF0aW9uLgo+Pj4gTWF5YmUgd2Ugc2hvdWxkIHJhdGhlciBhZGQgaXQgdG8gdGhlIEtj
b25maWcgaGVscCB0ZXh0Pwo+Pgo+PiBJZiBhIGRldmljZSBpcyBzdXBwb3J0ZWQgZm9yIHRoaXMg
c29jLCB3ZSB3aWxsIGFkZCBkdCBub2RlIGF0IHRoZSBkdHNpIGZpbGUuCj4+Cj4+IEEgS2NvbmZp
ZyBkZXBlbmRlbmNpZXMgZG9uJ3Qgc2VlbXMgYSBnb29kIGlkZWEuCj4gT2ssIHRoaXMgbWVhbnMg
d2UgY2FuIGtlZXAgbXkgY3VycmVudCBhcHByb2FjaCB3aXRoIGp1c3QgbGV0dGluZwo+IFJPQ0tD
SElQX0FOQUxPR0lYX0RQIGRlcGVuZCBvbiBST0NLQ0hJUF9WT1AgdG8gYXZvaWQgaGF2aW5nIGEg
bm9uCgpFeGN1c2UgbWU/IEhvdyBkbyB5b3UgZ2V0IHRoaXMgY29uY2x1c2lvbiA/CgpJIHNhaWQg
YmVmb3JlLMKgIHZvcCBhbmQgdm9wMiBiYXNlZCBwbGF0Zm9ybXMgYm90aCBoYXZlIFJPQ0tDSElQ
X0FOQUxPR0lYX0RQLgoKSWYgdGhpcyBwYXRjaCB3aWxsIGNhdXNlIHRoZSBjb21waWxlIGVycm9y
LCBwbGVhc2UgZG8gYSByZWFsIGZpeCwgbm90IGEKCndvcmthcm91bmQgdGhhdCBtYXkgZGVsaXZl
ciBtaXNsZWFkaW5nIGluZm9ybWF0aW9uLgoKPiBidWlsZGFibGUga2VybmVsLgo+Cj4gU2FzY2hh
Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
