Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60EF2CA0FE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Aug 2025 10:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJhh776tN+Pc8qMDSQkPpydmQugY7fup8WTWNhXeo5E=; b=SzYJpsIyBrjEJp
	Fdf8SppHjm5VgSm79CnCXUke7xhpmiljj+TH+tuYdvHdsw47AlwxOjUAmdK2ndQKWL4QA/82ZwEsj
	9tuMPnBgQKdoZUUg6yFqpJiDvv82KUA9Jupa4a2Npef8ZwRe2Jz333lKQKWw2N2G06Zf/zJ2c70Ty
	p5Jkr5guLsg2cgRDVml99g0qD2F5iuzE+txLMA+Srdl16Mk7uHf1hWYeB3BqI7e+Eh85wxjwnBYOY
	U+j1uF7mwAaD6xy6lnflWqV4f6BQYYzFzBKc0qnPBYY6mz3vpsaZGbVAiKVPLOE3VjSmK5fp8mrsp
	drQhkfzwkw3OSTkpbGOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqqxy-0000000BdIl-02Aj;
	Tue, 26 Aug 2025 10:31:50 +0000
Received: from mail-m1973195.qiye.163.com ([220.197.31.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqqBO-0000000BTZC-3q2g;
	Tue, 26 Aug 2025 09:41:40 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 20a6cfec2;
	Tue, 26 Aug 2025 17:41:33 +0800 (GMT+08:00)
Message-ID: <52c7a4d7-3b78-4f85-a51b-e7bf950983ab@rock-chips.com>
Date: Tue, 26 Aug 2025 17:41:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3] net: ethernet: stmmac: dwmac-rk: Make the
 clk_phy could be used for external phy
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
 Chaoyi Chen <kernel@airkyi.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jonas Karlman <jonas@kwiboo.se>, David Wu <david.wu@rock-chips.com>,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20250815023515.114-1-kernel@airkyi.com>
 <CGME20250825072312eucas1p2d4751199c0ea069c7938218be60e5e93@eucas1p2.samsung.com>
 <a30a8c97-6b96-45ba-bad7-8a40401babc2@samsung.com>
 <d0fe6d16-181f-4b38-9457-1099fb6419d0@rock-chips.com>
 <809848c9-2ffa-4743-adda-b8b714b404de@samsung.com>
 <aKxnHFSrVeM7Be5A@shell.armlinux.org.uk>
 <8240a3cc-aade-40d8-b2f4-09681f76be68@rock-chips.com>
 <aK19bSmrbXjoVXdO@shell.armlinux.org.uk>
 <ae11b993-5844-4da1-b433-c27b5a73060a@rock-chips.com>
 <aK1_uaBpnix4n4eS@shell.armlinux.org.uk>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <aK1_uaBpnix4n4eS@shell.armlinux.org.uk>
X-HM-Tid: 0a98e5c115b803abkunmbdb30c1512b1a37
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkpMH1YaGkhNGkJCH0lPHk5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=QUxjHiA4NRSdDzTOLzXj6ibjiMdunwTZMcqRXDKB2H2d+RGMw5YPYQbuhUr+PYzB9Ib+up3Y4xOJUFAZGzq/4ocV4gs2CjAxu8KXDDHJ9SvZHExlJQusLCP28wEKJevHxEHAlNbWu6fw+CuUGh3B7oldl1eVT1ro2TrhRD2paiA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=0XauGVITHjDUPhgu+TX8GpRGjU2vEvzjqgrUvKCxlfw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250826_024139_149512_6CF6C06A 
X-CRM114-Status: GOOD (  20.70  )
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

T24gOC8yNi8yMDI1IDU6MzQgUE0sIFJ1c3NlbGwgS2luZyAoT3JhY2xlKSB3cm90ZToKCj4gT24g
VHVlLCBBdWcgMjYsIDIwMjUgYXQgMDU6Mjk6MDRQTSArMDgwMCwgQ2hhb3lpIENoZW4gd3JvdGU6
Cj4+IE9uIDgvMjYvMjAyNSA1OjI1IFBNLCBSdXNzZWxsIEtpbmcgKE9yYWNsZSkgd3JvdGU6Cj4+
Cj4+PiBPbiBUdWUsIEF1ZyAyNiwgMjAyNSBhdCAwNDowODo0MFBNICswODAwLCBDaGFveWkgQ2hl
biB3cm90ZToKPj4+PiBIaSBSdXNzZWxsLAo+Pj4+Cj4+Pj4gT24gOC8yNS8yMDI1IDk6MzcgUE0s
IFJ1c3NlbGwgS2luZyAoT3JhY2xlKSB3cm90ZToKPj4+Pj4gT24gTW9uLCBBdWcgMjUsIDIwMjUg
YXQgMTI6NTM6MzdQTSArMDIwMCwgTWFyZWsgU3p5cHJvd3NraSB3cm90ZToKPj4+Pj4+IE9uIDI1
LjA4LjIwMjUgMTE6NTcsIENoYW95aSBDaGVuIHdyb3RlOgo+Pj4+Pj4+IE9uIDgvMjUvMjAyNSAz
OjIzIFBNLCBNYXJlayBTenlwcm93c2tpIHdyb3RlOgo+Pj4+Pj4+PiBPbiAxNS4wOC4yMDI1IDA0
OjM1LCBDaGFveWkgQ2hlbiB3cm90ZToKPj4+Pj4+Pj4+IEZyb206IENoYW95aSBDaGVuIDxjaGFv
eWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBGb3IgZXh0ZXJuYWwg
cGh5LCBjbGtfcGh5IHNob3VsZCBiZSBvcHRpb25hbCwgYW5kIHNvbWUgZXh0ZXJuYWwgcGh5Cj4+
Pj4+Pj4+PiBuZWVkIHRoZSBjbG9jayBpbnB1dCBmcm9tIGNsa19waHkuIFRoaXMgcGF0Y2ggYWRk
cyBzdXBwb3J0IGZvciBzZXR0aW5nCj4+Pj4+Pj4+PiBjbGtfcGh5IGZvciBleHRlcm5hbCBwaHku
Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogRGF2aWQgV3UgPGRhdmlkLnd1QHJv
Y2stY2hpcHMuY29tPgo+Pj4+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogQ2hhb3lpIENoZW4gPGNoYW95
aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+Pj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4g
Q2hhbmdlcyBpbiB2MzoKPj4+Pj4+Pj4+IC0gTGluayB0byBWMjoKPj4+Pj4+Pj4+IGh0dHBzOi8v
bG9yZS5rZXJuZWwub3JnL25ldGRldi8yMDI1MDgxMjAxMjEyNy4xOTctMS1rZXJuZWxAYWlya3lp
LmNvbS8KPj4+Pj4+Pj4+IC0gUmViYXNlIHRvIG5ldC1uZXh0L21haW4KPj4+Pj4+Pj4+Cj4+Pj4+
Pj4+PiBDaGFuZ2VzIGluIHYyOgo+Pj4+Pj4+Pj4gLSBMaW5rIHRvIFYxOgo+Pj4+Pj4+Pj4gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjUwODA2MDExNDA1LjExNS0xLWtlcm5lbEBh
aXJreWkuY29tLwo+Pj4+Pj4+Pj4gLSBSZW1vdmUgZ2V0IGNsb2NrIGZyZXF1ZW5jeSBmcm9tIERU
IHByb3AKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiAgICDCoMKgIGRyaXZlcnMvbmV0L2V0aGVybmV0L3N0
bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMgfCAxMSArKysrKysrLS0tLQo+Pj4+Pj4+Pj4gICAgwqDC
oCAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pj4+Pj4+
Pj4KPj4+Pj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0
bW1hYy9kd21hYy1yay5jCj4+Pj4+Pj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8v
c3RtbWFjL2R3bWFjLXJrLmMKPj4+Pj4+Pj4+IGluZGV4IGFjODI4ODMwMTk5NC4uNWQ5MjFlNjJj
MmY1IDEwMDY0NAo+Pj4+Pj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9z
dG1tYWMvZHdtYWMtcmsuYwo+Pj4+Pj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3Rt
aWNyby9zdG1tYWMvZHdtYWMtcmsuYwo+Pj4+Pj4+Pj4gQEAgLTE0MTIsMTIgKzE0MTIsMTUgQEAg
c3RhdGljIGludCBya19nbWFjX2Nsa19pbml0KHN0cnVjdAo+Pj4+Pj4+Pj4gcGxhdF9zdG1tYWNl
bmV0X2RhdGEgKnBsYXQpCj4+Pj4+Pj4+PiAgICDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbGtfc2V0
X3JhdGUocGxhdC0+c3RtbWFjX2NsaywgNTAwMDAwMDApOwo+Pj4+Pj4+Pj4gICAgwqDCoMKgwqDC
oMKgIH0KPj4+Pj4+Pj4+ICAgIMKgwqAgLcKgwqDCoCBpZiAocGxhdC0+cGh5X25vZGUgJiYgYnNw
X3ByaXYtPmludGVncmF0ZWRfcGh5KSB7Cj4+Pj4+Pj4+PiArwqDCoMKgIGlmIChwbGF0LT5waHlf
bm9kZSkgewo+Pj4+Pj4+Pj4gICAgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYnNwX3ByaXYtPmNsa19w
aHkgPSBvZl9jbGtfZ2V0KHBsYXQtPnBoeV9ub2RlLCAwKTsKPj4+Pj4+Pj4+ICAgIMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHJldCA9IFBUUl9FUlJfT1JfWkVSTyhic3BfcHJpdi0+Y2xrX3BoeSk7Cj4+
Pj4+Pj4+PiAtwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+Pj4+Pj4+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiQ2Fubm90IGdldCBQSFkg
Y2xvY2tcbiIpOwo+Pj4+Pj4+Pj4gLcKgwqDCoMKgwqDCoMKgIGNsa19zZXRfcmF0ZShic3BfcHJp
di0+Y2xrX3BoeSwgNTAwMDAwMDApOwo+Pj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIC8qIElmIGl0
IGlzIG5vdCBpbnRlZ3JhdGVkX3BoeSwgY2xrX3BoeSBpcyBvcHRpb25hbCAqLwo+Pj4+Pj4+Pj4g
K8KgwqDCoMKgwqDCoMKgIGlmIChic3BfcHJpdi0+aW50ZWdyYXRlZF9waHkpIHsKPj4+Pj4+Pj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+Pj4+Pj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiQ2Fubm90
IGdldCBQSFkKPj4+Pj4+Pj4+IGNsb2NrXG4iKTsKPj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGNsa19zZXRfcmF0ZShic3BfcHJpdi0+Y2xrX3BoeSwgNTAwMDAwMDApOwo+Pj4+Pj4+
Pj4gK8KgwqDCoMKgwqDCoMKgIH0KPj4+Pj4+PiBJIHRoaW5rwqAgd2Ugc2hvdWxkIHNldCBic3Bf
cHJpdi0+Y2xrX3BoeSB0byBOVUxMIGhlcmUgaWYgd2UgZmFpbGVkIHRvCj4+Pj4+Pj4gZ2V0IHRo
ZSBjbG9jay4KPj4+Pj4+Pgo+Pj4+Pj4+IENvdWxkIHlvdSB0cnkgdGhpcyBvbiB5b3VyIGJvYXJk
PyBUaGFuayB5b3UuCj4+Pj4+PiBSaWdodCwgdGhlIGZvbGxvd2luZyBjaGFuZ2UgYWxzbyBmaXhl
cyB0aGlzIGlzc3VlOgo+Pj4+Pj4KPj4+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9zdG1pY3JvL3N0bW1hYy9kd21hYy1yay5jCj4+Pj4+PiBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMKPj4+Pj4+IGluZGV4IDlmYzQxMjA3Y2M0NS4u
MmQxOWQ0OGJlMDFmIDEwMDY0NAo+Pj4+Pj4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3Rt
aWNyby9zdG1tYWMvZHdtYWMtcmsuYwo+Pj4+Pj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
c3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYwo+Pj4+Pj4gQEAgLTE0MTUsNiArMTQxNSw4IEBAIHN0
YXRpYyBpbnQgcmtfZ21hY19jbGtfaW5pdChzdHJ1Y3QKPj4+Pj4+IHBsYXRfc3RtbWFjZW5ldF9k
YXRhICpwbGF0KQo+Pj4+Pj4gICAgIMKgwqDCoMKgwqDCoMKgIGlmIChwbGF0LT5waHlfbm9kZSkg
ewo+Pj4+Pj4gICAgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBic3BfcHJpdi0+Y2xr
X3BoeSA9IG9mX2Nsa19nZXQocGxhdC0+cGh5X25vZGUsIDApOwo+Pj4+Pj4gICAgIMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBQVFJfRVJSX09SX1pFUk8oYnNwX3ByaXYtPmNs
a19waHkpOwo+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkKPj4+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBic3BfcHJp
di0+Y2xrX3BoeSA9IE5VTEw7Cj4+Pj4+IE9yIGp1c3Q6Cj4+Pj4+Cj4+Pj4+IAkJY2xrID0gb2Zf
Y2xrX2dldChwbGF0LT5waHlfbm9kZSwgMCk7Cj4+Pj4+IAkJaWYgKGNsayA9PSBFUlJfUFRSKC1F
UFJPQkVfREVGRVIpKQo+Pj4+IERvIHdlIGFjdHVhbGx5IG5lZWQgdGhpcz/CoE1heWJlIG90aGVy
IGRldm1fY2xrX2dldCgpIGJlZm9yZSBpdCB3b3VsZCBmYWlsIGluIGFkdmFuY2UuCj4+PiBJcyBp
dCB0aGUgc2FtZSBjbG9jayBhcyBkZXZtX2Nsa19nZXQoKT8gSWYgaXQgaXMsIHdoYXQncyB0aGUg
cG9pbnQgb2YKPj4+IGdldHRpbmcgaXQgYSBzZWNvbmQgdGltZS4gSWYgaXQgaXNuJ3QsIHRoZW4g
aXQgY291bGQgYmUgYSBkaWZmZXJlbnQKPj4+IGNsb2NrIHdoaWNoIG1heSBiZSB5ZXQgdG8gcHJv
YmUuCj4+IEl0J3Mgbm90IHRoZSBzYW1lIGNsb2NrLCBidXQgaXQgc2hvdWxkIGJlIHVzZSB0aGUg
c2FtZSBjbG9jayBjb250cm9sbGVyIGRyaXZlciwgd2hpY2ggaXMgdGhlIENSVSBvbiB0aGUgUm9j
a2NoaXAgcGxhdGZvcm0uCj4gV2lsbCBpdCBhbHdheXMgYmUgdGhlIHNhbWUgY2xvY2sgY29udHJv
bGxlciwgaW5jbHVkaW5nIGludG8gdGhlIGZ1dHVyZQo+IFJvY2tjaGlwIGRldmljZXM/CgpIbW0s
IEknbSBub3Qgc3VyZSBpZiBpdCB3aWxsIGJlIHRoZSBzYW1lIGZvciB0aGUgZGV2aWNlcyB0aGF0
IGNvbWUgbGF0ZXIuIEknbGwgdHJ5IGFkZGluZyB0aG9zZSBjaGVja3MuCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
