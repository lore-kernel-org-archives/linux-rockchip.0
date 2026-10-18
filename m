Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53F2CCCF2D5
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Oct 2026 06:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qVGHrJBw1CpgRuXM1rSXwe2c+yS4avWIvCvRdR1lqc0=; b=gy6YFL974t/abj
	Q6/2GI1Zgu3Uu1y4Hd5mT7vf1mFB/jpCW+tDdn6kL7nnACeubsgrwVSelnQnBq5AKYe9tH+8/BC7L
	BQZbdIyo1y24PvyVTgiwNMQ50CRrZL3iyBEDST3PCBhdQQvA0KpXTeuc3/6CRCSid147Qk4tqA4A0
	FnwrSALwqaD5FlYm7obmssoXLUuq/8LOdrrYSqkTXw6Jv03O/+RvFwVJR0reCHHFswn3Tqgkce0x9
	dTxZ3/xoLkX7HjY1Zz6u9p42kL2U5CBGRt81kcKyzhY2bZef2/Qof3JTv8UOWMhUCMiNVh4DWektb
	qXEw2YDOvBkejf6YZqNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKeO-00000005dpi-3TpC;
	Sun, 18 Oct 2026 06:45:44 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIKeG-00000005dk1-2HrM;
	Sun, 18 Oct 2026 06:45:36 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D5B02602BE;
	Sun, 18 Oct 2026 06:45:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88DAC1F000C5;
	Sun, 18 Oct 2026 06:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792305933;
	bh=Aw3jt4zHNgm4deRIvVS+AZXuU23cUxhaCwFbDt3G//8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=IDTtpgBKYaBm2zaIDQhOZ2PSPkv++aTyX8wVxTj2Q0K4oYfe2P93j8UmQzy8lF96z
	 DUbtyoT9e6jjvvowflopO2xrDud7A/6k90+MWxFWOqOPUVGdheUC5VbHjxVDQb45jP
	 QaUwTFsOn8GIQ0mzFKM0tjGXBHU4ItG8DV4W6eyd/LQWwQLPABkuzuDGL+QJwJY1ex
	 KtxIHmkUVQ0ShJsuOFgWVp63M5Lh811FxiJz14zK5bn7wk+HGEST9FP71tDuGB+k8T
	 K1FdW67lK9RxBnPG4N5JDaWxFeQenCyXH7NsUoxkwKtrc9Q520suhkHwmvhuF191kk
	 Wob3D59UMvzxQ==
Subject: Re: [PATCH net-next v12 4/6] dt-bindings: net: rockchip-dwmac:
 document pcs-handle
From: netdev-bot+sashiko@kernel.org
To: coiaprant@gmail.com
Cc: kuba@kernel.org, netdev@vger.kernel.org, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@kernel.org, pabeni@redhat.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, hkallweit1@gmail.com, linux@armlinux.org.uk,
 david.wu@rock-chips.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Sun, 18 Oct 2026 06:45:32 +0000
Message-ID: <179230593214.3135.8437298852154217978@kernel.org>
In-Reply-To: <20261017054406.1828061-5-coiaprant@gmail.com>
References: <20261017054406.1828061-5-coiaprant@gmail.com>
X-sashiko-severity: Low
MIME-Version: 1.0
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIHJ1bGUgdGhhdCBtYWtlcyBwY3Mt
aGFuZGxlIHJlcXVpcmVkIGlzIHRydWUgZXZlbiB3aGVuIHBoeS0KICBtb2RlIGlzIGFic2VudCwg
YW5kIHRoZSBwYXRjaCBhZGRzIGEgcmVkdW5kYW50IHJ1bGUgdGhhdCB0aGUgY29tbWl04oCmCgot
LQoKZHQtYmluZGluZ3M6IG5ldDogcm9ja2NoaXAtZHdtYWM6IGRvY3VtZW50IHBjcy1oYW5kbGUK
ClRoaXMgYWRkcyBhIHBjcy1oYW5kbGUgcHJvcGVydHkgdG8gdGhlIFJvY2tjaGlwIEdNQUMgYmlu
ZGluZyBmb3IgdGhlIFNHTUlJCnN1cHBvcnQgYWRkZWQgbGF0ZXIgaW4gdGhlIHNlcmllcy4gSXQg
YWxzbyBhZGRzIHR3byBhbGxPZiBydWxlcyBmb3IKcm9ja2NoaXAscmszNTY4LWdtYWMuIFRoZSBm
aXJzdCByZXF1aXJlcyBwaHktbW9kZS4gVGhlIHNlY29uZCByZXF1aXJlcwpwY3MtaGFuZGxlIHdo
ZW4gcGh5LW1vZGUgaXMgInNnbWlpIi4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9uZXQvcm9ja2NoaXAtZHdtYWMueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcm9ja2NoaXAtZHdtYWMueWFtbAo+IGluZGV4IDgwYzI1
Mjg0NTM0OWMuLmM0MzQ0NTBmZDA3ZmYgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sCj4gKysrIGIvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sCgpbIC4uLiBd
Cgo+IEBAIC0xNTksNiArMTY1LDI3IEBAIGFsbE9mOgo+ICAgICAgICAgIGNsb2NrczoKPiAgICAg
ICAgICAgIG1pbkl0ZW1zOiA1Cj4gIAo+ICsgIC0gaWY6Cj4gKyAgICAgIHByb3BlcnRpZXM6Cj4g
KyAgICAgICAgY29tcGF0aWJsZToKPiArICAgICAgICAgIGNvbnRhaW5zOgo+ICsgICAgICAgICAg
ICBjb25zdDogcm9ja2NoaXAscmszNTY4LWdtYWMKPiArICAgIHRoZW46Cj4gKyAgICAgIHJlcXVp
cmVkOgo+ICsgICAgICAgIC0gcGh5LW1vZGUKPiArCj4gKyAgLSBpZjoKPiArICAgICAgcHJvcGVy
dGllczoKPiArICAgICAgICBjb21wYXRpYmxlOgo+ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAg
ICAgICAgICAgIGNvbnN0OiByb2NrY2hpcCxyazM1NjgtZ21hYwo+ICsgICAgICAgIHBoeS1tb2Rl
Ogo+ICsgICAgICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgICAgIGNvbnN0OiBzZ21paQo+ICsg
ICAgdGhlbjoKPiArICAgICAgcmVxdWlyZWQ6Cj4gKyAgICAgICAgLSBwY3MtaGFuZGxlCgpbU2V2
ZXJpdHk6IExvd10KSXMgdGhlIHNnbWlpIGlmIGFib3ZlIHRydWUgd2hlbiBwaHktbW9kZSBpcyBt
aXNzaW5nPwoKSW4gSlNPTiBTY2hlbWEsIGEgcHJvcGVydGllcyBzdWJzY2hlbWEgcGFzc2VzIHdo
ZW4gdGhlIHByb3BlcnR5IGlzIG5vdAp0aGVyZS4gVGhhdCBtZWFucyBhIHJvY2tjaGlwLHJrMzU2
OC1nbWFjIG5vZGUgd2l0aG91dCBwaHktbW9kZSBtYXRjaGVzCnRoaXMgaWYuIEl0IHRoZW4gZ2V0
cyBhICJwY3MtaGFuZGxlIGlzIGEgcmVxdWlyZWQgcHJvcGVydHkiIGVycm9yLCBldmVuCnRob3Vn
aCBub3RoaW5nIHNheXMgdGhlIGxpbmsgaXMgU0dNSUkuCgpUaGUgc3RhbmRhbG9uZSBwaHktbW9k
ZSBibG9jayBiZWZvcmUgaXQgZG9lcyBub3QgbWFrZSB0aGlzIGlmIGZhbHNlLgpFYWNoIGFsbE9m
IGVudHJ5IGlzIGNoZWNrZWQgb24gaXRzIG93biwgc28gdGhhdCBibG9jayBvbmx5IGFkZHMgaXRz
IG93bgplcnJvci4KCklzIHRoZSBzdGFuZGFsb25lIHBoeS1tb2RlIGJsb2NrIG5lZWRlZCBhdCBh
bGw/IHJvY2tjaGlwLWR3bWFjLnlhbWwKYWxyZWFkeSBwdWxscyBpbiBzbnBzLGR3bWFjLnlhbWwg
d2l0aCAiLSAkcmVmOiBzbnBzLGR3bWFjLnlhbWwjIiB1bmRlcgphbGxPZi4gVGhhdCBzY2hlbWEg
YWxyZWFkeSByZXF1aXJlcyBwaHktbW9kZSBhdCB0aGUgdG9wIGxldmVsOgoKRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9zbnBzLGR3bWFjLnlhbWw6CnJlcXVpcmVkOgogIC0g
Y29tcGF0aWJsZQogIC0gcmVnCiAgLSBpbnRlcnJ1cHRzCiAgLSBpbnRlcnJ1cHQtbmFtZXMKICAt
IHBoeS1tb2RlCgpTbyBhbiByazM1NjgtZ21hYyBub2RlIHdpdGggbm8gcGh5LW1vZGUgd291bGQg
Z2V0IHR3byAicGh5LW1vZGUgaXMgYQpyZXF1aXJlZCBwcm9wZXJ0eSIgZXJyb3JzIGFuZCBhIG1p
c2xlYWRpbmcgcGNzLWhhbmRsZSBlcnJvci4KClRoZSBjb21taXQgbWVzc2FnZSBhbHNvIGRvZXMg
bm90IHNheSB0aGF0IHBoeS1tb2RlIGJlY29tZXMgbWFuZGF0b3J5IGZvcgpyazM1NjguIEl0IG9u
bHkgc2F5cyBwY3MtaGFuZGxlIGlzIHJlcXVpcmVkIHdoZW4gcGh5LW1vZGUgaXMgInNnbWlpIi4K
CkNvdWxkIHJlcXVpcmVkOiBbcGh5LW1vZGVdIGdvIGluc2lkZSB0aGUgc2dtaWkgaWYgaW5zdGVh
ZCwgd2hpY2ggaXMgdGhlCnVzdWFsIGlkaW9tPyBUaGUgc3RhbmRhbG9uZSBwaHktbW9kZSBibG9j
ayBjb3VsZCB0aGVuIGJlIGRyb3BwZWQuCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYvc2FzaGlrby8jL3BhdGNoc2V0LzIwMjYxMDE3MDU0
NDA2LjE4MjgwNjEtMS1jb2lhcHJhbnQlNDBnbWFpbC5jb20KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
