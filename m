Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA1EFC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 15:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJM9I6Zb/0ogU191iY0o4me9fmGrDlnzkY8IIbuKtyk=; b=RZU7CaUlCIY4ge
	zXXdkYc1nbBJABrersr8pIY2JKII5aFw3lZ5VlJweV6bWf+VrvokKDFLAtKO2SdtyCmMLN3GQykB+
	1dn0ClCU28nJRTT2SfPOtFpDQSWVjPmh3Y7fdDz6F2Bb7TYU2Nx6s5Sd5yMu+iQHGgSm8f3yIknGv
	LI6mZIaavV3nqYb2pZgrt4sFnVyxFI/JIAa7hUtfH8cQY9U+qFr7biPXcvkGztLhg8Gkwbkfkok0K
	1FjBW7f5N+0zLkRjer/M/Cw8QdxwTv1c4qpLGbOOpE2SG3LwYcCwc2GKhXrIseGF1Jt8DsST2BVDI
	lCAKigWB0kBFtcVOnZFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muylD-00DBzp-2m; Wed, 08 Dec 2021 15:21:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muydC-00D7cQ-Fj
 for linux-rockchip@bombadil.infradead.org; Wed, 08 Dec 2021 15:13:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=Ez9dybhh3MkwBTfBRlNsP3UI3wZWZDbBfcPacJZrWxM=; b=p12x9Xfsrd7IimdAQG/BCH6ZSu
 gLeYH8wdbQMRbpvJdF/6wkR+Vn1B2HsrcNXYuGOeSc8VwnIoN0ng+0j2QAr/vVLkNKPEHV9Io5mZz
 PM/1P6z5Ip64lNvA7iZ0HWkOs1/ucnrgQrJrX6NXvxKtSaJ6G5ES+aItX4XyMVTzS5TJs5+AZ7rH0
 tjiDQae+SpA/Nq40NAgvhpp3lnRITma6yGCxVXxPZJ2BCCJvpggJdXHU3f69UjMUAxpueZtfKOlWd
 aTRpw7GswjDNDbVd6H5xtJoHSdYbXbav4D/yApbrdkVwI8lVPLZ9ZpWLn6hOOQ3wi2UCa2fJK1App
 2k2sl1EA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muyd4-000Cb2-0M
 for linux-rockchip@lists.infradead.org; Wed, 08 Dec 2021 15:13:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muyco-0004Uf-KE; Wed, 08 Dec 2021 16:12:54 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1muycd-00FVZv-9s; Wed, 08 Dec 2021 16:12:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 18/18] [HACK, RFC] clk: rk3568: do not divide dclk_vop0
Date: Wed,  8 Dec 2021 16:12:30 +0100
Message-Id: <20211208151230.3695378-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211208151230.3695378-1-s.hauer@pengutronix.de>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_151310_266613_AD5D57BA 
X-CRM114-Status: GOOD (  15.86  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gdGhlIHJrMzU2OCB3ZSBoYXZlIHRoaXMgKHNpbXBsaWZpZWQpIHNpdHVhdGlvbjoKCiAuLS0t
LS0tLS0uICAgICAuLS0tLS0uICAgIC4tLS0tLS0tLS0uCi18IGhwbGwgICB8LS0uLS18IC9uICB8
LS0tLXxkY2xrX3ZvcDB8LQogYC0tLS0tLS0twrQgIHwgIGAtLS0tLcK0ICAgIGAtLS0tLS0tLS3C
tAogICAgICAgICAgICAgfCAgLi0tLS0tLiAgICAuLS0tLS0tLS0tLgogICAgICAgICAgICAgYC0t
fCAvbSAgfC0tLS18ZGNsa192b3AxfC0KICAgICAgICAgICAgIHwgIGAtLS0tLcK0ICAgIGAtLS0t
LS0tLS3CtAogICAgICAgICAgICAgfCAgICAgICAgICAgICAuLS0tLS0tLS0tLgogICAgICAgICAg
ICAgYC0tLS0tLS0tLS0tLS18aGRtaV9yZWYgfC0KICAgICAgICAgICAgICAgICAgICAgICAgICAg
YC0tLS0tLS0tLcK0CgpocGxsIGlzIHRoZSBQTEwgdGhhdCBkcml2ZXMgdGhlIEhETUkgcmVmZXJl
bmNlIGNsb2NrIGFuZCB0aGUgcGl4ZWwKY2xvY2tzIGZvciB0aGUgZGlmZmVyZW50IENSVENzIChk
Y2xrX3ZvcDAvMSkuIEJldHdlZW4gdGhlIHBpeGVsIGNsb2NrcwphbmQgdGhlIGhwbGwgdGhlcmUg
YXJlIHByb2dyYW1tYWJsZSBkaXZpZGVycyB3aGVyZWFzIHRoZSBIRE1JIHJlZmVyZW5jZQpjbG9j
ayBpcyBkaXJlY3RseSBjb25uZWN0ZWQgdG8gdGhlIGhwbGwuCgpGb3IgdGhlIEhETUkgb3V0cHV0
IHRvIHdvcmsgdGhlIHBpeGVsIGNsb2NrIG11c3QgYmUgdGhlIHNhbWUgYXMgdGhlIEhETUkKcmVm
ZXJlbmNlIGNsb2NrLCBoZW5jZSB0aGUgZGl2aWRlcnMgbXVzdCBiZSBwcm9ncmFtbWVkIHRvIDEu
IE5vcm1hbGx5IGEKcmF0ZSBjaGFuZ2Ugb24gZGNsa192b3AwLzEgcHJvcGFnYXRlcyB0aHJvdWdo
IHRvIHRoZSBocGxsIGFuZCB0aGUgY2xvY2sKZnJhbWV3b3JrIHBpY2tzIGEgc3VpdGFibGUgY29t
YmluYXRpb24gb2YgaHBsbCBhbmQgZGl2aWRlciBzZXR0aW5ncy4gYnkKYWNjaWRlbnQgaXQgcGlj
a3MgYSBkaXZpZGVyIHNldHRpbmcgb2YgMSBmb3IgdGhlIHN0YW5kYXJkIDEwODBwIGNhc2UsCmJ1
dCBvdGhlciBkaXZpZGVyIHNldHRpbmdzIGZvciBtb3N0IG90aGVyIHJlc29sdXRpb25zIGxlYXZp
bmcgdGhlIEhETUkKcG9ydCBub24gd29ya2luZy4KClRoaXMgcGF0Y2ggaXMgbm90IGEgc29sdXRp
b24sIGl0IG1lcmVseSBwdXRzIHRoZSBmaW5nZXIgaW4gdGhlIHdvdW5kLiBXZQpsZWF2ZSBvdXQg
dGhlIGRpdmlkZXIgZm9yIHRoZSBjb21wb3NpdGUgY2xvY2sgZm9yIGRjbGtfdm9wMCB3aGljaCB0
aGVuCmxlYXZlcyB0aGUgZGl2aWRlciBhdCB0aGUgYm9vdGxvYWRlciBkZWZhdWx0IHNldHRpbmcg
b2YgMS4gSSBhc3N1bWUKdGhlIGRpdmlkZXIgaXMgZGlzdHVyYmluZyBvbmx5IGZvciB0aGUgSERN
SSBjYXNlLCBidXQgbmVlZGVkIGZvciBvdGhlcgpvdXRwdXRzLiBBbnkgdGhvdWdodHMgaG93IHRo
aXMgY2FuIGJlIGhhbmRsZWQ/CgpTaWduZWQtb2ZmLWJ5OiBTYXNjaGEgSGF1ZXIgPHMuaGF1ZXJA
cGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU2OC5jIHwg
NCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazM1NjguYyBiL2RyaXZlcnMv
Y2xrL3JvY2tjaGlwL2Nsay1yazM1NjguYwppbmRleCA2OWE5ZTgwNjlhNDg2Li4yZDA0ZDgyNTNj
YTIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszNTY4LmMKKysrIGIv
ZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLXJrMzU2OC5jCkBAIC0xMDM4LDggKzEwMzgsOCBAQCBz
dGF0aWMgc3RydWN0IHJvY2tjaGlwX2Nsa19icmFuY2ggcmszNTY4X2Nsa19icmFuY2hlc1tdIF9f
aW5pdGRhdGEgPSB7CiAJCQlSSzM1NjhfQ0xLR0FURV9DT04oMjApLCA4LCBHRkxBR1MpLAogCUdB
VEUoSENMS19WT1AsICJoY2xrX3ZvcCIsICJoY2xrX3ZvIiwgMCwKIAkJCVJLMzU2OF9DTEtHQVRF
X0NPTigyMCksIDksIEdGTEFHUyksCi0JQ09NUE9TSVRFKERDTEtfVk9QMCwgImRjbGtfdm9wMCIs
IGhwbGxfdnBsbF9ncGxsX2NwbGxfcCwgQ0xLX1NFVF9SQVRFX1BBUkVOVCB8IENMS19TRVRfUkFU
RV9OT19SRVBBUkVOVCwKLQkJCVJLMzU2OF9DTEtTRUxfQ09OKDM5KSwgMTAsIDIsIE1GTEFHUywg
MCwgOCwgREZMQUdTLAorCUNPTVBPU0lURV9OT0RJVihEQ0xLX1ZPUDAsICJkY2xrX3ZvcDAiLCBo
cGxsX3ZwbGxfZ3BsbF9jcGxsX3AsIENMS19TRVRfUkFURV9QQVJFTlQgfCBDTEtfU0VUX1JBVEVf
Tk9fUkVQQVJFTlQsCisJCQlSSzM1NjhfQ0xLU0VMX0NPTigzOSksIDEwLCAyLCBNRkxBR1MsCiAJ
CQlSSzM1NjhfQ0xLR0FURV9DT04oMjApLCAxMCwgR0ZMQUdTKSwKIAlDT01QT1NJVEUoRENMS19W
T1AxLCAiZGNsa192b3AxIiwgaHBsbF92cGxsX2dwbGxfY3BsbF9wLCBDTEtfU0VUX1JBVEVfUEFS
RU5UIHwgQ0xLX1NFVF9SQVRFX05PX1JFUEFSRU5ULAogCQkJUkszNTY4X0NMS1NFTF9DT04oNDAp
LCAxMCwgMiwgTUZMQUdTLCAwLCA4LCBERkxBR1MsCi0tIAoyLjMwLjIKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
