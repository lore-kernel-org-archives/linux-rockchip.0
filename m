Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77AA3CCFA13
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Nov 2025 00:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3HxkZ7DFryk4YsLUQNVGclrnEBiXdfRlIC/CIgns/k=; b=FYCw3sNZ25jdaZ
	jCmBKKZ/7bdeH7+traxyY8k3BULMV5G8FVPtsXNJeIbp28yly9QqDTn/QR0xx16JKFxjiX483qWJR
	NjVlh4ZbMYU2odN9jri+wVNnyATXGCEHFu57LE4LEP7gK/AUZnUlpDZopaMoc4iFMx9GuxCoXK5/R
	R6JPvdPApDyjnjyDcB5ZZimcman10jStZZVXzJTMJ8DniyDn5g48YeX0F7o7TVtFj5UfVSvAWDByZ
	Fri2vZSDtz7bnFk7PytIeSLqvcAJw/QRc1+prAeJN4W0KO3/90dFFkDAKJOqDGIG9OdCcHc8Qx9rW
	XDw7c1iOrbJtC4oeZHzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHARB-0000000GSOq-1eQq;
	Fri, 07 Nov 2025 00:34:45 +0000
Received: from mail-m19731101.qiye.163.com ([220.197.31.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHAR8-0000000GSOI-0WJL
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Nov 2025 00:34:44 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 28b29a2a8;
	Fri, 7 Nov 2025 08:34:33 +0800 (GMT+08:00)
Message-ID: <9b83595d-ba79-404d-a7ff-ed07f524966f@rock-chips.com>
Date: Fri, 7 Nov 2025 08:34:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Manivannan Sadhasivam <mani@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH] PCI: Add ASPM quirk for Hi1105 PCIe Wi-Fi
To: Bjorn Helgaas <helgaas@kernel.org>
References: <20251106195057.GA1965757@bhelgaas>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251106195057.GA1965757@bhelgaas>
X-HM-Tid: 0a9a5bbc864409cckunmd4e8aafdf2fcd2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRgYHlYaH0hISkxCQkpPSkJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=NggE5AVl8XhBnnmJyNK7Cwogs6U59gtofVbLUBzBUjMDJiBKFUTlDZjZNRTVGuZjbdb4Pvif5Eoz11ZMLU4Xw970pk90qce152zEM0A+YFe+hY+6DMxBFQPRlFjV4FkpRbsMqQwnd7sBTUbPFfcUIzaJqcVz59RNkfM76f9hsQc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Q79vdCYmG7hbeV1qHtnnEhd5iOqPqUirn2KQg3JO6u8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_163442_671419_853BDA71 
X-CRM114-Status: GOOD (  21.74  )
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

5ZyoIDIwMjUvMTEvMDcg5pif5pyf5LqUIDM6NTAsIEJqb3JuIEhlbGdhYXMg5YaZ6YGTOgo+IE9u
IFRodSwgTm92IDA2LCAyMDI1IGF0IDExOjUxOjU5QU0gKzA4MDAsIFNoYXduIExpbiB3cm90ZToK
Pj4gVGhpcyBXaS1GaSBhZHZlcnRpc2VzIHRoZSBMMHMgYW5kIEwxIGNhcGFiaWxpdGllcyBidXQg
YWN0dWFsbHkKPj4gaXQgZG9lc24ndCBzdXBwb3J0IHRoZW0uIFRoaXMncyBjb21maXJtZWQgYnkg
SGlzaWxpY29uIHRlYW0gaW4KPj4gYWN0dWFsIHByb2R1Y3RpemF0aW9uLgo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+Cj4+
ICAgZHJpdmVycy9wY2kvcXVpcmtzLmMgfCA2ICsrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL3F1aXJrcy5jIGIv
ZHJpdmVycy9wY2kvcXVpcmtzLmMKPj4gaW5kZXggMjE0ZWQwNi4uNjcyNTBkNCAxMDA2NDQKPj4g
LS0tIGEvZHJpdmVycy9wY2kvcXVpcmtzLmMKPj4gKysrIGIvZHJpdmVycy9wY2kvcXVpcmtzLmMK
Pj4gQEAgLTI1MjYsNiArMjUyNiwxMiBAQCBzdGF0aWMgdm9pZCBxdWlya19kaXNhYmxlX2FzcG1f
bDBzX2wxKHN0cnVjdCBwY2lfZGV2ICpkZXYpCj4+ICAgREVDTEFSRV9QQ0lfRklYVVBfRklOQUwo
UENJX1ZFTkRPUl9JRF9BU01FRElBLCAweDEwODAsIHF1aXJrX2Rpc2FibGVfYXNwbV9sMHNfbDEp
Owo+PiAgIAo+PiAgIC8qCj4+ICsgKiBUaGUgSGkxMTA1IFBDSWUgV2ktRmkgZG9lc24ndCBzdXBw
b3J0IEwwcyBhbmQgTDEgYnV0IGFkdmVydGlzZSB0aGUgY2FwYWJpbGl0eS4KPj4gKyAqIERpc2Fi
bGUgYm90aCBMMHMgYW5kIEwxIGZvciBub3cuCj4+ICsgKi8KPj4gK0RFQ0xBUkVfUENJX0ZJWFVQ
X0ZJTkFMKFBDSV9WRU5ET1JfSURfSFVBV0VJLCAweDExMDUsIHF1aXJrX2Rpc2FibGVfYXNwbV9s
MHNfbDEpOwo+IAo+IFBDSV9WRU5ET1JfSURfSFVBV0VJIGlzIDB4MTllNS4gIElzIHRoZXJlIGFu
IHVwc3RyZWFtIGRyaXZlciB0aGF0Cj4gbWF0Y2hlcyBbMTllNToxMTA1XT8gIEkgZGlkbid0IGZp
bmQgYW55dGhpbmcuCgpZZXMsIGxpa2UgcGxlbnR5IG9mIG90aGVyIHdpcmVsZXNzIGRyaXZlcnMs
IEhpMTEwNSBkcml2ZXIgaXMgYWxzbyBvdXQgb2YKdHJlZS4KCj4gCj4gSSB0aGluayBxdWlya19k
aXNhYmxlX2FzcG1fbDBzX2wxKCkgbWlnaHQgYmUgYSBwcm9ibGVtIGJlY2F1c2UgdGhlIG5ldwo+
IHN0cmF0ZWd5IGlzIHRvIGVuYWJsZSBBU1BNIGVhcmx5IChpbiBwY2llX2FzcG1faW5pdF9saW5r
X3N0YXRlKCksCj4gY2FsbGVkIGZyb20gcGNpX3NjYW5fc2xvdCgpLCB3aGljaCBoYXBwZW5zIGJl
Zm9yZSBGSU5BTCBmaXh1cHMgYXJlIHJ1bgo+IGR1cmluZyBwY2lfYnVzX2FkZF9kZXZpY2UoKS4K
PiAKCk9oLCBJIG1pc3NlZCB0aGlzLgoKPiBTbyBJIHRoaW5rIHdlIHdpbGwgZW5hYmxlIEwwcyBh
bmQgTDEgYnJpZWZseSBiZWZvcmUKPiBxdWlya19kaXNhYmxlX2FzcG1fbDBzX2wxKCkgcnVucywg
YW5kIGl0J3MgcG9zc2libGUgd2UnZCBzZWUgYSBwcm9ibGVtCj4gdGhlbi4KPiAKPiBCdXQgaWYg
eW91IGFwcGx5IHRoaXMgc2VyaWVzOgo+ICAgIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAy
NTExMDYxODM2NDMuMTk2MzgwMS0xLWhlbGdhYXNAa2VybmVsLm9yZwo+IAo+IGFuZCB0aGVuIHRo
ZSBwYXRjaCBiZWxvdyBvbiB0b3AsIEkgdGhpbmsgd2Ugc2hvdWxkIGF2b2lkIGVuYWJsaW5nIEww
cwo+IGFuZCBMMSBhdCBhbGw6Cj4gCgpUaGUgcGF0Y2ggYmVsb3cgbG9va3MgZ29vZCB0byBtZS4g
SSB3aWxsIGZpeCBpdC4KVGhhbmtzLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvcXVpcmtz
LmMgYi9kcml2ZXJzL3BjaS9xdWlya3MuYwo+IGluZGV4IDQ0ZTc4MDcxODk1My4uMjRjMjc4ODU3
MTU5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL3F1aXJrcy5jCj4gKysrIGIvZHJpdmVycy9w
Y2kvcXVpcmtzLmMKPiBAQCAtMjUzNiw2ICsyNTM2LDcgQEAgc3RhdGljIHZvaWQgcXVpcmtfZGlz
YWJsZV9hc3BtX2wwc19sMV9jYXAoc3RydWN0IHBjaV9kZXYgKmRldikKPiAgIAlwY2lfaW5mbyhk
ZXYsICJBU1BNOiBMMHMgTDEgcmVtb3ZlZCBmcm9tIExpbmsgQ2FwYWJpbGl0aWVzIHRvIHdvcmsg
YXJvdW5kIGRldmljZSBkZWZlY3RcbiIpOwo+ICAgfQo+ICAgREVDTEFSRV9QQ0lfRklYVVBfSEVB
REVSKFBDSV9WRU5ET1JfSURfRlJFRVNDQUxFLCAweDA0NTEsIHF1aXJrX2Rpc2FibGVfYXNwbV9s
MHNfbDFfY2FwKTsKPiArREVDTEFSRV9QQ0lfRklYVVBfSEVBREVSKFBDSV9WRU5ET1JfSURfSFVB
V0VJLCAweDExMDUsIHF1aXJrX2Rpc2FibGVfYXNwbV9sMHNfbDFfY2FwKTsKPiAgIAo+ICAgLyoK
PiAgICAqIFNvbWUgUGVyaWNvbSBQQ0llLXRvLVBDSSBicmlkZ2VzIGluIHJldmVyc2UgbW9kZSBu
ZWVkIHRoZSBQQ0llIFJldHJhaW4KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
