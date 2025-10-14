Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A99E4CCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 09:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZdOf2WxDyuCVcPMj31t5ulyh4W+KANzE3moG/C9VfKg=; b=uAHlDLr357DV16
	L5qG1B5n9iCkbgvFmsfTfNiwyq/LanZ+L+nPzfgDFWsGcjtCQVq/yytChETOnnyJgqWkMyxK7UVFh
	z7qNkHUXvDoX1dkoMOSMyuVrxgSsjtE+7z3TaKbTypF/d9E3XX9/pgiYOtkAz2IXq49NmgCRbYv3X
	notrhws2ALQ1l9J2qy4mFt69xdiwk4wssg+oweVIYEmozfXnDxuQUG2IbK9MsUru2cC/Q9x7I2FcH
	9e4nycPLgiHR5qlBxb4y/hnbF6H2tfrtTV1TxtC7kD26KHAd62+9LKQ02jUhDP4x5W9mdcrA7SBoK
	p1erhqFJjxmJ7/hEw8Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bVl-0000000FmiC-1PXL;
	Tue, 14 Oct 2025 09:40:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bVi-0000000FmhN-1OLM;
	Tue, 14 Oct 2025 09:40:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WG2IH1ZK8qb6TTcf7dxksUZjA+HIDL6UEjkoAAD0oRU=; b=2LbcdrcB2kDESjcRFs7It7jalT
	SttAJIKLX3es8jlGcb/a1lIxcRoiC/29xgFYiK4SquCyIFhsd6Tn748Xe8o5t3e482n8r4Ei+Kkrw
	Xemz3yO0ehVrdx5yaNoAyHWlR3p2zKzf6Cr/Cp+a+Cd4/Kve2P8E1AxWnjPNnx2rCipVQoj5D8sfx
	JHMc9CehITs4a5gaDA6qsPUa6FCHjTnD957wN0z2PTT7wZnB2EybJgFSUXkB7jiy+TeY0Q0PZbFV6
	gSUr4nkRo9zKS+1tX75Pw3AWij/FVu5sLG5KBFlpi9jUg3tOANDGy+TLGCmHILQfcpv4pXOXP/ada
	E7FZA0VA==;
Received: from i53875b75.versanet.de ([83.135.91.117] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v8bVe-000662-1y; Tue, 14 Oct 2025 11:39:58 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>, chf.fritz@googlemail.com
Cc: Sandy Huang <hjc@rock-chips.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] drm/rockchip: rk3288-lvds: honor DCLK edge via GRF CON15
Date: Tue, 14 Oct 2025 11:39:57 +0200
Message-ID: <1983151.taCxCBeP46@diego>
In-Reply-To: <9dd924871a81364a922131461339dec2a45d434e.camel@googlemail.com>
References: <9dd924871a81364a922131461339dec2a45d434e.camel@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_024002_372252_28FFE448 
X-CRM114-Status: GOOD (  15.60  )
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

SGkgQ2hyaXN0b3BoLAoKQW0gTW9udGFnLCAxNS4gU2VwdGVtYmVyIDIwMjUsIDE5OjM1OjIyIE1p
dHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQ2hyaXN0b3BoIEZyaXR6Ogo+IFNl
dCB0aGUgRENMSyBlZGdlIChub3JtYWwgb3IgaW52ZXJ0KSB2aWEgR1JGX1NPQ19DT04xNSB3aGVu
IHRoZSBzcGVjaWZpYwo+IGRybV9idXNfZmxhZyBpcyBlbmFibGVkLiBLZWVwIHRyYWNrIG9mIHRo
ZSB2b3Agc291cmNlIGluIHVzZSBzbyB0aGF0IHRoZQo+IHJpZ2h0IERDTEsgKEJJRzogZGNsazAg
b3IgTElUOiBkY2xrMSkgZ2V0cyBzZXQuCj4gCj4gVGhpcyBjaGFuZ2UgaXMgZXNwZWNpYWxseSBu
ZWNlc3NhcnkgZm9yIFJHQiBvdXRwdXQgY29uZmlndXJhdGlvbnMgdG8KPiBhY3R1YWxseSBwcm9w
YWdhdGUgdGhlIERDTEsgaW52ZXJzaW9uLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzdG9waCBG
cml0eiA8Y2hmLmZyaXR6QGdvb2dsZW1haWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jIHwgMTcgKysrKysrKysrKysrKysrKysKPiAgZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuaCB8ICA0ICsrKysKPiAgMiBmaWxlcyBj
aGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9j
a2NoaXBfbHZkcy5jCj4gaW5kZXggMjQxMTI2MGRiNTFkNy4uMDg3ODRjM2VjZjcwMyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2x2ZHMuYwo+IEBAIC0yMzUsOCArMjM2
LDExIEBAIHN0YXRpYyBpbnQgcmszMjg4X2x2ZHNfZ3JmX2NvbmZpZyhzdHJ1Y3QgZHJtX2VuY29k
ZXIgKmVuY29kZXIsCj4gIAkJCQkgIHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKQo+ICB7
Cj4gIAlzdHJ1Y3Qgcm9ja2NoaXBfbHZkcyAqbHZkcyA9IGVuY29kZXJfdG9fbHZkcyhlbmNvZGVy
KTsKPiArCXUzMiBidXNfZmxncyA9IGx2ZHMtPmNvbm5lY3Rvci5kaXNwbGF5X2luZm8uYnVzX2Zs
YWdzOwo+ICsJdTggY29uMTVfZGNsayA9IChidXNfZmxncyAmIERSTV9CVVNfRkxBR19QSVhEQVRB
X0RSSVZFX05FR0VER0UpID8gMSA6IDA7Cj4gIAl1OCBwaW5faHN5bmMgPSAobW9kZS0+ZmxhZ3Mg
JiBEUk1fTU9ERV9GTEFHX1BIU1lOQykgPyAxIDogMDsKPiAgCXU4IHBpbl9kY2xrID0gKG1vZGUt
PmZsYWdzICYgRFJNX01PREVfRkxBR19QQ1NZTkMpID8gMSA6IDA7Cj4gKwl1bnNpZ25lZCBpbnQg
Y29uMTVfZGNsa19tYXNrOwoKSSB0aGluayB0aGUgdmFyaWFibGVzIG1pZ2h0IGJlIG5pY2VyIG5h
bWVkIGFzIGRjbGtfaW52IGFuZCBkY2xrX2ludl9tYXNrCmluc3RlYWQgb2YgcmVmZXJlbmNpbmcg
dGhlIHRoYXQgY29uMTUgdGhpbmcuCgpCdXQgb24gdGhlIG1vcmUgaW1wb3J0YW50IHNpZGUKCiAg
Q0MgW01dICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfbHZkcy5vCi4uL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmM6IEluIGZ1bmN0aW9uIOKAmHJrMzI4
OF9sdmRzX2dyZl9jb25maWfigJk6Ci4uL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9sdmRzLmM6MjM5OjI4OiBlcnJvcjog4oCYc3RydWN0IHJvY2tjaGlwX2x2ZHPigJkgaGFzIG5v
IG1lbWJlciBuYW1lZCDigJhjb25uZWN0b3LigJkKICAyMzkgfCAgICAgICAgIHUzMiBidXNfZmxn
cyA9IGx2ZHMtPmNvbm5lY3Rvci5kaXNwbGF5X2luZm8uYnVzX2ZsYWdzOwogICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIF5+CgpiZWNhdXNlIG9mIGNvbW1pdCA0MGEzODJhYWUxZDQg
KCJkcm0vcm9ja2NoaXA6IGx2ZHM6IENvbnZlcnQgdG8gZHJtIGJyaWRnZSIpLgoKU28geW91J2xs
IG5lZWQgdG8gYWRhcHQgdG8gdGhhdCBjaGFuZ2UuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
