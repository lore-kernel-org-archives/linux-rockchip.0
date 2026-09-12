Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2735DC88E53
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Sep 2026 14:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zOdbu84+Zb0AAPsLCKkHa1aellBHSej7Vs34rq8hwgU=; b=Q5ZjHT269dq7AL
	o8GVfqKJ/5Jt6PmPZAYth1u3lCl8FQHTUQdBh2bYh6mnGfWMofZOdbDQrGdQ+jmqo3jgB02X9gI1n
	PIXViea0rg7JsWlD5v3YHQgFC2d/FG0IRPqUgX5ztAJ7xXqmo/I2oZQreeeEvrdKmMBM5bHcETpOa
	b9XecX663z/x3mDhpe0b1dLaDskhlsYNudR1DsQzlmXN3SNTgvVqmVZLvtWFLVRR8tC9FNyrlZiCN
	mSNOgWULHtKLrxw0AOnPKsaXLq5vSWF9zzdqmAdK1ykxuZbUSdRYtSxRWCgAGTUOEV0uIcVA4mqPh
	gpi+2h7xQO9i/FfxYJyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5OWu-00000000vrz-1zLh;
	Sat, 12 Sep 2026 14:16:32 +0000
Received: from out-215.mta0.migadu.com ([2001:41d0:1004:224b::d7] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5OWq-00000000vqU-08Ul
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Sep 2026 14:16:30 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=gWTv9m159o9tqPhsbO31jxi6b8U5wx9tbWutAlj+Ycc=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1789222584; v=1; x=1789827384;
 b=Pf/FMT+szYm1C4slkIL1AF2TsUmqIYizkP1pOg5AzF9KLVjHmE53rDd5eygW2NYJLrvEyKpD
 S3afT/SP68ZH3YxA1LdSwrKLFEoVt5L4rTVTEtEt4TDTf5t6g1KuC9SxxhjdusU4HuIn87MGWxs
 pK7W/gzv8yFWrmLE2+m8kBqcNsJzTw7x0oR9xO1QEZAxA5WMsPYhumtrKtG38eNnEcsOGbWCn9Z
 NFszoRXJnx5n7aFkj+7NRDldtr2GxSCe1zBFFPLak1YbmlsiGz6ifWHr88tlb8JOEhnWfQybrUh
 ZgKR5VJKFwJhlDTxmNXarAdveD8147OvllSxL/VvDqLbQ==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 771c737939bb75a4;
	Sat, 12 Sep 2026 14:16:24 +0000
X-Mizu-Trace-ID: 771c737939bb75a4
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Sat, 12 Sep 2026 16:16:22 +0200
Message-Id: <DLDEGZ68QQ19.1MJEB7QOK4G7T@cknow-tech.com>
Cc: "Ricardo Pardini" <ricardo@pardini.net>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix i2c6 clock-frequency on
 NanoPC-T6
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Heiko Stuebner" <heiko@sntech.de>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Diederik de Haas" <diederik@cknow-tech.com>
X-Mailer: aerc 0.22.0-9-ge948bb7230f4
References: <20260911152911.2088363-1-diederik@cknow-tech.com>
 <2071782.usQuhbGJ8B@phil>
In-Reply-To: <2071782.usQuhbGJ8B@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260912_071628_726650_DA72C28C 
X-CRM114-Status: GOOD (  10.60  )
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

T24gU2F0IFNlcCAxMiwgMjAyNiBhdCAyOjQxIFBNIENFU1QsIEhlaWtvIFN0dWVibmVyIHdyb3Rl
Ogo+IEFtIEZyZWl0YWcsIDExLiBTZXB0ZW1iZXIgMjAyNiwgMTc6Mjg6MzMgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBEaWVkZXJpayBkZSBIYWFzOgo+PiBUaGUgaTJjNiBi
dXMgbmVlZHMgdG8gcnVuIGF0IDIwMGtIeiwgYmVjYXVzZSBhdCB0aGUgZGVmYXVsdCBmcmVxdWVu
Y3kgb2YKPj4gMTAwa0h6IGl0IG1heSBmYWlsIHRvIGZpbmQgdGhlIFJUQyByZXN1bHRpbmcgaW4g
d2FybmluZ3MvZXJyb3JzIGxpa2UKPj4gCj4+ICAgcnRjLWh5bTg1NjMgNi0wMDUxOiBubyB2YWxp
ZCBjbG9jay9jYWxlbmRhciB2YWx1ZXMgYXZhaWxhYmxlCj4+ICAgcnRjLWh5bTg1NjMgNi0wMDUx
OiBoY3Rvc3lzOiB1bmFibGUgdG8gcmVhZCB0aGUgaGFyZHdhcmUgY2xvY2sKPj4gCj4+IEJ1dCBv
bmx5IHNvbWV0aW1lcy4gVGhpcyBzaG91bGQgbm90IGhhcHBlbiB3aGVuIHRoZXJlIGlzIGEgYmF0
dGVyeSBiYWNraW5nCj4+IHRoZSBSVEMsIHlldCBpdCBkb2VzIC4uLiBzb21ldGltZXMuCj4KPiBJ
J20gY29uZnVzZWQsIHNob3VsZG4ndCBhIHNsb3dlciBjbG9jayBhbHdheXMgd29yaz8KPiBMaWtl
IEkgdW5kZXJzdGFuZCBob3cgYSBjbG9jayB0aGF0IGlzIHRvbyBmYXN0IGNhbiBjYXVzZSBpc3N1
ZXMgZHVlCj4gdG8gaGFyZHdhcmUgbGltaXRhdGlvbnMsIGJ1dCBydW5uaW5nIHRoZSBidXMgc2xv
d2VyIHNvbWVob3cgc2hvdWxkbid0Cj4gY2F1c2UgaXNzdWVzPwoKSW1wZWNjYWJsZSB0aW1pbmcg
Li4uIGFzIEkgd2FzIGp1c3QgYWJvdXQgdG8gcmV0cmFjdCB0aGlzIHBhdGNoLgoKSW4gYWxsIG15
IHRlc3RpbmcgSSByZWd1bGFybHkgZ290IHRob3NlIGVycm9yL3dhcm5pbmcgb24gMTAwa0h6IGFu
ZCBub3QKb25jZSB3aXRoIDIwMGtIeiAuLi4gdW50aWwganVzdCBub3cuCk15IHJlYXNvbmluZyB3
YXMgdGhhdCBpdCB3YXMgdG9vIHNsb3cgdG8gcmVzcG9uZCBtYWtpbmcgdGhlIHN5c3RlbS9kcml2
ZXIKdGhpbmsgaXQgd2Fzbid0IHRoZXJlIGFuZCB0aHVzIGNhdXNpbmcgdGhvc2UgZXJyb3Ivd2Fy
bmluZy4KCkluIHRoZSBkb3duc3RyZWFtIGtlcm5lbCBpdCBpcyBzZXQgdG8gMjAwa0h6IGFuZCBp
biBteSB0ZXN0aW5nIHRoZSBkb3duc3RyZWFtCmltYWdlICh3aXRoIHRoYXQga2VybmVsKSwgSSBo
YXZlIG5vdCBvbmNlIHNlZW4gdGhvc2UgZXJyb3Ivd2FybmluZy4KU28gSSBmaWd1cmVkIHRoYXQg
dGhlIDEwMGtIeiB3YXMgdGhlIHByb2JsZW0uCgpCdXQgdGhhdCdzIGFsbCBudWxsIGFuZCB2b2lk
IGFzIEkgbm93IGRpZCBnZXQgdGhlIGVycm9yL3dhcm5pbmcgd2l0aCAyMDBrSHouCgpTbyBwbGVh
c2UgaWdub3JlL2Ryb3AgdGhpcyBhbmQgc29ycnkgZm9yIHRoZSBub2lzZS4KCkRpZWRlcmlrCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
