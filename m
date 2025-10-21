Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9F75CCD1AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 12:17:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Z9VkGLb3qX5HtbWW6zYBqpkML2nJqngFCdW+XfTW04=; b=k3ftcmLOsfikWn
	SBoFDB9wjsRf1YBMZOjV4NFgkfxQUbmWG2X7zfBK3ABwnZypOkvvwPClrpinWnnK+hn7WMXB8P7lw
	+fRI247mi9aR9MNpUJNNatI0JT3eO4ie2rd75d5mm+dWXt0uwtkl1sENVikko7Sr6zXE8hLnYifXd
	U0QVpk+wqN+MqZrIRYle/HuoFwj4BQ8U06Ttg6laCVVFtpavSLW4GfOEJtm4G+SUNCU937iFVyhvO
	EyMfk/W/DAz36jKmb2p0uBeFiJmN9fzcn4n+CiDSwmKfwJDEQPXIwo6un7buv/eB6WTQYgnb4ofQJ
	ZtJwXheNM5Nt/mmQMSow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBBIl-0000000Gvxm-1jWD;
	Tue, 21 Oct 2025 12:17:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBBIi-0000000GvxL-2b21
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 12:17:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0826343CF0;
	Tue, 21 Oct 2025 12:17:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DE0AC4CEF1;
	Tue, 21 Oct 2025 12:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761049035;
	bh=QKaQOeBETv/Tjyo/r5VnFZ/yPMBPWTataIf00CeNfP0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XRRjNj6nh085s0KNlvcNaUQTvoyS87lKEdkFEO7lA5temHOsw3ujr4eryFmFNcvBV
	 wb851n3S5KDk7tJ8GGvCiO9wDMdnpwKCqxlrR5NdS6XJ8ZsAMg0UsDaHRGcTT9tC8V
	 wV0TGd7h9yQLFpWgU96CJn1syHItSoSzWw7cUL6DAtGpDoSuu+0r5v7k9iIj1JvqA8
	 04hNQro607yUax+8JMHUcOSXue2+mIaq3qTFuZp3RItKr1+JZwY/F4AkVE8iRdG63+
	 UEF3qdi1ExZn5K2hE8rYkLnFufHPabjVOdrjEyeOIM5bNgQdnLtEX040GDI+69Zy3x
	 xdtGcV02msI7A==
Date: Tue, 21 Oct 2025 17:47:02 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
Subject: Re: ROCK 5B/5B+ RTL8852BE probe failure on v6.18-rc
Message-ID: <basm3bnws2shwvpo5xv3opyooh2atvzkfsp54ll6lfca5ugifs@p6nbl6hc6qof>
References: <7755D0222F97F8A4+6c855efa-561f-4fd9-aadd-a4de3d244c7e@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7755D0222F97F8A4+6c855efa-561f-4fd9-aadd-a4de3d244c7e@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_051716_676706_27F90B43 
X-CRM114-Status: GOOD (  19.01  )
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

T24gVHVlLCBPY3QgMjEsIDIwMjUgYXQgMDc6MTI6MjFQTSArMDkwMCwgRlVLQVVNSSBOYW9raSB3
cm90ZToKPiBIaSwKPiAKPiBJJ3ZlIG9ic2VydmVkIGFuIGlzc3VlIHdoZXJlIHRoZSBSVEw4ODUy
QkUgZmFpbHMgdG8gcHJvYmUgb24gdGhlIFJPQ0sgNUIgYW5kCj4gUk9DSyA1QisgdXNpbmcgTGlu
dXggdjYuMTgtcmMuCj4gCj4gWyAgICA3LjcxOTI4OF0gcnR3ODlfODg1MmJlIDAwMDI6MjE6MDAu
MDogbG9hZGVkIGZpcm13YXJlCj4gcnR3ODkvcnR3ODg1MmJfZnctMS5iaW4KPiBbICAgIDcuNzIw
MTkyXSBydHc4OV84ODUyYmUgMDAwMjoyMTowMC4wOiBlbmFibGluZyBkZXZpY2UgKDAwMDAgLT4g
MDAwMykKPiBbICAgIDcuNzI4NTk2XSBydHc4OV84ODUyYmUgMDAwMjoyMTowMC4wOiBGaXJtd2Fy
ZSB2ZXJzaW9uIDAuMjkuMjkuNQo+IChkYTg3Y2NjZCksIGNtZCB2ZXJzaW9uIDAsIHR5cGUgNQo+
IFsgICAgNy43Mjk0MDddIHJ0dzg5Xzg4NTJiZSAwMDAyOjIxOjAwLjA6IEZpcm13YXJlIHZlcnNp
b24gMC4yOS4yOS41Cj4gKGRhODdjY2NkKSwgY21kIHZlcnNpb24gMCwgdHlwZSAzCj4gWyAgIDEx
LjQyMDYyM10gcnR3ODlfODg1MmJlIDAwMDI6MjE6MDAuMDogZmFpbGVkIHRvIGR1bXAgZWZ1c2Ug
cGh5c2ljYWwgbWFwCj4gWyAgIDExLjQyMjg1OV0gcnR3ODlfODg1MmJlIDAwMDI6MjE6MDAuMDog
ZmFpbGVkIHRvIHNldHVwIGNoaXAgaW5mb3JtYXRpb24KPiBbICAgMTEuNDI1MjczXSBydHc4OV84
ODUyYmUgMDAwMjoyMTowMC4wOiBwcm9iZSB3aXRoIGRyaXZlciBydHc4OV84ODUyYmUKPiBmYWls
ZWQgd2l0aCBlcnJvciAtMTYKPiAKPiBUaGlzIGlzc3VlIGRvZXMgbm90IHJlcHJvZHVjZSBvbiB2
Ni4xNi4gVGhlIGlzc3VlIGRvZXMgbm90IHJlcHJvZHVjZSB3aXRoCj4gdGhlIE1UNzkyMUUgb3Ig
dGhlIEFYMjEwLiBGdXJ0aGVybW9yZSwgdGhlIGlzc3VlIGRvZXMgbm90IHJlcHJvZHVjZSBvbiB0
aGUKPiBST0NLIDVBIG9yIHRoZSBST0NLIDUgSVRYKy4KPiAKPiBUaGUgaXNzdWUgYXBwZWFycyBu
b3QgdG8gcmVwcm9kdWNlIGluIG9yIHByaW9yIHRvIGNvbW1pdCAxNGJlZDliYzgxYmEuIFRoZQo+
IGlzc3VlIHJlcHJvZHVjZXMsIGFsYmVpdCB3aXRoIGEgbG93IGluY2lkZW5jZSByYXRlLCBhZnRl
ciBjb21taXQKPiBiZjc2ZjIzYWExYzEuIEl0IHJlcHJvZHVjZXMsIGJ1dCBub3QgMTAwJSwgb24g
djYuMTcsIGFuZCBpcyBsaWtlbHkgMTAwJQo+IHJlcHJvZHVjaWJsZSBvbiB2Ni4xOC1yYy4KPiAK
CllvdSBzaG91bGQgdHJ5IHRvIGJpc2VjdCB0aGUgY29tbWl0IGluIHY2LjE4LXJjMSB0aGF0IGlz
IGNhdXNpbmcgdGhlIGZhaWx1cmUKcmVsaWFibHkuIFRoaXMgd2lsbCBncmVhdGx5IGhlbHAgaW4g
Zml4aW5nIHRoZSBpc3N1ZS4KCj4gVGhlIGRtZXNnIG91dHB1dCBhbmQgdGhlIHJlc3VsdCBvZiBs
c3BjaSAtdnYgd2hlbiB0aGUgaXNzdWUgb2NjdXJzIGNhbiBiZQo+IGZvdW5kIGJlbG93Ogo+ICBo
dHRwczovL2dpc3QuZ2l0aHViLmNvbS9SYWR4YU5hb2tpL2JmNTdiNmQzZDg4YzFlNDMxMGEyMzI0
N2U3YmFjOWRlCj4gCj4gV2hhdCBzaG91bGQgSSBpbnZlc3RpZ2F0ZSBuZXh0Pwo+IAoKTm90aGlu
ZyBsb29rcyBsaWtlIGEgUENJZSBicmVha2FnZSBBRkFJQ1QuIE1heWJlIHlvdSBzaG91bGQgY2hl
Y2sgd2l0aCBydHc4OQptYWludGFpbmVyczoKClBpbmctS2UgU2hpaCA8cGtzaGloQHJlYWx0ZWsu
Y29tPiAobWFpbnRhaW5lcjpSRUFMVEVLIFdJUkVMRVNTIERSSVZFUiAocnR3ODkpKQpsaW51eC13
aXJlbGVzc0B2Z2VyLmtlcm5lbC5vcmcgKG9wZW4gbGlzdDpSRUFMVEVLIFdJUkVMRVNTIERSSVZF
UiAocnR3ODkpKQoKTm90ZTogU2luY2UgdGhlIGZhaWx1cmUgaGFwcGVucyBhZnRlciBmaXJtd2Fy
ZSBsb2FkaW5nLCBpdCBjb3VsZCBiZSB0aGUKZmlybXdhcmUgaW5jb21wYXRpYmlsaXR5IGlzc3Vl
IGFsc28uIEJ1dCB0aGF0IGNvdWxkIG9ubHkgYmUgY29uZmlybWVkIGJ5IHJ0dzg5Cm1haW50YWlu
ZXJzL2NvbW11bml0eS4gCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g
4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
