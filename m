Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B811C982E6
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 23:44:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZUYr8icyV2Ify/zv7fQMvAR48xR2EC1EHtAfX0g4Kzw=; b=0HwiGPcJ+0MPxS
	Mojqw59Tz8paZR+sIFWC+3ar6mI+vt4Mu0a2GCb7k42MXbGIWRxgP7v4QeCo+OXEMunPwfqY1SLIf
	v/zQ/fVsrrB6DZKs53DObXlqPFyPZdrsWnccwkGkYF6OD8HM3CfKh8prcTecrn+3abwzeLuhiPZvS
	rNqYsNGvs1OtpoZqtrVo+HMIb4Rh/r0rwNAUldem4446Nw98akF87V1aYMrOeTtQkXn9KoJKkQqXs
	XnVo0W3qTpcNsi62rEuWVeR6qLZ0UNprdD7Zw0NfpNT03dXoJ2Titb1gtyH3sFqUQfqceoNeTlDvL
	pQLDR/NgW6hGrxmduUxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8ngs-00000003i8t-2gRA;
	Mon, 21 Sep 2026 23:44:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8nfs-00000003hRp-2Yew;
	Mon, 21 Sep 2026 23:43:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B85440E26;
	Mon, 21 Sep 2026 23:43:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1E211F0089C;
	Mon, 21 Sep 2026 23:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790034232;
	bh=Dju3+S6OUKK1WseHTuR/piRFLe87JxUt0W2aIyTXBpA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=MgxPIqsOU1REpixYxa96+IORbVp6Tfd7AxMK0tmm/0cZ2aOxEycf8zX1drqBzeh57
	 dd5TD8jzq9pQXMdVUx1jU97L9dZy2NXLjjp3Op8LMkiO47sfHLFtt8zQgBOeRX2a7u
	 PEmTeDSE40l9VfplmQ4FxQnfWyC2IIlgnR0/dJstnvb7j+ouadQwUt3u5rLfup8R6P
	 OGx8GL/GReRuhavMLID+WImU0vO1HJaWHyB1alsiwPVqS1/WC4eIF94nDkKY/1U8aF
	 2khhtiWIx8cYJaG2lniLkxu8twsyi/SlSdNeelWBXrokljXoAYTMqg2upvqeOHeqhW
	 SpZfARksSZO+A==
Subject: Re: [PATCH net-next v7 08/11] dt-bindings: net: rockchip-dwmac:
 document pcs-handle
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
Date: Mon, 21 Sep 2026 23:43:50 +0000
Message-ID: <179003423043.2160803.14939298320345950361@kernel.org>
In-Reply-To: <20260917204624.2427486-9-coiaprant@gmail.com>
References: <20260917204624.2427486-9-coiaprant@gmail.com>
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
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gQ29uY2VybiAoSU5WQUxJREFURUQpOiB0
aGUgY29tbWl0IG1lc3NhZ2UgY2xhaW1zIGBwY3MtaGFuZGxlYAogICJ3aWxsIGJlIHBhcnNlZCBi
eSBya19wY3NfaW5pdCgpLCBhbmQgYSBtaXNzaW5nIHBoYW5kbGUgZmFpbHMgdGhl4oCmCgotLQoK
ZHQtYmluZGluZ3M6IG5ldDogcm9ja2NoaXAtZHdtYWM6IGRvY3VtZW50IHBjcy1oYW5kbGUKClRo
aXMgYWRkcyBhIHBjcy1oYW5kbGUgcHJvcGVydHkgdG8gdGhlIFJvY2tjaGlwIEdNQUMgYmluZGlu
ZyBhbmQgbWFrZXMgaXQKcmVxdWlyZWQgd2hlbiBwaHktbW9kZSBpcyAic2dtaWkiIG9uIHJvY2tj
aGlwLHJrMzU2OC1nbWFjLiAgVGhlIHByb3BlcnR5CmRlc2NyaWJlcyB0aGUgUENTIGRldmljZSB1
c2VkIGJ5IHRoZSBTR01JSSBzdXBwb3J0IGFkZGVkIGJ5IGEgbGF0ZXIgcGF0Y2gKaW4gdGhlIHNh
bWUgc2VyaWVzLgoKTm8gcmVncmVzc2lvbnMgdG8gcmVwb3J0IG9uIHRoaXMgcGF0Y2guCgo+IGRp
ZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3JvY2tjaGlw
LWR3bWFjLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3JvY2tj
aGlwLWR3bWFjLnlhbWwKPiBpbmRleCA4MGMyNTI4NDUzNDljLi5iYjc1NDBlODM4MDMzIDEwMDY0
NAo+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvcm9ja2NoaXAt
ZHdtYWMueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
cm9ja2NoaXAtZHdtYWMueWFtbAo+IEBAIC0xMjAsNiArMTIwLDEyIEBAIHByb3BlcnRpZXM6Cj4g
ICAgICBtYXhpbXVtOiAweDdGCj4gICAgICBkZWZhdWx0OiAweDEwCj4gIAo+ICsgIHBjcy1oYW5k
bGU6Cj4gKyAgICBkZXNjcmlwdGlvbjoKPiArICAgICAgU3BlY2lmaWVzIGEgcmVmZXJlbmNlIHRv
IGEgbm9kZSByZXByZXNlbnRpbmcgdGhlIFBDUyBkZXZpY2UKPiArICAgICAgY29ubmVjdGVkIHRv
IHRoaXMgR01BQy4gUmVxdWlyZWQgd2hlbiBwaHktbW9kZSBpcyAic2dtaWkiLgo+ICsgICAgbWF4
SXRlbXM6IDEKPiArCj4gICAgcGh5LXN1cHBseToKPiAgICAgIGRlc2NyaXB0aW9uOiBQSFkgcmVn
dWxhdG9yCj4gIAoKWyAuLi4gXQoKPiArICAtIGlmOgo+ICsgICAgICBwcm9wZXJ0aWVzOgo+ICsg
ICAgICAgIGNvbXBhdGlibGU6Cj4gKyAgICAgICAgICBjb250YWluczoKPiArICAgICAgICAgICAg
Y29uc3Q6IHJvY2tjaGlwLHJrMzU2OC1nbWFjCj4gKyAgICAgICAgcGh5LW1vZGU6Cj4gKyAgICAg
ICAgICBjb250YWluczoKPiArICAgICAgICAgICAgY29uc3Q6IHNnbWlpCj4gKyAgICB0aGVuOgo+
ICsgICAgICByZXF1aXJlZDoKPiArICAgICAgICAtIHBjcy1oYW5kbGUKPiArCgpPbmUgY29uY2Vy
biB3YXMgcmFpc2VkIGR1cmluZyByZXZpZXcgb2YgdGhlIGh1bmtzIGFib3ZlIGFuZCB0aGVuIGRy
b3BwZWQKYWZ0ZXIgY2hlY2tpbmcgdGhlIHJlc3Qgb2YgdGhlIHNlcmllczogdGhlIGNsYWltIHRo
YXQgdGhlIGNvbW1pdCBtZXNzYWdlCnJlZmVyZW5jZXMgYSBya19wY3NfaW5pdCgpIHRoYXQgZG9l
cyBub3QgZXhpc3QgaW4gdHJlZSwgbGVhdmluZyBhIHJlcXVpcmVkCnByb3BlcnR5IHdpdGggbm8g
Y29uc3VtZXIuCgpMb29raW5nIGF0IHRoZSBlbmQgb2YgdGhlIHNlcmllcywgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYwpkb2VzIGdhaW4gcmtfcGNzX2luaXQo
KSwgd2hpY2ggcGFyc2VzIHRoZSBuZXcgcHJvcGVydHk6CgogIGRyaXZlcnMvbmV0L2V0aGVybmV0
L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmM6cmtfcGNzX2luaXQoKSB7CiAgICAgIC4uLgogICAg
ICBwY3Nfbm9kZSA9IG9mX3BhcnNlX3BoYW5kbGUobnAsICJwY3MtaGFuZGxlIiwgMCk7CiAgICAg
IGlmICghcGNzX25vZGUpCiAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7CgogICAgICB4cGNz
ID0geHBjc19ya19jcmVhdGUocHJpdi0+ZGV2aWNlLCBwY3Nfbm9kZSk7CiAgICAgIC4uLgogIH0K
CmFuZCBya19nbWFjX3Byb2JlKCkgaW5zdGFsbHMgaXQgZm9yIFBIWV9JTlRFUkZBQ0VfTU9ERV9T
R01JSToKCiAgZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsuYzpy
a19nbWFjX3Byb2JlKCkgewogICAgICAuLi4KICAgICAgaWYgKHBsYXRfZGF0LT5waHlfaW50ZXJm
YWNlID09IFBIWV9JTlRFUkZBQ0VfTU9ERV9TR01JSSkgewogICAgICAgICAgICAgIC8qIFNHTUlJ
IGNsb2NrIGFsd2F5cyBydW5zIGF0IDEyNSBNSHogKi8KICAgICAgICAgICAgICBwbGF0X2RhdC0+
c2V0X2Nsa190eF9yYXRlID0gTlVMTDsKCiAgICAgICAgICAgICAgLyogU0dNSUkgcmVxdWlyZXMg
YSBQQ1MgKi8KICAgICAgICAgICAgICBwbGF0X2RhdC0+ZGVmYXVsdF9hbl9pbmJhbmQgPSB0cnVl
OwogICAgICAgICAgICAgIHBsYXRfZGF0LT5wY3NfaW5pdCA9IHJrX3Bjc19pbml0OwogICAgICAu
Li4KICB9CgpTbyB0aGUgZG9jdW1lbnRlZCBwcm9wZXJ0eSBkb2VzIGhhdmUgYW4gaW4tdHJlZSBj
b25zdW1lciBhbmQgdGhlIGNvbW1pdAptZXNzYWdlIG1hdGNoZXMgdGhlIGNvZGUuCgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYvc2FzaGlr
by8jL3BhdGNoc2V0LzIwMjYwOTE3MjA0NjI0LjI0Mjc0ODYtMS1jb2lhcHJhbnQlNDBnbWFpbC5j
b20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
