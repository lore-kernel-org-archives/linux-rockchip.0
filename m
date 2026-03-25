Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECFD3109C029
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 14:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwRBkwHeITDRb4PFm4wTpB3wEfLBSkT45k+ve5yENB0=; b=Qf44VsllZGJgLf
	Inqw/MslqBx8XvoEwuXlUAHIdfPemTpf9Tpathrrfvn5Q/NPnVRA3d/CZxA83bvDAfv51wHHfCT0E
	0+F0o05mq8YKvMwCzYn4RDJw6+yl0nrzX/nGRuG6hcC2YANbjbhAnIDYUu2EjM+LtM8bl42raO9LV
	URWp9FCEEmO6nvMyb/DHmtatLIkfYxRzJnWwEKiYQ9K2kQH3pWvSfhvOZJMFCrw4zu8oBqfmV7i2Y
	h+xEUtK66dV33lLOf57Ev8pSmBmDp/2OTaqW0l49ZHB7Zfc3Ok1kjtnfHVLsLz+tgZgjsAsCGkoW5
	KvCevG8ZRY6zXjk5B9og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZW-00000003fLc-0R9f;
	Wed, 25 Mar 2026 14:51:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5PZU-00000003fKK-1jK6
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 14:51:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1w5PZS-00050C-Or; Wed, 25 Mar 2026 15:50:58 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 25 Mar 2026 15:50:32 +0100
Subject: [PATCH v4 01/27] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
MIME-Version: 1.0
Message-Id: <20260325-spu-rga3-v4-1-e90ec1c61354@pengutronix.de>
References: <20260325-spu-rga3-v4-0-e90ec1c61354@pengutronix.de>
In-Reply-To: <20260325-spu-rga3-v4-0-e90ec1c61354@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_075100_474019_E9E5440F 
X-CRM114-Status: GOOD (  11.46  )
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
YXRpb24gMykKcGVyaXBoZXJhbCBmb3VuZCBvbiB0aGUgUkszNTg4IFNvQy4gQWxzbyBzcGVjaWZ5
IGFuIGlvbW11IHByb3BlcnR5LAphcyB0aGUgUkdBMyBjb250YWlucyB0aGUgZ2VuZXJpYyByb2Nr
Y2hpcCBpb21tdS4gV2hpbGUgb3RoZXIgdmVyc2lvbnMKYWxzbyBoYXZlIGFuIGlvbW11LCBpdCdz
IHVzdWFsbHkgc3BlY2lmaWMgdG8gdGhlbS4KClRoZSBSSzM1ODggY29udGFpbnMgb25lIFJHQTIt
RW5oYW5jZSBjb3JlIChhbHNvIGNvbnRhaW5lZCBvbiB0aGUgUkszMzk5KQphbmQgdHdvIFJHQTMg
Y29yZXMuIEJvdGggZmVhdHVyZSBhIHNpbWlsYXIgZnVuY3Rpb25hbGl0eSBvZiBzY2FsaW5nLApj
cm9wcGluZyBhbmQgcm90YXRpbmcgb2YgdXAgdG8gdHdvIGlucHV0IGltYWdlcyBpbnRvIG9uZSBv
dXRwdXQgaW1hZ2UuCktleSBkaWZmZXJlbmNlcyBvZiB0aGUgUkdBMyBhcmU6CgotIHN1cHBvcnRz
IDEwYml0IFlVViBvdXRwdXQgZm9ybWF0cwotIHN1cHBvcnRzIDh4OCB0aWxlcyBhbmQgRkJDRCBh
cyBpbnB1dHMgYW5kIG91dHB1dHMKLSBzdXBwb3J0cyBCVDIwMjAgY29sb3Igc3BhY2UgY29udmVy
c2lvbgotIG1heCBvdXRwdXQgcmVzb2x1dGlvbiBvZiAoODE5Mi02NCl4KDgxOTItNjQpCi0gTU1V
IGNhbiBtYXAgdXAgdG8gMzJHIEREUiBSQU0KLSBmdWxseSBwbGFuYXIgZm9ybWF0cyAoMyBwbGFu
ZXMpIGFyZSBub3Qgc3VwcG9ydGVkCi0gbWF4IHNjYWxlIHVwL2Rvd24gZmFjdG9yIG9mIDggKFJH
QTIgYWxsb3dzIHVwIHRvIDE2KQoKU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVz
Y2hlbEBwZW5ndXRyb25peC5kZT4KCi0tLQoKQ2hhbmdlZCBpbiB2My92NDoKLSBEcm9wcGVkIEFj
a2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIGR1ZSB0byB0aGUgYWRkZWQgaW9tbXVzIHByb3Bl
cnR5CiAgYW5kIGRlc2NyaXB0aW9uIGFkanVzdG1lbnRzLgotLS0KIERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1yZ2EueWFtbCB8IDEwICsrKysrKysrKy0K
IDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtcmdh
LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAt
cmdhLnlhbWwKaW5kZXggYWMxN2NkYTY1MTkxYi4uN2JkOTJmNzMzNjY2NCAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLXJnYS55YW1s
CisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1y
Z2EueWFtbApAQCAtOSw3ICs5LDExIEBAIHRpdGxlOiBSb2NrY2hpcCAyRCByYXN0ZXIgZ3JhcGhp
YyBhY2NlbGVyYXRpb24gY29udHJvbGxlciAoUkdBKQogZGVzY3JpcHRpb246CiAgIFJHQSBpcyBh
IHN0YW5kYWxvbmUgMkQgcmFzdGVyIGdyYXBoaWMgYWNjZWxlcmF0aW9uIHVuaXQuIEl0IGFjY2Vs
ZXJhdGVzIDJECiAgIGdyYXBoaWNzIG9wZXJhdGlvbnMsIHN1Y2ggYXMgcG9pbnQvbGluZSBkcmF3
aW5nLCBpbWFnZSBzY2FsaW5nLCByb3RhdGlvbiwKLSAgQml0QkxULCBhbHBoYSBibGVuZGluZyBh
bmQgaW1hZ2UgYmx1ci9zaGFycG5lc3MuCisgIEJpdEJMVCwgYWxwaGEgYmxlbmRpbmcgYW5kIGlt
YWdlIGJsdXIvc2hhcnBuZXNzLiBUaGVyZSBleGlzdCBtYW55IHZlcnNpb25zCisgIG9mIHRoaXMg
dW5pdCB0aGF0IGRpZmZlciBpbiB0aGUgc3VwcG9ydGVkIGlucHV0cy9vdXRwdXQgZm9ybWF0cywK
KyAgdGhlIGF0dGFjaGVkIElPTU1VIGFuZCB0aGUgc3VwcG9ydGVkIG9wZXJhdGlvbnMgb24gdGhl
IGlucHV0LiBBcyBzb21lIFNvQ3MKKyAgaW5jbHVkZSBtdWx0aXBsZSBSR0EgdW5pdHMgd2l0aCBk
aWZmZXJlbnQgdmVyc2lvbnMsIGEgbW9yZSBzcGVjaWZpYworICBjb21wYXRpYmxlIG5hbWUgdG8g
ZGlmZmVyZW50aWF0ZSB0aGUgY29uY3JldGUgdW5pdCBpcyB1c2VkIGZvciB0aGVtLgogCiBtYWlu
dGFpbmVyczoKICAgLSBKYWNvYiBDaGVuIDxqYWNvYi1jaGVuQGlvdHdydC5jb20+CkBAIC0yMCw2
ICsyNCw3IEBAIHByb3BlcnRpZXM6CiAgICAgb25lT2Y6CiAgICAgICAtIGNvbnN0OiByb2NrY2hp
cCxyazMyODgtcmdhCiAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMzOTktcmdhCisgICAgICAt
IGNvbnN0OiByb2NrY2hpcCxyazM1ODgtcmdhMwogICAgICAgLSBpdGVtczoKICAgICAgICAgICAt
IGVudW06CiAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMjI4LXJnYQpAQCAtNDUsNiArNTAs
OSBAQCBwcm9wZXJ0aWVzOgogICBwb3dlci1kb21haW5zOgogICAgIG1heEl0ZW1zOiAxCiAKKyAg
aW9tbXVzOgorICAgIG1heEl0ZW1zOiAxCisKICAgcmVzZXRzOgogICAgIG1heEl0ZW1zOiAzCiAK
Ci0tIAoyLjUzLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
