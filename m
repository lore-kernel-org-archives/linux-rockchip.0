Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6A95CCFA15
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 09:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s1JAa1N9gan0lGALj2K8r429zYlU3pqSI6+Pv1fMgpM=; b=XhVSMemNoCBDqw8fSu6Y8yq0GS
	qmlR1ouGWMepkGp7wl8/SY/xqhbYCwzXNhFhw6L6XhyMB91DRszJCRSyeUtD/kv+b/UnLYvNzctFo
	/tZAPbtYWOAZUxv7PKDbeijnrbWnEOSlcJUl9KeqWDqZXywcewp2BjQP7RE0BQrwCZL/fiftdY/di
	e6EyixBIAaj5Aw/1JP9GHdji1tXbrX3l54du/r9Kz3No2mHhz/78C8fQMxgs4yvNLDeq/Pad1rPKg
	5c7mCr4Gpn8Hju/eEll93OroND5Hz8JkAQcD4L2FXaIrIj0vB4m8C5hkc+zkoS1vwwHIu1ZxTO2sP
	515si4Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkog-00000007ssW-3x6d;
	Thu, 26 Sep 2024 09:29:42 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stkgY-00000007r69-1mOF;
	Thu, 26 Sep 2024 09:21:20 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727342476;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nMmluLyTjEgaln/FZKQzxk5gQXsgrah771N+44zT8oE=;
	b=DfFMyMS98/iUnrXmXyxSQCBaLiuQrD0UF9xpMuxV1sB7rqZoB8ajxxbWekH4GnT/Jby0kv
	V2Dy/V/YrBgBsoP9LNJiB7cPMa7Omeg4SGGnFXx3XCZ/QN7xGGZvTa9PrFDlIFiQtqXYAj
	4id9YLyfV/Pp844cELnRCQ+XfRZMw3UtIwBYcqvMZH/bIhkfrKiuNgvMBZZnWN8Xx6VAyM
	3H9XuaDINzJU5QP+9BCAmxFd70HwA4aOvdr96BdVEnObtf3i/UGD6ggSeDPG/EOWfhrkWg
	YyGvmvn2TX+Cqxen5BO81q3l4riJljtibD+9AbsSzH49Vb69JihIrX9IwSXp5w==
Date: Thu, 26 Sep 2024 11:21:16 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, oss@helene.moe, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] spi: rockchip: Use dev_err_probe() in the probe path
In-Reply-To: <6673004.tM3a2QDmDi@phil>
References: <cover.1727337732.git.dsimic@manjaro.org>
 <8bc905ff3c47ed458d8c65a031822ba6b9df8a07.1727337732.git.dsimic@manjaro.org>
 <6673004.tM3a2QDmDi@phil>
Message-ID: <b24f6ee033c4f466f58264696d1a4206@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_022118_779199_9ED954A7 
X-CRM114-Status: GOOD (  19.55  )
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

SGVsbG8gSGVpa28sCgpPbiAyMDI0LTA5LTI2IDExOjAwLCBIZWlrbyBTdHVlYm5lciB3cm90ZToK
PiBBbSBEb25uZXJzdGFnLCAyNi4gU2VwdGVtYmVyIDIwMjQsIDEwOjM4OjE1IENFU1Qgc2Nocmll
YiBEcmFnYW4gU2ltaWM6Cj4+IFVzZSBmdW5jdGlvbiBkZXZfZXJyX3Byb2JlKCkgaW4gdGhlIHBy
b2JlIHBhdGggaW5zdGVhZCBvZiBkZXZfZXJyKCkgCj4+IHdoZXJlCj4+IGFwcHJvcHJpYXRlLCB0
byBtYWtlIHRoZSBjb2RlIGEgYml0IG1vcmUgdW5pZm9ybSBhbmQgY29tcGFjdCwgYW5kIHRvIAo+
PiBpbXByb3ZlCj4+IGVycm9yIGhhbmRsaW5nIGZvciB0aGUgVFggYW5kIFJYIERNQSBjaGFubmVs
IHJlcXVlc3RzLgo+PiAKPj4gUHJldmlvdXNseSwgZGVmZXJyZWQgcmVxdWVzdHMgZm9yIHRoZSBU
WCBhbmQgUlggRE1BIGNoYW5uZWxzIHByb2R1Y2VkIAo+PiBubwo+PiBkZWJ1ZyBtZXNzYWdlcywg
YW5kIHRoZSBmaW5hbCBlcnJvciBtZXNzYWdlcyBkaWRuJ3QgaW5jbHVkZSB0aGUgZXJyb3IgCj4+
IGNvZGVzLAo+PiB3aGljaCBhcmUgYWxsIGhpZ2hseSB1c2VmdWwgd2hlbiBkZWJ1Z2dpbmcgcGVy
bWFuZW50bHkgZmFpbGVkIERNQSAKPj4gY2hhbm5lbAo+PiByZXF1ZXN0cywgc3VjaCBhcyB3aGVu
IHRoZSByZXF1aXJlZCBkcml2ZXJzIGFyZW4ndCBlbmFibGVkLgo+PiAKPj4gU3VnZ2VzdGVkLWJ5
OiBIw6lsZW5lIFZ1bHF1aW4gPG9zc0BoZWxlbmUubW9lPgo+PiBTaWduZWQtb2ZmLWJ5OiBEcmFn
YW4gU2ltaWMgPGRzaW1pY0BtYW5qYXJvLm9yZz4KPj4gLS0tCj4+ICBkcml2ZXJzL3NwaS9zcGkt
cm9ja2NoaXAuYyB8IDI1ICsrKysrKysrKysrKy0tLS0tLS0tLS0tLS0KPj4gIDEgZmlsZSBjaGFu
Z2VkLCAxMiBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPj4gCj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYyBiL2RyaXZlcnMvc3BpL3NwaS1yb2NrY2hpcC5j
Cj4+IGluZGV4IDI4ODc5ZmVkMDNmOC4uNmI1YzY3YTM1N2JiIDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL3NwaS9zcGktcm9ja2NoaXAuYwo+PiArKysgYi9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAu
Ywo+PiBAQCAtODUzLDIyICs4NTMsMjEgQEAgc3RhdGljIGludCByb2NrY2hpcF9zcGlfcHJvYmUo
c3RydWN0IAo+PiBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+IAo+PiAgCWN0bHItPmRtYV90eCA9
IGRtYV9yZXF1ZXN0X2NoYW4ocnMtPmRldiwgInR4Iik7Cj4+ICAJaWYgKElTX0VSUihjdGxyLT5k
bWFfdHgpKSB7Cj4+IC0JCS8qIENoZWNrIHR4IHRvIHNlZSBpZiB3ZSBuZWVkIGRlZmVyIHByb2Jp
bmcgZHJpdmVyICovCj4+IC0JCWlmIChQVFJfRVJSKGN0bHItPmRtYV90eCkgPT0gLUVQUk9CRV9E
RUZFUikgewo+PiAtCQkJcmV0ID0gLUVQUk9CRV9ERUZFUjsKPj4gKwkJLyogQ2hlY2sgdHggdG8g
c2VlIGlmIHdlIG5lZWQgdG8gZGVmZXIgZHJpdmVyIHByb2JpbmcgKi8KPj4gKwkJcmV0ID0gZGV2
X2Vycl9wcm9iZShycy0+ZGV2LCBQVFJfRVJSKGN0bHItPmRtYV90eCksCj4+ICsJCQkJICAgICJG
YWlsZWQgdG8gcmVxdWVzdCBUWCBETUEgY2hhbm5lbFxuIik7Cj4gCj4geW91J3JlIHVwZ3JhZGlu
ZyBoZXJlIGZyb20gYSB3YXJuaW5nIHRvIGFuIGVycm9yIGxvZyBsZXZlbC4KPiBBcyBpdCBzZWVt
cyB0aGUgY29udHJvbGxlciBtYXkgYWN0dWFsbHkgcHJvdmlkZSBzb21lIGxldmVsIG9mIAo+IGZ1
bmN0aW9uYWxpdHkKPiBldmVuIHdpdGhvdXQgZG1hLCBpcyB0aGlzIGFwcHJvcmlhdGU/Cj4gCj4g
U2FtZSBmb3IgcnggYmVsb3cuCgpUaGFua3MgZm9yIHlvdXIgcXVpY2sgcmVzcG9uc2VzLgoKWW91
J3JlIHJpZ2h0IGFib3V0IHRoZSBkcml2ZXIgc3RpbGwgd29ya2luZyB3aXRob3V0IHRoZSBETUEg
Y2hhbm5lbHMsCnNvIGVtaXR0aW5nIHdhcm5pbmdzIHdvdWxkIGJlIG11Y2ggbW9yZSBhcHByb3By
aWF0ZS4KCldlJ2QgYmFzaWNhbGx5IG5lZWQgZGV2X3dhcm5fcHJvYmUoKSBhcyBhIG5ldyBmdW5j
dGlvbiB0byBjb3ZlciB0aGVzZQp0d28gY2FzZXMsIGJ1dCBJJ20gbm90IHJlYWxseSBzdXJlIGhv
dyB0byBwcm9jZWVkPyAgSSBjb3VsZCBnbyBhaGVhZAphbmQgaW1wbGVtZW50IGRldl93YXJuX3By
b2JlKCkgaW4gYSBnb29kIHdheSwgYnV0IEkgd29uZGVyIHdoYXQgd291bGQKYmUgdGhlIGNoYW5j
ZXMgdG8gaGF2ZSB0aGF0IGFjY2VwdGVkIHVwc3RyZWFtPyAgUGVyaGFwcyB0aGVyZSB3b3VsZApi
ZSBvdGhlciB1c2VycyBmb3IgZGV2X3dhcm5fcHJvYmUoKS4KCj4+ICsJCWlmIChyZXQgPT0gLUVQ
Uk9CRV9ERUZFUikKPj4gIAkJCWdvdG8gZXJyX2Rpc2FibGVfcG1fcnVudGltZTsKPj4gLQkJfQo+
PiAtCQlkZXZfd2Fybihycy0+ZGV2LCAiRmFpbGVkIHRvIHJlcXVlc3QgVFggRE1BIGNoYW5uZWxc
biIpOwo+PiAgCQljdGxyLT5kbWFfdHggPSBOVUxMOwo+PiAgCX0KPj4gCj4+ICAJY3Rsci0+ZG1h
X3J4ID0gZG1hX3JlcXVlc3RfY2hhbihycy0+ZGV2LCAicngiKTsKPj4gIAlpZiAoSVNfRVJSKGN0
bHItPmRtYV9yeCkpIHsKPj4gLQkJaWYgKFBUUl9FUlIoY3Rsci0+ZG1hX3J4KSA9PSAtRVBST0JF
X0RFRkVSKSB7Cj4+IC0JCQlyZXQgPSAtRVBST0JFX0RFRkVSOwo+PiArCQkvKiBDaGVjayByeCB0
byBzZWUgaWYgd2UgbmVlZCB0byBkZWZlciBkcml2ZXIgcHJvYmluZyAqLwo+PiArCQlyZXQgPSBk
ZXZfZXJyX3Byb2JlKHJzLT5kZXYsIFBUUl9FUlIoY3Rsci0+ZG1hX3J4KSwKPj4gKwkJCQkgICAg
IkZhaWxlZCB0byByZXF1ZXN0IFJYIERNQSBjaGFubmVsXG4iKTsKPj4gKwkJaWYgKHJldCA9PSAt
RVBST0JFX0RFRkVSKQo+PiAgCQkJZ290byBlcnJfZnJlZV9kbWFfdHg7Cj4+IC0JCX0KPj4gLQkJ
ZGV2X3dhcm4ocnMtPmRldiwgIkZhaWxlZCB0byByZXF1ZXN0IFJYIERNQSBjaGFubmVsXG4iKTsK
Pj4gIAkJY3Rsci0+ZG1hX3J4ID0gTlVMTDsKPj4gIAl9CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
