Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C764ED12D7A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 15:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PqA72YAE8HdHl/boG5V5bAe66Qqza5IA4zGfZHZ57o=; b=I2y7xtIe8D7/8Q
	x4yftMAyFKkM6LlLVZ2Swzs7zGXfs4TOPDTRJ4LGIZa0e6kK2Dnc9ARV5YiT56o87j5rHJ0cYX/P/
	jcb5K3ZaGVT/1U2220v3AYTdvgSCKwlDLD3MbxgQW8OyQyNppygsitg7NipFUADQ5BVTSwS1T44AV
	XKpcGhVSBr318zfs6rYNpqsftc+Y1oh35DQFQgQ8cucPek2qrhH20RHU3yxGkxUlyoTSUekL+YdHn
	d+1d1OeHhlm6juBksPKUom0cHYuChG/stQVE3yUZXvuM3h939eY69r7Sr4yqBmX+9PDu/FZ8thtrt
	/L141KxxoM1uOOWlkzxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBP-00000006k76-00ix;
	Wed, 03 Dec 2025 15:54:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQpBE-00000006jnK-0yMW
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 15:54:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vQpAc-0007dW-Hs; Wed, 03 Dec 2025 16:53:34 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 03 Dec 2025 16:52:23 +0100
Subject: [PATCH v2 01/22] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
MIME-Version: 1.0
Message-Id: <20251203-spu-rga3-v2-1-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
In-Reply-To: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_075412_318026_BBEE72B0 
X-CRM114-Status: GOOD (  10.89  )
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

QWRkIGEgbmV3IGNvbXBhdGlibGUgZm9yIHRoZSBSR0EzIChSYXN0ZXIgR3JhcGhpYyBBY2NlbGVy
YXRpb24gMykKcGVyaXBoZXJhbCBmb3VuZCBvbiB0aGUgUkszNTg4IFNvQy4KClRoZSBleGlzdGlu
ZyByZ2Egbm9kZSByZWZlcnMgdG8gdGhlIFJHQTIgcGVyaXBoZXJhbC4gVGhlIFJLMzU4OApjb250
YWlucyBvbmUgUkdBMiBjb3JlIGFuZCB0d28gUkdBMyBjb3Jlcy4gQm90aCBmZWF0dXJlIGEgc2lt
aWxhcgpmdW5jdGlvbmFsaXR5IG9mIHNjYWxpbmcsIGNyb3BwaW5nIGFuZCByb3RhdGluZyBvZiB1
cCB0byB0d28gaW5wdXQKaW1hZ2VzIGludG8gb25lIG91dHB1dCBpbWFnZS4gS2V5IGRpZmZlcmVu
Y2VzIG9mIHRoZSBSR0EzIGFyZToKCi0gc3VwcG9ydHMgMTBiaXQgWVVWIG91dHB1dCBmb3JtYXRz
Ci0gc3VwcG9ydHMgOHg4IHRpbGVzIGFuZCBGQkNEIGFzIGlucHV0cyBhbmQgb3V0cHV0cwotIHN1
cHBvcnRzIEJUMjAyMCBjb2xvciBzcGFjZSBjb252ZXJzaW9uCi0gbWF4IG91dHB1dCByZXNvbHV0
aW9uIG9mICg4MTkyLTY0KXgoODE5Mi02NCkKLSBNTVUgY2FuIG1hcCB1cCB0byAzMkcgRERSIFJB
TQotIGZ1bGx5IHBsYW5hciBmb3JtYXRzICgzIHBsYW5lcykgYXJlIG5vdCBzdXBwb3J0ZWQKLSBt
YXggc2NhbGUgdXAvZG93biBmYWN0b3Igb2YgOAoKU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hl
bCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtcmdhLnlhbWwgfCA1ICsrKystCiAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLXJnYS55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLXJnYS55YW1sCmlu
ZGV4IGFjMTdjZGE2NTE5MWIuLjRkMTFjYTMxMzc0OWYgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1yZ2EueWFtbAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtcmdhLnlhbWwKQEAg
LTksNyArOSw5IEBAIHRpdGxlOiBSb2NrY2hpcCAyRCByYXN0ZXIgZ3JhcGhpYyBhY2NlbGVyYXRp
b24gY29udHJvbGxlciAoUkdBKQogZGVzY3JpcHRpb246CiAgIFJHQSBpcyBhIHN0YW5kYWxvbmUg
MkQgcmFzdGVyIGdyYXBoaWMgYWNjZWxlcmF0aW9uIHVuaXQuIEl0IGFjY2VsZXJhdGVzIDJECiAg
IGdyYXBoaWNzIG9wZXJhdGlvbnMsIHN1Y2ggYXMgcG9pbnQvbGluZSBkcmF3aW5nLCBpbWFnZSBz
Y2FsaW5nLCByb3RhdGlvbiwKLSAgQml0QkxULCBhbHBoYSBibGVuZGluZyBhbmQgaW1hZ2UgYmx1
ci9zaGFycG5lc3MuCisgIEJpdEJMVCwgYWxwaGEgYmxlbmRpbmcgYW5kIGltYWdlIGJsdXIvc2hh
cnBuZXNzLiBUaGVyZSBleGlzdCB0d28gdmFyaWFudHMKKyAgbmFtZWQgUkdBMiBhbmQgUkdBMyB0
aGF0IGRpZmZlciBpbiB0aGUgc3VwcG9ydGVkIGlucHV0cy9vdXRwdXQgZm9ybWF0cywKKyAgdGhl
IGF0dGFjaGVkIElPTU1VIGFuZCB0aGUgc3VwcG9ydGVkIG9wZXJhdGlvbnMgb24gdGhlIGlucHV0
LgogCiBtYWludGFpbmVyczoKICAgLSBKYWNvYiBDaGVuIDxqYWNvYi1jaGVuQGlvdHdydC5jb20+
CkBAIC0yMCw2ICsyMiw3IEBAIHByb3BlcnRpZXM6CiAgICAgb25lT2Y6CiAgICAgICAtIGNvbnN0
OiByb2NrY2hpcCxyazMyODgtcmdhCiAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMzOTktcmdh
CisgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1ODgtcmdhMwogICAgICAgLSBpdGVtczoKICAg
ICAgICAgICAtIGVudW06CiAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMjI4LXJnYQoKLS0g
CjIuNTIuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
