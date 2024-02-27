Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAE04C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 13:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kRlxyqaDFND1IL8dras+zw1o9iPFh3zjEPJjF1AQKsI=; b=Cn8GtjEoExxMWb1gb1tm/I2iAV
	QbGkJhazOkjzZyzvjMrTPhK/gq6OM+aXkW+QxXolq5g1iQQi/6vpZmCimMYtzQc/Fgl3+orrW8BSJ
	UipnmgECe1xgRrbX0HlJZUZOykjfISYuSKZ9Hy309BLwcPeFUl+Mx+unwaeJOrdtKdYMZurcz044N
	g11BQYyRW/M5kgLpDQZcFMkenSOOfA7HZkGjizvE8iSVGMsD3NPQwxgurBeD4rdCSrZsT9jis/L4R
	KFo3wuiLeH+CYZmlRgjm9mnofX+4wJNdsKbmiGHX6Lk+nWVK5IzZ2MT5iMZ8fPKmW2lGDv/V2/ZR6
	R58Wg6pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rexlo-00000005R07-2e52;
	Tue, 27 Feb 2024 13:45:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rexlc-00000005Qwz-0pUB;
	Tue, 27 Feb 2024 13:45:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A0A1861353;
	Tue, 27 Feb 2024 13:45:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BD5DC433F1;
	Tue, 27 Feb 2024 13:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709041507;
	bh=RQFlK7I38yLV5P8MnK0KsO0SNeGJ/DT5PWW0DTLUyX4=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=WDasZ0oeO1jIDjCyMAUtkIw0a5OqnNmD0GA8lSmHvQGvRAOhGo9tyqVW72xKaVdwM
	 CCIjQCg1cDb/QKjsSydo/NFyOk/x3UtFZRYZhvB4M8rIIQs3IwmlGXKFO2kGJg8WMK
	 D1g0wouFAwTHfxFbC7fFSqq5Cxq5GtuK7aa+HLGMCMwxH3o89HmHpicpKQaqOHt7mQ
	 GNfj/++gO1h6IUPeB3+uWm2ALuRGM2C3Ungn3pQdzhtO8KEHntFOMwAEuztcozYt7N
	 qBolgQxIY8U41gs0OJzXM6HlAYQxi3E4Pmu7YqDd2W23JXrOjEcnbHJn57T/odV0dA
	 jVTbr2QAqBo1w==
Date: Tue, 27 Feb 2024 07:45:06 -0600
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
In-Reply-To: <cover.1709034476.git.ukleinek@debian.org>
References: <cover.1709034476.git.ukleinek@debian.org>
Message-Id: <170904127405.3703837.16422930909447111254.robh@kernel.org>
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_054508_332714_B96324A7 
X-CRM114-Status: GOOD (  18.38  )
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

Ck9uIFR1ZSwgMjcgRmViIDIwMjQgMTI6NTI6MzUgKzAxMDAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdy
b3RlOgo+IEhlbGxvLAo+IAo+IHRoaXMgaXMgYW4gaW5pdGlhbCBkdHMgdG8gc3VwcG9ydCBRTkFQ
J3MgVFMtNDMzIE5BUy4gSXQncyBlbm91Z2ggdG8KPiBzdGFydCB0aGUgZGViaWFuIGluc3RhbGxl
ciB3aXRoIGEgY3VzdG9tIGJ1aWx0IGtlcm5lbCAob3JpZ2luYWwgRGViaWFuCj4ga2VybmVsIGZh
aWxzIHRvIG9wZW4gYSBjb25zb2xlLCBkaWRuJ3QgZGVidWcgdGhhdCB5ZXQpIGFuZCBhY2Nlc3Mg
SEQsCj4gZU1NQywgUlRDIGFuZCBuZXR3b3JrLgo+IAo+IFRoZXJlIGFyZSBzdGlsbCBzb21lIG1p
c3NpbmcgYml0cyBhbmQgcGllY2VzLCBidXQgdG8gbWFrZSBwZW9wbGUgYXdhcmUKPiB0aGVyZSBh
cmUgZWZmb3J0cyB0byBzdXBwb3J0IHRoaXMgbWFjaGluZSBhbmQgc28gcHJldmVudCBkdXBsaWNh
dGUgd29yaywKPiBJIHRoaW5rIGl0IG1ha2VzIHNlbnNlIHRvIGFkZCB0aGUgZHRzIGluIGl0cyBj
dXJyZW50IGZvcm0gYWxyZWFkeS4KPiAKPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPiAKPiBVd2UgS2xl
aW5lLUvDtm5pZyAoMik6Cj4gICBkdC1iaW5kaW5nczogYXJtOiByb2NrY2hpcDogQWRkIFFOQVAg
VFMtNDMzCj4gICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIGJhc2ljIHN1cHBvcnQgZm9yIFFO
QVAgVFMtNDMzCj4gCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1s
ICAgICB8ICA1ICsrCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAg
ICAgICB8ICAxICsKPiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1xbmFwLXRzNDMzLmR0
cyAgIHwgODYgKysrKysrKysrKysrKysrKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDkyIGluc2Vy
dGlvbnMoKykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzCj4gCj4gYmFzZS1jb21taXQ6IDY2MTM0NzZlMjI1ZTA5
MGNjOWFhZDQ5YmU3ZmE1MDRlMjkwZGQzM2QKPiAtLQo+IDIuNDMuMAo+IAo+IAoKCk15IGJvdCBm
b3VuZCBuZXcgRFQgd2FybmluZ3Mgb24gdGhlIC5kdHMgZmlsZXMgYWRkZWQgb3IgY2hhbmdlZCBp
biB0aGlzCnNlcmllcy4KClNvbWUgd2FybmluZ3MgbWF5IGJlIGZyb20gYW4gZXhpc3RpbmcgU29D
IC5kdHNpLiBPciBwZXJoYXBzIHRoZSB3YXJuaW5ncwphcmUgZml4ZWQgYnkgYW5vdGhlciBzZXJp
ZXMuIFVsdGltYXRlbHksIGl0IGlzIHVwIHRvIHRoZSBwbGF0Zm9ybQptYWludGFpbmVyIHdoZXRo
ZXIgdGhlc2Ugd2FybmluZ3MgYXJlIGFjY2VwdGFibGUgb3Igbm90LgoKSWYgeW91IGFscmVhZHkg
cmFuIERUIGNoZWNrcyBhbmQgZGlkbid0IHNlZSB0aGVzZSBlcnJvcihzKSwgdGhlbgptYWtlIHN1
cmUgZHQtc2NoZW1hIGlzIHVwIHRvIGRhdGU6CgogIHBpcDMgaW5zdGFsbCBkdHNjaGVtYSAtLXVw
Z3JhZGUKCgpOZXcgd2FybmluZ3MgcnVubmluZyAnbWFrZSBDSEVDS19EVEJTPXkgcm9ja2NoaXAv
cmszNTY4LXFuYXAtdHM0MzMuZHRiJyBmb3IgY292ZXIuMTcwOTAzNDQ3Ni5naXQudWtsZWluZWtA
ZGViaWFuLm9yZzoKCmFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0
MzMuZHRiOiB2aWRlby1jb2RlY0BmZGVhMDQwMDogJ2ludGVycnVwdC1uYW1lcycgaXMgYSByZXF1
aXJlZCBwcm9wZXJ0eQoJZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2No
ZW1hcy9tZWRpYS9yb2NrY2hpcC12cHUueWFtbCMKYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NjgtcW5hcC10czQzMy5kdGI6IGkyc0BmZTQyMDAwMDogcmVzZXQtbmFtZXM6MDogJ20n
IGlzIG5vdCBvbmUgb2YgWyd0eC1tJywgJ3J4LW0nXQoJZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8v
ZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9zb3VuZC9yb2NrY2hpcCxpMnMtdGRtLnlhbWwjCgoKCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
