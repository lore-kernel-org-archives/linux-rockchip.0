Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8C39C3064D
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jun 2024 00:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q2sUQ/APMXKvrKqDEwhN5oayOIUW2frzBRc8+jaQ3HA=; b=iqn24gZ7P/hFhX
	9Pva8+cmDRPmV++Txb+wv+Mb+Ft+JPYrUzOJNEMKfv2wFH5yuOp5/bXdryaCIjrvLg0LRo1QViUGc
	/Jh2m9ezucY45jpMTmLixDvJvo9gkSX22ii4EFfrtgdkux8Rto5clOj1k2BqCY0o0JERDhps8kbRQ
	8JSQ1WnWe2iBAR0dJP6ujawmV44wOThkQ3pipcSyAyhkey/Kgu9Tj19GuE/geBMTABW8tr3XZceE+
	wzPwYC8YQX97XpT+3uh3of/aIQwqiLcU7PeON1VBy2rTixQvOW7dutIGOnbgVdbWb0pmWbMfDtMsD
	4prpJQVIY2w+NXR5QRlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNLwN-0000000FQJ1-35x4;
	Sat, 29 Jun 2024 00:27:44 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNLwC-0000000FQDk-26uH;
	Sat, 29 Jun 2024 00:27:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1719620849;
	bh=eXyQilo90szlOYhUb0U8hcMrE0RKEYfQYYK0EvOt2fo=;
	h=From:Date:Subject:To:Cc:From;
	b=fEHW/Lp++jRWGvU4dRooQL8SOAyaWieknB1dPCbIn35MeENIB/33CP4D5GloD8CDV
	 iOmr7UvTlUhjlx+OhllPvG1TGoobdbFJRVhBu3aa/yjcV288Vrg8TmDiBT7UikuNCI
	 ALVP9lkyA1UwMjfVZiz2Bk/EZf4DJSW1Ynj1J4EW78Neo9D67WoYcinuoJDJU9mJc+
	 whMFLq+xk4xj6FnLTGV1OpPJWlip5rifQIrL1Wq01Pg+jlUcKpymuAvtwRvVK0eIvc
	 gZr60dlrIQTyW8sYvAeZtFXrEZYpa+MywNb6y52FVhmdVtol8a4avi9kYuBnp6w/B+
	 5ZV8nxR13w6cA==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2737C37821E6;
	Sat, 29 Jun 2024 00:27:29 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 29 Jun 2024 03:26:58 +0300
Subject: [PATCH] phy: phy-rockchip-samsung-hdptx: Select CONFIG_MFD_SYSCON
MIME-Version: 1.0
Message-Id: <20240629-rk-hdptx-compile-test-fix-v1-1-c86675ba8070@collabora.com>
X-B4-Tracking: v=1; b=H4sIANFUf2YC/x2MWwqAIBAArxL73YItFdhVoo/MLZdeohJBdPekz
 xmYeSByEI7QFQ8EviTKeWSoygImNx4Lo9jMQIpq1ZLGsKKzPt04nbuXjTFxTDjLjcYoq9tRGaI
 Gcu8DZ/2/++F9P/XpbR1rAAAA
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_172732_916811_0D93265C 
X-CRM114-Status: UNSURE (   9.07  )
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

Q29tcGlsZSB0ZXN0aW5nIGNvbmZpZ3VyYXRpb25zIHdpdGhvdXQgUkVHTUFQIHN1cHBvcnQgZW5h
YmxlZCByZXN1bHRzIGluCmEgYnVuY2ggb2YgZXJyb3JzIGJlaW5nIHJlcG9ydGVkOgoKICAuLi9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jOjU2OToyMTog
ZXJyb3I6IHZhcmlhYmxlIOKAmHJrX2hkcHR4X3BoeV9yZWdtYXBfY29uZmln4oCZIGhhcyBpbml0
aWFsaXplciBidXQgaW5jb21wbGV0ZSB0eXBlCiAgICA1NjkgfCBzdGF0aWMgY29uc3Qgc3RydWN0
IHJlZ21hcF9jb25maWcgcmtfaGRwdHhfcGh5X3JlZ21hcF9jb25maWcgPSB7CiAgICAgICAgfCAg
ICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn4KICAuLi9kcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jOjU3MDoxMDogZXJyb3I6IOKAmGNvbnN0IHN0
cnVjdCByZWdtYXBfY29uZmln4oCZIGhhcyBubyBtZW1iZXIgbmFtZWQg4oCYcmVnX2JpdHPigJkK
ICAgIDU3MCB8ICAgICAgICAgLnJlZ19iaXRzID0gMzIsCiAgICAgICAgfCAgICAgICAgICBefn5+
fn5+fgoKTm90ZSB0aGF0IHNlbGVjdGluZyBSRUdNQVAgYWxvbmUgaXMgbm90IGVub3VnaCwgYmVj
YXVzZSBvZiB0aGUgZm9sbG93aW5nCmxpa2VyIGVycm9yOgoKICBwaHktcm9ja2NoaXAtc2Ftc3Vu
Zy1oZHB0eC5jOigudGV4dCsweDEwYyk6IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYF9fZGV2bV9y
ZWdtYXBfaW5pdF9tbWlvX2NsaycKCkluc3RlYWQgb2YgdGhlIG9idmlvdXMgZml4IHRvIGVuYWJs
ZSBSRUdNQVBfTU1JTywgc2VsZWN0IE1GRF9TWVNDT04sCndoaWNoIGltcGxpY2l0bHkgZW5hYmxl
cyBSRUdNQVBfTU1JTyBhcyB3ZWxsLiAgVGhlIHJhdGlvbmFsZSBpcyB0aGF0IHRoZQpkcml2ZXIg
aGFzIGJlZW4gYWxyZWFkeSByZWx5aW5nIG9uIHRoZSBzeXNjb24gZnVuY3Rpb25hbGl0eS4KCk1v
cmVvdmVyLCB3aXRob3V0IE1GRF9TWVNDT04gZW5hYmxlZCwgdGhlIHRlc3QgY292ZXJhZ2UgaXMg
cmVkdWNlZCwKc2luY2UgdGhlIGxpbmtlciBtaWdodCBub3QgZGV0ZWN0IGFueSBwb3RlbnRpYWwg
dW5kZWZpbmVkIHJlZmVyZW5jZXMKZm9sbG93aW5nIHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X3Bo
YW5kbGUoKSBpbnZvY2F0aW9uIGluCnJrX2hkcHR4X3BoeV9wcm9iZSgpIGJvZHkuICBUaGF0IGlz
IGJlY2F1c2UgdGhlIGZ1bmN0aW9uIHdvdWxkCnVuY29uZGl0aW9uYWxseSByZXR1cm4gLUVOT1RT
VVAsIGhlbmNlIHRoZSBjb21waWxlciBpcyBmcmVlIHRvIG9wdGltaXplCm91dCBhbnkgdW5yZWFj
aGFibGUgY29kZS4KCkZpbmFsbHkgZW5zdXJlIFBIWV9ST0NLQ0hJUF9TQU1TVU5HX0hEUFRYIGRl
cGVuZHMgb24gSEFTX0lPTUVNLCBhcwpyZXF1aXJlZCBieSBNRkRfU1lTQ09OLgoKRml4ZXM6IDU1
M2JlMjgzMGM1ZiAoInBoeTogcm9ja2NoaXA6IEFkZCBTYW1zdW5nIEhETUkvZURQIENvbWJvIFBI
WSBkcml2ZXIiKQpTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNp
b2NhbHRlYUBjb2xsYWJvcmEuY29tPgotLS0KIGRyaXZlcnMvcGh5L3JvY2tjaGlwL0tjb25maWcg
fCAyICsrCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL0tjb25maWcK
aW5kZXggMDhiMGY0MzQ1NzYwLi40OTAyNjMzNzUwNTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL0tjb25maWcKKysrIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvS2NvbmZpZwpAQCAt
ODYsNyArODYsOSBAQCBjb25maWcgUEhZX1JPQ0tDSElQX1BDSUUKIGNvbmZpZyBQSFlfUk9DS0NI
SVBfU0FNU1VOR19IRFBUWAogCXRyaXN0YXRlICJSb2NrY2hpcCBTYW1zdW5nIEhETUkvZURQIENv
bWJvIFBIWSBkcml2ZXIiCiAJZGVwZW5kcyBvbiAoQVJDSF9ST0NLQ0hJUCB8fCBDT01QSUxFX1RF
U1QpICYmIE9GCisJZGVwZW5kcyBvbiBIQVNfSU9NRU0KIAlzZWxlY3QgR0VORVJJQ19QSFkKKwlz
ZWxlY3QgTUZEX1NZU0NPTgogCXNlbGVjdCBSQVRJT05BTAogCWhlbHAKIAkgIEVuYWJsZSB0aGlz
IHRvIHN1cHBvcnQgdGhlIFJvY2tjaGlwIEhETUkvZURQIENvbWJvIFBIWQoKLS0tCmJhc2UtY29t
bWl0OiAxZWI1ODZhOTc4MmNkZThlNTA5MWI5ZGU3NDYwM2UwYTgzODZiMDllCmNoYW5nZS1pZDog
MjAyNDA2MjktcmstaGRwdHgtY29tcGlsZS10ZXN0LWZpeC1iYjBkOTZhMGIyMjUKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
