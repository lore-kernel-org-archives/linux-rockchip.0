Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1D52C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 01:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Wa46LccZvTBQPSY3eNOmV6h1KdSEsJZ8+jGsvbWluc0=; b=QYEuB4kJxa+7OD
	r11N82TRJ76BULx0GPiWXHg4KSyXagexC6bzScNdlnUyCigyNcMpySfCjW8jXsThPFLO8k+MYlJni
	WwQypPL4C20HFvGCapWtJQF07Fo8+LC/n9KEVP7xe5z0nd4zm0DtXMwcFiGSGgwdiXpTML1/Uwku4
	xG8FCDIdZ0cQl/3RleBRNT/SMX/S/t7UTiobKFkKdQOIFnzQ+mEIOgJ4UW1fIGMqPE8sxpJNALZkc
	n+rgJpviWf/tbl2U3JADQhQaEFDt1jyCMfFLFuF2oHtwthl8DOWe7w+PJbedqKS6KEvXiH2vW6Ihd
	jbuxz3xlP9bmRZ7zWJcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeo1l-00Gv2Y-G7; Sun, 02 Oct 2022 01:44:21 +0000
Received: from mail-m11878.qiye.163.com ([115.236.118.78])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeo1f-00Gv19-Sj
	for linux-rockchip@lists.infradead.org; Sun, 02 Oct 2022 01:44:19 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11878.qiye.163.com (Hmail) with ESMTPA id B5778740240;
	Sun,  2 Oct 2022 09:44:02 +0800 (CST)
Date: Sun, 2 Oct 2022 09:44:02 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Cc: =?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	linus.walleij <linus.walleij@linaro.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	=?UTF-8?B?5p2o5Yev?= <kever.yang@rock-chips.com>
Subject: Re: Re: [PATCH] pinctrl/rockchip: re-fix RK3308 pinmux bits
References: <20220930102620.1568864-1-jay.xu@rock-chips.com>, 
	<20220930182358.65da06dd@booty>, 
	<2022100108422538502750@rock-chips.com>, 
	<20221001151059.7ddd4f7d@melee>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022100209440271488653@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGUoZVkpIQkwdHhgfQx9KGVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MAw6MRw*SD0jLksKNzIcN0kz
	KjEKCx1VSlVKTU1PTUxOS09ISUtCVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUhDSkk3Bg++
X-HM-Tid: 0a83965d56362eb4kusnb5778740240
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221001_184416_112122_E2FF7403 
X-CRM114-Status: UNSURE (   6.70  )
X-CRM114-Notice: Please train this message.
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

SGkgTHVjYe+8mgoKLS0tLS0tLS0tLS0tLS0KamF5Lnh1QHJvY2stY2hpcHMuY29tCj5IZWxsbyBK
aWFucXVuLAo+Cj5JbCBnaW9ybm8gU2F0LCAxIE9jdCAyMDIyIDA4OjQyOjI1ICswODAwCj4iamF5
Lnh1QHJvY2stY2hpcHMuY29tIiA8amF5Lnh1QHJvY2stY2hpcHMuY29tPiBoYSBzY3JpdHRvOgo+
Cj4+IEhpIEx1Y2E6Cj4+Cj4+IEJSCj4+IC0tLS0tLS0tLS0tLS0tCj4+IGpheS54dUByb2NrLWNo
aXBzLmNvbQo+PiA+SGVsbG8gSmlhbnF1biBYdSwKPj4gPgo+PiA+T24gRnJpLCAzMCBTZXAgMjAy
MiAxODoyNjoyMCArMDgwMAo+PiA+SmlhbnF1biBYdSA8amF5Lnh1QHJvY2stY2hpcHMuY29tPiB3
cm90ZToKPj4gPsKgCj4+ID4+IFBhcnQgb2YgcGlucyBmcm9tIFJLMzMwOCBTb0NzIGhhdmUgdHdv
IHJlZ2lzdGVycyB0byBkbyBwaW5tdXgsIG9uZSBpcwo+PiA+PiB0aGUgb3JpZ2luIHJlZ2lzdGVy
IHdpdGggMmJpdHMgbmFtZWQgYnkgZ3Bpb3h4X3NlbCwgYW5kIGFub3RoZXIgd2l0aAo+PiA+PiAz
Yml0cyBhbmQgbmFtZWQgYnkgZ3Bpb3h4X3NlbF9wbHVzLsKgCj4+ID4KPj4gPkFyZSB0aGUgInBs
dXMiIHJlZ2lzdGVycyBkb2N1bWVudGVkIGFueXdoZXJlP8KgwqAKPj4KPj4gQXQgUkszMzA4IFRS
TSBDSDUgR1JGLMKgCj4+Cj4+IEdSRl9TT0NfQ09OMTPCoAo+Pgo+PiAzIMKgUlcgwqAweDAgZ3Bp
bzJhMl9zZWxfc3JjX2N0cmwKPj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqDCoMKgIElPTVVYIGNv
bnRyb2wgc291cmNlIHNlbGVjdGlvbi4KPj4gwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAxJ2Iw
OiB1c2UgYmFzaWMgR1BJTzJBX0lPTVVYW2dwaW8yYTJfc2VsXQo+PiDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoDEnYjE6IHVzZSBncGlvMmEyX3NlbF9wbHVzIGluc3RlYWQgb2YgR1BJTzJBX0lP
TVVYW2dwaW8yYTJfc2VsXQo+Pgo+PiAyOjAgwqBSVyDCoDB4MCBncGlvMmEyX3NlbF9wbHVzCj4+
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgMydiMDAwOiBHUElPMl9BMgo+PiDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDMnYjAwMTogVUFSVDBfQ1RTTgo+PiDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDMnYjAxMDogU1BJMF9DTEsKPj4gwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAzJ2IwMTE6IEkyQzJfU0RBCj4+IMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgMydiMTAwOiBSZXNlcnZlZAo+PiDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoDMnYjEwMTogT1dJUkVfTTIKPj4KPj4gU29ycnkgSSBkb24ndCBrbm93IGFib3V0
IHRoZSB0cm0geW91IGdvdCBmcm9tIG91ciBjb21wYW55LCBpZiB5b3UgY2Fubm90IGZpbmQgdGhp
cyBwYXJ0LAo+PiBtYXkgcmVxdWlyZSBhIG5ldyB2ZXJzaW9uID8KPgo+Rmlyc3Qgb2YgYWxsOiBp
cyBhIGNvbXBsZXRlIFRSTSBhdmFpbGFibGUgZm9yIHB1YmxpYyBkb3dubG9hZD8gCgpodHRwczov
L29wZW5zb3VyY2Uucm9jay1jaGlwcy5jb20vd2lraV9NYWluX1BhZ2UKQGtldmVyIHNob3VsZCBh
ZGQgYSB0cm0gZm9yIHJrMzMwOCA/Cgo+Cj5JIHNlYXJjaGVkIGFnYWluLCBidXQgZGlkbid0IGZp
bmQgYW55Lgo+Cj4tLQo+THVjYSBDZXJlc29saSwgQm9vdGxpbgo+RW1iZWRkZWQgTGludXggYW5k
IEtlcm5lbCBlbmdpbmVlcmluZwo+aHR0cHM6Ly9ib290bGluLmNvbQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
