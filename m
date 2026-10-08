Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7D00CA600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 16:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C61hHP4bdxuK7YpXoFa2nt+/vqdi/AX4B3XnbwDl+Bo=; b=PEBm62aoyoPaBF
	KpgIH7+0wvfY6oT4RbxP22VB/+864yPPMfbr/t7h8e1KTnz0xlxE4tkRZE+AXmITZZBcmdvzOXQGL
	9UlaOIALVMIWiNtfSygPWrvvDdB2hf6gVR070ZPG8xUZHtr3ARDulTonet3xoojBBtNJINaZu6EWA
	ijWSKGKwAs37EAiyEZj6nMrw9bcbxgNTHXeu9GSWGJ+LCG1K3zbybAX7Va9fakE80IuKXIzzyAnKH
	aEWWdPWxlAVruOH9cuVmgsF90cveIXBCyp85lIAoyPMnrIOQvrsRDEEnx486aKBvahVqHW0j/FrzX
	Y/doZIwMAqZOFMyHa0ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEr39-00000004hLC-2d9e;
	Thu, 08 Oct 2026 16:32:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEr37-00000004hKA-3VxX;
	Thu, 08 Oct 2026 16:32:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ED11A60A74;
	Thu,  8 Oct 2026 16:32:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9AE031F000FF;
	Thu,  8 Oct 2026 16:32:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791477172;
	bh=vOmhtgpp0CunsN7e7nTP80xujGK1hi9KxA+e2Q5Bid0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=ZrIv3h6uHbT7jpD/++Tbd99EhBLTIXx/iEToD8YKEUGJ0YmDpGUOCBe/rAwePrP4P
	 c6k5m/VX+1k1bl2eyzFSrOgzXFnU6c0BmHT9Og0C3Jsfm1fx8W7zQTJW0vbTTjqcxO
	 wWh/txaYR7j5Doys2nX9VEs0xXBeR/ZbW6LgWaDMrrce+qqRTvNwg1XmWptLAxT8yG
	 4yjEcVBi4j+T9pARmbJgo57sxe69VrDvEGdLQ/R8iJ2qytGwtYh8g7OyZaoRYvaf5F
	 dexO212QCB14qQ6+ncvh02ME0vMaIUlD45Afl3ciXJvbVYtse6Gh5I3Mget2wpJOyi
	 Et45NHqzkBCoA==
Subject: Re: [PATCH net-next v10 1/6] dt-bindings: net: pcs: add
 rockchip,rk3568-xpcs support
From: netdev-bot+sashiko@kernel.org
To: coiaprant@gmail.com
Cc: kuba@kernel.org, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, maxime.chevallier@bootlin.com,
 hkallweit1@gmail.com, linux@armlinux.org.uk, david.wu@rock-chips.com,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Thu, 08 Oct 2026 16:32:51 +0000
Message-ID: <179147717113.434549.5384797662065196680@kernel.org>
In-Reply-To: <20261005223011.1124347-2-coiaprant@gmail.com>
References: <20261005223011.1124347-2-coiaprant@gmail.com>
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
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIG5ldyBiaW5kaW5nCiAgRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9wY3Mvcm9ja2NoaXAscmszNTY4LXhwY3Mu
eWFtbOKApgoKLS0KCmR0LWJpbmRpbmdzOiBuZXQ6IHBjczogYWRkIHJvY2tjaGlwLHJrMzU2OC14
cGNzIHN1cHBvcnQKClRoaXMgYWRkcyBhIG5ldyBiaW5kaW5nIGZvciB0aGUgU3lub3BzeXMgRGVz
aWduV2FyZSBYUENTIG9uIHRoZSBSb2NrY2hpcApSSzM1NjggU29DLiBUaGUgWFBDUyBzaXRzIG9u
IHRoZSBBUEIzIGJ1cywgY29ubmVjdHMgdG8gYSBOYW5lbmcgQ29tYm8KU2VyRGVzIFBIWSwgYW5k
IGV4cG9zZXMgZm91ciBNSUkgcG9ydHMgYXMgZXRoZXJuZXQtcGNzLW1paUBOIGNoaWxkIG5vZGVz
LgpUaGUgY29tbWl0IG1lc3NhZ2Ugc2F5cyB0aGUgQ1JVIHJlc2V0IGxpbmVzIGFyZSBsZWZ0IG91
dCBvbiBwdXJwb3NlLgoKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL25ldC9wY3Mvcm9ja2NoaXAscmszNTY4LXhwY3MueWFtbCBiL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcGNzL3JvY2tjaGlwLHJrMzU2OC14cGNzLnlhbWwKPiBu
ZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMDAuLjcwM2ZjZmYwZTNmNzAK
PiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25ldC9wY3Mvcm9ja2NoaXAscmszNTY4LXhwY3MueWFtbAoKWyAuLi4gXQoKPiArICBwaHlzOgo+
ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgcGh5LW5hbWVzOgo+ICsgICAgY29uc3Q6IHNlcmRl
cwo+ICsKPiArICBwb3dlci1kb21haW5zOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCgpbIC4uLiBd
Cgo+ICtyZXF1aXJlZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtIHJlZwo+ICsgIC0gIiNhZGRy
ZXNzLWNlbGxzIgo+ICsgIC0gIiNzaXplLWNlbGxzIgo+ICsgIC0gY2xvY2tzCj4gKyAgLSBjbG9j
ay1uYW1lcwo+ICsgIC0gcGh5cwo+ICsgIC0gcGh5LW5hbWVzCj4gKyAgLSBwb3dlci1kb21haW5z
Cj4gKwo+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKCltTZXZlcml0eTogTG93XQpTaG91
bGQgdGhpcyBiaW5kaW5nIGRlc2NyaWJlIHRoZSBYUENTIHJlc2V0IGlucHV0cz8gVGhlIENSVSBi
aW5kaW5nCmhlYWRlciBhbHJlYWR5IGhhcyBmb3VyIHJlc2V0IElEcyBmb3IgdGhpcyBibG9jazoK
CmluY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcmszNTY4LWNydS5oOgojZGVmaW5lIFNSU1RfWFBD
UwkJMTUwCiNkZWZpbmUgU1JTVF9YUENTX1RYX0RJVjEwCTE1MQojZGVmaW5lIFNSU1RfWFBDU19S
WF9ESVYxMAkxNTIKI2RlZmluZSBTUlNUX1hQQ1NfWEdYU19SWAkxNTMKClRoZSBjb21taXQgbWVz
c2FnZSBnaXZlcyB0aGlzIHJlYXNvbiBmb3IgbGVhdmluZyB0aGVtIG91dDoKCiAgVGhlIENSVSBy
ZXNldCBsaW5lcyAoU1JTVF9YUENTKikgYXJlIGludGVudGlvbmFsbHkgbm90IGRlc2NyaWJlZDog
bm8KICBpbi10cmVlIHVzZXIgcmVxdWVzdHMgdGhlbSwgYW5kIGJyaW5nLXVwIHJlbGllcyBvbiB0
aGUgUERfUElQRSBwb3dlcgogIGRvbWFpbiwgdGhlIFNlckRlcyBQSFkgYW5kIHRoZSBpbi1JUCBz
b2Z0IHJlc2V0LgoKVGhhdCByZWFzb24gaXMgYmFzZWQgb24gd2hhdCBkcml2ZXJzIHVzZSB0b2Rh
eSwgbm90IG9uIHdoYXQgdGhlIGhhcmR3YXJlCmhhcy4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3dyaXRpbmctYmluZGluZ3MucnN0IHNheXM6CgogIERPIGF0dGVtcHQgdG8gbWFr
ZSBiaW5kaW5ncyBjb21wbGV0ZSBldmVuIGlmIGEgZHJpdmVyIGRvZXNuJ3Qgc3VwcG9ydAogIHNv
bWUgZmVhdHVyZXMuCgpUaGUgc2NoZW1hIGhhcyBubyByZXNldHMgb3IgcmVzZXQtbmFtZXMgcHJv
cGVydHkgYW5kIGVuZHMgd2l0aAphZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UuIEEgRFQgdGhh
dCBmdWxseSBkZXNjcmliZXMgdGhlIGhhcmR3YXJlIHdpdGgKc29tZXRoaW5nIGxpa2UgcmVzZXRz
ID0gPCZjcnUgU1JTVF9YUENTPiwgLi4uIHdvdWxkIHRoZW4gZmFpbApkdF9iaW5kaW5nX2NoZWNr
IGFuZCBkdGJzX2NoZWNrLgoKVGhlIGluLUlQIHNvZnQgcmVzZXQgYWxzbyBvbmx5IGFjdHMgaW5z
aWRlIHRoZSBQQ1MgcmVnaXN0ZXIgYmxvY2suIEl0CmRvZXMgbm90IGFwcGVhciB0byBjb3ZlciB0
aGUgVFgvUlggZGl2MTAgb3IgWEdYUyBSWCByZXNldCBkb21haW5zLgoKQ291bGQgcmVzZXRzIGFu
ZCByZXNldC1uYW1lcyBiZSBhZGRlZCBub3csIGV2ZW4gYXMgb3B0aW9uYWwgcHJvcGVydGllcz8K
Ck9uIGEgcmVsYXRlZCBwb2ludCB0aGF0IEkgaGF2ZSBub3QgYmVlbiBhYmxlIHRvIGNvbmZpcm06
IHRoZSBnZW5lcmljCnNucHMsZHcteHBjcyBiaW5kaW5nIGRvY3VtZW50cyBhbiBzYmRfaW50cl9v
IGludGVycnVwdHMgb3V0cHV0LCBhbmQKYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlIGFsc28g
cmVqZWN0cyB0aGF0IGhlcmUuIERvZXMgUkszNTY4IHJvdXRlCnRoYXQgaW50ZXJydXB0IHRvIHRo
ZSBHSUM/IElmIGl0IGRvZXMsIHNob3VsZCBpbnRlcnJ1cHRzIGJlIGxpc3RlZCB0b28/CgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYvc2Fz
aGlrby8jL3BhdGNoc2V0LzIwMjYxMDA1MjIzMDExLjExMjQzNDctMS1jb2lhcHJhbnQlNDBnbWFp
bC5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
