Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC8F6C624DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2026 11:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7rRbxI5sWlEoQyzmQlMVMjzSnOGDaL4mq8cTMbVZ7WQ=; b=hMcUX/2Y8kcdat
	4VpMu2Ht+LD4DUzrh23hKc81VjMpCLrdJEYfhNw4+Nn+DqFzBynXqHqn20rwOOauMRREIgaTcu5Y1
	E6+DXrTpueTTziF+b5e/cv+R/vstCVTQo4mIGj2/EwT+QlDhMxA283l/52U4s+T+o20UUQC24KbmG
	j5cLyfN2l4RjdwwRYGnFyeqQXTWyUkV/cTZnsfekOteR9+WN2smw2pM2/5j6c7Me0t36TUtPXw0dI
	WPeY8N0TEY7TaGo5xowtTrqYaXytSaVKwd5RCtIN+Dke2n+Tiq5cR0eeWE+8n6T0JYG7MKPimtkF5
	taL22uUrg1Ob7/V+JOvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2oT3-000000040qS-0Uh9;
	Sat, 05 Sep 2026 11:21:53 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2oT0-000000040oK-1ocP;
	Sat, 05 Sep 2026 11:21:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id EB796447B9;
	Sat,  5 Sep 2026 11:21:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7333C2BCFB;
	Sat,  5 Sep 2026 11:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788607308;
	bh=oAmDDrKnMv/AyVbWT0Wk8eZYpbvdxe5fXhli2PbtOEg=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=oS2aSADF/U8/vSBvgIerW4NKRx11q7YGSjN/B7awXvJ/H0YCv8jBWXypKBVgEPzsR
	 l3A0CHlTlnuJ5Uf//RsaRaB8Oj7//1fw9iws7PibgS5JZ44LgJStNisRkYttOCmqMN
	 N1ANr8YQeAbYR9aRjxLVSPRZJ9Iu2VEhjQAtWUq2VvgtANSNGr8WSq+krGhGRqR6td
	 8A04HEZM0BOFFzaXflW45iNHNhdoOB44Ga5pQ0Gy3i3Cie/54btx+EXwwA23NOng/y
	 2VxLkJt4eNYuMJV79MdaHrIdL5DMTfY9tQeYZwkIvJOlvvGtqFv/gyRnzUi1yqp2al
	 R0TaqXqzZ2CDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9655BC624D6;
	Sat,  5 Sep 2026 11:21:48 +0000 (UTC)
From: =?utf-8?q?=E5=AE=89=E5=AE=B9_via_B4_Relay?= <devnull+HystericalDragons.proton.me@kernel.org>
Subject: [PATCH 0/2] arm64: dts: rockchip: Add FriendlyElec NanoPi R28S
Date: Sat, 05 Sep 2026 19:17:25 +0800
Message-Id: <20260905-r28s-upstream-v1-0-f68d5389269a@proton.me>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDSwNT3SIji2Ld0oLikqLUxFzdVCNDo1Qj8xQzQzNTJaCegqLUtMwKsHn
 RsRB+cWlSVmpyCcgQpdpaABtk4b1xAAAA
X-Change-ID: 20260905-r28s-upstream-e212e27d6165
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 jensen <jensenhuang@friendlyarm.com>, 
 =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1842;
 i=HystericalDragons@proton.me; h=from:subject:message-id;
 bh=oAmDDrKnMv/AyVbWT0Wk8eZYpbvdxe5fXhli2PbtOEg=;
 b=owGbwMvMwCUmepz3XUtTHjvjabUkhqzZv71PLerYNfnZBvaoZZdaI6qZFjxf2XOXhd1bVqb0/
 bqVphy1HaUsDGJcDLJiiiyym6ojhVZFzyxikToOM4eVCWQIAxenAEwkuIXhJ6Pel+MTvVhbdk5a
 /PrxU7WGX1++1N7UfRV0Ma47eqrvzShGhvWKCyfHh719vXbvvEkJl2yzfvoyWP8u299w3a9wdeG
 +XGYA
X-Developer-Key: i=HystericalDragons@proton.me; a=openpgp;
 fpr=1DB27B5912AA5B9972041AC715C70DEE84826E07
X-Endpoint-Received: by B4 Relay for HystericalDragons@proton.me/default
 with auth_id=1004
X-Original-From: =?utf-8?q?=E5=AE=89=E5=AE=B9?= <HystericalDragons@proton.me>
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
Reply-To: HystericalDragons@proton.me
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhlIFtOYW5vUGkgUjI4U10oaHR0cHM6Ly93aWtpLmZyaWVuZGx5ZWxlYy5jb20vd2lraS9pbmRl
eC5waHAvTmFub1BpX1IyOFMpIGlzIGEgZHVhbCBnaWdhYml0IEV0aGVybmV0IHJvdXRlciBib2Fy
ZCBiYXNlZCBvbiB0aGUKUm9ja2NoaXAgUkszNTI4IFNvQy4gSXQgaXMgY2xvc2VseSByZWxhdGVk
IHRvIHRoZSBhbHJlYWR5IHN1cHBvcnRlZApOYW5vUGkgWmVybzIsIHNoYXJpbmcgbW9zdCBvZiBp
dHMgcG93ZXIgdHJlZSBhbmQgcGVyaXBoZXJhbCByb3V0aW5nLgoKVGVzdGVkIG9uIGEgbWV0YWwt
Y2FzZSB1bml0IHdpdGhvdXQgdGhlIG9wdGlvbmFsIG9uYm9hcmQgZU1NQzogYm9vdHMKZnJvbSBt
aWNyb1NELCBib3RoIEV0aGVybmV0IHBvcnRzIGxpbmsgdXAgYXQgMTAwMCBNYnBzLCB0aGUgSFlN
ODU2MyBSVEMKcmVnaXN0ZXJzLCBhbmQgYWxsIHRocmVlIExFRHMgYXJlIGZ1bmN0aW9uYWwuIFRo
ZSBVU0IgVHlwZS1DIGNvbm5lY3RvcgpyZWdpc3RlcnMgYXMgYSBEV0MzIFVEQyBpbiBwZXJpcGhl
cmFsIG1vZGU7IGdhZGdldCBlbnVtZXJhdGlvbiBhZ2FpbnN0CmEgVVNCIGhvc3Qgd2FzIG5vdCBj
b21wbGV0ZWQsIGJlY2F1c2UgdGhhdCBjb25uZWN0b3IgaXMgYWxzbyB0aGUgNVYKaW5wdXQgYW5k
IGEgUEMgcG9ydCBjYW5ub3QgcG93ZXIgdGhlIGJvYXJkLgoKVGhlIHBhdGNoIHJlZmVycmVkIHRv
IFtmcmlkZW5kbHlhcm0va2VybmVsLXJvY2tjaGlwXShodHRwczovL2dpdGh1Yi5jb20vZnJpZW5k
bHlhcm0va2VybmVsLXJvY2tjaGlwL2NvbW1pdC9lZTY0MGM1MzQ0YjEzYTBhMzE3NDM2ZTIzNTdk
ZjAxYWY4MjY4Y2U3KSBidXQgd2l0aCBtYW55IGNoYW5nZXMgbWFrZSBpdCBzdWl0YWJsZSBmb3Ig
a2VybmVsIG1haW5saW5lLgoKVHdvIHRoaW5ncyBJIGRpZG4ndCBkbyBiZWNhdXNlIHRoZXkgYXJl
IGxpbWl0ZWQgYnkgbXkgY3VycmVudCBoYXJkd2FyZToKCi0gVGhlIEFJQ1NlbWkgQUlDODgwMEQ4
MCBXaUZpIGNoaXAgb24gc2RpbzAgaGFzIG5vIHVwc3RyZWFtIGRyaXZlciwgc28KICBvbmx5IHRo
ZSBTRElPIGNvbnRyb2xsZXIgaXMgZGVzY3JpYmVkLgotIFRoZSBlTU1DIGlzIGRlc2NyaWJlZCBh
cyBIUzIwMCByYXRoZXIgdGhhbiB0aGUgdmVuZG9yJ3MgSFM0MDAgd2l0aAogIGVuaGFuY2VkIHN0
cm9iZSwgc2luY2UgdGhlIGJvYXJkIGF0IGhhbmQgaGFzIGFuIHVucG9wdWxhdGVkIGVNTUMKICBm
b290cHJpbnQgYW5kIHRoZSBmYXN0ZXIgbW9kZXMgY291bGQgbm90IGJlIHZlcmlmaWVkLgoKLS0t
CuWuieWuuSAoMik6CiAgICAgIGR0LWJpbmRpbmdzOiBhcm06IHJvY2tjaGlwOiBBZGQgRnJpZW5k
bHlFbGVjIE5hbm9QaSBSMjhTCiAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgZGV2aWNl
dHJlZSBmb3IgdGhlIEZyaWVuZGx5RWxlYyBOYW5vUGkgUjI4UwoKIC4uLi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9yb2NrY2hpcC55YW1sICAgICAgICAgIHwgICA1ICsKIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgICAgICAgICAgICAgIHwgICAxICsKIC4uLi9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1MjgtbmFub3BpLXIyOHMuZHRzIHwgNDA0ICsrKysrKysrKysr
KysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCA0MTAgaW5zZXJ0aW9ucygrKQotLS0KYmFzZS1j
b21taXQ6IDMyZTBmNjQ2NDBkNTU4YTBmNTQxMGFjNWNkZDhlYmYzNzFjNWU2YTYKY2hhbmdlLWlk
OiAyMDI2MDkwNS1yMjhzLXVwc3RyZWFtLWUyMTJlMjdkNjE2NQoKQmVzdCByZWdhcmRzLAotLSAg
CuWuieWuuSA8SHlzdGVyaWNhbERyYWdvbnNAcHJvdG9uLm1lPgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
