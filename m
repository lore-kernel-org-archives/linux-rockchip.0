Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DD62C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 13:48:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C5E9561164
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 13:48:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C5E9561164
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=71VpH2xicW8wKySguJhxmtczUChdImWKfyER9hZ5PX0=; b=qhuVtgN4ibkcjULPACA9dPNin
	in7DzxuG+/OQtHvvR0i0IhP8pATtj+tKSLCo1jfYvEDEtZMHFNI5AgRylHkrdtMH8gV01Y8Gx0JX8
	HL4BfnIW+aDOSAD77Yr8To1TQm6hHK2v5t1bLyOqVlY+JCRuwqqtwM8aF6LfOWUUXczwM1KsF/Wt4
	ZbCk83MXdHM7bicEzyV0nTrI0WflLPVz+FT2iq6XtymUHdcdVltLDQOmxWU0c2h8Fs+I2GhtSf8Op
	Ykd6i9zc801UZBubzmaGKS61dEIn00u9t9DCP0LO6P5GmEY8/6ipm8dNrGMWRIw+rWODl8xaWWlVw
	5+793sd8g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWfsm-00CoJc-VS; Wed, 14 Apr 2021 13:48:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWfsf-00CoH7-Et
 for linux-rockchip@desiato.infradead.org; Wed, 14 Apr 2021 13:48:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=/3C8a4sZfXEDlV69PBUba3SMXJQR8+7utOBDvyfj4SY=; b=WnFXf+NSguJ6B9MUOVOI2GsAiI
 Jvxnud9dQF3cKyAtEOE/61LI/eIDd/XlAxHHectwgRJc1r3INIfdat40L7aMQxbim3ED6IMLlTHPW
 3n9lDtxZ/PvhfeQ4Z3nbJAj8d1KcWEhqWkMB2oudGE6Op0UGlXq5XGQl4hnRV1YXWKjkoxP9kutPr
 2J3GkB5v0gNwTMdeBhjkapmSIHchtviztrXfFKlL+bkjK0Q+SAYJqvnpv6axXVjpaiLKReIZZXC2B
 zPcpZNg/GhuS3o1PeOIokmsiZ+0udarbkr07FWfWRNEJqDJsEszjdSN7NG3/gYfjiHwW1pl2p/0Wq
 zGl4X/KQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWfsc-007oNd-Ew
 for linux-rockchip@lists.infradead.org; Wed, 14 Apr 2021 13:48:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 4F3851F423DC
Message-ID: <16102d157576bfa7be341ed7508e70d930e40bab.camel@collabora.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Add RK3566/RK3568 SoC support
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Peter Geis
 <pgwipeout@gmail.com>
Cc: Linux Kernel Network Developers <netdev@vger.kernel.org>, "open
 list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Jose Abreu
 <joabreu@synopsys.com>, "David S . Miller" <davem@davemloft.net>, Jakub
 Kicinski <kuba@kernel.org>, David Wu <david.wu@rock-chips.com>,
 kernel@collabora.com
Date: Wed, 14 Apr 2021 10:48:19 -0300
In-Reply-To: <2596687.TLnPLrj5Ze@diego>
References: <CAMdYzYpv0dvz4X2JE4J6Qg-5D9mnkqe5RpiRC845wQpZhDKDPA@mail.gmail.com>
 <1412-60762b80-423-d9eaa5@27901112>
 <CAMdYzYpyD1bTN+3Zaf4nGnN-O-c0u0koiCK45fLucL0T2+69+w@mail.gmail.com>
 <2596687.TLnPLrj5Ze@diego>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_064830_649136_5D8C514C 
X-CRM114-Status: GOOD (  19.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgUGV0ZXIsIEhlaWtvLAoKT24gV2VkLCAyMDIxLTA0LTE0IGF0IDEzOjE1ICswMjAwLCBIZWlr
byBTdMO8Ym5lciB3cm90ZToKPiBBbSBNaXR0d29jaCwgMTQuIEFwcmlsIDIwMjEsIDEzOjAzOjI1
IENFU1Qgc2NocmllYiBQZXRlciBHZWlzOgo+ID4gT24gVHVlLCBBcHIgMTMsIDIwMjEgYXQgNzoz
NyBQTSBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4g
PiA+ID4gK3N0YXRpYyB2b2lkIHJrMzU2Nl9zZXRfdG9fcm1paShzdHJ1Y3QgcmtfcHJpdl9kYXRh
ICpic3BfcHJpdikKPiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgIHN0cnVjdCBk
ZXZpY2UgKmRldiA9ICZic3BfcHJpdi0+cGRldi0+ZGV2Owo+ID4gPiA+ID4gKwo+ID4gPiA+ID4g
K8KgwqDCoMKgwqDCoCBpZiAoSVNfRVJSKGJzcF9wcml2LT5ncmYpKSB7Cj4gPiA+ID4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGRldiwgIiVzOiBNaXNzaW5nIHJvY2tj
aGlwLGdyZiBwcm9wZXJ0eVxuIiwgX19mdW5jX18pOwo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcmV0dXJuOwo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoCB9Cj4gPiA+ID4g
PiArCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgIHJlZ21hcF93cml0ZShic3BfcHJpdi0+Z3JmLCBS
SzM1NjhfR1JGX0dNQUMxX0NPTjEsCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgUkszNTY4X0dNQUNfUEhZX0lOVEZfU0VMX1JNSUkpOwo+ID4gPiA+ID4g
K30KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICtzdGF0aWMgdm9pZCByazM1Njhfc2V0X3RvX3JnbWlp
KHN0cnVjdCBya19wcml2X2RhdGEgKmJzcF9wcml2LAo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnQgdHhfZGVs
YXksIGludCByeF9kZWxheSkKPiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgIHN0
cnVjdCBkZXZpY2UgKmRldiA9ICZic3BfcHJpdi0+cGRldi0+ZGV2Owo+ID4gPiA+ID4gKwo+ID4g
PiA+ID4gK8KgwqDCoMKgwqDCoCBpZiAoSVNfRVJSKGJzcF9wcml2LT5ncmYpKSB7Cj4gPiA+ID4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKGRldiwgIk1pc3Npbmcgcm9j
a2NoaXAsZ3JmIHByb3BlcnR5XG4iKTsKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHJldHVybjsKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqAgfQo+ID4gPiA+ID4gKwo+ID4g
PiA+ID4gK8KgwqDCoMKgwqDCoCByZWdtYXBfd3JpdGUoYnNwX3ByaXYtPmdyZiwgUkszNTY4X0dS
Rl9HTUFDMF9DT04xLAo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIFJLMzU2OF9HTUFDX1BIWV9JTlRGX1NFTF9SR01JSSB8Cj4gPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUkszNTY4X0dNQUNfUlhDTEtfRExZX0VO
QUJMRSB8Cj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
UkszNTY4X0dNQUNfVFhDTEtfRExZX0VOQUJMRSk7Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArwqDC
oMKgwqDCoMKgIHJlZ21hcF93cml0ZShic3BfcHJpdi0+Z3JmLCBSSzM1NjhfR1JGX0dNQUMwX0NP
TjAsCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUksz
NTY4X0dNQUNfQ0xLX1JYX0RMX0NGRyhyeF9kZWxheSkgfAo+ID4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFJLMzU2OF9HTUFDX0NMS19UWF9ETF9DRkcodHhf
ZGVsYXkpKTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqAgcmVnbWFwX3dyaXRl
KGJzcF9wcml2LT5ncmYsIFJLMzU2OF9HUkZfR01BQzFfQ09OMSwKPiA+ID4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBSSzM1NjhfR01BQ19QSFlfSU5URl9TRUxf
UkdNSUkgfAo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IFJLMzU2OF9HTUFDX1JYQ0xLX0RMWV9FTkFCTEUgfAo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIFJLMzU2OF9HTUFDX1RYQ0xLX0RMWV9FTkFCTEUpOwo+
ID4gPiA+ID4gKwo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoCByZWdtYXBfd3JpdGUoYnNwX3ByaXYt
PmdyZiwgUkszNTY4X0dSRl9HTUFDMV9DT04wLAo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIFJLMzU2OF9HTUFDX0NMS19SWF9ETF9DRkcocnhfZGVsYXkp
IHwKPiA+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBSSzM1
NjhfR01BQ19DTEtfVFhfRExfQ0ZHKHR4X2RlbGF5KSk7Cj4gPiA+ID4gCj4gPiA+ID4gU2luY2Ug
dGhlcmUgYXJlIHR3byBHTUFDcyBvbiB0aGUgcmszNTY4LCBhbmQgZWl0aGVyLCBvciwgb3IgYm90
aCBtYXkKPiA+ID4gPiBiZSBlbmFibGVkIGluIHZhcmlvdXMgY29uZmlndXJhdGlvbnMsIHdlIHNo
b3VsZCBvbmx5IGNvbmZpZ3VyZSB0aGUKPiA+ID4gPiBjb250cm9sbGVyIHdlIGFyZSBjdXJyZW50
bHkgb3BlcmF0aW5nLgo+ID4gCj4gPiBQZXJoYXBzIHdlIHNob3VsZCBoYXZlIG1hdGNoIGRhdGEg
KHN1Y2ggYXMgcmVnID0gPDA+LCBvciBhZ2FpbnN0IHRoZQo+ID4gYWRkcmVzcykgdG8gaWRlbnRp
ZnkgdGhlIGluZGl2aWR1YWwgY29udHJvbGxlcnMuCj4gCj4gSG1tLCAicmVnIiB3aWxsIGJlIHVz
ZWQgYnkgdGhlIGFjdHVhbCBtbWlvIGFkZHJlc3Mgb2YgdGhlIGNvbnRyb2xsZXIsCj4gc28gbWF0
Y2hpbmcgYWdhaW5zdCB0aGF0IHNob3VsZCBiZSB0aGUgd2F5IEkgZ3Vlc3MuCj4gCj4gV2UncmUg
YWxyZWFkeSBkb2luZyBzb21ldGhpbmcgc2ltaWxhciBmb3IgZHNpOgo+IGh0dHBzOi8vZ2l0Lmtl
cm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC90cmVl
L2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jI24xMTcwCj4g
CgpJIGhhdmUgdG8gYWRtaXQsIEknbSBub3QgYSBmYW4gb2YgaGFyZGNvZGluZyB0aGUgcmVnaXN0
ZXJzIGluIHRoZSBrZXJuZWwuCgpEYXZpZCBXdSBzb2x2ZWQgdGhpcyBpbiB0aGUgZG93bnN0cmVh
bSBrZXJuZWwgYnkgdXNpbmcgYnVzX2lkLAp3aGljaCBwYXJzZXMgdGhlIGRldmljZXRyZWUgImV0
aGVybmV0QDAiIG5vZGUsIGkuZS46CgogIHBsYXQtPmJ1c19pZCA9IG9mX2FsaWFzX2dldF9pZChu
cCwgImV0aGVybmV0Iik7CgpJJ20gaW5jbGluZWQgZm9yIHRoaXMgc29sdXRpb24uIE1heWJlIEpv
c2UgY2FuIHN1Z2dlc3QgaG93IHRvIGFwcHJvYWNoIGl0PwoKVGhhbmtzIQpFemVxdWllbAoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
