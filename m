Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32CBDE95A67
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Oct 2023 19:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WowAqmyveQ0jEZRNhF5vRYZzGf4h9JfCC9/2pV/oWHs=; b=K7mkq8K9o90hzC
	ejU6gJ+I861z9ZnbnYbgwJTIUu+3TXwkbLZkmHvXfwSVKQNFl6Zp5lAp3Q3mKEyG8pzJd/byjVOLd
	aBwBsza6b6Thdc8hGgXXO9JzPTvnUGI6dRrZW5eRolhLEQZWvvWpApctY8/6t2Rs39QBU3olDBRoN
	SM3RYXNv12LvwUR2m+jsvXBqCRTJcxgQ4fQKiBiUPhnlfzIQoLGhBn0oZ+ezqJWWIqHXbGfBrugDd
	0jsA16CGt3CkKAQiG9fJ4X3u2rcXfV2xvE3tk0rfbRnNN+eznJNXDLUevDnJ5Ai2VqfkHMIfEdhi6
	gq77VlrQefbqEWfirLjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpZ1i-0098rW-1f;
	Sun, 08 Oct 2023 19:01:18 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpZ1e-0098q3-0P;
	Sun, 08 Oct 2023 19:01:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696791669; bh=TpDAiO/3M2zwoN0Tlu29z9aRzpua06n2dHZEpvc3rPM=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=AJ4A3iCFuUyW1qY02BnUfDrk/+fa1f68mS8EBfsibMVxbVK5sz6Vf8fFVK9kRkn/M
	 wYmz3CUII0SQ3B1XXbx++a9pXg3UQRdQRB4MxF3wthJEcg8fXg0ZDpbGS0XPAAnyEN
	 Q7LsL9War87Ry/aG1ortCnHPw5G/Zx47bh1hGQy0=
Date: Sun, 8 Oct 2023 21:01:09 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-kernel@vger.kernel.org, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] dt-bindings: mfd: rk806: Allow
 rockchip,system-power-controller property
Message-ID: <gcfmcxlitopwjt2ucu73m64j6kmfuvbpdyptdq7mzltuz56zbn@6ddy6z2dilrj>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, Lee Jones <lee@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20231008142118.1174090-1-megi@xff.cz>
 <20231008185559.ros34cft2dxoewqe@mercury.elektranox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231008185559.ros34cft2dxoewqe@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231008_120114_627335_8449193C 
X-CRM114-Status: GOOD (  17.69  )
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

T24gU3VuLCBPY3QgMDgsIDIwMjMgYXQgMDg6NTU6NTlQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gSGksCj4gCj4gT24gU3VuLCBPY3QgMDgsIDIwMjMgYXQgMDQ6MjE6MTdQTSAr
MDIwMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gPiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdp
QHhmZi5jej4KPiA+IAo+ID4gRGVjbGFyZSBzdXBwb3J0IGZvciB0aGlzIHByb3BlcnR5Lgo+ID4g
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiA+IC0tLQo+
IAo+IFRoaXMgaXMgbWlzc2luZyB0aGUgYWNjb21wYW55aW5nIGRyaXZlciBjaGFuZ2UuIFJpZ2h0
IG5vdwo+IHRoaXMgcHJvcGVydHkgZG9lcyBub3RoaW5nIGZvciByazgwNi4KCkFoLCBJIGFzc3Vt
ZWQgaXQgZG9lcywgYnV0IGxvb2tzIGxpa2UgaXQncyBqdXN0IGltcGxlbWVudGVkIGluIG15IHRy
ZWU6CgpodHRwczovL21lZ291cy5jb20vZ2l0L2xpbnV4L2NvbW1pdC8/aD1wcHAtZHJpdmVycy02
LjYmaWQ9NjM5NDkxOGYzMzlmZGEwYjg5ZjYzZmFhYzRjNGZlMTYyZDVhY2U0MgoKSSdsbCByZS1z
ZW5kIHdpdGggdGhlIGRyaXZlciBwYXRjaC4KClRoYW5rcyBhbmQgcmVnYXJkcywKCW8uCgoKPiAt
LSBTZWJhc3RpYW4KPiAKPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZk
L3JvY2tjaGlwLHJrODA2LnlhbWwgfCA1ICsrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgwNi55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgwNi55YW1sCj4gPiBpbmRleCBjZjI1MDBmMmU5
YTAuLmU4YzlmMTdmNmVhOCAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MDYueWFtbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgwNi55YW1sCj4gPiBAQCAtMjks
NiArMjksMTEgQEAgcHJvcGVydGllczoKPiA+ICAgICcjZ3Bpby1jZWxscyc6Cj4gPiAgICAgIGNv
bnN0OiAyCj4gPiAgCj4gPiArICByb2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlcjoKPiA+
ICsgICAgdHlwZTogYm9vbGVhbgo+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ICsgICAgICBUZWxs
aW5nIHdoZXRoZXIgb3Igbm90IHRoaXMgUE1JQyBpcyBjb250cm9sbGluZyB0aGUgc3lzdGVtIHBv
d2VyLgo+ID4gKwo+ID4gICAgdmNjMS1zdXBwbHk6Cj4gPiAgICAgIGRlc2NyaXB0aW9uOgo+ID4g
ICAgICAgIFRoZSBpbnB1dCBzdXBwbHkgZm9yIGRjZGMtcmVnMS4KPiA+IC0tIAo+ID4gMi40Mi4w
Cj4gPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
