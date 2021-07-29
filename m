Return-Path: <SRS0=cphG=MV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB559C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 19:07:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7E2B660EC0
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 19:07:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7E2B660EC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4kLGWXrEGJzIsMdvu6V5n9PbgaX67qXFzJXy7Kg500=; b=H9DNvVGzvLudqx
	wfUTp2bh0ivZwa+E+2fkqqb5HV6iyYWlDkWRmX3ME+kZz8Ryt6rRuSaLtbo1uOaH2XDb898exs2sS
	QhgJXM/3KM19+IX+D54xGQywOpMENhN9daAO/8Yr/bAD8s78HGutcLHp1egzaP4Ypb/eniXgLY2UD
	g8/uFZufPue/7/+uiZo0ffEvuD0wQUQfjF4moeoSuddZQwAu6eQId2vcX6EeezZHfqBSy4LHqdCnC
	r2Lq2mj0AlTCwI7KPNthlod6iEFjaq1YzwLsD9ODyO/QJThZG2n7h8ZyQrchGWmpTaTa9C53EV9XR
	lwhWHd6FFh7nmfSLNRuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9BN0-005d42-UU; Thu, 29 Jul 2021 19:07:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9BMn-005d34-DO; Thu, 29 Jul 2021 19:06:50 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9B03660EE2;
 Thu, 29 Jul 2021 19:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627585608;
 bh=syc4qVK1HUgQ7T+avP7cce2aYH49z0jp3zbWnHeOGLQ=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=APilpr+G81jhKsuDBVvYjcBCDmJ0MV7wSoO+3IenTsdwZxRLFHNx6Ii3mpXsJ+xL+
 l+/1lbXCrlhpCEUWHSwrUarZp177ygZJ/jxw3Fe79iweCu3a6K7RqgDbhTv4JTl+52
 iVvTCIhmskcYbkBuxRzSyWGd9eMWJUqqNztGyxTWkmWU1pEGVFH61luOK/hiNwbe/X
 lRap0KBmW7uefa4zgFiQmjgfnN/gSlwBfcUmjSkSt7cGm6y32WTRYPKO9gca0JYK/d
 n+McSN8W6fv6/4BvMJwpp03ocfRbw2LSNOnv+WeW9TaTjD8UCPPITBYh95KqTQQFTa
 1gfzTG03QJ4uA==
MIME-Version: 1.0
In-Reply-To: <2634451.ElGaqSPkdT@diego>
References: <BYAPR20MB24886765F888A9705CBEB70789E39@BYAPR20MB2488.namprd20.prod.outlook.com>
 <162734809017.2368309.7901135942001140161@swboyd.mtv.corp.google.com>
 <2634451.ElGaqSPkdT@diego>
Subject: Re: [PATCH] clk: rk3308: make ddrphy4x clock critical
From: Stephen Boyd <sboyd@kernel.org>
Cc: t123yh.xyz@gmail.com, Yunhao Tian <t123yh@outlook.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>,
 Yunhao Tian <t123yh@outlook.com>, saravanak@google.com
Date: Thu, 29 Jul 2021 12:06:47 -0700
Message-ID: <162758560739.714452.5782743329332725952@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_120649_522942_5C760BAE 
X-CRM114-Status: GOOD (  27.22  )
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

UXVvdGluZyBIZWlrbyBTdMO8Ym5lciAoMjAyMS0wNy0yOCAwMjo1Mzo1NCkKPiBBbSBEaWVuc3Rh
ZywgMjcuIEp1bGkgMjAyMSwgMDM6MDg6MTAgQ0VTVCBzY2hyaWViIFN0ZXBoZW4gQm95ZDoKPiA+
IFF1b3RpbmcgWXVuaGFvIFRpYW4gKDIwMjEtMDctMjEgMDU6NDg6MTYpCj4gPiA+IEN1cnJlbnRs
eSwgbm8gZHJpdmVyIHN1cHBvcnQgZm9yIEREUiBtZW1vcnkgY29udHJvbGxlciAoRE1DKSBpcyBw
cmVzZW50LAo+ID4gPiBhcyBhIHJlc3VsdCwgbm8gZHJpdmVyIGlzIGV4cGxpY2l0bHkgY29uc3Vt
aW5nIHRoZSBkZHJwaHkgY2xvY2suIFRoaXMgbWVhbnMKPiA+ID4gdGhhdCBWUExMMSAocGFyZW50
IG9mIGRkciBjbG9jaykgd2lsbCBiZSBzaHV0ZG93biBpZiB3ZSBlbmFibGUKPiA+ID4gYW5kIHRo
ZW4gZGlzYWJsZSBhbnkgY2hpbGQgY2xvY2sgb2YgVlBMTDEgKGUuZy4gU0NMS19JMlMwXzhDSF9U
WCkuCj4gPiA+IElmIFZQTEwxIGlzIGRpc2FibGVkLCB0aGUgd2hvbGUgc3lzdGVtIHdpbGwgZnJl
ZXplLCBiZWNhdXNlIHRoZSBERFIKPiA+ID4gY29udHJvbGxlciB3aWxsIGxvc2UgaXRzIGNsb2Nr
LiBTbywgaXQncyBuZWNlc3NhcnkgdG8gcHJldmVudCBWUExMMSBmcm9tCj4gPiA+IHNodXR0aW5n
IGRvd24sIGJ5IG1hcmtpbmcgdGhlIGRkcnBoeTR4IENMS19JU19DUklUSUNBTC4KPiA+ID4gCj4g
PiA+IFRoaXMgYnVnIHdhcyBkaXNjb3ZlcmVkIHdoZW4gSSB3YXMgcG9ydGluZyByb2NrY2hpcF9p
MnNfdGRtIGRyaXZlciB0bwo+ID4gPiBtYWlubGluZSBrZXJuZWwgZnJvbSBSb2NrY2hpcCA0LjQg
a2VybmVsLiBJIGd1ZXNzIHRoYXQgb3RoZXIgUm9ja2NoaXAKPiA+ID4gU29DcyB3aXRob3V0IERN
QyBkcml2ZXIgbWF5IG5lZWQgdGhlIHNhbWUgcGF0Y2guIElmIHRoaXMgYXBwbGllcyB0bwo+ID4g
PiBvdGhlciBkZXZpY2VzLCBwbGVhc2UgbGV0IHVzIGtub3cuCj4gPiA+IAo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBZdW5oYW8gVGlhbiA8dDEyM3loQG91dGxvb2suY29tPgo+ID4gPiAtLS0KPiA+ID4g
IGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMDguYyB8IDIgKy0KPiA+ID4gIDEgZmlsZSBj
aGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4gPiAKPiA+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMDguYyBiL2RyaXZlcnMvY2xrL3Jv
Y2tjaGlwL2Nsay1yazMzMDguYwo+ID4gPiBpbmRleCAyYzNiZDBjNzQ5ZjIuLjZiZTA3NzE2NjMz
MCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzMwOC5jCj4g
PiA+ICsrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMDguYwo+ID4gPiBAQCAtNTY0
LDcgKzU2NCw3IEBAIHN0YXRpYyBzdHJ1Y3Qgcm9ja2NoaXBfY2xrX2JyYW5jaCByazMzMDhfY2xr
X2JyYW5jaGVzW10gX19pbml0ZGF0YSA9IHsKPiA+ID4gICAgICAgICBDT01QT1NJVEUoU0NMS19E
RFJDTEssICJjbGtfZGRycGh5NHhfc3JjIiwgbXV4X2RwbGxfdnBsbDBfdnBsbDFfcCwgQ0xLX0lH
Tk9SRV9VTlVTRUQsCj4gPiA+ICAgICAgICAgICAgICAgICAgICAgICAgIFJLMzMwOF9DTEtTRUxf
Q09OKDEpLCA2LCAyLCBNRkxBR1MsIDAsIDMsIERGTEFHUywKPiA+ID4gICAgICAgICAgICAgICAg
ICAgICAgICAgUkszMzA4X0NMS0dBVEVfQ09OKDApLCAxMCwgR0ZMQUdTKSwKPiA+ID4gLSAgICAg
ICBHQVRFKDAsICJjbGtfZGRycGh5NHgiLCAiY2xrX2RkcnBoeTR4X3NyYyIsIENMS19JR05PUkVf
VU5VU0VELAo+ID4gPiArICAgICAgIEdBVEUoMCwgImNsa19kZHJwaHk0eCIsICJjbGtfZGRycGh5
NHhfc3JjIiwgQ0xLX0lHTk9SRV9VTlVTRUQgfCBDTEtfSVNfQ1JJVElDQUwsCj4gPiAKPiA+IElz
IGl0IG5vdCBlbmFibGVkIGJ5IGRlZmF1bHQ/Cj4gCj4gQWxsIGdhdGVzIGFyZSBlbmFibGVkIGJ5
IGRlZmF1bHQsIGJ1dCB0aGlzIGdhdGUgc2hhcmVzIGEgY29tbW9uIHBhcmVudAo+IHRyZWUgZG93
biB0byBhIHBsbCwgc28gaWYgYW5vdGhlciBsZWFmLXVzZXIgaXMgZGlzYWJsaW5nIHRoZWlyIHBh
cnQsIHRoaXMKPiB1bnRyYWNrZWQgY2xvY2sgd291bGQgZ2V0IGRpc2FibGVkIGFzIHdlbGwuCgpS
aWdodCwgdGhpcyBwcm9ibGVtIGlzIGNyb3BwaW5nIHVwIGluIGRpZmZlcmVudCBwbGFjZXMgZm9y
IHZhcmlvdXMKZHJpdmVycy4KCj4gCj4gT24gdGhhdCBub3RlLCBJIHJlbWVtYmVyIGEgc29ydCBv
ZiBDTEtfSEFORE9GRiB3YXMgcGxhbm5lZCB3YXkgYmFjawo+IGluIHRoZSBwYXN0LCBtZWFuaW5n
IGNsb2NrIGlzIGNyaXRpY2FsIHVudGlsIGEgZHJpdmVyIHBpY2tzIGl0IHVwLCBhZnRlciB0aGlz
IHRoZQo+IGRyaXZlciBpcyByZXNwb25zaWJsZSBmb3IgaXQuIERpZCB0aGF0IGdldCBhbnkgbW9t
ZW50dW0/Cj4gCgpMYXN0IEkgc2F3IFNhcmF2YW5hIHNlbnQgYSBwYXRjaCB0byBzb3J0IG9mIGNv
bm5lY3QgQ0xLX0hBTkRPRkYgdG8KZGV2aWNlIGRyaXZlciBzeW5jX3N0YXRlKCkgY2FsbGJhY2su
IEkgdGhpbmsgd2UgbmVlZCB0byBhdCBsZWFzdCBzdGFzaAphd2F5IHRoYXQgYSBjbGsgaXMgZW5h
YmxlZCBhdCBib290IGFuZCB0aGVuIGZpZ3VyZSBvdXQgaG93IHRvIHRpZSBpbgpzeW5jX3N0YXRl
IGFuZC9vciBzb21ldGhpbmcgZWxzZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
