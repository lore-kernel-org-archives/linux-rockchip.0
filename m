Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61AB1D11183
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Nov 2025 10:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bciMplImT+6ahxw0m+DoZjXu6QxUomBv8fIg9HtE8cw=; b=aI6z6ih1uAeKxk
	no9Zi0gJZcd8zZWZVB//KGip2YZfbwFHwi+vqtfnzcqu3a4a0ZZk+RPlTuLYNcxpxVpQn8h9J4ygq
	BS1huttXpTDjzktDCPxteRgk4boXsWnd8UflWgg40+Pn5PMEgc4y5+uGdfXfFZV1ROZtVY0qGC5Vb
	2LX2aSaz4KDv35EsijRpP9+DNz1M+ny3uHjJ+aSNrL5EfpLClDXWRcUaXYSlwwifyhWgwgF9swOv5
	ixm1oPGrdurfoNeojUV+amfCum/r3WUr142U44pqi7BcM0/1VXv2oB+s3JyrVEwoyM6r9gVPy806n
	fgIAtukfpO8CH2XgGH4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOZCv-0000000GNIU-2JmN;
	Thu, 27 Nov 2025 10:26:37 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOZCs-0000000GNGT-2DR3
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Nov 2025 10:26:35 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 23BD41A1DC9;
	Thu, 27 Nov 2025 10:26:33 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E90836068C;
	Thu, 27 Nov 2025 10:26:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 24E03102F275B;
	Thu, 27 Nov 2025 11:26:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764239191; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Ty06Lu9jM47nhD5kJlUx5SDRAvr8cRr/zqTlMHAryT0=;
	b=Wc30LcY70goGq8iaS1mGSVu5Y0iZMA/xWEDEr+bupHRRWd7a9GFE4e4teqRSRR6pyVB8YE
	LnD7SV+r4SZYeNSIfoNG9i4+OcYNZEK7xVh1prdAx2i2dHSui/cnQOXTPfhHPKmmiBJFV7
	+kF9yO9uwv/QdeZYARzn8IIdcYZk61+6j6gi/hk1XjzE41HTEiFtaAkus8pN9otPj1Yws+
	8haIUY2u3HFmraaWVyjR77tXzDgy/9M+FO/rSUH7vFAbuYD0d5sq5S3ZYyNI0sOYlBOY+N
	kK4iKRJsX80WCzOi2a+Yd+C74H+JV97zYul1k05CSPggeWkmJDTn9x2wIsY0PA==
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
Date: Thu, 27 Nov 2025 11:26:16 +0100
Subject: [PATCH v2 1/2] phy: rockchip: inno-usb2: fix disconnection in
 gadget mode
MIME-Version: 1.0
Message-Id: <20251127-rk3308-fix-usb-gadget-phy-disconnect-v2-1-dac8a02cd2ca@bootlin.com>
References: <20251127-rk3308-fix-usb-gadget-phy-disconnect-v2-0-dac8a02cd2ca@bootlin.com>
In-Reply-To: <20251127-rk3308-fix-usb-gadget-phy-disconnect-v2-0-dac8a02cd2ca@bootlin.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, William Wu <wulf@rock-chips.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, 
 Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>, 
 Alan Stern <stern@rowland.harvard.edu>, 
 Louis Chauvet <louis.chauvet@bootlin.com>, 
 =?utf-8?q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>, 
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
 stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_022634_752127_9E76F7E8 
X-CRM114-Status: GOOD (  16.03  )
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

RnJvbTogTG91aXMgQ2hhdXZldCA8bG91aXMuY2hhdXZldEBib290bGluLmNvbT4KCldoZW4gdGhl
IE9URyBVU0IgcG9ydCBpcyB1c2VkIHRvIHBvd2VyIHRoZSBTb0MsIGNvbmZpZ3VyZWQgYXMgcGVy
aXBoZXJhbAphbmQgdXNlZCBpbiBnYWRnZXQgbW9kZSwgdGhlcmUgaXMgYSBkaXNjb25uZWN0aW9u
IGFib3V0IDYgc2Vjb25kcyBhZnRlciB0aGUKZ2FkZ2V0IGlzIGNvbmZpZ3VyZWQgYW5kIGVudW1l
cmF0ZWQuCgpUaGUgcHJvYmxlbSB3YXMgb2JzZXJ2ZWQgb24gYSBSYWR4YSBSb2NrIFBpIFMgYm9h
cmQsIHdoaWNoIGNhbiBvbmx5IGJlCnBvd2VyZWQgYnkgdGhlIG9ubHkgVVNCLUMgY29ubmVjdG9y
LiBUaGF0IGNvbm5lY3RvciBpcyB0aGUgb25seSBvbmUgdXNhYmxlCmluIGdhZGdldCBtb2RlLiBU
aGlzIGltcGxpZXMgdGhlIFVTQiBjYWJsZSBpcyBjb25uZWN0ZWQgZnJvbSBiZWZvcmUgYm9vdAph
bmQgbmV2ZXIgZGlzY29ubmVjdHMgd2hpbGUgdGhlIGtlcm5lbCBydW5zLgoKVGhlIHByb2JsZW0g
aGFwcGVucyBiZWNhdXNlIG9mIHRoZSBQSFkgZHJpdmVyIGNvZGUgZmxvdywgc3VtbWFyaXplZCBh
czoKCiAqIFVEQyBzdGFydCBjb2RlICh0cmlnZ2VyZWQgdmlhIGNvbmZpZ2ZzIGF0IGFueSB0aW1l
IGFmdGVyIGJvb3QpCiAgIC0+IHBoeV9pbml0CiAgICAgICAtPiByb2NrY2hpcF91c2IycGh5X2lu
aXQKICAgICAgICAgICAtPiBzY2hlZHVsZV9kZWxheWVkX3dvcmsob3RnX3NtX3dvcmsgW0FdLCA2
IHNlYykKICAgLT4gcGh5X3Bvd2VyX29uCiAgICAgICAtPiByb2NrY2hpcF91c2IycGh5X3Bvd2Vy
X29uCiAgICAgICAgICAgLT4gZW5hYmxlIGNsb2NrCiAgICAgICAgICAgLT4gcm9ja2NoaXBfdXNi
MnBoeV9yZXNldAoKICogTm93IHRoZSBnYWRnZXQgaW50ZXJmYWNlIGlzIHVwIGFuZCBydW5uaW5n
LgoKICogNiBzZWNvbmRzIGxhdGVyIG90Z19zbV93b3JrIHN0YXJ0cyBbQV0KICAgLT4gcm9ja2No
aXBfdXNiMnBoeV9vdGdfc21fd29yaygpOgogICAgICAgaWYgKEJfSURMRSBzdGF0ZSAmJiBWQlVT
IHByZXNlbnQgJiYgLi4uKToKICAgICAgICAgICBzY2hlZHVsZV9kZWxheWVkX3dvcmsoJnJwb3J0
LT5jaGdfd29yayBbQl0sIDApOwoKICogaW1tZWRpYXRlbHkgdGhlIGNoZ19kZXRlY3Rfd29yayBz
dGFydHMgW0JdCiAgIC0+IHJvY2tjaGlwX2NoZ19kZXRlY3Rfd29yaygpOgogICAgICAgaWYgY2hn
X3N0YXRlIGlzIFVOREVGSU5FRDoKICAgICAgICAgICBpZiAoIXJwb3J0LT5zdXNwZW5kZWQpOgog
ICAgICAgICAgICAgICByb2NrY2hpcF91c2IycGh5X3Bvd2VyX29mZigpIDwtLS0gW1hdCgpBdCBb
WF0sIHRoZSBQSFkgaXMgcG93ZXJlZCBvZmYsIGNhdXNpbmcgYSBkaXNjb25uZWN0aW9uLiBUaGlz
IHF1aWNrbHkKdHJpZ2dlcnMgYSBuZXcgY29ubmVjdGlvbiBhbmQgZm9sbG93aW5nIHJlLWVudW1l
cmF0aW9uLCBidXQgYW55IGNvbm5lY3Rpb24KdGhhdCBoYWQgYmVlbiBlc3RhYmxpc2hlZCBkdXJp
bmcgdGhlIDYgc2Vjb25kcyBpcyBicm9rZW4uCgpUaGUgY29kZSBhbHJlYWR5IGNoZWNrcyBmb3Ig
IXJwb3J0LT5zdXNwZW5kZWQgKHdoaWNoLCBzb21ld2hhdApjb3VudGVyLWludHVpdGl2ZWx5LCBt
ZWFucyB0aGUgUEhZIGlzIHBvd2VyZWQgb24pLCBzbyBhZGQgYSBndWFyZCBmb3IgVkJVUwphcyB3
ZWxsIHRvIGF2b2lkIGEgZGlzY29ubmVjdGlvbiB3aGVuIGEgY2FibGUgaXMgY29ubmVjdGVkLgoK
Rml4ZXM6IDk4ODk4ZjNiYzgzYyAoInBoeTogcm9ja2NoaXAtaW5uby11c2IyOiBzdXBwb3J0IG90
Zy1wb3J0IGZvciByazMzOTkiKQpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpDbG9zZXM6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyNTA0MTQxODU0NTguNzc2N2FhYmNAYm9vdHkv
ClNpZ25lZC1vZmYtYnk6IExvdWlzIENoYXV2ZXQgPGxvdWlzLmNoYXV2ZXRAYm9vdGxpbi5jb20+
CkNvLWRldmVsb3BlZC1ieTogTHVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBib290bGluLmNv
bT4KU2lnbmVkLW9mZi1ieTogTHVjYSBDZXJlc29saSA8bHVjYS5jZXJlc29saUBib290bGluLmNv
bT4KUmV2aWV3ZWQtYnk6IFRow6lvIExlYnJ1biA8dGhlby5sZWJydW5AYm9vdGxpbi5jb20+Ci0t
LQogZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIHwgNiArKysr
LS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIGIv
ZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jCmluZGV4IGIwZjIz
NjkwZWMzMC4uMDEwNmQ3YjdhZTI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtaW5uby11c2IyLmMKKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJv
Y2tjaGlwLWlubm8tdXNiMi5jCkBAIC04MjEsMTQgKzgyMSwxNiBAQCBzdGF0aWMgdm9pZCByb2Nr
Y2hpcF9jaGdfZGV0ZWN0X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQogCQljb250YWlu
ZXJfb2Yod29yaywgc3RydWN0IHJvY2tjaGlwX3VzYjJwaHlfcG9ydCwgY2hnX3dvcmsud29yayk7
CiAJc3RydWN0IHJvY2tjaGlwX3VzYjJwaHkgKnJwaHkgPSBkZXZfZ2V0X2RydmRhdGEocnBvcnQt
PnBoeS0+ZGV2LnBhcmVudCk7CiAJc3RydWN0IHJlZ21hcCAqYmFzZSA9IGdldF9yZWdfYmFzZShy
cGh5KTsKLQlib29sIGlzX2RjZCwgdG1vdXQsIHZvdXQ7CisJYm9vbCBpc19kY2QsIHRtb3V0LCB2
b3V0LCB2YnVzX2F0dGFjaDsKIAl1bnNpZ25lZCBsb25nIGRlbGF5OwogCisJdmJ1c19hdHRhY2gg
PSBwcm9wZXJ0eV9lbmFibGVkKHJwaHktPmdyZiwgJnJwb3J0LT5wb3J0X2NmZy0+dXRtaV9idmFs
aWQpOworCiAJZGV2X2RiZygmcnBvcnQtPnBoeS0+ZGV2LCAiY2hnIGRldGVjdGlvbiB3b3JrIHN0
YXRlID0gJWRcbiIsCiAJCXJwaHktPmNoZ19zdGF0ZSk7CiAJc3dpdGNoIChycGh5LT5jaGdfc3Rh
dGUpIHsKIAljYXNlIFVTQl9DSEdfU1RBVEVfVU5ERUZJTkVEOgotCQlpZiAoIXJwb3J0LT5zdXNw
ZW5kZWQpCisJCWlmICghcnBvcnQtPnN1c3BlbmRlZCAmJiAhdmJ1c19hdHRhY2gpCiAJCQlyb2Nr
Y2hpcF91c2IycGh5X3Bvd2VyX29mZihycG9ydC0+cGh5KTsKIAkJLyogcHV0IHRoZSBjb250cm9s
bGVyIGluIG5vbi1kcml2aW5nIG1vZGUgKi8KIAkJcHJvcGVydHlfZW5hYmxlKGJhc2UsICZycGh5
LT5waHlfY2ZnLT5jaGdfZGV0Lm9wbW9kZSwgZmFsc2UpOwoKLS0gCjIuNTEuMQoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
