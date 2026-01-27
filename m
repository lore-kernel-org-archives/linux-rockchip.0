Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B61A7D2F036
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P2chi8CzqqnmZljZoffYR7s5x/SMzusmvZSsUhJzKvo=; b=ivMaawGSx8FpHS
	Zt9cIZuoTYvybQh2IYAQnW+NamztTuUF/b16yPgPfFhaFmFRxtJV88FyJOL2qkyIsGn48lKbep0/8
	zJerYT1Q9A4UcHVvDq84Ua8u9+PMRUZCnAS7s7feUYAAfRN0P1q+nnDlhuDDxx70UCkfvyAH4Wh67
	IPl3i5D0VqMBpMHKyqq7mC1a4DoRzlGX2zjUW/cFitVEAdhvv4QFBzUvEqZeyD04tPmaotQVp57Fp
	zPMWwgjB5d8RcRWgvhLHbDui9CfRgQQQ7abLjPVNw2u52mXE8FukV2F4/vigxOY5UwdWs9IIW4JsK
	/i6s67WA489qn7EdPWqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkEq-0000000EPrW-05T2;
	Tue, 27 Jan 2026 14:40:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkEm-0000000EPpp-2mSf
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Jan 2026 14:40:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1vkkEY-0007YT-N3; Tue, 27 Jan 2026 15:39:58 +0100
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Tue, 27 Jan 2026 15:39:10 +0100
Subject: [PATCH v3 01/27] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
MIME-Version: 1.0
Message-Id: <20260127-spu-rga3-v3-1-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
In-Reply-To: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260127_064012_704425_2F4D9E3F 
X-CRM114-Status: GOOD (  11.42  )
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
Y2hpcCBpb21tdS4gVGhlIFJHQTIgYWxzbyBoYXMKYW4gaW9tbXUsIGJ1dCBpdCdzIHNwZWNpZmlj
IHRvIHRoZSBSR0EyLgoKVGhlIGV4aXN0aW5nIGJpbmRpbmcgcmVmZXJzIHRvIHRoZSBSR0EyIHBl
cmlwaGVyYWwuIFRoZSBSSzM1ODgKY29udGFpbnMgb25lIFJHQTIgY29yZSBhbmQgdHdvIFJHQTMg
Y29yZXMuIEJvdGggZmVhdHVyZSBhIHNpbWlsYXIKZnVuY3Rpb25hbGl0eSBvZiBzY2FsaW5nLCBj
cm9wcGluZyBhbmQgcm90YXRpbmcgb2YgdXAgdG8gdHdvIGlucHV0CmltYWdlcyBpbnRvIG9uZSBv
dXRwdXQgaW1hZ2UuIEtleSBkaWZmZXJlbmNlcyBvZiB0aGUgUkdBMyBhcmU6CgotIHN1cHBvcnRz
IDEwYml0IFlVViBvdXRwdXQgZm9ybWF0cwotIHN1cHBvcnRzIDh4OCB0aWxlcyBhbmQgRkJDRCBh
cyBpbnB1dHMgYW5kIG91dHB1dHMKLSBzdXBwb3J0cyBCVDIwMjAgY29sb3Igc3BhY2UgY29udmVy
c2lvbgotIG1heCBvdXRwdXQgcmVzb2x1dGlvbiBvZiAoODE5Mi02NCl4KDgxOTItNjQpCi0gTU1V
IGNhbiBtYXAgdXAgdG8gMzJHIEREUiBSQU0KLSBmdWxseSBwbGFuYXIgZm9ybWF0cyAoMyBwbGFu
ZXMpIGFyZSBub3Qgc3VwcG9ydGVkCi0gbWF4IHNjYWxlIHVwL2Rvd24gZmFjdG9yIG9mIDggKFJH
QTIgYWxsb3dzIHVwIHRvIDE2KQoKU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xzY2hlbCA8cy5wdWVz
Y2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9y
b2NrY2hpcC1yZ2EueWFtbCAgICAgICB8IDE5ICsrKysrKysrKysrKysrKysrKy0KIDEgZmlsZSBj
aGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLXJnYS55YW1sIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLXJnYS55YW1s
CmluZGV4IGFjMTdjZGE2NTE5MWIuLjc3MzVkODc5NGM3MTkgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1yZ2EueWFtbAorKysgYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtcmdhLnlhbWwK
QEAgLTksNyArOSw5IEBAIHRpdGxlOiBSb2NrY2hpcCAyRCByYXN0ZXIgZ3JhcGhpYyBhY2NlbGVy
YXRpb24gY29udHJvbGxlciAoUkdBKQogZGVzY3JpcHRpb246CiAgIFJHQSBpcyBhIHN0YW5kYWxv
bmUgMkQgcmFzdGVyIGdyYXBoaWMgYWNjZWxlcmF0aW9uIHVuaXQuIEl0IGFjY2VsZXJhdGVzIDJE
CiAgIGdyYXBoaWNzIG9wZXJhdGlvbnMsIHN1Y2ggYXMgcG9pbnQvbGluZSBkcmF3aW5nLCBpbWFn
ZSBzY2FsaW5nLCByb3RhdGlvbiwKLSAgQml0QkxULCBhbHBoYSBibGVuZGluZyBhbmQgaW1hZ2Ug
Ymx1ci9zaGFycG5lc3MuCisgIEJpdEJMVCwgYWxwaGEgYmxlbmRpbmcgYW5kIGltYWdlIGJsdXIv
c2hhcnBuZXNzLiBUaGVyZSBleGlzdCB0d28gdmFyaWFudHMKKyAgbmFtZWQgUkdBMiBhbmQgUkdB
MyB0aGF0IGRpZmZlciBpbiB0aGUgc3VwcG9ydGVkIGlucHV0cy9vdXRwdXQgZm9ybWF0cywKKyAg
dGhlIGF0dGFjaGVkIElPTU1VIGFuZCB0aGUgc3VwcG9ydGVkIG9wZXJhdGlvbnMgb24gdGhlIGlu
cHV0LgogCiBtYWludGFpbmVyczoKICAgLSBKYWNvYiBDaGVuIDxqYWNvYi1jaGVuQGlvdHdydC5j
b20+CkBAIC0yMCw2ICsyMiw3IEBAIHByb3BlcnRpZXM6CiAgICAgb25lT2Y6CiAgICAgICAtIGNv
bnN0OiByb2NrY2hpcCxyazMyODgtcmdhCiAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMzOTkt
cmdhCisgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1ODgtcmdhMwogICAgICAgLSBpdGVtczoK
ICAgICAgICAgICAtIGVudW06CiAgICAgICAgICAgICAgIC0gcm9ja2NoaXAscmszMjI4LXJnYQpA
QCAtNDUsNiArNDgsOSBAQCBwcm9wZXJ0aWVzOgogICBwb3dlci1kb21haW5zOgogICAgIG1heEl0
ZW1zOiAxCiAKKyAgaW9tbXVzOgorICAgIG1heEl0ZW1zOiAxCisKICAgcmVzZXRzOgogICAgIG1h
eEl0ZW1zOiAzCiAKQEAgLTU0LDYgKzYwLDE3IEBAIHByb3BlcnRpZXM6CiAgICAgICAtIGNvbnN0
OiBheGkKICAgICAgIC0gY29uc3Q6IGFoYgogCithbGxPZjoKKy0gaWY6CisgICAgcHJvcGVydGll
czoKKyAgICAgIGNvbXBhdGlibGU6CisgICAgICAgIGNvbnRhaW5zOgorICAgICAgICAgIGVudW06
CisgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1yZ2EzCisgIHRoZW46CisgICAgcmVxdWly
ZWQ6CisgICAgICAtIGlvbW11cworCiByZXF1aXJlZDoKICAgLSBjb21wYXRpYmxlCiAgIC0gcmVn
CgotLSAKMi41Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
