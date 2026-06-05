Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90963CD6E7E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1P346b8t4oIWPZX126Ucphlch2yR3py0NKPXM7rPtvw=; b=4JWtU3icKz3vUF
	sanu6gvJgKdypfN4z8E4shxlrb9eynyI0L/q28wysl/iqE5EBvwJTjLr5t/NLOYIQVlEPqS7SdEw7
	N6vuob17xefdbnq3eb2HfLP4aKoI3tUAlCoRdRu9G57VmXkwdukBHtj6Js52EidDJCqahamSvNdEq
	0xz1X+H82opa9yFRww8ZxYo9E/VZ0SrAwy4Hu+ijKknKQPw1WHobag3uCiYlkOR7TZoosYZkyZ0Ej
	M8rbpl3HBSVoJpZ1KsGFfDjYW+dPxhOPxhZsXMUA7I0KnffuxY6OkNp/4W7DxhFfSwiA3653PFdlU
	IuGgF+RkhePhsM7v6Hgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVcik-00000001FQ1-1oFT;
	Fri, 05 Jun 2026 22:08:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVcib-00000001F0X-1qOt
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:46 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVciF-0000LW-J7; Sat, 06 Jun 2026 00:08:23 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:07:02 +0200
Subject: [PATCH 16/17] arm64: dts: rockchip: add rga3 dt nodes to rk3588
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-16-3ec2b15675f7@pengutronix.de>
References: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
In-Reply-To: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_150845_482625_20FB9C25 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
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

QWRkIGRldmljZXRyZWUgbm9kZXMgZm9yIHRoZSBSR0EzIChSYXN0ZXIgR3JhcGhpY3MgQWNjZWxl
cmF0aW9uIDMpCnBlcmlwaGVyYWwgaW4gdGhlIFJLMzU4OC4KClRoZSBleGlzdGluZyByZ2Egbm9k
ZSByZWZlcnMgdG8gdGhlIFJHQTItRW5oYW5jZWQgcGVyaXBoZXJhbC4gVGhlIFJLMzU4OApjb250
YWlucyBvbmUgUkdBMi1FbmhhbmNlZCBjb3JlIGFuZCB0d28gUkdBMyBjb3Jlcy4gQm90aCBmZWF0
dXJlIGEgc2ltaWxhcgpmdW5jdGlvbmFsaXR5IG9mIHNjYWxpbmcsIGNyb3BwaW5nIGFuZCByb3Rh
dGluZyBvZiB1cCB0byB0d28gaW5wdXQKaW1hZ2VzIGludG8gb25lIG91dHB1dCBpbWFnZS4gS2V5
IGRpZmZlcmVuY2VzIG9mIHRoZSBSR0EzIGFyZToKCi0gc3VwcG9ydHMgMTBiaXQgWVVWIG91dHB1
dCBmb3JtYXRzCi0gc3VwcG9ydHMgOHg4IHRpbGVzIGFuZCBGQkNEIGFzIGlucHV0cyBhbmQgb3V0
cHV0cwotIHN1cHBvcnRzIEJUMjAyMCBjb2xvciBzcGFjZSBjb252ZXJzaW9uCi0gbWF4IG91dHB1
dCByZXNvbHV0aW9uIG9mICg4MTkyLTY0KXgoODE5Mi02NCkKLSBNTVUgY2FuIG1hcCB1cCB0byAz
MkcgRERSIFJBTQotIGZ1bGx5IHBsYW5hciBmb3JtYXRzICgzIHBsYW5lcykgYXJlIG5vdCBzdXBw
b3J0ZWQKLSBtYXggc2NhbGUgdXAvZG93biBmYWN0b3Igb2YgOCAoUkdBMiBhbGxvd3MgdXAgdG8g
MTYpCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4
LmRlPgpMaW5rOiBodHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjA1MjEtc3B1LXJnYTMtdjct
MjgtM2YzM2U4YzcxNDVmQHBlbmd1dHJvbml4LmRlClNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+Ci0tLQooY2hlcnJ5IHBpY2tlZCBmcm9tIGNvbW1pdCAyNWVl
ODk4OTYxYTJjNjYxZTRjZDcyYmM5OGYwMDYwZjFjZDExMjIyKQpwaWNrZWQgZnJvbSBsaW51eC1u
ZXh0IHRvIGhhdmUgdGhlIG5lY2Vzc2FyeSBSR0EzIG5vZGVzIGF2YWlsYWJsZS4KLS0tCiBhcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kgfCA0NCArKysrKysrKysr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA0NCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCmluZGV4IDRmYjg4
ODhjMjgxYzguLmE0ZjQ0YWY1MTIzNzUgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1iYXNlLmR0c2kKQEAgLTEyNjIsNiArMTI2Miw1MCBAQCB2cHUxMjFfbW11OiBp
b21tdUBmZGI1MDgwMCB7CiAJCSNpb21tdS1jZWxscyA9IDwwPjsKIAl9OwogCisJcmdhM19jb3Jl
MDogcmdhQGZkYjYwMDAwIHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtcmdhMyI7
CisJCXJlZyA9IDwweDAgMHhmZGI2MDAwMCAweDAgMHgyMDA+OworCQlpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgMTE0IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJCWNsb2NrcyA9IDwmY3J1IEFDTEtf
UkdBM18wPiwgPCZjcnUgSENMS19SR0EzXzA+LCA8JmNydSBDTEtfUkdBM18wX0NPUkU+OworCQlj
bG9jay1uYW1lcyA9ICJhY2xrIiwgImhjbGsiLCAic2NsayI7CisJCXJlc2V0cyA9IDwmY3J1IFNS
U1RfUkdBM18wX0NPUkU+LCA8JmNydSBTUlNUX0FfUkdBM18wPiwgPCZjcnUgU1JTVF9IX1JHQTNf
MD47CisJCXJlc2V0LW5hbWVzID0gImNvcmUiLCAiYXhpIiwgImFoYiI7CisJCXBvd2VyLWRvbWFp
bnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9SR0EzMD47CisJCWlvbW11cyA9IDwmcmdhM18wX21tdT47
CisJfTsKKworCXJnYTNfMF9tbXU6IGlvbW11QGZkYjYwZjAwIHsKKwkJY29tcGF0aWJsZSA9ICJy
b2NrY2hpcCxyazM1ODgtaW9tbXUiLCAicm9ja2NoaXAscmszNTY4LWlvbW11IjsKKwkJcmVnID0g
PDB4MCAweGZkYjYwZjAwIDB4MCAweDEwMD47CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMTQg
SVJRX1RZUEVfTEVWRUxfSElHSCAwPjsKKwkJY2xvY2tzID0gPCZjcnUgQUNMS19SR0EzXzA+LCA8
JmNydSBIQ0xLX1JHQTNfMD47CisJCWNsb2NrLW5hbWVzID0gImFjbGsiLCAiaWZhY2UiOworCQkj
aW9tbXUtY2VsbHMgPSA8MD47CisJCXBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIFJLMzU4OF9QRF9S
R0EzMD47CisJfTsKKworCXJnYTNfY29yZTE6IHJnYUBmZGI3MDAwMCB7CisJCWNvbXBhdGlibGUg
PSAicm9ja2NoaXAscmszNTg4LXJnYTMiOworCQlyZWcgPSA8MHgwIDB4ZmRiNzAwMDAgMHgwIDB4
MjAwPjsKKwkJaW50ZXJydXB0cyA9IDxHSUNfU1BJIDExNSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+
OworCQljbG9ja3MgPSA8JmNydSBBQ0xLX1JHQTNfMT4sIDwmY3J1IEhDTEtfUkdBM18xPiwgPCZj
cnUgQ0xLX1JHQTNfMV9DT1JFPjsKKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJoY2xrIiwgInNj
bGsiOworCQlyZXNldHMgPSA8JmNydSBTUlNUX1JHQTNfMV9DT1JFPiwgPCZjcnUgU1JTVF9BX1JH
QTNfMT4sIDwmY3J1IFNSU1RfSF9SR0EzXzE+OworCQlyZXNldC1uYW1lcyA9ICJjb3JlIiwgImF4
aSIsICJhaGIiOworCQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1ODhfUERfUkdBMzE+Owor
CQlpb21tdXMgPSA8JnJnYTNfMV9tbXU+OworCX07CisKKwlyZ2EzXzFfbW11OiBpb21tdUBmZGI3
MGYwMCB7CisJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LWlvbW11IiwgInJvY2tjaGlw
LHJrMzU2OC1pb21tdSI7CisJCXJlZyA9IDwweDAgMHhmZGI3MGYwMCAweDAgMHgxMDA+OworCQlp
bnRlcnJ1cHRzID0gPEdJQ19TUEkgMTE1IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CisJCWNsb2Nr
cyA9IDwmY3J1IEFDTEtfUkdBM18xPiwgPCZjcnUgSENMS19SR0EzXzE+OworCQljbG9jay1uYW1l
cyA9ICJhY2xrIiwgImlmYWNlIjsKKwkJI2lvbW11LWNlbGxzID0gPDA+OworCQlwb3dlci1kb21h
aW5zID0gPCZwb3dlciBSSzM1ODhfUERfUkdBMzE+OworCX07CisKIAlyZ2E6IHJnYUBmZGI4MDAw
MCB7CiAJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LXJnYSIsICJyb2NrY2hpcCxyazMy
ODgtcmdhIjsKIAkJcmVnID0gPDB4MCAweGZkYjgwMDAwIDB4MCAweDE4MD47CgotLSAKMi41NC4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
