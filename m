Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABB92C44515
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 12:21:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhoyYLSqmQjZQc9OX34NnY5wQ3IpdhyU2P1TbbaBSYY=; b=BhTlg65MsIkQIN
	xj44PGZNzMG5Y4minVJOSIQMxqh+7gl7tJp0EcJR90p/n083GRou9UjjjwU9XO9VS5CMVSzAwkCyV
	NzCPl9YL5MbRapIbrnpPHJ5b3ei7MTABpZ1xkL6Cnb+GQukaHdHoYgOJK6UB7JTzIJ4zmUV1Y/GV5
	E5Bbj57nAsosH9MQ6K8fwMXwBOZ/P4NjoW2Hj4NXd61xOGWN4+ToK1LSS2vF0+DhO7wrDiVFwN2HV
	nRkk1ZRkc1pLg7hm/+j1CLz82wEP3T7QgtKiwR2VNUoN2pPXbrwyc+kfSuN8eb3aQIJ+Qj70P3kU7
	2y2QQdaMbY+YKHYyP87A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmzZ-00000006gck-40mS;
	Mon, 20 Jul 2026 12:21:05 +0000
Received: from wp585.webpack.hosteurope.de ([80.237.130.107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlmzW-00000006gan-25I0;
	Mon, 20 Jul 2026 12:21:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=loe-web.de;
	s=he168698; h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
	Date:Subject:In-Reply-To:References:Cc:To:From:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=ZT1jaqD1Iccb31fXdwSCF9w0Y9iQoL1OwEC509jWVdI=; t=1784550062; x=1784982062; 
	b=ogPN1ev90JIDAeEsG8BTrxMST5U42TqgWPccC1gBxjqVn7KHijepwQ6dg3hm/Gsuek3DWu1D/qo
	rNBGR7bR4Vmj2IkwxcLBKjTeT6+5nmNbL64FYRdXZIhRgiZ6SFuPJ4OBVGlyCVX9eXJFYc1aa+DaA
	zZ23/5ExAeWMo9MAVqeUywFAAxdbkUVoc7nZ2VdOGaP+141YIGa7FzVylVz0LeUnnTmyVWT6/XWP4
	kQyy/VMbBmjuX3h6VMoVCXNV+BF2wc7PcG/3T04RjHx1S75Xx8OYQ8K/+89eIOiO1U68+15UvlL8B
	mtBypmtuGs18zg9yO+TeWZ8MXhbWlCKZDBuQ==;
Received: from host-213-179-158-197.customer.m-online.net ([213.179.158.197] helo=84JJL23); authenticated
	by wp585.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
	id 1wlmzI-004nlt-2U;
	Mon, 20 Jul 2026 14:20:48 +0200
From: "Jakob Loe" <jakob@loe-web.de>
To: "'Alibek Omarov'" <a1ba.omarov@gmail.com>,
	"'Rok Markovic'" <rok@kanardia.eu>
Cc: "'Heiko Stuebner'" <heiko@sntech.de>,
	"'Sandy Huang'" <hjc@rock-chips.com>,
	"'Andy Yan'" <andy.yan@rock-chips.com>,
	"'Maarten Lankhorst'" <maarten.lankhorst@linux.intel.com>,
	"'Maxime Ripard'" <mripard@kernel.org>,
	"'Thomas Zimmermann'" <tzimmermann@suse.de>,
	"'David Airlie'" <airlied@gmail.com>,
	"'Simona Vetter'" <simona@ffwll.ch>,
	"'Rob Herring'" <robh@kernel.org>,
	"'Krzysztof Kozlowski'" <krzk+dt@kernel.org>,
	"'Conor Dooley'" <conor+dt@kernel.org>,
	<dri-devel@lists.freedesktop.org>,
	<devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
References: <20260717120005.2087386-1-rok@kanardia.eu> <20260717120005.2087386-4-rok@kanardia.eu> <CAKyg=SV2-81VFgr+Tq=-Si5EO-86MA+ZFoQ+DX1fEYdnnLYJng@mail.gmail.com>
In-Reply-To: <CAKyg=SV2-81VFgr+Tq=-Si5EO-86MA+ZFoQ+DX1fEYdnnLYJng@mail.gmail.com>
Subject: AW: [PATCH 3/4] drm/rockchip: lvds: add RK3568 support
Date: Mon, 20 Jul 2026 14:20:48 +0200
Message-ID: <000c01dd1842$32a0a580$97e1f080$@loe-web.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFaHWtND3nIPg5aqhiCEj6HM4JNGQJz810+As1SicW3Uj7lQA==
Content-Language: de
X-bounce-key: webpack.hosteurope.de;jakob@loe-web.de;1784550062;9dd12afc;
X-HE-SMSGID: 1wlmzI-004nlt-2U
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_052102_708320_24AF7335 
X-CRM114-Status: UNSURE (   8.72  )
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

SGVsbG8hIAoKTmljZSB0byBzZWUgdGhpcyBpcyBzdGlsbCBiZWluZyB1c2VkLgpJIGNhbiBjb25m
aXJtIHRoYXQgdGhpcyBhY3R1YWxseSB3b3JrcyBhbmQgb3V0cHV0cyBmaW5lIExWRFMgb24gYSBS
SzM1NjYuIEFsc28gcmVsaWFibHkgc28gZmFyLi4uCkFueSBxdWVzdGlvbnMsIEkgd2lsbCBzZWUg
d2hhdCBJIGNhbiBoZWxwLgoKQWxsIHRoZSBiZXN0Ckpha29iCgoKLS0tLS1VcnNwcsO8bmdsaWNo
ZSBOYWNocmljaHQtLS0tLQpWb246IEFsaWJlayBPbWFyb3YgPGExYmEub21hcm92QGdtYWlsLmNv
bT4gCkdlc2VuZGV0OiBNb250YWcsIDIwLiBKdWxpIDIwMjYgMDc6MzkKQW46IFJvayBNYXJrb3Zp
YyA8cm9rQGthbmFyZGlhLmV1PgpDYzogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT47
IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+OyBBbmR5IFlhbiA8YW5keS55YW5Acm9j
ay1jaGlwcy5jb20+OyBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPjsgTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPjsgVGhvbWFzIFpp
bW1lcm1hbm4gPHR6aW1tZXJtYW5uQHN1c2UuZGU+OyBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAZ21h
aWwuY29tPjsgU2ltb25hIFZldHRlciA8c2ltb25hQGZmd2xsLmNoPjsgUm9iIEhlcnJpbmcgPHJv
YmhAa2VybmVsLm9yZz47IEtyenlzenRvZiBLb3psb3dza2kgPGtyemsrZHRAa2VybmVsLm9yZz47
IENvbm9yIERvb2xleSA8Y29ub3IrZHRAa2VybmVsLm9yZz47IGRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmc7IGRldmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc7
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IEpha29iIExvZXNjaGtlIDxqYWtvYkBsb2Ut
d2ViLmRlPgpCZXRyZWZmOiBSZTogW1BBVENIIDMvNF0gZHJtL3JvY2tjaGlwOiBsdmRzOiBhZGQg
UkszNTY4IHN1cHBvcnQKCj4gQmFzZWQgb24gQWxpYmVrIE9tYXJvdidzIGVhcmxpZXIgcG9zdGlu
ZyBbMV0sIHdpdGggdGhlIGNoYW5nZXMgYmVsb3cuCgpIaSwgSSdtIEFsaWJlayBPbWFyb3YgYW5k
IHRoYW5rcyBmb3IgcGlja2luZyB1cCBteSBwYXRjaGVzLiBJIGRpZG4ndCBoYWQgdGltZSB0byBm
aW5pc2ggdGhlbSBhbmQgdGhlc2UgZGF5cyBJIGRvbid0IHdvcmsgb24gaGFyZHdhcmUgdGhhdCB1
c2VzIGFueSBvZiBSb2NrY2hpcCBTb0NzLiBIb3dldmVyLCBpZiBJJ20gbm90IHdyb25nLCBpdCdz
IHN0aWxsIHVzZWQgaW4gcHJvZHVjdGlvbiBhbmQgSSBoYWQgcmVwb3J0IGZyb20gSmFrb2IgTG9l
c2Noa2UgKGFkZGVkIGluIENDKSB3aG8gY29uZmlybWVkIGl0IHdvcmtlZCBpbiB0aGVpciBzZXR1
cCBhcyB3ZWxsLgoKVGhhbmtzLgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
