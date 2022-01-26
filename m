Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EF40C63684
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jan 2022 15:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iepaoz3M7ItZGm9BNE8q/wZpgw40U//1HloeysdTpc8=; b=WjH1iWq6Wd7YjJ
	VcIc2cXcTakLYQOLmARDi9Nf8yoHMr7yuP9Y+Zyxil2evLXqAdDdX1TYKe70PTH4xEIQU0ktAZWyS
	CIxvmyx6I/tU6ydMv4GZH9/er/cigy93OqEo4Vb1sE3pjSKX9GPVs2dmc8Gae8wtUcUydPocYRdIg
	72QVdHX6BjC3a7t0sIx0KG8NTXtCxOiXBshKvmWQf9FfQuxw461JkUx7gldZrUt6HOhs7pVme1Sra
	jf+XzIOUss67j9NNV9zM4pTBOgCDkwn4mT0HDElIOdZknX7bxDRPajIf/1YL+0mlj8fXFlXjkXwZB
	vpCLqq29BGfny+Q5LzIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCjz3-00CB4Q-Lg; Wed, 26 Jan 2022 15:13:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjkt-00C4OZ-IR
 for linux-rockchip@bombadil.infradead.org; Wed, 26 Jan 2022 14:58:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=L44UBJDVRq2HKFeB5GRtITpjv8JbNSX8wmGkgt0vj1E=; b=BKeRWcjXOPv3HMJRSQv2/V0qmZ
 fMOggln+emkUAbJukLRWqZfILUNvhedPVODB/18/QASrTrQShkuyjc9Mi4OHmX+L4cGzfh+GU4syc
 074oS+u2L+ZSIOBH0yTsDIQFPMn99RiQ95Fw8UI0Y1+ZMbt1AYlnyEZzFRfXmd861adUEsXDogQrW
 cQaTX7uKXlSjmYHPLprn9Gvk84pxgMsuqGNi5W8BfdiwItfhgQqDFChvJNhh6/lAf/6PsS7iDODnB
 vp11FFY+F9D5vHLdubW3NPfsfWwYn9JboFviqniZ2CUs915QVyUPmfXplC+k4+EitTFAoT4OQX1bY
 6mHZGHRg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCjkj-003piW-Nn
 for linux-rockchip@lists.infradead.org; Wed, 26 Jan 2022 14:58:37 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjkb-0005fG-Qo; Wed, 26 Jan 2022 15:58:21 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nCjka-002l6P-H4; Wed, 26 Jan 2022 15:58:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Douglas Anderson <dianders@chromium.org>,
 Yakir Yang <ykk@rock-chips.com>, marcheu@chromium.org
Subject: [PATCH 07/27] drm/rockchip: dw_hdmi: Use auto-generated tables
Date: Wed, 26 Jan 2022 15:55:29 +0100
Message-Id: <20220126145549.617165-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220126145549.617165-1-s.hauer@pengutronix.de>
References: <20220126145549.617165-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_145830_018587_64E9AA0B 
X-CRM114-Status: GOOD (  15.13  )
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

RnJvbTogRG91Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnMgYXQgY2hyb21pdW0ub3JnPgoKVGhlIHBy
ZXZpb3VzIHRhYmxlcyBmb3IgbXBsbF9jZmcgYW5kIGN1cnJfY3RybCB3ZXJlIGNyZWF0ZWQgdXNp
bmcgdGhlCjIwLXBhZ2VzIG9mIGV4YW1wbGUgc2V0dGluZ3MgcHJvdmlkZWQgYnkgdGhlIFBIWSB2
ZW5kb3IuICBUaG9zZQpleGFtcGxlIHNldHRpbmdzIHdlcmVuJ3QgcGFydGljdWxhcmx5IGRlbnNl
LCBzbyB0aGVyZSB3ZXJlIHBsYWNlcwp3aGVyZSB3ZSB3ZXJlIGd1ZXNzaW5nIHdoYXQgdGhlIHNl
dHRpbmdzIHdvdWxkIGJlIGZvciAxMC1iaXQgYW5kCjEyLWJpdCAobm90IHRoYXQgd2UgdXNlIHRo
b3NlIGFueXdheSkuICBJdCB3YXMgYWxzbyBhbHdheXMgYSBsb3Qgb2YKZXh0cmEgd29yayBldmVy
eSB0aW1lIHdlIHdhbnRlZCB0byBhZGQgYSBuZXcgY2xvY2sgcmF0ZSBzaW5jZSB3ZSBoYWQKdG8g
Y3Jvc3MtcmVmZXJlbmNlIHNldmVyYWwgdGFibGVzLgoKSW4gPGh0dHA6Ly9jcm9zcmV2aWV3LmNv
bS8yODU4NTU+IEkndmUgZ29uZSB0aHJvdWdoIHRoZSB3b3JrIHRvIGZpZ3VyZQpvdXQgaG93IHRv
IGdlbmVyYXRlIHRoaXMgdGFibGUgYXV0b21hdGljYWxseS4gIExldCdzIG5vdyB1c2UgdGhlCmF1
dG9tYXRpY2FsbHkgZ2VuZXJhdGVkIHRhYmxlIGFuZCB0aGVuIHdlJ2xsIG5ldmVyIG5lZWQgdG8g
bG9vayBhdCBpdAphZ2Fpbi4KCldlIG9ubHkgc3VwcG9ydCA4LWJpdCBtb2RlIHJpZ2h0IG5vdyBh
bmQgb25seSBzdXBwb3J0IGEgc21hbGwgbnVtYmVyCm9mIGNsb2NrIHJhdGVzIGFuZCBhbmQgSSd2
ZSB2ZXJpZmllZCB0aGF0IHRoZSBvbmx5IDgtYml0IHJhdGUgdGhhdCB3YXMKYWZmZWN0ZWQgd2Fz
IDE0OC41LiAgVGhhdCBtb2RlIGFwcGVhcnMgdG8gaGF2ZSBiZWVuIHdyb25nIGluIHRoZSBvbGQK
dGFibGUuCgpDaGFuZ2VzIHNpbmNlIHYzOgotIG5ldyBwYXRjaAoKU2lnbmVkLW9mZi1ieTogRG91
Z2xhcyBBbmRlcnNvbiA8ZGlhbmRlcnMgYXQgY2hyb21pdW0ub3JnPgpTaWduZWQtb2ZmLWJ5OiBZ
YWtpciBZYW5nIDx5a2sgYXQgcm9jay1jaGlwcy5jb20+ClJldmlld2VkLWJ5OiBTdMOpcGhhbmUg
TWFyY2hlc2luIDxtYXJjaGV1IGF0IGNocm9taXVtLm9yZz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jIHwgMTMwICsrKysrKysrKysrLS0tLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgNjkgaW5zZXJ0aW9ucygrKSwgNjEgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMKaW5kZXggYjk5MjhlNjIyYWRm
Li4xNjAxMDdiMzMzZWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19o
ZG1pLXJvY2tjaGlwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9j
a2NoaXAuYwpAQCAtODcsODAgKzg3LDg4IEBAIHN0cnVjdCByb2NrY2hpcF9oZG1pIHsKIAogc3Rh
dGljIGNvbnN0IHN0cnVjdCBkd19oZG1pX21wbGxfY29uZmlnIHJvY2tjaGlwX21wbGxfY2ZnW10g
PSB7CiAJewotCQkyNzAwMDAwMCwgewotCQkJeyAweDAwYjMsIDB4MDAwMH0sCi0JCQl7IDB4MjE1
MywgMHgwMDAwfSwKLQkJCXsgMHg0MGYzLCAweDAwMDB9CisJCTMwNjY2MDAwLCB7CisJCQl7IDB4
MDBiMywgMHgwMDAwIH0sCisJCQl7IDB4MjE1MywgMHgwMDAwIH0sCisJCQl7IDB4NDBmMywgMHgw
MDAwIH0sCiAJCX0sCi0JfSwgewotCQkzNjAwMDAwMCwgewotCQkJeyAweDAwYjMsIDB4MDAwMH0s
Ci0JCQl7IDB4MjE1MywgMHgwMDAwfSwKLQkJCXsgMHg0MGYzLCAweDAwMDB9CisJfSwgIHsKKwkJ
MzY4MDAwMDAsIHsKKwkJCXsgMHgwMGIzLCAweDAwMDAgfSwKKwkJCXsgMHgyMTUzLCAweDAwMDAg
fSwKKwkJCXsgMHg0MGEyLCAweDAwMDEgfSwKIAkJfSwKLQl9LCB7Ci0JCTQwMDAwMDAwLCB7Ci0J
CQl7IDB4MDBiMywgMHgwMDAwfSwKLQkJCXsgMHgyMTUzLCAweDAwMDB9LAotCQkJeyAweDQwZjMs
IDB4MDAwMH0KKwl9LCAgeworCQk0NjAwMDAwMCwgeworCQkJeyAweDAwYjMsIDB4MDAwMCB9LAor
CQkJeyAweDIxNDIsIDB4MDAwMSB9LAorCQkJeyAweDQwYTIsIDB4MDAwMSB9LAogCQl9LAotCX0s
IHsKLQkJNTQwMDAwMDAsIHsKLQkJCXsgMHgwMDcyLCAweDAwMDF9LAotCQkJeyAweDIxNDIsIDB4
MDAwMX0sCi0JCQl7IDB4NDBhMiwgMHgwMDAxfSwKKwl9LCAgeworCQk2MTMzMzAwMCwgeworCQkJ
eyAweDAwNzIsIDB4MDAwMSB9LAorCQkJeyAweDIxNDIsIDB4MDAwMSB9LAorCQkJeyAweDQwYTIs
IDB4MDAwMSB9LAogCQl9LAotCX0sIHsKLQkJNjUwMDAwMDAsIHsKLQkJCXsgMHgwMDcyLCAweDAw
MDF9LAotCQkJeyAweDIxNDIsIDB4MDAwMX0sCi0JCQl7IDB4NDBhMiwgMHgwMDAxfSwKKwl9LCAg
eworCQk3MzYwMDAwMCwgeworCQkJeyAweDAwNzIsIDB4MDAwMSB9LAorCQkJeyAweDIxNDIsIDB4
MDAwMSB9LAorCQkJeyAweDQwNjEsIDB4MDAwMiB9LAogCQl9LAotCX0sIHsKLQkJNjYwMDAwMDAs
IHsKLQkJCXsgMHgwMTNlLCAweDAwMDN9LAotCQkJeyAweDIxN2UsIDB4MDAwMn0sCi0JCQl7IDB4
NDA2MSwgMHgwMDAyfQorCX0sICB7CisJCTkyMDAwMDAwLCB7CisJCQl7IDB4MDA3MiwgMHgwMDAx
IH0sCisJCQl7IDB4MjE0NSwgMHgwMDAyIH0sCisJCQl7IDB4NDA2MSwgMHgwMDAyIH0sCiAJCX0s
Ci0JfSwgewotCQk3NDI1MDAwMCwgewotCQkJeyAweDAwNzIsIDB4MDAwMX0sCi0JCQl7IDB4MjE0
NSwgMHgwMDAyfSwKLQkJCXsgMHg0MDYxLCAweDAwMDJ9CisJfSwgIHsKKwkJMTIyNjY2MDAwLCB7
CisJCQl7IDB4MDA1MSwgMHgwMDAyIH0sCisJCQl7IDB4MjE0NSwgMHgwMDAyIH0sCisJCQl7IDB4
NDA2MSwgMHgwMDAyIH0sCiAJCX0sCi0JfSwgewotCQk4MzUwMDAwMCwgewotCQkJeyAweDAwNzIs
IDB4MDAwMX0sCisJfSwgIHsKKwkJMTQ3MjAwMDAwLCB7CisJCQl7IDB4MDA1MSwgMHgwMDAyIH0s
CisJCQl7IDB4MjE0NSwgMHgwMDAyIH0sCisJCQl7IDB4NDA2NCwgMHgwMDAzIH0sCiAJCX0sCi0J
fSwgewotCQkxMDgwMDAwMDAsIHsKLQkJCXsgMHgwMDUxLCAweDAwMDJ9LAotCQkJeyAweDIxNDUs
IDB4MDAwMn0sCi0JCQl7IDB4NDA2MSwgMHgwMDAyfQorCX0sICB7CisJCTE4NDAwMDAwMCwgewor
CQkJeyAweDAwNTEsIDB4MDAwMiB9LAorCQkJeyAweDIxNGMsIDB4MDAwMyB9LAorCQkJeyAweDQw
NjQsIDB4MDAwMyB9LAogCQl9LAotCX0sIHsKLQkJMTA2NTAwMDAwLCB7Ci0JCQl7IDB4MDA1MSwg
MHgwMDAyfSwKLQkJCXsgMHgyMTQ1LCAweDAwMDJ9LAotCQkJeyAweDQwNjEsIDB4MDAwMn0KKwl9
LCAgeworCQkyMjY2NjYwMDAsIHsKKwkJCXsgMHgwMDQwLCAweDAwMDMgfSwKKwkJCXsgMHgyMTRj
LCAweDAwMDMgfSwKKwkJCXsgMHg0MDY0LCAweDAwMDMgfSwKIAkJfSwKLQl9LCB7Ci0JCTE0NjI1
MDAwMCwgewotCQkJeyAweDAwNTEsIDB4MDAwMn0sCi0JCQl7IDB4MjE0NSwgMHgwMDAyfSwKLQkJ
CXsgMHg0MDYxLCAweDAwMDJ9CisJfSwgIHsKKwkJMjcyMDAwMDAwLCB7CisJCQl7IDB4MDA0MCwg
MHgwMDAzIH0sCisJCQl7IDB4MjE0YywgMHgwMDAzIH0sCisJCQl7IDB4NWE2NCwgMHgwMDAzIH0s
CiAJCX0sCi0JfSwgewotCQkxNDg1MDAwMDAsIHsKLQkJCXsgMHgwMDUxLCAweDAwMDN9LAotCQkJ
eyAweDIxNGMsIDB4MDAwM30sCi0JCQl7IDB4NDA2NCwgMHgwMDAzfQorCX0sICB7CisJCTM0MDAw
MDAwMCwgeworCQkJeyAweDAwNDAsIDB4MDAwMyB9LAorCQkJeyAweDNiNGMsIDB4MDAwMyB9LAor
CQkJeyAweDVhNjQsIDB4MDAwMyB9LAogCQl9LAotCX0sIHsKKwl9LCAgeworCQk2MDAwMDAwMDAs
IHsKKwkJCXsgMHgxYTQwLCAweDAwMDMgfSwKKwkJCXsgMHgzYjRjLCAweDAwMDMgfSwKKwkJCXsg
MHg1YTY0LCAweDAwMDMgfSwKKwkJfSwKKwl9LCAgewogCQl+MFVMLCB7Ci0JCQl7IDB4MDBhMCwg
MHgwMDBhIH0sCi0JCQl7IDB4MjAwMSwgMHgwMDBmIH0sCi0JCQl7IDB4NDAwMiwgMHgwMDBmIH0s
CisJCQl7IDB4MDAwMCwgMHgwMDAwIH0sCisJCQl7IDB4MDAwMCwgMHgwMDAwIH0sCisJCQl7IDB4
MDAwMCwgMHgwMDAwIH0sCiAJCX0sCiAJfQogfTsKLS0gCjIuMzAuMgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
