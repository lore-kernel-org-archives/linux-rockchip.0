Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84454C88E72
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 18:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMg8iwPDcOUiZ5+Gma70GW2ZeO8qY/E5fzo4BlOlOCo=; b=4zKnOzZmhNqcFd
	pEFg8gqGxLxZYq+RiMc28EfW9AgXgZ6AefXGbAUAtNndrk2rI3nFb0QtarmgwxqRJWcdabdsQo3W7
	Ibs1vzXgxHk2vUKUmV16YHqu0eBG99f5lj76Z5BJXMcW3Di4vv28XBA5NdHNjRDDkiYNo2WHBrs2v
	1FgjzTIQexh5Ufhl3738dDzmDjjnqFzHfBSgsGQbCQtlBOBhGjQJL7/A+/YlfpmJcFMKv1cbayRrM
	IIbv3JaVxuc71FhplNnFMSjcoYH4uTlG2+XgfKVKGS1bPdHwGawgawDjb9J0lRmgyxjCoruCYUvId
	j3l5JTpdZpjYK559HOvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7H01-0000000CFJ0-0Mxh;
	Thu, 17 Sep 2026 18:38:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Gzq-0000000CFEk-3wYr;
	Thu, 17 Sep 2026 18:38:11 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C194E600D4;
	Thu, 17 Sep 2026 18:38:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E79FA1F00893;
	Thu, 17 Sep 2026 18:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789670289;
	bh=yxebnu98m4tIYnDFX7Ssph7AnvZbMmHlUSJWYuXN+jw=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=Z8ljo9ih31/foT9aRUgqlAoM2YjYSBOuxI8gBJwP/Kq9cRZlpzVPz+gD8By6pVDH+
	 phpLR//Njg7RPEsmD6K2vQ6twMkCjY/oM0yYOSr/uUBICYrgdWueJqYnSv62M/xEKf
	 2j8nOmAdcmOqfSmltzjZr2nGOfjCSGAD5s0Nd32+qIqMJC04ZeFa5IrdmPISufInEQ
	 edztpctqu8vcDcmAothpwmvpXhGM9hWOvP7mqNSEegRXyWsdE7vefFFyj8IWg0uNeA
	 Zdlsm87M79WfTxgPovHPiL7XOfCOvfGKBGBNjavhQWeF9ijBNG7YO55T9EcSKl64y7
	 hkd/CpZs4UEDw==
Subject: Re: [PATCH net-next v6 02/11] dt-bindings: phy: rockchip:
 naneng-combphy: add rockchip,sgmii-mac-sel property
From: netdev-bot+sashiko@kernel.org
To: coiaprant@gmail.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org,
 maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
 romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org,
 linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org
Date: Thu, 17 Sep 2026 18:38:07 +0000
Message-ID: <178967028750.22033.16679846848252928482@kernel.org>
In-Reply-To: <20260915123802.1561724-3-coiaprant@gmail.com>
References: <20260915123802.1561724-3-coiaprant@gmail.com>
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
MSBwb3RlbnRpYWwKaXNzdWUocykgdG8gY29uc2lkZXI6CgpDcml0aWNhbDogMCDCtyBIaWdoOiAw
IMK3IE1lZGl1bTogMCDCtyBMb3c6IDEKCi0gW0xvd10gQ29uY2VybiAodmVyaWZpZWQgRkFMU0Ug
UE9TSVRJVkUsIHJldGFpbmVkIG9ubHkgcGVyIHZhbGlkYXRpb24KICBwb2xpY3kpOiB0aGUgYmlu
ZGluZyB3YXMgc2FpZCB0byBkb2N1bWVudCBgcm9ja2NoaXAsc2dtaWktbWFjLXNlbGDigKYKCi0t
CgpkdC1iaW5kaW5nczogcGh5OiByb2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IGFkZCByb2NrY2hp
cCxzZ21paS1tYWMtc2VsIHByb3BlcnR5CgpUaGlzIGFkZHMgYW4gb3B0aW9uYWwgdWludDMyIHBy
b3BlcnR5IHJvY2tjaGlwLHNnbWlpLW1hYy1zZWwgdG8gdGhlCm5hbmVuZy1jb21icGh5IGJpbmRp
bmcsIGdhdGVkIHNvIGl0IGlzIG9ubHkgYWNjZXB0ZWQgZm9yCnJvY2tjaGlwLHJrMzU2OC1uYW5l
bmctY29tYnBoeS4gIFRoZSB2YWx1ZSBzZWxlY3RzIHdoZXRoZXIgU0dNSUkgaXMgcm91dGVkCnRv
IEdNQUMwICgwKSBvciBHTUFDMSAoMSksIHdpdGggMSBkb2N1bWVudGVkIGFzIHRoZSBoYXJkd2Fy
ZSByZXNldCB2YWx1ZS4KCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS55
YW1sCj4gaW5kZXggMzc5YjA4YmQ5ZTk3YS4uOGU4OThiY2U5YWY3MyAxMDA2NDQKPiAtLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1uYW5lbmct
Y29tYnBoeS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bo
eS9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkueWFtbAo+IEBAIC04MCw2ICs4MCwxNSBAQCBw
cm9wZXJ0aWVzOgo+ICAgICAgZGVzY3JpcHRpb246Cj4gICAgICAgIFNvbWUgYWRkaXRpb25hbCBw
aXBlIHNldHRpbmdzIGFyZSBhY2Nlc3NlZCB0aHJvdWdoIEdSRiByZWdzLgo+ICAKPiArICByb2Nr
Y2hpcCxzZ21paS1tYWMtc2VsOgo+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVm
aW5pdGlvbnMvdWludDMyCj4gKyAgICBlbnVtOiBbMCwgMV0KPiArICAgIGRlZmF1bHQ6IDEKPiAr
ICAgIGRlc2NyaXB0aW9uOgo+ICsgICAgICBTZWxlY3QgZ21hYzAgb3IgZ21hYzEgdG8gYmUgdXNl
ZCBhcyBTR01JSSBjb250cm9sbGVyLgo+ICsgICAgICBUaGUgaGFyZHdhcmUgcmVzZXQgdmFsdWUg
aXMgR01BQzEgKDEpLiBTZXQgdGhpcyB0byAwIHRvIHJvdXRlCj4gKyAgICAgIFNHTUlJIHRvIEdN
QUMwLgo+ICsKCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBqdXN0IGEgbm90ZSBv
biBwYXRjaCBvcmRlcmluZyBmb3IgYW55b25lIHJlYWRpbmcgdGhpcwpwYXRjaCBvbiBpdHMgb3du
OiBhdCB0aGlzIGNvbW1pdCB0aGVyZSBpcyBubyBpbi10cmVlIGNvbnN1bWVyIG9mCnJvY2tjaGlw
LHNnbWlpLW1hYy1zZWwgeWV0LCBzbyB0aGUgbmV3IEFCSSBsb29rcyBpbmVydCBoZXJlLgoKQ2hl
Y2tpbmcgdGhlIHJlc3Qgb2YgdGhlIHNlcmllcywgdGhlIGNvbnN1bWVyIGRvZXMgYXJyaXZlIGlt
bWVkaWF0ZWx5CmFmdGVyIGluICJwaHk6IHJvY2tjaGlwOiBuYW5lbmctY29tYnBoeTogYWRkIFNH
TUlJIE1BQyBzZWxlY3Rpb24gZm9yClJLMzU2OCIsIHdoaWNoIHBhcnNlcyB0aGUgcHJvcGVydHkg
aW4gcm9ja2NoaXBfY29tYnBoeV9wYXJzZV9kdCgpOgoKICAgIHByaXYtPnNnbWlpX21hY19zZWwg
PSAxOwogICAgZGV2aWNlX3Byb3BlcnR5X3JlYWRfdTMyKGRldiwgInJvY2tjaGlwLHNnbWlpLW1h
Yy1zZWwiLCAmcHJpdi0+c2dtaWlfbWFjX3NlbCk7CgphbmQgYXBwbGllcyBpdCBpbiB0aGUgUEhZ
X1RZUEVfU0dNSUkgYnJhbmNoIG9mIHJrMzU2OF9jb21icGh5X2NmZygpOgoKICAgIHJvY2tjaGlw
X2NvbWJwaHlfcGFyYW1fd3JpdGUocHJpdi0+cGlwZV9ncmYsICZjZmctPnBpcGVfc2dtaWlfbWFj
X3NlbCwKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJpdi0+c2dtaWlfbWFjX3Nl
bCA+IDApOwoKd2l0aCB0aGUgUkszNTY4IGRlc2NyaXB0b3IgLnBpcGVfc2dtaWlfbWFjX3NlbCA9
IHsgMHgwMDQwLCAxLCAxLCAweDAwLCAweDAxIH0sCmFuZCB0aGUgUGhvdG9uaWNhdCBEVCBwYXRj
aCB0aGVuIHNldHMgcm9ja2NoaXAsc2dtaWktbWFjLXNlbCA9IDwwPiBvbgomY29tYnBoeTIuICBT
byB0aGUgR01BQzAgcm91dGluZyBkb2VzIHdvcmsgYXQgdGhlIGVuZCBvZiB0aGUgc2VyaWVzIGFu
ZAp0aGVyZSBpcyBub3RoaW5nIHRvIGZpeDsgd291bGQgaXQgYmUgd29ydGggbWVudGlvbmluZyB0
aGUgZHJpdmVyIHBhdGNoIGluCnRoaXMgY29tbWl0IG1lc3NhZ2Ugc28gdGhlIGRlcGVuZGVuY3kg
aXMgb2J2aW91cyB3aGVuIHRoZSBiaW5kaW5nIGlzCnJldmlld2VkIGluIGlzb2xhdGlvbj8KCj4g
WyAuLi4gXQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vbmV0ZGV2LWFpLmJvdHMu
bGludXguZGV2L3Nhc2hpa28vIy9wYXRjaHNldC8yMDI2MDkxNTEyMzgwMi4xNTYxNzI0LTEtY29p
YXByYW50JTQwZ21haWwuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
