Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D444CDB483
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 16:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wZTbzYOTV9hA23VrZgne6cOGPP9higz0V44n0OGpx3s=; b=k6FIXcyqMIDopE
	TPRVhaXoudVvQdkcBtBvn6dhdsc/2xqKSdhpsITxNj4grRZTWLZUCVlTmK688RUr0UNWPBbR1XjL3
	WMTMfa2dGCUldWuf3jbAuOPZrEGe5mUDv0zQsKOOLQp3b+bl7rm9x8DZx7otUlcFUhP7f8CCpH5Jk
	RffN5uGhE3gM7odWLQYN1PlbpWWAfZ1CNxoLFmo2ksYRKQk6rFpgbd4MbDHT9eVhlIR1otxYEi1IH
	EA3msuc9MnKZF123n6l6jHGyGoKy+lsPIqSqUkGxm0sKuvbENbXH4vo6ESRuf2Y9Y28qdV3kgdclx
	oEr9BrrUb9PLPC4vz+bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtWLO-000MwU-1N;
	Thu, 19 Oct 2023 16:57:58 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtWL7-000MkY-0X;
	Thu, 19 Oct 2023 16:57:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1697734655; bh=Bvmn+V+8oX7B+tSkrf+0B+Kh8dg+ZztWnQG5X3x9Bh8=;
	h=From:To:Cc:Subject:Date:From;
	b=HF8lErKW9uN+o4opO7QVbialjnmDJMKxwdCdZUjC5ytgd6tmuW+2GcUOcHBloyzMU
	 xQ/6/SlGUhthjcppvwfJVy5QtxxS319V/+foPhHQ9+fq34PKO7KxpeuEtkdXCNCTjS
	 vuJCaU/gHw3VyKsBzV/VZJ2WMY49RfqwKPWhlJ/s=
From: =?UTF-8?q?Ond=C5=99ej=20Jirman?= <megi@xff.cz>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/4] Add support for poweroff via RK806 PMIC
Date: Thu, 19 Oct 2023 18:57:22 +0200
Message-ID: <20231019165732.3818789-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_095741_987150_CB0F91C2 
X-CRM114-Status: UNSURE (   8.81  )
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

RnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+CgpUaGUgUE1JQyBzdXBwb3J0cyBwb3dl
cmluZyBvZmYgYnkgdHdpZGRsaW5nIHNvbWUgYml0cyBpbiBhIHJlZ2lzdGVyLiBBZGQgc3VwcG9y
dApmb3IgaXQgdmlhIHByZS1leGlzdGluZyByb2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxl
ciBEVCBwcm9wZXJ0eS4KClRoZSBzZXJpZXMgd2FzIHRlc3RlZCBhZ2FpbnN0IExpbnV4IDYuNi1y
YzQuCgpQbGVhc2UgdGFrZSBhIGxvb2suCgpUaGFuayB5b3UsCglPbmTFmWVqIEppcm1hbgoKdjMg
cmVzZW5kOgotIGFkZCB0YWdzCnYzOgotIHVzZSBzeXN0ZW0tcG93ZXItY29udHJvbGxlcgotIGRl
cHJlY2F0ZSByb2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlcgp2MjoKLSBhZGQgYSBtaXNz
aW5nIGRyaXZlciBwYXRjaAoKT25kcmVqIEppcm1hbiAoNCk6CiAgZHQtYmluZGluZ3M6IG1mZDog
cms4eHg6IERlcHJlY2F0ZSByb2NrY2hpcCxzeXN0ZW0tcG93ZXItY29udHJvbGxlcgogIGR0LWJp
bmRpbmdzOiBtZmQ6IHJrODA2OiBBbGxvdyBzeXN0ZW0tcG93ZXItY29udHJvbGxlciBwcm9wZXJ0
eQogIG1mZDogcms4eHg6IEFkZCBzdXBwb3J0IGZvciBzdGFuZGFyZCBzeXN0ZW0tcG93ZXItY29u
dHJvbGxlciBwcm9wZXJ0eQogIG1mZDogcms4eHg6IEFkZCBzdXBwb3J0IGZvciBSSzgwNiBwb3dl
ciBvZmYKCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJr
ODA1LnlhbWwgfCAzICsrKwogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9y
b2NrY2hpcCxyazgwNi55YW1sIHwgMiArKwogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL21mZC9yb2NrY2hpcCxyazgwOC55YW1sIHwgMyArKysKIERvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MDkueWFtbCB8IDMgKysrCiBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3LnlhbWwgfCAzICsrKwog
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgxOC55YW1s
IHwgMyArKysKIGRyaXZlcnMvbWZkL3JrOHh4LWNvcmUuYyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IDcgKysrKysrLQogNyBmaWxlcyBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgotLSAKMi40Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
