Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D677C67861
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Apr 2024 15:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EfoWwuhJOm6EHkAkooeM+VAYnIoJB10u9BIsiLSV8q0=; b=vYjy2onf4aVCzg
	fKZY8drg/NoXYMylSNll9OraMq/ivmDV93oRoQzwkWwt3wSZIU/nteLhtuKF2uADFxyEHicLQivUI
	XazFy7mSDaY7rzIfY+9sN5HM0tJXFGO5UT+QJKT+BWvZcjYfRIsYwGuA6JbQw7+7/hVxh+KNoHfDF
	kj5lrE4wuCiCpCONZlgfWkwfzD8IEdAX1y5fSy+dtBnolLNXOXKyb3NUfME+ZvhMXr04sXiFjV9cd
	tOy9zBUwUKmRTGZFtjTp665bOvHTlQGpRPPQVijgEeCj9FHxqZIUu48WUclM9P5hbisk0cuLqUu0o
	Vg0pKzix0k1gw3fSsXfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqi2-0000000Fznp-3Fua;
	Mon, 08 Apr 2024 15:14:58 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rtqi0-0000000Fzmt-2Phe
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Apr 2024 15:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1712589287;
 bh=4Z0LBlRO9DzPCsRdqe9rsbK3UJ8PBblYy0Cmk5n/lz0=;
 b=As/SAD4HXF91//0fKggr1TGq+grPgujAJk7MYEagQNIoLbcfcp9Hedu8VfM12QmaKk4vH1mfX
 yFNC8l32zugzKq/QTO7Pcq0XMlTRzNsqjexMFwNm+0lLW7RCh7SsW4PLoLkQc7Q0Qw07nnJ0h5R
 Xi/b82kks3ZXaMsnxjYUoiitkNkLKNGDQ0NsvAs8UedNnXS4zSdY01qU8jdJjJs/IIWckImuKN7
 Z+/PJ3kJK3Yk3dxrXDejogFvk/vx4hBuebytqAF4xP7Ob+H8Y0sx2QA9QProjyMggza6rlxWToO
 oPGT0Qu5Sd3Y8nD8yVaRa73U8eFmpEYwpbejH4hO03zw==
Message-ID: <fb57172e-2517-498c-9412-76f62929d24a@kwiboo.se>
Date: Mon, 8 Apr 2024 17:14:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable onboard spi flash for
 rock-3a
To: "=?UTF-8?Q?Heiko_St=C3=BCbner?=" <heiko@sntech.de>, Chukun Pan
 <amadeus@jmu.edu.cn>
Cc: Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240408124005.182565-1-amadeus@jmu.edu.cn>
 <421ab43b-ff92-41c6-9904-3c7681c926be@kwiboo.se>
 <b32c284e-f3ec-44b0-abbd-7fa403bc9870@kwiboo.se> <3066222.xgJ6IN8ObU@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <3066222.xgJ6IN8ObU@diego>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 661409e594faae8761be3e7a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240408_081456_681929_9AE31860 
X-CRM114-Status: GOOD (  14.15  )
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

T24gMjAyNC0wNC0wOCAxNzowNCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCA4
LiBBcHJpbCAyMDI0LCAxNjo1Njo1OSBDRVNUIHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPj4gT24g
MjAyNC0wNC0wOCAxNjo0NCwgSm9uYXMgS2FybG1hbiB3cm90ZToKPj4+IE9uIDIwMjQtMDQtMDgg
MTQ6NDAsIENodWt1biBQYW4gd3JvdGU6Cj4+Pj4gVGhlcmUgaXMgYSBteDI1dTEyODM1ZiBzcGkg
Zmxhc2ggb24gdGhpcyBib2FyZCwgZW5hYmxlIGl0Lgo+Pj4+Cj4+Pj4gWyAgICAyLjUyNTgwNV0g
c3BpLW5vciBzcGk0LjA6IG14MjV1MTI4MzVmICgxNjM4NCBLYnl0ZXMpCj4+Pj4KPj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBDaHVrdW4gUGFuIDxhbWFkZXVzQGptdS5lZHUuY24+Cj4+Pj4gLS0tCj4+Pj4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2EuZHRzIHwgMTIgKysr
KysrKysrKysrCj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4+Pj4KPj4+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0z
YS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNhLmR0cwo+
Pj4+IGluZGV4IGE1ZTk3NGVhNjU5ZS4uZDg3MzhjYzQ3YzczIDEwMDY0NAo+Pj4+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2EuZHRzCj4+Pj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYS5kdHMKPj4+PiBAQCAt
NzU3LDYgKzc1NywxOCBAQCAmc2RtbWMyIHsKPj4+PiAgCXN0YXR1cyA9ICJva2F5IjsKPj4+PiAg
fTsKPj4+PiAgCj4+Pj4gKyZzZmMgewo+Pj4KPj4+IFRoaXMgaXMgbWlzc2luZzoKPj4+Cj4+PiAJ
I2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+PiAJI3NpemUtY2VsbHMgPSA8MD47Cj4+Pgo+Pj4+ICsJ
c3RhdHVzID0gIm9rYXkiOwo+Pj4+ICsKPj4+PiArCWZsYXNoQDAgewo+Pj4+ICsJCWNvbXBhdGli
bGUgPSAiamVkZWMsc3BpLW5vciI7Cj4+Pj4gKwkJcmVnID0gPDB4MD47Cj4+Pj4gKwkJc3BpLW1h
eC1mcmVxdWVuY3kgPSA8NTAwMDAwMDA+Owo+Pj4KPj4+IEF0IGxlYXN0IGluIFUtQm9vdCB0aGUg
c3BpIGNsb2NrIG9ubHkgc3VwcG9ydCAyNCwgMTAwIG9yIDIwMCBtaHogYW5kIEkKPj4+IGFtIHBy
ZXR0eSBzdXJlIHRoZSBzcGkgZmxhc2ggc3VwcG9ydCAxMDBtaHosIHNvIEkgd291bGQgc3VnZ2Vz
dCB5b3UgdGVzdAo+Pj4gd2l0aCAxMDBtaHosIHNhbWUgYXMgdXNlZCBvbiBvdGhlciByazM1Nngg
Ym9hcmRzLgo+Pgo+PiBTb3JyeSwgbG9va2VkIGF0IHNwaSBjbG9jayBpbnN0ZWFkIG9mIHNmYyBj
bG9jay4KPj4gc2ZjIGNsb2NrIHN1cHBvcnQgMjQsIDUwLCA3NSwgMTAwLCAxMjUgYW5kIDE1MCBt
aHouCj4gCj4gSSB0aGluayBpbiBzb21lIHByZXZpb3VzIGRpc2N1c3Npb24gdGhlIGFncmVlbWVu
dCB3YXMgdGhhdCB0aGUgbm9kZQo+IHNob3VsZCBzcGVjaWZ5IHRoZSBtYXggZnJlcXVlbmN5IHRo
ZSBmbGFzaCBzdXBwb3J0cyBhbmQgaGF2ZSB0aGUKPiBjb250cm9sbGVyIHdvcnJ5IGFib3V0IGl0
cyBvd24gY2xvY2sgcmFuZ2VzLgoKSW50ZXJlc3RpbmcsIHNvdW5kcyBsaWtlIHRoZXJlIGlzIGEg
bmVlZCB0byBkbyBzb21lIG1vZGlmaWNhdGlvbiB0byBzcGkKYW5kIGNsayBkcml2ZXJzIGluIFUt
Qm9vdCB0byBzdXBwb3J0IHRoYXQuCgo+IAo+IFRob3VnaCBpbiB0aGlzIGNhc2UgdGhlIDUwTUh6
IGZvciB0aGUgZmxhc2ggZXZlbiBtYXRjaGVzIHRoZSBjbG9jawo+IGZyZXF1ZW5jeSBzdXBwb3J0
ZWQgYnkgdGhlIHNmYwoKSSB0aGluayB0aGUgb24tYm9hcmQgc3BpIG5vciBmbGFzaCBzdXBwb3J0
IDEwNC8xMDgvMTMzIG1oeiBzbyA1MCBtaHogaXMKd3JvbmcgaW4gYW55IGNhc2UuCgpSZWdhcmRz
LApKb25hcwoKPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
