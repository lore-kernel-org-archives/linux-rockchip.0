Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 247E6C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 16:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00O+LOY7carWa04PTXPPKEe9sflsABJTwHkrTkkzEUI=; b=jNvrM2sItYKQfU
	JhZW3zE9YgWuxB/cMiT9x7EERwyJpuInb8N8V5n7AarAWsTRpaLjIWrU1MrRCkw97p90F0j+grdES
	vWbAV9tz9UMpc+5C5mxkTKJA4Jv1MwzDPYub79bb4yxh510tw/Sl6XdVEoQq3nArcWn2j7XS54eJG
	4kiaVjENlHA1RUbXXYXyFzjQ9M7hziitleCPQvlz+JAY2+0ounho2tfTU5aD5VxZ8ygUJwXNaFvz5
	f8AKQ26QGaW0oplRIEjiNe/rGwzsyx1W/M92XzDqlTIzndulq5HX61hleohn1j0GZWE9t3MQMYBzI
	TCkKhGt8/PO5sWlLkrYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzhQd-008vMr-Vu; Fri, 10 Jun 2022 16:24:08 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzhQb-008vLI-0R
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 16:24:06 +0000
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net [192.222.136.102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C97136601721;
	Fri, 10 Jun 2022 17:23:58 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654878239;
	bh=PeNEbNWV7aaaxpnftZb7IJf8mfoEQ3cPkieNnhAQIW4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=hnH4stMAEriCwFmQZtGarrd55Yj+jXr4HpYuP/lvuHrC+WxKRtQgBz6qV+XoZgZOn
	 W0+ly466O4b8d8WEG//Retrz6r4kJdwDZEHX9D0DxZXQuajfKd42GythaKD30XvLso
	 FzGuTFrYW/02f5h94a9ID9cGh130lzlEDyFjGNVL+cpPoDW/DtRn20+DL7tUDz0kd/
	 w3ZSZ39kJ7BehSEvURr0BxQZQ34UaOMfpoNNljQpFHLB1kKlG4D1S3y1LLH8s9cW1I
	 VwKjYX/zX18HsyZLs7cTquvigMVH77WXNTPKOeOEIU6Pjji9Z7KQRHEUb9erqkZq59
	 wEEwzlgY0CIdg==
Message-ID: <0e2c5d37398eeb04576af3ca5012161255464b21.camel@collabora.com>
Subject: Re: [PATCH v1 4/5] media: rkvdec: Re-enable H.264 error detection
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: linux-media@vger.kernel.org, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>,  Mauro Carvalho Chehab
 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 kernel@collabora.com, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Fri, 10 Jun 2022 12:23:49 -0400
In-Reply-To: <20220610132017.GD2146@kadam>
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
	 <20220610125215.240539-5-nicolas.dufresne@collabora.com>
	 <20220610132017.GD2146@kadam>
User-Agent: Evolution 3.44.1 (3.44.1-1.fc36) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_092405_302106_C54C19E3 
X-CRM114-Status: GOOD (  20.42  )
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

TGUgdmVuZHJlZGkgMTAganVpbiAyMDIyIMOgIDE2OjIwICswMzAwLCBEYW4gQ2FycGVudGVyIGEg
w6ljcml0wqA6Cj4gT24gRnJpLCBKdW4gMTAsIDIwMjIgYXQgMDg6NTI6MTRBTSAtMDQwMCwgTmlj
b2xhcyBEdWZyZXNuZSB3cm90ZToKPiA+IFRoaXMgcmUtZW5hYmxlcyBILjI2NCBlcnJvciBkZXRl
Y3Rpb24sIGJ1dCB1c2luZyB0aGUgb3RoZXIgZXJyb3IgbW9kZS4KPiA+IEluIHRoYXQgbW9kZSwg
dGhlIGRlY29kZXIgd2lsbCBza2lwIG92ZXIgdGhlIGVycm9yIG1hY3JvLWJsb2NrIG9yCj4gPiBz
bGljZXMgYW5kIGNvbXBsZXRlIHRoZSBkZWNvZGluZy4gQXMgYSBzaWRlIGVmZmVjdCwgdGhlIGVy
cm9yIHN0YXR1cwo+ID4gaXMgbm90IHNldCBpbiB0aGUgaW50ZXJydXB0IHN0YXR1cyByZWdpc3Rl
ciwgYW5kIGluc3RlYWQgZXJyb3JzIGFyZQo+ID4gZGV0ZWN0ZWQgcGVyIGZvcm1hdC4gVXNpbmcg
dGhpcyBtb2RlIHdvcmthcm91bmQgdGhlIGlzc3VlIHRoYXQgdGhlCj4gPiBIVyBnZXQgc3R1Y2sg
aW4gZXJyb3Igc3RhdGVkIGFuZCBhbGxvdyByZXBvcnRpbmcgdGhhdCBzb21lIGNvcnJ1cHRpb24K
PiA+IG1heSBiZSBwcmVzZW50IGluIHRoZSBidWZmZXIgcmV0dXJuZWQgdG8gdXNlcmxhbmQuCj4g
PiAKPiA+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVA
Y29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMv
cmt2ZGVjLWgyNjQuYyB8IDIzICsrKysrKysrKysrKysrKysrKystLS0KPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYyBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLWgyNjQuYwo+ID4gaW5kZXggNTU1OTZjZTZiYjZl
Li42MGE4OTkxOGUyYzEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2
ZGVjL3JrdmRlYy1oMjY0LmMKPiA+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMv
cmt2ZGVjLWgyNjQuYwo+ID4gQEAgLTExNzUsMTQgKzExNzUsMTUgQEAgc3RhdGljIGludCBya3Zk
ZWNfaDI2NF9ydW4oc3RydWN0IHJrdmRlY19jdHggKmN0eCkKPiA+ICAKPiA+ICAJc2NoZWR1bGVf
ZGVsYXllZF93b3JrKCZya3ZkZWMtPndhdGNoZG9nX3dvcmssIG1zZWNzX3RvX2ppZmZpZXMoMjAw
MCkpOwo+ID4gIAo+ID4gLQl3cml0ZWwoMCwgcmt2ZGVjLT5yZWdzICsgUktWREVDX1JFR19TVFJN
RF9FUlJfRU4pOwo+ID4gLQl3cml0ZWwoMCwgcmt2ZGVjLT5yZWdzICsgUktWREVDX1JFR19IMjY0
X0VSUl9FKTsKPiA+ICsJd3JpdGVsKDB4ZmZmZmZmZmYsIHJrdmRlYy0+cmVncyArIFJLVkRFQ19S
RUdfU1RSTURfRVJSX0VOKTsKPiA+ICsJd3JpdGVsKDB4ZmZmZmZmZmYsIHJrdmRlYy0+cmVncyAr
IFJLVkRFQ19SRUdfSDI2NF9FUlJfRSk7Cj4gCj4gVGhpcyByZXZlcnRzIHRoZSBjaGFuZ2VzIGlu
IHBhdGNoIDEvNS4gIENvdWxkIHdlIGp1c3Qgc2tpcCBwYXRjaCAxLzUKPiBpbnN0ZWFkPwoKQXMg
ZG9jdW1lbnRlZCwgdGhpcyBpcyBmb3IgYmFjay1wb3J0aW5nIHB1cnBvc2UuIFRoZSBmaXJzdCBw
YXRjaCBpcyB3aGF0IGhhcwpiZWVuIHJ1bm5pbmcgZm9yIDcgeWVhcnMgaW4gQ2hyb21lYm9vaywg
c28gSSdtIGZ1bGx5IGNvbmZpZGVudCBpdCBpcyBzYWZlIHRvCmJhY2twb3J0IGl0IGludG8gb3Vy
IHN0YWJsZSBrZXJuZWwuIFRoZSBzZWNvbmQgaXMgbGlrZSBhIG5ldyBmZWF0dXJlLCB3aGljaCBJ
J20KY29uZmlkZW50IHdvcmtzLCBidXQgZGlkbid0IGdldCBhcyBtdWNoIHRlc3RpbmcgYXMgSSBq
dXN0IHdyb3RlIGl0LiBTbyB3aGF0IEknbQpkb2luZyBoZXJlIGlzIGdpdmluZyBhIHNhbWUgdGhp
bmcgdG8gYmFja3BvcnQsIGFuZCBhIGJldHRlciBmaXggZm9yIHRoZSBuZXh0Cmtlcm5lbC4gWW91
IGFyZSBvdGhlcndpc2UgcmlnaHQgdGhhdCB0aGlzIHdpbGwgcmV2ZXJ0IGl0LgoKTmljb2xhcwoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
