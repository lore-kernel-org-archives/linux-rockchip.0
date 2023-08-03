Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36229C001E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Aug 2023 06:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1R0syoBlYnUsnhUlpu00T0kAlUdWBZ6H1xPM097gX9Q=; b=b886MZO7SC8YYjdMVrm7Z2IdIB
	5C+ynoxxZ2DayPYlAsAJqmyFGdRAuw7aPH/VHiQC+hiXbumYf+yCeZiDn+8qUYTCCIPAR6Sg1rYhP
	HmzHXuyyBacOzQUc5icCdxx5yEMTasqYDpeYv5YBgBfyOaSZ3pX7nsLDxQ99dnhGlDCMk5fjvxqv3
	rZpoccZfBrFssu1SO+pW0zliPNE/Qy7MzvBf5hrf7dGxPa3vgMYIPdk0AUfF2FcrGO/whG2nxAcih
	gkt2x/07+sc0ujEnQzRPxzoFRK0VM7G+cpXYjxhhIlgpDDnVcGihOn/2vpCBw56bdfm50YRMLILqR
	KTI6FIhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRRzq-006n4C-2o;
	Thu, 03 Aug 2023 06:39:42 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRRzo-006n3K-0u
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Aug 2023 06:39:41 +0000
Received: from [192.168.15.130] (94-240-0-14.lukman.pl [94.240.0.14])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E524366015A0;
	Thu,  3 Aug 2023 07:39:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1691044778;
	bh=mbhJCCamZaUvv7gj02tF6AHf2SgoVVliqliY7HWr6Fc=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=Ki+FGbYnYinawxuZ3Md+oDYFBxqYps2wHfnsUIjwuH2Qzpjv2+mgbitN5ERaO/GZD
	 K3MiG7Htvsm7FbzZNpPc+Wtb+W2iMrniYONBVcy9/jaDe7Lnk3oVZhh4p0pKJtk/8b
	 7iFDXwfN6x7loiHLhmxftkAi7/bQrgJkUyZg7EUG4ao+JEvKtkVY6+Om2tQSsUiOgD
	 lclR2+3mJlPZI+kVniDTfOKMNnMrfeOqKqXEncA1F/hbAu24nJC5EE0eSkALZvOSii
	 UHclJNupXCsawQCKfZ6SuFlcYia4MHzh3tlggQ1NjknYDcogSgg20E3Q5/iw0pqhyz
	 IQ3d0BoZ5oV9g==
Message-ID: <c24b1f67-d68c-698b-90f6-cff136482ca0@collabora.com>
Date: Thu, 3 Aug 2023 08:39:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH -next 1/2] media: camif-core: Do not check for 0 return
 after calling platform_get_irq()
Content-Language: en-US
To: Ruan Jinjie <ruanjinjie@huawei.com>, sylvester.nawrocki@gmail.com,
 mchehab@kernel.org, ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 linux-media@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20230803024645.2716057-1-ruanjinjie@huawei.com>
 <20230803024645.2716057-2-ruanjinjie@huawei.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20230803024645.2716057-2-ruanjinjie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_233940_447293_A8B63C33 
X-CRM114-Status: GOOD (  14.14  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VyBkbml1IDMuMDguMjAyMyBvwqAwNDo0NiwgUnVhbiBKaW5qaWUgcGlzemU6Cj4gSXQgaXMgbm90
IHBvc3NpYmxlIGZvciBwbGF0Zm9ybV9nZXRfaXJxKCkgdG8gcmV0dXJuIDAuIFVzZSB0aGUKPiBy
ZXR1cm4gdmFsdWUgZnJvbSBwbGF0Zm9ybV9nZXRfaXJxKCkuCj4gCj4gU2lnbmVkLW9mZi1ieTog
UnVhbiBKaW5qaWUgPHJ1YW5qaW5qaWVAaHVhd2VpLmNvbT4KClJldmlld2VkLWJ5OiBBbmRyemVq
IFBpZXRyYXNpZXdpY3ogPGFuZHJ6ZWoucEBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiAgIGRyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vc2Ftc3VuZy9zM2MtY2FtaWYvY2FtaWYtY29yZS5jIHwgNCArKy0t
Cj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3NhbXN1bmcvczNjLWNhbWlmL2Nh
bWlmLWNvcmUuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vc2Ftc3VuZy9zM2MtY2FtaWYvY2Ft
aWYtY29yZS5jCj4gaW5kZXggYWZlMWZjYzM3MzU0Li5lNDUyOWY2NjZlMjAgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9zYW1zdW5nL3MzYy1jYW1pZi9jYW1pZi1jb3JlLmMK
PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3NhbXN1bmcvczNjLWNhbWlmL2NhbWlmLWNv
cmUuYwo+IEBAIC0zODEsOCArMzgxLDggQEAgc3RhdGljIGludCBjYW1pZl9yZXF1ZXN0X2lycXMo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiAgIAkJaW5pdF93YWl0cXVldWVfaGVhZCgm
dnAtPmlycV9xdWV1ZSk7Cj4gICAKPiAgIAkJaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCBp
KTsKPiAtCQlpZiAoaXJxIDw9IDApCj4gLQkJCXJldHVybiAtRU5YSU87Cj4gKwkJaWYgKGlycSA8
IDApCj4gKwkJCXJldHVybiBpcnE7Cj4gICAKPiAgIAkJcmV0ID0gZGV2bV9yZXF1ZXN0X2lycSgm
cGRldi0+ZGV2LCBpcnEsIHMzY19jYW1pZl9pcnFfaGFuZGxlciwKPiAgIAkJCQkgICAgICAgMCwg
ZGV2X25hbWUoJnBkZXYtPmRldiksIHZwKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
