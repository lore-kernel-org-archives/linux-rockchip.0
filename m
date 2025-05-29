Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ADA5C5AD49
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 May 2025 09:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MJL+Zcm3o8KyHE2wNk2U+s9f5x0qG8MfzkCre2NqxbA=; b=qJs7Ewsc7pNY77
	D1+hHPPstHqp1Q5fzV+0p0Igw4JrOm4673HEhrCUR97xD+DRsckRAffxx812y5MmG+SF/izJ2reNO
	5EF8wKY/0qxtduFnrTWkwZa0pDNRLw7wcr2LJrDihC5xw4qdxxh6Bo7M5pmgYoTD0Zp6ba1uNt3He
	PSnGnWPIlR4xJq3gTFydoDMkYtFJd15CPuaBfD6jsVhdEE6FZqIXGkNdBDdlh1Gm4Puw+Msl67CAD
	hQqTO6W8niZeuIVMProdzkOPHIvvsEliDX0tr19ibVAIBVYb26wvklHbLu40QUCqL0wiZj9O6FtWq
	jIstiUJ47PMv1GiE/4HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKZiT-0000000FQct-1Y9p;
	Thu, 29 May 2025 09:38:25 +0000
Received: from ni.piap.pl ([195.187.100.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKZa1-0000000FPU5-0ZSW;
	Thu, 29 May 2025 09:29:42 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id 68AFEC3EEAC9;
	Thu, 29 May 2025 11:29:39 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl 68AFEC3EEAC9
From: Krzysztof =?utf-8?Q?Ha=C5=82asa?= <khalasa@piap.pl>
To: Dafna Hirschfeld <dafna@fastmail.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho
 Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Jacopo
 Mondi <jacopo.mondi@ideasonboard.com>, Paul Elder
 <paul.elder@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>
Subject: [PATCH] media: rkisp1: correct histogram window size
Date: Thu, 29 May 2025 11:29:39 +0200
Message-ID: <m3sekn69z0.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_022941_337263_453BBFBC 
X-CRM114-Status: UNSURE (   7.93  )
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

VGhlIGhpc3RvZ3JhbSB3aW5kb3cgZGltZW5zaW9ucyBhcmUgdW5uZWNlc3NhcmlseSBkZWNyZW1l
bnRlZC4gVGhpcyBjYW4gYmUKc2VlbiBpbiB0aGUgZm9sbG93aW5nIGV4YW1wbGUsIHdoZXJlIHdo
ZW4gYWxsIHBpeGVscyBhcmUgb2YgbWF4aW11bSBpbnRlbnNpdHkKdGhlcmUgYXJlIHBpeGVscyB0
aGF0IHdlIGV4cGVjdCB0byBiZSBjb3VudGVkIGJ1dCBhcmUgbWlzc2luZyBmcm9tIHRoZSBoaWdo
ZXN0CmJpbi4gRml4IHRoaXMgYnkgcmVtb3ZpbmcgdGhlIHVubmVjZXNzYXJ5IGRlY3JlbWVudC4K
CldpdGhvdXQgdGhlIHBhdGNoIChpLk1YOE1QLCBhbGwtd2hpdGUgUkdHQi0xMiBmdWxsIEhEIGlu
cHV0IGZyb20KdGhlIHNlbnNvciwgWVVWIE5WMTIgb3V0cHV0IGZyb20gSVNQLCBmdWxsIHJhbmdl
LCBoaXN0b2dyYW0gWSBtb2RlKS4KSElTVF9TVEVQU0laRSA9IDMgKGxvd2VzdCBwZXJtaXR0ZWQp
LCBhbGwgd2VpZ2h0cyBhcmUgc2V0IHRvIDE6Cgppc3BfaGlzdF9oX3NpemU6IDM4MyAoPSAxOTIw
IC8gNSAtIDEpCmlzcF9oaXN0X3Zfc2l6ZTogMjE1ICg9IDEwODAgLyA1IC0gMSkKaGlzdG9ncmFt
X21lYXN1cmVtZW50X3Jlc3VsdFsxNl06IDAgMCAwIDAgIDAgMCAwIDAgIDAgMCAwIDAgIDAgMCAw
IDIyOTQwMQoKQXBwYXJlbnRseSB0aGUgaGlzdG9ncmFtIGlzIG1pc3NpbmcgdGhlIGxhc3QgY29s
dW1uICgzLXBpeGVsIHdpZGUsCnRob3VnaCBvbmx5IHNpbmdsZSBwaXhlbHMgY291bnQpIGFuZCB0
aGUgbGFzdCAoc2FtZSBpZGVhKSByb3cKb2YgdGhlIGlucHV0IGltYWdlOiAxOTE3ICogMTA3NyAv
IDMgLyAzID0gMjI5NDAxLgoKRS5nLiB3aXRob3V0IHRoZSBwYXRjaCwgdGhlIHBpeGVscyBjb3Vu
dGVkIGluIGxpbmVzIGFyZToKMCwgMywgLi4uIDE5MTQgKHdoaWNoIG1ha2VzIDE5MTcvMyksIGFu
ZCBwYXRjaGVkOgowLCAzLCAuLi4gMTkxNCwgMTkxNyAod2hpY2ggbWFrZXMgMTkyMC8zKS4KVGhl
IHNhbWUgaXMgdHJ1ZSBmb3Igcm93cy4KCldpdGggdGhlIHBhdGNoIGFwcGxpZWQ6CmlzcF9oaXN0
X2hfc2l6ZTogMzg0ICg9IDE5MjAgLyA1KQppc3BfaGlzdF92X3NpemU6IDIxNiAoPSAxMDgwIC8g
NSkKaGlzdG9ncmFtX21lYXN1cmVtZW50X3Jlc3VsdFsxNl06IDAgMCAwIDAgIDAgMCAwIDAgIDAg
MCAwIDAgIDAgMCAwIDIzMDQwMAoKMTkyMCAqIDEwODAgLyAzIC8gMyA9IDIzMDQwMAoKU2lnbmVk
LW9mZi1ieTogS3J6eXN6dG9mIEhhxYJhc2EgPGtoYWxhc2FAcGlhcC5wbD4KUmV2aWV3ZWQtYnk6
IFBhdWwgRWxkZXIgPHBhdWwuZWxkZXJAaWRlYXNvbmJvYXJkLmNvbT4KCmRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtcGFyYW1zLmMgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtcGFyYW1zLmMKaW5k
ZXggYjI4ZjQxNDBjOGEzLi5jYTliM2U3MTFlNWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1wYXJhbXMuYworKysgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtcGFyYW1zLmMKQEAgLTgxOSw4ICs4
MTksOCBAQCBzdGF0aWMgdm9pZCBya2lzcDFfaHN0X2NvbmZpZ192MTAoc3RydWN0IHJraXNwMV9w
YXJhbXMgKnBhcmFtcywKIAkJICAgICBhcmctPm1lYXNfd2luZG93LnZfb2Zmcyk7CiAKIAlibG9j
a19oc2l6ZSA9IGFyZy0+bWVhc193aW5kb3cuaF9zaXplIC8KLQkJICAgICAgUktJU1AxX0NJRl9J
U1BfSElTVF9DT0xVTU5fTlVNX1YxMCAtIDE7Ci0JYmxvY2tfdnNpemUgPSBhcmctPm1lYXNfd2lu
ZG93LnZfc2l6ZSAvIFJLSVNQMV9DSUZfSVNQX0hJU1RfUk9XX05VTV9WMTAgLSAxOworCQkgICAg
ICBSS0lTUDFfQ0lGX0lTUF9ISVNUX0NPTFVNTl9OVU1fVjEwOworCWJsb2NrX3ZzaXplID0gYXJn
LT5tZWFzX3dpbmRvdy52X3NpemUgLyBSS0lTUDFfQ0lGX0lTUF9ISVNUX1JPV19OVU1fVjEwOwog
CiAJcmtpc3AxX3dyaXRlKHBhcmFtcy0+cmtpc3AxLCBSS0lTUDFfQ0lGX0lTUF9ISVNUX0hfU0la
RV9WMTAsCiAJCSAgICAgYmxvY2tfaHNpemUpOwoKLS0gCktyenlzenRvZiAiQ2hyaXMiIEhhxYJh
c2EKClNpZcSHIEJhZGF3Y3phIMWBdWthc2lld2ljegpQcnplbXlzxYJvd3kgSW5zdHl0dXQgQXV0
b21hdHlraSBpIFBvbWlhcsOzdyBQSUFQCkFsLiBKZXJvem9saW1za2llIDIwMiwgMDItNDg2IFdh
cnN6YXdhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
