Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF389606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 15:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=sIx2/1OK;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=RQNfh+VH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mR/7/9xIbo0+tCmGKE7BTVF8u437UKkYkBOW8VCn6gg=; b=sIx2/1OKwmr0Gs/pBZbQghO5Fn
	ixWPRYDaHS1UpJKJpf9JGmd88vpips9p9FVfAh7nEWbGbk7hexLvatMOqDupsABtp5N5rEDI0PTle
	YzTGF9S8LHr+NKKxW4lX74od/EtpJuMk6oqEM2t82hNf581zajUs8dAwAW0fmiHHWUFuzUV6K9rSc
	V3EGz8Bc13Pwkc9lmh1fT1Fl/cffHVt0U0kVb3zgnRiryXtHoT/yS4Pa0D3crt4LjXZ0zzKlYRsUa
	rapW9kIOxzRCmPYS6qOP338OaRZx3NZNkLjdCepCeh8quiTp366vK+hpaloYI98SYo3Zpdvq2ISy5
	KzDc0IhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWBZ-000000043Yn-0nrO;
	Mon, 23 Nov 2026 15:42:29 +0000
Received: from mail-m12883.netease.com ([103.209.128.83])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVWBV-000000043TF-1ZXZ;
	Mon, 23 Nov 2026 15:42:28 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 55b0ebc65;
	Mon, 23 Nov 2026 23:42:11 +0800 (GMT+08:00)
Message-ID: <fd14d6c1-d9a4-41f9-b1c0-96c3006d40a1@rock-chips.com>
Date: Mon, 23 Nov 2026 23:42:08 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 James Le Cuirot <chewi@gentoo.org>, stable@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Clear stale link down interrupt before
 unmasking it
To: Niklas Cassel <cassel@kernel.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Wilfred Mallawa <wilfred.mallawa@wdc.com>
References: <20261123121217.1107902-2-cassel@kernel.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261123121217.1107902-2-cassel@kernel.org>
X-HM-Tid: 0aa2091269ec03a4kunm304402a287d7ac
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQxpDVhpJSh9OGEweSE5NH1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=RQNfh+VHuuBsHD9f3Wr2F5htjBdHrAM2nyTGba3J3eDhvG54DTy+OlB1qfSRz3OiQ+6hvlroa6vZ5XIjWDbRd2Ixpk22eDa06ICTxenhMVyX4rrMVge3H1kZdmaM3wcr/+2iv4PlWEaUH/ncRZ+qoaBMgGuhcPsAx701rm256kk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=UHmDH4xQTawnQx2c62U2+yzNLbTZSXgZeWsOYcq/ojk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_074226_823048_8BFCD53F 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMTEvMjMg5pif5pyf5LiAIDIwOjEyLCBOaWtsYXMgQ2Fzc2VsIOWGmemBkzoKPiBQ
Q0lFX0xJTktfUkVRX1JTVF9OT1RfSU5UIGlzIHNldCBieSBzbWxoX3JlcV9yc3Rfbm90LCB3aGlj
aCBhY2NvcmRpbmcgdG8KPiB0aGUgUkszNTY4IFRSTSAiaXMgYXNzZXJ0ZWQgYWZ0ZXIgcG93ZXIt
b24gcmVzZXQgdW50aWwgZmlyc3QgbGluayB1cCIuCj4gVGhlIGJpdCBpcyB0aHVzIGFscmVhZHkg
cGVuZGluZyB3aGVuIHRoZSBkcml2ZXIgdW5tYXNrcyB0aGUgaW50ZXJydXB0Cj4gYWZ0ZXIgcmVz
ZXR0aW5nIHRoZSBjb250cm9sbGVyLCBib3RoIGluIHByb2JlIGFuZCBpbiAucmVzZXRfcm9vdF9w
b3J0KCksCj4gc28gdGhlIGludGVycnVwdCBmaXJlcyBhcyBzb29uIGFzIGl0IGlzIHVubWFza2Vk
LCBldmVuIHRob3VnaCB0aGUgbGluawo+IGlzIHVwLiBTaW5jZSBlYWNoIHJlY292ZXJ5IHJlc2V0
cyB0aGUgY29udHJvbGxlciBhZ2FpbiwgdGhpcyByZXN1bHRzIGluCj4gYW4gZW5kbGVzcyBsb29w
LCBhcyBzZWVuIG9uIGEgUXVhcnR6NjQgTW9kZWwgQiAoUkszNTY2KToKPiAKPiAgICBwY2llcG9y
dCAwMDAwOjAwOjAwLjA6IFJlY292ZXJpbmcgUm9vdCBQb3J0IGR1ZSB0byBMaW5rIERvd24KPiAg
ICBwY2llcG9ydCAwMDAwOjAwOjAwLjA6IFJvb3QgUG9ydCBoYXMgYmVlbiByZXNldAo+ICAgIHBj
aWVwb3J0IDAwMDA6MDA6MDAuMDogQUVSOiBkZXZpY2UgcmVjb3Zlcnkgc3VjY2Vzc2Z1bAo+ICAg
IHBjaWVwb3J0IDAwMDA6MDA6MDAuMDogUmVjb3ZlcmluZyBSb290IFBvcnQgZHVlIHRvIExpbmsg
RG93bgo+IAo+IENsZWFyIHRoZSBiaXQgYmVmb3JlIHVubWFza2luZyB0aGUgaW50ZXJydXB0LCBh
bmQgaW4gLnJlc2V0X3Jvb3RfcG9ydCgpCj4gb25seSB1bm1hc2sgaXQgb25jZSB0aGUgbGluayBp
cyBiYWNrIHVwLCBsaWtlIGluIHByb2JlLiBBbHNvIGtlZXAgdGhlCj4gaW50ZXJydXB0IG1hc2tl
ZCB3aGlsZSAucmVzZXRfcm9vdF9wb3J0KCkgcmVzZXRzIHRoZSBjb250cm9sbGVyLCBzbyB0aGUK
PiBsaW5rIGRvd24gY2F1c2VkIGJ5IHRoZSByZXNldCBpdHNlbGYgaXMgbm90IHJlcG9ydGVkLgo+
IAoKVGhpcyBsb29rcyByaWdodCB0byBtZSAsCgpSZXZpZXdlZC1ieTogU2hhd24gTGluIDxzaGF3
bi5saW5Acm9jay1jaGlwcy5jb20+Cgo+IEZpeGVzOiBiMzc2YjNmZjljYjAgKCJQQ0k6IGR3LXJv
Y2tjaGlwOiBJbXBsZW1lbnQgLnJlc2V0X3Jvb3RfcG9ydCgpIGFuZCB1c2UgZm9yIGxpbmsgZG93
biIpCj4gUmVwb3J0ZWQtYnk6IEphbWVzIExlIEN1aXJvdCA8Y2hld2lAZ2VudG9vLm9yZz4KPiBD
bG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS8wOGNjOTZjNTE3MWZjOTY5
YjA3NDM3MTY5MmU2ZDk1ZDQ2ZWJhNjBiLmNhbWVsQGdlbnRvby5vcmcvCj4gQ2M6IHN0YWJsZUB2
Z2VyLmtlcm5lbC5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2Vy
bmVsLm9yZz4KPiAtLS0KPiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9j
a2NoaXAuYyB8IDI0ICsrKysrKysrKysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNyBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBpbmRleCBhYjJlMjY2OTk0MDkuLjJlZjdhZTk3
ZWIxMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJv
Y2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tj
aGlwLmMKPiBAQCAtNjg2LDYgKzY4NiwxOCBAQCBzdGF0aWMgaXJxcmV0dXJuX3Qgcm9ja2NoaXBf
cGNpZV9lcF9zeXNfaXJxX3RocmVhZChpbnQgaXJxLCB2b2lkICphcmcpCj4gICAJcmV0dXJuIElS
UV9IQU5ETEVEOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfcmNfdW5t
YXNrX2xpbmtfZG93bihzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4gK3sKPiArCXUz
MiB2YWw7Cj4gKwo+ICsJcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tjaGlwLCBQQ0lFX0xJ
TktfUkVRX1JTVF9OT1RfSU5ULAo+ICsJCQkJIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01JU0Mp
Owo+ICsKPiArCS8qIHVubWFzayBob3QgcmVzZXQvbGluay1kb3duIHJlc2V0ICovCj4gKwl2YWwg
PSBGSUVMRF9QUkVQX1dNMTYoUENJRV9MSU5LX1JFUV9SU1RfTk9UX0lOVCwgMCk7Cj4gKwlyb2Nr
Y2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAsIHZhbCwgUENJRV9DTElFTlRfSU5UUl9NQVNL
X01JU0MpOwo+ICt9Cj4gKwo+ICAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2NvbmZpZ3VyZV9y
YyhzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ICAgCQkJCSAgICAgIHN0cnVjdCByb2Nr
Y2hpcF9wY2llICpyb2NrY2hpcCkKPiAgIHsKPiBAQCAtNzM5LDkgKzc1MSw3IEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfcGNpZV9jb25maWd1cmVfcmMoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
diwKPiAgIAkJcmV0dXJuIHJldDsKPiAgIAl9Cj4gICAKPiAtCS8qIHVubWFzayBob3QgcmVzZXQv
bGluay1kb3duIHJlc2V0ICovCj4gLQl2YWwgPSBGSUVMRF9QUkVQX1dNMTYoUENJRV9MSU5LX1JF
UV9SU1RfTk9UX0lOVCwgMCk7Cj4gLQlyb2NrY2hpcF9wY2llX3dyaXRlbF9hcGIocm9ja2NoaXAs
IHZhbCwgUENJRV9DTElFTlRfSU5UUl9NQVNLX01JU0MpOwo+ICsJcm9ja2NoaXBfcGNpZV9yY191
bm1hc2tfbGlua19kb3duKHJvY2tjaGlwKTsKPiAgIAo+ICAgCXJldHVybiByZXQ7Cj4gICB9Cj4g
QEAgLTg5OCw2ICs5MDgsOSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcmNfcmVzZXRfcm9v
dF9wb3J0KHN0cnVjdCBwY2lfaG9zdF9icmlkZ2UgKmJyaWRnZSwKPiAgIAl1MzIgdmFsOwo+ICAg
CWludCByZXQ7Cj4gICAKPiArCXZhbCA9IEZJRUxEX1BSRVBfV00xNihQQ0lFX0xJTktfUkVRX1JT
VF9OT1RfSU5ULCAxKTsKPiArCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgdmFs
LCBQQ0lFX0NMSUVOVF9JTlRSX01BU0tfTUlTQyk7Cj4gKwo+ICAgCWR3X3BjaWVfc3RvcF9saW5r
KHBjaSk7Cj4gICAJY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocm9ja2NoaXAtPmNsa19jbnQs
IHJvY2tjaGlwLT5jbGtzKTsKPiAgIAlyb2NrY2hpcF9wY2llX3BoeV9kZWluaXQocm9ja2NoaXAp
Owo+IEBAIC05MzgsMTYgKzk1MSwxMyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcmNfcmVz
ZXRfcm9vdF9wb3J0KHN0cnVjdCBwY2lfaG9zdF9icmlkZ2UgKmJyaWRnZSwKPiAgIAkJZ290byBk
ZWluaXRfY2xrOwo+ICAgCX0KPiAgIAo+IC0JLyogdW5tYXNrIGhvdCByZXNldC9saW5rLWRvd24g
cmVzZXQgKi8KPiAtCXZhbCA9IEZJRUxEX1BSRVBfV00xNihQQ0lFX0xJTktfUkVRX1JTVF9OT1Rf
SU5ULCAwKTsKPiAtCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgdmFsLCBQQ0lF
X0NMSUVOVF9JTlRSX01BU0tfTUlTQyk7Cj4gLQo+ICAgCXJldCA9IGR3X3BjaWVfc3RhcnRfbGlu
ayhwY2kpOwo+ICAgCWlmIChyZXQpCj4gICAJCWdvdG8gZGVpbml0X2NsazsKPiAgIAo+ICAgCS8q
IElnbm9yZSBlcnJvcnMsIHRoZSBsaW5rIG1heSBjb21lIHVwIGxhdGVyICovCj4gICAJZHdfcGNp
ZV93YWl0X2Zvcl9saW5rKHBjaSk7Cj4gKwlyb2NrY2hpcF9wY2llX3JjX3VubWFza19saW5rX2Rv
d24ocm9ja2NoaXApOwo+ICAgCWRldl9kYmcoZGV2LCAiUm9vdCBQb3J0IHJlc2V0IGNvbXBsZXRl
ZFxuIik7Cj4gICAJcmV0dXJuIHJldDsKPiAgIAo+IAo+IGJhc2UtY29tbWl0OiBiNmE5ZmEzNGNl
NDE4N2NiNjlkM2M1ODhhNGJiZmZjMzFjZTVkYjhmCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
