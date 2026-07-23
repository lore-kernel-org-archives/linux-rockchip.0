Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 688E9C531CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 19:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HM0JWeybJMB4CJeZzSmXl3u9V3Xqodq1iwXRZ+XCoqg=; b=xUO55pGuoa7gpP
	iFJwAO+JLxjbvQxvqLgVqlAC+yCuB9W/gHiFx5YNaj+UUsYdHz7Z2u+vWgHv2UEgxgoSbSNxdF6y3
	O3KICRerEm0RS90K0bMZeV+uaHHDzrS8HFeBQF3YTOZgFvLQxUXzA+Iu68VnwtUcJ6JCRcHPois1H
	UuJWIdllhJ1kZIPshd2QH2oZv7PksGQqG33wy8vRlvFkZ1K/9CdAxaXE1Q81c8gL0t+tfhHqXQ9xr
	8U6ocvnfX1tH+8qelDcahDHohlPXA/SHDhKqqazfOgmBxnz5Kw5XWGwp6VCGDXumIEAb1biufrsnK
	6c7A6MpGETqzlQv3suaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzJw-0000000Ezoc-09AS;
	Thu, 23 Jul 2026 19:43:04 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzIp-0000000Eykk-2N9I;
	Thu, 23 Jul 2026 19:41:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784835712;
	bh=/Z9S3V5F+HkTvALb4lKHAoUP/Ofe0V9jBqF+2D9oDj4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=FLM5+Of/gosMr14EDkqZY9kBlFNRjQVAqDE5gAwhLJ/rVSWwQKKhBeiFwXcpYZptF
	 X1ktj93HTBetqioZmN8OWZ72pb3mzWP1MCMXEye+1eUdq4eM6CCPLSoRtW6Jl/vevI
	 QWgKVhEyRT1fnSM40WVkw37IVcpGRBHo53nvSEHpaEdJq1mrZb55ugWf8oR4t6N24G
	 LcqgCaqlYYuMIA8JLVGYM2c7C0hUEPmvvaw2TrKqofY8Ur6EQTFvehtMi86ZVHb/Ol
	 yN/k5rvRZAYg/8DlOO7jQA7jj0nGOHZx9MPj9fskOuSt2Q7ufzkjawCqmL3iDAPR4t
	 ILgP6PuA6/yHg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8DDD217E151D;
	Thu, 23 Jul 2026 21:41:52 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 23 Jul 2026 22:41:51 +0300
Subject: [PATCH v5 08/10] phy: rockchip: samsung-hdptx: Drop
 restrict_rate_change handling
MIME-Version: 1.0
Message-Id: <20260723-hdptx-clk-fixes-v5-8-8e786067865f@collabora.com>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
In-Reply-To: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
 Simon Wright <simon@symple.nz>, Diederik de Haas <diederik@cknow-tech.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_124155_768243_64D333AD 
X-CRM114-Status: GOOD (  14.57  )
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

U2luY2UgY29tbWl0IDZlZmJkMGY0NmRkOCAoInBoeTogcm9ja2NoaXA6IHNhbXN1bmctaGRwdHg6
IFJlc3RyaWN0CmFsdGVyaW5nIFRNRFMgY2hhciByYXRlIHZpYSBDQ0YiKSwgYWRqdXN0aW5nIHRo
ZSByYXRlIHZpYSB0aGUgQ29tbW9uCkNsb2NrIEZyYW1ld29yayBBUEkgaGFzIGJlZW4gZGlzYWxs
b3dlZC4KClRvIGF2b2lkIGJyZWFraW5nIGV4aXN0aW5nIHVzZXJzIHVudGlsIHN3aXRjaGluZyB0
byB0aGUgUEhZIGNvbmZpZyBBUEksCml0IGludHJvZHVjZWQgYSB0ZW1wb3JhcnkgZXhjZXB0aW9u
IHRvIHRoZSBydWxlLCBjb250cm9sbGVkIHZpYSB0aGUKJ3Jlc3RyaWN0X3JhdGVfY2hhbmdlJyBm
bGFnLgoKQXMgdGhlIEFQSSB0cmFuc2l0aW9uIGNvbXBsZXRlZCwgcmVtb3ZlIHRoZSBub3cgZGVw
cmVjYXRlZCBleGNlcHRpb24KbG9naWMuCgpUZXN0ZWQtYnk6IFRob21hcyBOaWVkZXJwcsO8bSA8
ZHViaXRvQG9ubGluZS5kZT4KVGVzdGVkLWJ5OiBTaW1vbiBXcmlnaHQgPHNpbW9uQHN5bXBsZS5u
ej4KVGVzdGVkLWJ5OiBEaWVkZXJpayBkZSBIYWFzIDxkaWVkZXJpa0Bja25vdy10ZWNoLmNvbT4g
ICMgTmFub1BDLVQ2IExUUwpSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJh
cnlzaGtvdkBvc3MucXVhbGNvbW0uY29tPgpTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0
ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgotLS0KIGRyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMgfCA0MiArKysrKy0tLS0tLS0tLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmct
aGRwdHguYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4
LmMKaW5kZXggZWRhOGU1MDU1NTg4Li5kYThmMjUyZmI3MTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
cGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKKysrIGIvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYwpAQCAtNDE0LDcgKzQxNCw2
IEBAIHN0cnVjdCBya19oZHB0eF9waHkgewogCS8qIGNsayBwcm92aWRlciAqLwogCXN0cnVjdCBj
bGtfaHcgaHc7CiAJYm9vbCBwbGxfY29uZmlnX2RpcnR5OwotCWJvb2wgcmVzdHJpY3RfcmF0ZV9j
aGFuZ2U7CiAKIAlhdG9taWNfdCB1c2FnZV9jb3VudDsKIApAQCAtMjA3NCw3ICsyMDczLDYgQEAg
c3RhdGljIGludCBya19oZHB0eF9waHlfY29uZmlndXJlKHN0cnVjdCBwaHkgKnBoeSwgdW5pb24g
cGh5X2NvbmZpZ3VyZV9vcHRzICpvcHQKIAkJaWYgKHJldCkgewogCQkJZGV2X2VycihoZHB0eC0+
ZGV2LCAiaW52YWxpZCBoZG1pIHBhcmFtcyBmb3IgcGh5IGNvbmZpZ3VyZVxuIik7CiAJCX0gZWxz
ZSB7Ci0JCQloZHB0eC0+cmVzdHJpY3RfcmF0ZV9jaGFuZ2UgPSB0cnVlOwogCQkJaGRwdHgtPnBs
bF9jb25maWdfZGlydHkgPSB0cnVlOwogCiAJCQlkZXZfZGJnKGhkcHR4LT5kZXYsICIlcyAlcyBy
YXRlPSVsbHUgYnBjPSV1XG4iLCBfX2Z1bmNfXywKQEAgLTIzMjcsNDEgKzIzMjUsMTcgQEAgc3Rh
dGljIGludCBya19oZHB0eF9waHlfY2xrX2RldGVybWluZV9yYXRlKHN0cnVjdCBjbGtfaHcgKmh3
LAogCXN0cnVjdCBya19oZHB0eF9waHkgKmhkcHR4ID0gdG9fcmtfaGRwdHhfcGh5KGh3KTsKIAog
CS8qCi0JICogSW52YWxpZGF0ZSBjdXJyZW50IGNsb2NrIHJhdGUgdG8gZW5zdXJlIHJrX2hkcHR4
X3BoeV9jbGtfc2V0X3JhdGUoKQotCSAqIHdpbGwgYmUgaW52b2tlZCB0byBjb21taXQgUExMIGNv
bmZpZ3VyYXRpb24uCisJICogRm9yIHVuY29tbWl0dGVkIFBMTCBjb25maWd1cmF0aW9uLCBpbnZh
bGlkYXRlIHRoZSBjdXJyZW50IGNsb2NrIHJhdGUKKwkgKiB0byBlbnN1cmUgcmtfaGRwdHhfcGh5
X2Nsa19zZXRfcmF0ZSgpIHdpbGwgYmUgYWx3YXlzIGludm9rZWQuCisJICogT3RoZXJ3aXNlLCBy
ZXN0cmljdCB0aGUgcmF0ZSBhY2NvcmRpbmcgdG8gdGhlIFBIWSBsaW5rIHNldHVwLgogCSAqLwot
CWlmIChoZHB0eC0+cGxsX2NvbmZpZ19kaXJ0eSkgeworCWlmIChoZHB0eC0+cGxsX2NvbmZpZ19k
aXJ0eSkKIAkJcmVxLT5yYXRlID0gMDsKLQkJcmV0dXJuIDA7Ci0JfQotCi0JaWYgKGhkcHR4LT5o
ZG1pX2NmZy5tb2RlID09IFBIWV9IRE1JX01PREVfRlJMKSB7CisJZWxzZSBpZiAoaGRwdHgtPmhk
bWlfY2ZnLm1vZGUgPT0gUEhZX0hETUlfTU9ERV9GUkwpCiAJCXJlcS0+cmF0ZSA9IGhkcHR4LT5o
ZG1pX2NmZy5yYXRlOwotCQlyZXR1cm4gMDsKLQl9Ci0KLQkvKgotCSAqIEZJWE1FOiBUZW1wb3Jh
cmlseSBhbGxvdyBhbHRlcmluZyBUTURTIGNoYXIgcmF0ZSB2aWEgQ0NGLgotCSAqIFRvIGJlIGRy
b3BwZWQgYXMgc29vbiBhcyB0aGUgUksgRFcgSERNSSBRUCBicmlkZ2UgZHJpdmVyCi0JICogc3dp
dGNoZXMgdG8gbWFrZSB1c2Ugb2YgcGh5X2NvbmZpZ3VyZSgpLgotCSAqLwotCWlmICghaGRwdHgt
PnJlc3RyaWN0X3JhdGVfY2hhbmdlICYmIHJlcS0+cmF0ZSAhPSBoZHB0eC0+aGRtaV9jZmcucmF0
ZSkgewotCQlzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX2hkbWkgaGRtaSA9IHsKLQkJCS50bWRz
X2NoYXJfcmF0ZSA9IHJlcS0+cmF0ZSwKLQkJfTsKLQotCQlpbnQgcmV0ID0gcmtfaGRwdHhfcGh5
X3ZlcmlmeV9oZG1pX2NvbmZpZyhoZHB0eCwgJmhkbWksICZoZHB0eC0+aGRtaV9jZmcpOwotCi0J
CWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCX0KLQotCS8qCi0JICogVGhlIFRNRFMgY2hhciBy
YXRlIHNoYWxsIGJlIGFkanVzdGVkIHZpYSBwaHlfY29uZmlndXJlKCkgb25seSwKLQkgKiBoZW5j
ZSBlbnN1cmUgcmtfaGRwdHhfcGh5X2Nsa19zZXRfcmF0ZSgpIHdvbid0IGJlIGludm9rZWQgd2l0
aAotCSAqIGEgZGlmZmVyZW50IHJhdGUgYXJndW1lbnQuCi0JICovCi0JcmVxLT5yYXRlID0gRElW
X1JPVU5EX0NMT1NFU1RfVUxMKGhkcHR4LT5oZG1pX2NmZy5yYXRlICogOCwgaGRwdHgtPmhkbWlf
Y2ZnLmJwYyk7CisJZWxzZQorCQlyZXEtPnJhdGUgPSBESVZfUk9VTkRfQ0xPU0VTVF9VTEwoaGRw
dHgtPmhkbWlfY2ZnLnJhdGUgKiA4LAorCQkJCQkJICBoZHB0eC0+aGRtaV9jZmcuYnBjKTsKIAog
CXJldHVybiAwOwogfQoKLS0gCjIuNTUuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
