Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE3FBCD6E67
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 18:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZzhwsQKauar5rce+7JzH5C+GCnU1tBiT2HzWf7JwlcM=; b=Olwdw9XWSCeL/n
	qYeD4PyIJ6fCuhc1fZA/R5qbx40cWHS3IZsJTt5npCi0cUI3ZnjRM31gtFqiJRi7h0MeYILBbpFUl
	zCnwzl2hVo/6QpNt0O4tMDNS0UAq1epO8Z3lSjqnlDc9BWCwCiXwd7VEyewf3UgSClCNKLTORlNC5
	o5mhjIGwOS1kD84Qp1O/7JP5FUNX2sUXtJNzZn7YPjrCeaD8wurv7oI77w+BYRiBigJX/A/uyLz4y
	92up2y8XzQY33G15VXD0+k64Zkts36ycTli9V2FYscw7ShPcf9RLz4Z+lGhz4pZqODTarS1lTN3zm
	J7/mHNX5Khz0Zno1MZGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6wJ-0000000Bd4L-1fwy;
	Mon, 01 Jun 2026 18:00:39 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6wF-0000000Bd2a-1YHn;
	Mon, 01 Jun 2026 18:00:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1780336832;
	bh=f3hUMNFcEdyqeQuUHaPUg6wYaJ5ED/dmqbO5zRa5LnM=;
	h=From:Subject:Date:To:Cc:From;
	b=kGIUJ8ve3/hI+JQuzo60CZ83t7lc3FfA6ay+h3etetqrznxwIkEW4spp7rfFmdSxS
	 IIv7VBp2eGjVhVm/YTyZT8BEfUnHxvLjzAqbUsr1/GrExPomvXqMvH82qdvSIHNWb9
	 wqY021pJKPqh9Hb3VrKFL18ey8VV0zzUNIcHzqSuJhbX4H5FaIPUoivzYCqTQwgTAQ
	 WmYQRU15/4kzc/xsz4J0C7OegRSQaNJfBDZRlcVDA0V2YHi/Z0p/0JOc3v2XF+hFHN
	 7SFKpRa3AcWCLCk7Eb914qC2qHZCuevZdF8Kck/DrFFHmsFbI9HK5NhPOLKnPpAdMN
	 iWK57FPpVIqUQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 62CF417E03DA;
	Mon,  1 Jun 2026 20:00:32 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 0/2] YUV support for VOP2 background color
Date: Mon, 01 Jun 2026 21:00:02 +0300
Message-Id: <20260601-vop2-bg-yuv-v2-0-e5aef1d16fec@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/22NQQ6CMBBFr0Jm7ZgyWgyuvIdh0ZYBapCSFhoJ4
 e4W3Lp8yfvvrxDYWw5wz1bwHG2wbkhApwxMp4aW0daJgQQVQtIVoxsJdYvLHDHXggslSiNvJaT
 F6Lmxn6P2rH4cZv1iM+2J3ehsmJxfjruY797/csxRYG10oSSVdGnkw7i+V9p5dTbuDdW2bV/F8
 53YvAAAAA==
X-Change-ID: 20260524-vop2-bg-yuv-1b0e6a09c579
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_110035_572389_A9AE085B 
X-CRM114-Status: UNSURE (   9.44  )
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

U2luY2UgY29tbWl0IGJlYzdjYmZhN2Q0ZiAoImRybS9yb2NrY2hpcDogdm9wMjogU3VwcG9ydCBz
ZXR0aW5nIGN1c3RvbQpiYWNrZ3JvdW5kIGNvbG9yIikgdGhlIFZPUDIgZGlzcGxheSBjb250cm9s
bGVyIGFsbG93cyBjb25maWd1cmluZyB0aGUKYmFja2dyb3VuZCBjb2xvciBvZiBlYWNoIHZpZGVv
IG91dHB1dCBwb3J0LgoKSG93ZXZlciwgdGhpcyBpcyBjdXJyZW50bHkgbGltaXRlZCB0byBSR0Ig
Zm9ybWF0cy4gIFdoZW4gb3BlcmF0aW5nIGluCllVViBvdmVybGF5IG1vZGUsIHRoZSBjb2xvciBt
dXN0IGJlIHByb2dyYW1tZWQgdXNpbmcgWVVWIGZvcm1hdC4KCkFkZCB0aGUgbmVjZXNzYXJ5IFJH
Qi10by1ZQ2JDciBjb252ZXJzaW9uIGxvZ2ljLCBjb3ZlcmluZyBhbGwgY29sb3IKc3BhY2VzIHN1
cHBvcnRlZCBieSB0aGUgZGlzcGxheSBjb250cm9sbGVyOiBCVDYwMUwsIEJUNjAxRiwgQlQ3MDlM
IGFuZApCVDIwMjBMLgoKU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlh
bi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KLS0tCkNoYW5nZXMgaW4gdjI6Ci0gVXNlZCB2b3Ay
X2NvbnZlcnRfY3NjX21vZGUoKSBoZWxwZXIgdG8gYWRkcmVzcyBhbiBpc3N1ZSByZXBvcnRlZCBi
eQogIHZjc3RhdGUtPmNvbG9yX3NwYWNlIGhvbGRzIGEgVjRMMiBjb2xvcnNwYWNlIGVudW0KLSBS
ZWJhc2VkIG9udG8gbGF0ZXN0IGRybS1taXNjLW5leHQKLSBMaW5rIHRvIHYxOiBodHRwczovL3Bh
dGNoLm1zZ2lkLmxpbmsvMjAyNjA1MjQtdm9wMi1iZy15dXYtdjEtMC1kY2I2YTUyOTIzZjVAY29s
bGFib3JhLmNvbQoKVG86IFNhbmR5IEh1YW5nIDxoamNAcm9jay1jaGlwcy5jb20+ClRvOiBIZWlr
byBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPgpUbzogQW5keSBZYW4gPGFuZHkueWFuQHJvY2st
Y2hpcHMuY29tPgpUbzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4KVG86IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KVG86IFRo
b21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgpUbzogRGF2aWQgQWlybGllIDxh
aXJsaWVkQGdtYWlsLmNvbT4KVG86IFNpbW9uYSBWZXR0ZXIgPHNpbW9uYUBmZndsbC5jaD4KQ2M6
IGtlcm5lbEBjb2xsYWJvcmEuY29tCkNjOiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
CkNjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKQ2M6IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmcK
U2FzaGlrbzogdm9wMl9yZ2IxNl90b195dXYxNigpIGV4cGVjdHMgYW4gZW51bSB2b3BfY3NjX2Zv
cm1hdCwgYnV0CgotLS0KQ3Jpc3RpYW4gQ2lvY2FsdGVhICgyKToKICAgICAgZHJtL3JvY2tjaGlw
OiB2b3AyOiBSZW5hbWUgQ1NDX0JUMjAyMCB0byBDU0NfQlQyMDIwTAogICAgICBkcm0vcm9ja2No
aXA6IHZvcDI6IEFkZCBZVVYgc3VwcG9ydCB0byBiYWNrZ3JvdW5kIGNvbG9yCgogZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgfCAxNTUgKysrKysrKysrKysrKysr
KysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIu
aCB8ICAgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAxNDAgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRp
b25zKC0pCi0tLQpiYXNlLWNvbW1pdDogZTg0YjA3ZTBhMzBiMzcxMTE3ZjlhMTEyMGE0NjQ1YzIx
M2YzOWNkOQpjaGFuZ2UtaWQ6IDIwMjYwNTI0LXZvcDItYmcteXV2LTFiMGU2YTA5YzU3OQoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
