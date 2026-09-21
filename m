Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6865C982E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 23:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x3PHkjbrBJibwuCtkvSnyV8QqGm+hM+OiyY7PD0uaQk=; b=YhMqOtr1pSkMMV
	BI5JxQgrrlIdFiBGhfV0QOTlNDWvuA6x4Z3ORoJtABoePg8kO8lZC/M20zpxCHfUIH0qmjeq4zzue
	iFIVHzBjgr5T6RUUVrz7+2l2I90y69h60QUd3EFDoklMrvPgIZ/h4JxQIK4R+6VkJzKeh77/f89Vj
	BnSyCDIq8MqOqg6ooC+l09+QLyDElHDjC7XlRm5fo9JRUbCeYitvpPlI+zRvVbydqErxeOcJhDgvx
	x/ZTP06trPeCARMbpo/1VbtslgRkEjU7dhdyWb8WitIUXCXm29wYD01gR0cYbnAlHYO1Xod3ZZJYO
	nyW+C4CeC+QBs6HJkn6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8nfs-00000003hRc-136b;
	Mon, 21 Sep 2026 23:43:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8nfg-00000003hL2-2prR;
	Mon, 21 Sep 2026 23:43:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D2C0360235;
	Mon, 21 Sep 2026 23:43:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D79FC1F00893;
	Mon, 21 Sep 2026 23:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790034219;
	bh=YI29IQP2xezR62b+5zBXyIijN6X8d17e5umPu2y3XFs=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=VF6G0PmE1pYi7UpVqfg4pDWKTKj2ibBF/5FgWEtffUfTe90hAG7dyjixUqPHd3g0M
	 9+KOOU1DSTaNCsbpIfOpNK1Hih84qE/B3dIa8AiW9LYdqtBW2z6xHxhsGUPX+4m7WR
	 zSu6sps/VJlbLAj7bacp5Jv4zrN1zEyapITC7mAV8nSiiRdyWOJ8KoddklmfnQA785
	 AMop2h4PTO/NWm1XUS4hH/VDaCxUoxxT0mkwpEFOMehjLnAmT+1ob0tKuvjfEjL7Y6
	 yW8MCXH+8miIENqPP8sLWgUejIEikfHexhcNJi2qhjuZYzpYeET+Rv5OqmNeL5vNar
	 gHBEXO6kHHYhA==
Subject: Re: [PATCH net-next v7 02/11] dt-bindings: phy: rockchip:
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
Date: Mon, 21 Sep 2026 23:43:37 +0000
Message-ID: <179003421738.2160803.13963773583177622439@kernel.org>
In-Reply-To: <20260917204624.2427486-3-coiaprant@gmail.com>
References: <20260917204624.2427486-3-coiaprant@gmail.com>
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
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gQ29uY2VybiB0aGF0IHRoZSBuZXdseSBk
b2N1bWVudGVkIGByb2NrY2hpcCxzZ21paS1tYWMtc2VsYAogIHByb3BlcnR5IGhhcyBubyBpbi10
cmVlIGNvbnN1bWVyLCBzbyBhIERUIHNldHRpbmcgYHJvY2tjaGlwLHNnbWlpLW1hYy3igKYKCi0t
CgpkdC1iaW5kaW5nczogcGh5OiByb2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IGFkZCByb2NrY2hp
cCxzZ21paS1tYWMtc2VsIHByb3BlcnR5CgpUaGlzIGFkZHMgYW4gb3B0aW9uYWwgcm9ja2NoaXAs
c2dtaWktbWFjLXNlbCBwcm9wZXJ0eSB0byB0aGUgbmFuZW5nLWNvbWJwaHkKYmluZGluZyBzbyB0
aGF0IGEgZGV2aWNlIHRyZWUgY2FuIHNlbGVjdCB3aGV0aGVyIHRoZSBSSzM1NjggU0dNSUkgbGFu
ZSBpcwpyb3V0ZWQgdG8gR01BQzAgb3IgR01BQzEgdmlhIHRoZSBwaXBlX3NnbWlpX21hY19zZWwg
R1JGIGJpdC4gIFRoZSBwcm9wZXJ0eQppcyByZXN0cmljdGVkIHRvIHRoZSB2YWx1ZXMgMCBhbmQg
MSwgd2l0aCBhIGRvY3VtZW50ZWQgZGVmYXVsdCBvZiAxLCBhbmQgaXMKYWxsb3dlZCBvbmx5IGZv
ciB0aGUgY29tcGF0aWJsZSBoYW5kbGVkIGJ5IHRoZSBzdXJyb3VuZGluZyBpZiBibG9jay4KCj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LXJv
Y2tjaGlwLW5hbmVuZy1jb21icGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS55YW1sCj4gaW5kZXggMzc5YjA4
YmQ5ZTk3YS4uOGU4OThiY2U5YWY3MyAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS55YW1sCj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHktcm9ja2NoaXAtbmFu
ZW5nLWNvbWJwaHkueWFtbAo+IEBAIC04MCw2ICs4MCwxNSBAQCBwcm9wZXJ0aWVzOgo+ICAgICAg
ZGVzY3JpcHRpb246Cj4gICAgICAgIFNvbWUgYWRkaXRpb25hbCBwaXBlIHNldHRpbmdzIGFyZSBh
Y2Nlc3NlZCB0aHJvdWdoIEdSRiByZWdzLgo+ICAKPiArICByb2NrY2hpcCxzZ21paS1tYWMtc2Vs
Ogo+ICsgICAgJHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvdWludDMyCj4g
KyAgICBlbnVtOiBbMCwgMV0KPiArICAgIGRlZmF1bHQ6IDEKPiArICAgIGRlc2NyaXB0aW9uOgo+
ICsgICAgICBTZWxlY3QgZ21hYzAgb3IgZ21hYzEgdG8gYmUgdXNlZCBhcyBTR01JSSBjb250cm9s
bGVyLgo+ICsgICAgICBUaGUgaGFyZHdhcmUgcmVzZXQgdmFsdWUgaXMgR01BQzEgKDEpLiBTZXQg
dGhpcyB0byAwIHRvIHJvdXRlCj4gKyAgICAgIFNHTUlJIHRvIEdNQUMwLgoKW1NldmVyaXR5OiBM
b3ddClRoaXMgaXNuJ3QgYSBidWcsIGp1c3QgYSBub3RlIGZvciB0aGUgcmVjb3JkIGluIGNhc2Ug
YW55b25lIGxvb2tzIGF0IHRoaXMKY29tbWl0IGluIGlzb2xhdGlvbi4KCkF0IHRoaXMgY29tbWl0
IGFsb25lIHRoZXJlIGlzIG5vIGNvbnN1bWVyIG9mIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWwgaW4K
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMsIHNvIGEg
ZGV2aWNlIHRyZWUgd2l0aApyb2NrY2hpcCxzZ21paS1tYWMtc2VsID0gPDA+IHdvdWxkIHBhc3Mg
ZHRfYmluZGluZ19jaGVjayBhbmQgcHJvYmUgd2hpbGUgdGhlClNHTUlJIGxhbmUgc3RheXMgcm91
dGVkIHRvIEdNQUMxLgoKVGhlIGZvbGxvd2luZyBwYXRjaCBpbiB0aGUgc2VyaWVzLCAicGh5OiBy
b2NrY2hpcDogbmFuZW5nLWNvbWJwaHk6IGFkZCBTR01JSQpNQUMgc2VsZWN0aW9uIGZvciBSSzM1
NjgiLCBhZGRzIHRoZSBjb25zdW1lcjoKCiAgcm9ja2NoaXBfY29tYnBoeV9wYXJzZV9kdCgpIHsK
ICAgICAgLi4uCiAgICAgIHByaXYtPnNnbWlpX21hY19zZWwgPSAxOwogICAgICBkZXZpY2VfcHJv
cGVydHlfcmVhZF91MzIoZGV2LCAicm9ja2NoaXAsc2dtaWktbWFjLXNlbCIsICZwcml2LT5zZ21p
aV9tYWNfc2VsKTsKICAgICAgLi4uCiAgfQoKICByazM1NjhfY29tYnBoeV9jZmcoKSB7CiAgICAg
IC4uLgogICAgICBjYXNlIFBIWV9UWVBFX1NHTUlJOgogICAgICAgICAgcm9ja2NoaXBfY29tYnBo
eV9wYXJhbV93cml0ZShwcml2LT5waXBlX2dyZiwgJmNmZy0+cGlwZV9zZ21paV9tYWNfc2VsLAog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwcml2LT5zZ21paV9tYWNfc2Vs
ID4gMCk7CiAgICAgIC4uLgogIH0KClRoZSAwLzEgZW5jb2RpbmcgYW5kIHRoZSBkZWZhdWx0IG9m
IDEgaW4gdGhlIHNjaGVtYSBtYXRjaCB0aGF0IGRyaXZlciBjb2RlLAphbmQgYmluZGluZ3MtYmVm
b3JlLWRyaXZlciBpcyB0aGUgZXhwZWN0ZWQgc3VibWlzc2lvbiBvcmRlciwgc28gbm90aGluZyBu
ZWVkcwpjaGFuZ2luZyBoZXJlLgoKPiArCj4gICAgIiNwaHktY2VsbHMiOgo+ICAgICAgY29uc3Q6
IDEKPiAgCgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9uZXRkZXYt
YWkuYm90cy5saW51eC5kZXYvc2FzaGlrby8jL3BhdGNoc2V0LzIwMjYwOTE3MjA0NjI0LjI0Mjc0
ODYtMS1jb2lhcHJhbnQlNDBnbWFpbC5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
