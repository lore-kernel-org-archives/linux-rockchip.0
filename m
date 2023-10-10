Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F3F7CD8CAE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Oct 2023 17:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dKqw7YL6ItCMJeO/D1RF9oIrl29zq3DpoqrCA386L9g=; b=KpuOvu4JkArsXR
	3lVA1lomnf0z86y/boX4u0LTVlTZmNx+qmjdH90dEr0HWWHSBRtwOIFlCwqkdkE4vNITNV6OWAx/G
	3U4HUuGGnMpxBJbsAsM9kfLSNlej7kkbUZfn64oz5vVpVb1RRnpo4HkcWCfi7YLKwaVpWVDuhWUtX
	mpq4ly/VWaEZIPKy+mSNDiLiekPB9QnBPUluC4M1B8WQDBG7ClQwimfnm8R4BCpY7bY17Xf7AbJJy
	ZzPyz1DHjYQqlLLECCjPpiq0ZKnc2QDeQnSdPJjAlFHZ90OTMs3MrdwUlSjZOWRD+3x058gqWj0If
	vFki84x/9mlduaFAp2JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqGk4-00DsiN-1d;
	Tue, 10 Oct 2023 17:42:00 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqGjy-00DscL-28;
	Tue, 10 Oct 2023 17:41:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1696959703; bh=/8eyXVZVo+6H0ggSI00a2syb+M4L/ZVwCYosxg3zmWQ=;
	h=From:To:Cc:Subject:Date:From;
	b=Qv9h4wFkkQoOkxA6OUuw7tHRH83UZdo5Acc+vtpPfjaJk2f8W7Z6Lg+9TyQZGonum
	 Z83zRVzLwFPL01Xi8WxcjLNpry/gl97iiBCn2fXOJN8sInAucDipfmekMUhH+OuBR7
	 ve5xuaTq7nnhCcRLQQrbI6fl8kNaAbqgMFmITPsA=
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
Date: Tue, 10 Oct 2023 19:41:15 +0200
Message-ID: <20231010174138.1888396-1-megi@xff.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_104154_871106_4D7D686A 
X-CRM114-Status: UNSURE (   8.94  )
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
YzQuCgpQbGVhc2UgdGFrZSBhIGxvb2suCgpUaGFuayB5b3UsCglPbmTFmWVqIEppcm1hbgoKdjM6
Ci0gdXNlIHN5c3RlbS1wb3dlci1jb250cm9sbGVyCi0gZGVwcmVjYXRlIHJvY2tjaGlwLHN5c3Rl
bS1wb3dlci1jb250cm9sbGVyCnYyOgotIGFkZCBhIG1pc3NpbmcgZHJpdmVyIHBhdGNoCgpPbmRy
ZWogSmlybWFuICg0KToKICBkdC1iaW5kaW5nczogbWZkOiByazh4eDogRGVwcmVjYXRlIHJvY2tj
aGlwLHN5c3RlbS1wb3dlci1jb250cm9sbGVyCiAgZHQtYmluZGluZ3M6IG1mZDogcms4MDY6IEFs
bG93IHN5c3RlbS1wb3dlci1jb250cm9sbGVyIHByb3BlcnR5CiAgbWZkOiByazh4eDogQWRkIHN1
cHBvcnQgZm9yIHN0YW5kYXJkIHN5c3RlbS1wb3dlci1jb250cm9sbGVyIHByb3BlcnR5CiAgbWZk
OiByazh4eDogQWRkIHN1cHBvcnQgZm9yIFJLODA2IHBvd2VyIG9mZgoKIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MDUueWFtbCB8IDMgKysrCiBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODA2LnlhbWwgfCAy
ICsrCiBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODA4
LnlhbWwgfCAzICsrKwogRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2Nr
Y2hpcCxyazgwOS55YW1sIHwgMyArKysKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZmQvcm9ja2NoaXAscms4MTcueWFtbCB8IDMgKysrCiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE4LnlhbWwgfCAzICsrKwogZHJpdmVycy9tZmQv
cms4eHgtY29yZS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgNyArKysrKyst
CiA3IGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCi0tIAoy
LjQyLjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
