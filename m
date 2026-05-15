Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66843CD4F49
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 15:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h3RaE19Yr1rPzHCmP36vSvgy7DVl+Gik7MpPbjvjx+Q=; b=Se7/HSpFPgIhos
	8+Ex2x07unABrFnTxlHQY8aqN/rXyyWsN9iu8eQTvTSPdJYDA4ufcrIqS1V7ZXdplqEdS2wStuNpp
	OfSEdy0MO9XGlsssdK6WTVZOmLH2/xuuy0bNBEYzuRcTqEuIPu7uIPOOF/4lnwxCbHFacXorXNn01
	0q1R+hnaBjAT4R1MhlqpVPA3SRTOrq68aln/PGOgW2g5Aq1TfH8nrKwy/eTBsWd8vvBeNj9LxI6pf
	G6dIYDV5xzV3Y9vIzkuVmzHJEY7pOrseGKhBWcF6qPGNyN8hxOKguf/tp7U8Fj5KRhIKipiZVoH0C
	zyHqWFAwg/e5LvTHVmMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuX4-00000008huo-15DQ;
	Fri, 15 May 2026 15:32:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNuX1-00000008hsj-1zVd
	for linux-rockchip@lists.infradead.org;
	Fri, 15 May 2026 15:32:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wNuWm-0005OF-0T; Fri, 15 May 2026 17:32:40 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 15 May 2026 17:32:27 +0200
Subject: [PATCH v6 01/28] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
MIME-Version: 1.0
Message-Id: <20260515-spu-rga3-v6-1-e547152eb9c9@pengutronix.de>
References: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
In-Reply-To: <20260515-spu-rga3-v6-0-e547152eb9c9@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, m.tretter@pengutronix.de, 
 p.zabel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260515_083255_516062_063C9946 
X-CRM114-Status: GOOD (  11.00  )
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
QTIgYWxsb3dzIHVwIHRvIDE2KQoKQWNrZWQtYnk6IFJvYiBIZXJyaW5nIChBcm0pIDxyb2JoQGtl
cm5lbC5vcmc+ClNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0
cm9uaXguZGU+Ci0tLQpDaGFuZ2VkIGluIHYzL3Y0OgotIERyb3BwZWQgQWNrZWQtYnk6IEtyenlz
enRvZiBLb3psb3dza2kgZHVlIHRvIHRoZSBhZGRlZCBpb21tdXMgcHJvcGVydHkKICBhbmQgZGVz
Y3JpcHRpb24gYWRqdXN0bWVudHMuCi0tLQogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL21lZGlhL3JvY2tjaGlwLXJnYS55YW1sIHwgMTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5n
ZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1yZ2EueWFtbCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9yb2NrY2hpcC1yZ2EueWFtbAppbmRl
eCBhYzE3Y2RhNjUxOTFiLi43YmQ5MmY3MzM2NjY0IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAtcmdhLnlhbWwKKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLXJnYS55YW1sCkBAIC05
LDcgKzksMTEgQEAgdGl0bGU6IFJvY2tjaGlwIDJEIHJhc3RlciBncmFwaGljIGFjY2VsZXJhdGlv
biBjb250cm9sbGVyIChSR0EpCiBkZXNjcmlwdGlvbjoKICAgUkdBIGlzIGEgc3RhbmRhbG9uZSAy
RCByYXN0ZXIgZ3JhcGhpYyBhY2NlbGVyYXRpb24gdW5pdC4gSXQgYWNjZWxlcmF0ZXMgMkQKICAg
Z3JhcGhpY3Mgb3BlcmF0aW9ucywgc3VjaCBhcyBwb2ludC9saW5lIGRyYXdpbmcsIGltYWdlIHNj
YWxpbmcsIHJvdGF0aW9uLAotICBCaXRCTFQsIGFscGhhIGJsZW5kaW5nIGFuZCBpbWFnZSBibHVy
L3NoYXJwbmVzcy4KKyAgQml0QkxULCBhbHBoYSBibGVuZGluZyBhbmQgaW1hZ2UgYmx1ci9zaGFy
cG5lc3MuIFRoZXJlIGV4aXN0IG1hbnkgdmVyc2lvbnMKKyAgb2YgdGhpcyB1bml0IHRoYXQgZGlm
ZmVyIGluIHRoZSBzdXBwb3J0ZWQgaW5wdXRzL291dHB1dCBmb3JtYXRzLAorICB0aGUgYXR0YWNo
ZWQgSU9NTVUgYW5kIHRoZSBzdXBwb3J0ZWQgb3BlcmF0aW9ucyBvbiB0aGUgaW5wdXQuIEFzIHNv
bWUgU29DcworICBpbmNsdWRlIG11bHRpcGxlIFJHQSB1bml0cyB3aXRoIGRpZmZlcmVudCB2ZXJz
aW9ucywgYSBtb3JlIHNwZWNpZmljCisgIGNvbXBhdGlibGUgbmFtZSB0byBkaWZmZXJlbnRpYXRl
IHRoZSBjb25jcmV0ZSB1bml0IGlzIHVzZWQgZm9yIHRoZW0uCiAKIG1haW50YWluZXJzOgogICAt
IEphY29iIENoZW4gPGphY29iLWNoZW5AaW90d3J0LmNvbT4KQEAgLTIwLDYgKzI0LDcgQEAgcHJv
cGVydGllczoKICAgICBvbmVPZjoKICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzI4OC1yZ2EK
ICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzM5OS1yZ2EKKyAgICAgIC0gY29uc3Q6IHJvY2tj
aGlwLHJrMzU4OC1yZ2EzCiAgICAgICAtIGl0ZW1zOgogICAgICAgICAgIC0gZW51bToKICAgICAg
ICAgICAgICAgLSByb2NrY2hpcCxyazMyMjgtcmdhCkBAIC00NSw2ICs1MCw5IEBAIHByb3BlcnRp
ZXM6CiAgIHBvd2VyLWRvbWFpbnM6CiAgICAgbWF4SXRlbXM6IDEKIAorICBpb21tdXM6CisgICAg
bWF4SXRlbXM6IDEKKwogICByZXNldHM6CiAgICAgbWF4SXRlbXM6IDMKIAoKLS0gCjIuNTQuMAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
