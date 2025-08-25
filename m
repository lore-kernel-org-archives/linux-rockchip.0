Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39BCCCA0FE1
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 11:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:From:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FfF2nzdtDsi08/mqS2uDkgxy9zGkMrSMa0ET/08Eous=; b=GHQfi7N4e0veYn
	Tbe5VWhaHNacaycsZ5kHW88roif4hJFoHM5ixpvcQ7WZ6Z8FYii8VdIiUsMCVB5dO/txsJzHqRgoI
	959OvgdKMt3Pf0SZiiZuOz7JOmE9+pKHEc7k3JAKXRtiK4Ce4nK14FDLEZhWTizEFu4Bk5UCBFb6J
	JxvKuXkKVjei0WI0sGJSvUGffaUihY4y11rLkHS77Qd6sK325YRl1CvhWbhKi+9ry12oZr7GzOSjE
	BSUj5VVdrImgnKbdDBrVRdTziewopzPAVABlQ8mPKLHm3Aj6rRt1YuXCLjZZ97OP+YxZkL72gpnvS
	dBxKZDNQwOCTrCIjK63A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVbK-00000007or9-1mTe;
	Mon, 25 Aug 2025 11:43:02 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqUpc-00000007gQL-3zHP
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Aug 2025 10:53:47 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20250825105340euoutp02b10248c85b27b337636d1d784c1cf1f5~e-SBbUjoS0219902199euoutp02m
	for <linux-rockchip@lists.infradead.org>; Mon, 25 Aug 2025 10:53:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20250825105340euoutp02b10248c85b27b337636d1d784c1cf1f5~e-SBbUjoS0219902199euoutp02m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1756119220;
	bh=/fa4+ZI2ynYvAnmTSBhg899GLSJbeJtzYjuSjpeEGlo=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=O7Cv3imsFNC7IeAXaIsQOTVSs76RWqKfhuY1jXd2FZM3Ej/vljQpDs3xEZkUN5oVS
	 yD3dDR5BV5Iy+WZgQeEsmHuWRu5jXr5enJzwDjpRONP0YLo+IUG8+2kMY+tteupH4e
	 6arTUTVUhfF3zVlfow0G8gUAI3YCMMvTsmHj+HwI=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20250825105339eucas1p13cf980f9b7f4ba4f465f5953b97f149c~e-SA9vcu40800108001eucas1p1m;
	Mon, 25 Aug 2025 10:53:39 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250825105337eusmtip19068233323fe8c45892597caf271a2e6~e-R-X77KD1201812018eusmtip19;
	Mon, 25 Aug 2025 10:53:37 +0000 (GMT)
Message-ID: <809848c9-2ffa-4743-adda-b8b714b404de@samsung.com>
Date: Mon, 25 Aug 2025 12:53:37 +0200
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [PATCH net-next v3] net: ethernet: stmmac: dwmac-rk: Make the
 clk_phy could be used for external phy
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>, Chaoyi Chen
	<kernel@airkyi.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
	<davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
	<kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin
	<mcoquelin.stm32@gmail.com>, Alexandre Torgue
	<alexandre.torgue@foss.st.com>, "Russell King (Oracle)"
	<rmk+kernel@armlinux.org.uk>, Jonas Karlman <jonas@kwiboo.se>, David Wu
	<david.wu@rock-chips.com>
Cc: netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <d0fe6d16-181f-4b38-9457-1099fb6419d0@rock-chips.com>
X-CMS-MailID: 20250825105339eucas1p13cf980f9b7f4ba4f465f5953b97f149c
X-Msg-Generator: CA
X-RootMTR: 20250825072312eucas1p2d4751199c0ea069c7938218be60e5e93
X-EPHeader: CA
X-CMS-RootMailID: 20250825072312eucas1p2d4751199c0ea069c7938218be60e5e93
References: <20250815023515.114-1-kernel@airkyi.com>
	<CGME20250825072312eucas1p2d4751199c0ea069c7938218be60e5e93@eucas1p2.samsung.com>
	<a30a8c97-6b96-45ba-bad7-8a40401babc2@samsung.com>
	<d0fe6d16-181f-4b38-9457-1099fb6419d0@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_035345_589375_FD9D9A1F 
X-CRM114-Status: GOOD (  19.13  )
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

T24gMjUuMDguMjAyNSAxMTo1NywgQ2hhb3lpIENoZW4gd3JvdGU6Cj4gT24gOC8yNS8yMDI1IDM6
MjMgUE0sIE1hcmVrIFN6eXByb3dza2kgd3JvdGU6Cj4+IE9uIDE1LjA4LjIwMjUgMDQ6MzUsIENo
YW95aSBDaGVuIHdyb3RlOgo+Pj4gRnJvbTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2st
Y2hpcHMuY29tPgo+Pj4KPj4+IEZvciBleHRlcm5hbCBwaHksIGNsa19waHkgc2hvdWxkIGJlIG9w
dGlvbmFsLCBhbmQgc29tZSBleHRlcm5hbCBwaHkKPj4+IG5lZWQgdGhlIGNsb2NrIGlucHV0IGZy
b20gY2xrX3BoeS4gVGhpcyBwYXRjaCBhZGRzIHN1cHBvcnQgZm9yIHNldHRpbmcKPj4+IGNsa19w
aHkgZm9yIGV4dGVybmFsIHBoeS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBEYXZpZCBXdSA8ZGF2
aWQud3VAcm9jay1jaGlwcy5jb20+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDaGFveWkgQ2hlbiA8Y2hh
b3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+PiAtLS0KPj4+Cj4+PiBDaGFuZ2VzIGluIHYzOgo+
Pj4gLSBMaW5rIHRvIFYyOiAKPj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDI1
MDgxMjAxMjEyNy4xOTctMS1rZXJuZWxAYWlya3lpLmNvbS8KPj4+IC0gUmViYXNlIHRvIG5ldC1u
ZXh0L21haW4KPj4+Cj4+PiBDaGFuZ2VzIGluIHYyOgo+Pj4gLSBMaW5rIHRvIFYxOiAKPj4+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDI1MDgwNjAxMTQwNS4xMTUtMS1rZXJuZWxA
YWlya3lpLmNvbS8KPj4+IC0gUmVtb3ZlIGdldCBjbG9jayBmcmVxdWVuY3kgZnJvbSBEVCBwcm9w
Cj4+Pgo+Pj4gwqDCoCBkcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1y
ay5jIHwgMTEgKysrKysrKy0tLS0KPj4+IMKgwqAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgNCBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRo
ZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYyAKPj4+IGIvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYwo+Pj4gaW5kZXggYWM4Mjg4MzAxOTk0Li41ZDky
MWU2MmMyZjUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0
bW1hYy9kd21hYy1yay5jCj4+PiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0
bW1hYy9kd21hYy1yay5jCj4+PiBAQCAtMTQxMiwxMiArMTQxMiwxNSBAQCBzdGF0aWMgaW50IHJr
X2dtYWNfY2xrX2luaXQoc3RydWN0IAo+Pj4gcGxhdF9zdG1tYWNlbmV0X2RhdGEgKnBsYXQpCj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbGtfc2V0X3JhdGUocGxhdC0+c3RtbWFjX2NsaywgNTAw
MDAwMDApOwo+Pj4gwqDCoMKgwqDCoMKgIH0KPj4+IMKgwqAgLcKgwqDCoCBpZiAocGxhdC0+cGh5
X25vZGUgJiYgYnNwX3ByaXYtPmludGVncmF0ZWRfcGh5KSB7Cj4+PiArwqDCoMKgIGlmIChwbGF0
LT5waHlfbm9kZSkgewo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnNwX3ByaXYtPmNsa19waHkg
PSBvZl9jbGtfZ2V0KHBsYXQtPnBoeV9ub2RlLCAwKTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHJldCA9IFBUUl9FUlJfT1JfWkVSTyhic3BfcHJpdi0+Y2xrX3BoeSk7Cj4+PiAtwqDCoMKgwqDC
oMKgwqAgaWYgKHJldCkKPj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBkZXZfZXJy
X3Byb2JlKGRldiwgcmV0LCAiQ2Fubm90IGdldCBQSFkgY2xvY2tcbiIpOwo+Pj4gLcKgwqDCoMKg
wqDCoMKgIGNsa19zZXRfcmF0ZShic3BfcHJpdi0+Y2xrX3BoeSwgNTAwMDAwMDApOwo+Pj4gK8Kg
wqDCoMKgwqDCoMKgIC8qIElmIGl0IGlzIG5vdCBpbnRlZ3JhdGVkX3BoeSwgY2xrX3BoeSBpcyBv
cHRpb25hbCAqLwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChic3BfcHJpdi0+aW50ZWdyYXRlZF9w
aHkpIHsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiQ2Fu
bm90IGdldCBQSFkgCj4+PiBjbG9ja1xuIik7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBj
bGtfc2V0X3JhdGUoYnNwX3ByaXYtPmNsa19waHksIDUwMDAwMDAwKTsKPj4+ICvCoMKgwqDCoMKg
wqDCoCB9Cj4KPiBJIHRoaW5rwqAgd2Ugc2hvdWxkIHNldCBic3BfcHJpdi0+Y2xrX3BoeSB0byBO
VUxMIGhlcmUgaWYgd2UgZmFpbGVkIHRvIAo+IGdldCB0aGUgY2xvY2suCj4KPiBDb3VsZCB5b3Ug
dHJ5IHRoaXMgb24geW91ciBib2FyZD8gVGhhbmsgeW91LgoKUmlnaHQsIHRoZSBmb2xsb3dpbmcg
Y2hhbmdlIGFsc28gZml4ZXMgdGhpcyBpc3N1ZToKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9l
dGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jIApiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMKaW5kZXggOWZjNDEyMDdjYzQ1Li4yZDE5ZDQ4YmUw
MWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFj
LXJrLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsu
YwpAQCAtMTQxNSw2ICsxNDE1LDggQEAgc3RhdGljIGludCBya19nbWFjX2Nsa19pbml0KHN0cnVj
dCAKcGxhdF9zdG1tYWNlbmV0X2RhdGEgKnBsYXQpCiDCoMKgwqDCoMKgwqDCoCBpZiAocGxhdC0+
cGh5X25vZGUpIHsKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBic3BfcHJpdi0+Y2xr
X3BoeSA9IG9mX2Nsa19nZXQocGxhdC0+cGh5X25vZGUsIDApOwogwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJldCA9IFBUUl9FUlJfT1JfWkVSTyhic3BfcHJpdi0+Y2xrX3BoeSk7CivC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCivCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBic3BfcHJpdi0+Y2xrX3BoeSA9IE5VTEw7CiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyogSWYgaXQgaXMgbm90IGludGVncmF0ZWRfcGh5
LCBjbGtfcGh5IGlzIG9wdGlvbmFsICovCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
aWYgKGJzcF9wcml2LT5pbnRlZ3JhdGVkX3BoeSkgewogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAocmV0KQoKCiA+IC4uLgoKQmVzdCByZWdhcmRzCi0t
IApNYXJlayBTenlwcm93c2tpLCBQaEQKU2Ftc3VuZyBSJkQgSW5zdGl0dXRlIFBvbGFuZAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
