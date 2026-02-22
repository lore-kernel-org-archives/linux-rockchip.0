Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89B2FC63680
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Feb 2026 13:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9EyITAGvnttwRGmXrNge9jn0V/4Gm2uS84qUJQpqvs=; b=VoIK/8WkIHoYQt
	crZcUoinY87ow6cJ30PVKetsRAolJi3B3IS0yclnjeF1wd+uoOJBsKa6ASpJnx7aeASKfiC9M1iTr
	l35zRLY3H7jDN+YoxsjnqpxH3j75VbAZ2hk0mPrH2Sqky2/o3bTO7984decFsjXNVdz84dcIeUBRS
	ePVXf1E8CQyUEY3ez9kc9wbyQBtQQdUYjAHRuyIwDlu8jtlaNMIqArgtHYeEDSoUS87nFsnzoY56S
	DlZfaxLYh8zDpkCz6E3FE/11nLAgECiF7RsMdpEt/yCuaK9ReUAUwbBO3yQ7PTOHsXAH+TcdRJ5+Z
	cWBWc88YtLfgF6kTII1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vu9FL-0000000GiGl-1xuI;
	Sun, 22 Feb 2026 13:11:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vu9FI-0000000GiGO-1OwZ;
	Sun, 22 Feb 2026 13:11:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JVQ1HvYuj4l7iwcq8/NX4tU7HmBNPxeJhIc4SDEkhro=; b=Znax5x+YKVoO0sIMBG6dytXhS3
	QgHMOC+Olb6d0WkCcaJJzuK58fnB1nKgSM7YXlXgx1qiTKRBPQLNUWDoyovSBCF4kaw1gtHNgllOA
	vLwmirLnhaZ9sPE4CtQQq5DmZfsct3E3ZB3+IQjwABr5caXLXFar9fKANSRWM4vfc1u6mFHbQ73Jf
	m2u6wAk7/EXZcY10LZmoW3TWTzEWdogTl3KJXE5WMQf91F9iALMA444y0wDdwYPl/3oEjbgx79Ny1
	MqOfhmuvOyUNhTaZiWv1pIJlPwOs+9ByMomBRwMpY4+5OuLyLwG3qMKSKlxZirNuA/3Rk6knXk7wV
	nALUasvw==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add domain-supply for pd_rkvdec0/1 and
 pd_venc0/1
Date: Sun, 22 Feb 2026 14:11:26 +0100
Message-ID: <1849787.VLH7GnMWUR@phil>
In-Reply-To: <ea9df274-278d-f344-f66d-8821388e6690@rock-chips.com>
References: <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <1770950113-19802-2-git-send-email-shawn.lin@rock-chips.com>
 <ea9df274-278d-f344-f66d-8821388e6690@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260222_051136_568661_BDD05CDF 
X-CRM114-Status: GOOD (  23.20  )
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

SGkgU2hhd24sCgpBbSBGcmVpdGFnLCAxMy4gRmVicnVhciAyMDI2LCAwMzo0MjowNyBNaXR0ZWxl
dXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPiDlnKggMjAyNi8wMi8x
MyDmmJ/mnJ/kupQgMTA6MzUsIFNoYXduIExpbiDlhpnpgZM6Cj4gPiBUaGUgcG93ZXIgZG9tYWlu
cyBwZF9ya3ZkZWMwLzEgYW5kIHBkX3ZlbmMwLzEgZGVwZW5kIG9uIHR3byB2b2x0YWdlIHN1cHBs
aWVzLAo+ID4gdmRkX3ZkZW5jX3MwIGFuZCB2ZGRfdmRlbmNfbWVtX3MwLiBUaGVzZSBzdXBwbGll
cyBtaWdodCBiZSBtaXNzaW5nIG9yIGNhdXNlIHByb2JlCj4gPiBkZWZlcnJhbC4gU2luY2UgdGhl
IFJvY2tjaGlwIHBvd2VyIGRvbWFpbiBtYW5hZ2VtZW50IGNvZGUgY3VycmVudGx5IHN1cHBvcnRz
IG1hbmFnaW5nCj4gPiBvbmx5IG9uZSBwb3dlciBzdXBwbHksIGFuZCBib3RoIHN1cHBsaWVzIGJl
bG9uZyB0byB0aGUgc2FtZSBQTUlDIChtYWtpbmcgaXQgaGlnaGx5Cj4gPiB1bmxpa2VseSBmb3Ig
b25lIHRvIGJlIGF2YWlsYWJsZSB3aGlsZSB0aGUgb3RoZXIgaXMgbm90KSwgYSBwcmFjdGljYWwg
c29sdXRpb24gaXMKPiA+IGltcGxlbWVudGVkLgo+ID4gCj4gPiBCb3RoIHN1cHBsaWVzIGFyZSBj
b25maWd1cmVkIHdpdGggdGhlIGJvb3Qtb24gYW5kIGFsd2F5cy1vbiBwcm9wZXJ0aWVzLiBPbmx5
IG9uZQo+ID4gb2YgdGhlbSBpcyBhc3NpZ25lZCBhcyB0aGUgZG9tYWluLXN1cHBseSBmb3IgcGRf
cmt2ZGVjMC8xIGFuZCBwZF92ZW5jMC8xLiBUaGlzIGFsbG93cwo+ID4gdGhlIHBvd2VyIGRvbWFp
biBjb2RlIHRvIHBlcmZvcm0gYSBub21pbmFsIGVuYWJsZSBvcGVyYXRpb24gb24gdGhpcyBzaW5n
bGUgc3VwcGx5LAo+ID4gdGhlcmVieSBzdWNjZXNzZnVsbHkgYWNxdWlyaW5nIGEgcmVmZXJlbmNl
IHRvIGJvdGggc3VwcGxpZXMgKGFzIHRoZXkgYXJlIGZyb20gdGhlIHNhbWUKPiA+IFBNSUMpLiBU
aGUgc3lzdGVtIHRoZW4gcmVsaWVzIG9uIHRoZWlyIGJvb3Qtb24gYW5kIGFsd2F5cy1vbiBmbGFn
cyB0byBtYWludGFpbiB0aGUKPiA+IGNvcnJlY3Qgc3RhdGUuCj4gPiAKPiA+IENydWNpYWxseSwg
dGhpcyBhcHByb2FjaCBoYW5kbGVzIGNhc2VzIGxpa2UgcHJvYmUgZGVmZXJyYWwgY29ycmVjdGx5
Ogo+ID4gaWYgdGhlIFBNSUMgaXMgbm90IHlldCByZWFkeSwgZW5hYmxpbmcgdGhlIHBvd2VyIGRv
bWFpbiB3aWxsIGJlIGRlZmVycmVkIHVudGlsIHRoZQo+ID4gbmVjZXNzYXJ5IHN1cHBsaWVzIGJl
Y29tZSBhdmFpbGFibGUuCgpqdXN0IGFzIGEgcXVlc3Rpb24sIGRvZXMgdGhlIGJvYXJkIGhhdmUg
cHJvYmxlbXMgd2l0aG91dCB0aGVzZSBzdXBwbGllcz8KQWthLCBpcyB0aGlzIGEgZml4IGZvciBh
IHByb2JsZW0sIG9yICJqdXN0IiBmdXR1cmUgcHJvb2ZpbmcgdGhlIGJvYXJkPwoKVGhhbmtzCkhl
aWtvCgoKPiA+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMu
Y29tPgo+ID4gLS0tCj4gPiAKPiA+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtZXZiMS12MTAuZHRzICB8IDE2ICsrKysrKysrKysrKysrKysKPiA+ICAgYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODhzLWV2YjEtdjEwLmR0cyB8IDE3ICsrKysrKysrKysrKysr
KysrCj4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMS12MTAuZHRz
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMS12MTAuZHRzCj4gPiBp
bmRleCBjOWQyODRjLi4wOWJjN2I2IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtZXZiMS12MTAuZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1ldmIxLXYxMC5kdHMKPiA+IEBAIC01NjgsNiArNTY4LDIyIEBA
Cj4gPiAgIAlkb21haW4tc3VwcGx5ID0gPCZ2ZGRfZ3B1X3MwPjsKPiA+ICAgfTsKPiA+ICAgCj4g
PiArJnBkX3JrdmRlYzAgewo+ID4gKwlkb21haW4tc3VwcGx5ID0gPCZ2ZGRfdmRlbmNfczA+Owo+
ID4gK307Cj4gPiArCj4gPiArJnBkX3JrdmRlYzEgewo+ID4gKwlkb21haW4tc3VwcGx5ID0gPCZ2
ZGRfdmRlbmNfczA+Owo+ID4gK307Cj4gPiArCj4gPiArJnBkX3ZlbmMwIHsKPiA+ICsJZG9tYWlu
LXN1cHBseSA9IDwmdmRkX3ZkZW5jX3MwPjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZwZF92ZW5jMSB7
Cj4gPiArCWRvbWFpbi1zdXBwbHkgPSA8JnZkZF92ZGVuY19zMD47Cj4gPiArfTsKPiA+ICsKPiA+
ICAgJnBpbmN0cmwgewo+ID4gICAJYXVkaW8gewo+ID4gICAJCWhwX2RldGVjdDogaGVhZHBob25l
LWRldGVjdCB7Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODhzLWV2YjEtdjEwLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
cy1ldmIxLXYxMC5kdHMKPiA+IGluZGV4IGY4MjA1MDUuLjI1ZDgwYjYgMTAwNjQ0Cj4gPiAtLS0g
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtZXZiMS12MTAuZHRzCj4gPiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtZXZiMS12MTAuZHRzCj4g
PiBAQCAtMzgxLDYgKzM4MSwyMiBAQAo+ID4gICAJZG9tYWluLXN1cHBseSA9IDwmdmRkX2dwdV9z
MD47Cj4gPiAgIH07Cj4gPiAgIAo+ID4gKyZwZF9ya3ZkZWMwIHsKPiA+ICsJZG9tYWluLXN1cHBs
eSA9IDwmdmRkX3ZkZW5jX3MwPjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZwZF9ya3ZkZWMxIHsKPiA+
ICsJZG9tYWluLXN1cHBseSA9IDwmdmRkX3ZkZW5jX3MwPjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZw
ZF92ZW5jMCB7Cj4gPiArCWRvbWFpbi1zdXBwbHkgPSA8JnZkZF92ZGVuY19zMD47Cj4gPiArfTsK
PiA+ICsKPiA+ICsmcGRfdmVuYzEgewo+ID4gKwlkb21haW4tc3VwcGx5ID0gPCZ2ZGRfdmRlbmNf
czA+Owo+ID4gK307Cj4gPiArCj4gPiAgICZwaW5jdHJsIHsKPiA+ICAgCWF1ZGlvIHsKPiA+ICAg
CQlocF9kZXRlY3Q6IGhlYWRwaG9uZS1kZXRlY3Qgewo+ID4gQEAgLTU4MCw2ICs1OTYsNyBAQAo+
ID4gICAJCQl2ZGRfZ3B1X21lbV9zMDogZGNkYy1yZWc1IHsKPiA+ICAgCQkJCXJlZ3VsYXRvci1u
YW1lID0gInZkZF9ncHVfbWVtX3MwIjsKPiA+ICAgCQkJCXJlZ3VsYXRvci1ib290LW9uOwo+ID4g
KwkJCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+IAo+IE9vcHMsIEkgc2VudCB0aGUgd3JvbmcgdmVy
c2lvbi4gU2hvdWxkIHJlbW92ZSB0aGUgdGhpcyBsaW5lIGNoYW5nZS4KPiBXaWxsIGZpeCBpdCBp
ZiB2MiBuZWVkZWQuCj4gCj4gPiAgIAkJCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw2NzUw
MDA+Owo+ID4gICAJCQkJcmVndWxhdG9yLW1heC1taWNyb3ZvbHQgPSA8OTUwMDAwPjsKPiA+ICAg
CQkJCXJlZ3VsYXRvci1yYW1wLWRlbGF5ID0gPDEyNTAwPjsKPiA+IAo+IAoKCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
