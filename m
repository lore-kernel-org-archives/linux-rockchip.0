Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E31CCC83F1D
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 09:50:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNIhL/JkH61oWmu4PeinpDfBQIVQ5yYq4/oSbxJMJ3o=; b=gk5WueDLr+iyjT
	eYkon0VI3m7uGECSrc9CuLm/boRhAvziI4QIc7FdL6S7qeP0pqxH0fV6UPXQcUIw87xFMB9R+gUgk
	Nlz9SoZLqZ62/5UJ2a/+zb/fO3oQKWc+ouBhgbO6WYCkMyDpMEqDetuJKj+SbaOg8wm+1Zu1GiZQW
	fF4Fguzk40d7sfD5WADTJy9TiYwubVq+5njMZxtlt4krOuBTNZX0rA2MNX6rHghXeOsfqTnmr46ti
	Ffbw7dH6oLoI3YrVvlJu933ylWPpdbZ4YRDbitFtubjwTV0ZRZY3GRfVeV4cDQKzsz+T+Y2PeCmaE
	bT67JwTBp5jZFrCTDrbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubcIP-00000004kSG-1qCs;
	Tue, 15 Jul 2025 09:49:57 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubbj7-00000004dfG-36sd;
	Tue, 15 Jul 2025 09:13:31 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1752570807; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ZaVXiQjZBm13Etgxt4OiBMQbGwC/DcNY/QMigBvU2yASGR1rEwj2h3Lckh7HDVKHVdY6WreMjyllS4PjgiKd9MJsvj63PuAm+nNfA711v9gL47rfv+ho8Go8mlF+7c7X2/7nmj/581e2W9WXSaf2xMdqPe0HoMR7Z1Bjc8WDx5E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1752570807; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=cay9RsCh/M7Z1VNy5D8LdZzxsTlAPAMGWS8Ka5XVAL0=; 
	b=VWZKEvPkQyNT9q+RN1SpQpIreytRb5U1Ud1W3ssn7BDwVc6TiyvdWBO6ROaTioc9FuBt0VxyN6tsuB1QTpkleNwqt93aVYLSgKoLZG8KRdZ0zV4TbE/8QgeDy3jhuFfC9lifrJG+oTQlf+iD4xJs4r7vFoTVU4/4wbk7t1u0wCM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1752570807;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=cay9RsCh/M7Z1VNy5D8LdZzxsTlAPAMGWS8Ka5XVAL0=;
	b=Q+yu7HcE8kRkHvDFA/I+tnaBCb5kOgIyqfrNK1+v4UFKPdJ3g3vctaCli4O4uz3f
	K+HZuX8Fr7yrG5jsyhBsjG8TNwRWXWRGIno5VWlq523Sxn/UjXRkukNAC0V4IqVQ1Dm
	63Lnmufxg2b4MdP74ghITgXZ4s1hWkjArvD4lp8U=
Received: by mx.zohomail.com with SMTPS id 17525708052071014.9248185889661;
	Tue, 15 Jul 2025 02:13:25 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Qu Wenruo <wqu@suse.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: PWM fan control not working with Rock5B and upstream kernel
Date: Tue, 15 Jul 2025 11:13:21 +0200
Message-ID: <9751604.CDJkKcVGEf@workhorse>
In-Reply-To: <f33da910-7e83-40a0-bfcd-a6131a356358@suse.com>
References: <e9ddcc05-e6db-49b0-aad6-c7873c38c427@suse.com>
 <5271313.GXAFRqVoOG@workhorse>
 <f33da910-7e83-40a0-bfcd-a6131a356358@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_021329_814174_6E194ECB 
X-CRM114-Status: GOOD (  24.22  )
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

SGksCgpJJ3ZlIHNlZW4geW91J3ZlIGFscmVhZHkgc29sdmVkIHlvdXIgcHJvYmxlbSwgYnV0IEkg
ZmVlbCBJIHNob3VsZApyZXBseSB0byBzb21lIHBvaW50cyBhbnl3YXkuCgpPbiBUdWVzZGF5LCAx
NSBKdWx5IDIwMjUgMTA6NDQ6MjEgQ2VudHJhbCBFdXJvcGVhbiBTdW1tZXIgVGltZSBRdSBXZW5y
dW8gd3JvdGU6Cj4gCj4g5ZyoIDIwMjUvNy8xNSAxNzoxOSwgTmljb2xhcyBGcmF0dGFyb2xpIOWG
memBkzoKPiA+IE9uIFR1ZXNkYXksIDE1IEp1bHkgMjAyNSAwNjoxMDo0NSBDZW50cmFsIEV1cm9w
ZWFuIFN1bW1lciBUaW1lIFF1IFdlbnJ1byB3cm90ZToKPiA+PiBIaSwKPiA+Pgo+ID4+IE15IFJv
Y2s1QiBib2FyZCBpcyBydW5uaW5nIGVkay1yazM1ODggZmlybXdhcmUgYW5kIChhbG1vc3QpIHVw
c3RyZWFtCj4gPj4ga2VybmVsICg2LjE0LjYga2VybmVsIGZyb20gQXJjaGxpbnV4QVJNKSwgdXNp
bmcgdXBzdHJlYW0gZHRicyAodGhlCj4gPj4gZmlybXdhcmUgaXMgYWxzbyBzd2l0Y2hlZCB0byBk
ZXZpY2UtdHJlZSBib290IG1vZGUpCj4gPiAKPiA+IENvbnNpZGVyIHVzaW5nIG1haW5saW5lIHUt
Ym9vdCBpbnN0ZWFkLiBJIHRoaW5rIHRoZSBvbmx5IG9uZXMgd2hvCj4gPiBpbnNpc3Qgb24gZWRr
MiBmb3JrcyBhcmUgdGhlIEJTRCBwZW9wbGUsIGFzIHRoZXkgZG9uJ3Qgd2FudCB0bwo+ID4gd3Jp
dGUgZGV2aWNlIGRyaXZlcnMuIExpbnV4IGhhcyBkcml2ZXJzLCBzbyBpbnZlbnRpbmcgVUVGSSBh
YnN0cmFjdGlvbnMKPiA+IGZvciB0aGluZ3MgcHJvYmFibHkgb25seSBtYWtlcyB5b3VyIGV4cGVy
aWVuY2Ugd29yc2UuCj4gCj4gV2VsbCwgaGF2aW5nIHNvbWV0aGluZyBtb3JlIHVzZXItZnJpZW5k
bHkgYW5kIG1vcmUgc2ltaWxhciB0byBhIAo+IHRyYWRpdGlvbmFsIFBDIHNldHVwIGlzIGRlZmlu
aXRlbHkgbW9yZSBhdHRyYWN0aXZlIHRvIGVuZCB1c2Vycy4KClUtQm9vdCBzdGFuZGFyZCBib290
IGZsb3cgd29ya3MganVzdCBmaW5lIGZvciB0aGlzLiBCcm9rZW4gVUVGSQpzZXJ2aWNlcyBhbmQg
QUNQSSBpbnRlcmZhY2VzIG5vdGhpbmcgaW1wbGVtZW50cyBkbyBub3QgYWNoaWV2ZSB0aGlzLgoK
WW91IGNhbiBmbGFzaCBhIG1haW5saW5lIHUtYm9vdCB0byB5b3VyIFJPQ0sgNUIncyBTUEkgZmxh
c2ggYW5kIGl0CndpbGwgYm9vdCBhYXJjaDY0IFVFRkkgZGlzdHJvIGluc3RhbGxlcnMgb2ZmIFVT
QiB0aHVtYiBkcml2ZXMsIG9yCmRvIFBYRSBib290LCBvciBsb2FkIHlvdXIgR1JVQiBvbiBOVk1l
IGFuZCBzdWNoIGp1c3QgZmluZS4KCj4gCj4gPiAKPiA+IEtlcm5lbCA2LjE0IGlzIGFsc28gcXVp
dGUgYSBiaXQgYmVoaW5kIGFuZCBub3Qgc3VwcG9ydGVkIGJ5IHVwc3RyZWFtLAo+ID4geW91J2xs
IGxpa2VseSBoYXZlIGEgYmV0dGVyIGV4cGVyaWVuY2UgY29tcGlsaW5nIGEga2VybmVsIHlvdXJz
ZWxmCj4gPiB1c2luZyBkZWZjb25maWcgYXMgdGhlIGJhc2UuIEFMQVJNIGxpa2VzIHRvIHJvbGwg
ZGljZSB3aGVuIGl0IGNvbWVzIHRvCj4gPiB0aGVpciBrZXJuZWwgY29uZmlnIGFuZCB0aGVuIG5v
dCB1cGRhdGUgdGhlaXIga2VybmVscyBmb3IgaGFsZiBhIHllYXIuCj4gCj4gVGhhbmtmdWxseSB0
aGUgbGF0ZXN0IG9uZSBpcyA2LjE1LjYsIGFuZCB1bmZvcnR1bmF0ZWx5IGl0IGRvZXNuJ3QgbWFr
ZSBhIAo+IGRpZmZlcmVuY2UuCj4gCj4gSSdtIGZpbmUgY29tcGlsaW5nIGtlcm5lbHMgZm9yIG15
IFZNcyB0byBydW4gdGVzdHMsIGJ1dCBmb3IgdGhlIGhvc3QgSSdkIAo+IGxlYXZlIHRoaXMgYXMg
dGhlIGxhc3QgcmVzb3J0IG1ldGhvZC4KPiAKPiBJJ2xsIHRyeSB0aGUgVWJvb3QgaWYgcmVxdWly
ZWQsIGJ1dCBubyBwcmUtY29tcGlsZWQgdXBzdHJlYW0gb25lIGlzIG5vdCAKPiByZWFsbHkgaW52
aXRpbmcgZW5kIHVzZXJzLgoKQ29sbGFib3JhIGhhcyBiZWVuIHByb3ZpZGluZyBmdWxsIG1haW5s
aW5lIGJhc2VkIFJPQ0sgNUIgaW1hZ2VzIGZvciBhCmxvbmcgdGltZTogaHR0cHM6Ly9naXRsYWIu
Y29sbGFib3JhLmNvbS9oYXJkd2FyZS1lbmFibGVtZW50L3JvY2tjaGlwLTM1ODgvZGViaWFuLWlt
YWdlLXJlY2lwZXMKClRoaXMgaW5jbHVkZXMgZ2l0bGFiIHBpcGVsaW5lcyBmb3IgdGhlIG1haW5s
aW5lLWJhc2VkIHUtYm9vdCB3ZSBzaGlwCmluIG91ciBpbWFnZXM6IGh0dHBzOi8vZ2l0bGFiLmNv
bGxhYm9yYS5jb20vaGFyZHdhcmUtZW5hYmxlbWVudC9yb2NrY2hpcC0zNTg4L3UtYm9vdC8tL2pv
YnMKCkknbSBub3Qgc3VyZSB3aHkgeW91J3JlIG9uIHRoZSBMaW51eCBrZXJuZWwgbWFpbGluZyBs
aXN0IGNvbXBsYWluaW5nIG9mCmEgbGFjayBvZiBwcmUtY29tcGlsZWQgYmluYXJpZXMgdGhvdWdo
LCBpdCdzIG5vdCBsaWtlIGtlcm5lbC5vcmcKZGlzdHJpYnV0ZXMgYW55IGJpbmFyaWVzIGVpdGhl
ci4gQ29tcGlsaW5nIHUtYm9vdCBpcyBmYWlybHkgZWFzeSwgc2VlCmh0dHBzOi8vZG9jcy51LWJv
b3Qub3JnL2VuL2xhdGVzdC9idWlsZC9nY2MuaHRtbCBmb3IgYSBnZW5lcmFsIG92ZXJ2aWV3Cmlu
Y2x1ZGluZyBidWlsZCBkZXBlbmRlbmNpZXMuCgoxLiBmZXRjaCB0Zi1hIGh0dHBzOi8vcmV2aWV3
LnRydXN0ZWRmaXJtd2FyZS5vcmcvVEYtQS90cnVzdGVkLWZpcm13YXJlLWEuZ2l0CjIuIGNvbXBp
bGUgaXQgd2l0aCBtYWtlIEFSQ0g9YWFyY2g2NCBDUk9TU19DT01QSUxFPWFhcmNoNjQtbGludXgt
Z251LSBFPTAgUExBVD1yazM1ODgKMy4gZmV0Y2ggcmtiaW4gaHR0cHM6Ly9naXRodWIuY29tL3Jv
Y2tjaGlwLWxpbnV4L3JrYmluLwo0LiBmZXRjaCB1LWJvb3QgaHR0cHM6Ly9zb3VyY2UuZGVueC5k
ZS91LWJvb3QvdS1ib290Ly0vdHJlZS9tYXN0ZXIKNS4gZXhwb3J0IEJMMzE9cGF0aC90by90Zi1h
L2J1aWxkL3JlbGVhc2UvcmszNTg4L2JsMzEuZWxmCjYuIGV4cG9ydCBST0NLQ0hJUF9UUEw9cGF0
aC90by9ya2Jpbi9iaW4vcmszNS9yazM1ODhfZGRyX2xwNF8yMTEyTUh6X2xwNV8yNDAwTUh6X3Yx
LjE4LmJpbgo3LiBpbiB0aGUgdS1ib290IGRpciwgcnVuIG1ha2UgQVJDSD1hcm02NCBDUk9TU19D
T01QSUxFPWFhcmNoNjQtbGludXgtZ251LSByb2NrNWItcmszNTg4X2RlZmNvbmZpZwo4LiB0aGVu
IGFnYWluIGluIHRoZSB1LWJvb3QgZGlyLCBydW4gbWFrZSAtaiQobnByb2MpIEFSQ0g9YXJtNjQg
Q1JPU1NfQ09NUElMRT1hYXJjaDY0LWxpbnV4LWdudS0KOS4gZmxhc2ggdGhlIHJlc3VsdGluZyBg
dS1ib290LXJvY2tjaGlwLXNwaS5iaW5gIHRvIG9mZnNldCAwIG9mIHlvdXIgZGV2aWNlJ3MgU1BJ
IGZsYXNoLAogICBvciBhbHRlcm5hdGl2ZWx5LCBmbGFzaCBgdS1ib290LXJvY2tjaGlwLmJpbmAg
dG8gYnl0ZSBvZmZzZXQgMzI3Njggb2YgYW4gZU1NQyBmbGFzaCBvciBTRCBjYXJkLgoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
