Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C138DCA5FDD
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2026 13:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCLPV5IVHGR94/OBV/qN2Dow7jNIKSgefbg0uzzMlwk=; b=HHeopkK10DF3gS
	YHAhK4PqbTZscjHSq9C3Ph78eu8rLsyNr99nsiRpKnXD/fnY5U+WmoFZ2XxYmW+Zt1ntqPozL/Exq
	pgmkPsKJgN3CSLt205ny2/yXpaKXzN/WqQ+5MyxOB0JfLJKesU57R2NT8t9IGxC+ve400iDQ7XXvy
	UCyYMdMmK5Qk2BrsSMjXrhBGBDUTS6dFZzpsGhdm6OuLuYu371L+B7i7vfhZRCfskxKoCcobeJudl
	a7rkkHG6Nu3zJdCM1n0vNJEXPi2PaaXKN1MiF8swbsYVNa21hz2dnxwgaOR2F7DGpeCoQTtZEYnmW
	3DK0/C9NqLhVNAk8V4IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCd0p-0000000BdcE-31Fe;
	Fri, 02 Oct 2026 13:09:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCd0m-0000000BdbG-1cBY;
	Fri, 02 Oct 2026 13:09:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=KZjE+aJ4X+OqBxNEC4kYnyi3sOPxXey2hjWtTIRy3TE=; b=RpXcwATKgD3GA4eeikau6CnLBO
	LdPpjqfIww+7LsNxanj8VUZB2FMcGjB4rARfcJQkjXWsPTEiSIOrm/3YOZ3+Qh6RsK9xIIpcQSt/+
	H14XV958hnXmFOXE8863UqZRTEVM90dgQKX0D86ZcgZN1eL19Ik7Y6VxRMnw8qdf/2mUnz4vfo+zZ
	uQNlGT+vrbDkruJaH1x7hs/FBHmVGcz+V6GBFbEpDAQCcSBeKGmL2/GtpPExqLkslJanwA3FaZ2zl
	5RcHS9axOUEI9SdfAx/UEwaldv6TgsNpcR3/3JX2dOCX6trTZqpdkYqeIvQrADIKv4j3OOufIY6Hg
	SrGJwHlw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Russell King <linux@armlinux.org.uk>, Johan Jonker <jbx6244@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 =?UTF-8?B?SMO8c2V5aW4=?= BIYIK <boogiepop@gmx.com>
Subject: Re: [PATCH] ARM: rockchip: smp: enable CPU1 for rk3066a
Date: Fri, 02 Oct 2026 15:09:10 +0200
Message-ID: <7009090.MHq7AAxBmi@diego>
In-Reply-To: <545b78a0-159b-4ebd-9e2a-47d519c98bf9@gmail.com>
References: <20260829-cpu-v1-1-33dca576db92@gmail.com> <2667576.VLH7GnMWUR@diego>
 <545b78a0-159b-4ebd-9e2a-47d519c98bf9@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_060916_642945_8C148D9C 
X-CRM114-Status: GOOD (  17.69  )
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

SGkgSm9oYW4sCgpBbSBTb25udGFnLCAzMC4gQXVndXN0IDIwMjYsIDEzOjE3OjE1IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgSm9oYW4gSm9ua2VyOgo+IE9uIDgvMjkvMjYg
MjM6NTksIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+ID4gQW0gU2Ftc3RhZywgMjkuIEF1Z3VzdCAy
MDI2LCAwMTo0MDo1NyBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIEpvaGFu
IEpvbmtlciB2aWEgQjQgUmVsYXk6Cj4gPj4gRnJvbTogSMO8c2V5aW4gQklZSUsgPGJvb2dpZXBv
cEBnbXguY29tPgo+ID4+Cj4gPj4gUkszMDY2YSBDUFUxIGZhaWxzIHRvIGNvbWUgb25saW5lLiBG
aXggYnkgdXNpbmcKPiA+PiBhIHNpbWlsYXIgbWFpbGJveCBjb25zdHJ1Y3Rpb24gYXMgaW4gdXNl
IHdpdGgKPiA+PiBvdGhlciBSb2NrY2hpcCBTb0NzLgo+ID4gCj4gCj4gPiAiUkszMDY2IENQVTEg
ZmFpbHMgdG8gY29tZSBvbmxpbmUgd2l0aCByZWNlbnQga2VybmVscy4uLi5bcmVzdF0iIG9yIHNv
Cj4gCj4gTm90IHJlY2VudC4uCj4gCj4gPiBhbmQgYWxzbyBwbGVhc2UgdXNlIHRoZSBsaW5lIGxl
bmd0aCB1cCBhIHJlc29uYWJsZSBsZW5ndGggbGlrZSBhcm91bmQgNzA+IHRvIDc1IGNoYXJhY3Rl
cnMuCj4gPiAKPiA+IEFsc28sIGlzIGl0IGtub3duLCB3aHkgdGhhdCBoYXBwZW5zIC0gaS5lLiB3
aGF0IGNoYW5nZWQ/Cj4gCj4gCj4gV2hhdCBsb2FkZXIgY2hhaW4gZGlkIHlvdSB1c2UgdGhlbj8K
PiAKPiBUaGlzIGd1ZXNzaW5nISEhOgo+IEZyb20gVFJNOiBSSyBQWDIvcmszMDY2YSBzdXBwb3J0
cyB0byBib290IGZyb20gaW50ZXJuYWwgYm9vdHJvbSBvciBlbWJlZGRlZCBTUkFNCj4gQ3VycmVu
dGx5IHJrMzA2NiBVLWJvb3QgZG9lc24ndCByZW1hcCwgc28gd2UgZW5kIHVwIGluIFJPTSBjb2Rl
IHdhaXRpbmcgZm9yIGRlYWRiZWFmOgo+IAo+IHZvaWQgbWFpbih2b2lkKQo+IHsKPiAgICAgICAg
IGRlYWRiZWFmID0gMTsKPiAgICAgICAgIGlmICggIShfX21yYygxNSwgMCwgMCwgMCwgNSkgJiAw
eEYpICkKPiAgICAgICAgIHsKPiAgICAgICAgICAgICAgICAgX19zZXRfQ1BTUigweEQydSk7Cj4g
ICAgICAgICAgICAgICAgIF9fc2V0X0NQU1IoMHhEM3UpOwo+ICAgICAgICAgICAgICAgICBERUxB
WV93cml0ZSgyNCk7Cj4gICAgICAgICAgICAgICAgIENSVV9DTEtTRUwoKTsKPiAgICAgICAgICAg
ICAgICAgREVMQVkoMTAwMDApOwo+ICAgICAgICAgICAgICAgICBNQUlOX0xPT1AxeDQoKTsKPiAg
ICAgICAgICAgICAgICAgRE5MX0xPT1AoKTsKPiAgICAgICAgICAgICAgICAgd2hpbGUgKCAxICkK
PiAgICAgICAgICAgICAgICAgICAgICAgICA7Cj4gICAgICAgICB9Cj4gICAgICAgICBfX3NldF9D
UFNSKDB4RDN1KTsKPiAgICAgICAgIHdoaWxlICggZGVhZGJlYWYgIT0gMHhERUFEQkVBRiApCj4g
ICAgICAgICAgICAgICAgIF9fd2ZlKCk7Cj4gICAgICAgICBzZWNvbmRhcnlfc3RhcnR1cCgpOwo+
IH0KPiAKPiBDYW4ndCBwdXQgYSBwcmVjaXNlIHRpbWUgdGFnIG9uIGl0IHNpbmNlIHdoZW4uCj4g
TGV0IHVzIGxlYWQgYnkgd2hhdCBjdXJyZW50IGF2YWlsYWJsZSBvcGVuIHNvdXJjZSBsb2FkZXJz
IHNvbHV0aW9ucyBjYW4gZG8uCj4gUGxlYXNlIGFkdmlzZSBoZXJlLgo+IEhvdyBmYXIgZG9lcyBh
IGZpeGVzIHRhZyBoYXZlIHRvIGdvIGJhY2s/CgpTbyAuLi4gZm91bmQgdGltZSB0byB0ZXN0IGEg
Yml0OgotIEJvdGggbXkgTWFyc2JvYXJkIChSSzMwNjYpIGFuZCBSYWR4YSBSb2NrIChSSzMxODgp
IGN1cnJlbnRseSBoYXZlIGEKICB1LWJvb3QgdGhhdCBpcyByZWFsbHkgb2xkIC4uLiAyMDE3LjA5
IC8gMjAxNy4xMSB0byBiZSBleGFjdC4KLSBCb3RoIGJvYXJkcyBjYW4gYnJpbmcgdXAgdGhlIG90
aGVyIGNvcmVzIGp1c3QgZmluZQotIEl0IHNlZW1zIHRoZXJlIHRoZSByZW1hcCB3YXMgc3RpbGwg
ZW5hYmxlZDoKICBodHRwczovL2dpdC51LWJvb3QtcHJvamVjdC5vcmcvdS1ib290L3UtYm9vdC8t
L2Jsb2IvdjIwMTcuMTEvYXJjaC9hcm0vbWFjaC1yb2NrY2hpcC9yazMxODgtYm9hcmQuYz9yZWZf
dHlwZT10YWdzI0wzMQotIFlvdSBjYW5ub3QgcmVxdWlyZSBwZW9wbGUgdG8gdXBkYXRlIHRoZWly
IGJvb3Rsb2FkZXIsIG9ubHkgd29yayBhcm91bmQKICBvbGQgdmVyc2lvbnMuCgpSaWdodCBub3cg
eW91IGVuZCB1cCB3aXRoIGEgbWVzaHVwIG9mIGRpZmZlcmVudCBwYXJ0cy4KSW4gdGhlIG9sZCBj
b2RlcGF0aCwgc3JhbV9hZGRyKzQgY29udGFpbnMgdGhlIGtlcm5lbC1zdGFydC1hZGRyZXNzLCB3
aGljaApub3cgZ2V0cyBvdmVyd3JpdHRlbiwgYnJlYWtpbmcgb2xkZXIgbG9hZGVycy4KClNvIHRo
ZSB3YXkgZm9yd2FyZCB3b3VsZCBiZToKLSBhZGQgY29kZSB0aGF0IGRpc2FibGVzIHJlbWFwIG9u
IGJvdGggcmszMDY2K3JrMzE4OCwgaG9wZWZ1bGx5IHJlc3VsdGluZwogIGluIHRoZSBzYW1lIGJl
aGF2aW91ciBpbmRlcGVudCBvZiB0aGUgbG9hZGVyIHVzZWQKLSBjaGFuZ2UgdG8gdXNlIHRoZSBi
b290cm9tIHBhdGggZm9yIGFsbCBzb2NzIGluIHJvY2tjaGlwX2Jvb3Rfc2Vjb25kYXJ5KCkKICBz
byBqdXN0IHJlbW92ZSB0aGUgY29uZGl0aW9uYWwgYXJvdW5kIGl0Ci0gZHJvcCB0aGUgcm9ja2No
aXBfc21wX3ByZXBhcmVfc3JhbSgpIHBhcnQsIGFzIGl0J3Mgbm90IG5lZWRlZCBhbnltb3JlCgoK
SGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
