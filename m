Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4ED7DC25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 08:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5PRAvm8LMeowPYW1MCGQSi2+jUJgysPHVgIENPq4cc=; b=cnF78BazASklUi
	BWl+tC4Rj+xf/jsLucWjDSUikmtMKlVmYd/blPKYGR5r0h0MO3TA2N3r/1oqxO2lHlOsim7jwjqyd
	WXQtWxs9/Dj7uOm38JZ792qnbYcH0oLtliAvZSi1szvxAr0EddLM16ozqi09AAzNh2GJaIi+1il4p
	Gxud7hxSR91Ht023eo6l8ZAcVGESJLbQ0bd0rp8d73LTD46QF9DiwBYeDHmIp7LVuekURFrQEGinf
	oSmDbvugnHaJhJGJY8e7+I6a0Kl1GEhYYGepQ65y+BL4s+Ld/1BnVyVc30oXzdMIw6+un6AO8fJXT
	IUqAkUyTUHpBbW4mmArQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElff-000000056Jh-3cmp;
	Wed, 05 Jun 2024 08:06:59 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sElfb-000000056Iz-4B3j
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 08:06:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A062DCE139E;
	Wed,  5 Jun 2024 08:06:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93DD5C3277B;
	Wed,  5 Jun 2024 08:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717574812;
	bh=wYE6T1lsbts1oFahGg1sqw1GHF2V+AJpwXfB/pxwhww=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eBTiThhi4+nxpHQ0SWvxIV1sRELb02ftmzxAWxi5GQtjWEhdf0TmZZTo/2Mqg+Say
	 WWFU5R2pGdDMevTd2hzzAbjylu7JPM2uBHC6A83FwmkFKkJ/nSwqR6vG2u5jCnHjwj
	 UmZ7IwFGaBxVfjTGqFTyyH2nR9SonAjK3K1t4YYwpdx7p2g5CEG1hhW2AhuQMOo35l
	 WU6KB+oU19ZdTw41X/PK74Ou9x3AT+2QUScGdit/8buJbOVfly2mxDFqDrk7C+KS+S
	 Cc12SgXu6TckRzX06d0Oh5M9uYyBgpTv1eM2GXcIukltvsN+TBaOpxssS0JqRh6aei
	 Fp5hLoiFAGhzQ==
Date: Wed, 5 Jun 2024 13:36:40 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Simon Xue <xxm@rock-chips.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 09/13] PCI: dw-rockchip: Refactor the driver to
 prepare for EP mode
Message-ID: <20240605080640.GJ5085@thinkpad>
References: <20240529-rockchip-pcie-ep-v1-v4-0-3dc00fe21a78@kernel.org>
 <20240529-rockchip-pcie-ep-v1-v4-9-3dc00fe21a78@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240529-rockchip-pcie-ep-v1-v4-9-3dc00fe21a78@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_010656_859124_E2A31E05 
X-CRM114-Status: GOOD (  25.46  )
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

T24gV2VkLCBNYXkgMjksIDIwMjQgYXQgMTA6Mjk6MDNBTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBUaGlzIHJlZmFjdG9ycyB0aGUgZHJpdmVyIHRvIHByZXBhcmUgZm9yIEVQIG1vZGUu
Cj4gQWRkIG9mLW1hdGNoIGRhdGEgdG8gdGhlIGV4aXN0aW5nIGNvbXBhdGlibGUsIGFuZCBleHBs
aWNpdGx5IGRlZmluZSBpdCBhcwo+IERXX1BDSUVfUkNfVFlQRS4gVGhpcyB3YXksIHdlIHdpbGwg
YmUgYWJsZSB0byBhZGQgRVAgbW9kZSBpbiBhIGZvbGxvdy11cAo+IGNvbW1pdCBpbiBhIG11Y2gg
bGVzcyBpbnRydXNpdmUgd2F5LCB3aGljaCBtYWtlcyB0aGUgZm9sbHVwLXVwIGNvbW1pdCBtdWNo
Cj4gZWFzaWVyIHRvIHJldmlldy4KPiAKPiBObyBmdW5jdGlvbmFsIGNoYW5nZSBpbnRlbmRlZC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4KCkZl
dyBuaXRwaWNrcyBiZWxvdy4gV2l0aCB0aG9zZSBhZGRyZXNzZWQsCgpSZXZpZXdlZC1ieTogTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KCj4g
LS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDg0
ICsrKysrKysrKysrKysrKysrKystLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNjAgaW5zZXJ0
aW9ucygrKSwgMjQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2Nv
bnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IGluZGV4IDEzODBlM2E1Mjg0Yi4uZTEzMzUxMTY5MmFm
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2No
aXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAu
Ywo+IEBAIC00OSwxNSArNDksMjAgQEAKPiAgI2RlZmluZSBQQ0lFX0xUU1NNX1NUQVRVU19NQVNL
CQlHRU5NQVNLKDUsIDApCj4gIAo+ICBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSB7Cj4gLQlzdHJ1Y3Qg
ZHdfcGNpZQkJCXBjaTsKPiAtCXZvaWQgX19pb21lbQkJCSphcGJfYmFzZTsKPiAtCXN0cnVjdCBw
aHkJCQkqcGh5Owo+IC0Jc3RydWN0IGNsa19idWxrX2RhdGEJCSpjbGtzOwo+IC0JdW5zaWduZWQg
aW50CQkJY2xrX2NudDsKPiAtCXN0cnVjdCByZXNldF9jb250cm9sCQkqcnN0Owo+IC0Jc3RydWN0
IGdwaW9fZGVzYwkJKnJzdF9ncGlvOwo+IC0Jc3RydWN0IHJlZ3VsYXRvciAgICAgICAgICAgICAg
ICAqdnBjaWUzdjM7Cj4gLQlzdHJ1Y3QgaXJxX2RvbWFpbgkJKmlycV9kb21haW47Cj4gKwlzdHJ1
Y3QgZHdfcGNpZQkJCQlwY2k7Cj4gKwl2b2lkIF9faW9tZW0JCQkJKmFwYl9iYXNlOwo+ICsJc3Ry
dWN0IHBoeQkJCQkqcGh5Owo+ICsJc3RydWN0IGNsa19idWxrX2RhdGEJCQkqY2xrczsKPiArCXVu
c2lnbmVkIGludAkJCQljbGtfY250Owo+ICsJc3RydWN0IHJlc2V0X2NvbnRyb2wJCQkqcnN0Owo+
ICsJc3RydWN0IGdwaW9fZGVzYwkJCSpyc3RfZ3BpbzsKPiArCXN0cnVjdCByZWd1bGF0b3IJCQkq
dnBjaWUzdjM7Cj4gKwlzdHJ1Y3QgaXJxX2RvbWFpbgkJCSppcnFfZG9tYWluOwo+ICsJY29uc3Qg
c3RydWN0IHJvY2tjaGlwX3BjaWVfb2ZfZGF0YQkqZGF0YTsKCkkgcHJlZmVyIHRvIGF2b2lkIGFs
aWduaW5nIHRoZSBzdHJ1Y3QgbWVtYmVycyBqdXN0IGZvciB0aGlzIHJlYXNvbi4gT25jZSB5b3Ug
YWRkCmEgbWVtYmVyIHdpdGggYSBiaWdnZXIgbmFtZSwgdGhlbiB5b3UgbmVlZCB0byBhbGlnbiBv
dGhlcnMgYWxzby4gUGxlYXNlIGp1c3QgdXNlCnNwYWNlLgoKPiArfTsKPiArCj4gK3N0cnVjdCBy
b2NrY2hpcF9wY2llX29mX2RhdGEgewo+ICsJZW51bSBkd19wY2llX2RldmljZV9tb2RlIG1vZGU7
Cj4gIH07Cj4gIAo+ICBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcmVhZGxfYXBiKHN0cnVjdCBy
b2NrY2hpcF9wY2llICpyb2NrY2hpcCwgdTMyIHJlZykKPiBAQCAtMTk1LDcgKzIwMCw2IEBAIHN0
YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9ob3N0X2luaXQoc3RydWN0IGR3X3BjaWVfcnAgKnBwKQo+
ICAJc3RydWN0IGR3X3BjaWUgKnBjaSA9IHRvX2R3X3BjaWVfZnJvbV9wcChwcCk7Cj4gIAlzdHJ1
Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAgPSB0b19yb2NrY2hpcF9wY2llKHBjaSk7Cj4gIAlz
dHJ1Y3QgZGV2aWNlICpkZXYgPSByb2NrY2hpcC0+cGNpLmRldjsKPiAtCXUzMiB2YWwgPSBISVdP
UkRfVVBEQVRFX0JJVChQQ0lFX0xUU1NNX0VOQUJMRV9FTkhBTkNFKTsKPiAgCWludCBpcnEsIHJl
dDsKPiAgCj4gIAlpcnEgPSBvZl9pcnFfZ2V0X2J5bmFtZShkZXYtPm9mX25vZGUsICJsZWdhY3ki
KTsKPiBAQCAtMjA5LDEyICsyMTMsNiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfaG9zdF9p
bml0KHN0cnVjdCBkd19wY2llX3JwICpwcCkKPiAgCWlycV9zZXRfY2hhaW5lZF9oYW5kbGVyX2Fu
ZF9kYXRhKGlycSwgcm9ja2NoaXBfcGNpZV9pbnR4X2hhbmRsZXIsCj4gIAkJCQkJIHJvY2tjaGlw
KTsKPiAgCj4gLQkvKiBMVFNTTSBlbmFibGUgY29udHJvbCBtb2RlICovCj4gLQlyb2NrY2hpcF9w
Y2llX3dyaXRlbF9hcGIocm9ja2NoaXAsIHZhbCwgUENJRV9DTElFTlRfSE9UX1JFU0VUX0NUUkwp
Owo+IC0KPiAtCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgUENJRV9DTElFTlRf
UkNfTU9ERSwKPiAtCQkJCSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NPTlRST0wpOwo+IC0KPiAgCXJl
dHVybiAwOwo+ICB9Cj4gIAo+IEBAIC0yOTQsMTMgKzI5MiwzNSBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGR3X3BjaWVfb3BzIGR3X3BjaWVfb3BzID0gewo+ICAJLnN0YXJ0X2xpbmsgPSByb2NrY2hp
cF9wY2llX3N0YXJ0X2xpbmssCj4gIH07Cj4gIAo+ICtzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVf
Y29uZmlndXJlX3JjKHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiArewo+ICsJc3Ry
dWN0IGR3X3BjaWVfcnAgKnBwOwo+ICsJdTMyIHZhbDsKPiArCj4gKwkvKiBMVFNTTSBlbmFibGUg
Y29udHJvbCBtb2RlICovCj4gKwl2YWwgPSBISVdPUkRfVVBEQVRFX0JJVChQQ0lFX0xUU1NNX0VO
QUJMRV9FTkhBTkNFKTsKPiArCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgdmFs
LCBQQ0lFX0NMSUVOVF9IT1RfUkVTRVRfQ1RSTCk7Cj4gKwo+ICsJcm9ja2NoaXBfcGNpZV93cml0
ZWxfYXBiKHJvY2tjaGlwLCBQQ0lFX0NMSUVOVF9SQ19NT0RFLAo+ICsJCQkJIFBDSUVfQ0xJRU5U
X0dFTkVSQUxfQ09OVFJPTCk7Cj4gKwo+ICsJcHAgPSAmcm9ja2NoaXAtPnBjaS5wcDsKPiArCXBw
LT5vcHMgPSAmcm9ja2NoaXBfcGNpZV9ob3N0X29wczsKPiArCj4gKwlyZXR1cm4gZHdfcGNpZV9o
b3N0X2luaXQocHApOwo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcHJvYmUo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgewo+ICAJc3RydWN0IGRldmljZSAqZGV2
ID0gJnBkZXYtPmRldjsKPiAgCXN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcDsKPiAtCXN0
cnVjdCBkd19wY2llX3JwICpwcDsKPiArCWNvbnN0IHN0cnVjdCByb2NrY2hpcF9wY2llX29mX2Rh
dGEgKmRhdGE7Cj4gIAlpbnQgcmV0Owo+ICAKPiArCWRhdGEgPSBvZl9kZXZpY2VfZ2V0X21hdGNo
X2RhdGEoZGV2KTsKPiArCWlmICghZGF0YSkKPiArCQlyZXR1cm4gLUVJTlZBTDsKCi1FTk9EQVRB
PwoKPiArCj4gIAlyb2NrY2hpcCA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqcm9ja2NoaXAp
LCBHRlBfS0VSTkVMKTsKPiAgCWlmICghcm9ja2NoaXApCj4gIAkJcmV0dXJuIC1FTk9NRU07Cj4g
QEAgLTMwOSw5ICszMjksNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcHJvYmUoc3RydWN0
IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCj4gIAlyb2NrY2hpcC0+cGNpLmRldiA9IGRldjsK
PiAgCXJvY2tjaGlwLT5wY2kub3BzID0gJmR3X3BjaWVfb3BzOwo+IC0KPiAtCXBwID0gJnJvY2tj
aGlwLT5wY2kucHA7Cj4gLQlwcC0+b3BzID0gJnJvY2tjaGlwX3BjaWVfaG9zdF9vcHM7Cj4gKwly
b2NrY2hpcC0+ZGF0YSA9IGRhdGE7Cj4gIAo+ICAJcmV0ID0gcm9ja2NoaXBfcGNpZV9yZXNvdXJj
ZV9nZXQocGRldiwgcm9ja2NoaXApOwo+ICAJaWYgKHJldCkKPiBAQCAtMzQ3LDEwICszNjUsMjEg
QEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2Ug
KnBkZXYpCj4gIAlpZiAocmV0KQo+ICAJCWdvdG8gZGVpbml0X3BoeTsKPiAgCj4gLQlyZXQgPSBk
d19wY2llX2hvc3RfaW5pdChwcCk7Cj4gLQlpZiAoIXJldCkKPiAtCQlyZXR1cm4gMDsKClRoYW5r
cyBhIGxvdCBmb3IgZ2V0dGluZyByaWQgb2YgdGhpcyB1Z2x5IHBpZWNlIG9mIGNvZGUhCgotIE1h
bmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u
4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
