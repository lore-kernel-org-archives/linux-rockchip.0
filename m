Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1F16C25B79
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 14:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fYIqTh+LRO9SpWZgzKnW98mVDhK/KUJN6GAr8j46N4=; b=kU2qZaRhEYQUUP
	JHhycIdyd1iRDLL9zDuo0knqH6hCdZccTxGiYM+XBUDZ72BH1k12UXp7o2jE2c6G87RT0R1AOD1hb
	1ZvU7tfFIzdBjJ+Jk9yDTUUkQnOy1Rk5KEHD0tlrLjRzX5gRf6erd3Ri2+5J57hVVWwCoGrXIgets
	nwXTZgrzlsaAA29oZAQewPs4pa8AI812Ny8rqcRrYQiSliuJwvbti8RbFAuKjmkT12P4mNvUkz970
	WEKfsEj9E44ervTVm3ROXq0CjWauWSs9HCCYNZBfivKbgGeXgq37ylSU3PDp+sEgSXamRxAaceI6p
	qCpJpWJ+jZ+KrAM4aYzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBauV-0000000FEGi-41JA;
	Mon, 27 May 2024 14:01:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBasK-0000000FCrT-1iIg;
	Mon, 27 May 2024 13:59:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D870761880;
	Mon, 27 May 2024 13:58:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AFA3C32781;
	Mon, 27 May 2024 13:58:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716818335;
	bh=t+4tNe/umflmWgZ9tpden00ukHA1rdRt/ITJ6p1TW8s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RNbGkyXtb4H6+4mzgkkYQwFQHpNqqD9eRb43S66c8rotmMFoQd+jNDqvmyW7HEEvD
	 0qRn1qcX7eYZC4eV/3tbIT2pNgPGB0dk1iUl24JRTE803o8X33QK+RBI7FWHQDaskE
	 jTHOTmprtWEEZTUWSxiZ3uynV/A0dOP3xPW85AvplL7MD0j2LwRA6gD8KT+tUtWBPE
	 MPyGpvbZ/6fx2rc8dQQHdHDSCAHUdTxoYmsNQf6SvdlahLbS9wzaV0lTT1x3JrK7bc
	 uX4aa/tWmbC7zHuLvwuZR1Dv9VP4COsbmUbpNsj0rKnz+OHzFs9R1UBP4vxyVYvzyx
	 7YRx75OXGJkJg==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 27 May 2024 15:58:06 +0200
Subject: [PATCH v15 17/29] drm/doc: Remove unused Broadcast RGB Property
MIME-Version: 1.0
Message-Id: <20240527-kms-hdmi-connector-state-v15-17-c5af16c3aae2@kernel.org>
References: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
In-Reply-To: <20240527-kms-hdmi-connector-state-v15-0-c5af16c3aae2@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Andy Yan <andy.yan@rock-chips.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2734; i=mripard@kernel.org;
 h=from:subject:message-id; bh=t+4tNe/umflmWgZ9tpden00ukHA1rdRt/ITJ6p1TW8s=;
 b=owGbwMvMwCmsHn9OcpHtvjLG02pJDGkhE9NfiDvOVpixl2/WynfmwcL5dfLh8smfxY312dbaT
 p2QwG3fMZWFQZiTQVZMkeWJTNjp5e2LqxzsV/6AmcPKBDKEgYtTACaiyM/YcN0h4ey6VOm58faa
 CdXra39UpD28OaH9oia/3yIVzUXpqgu+8Vk1x80uXsDMrS6YtuIeY33YtXbpmxU/D93ecqwmzuW
 j21Gdnv9/f/bueatedNJr+vnWqOD8/zPYN++0uXnrcK5Ky0cA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_065856_685758_6A700D9E 
X-CRM114-Status: GOOD (  16.56  )
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

VGhlIEJyb2FkY2FzdCBSR0IgcHJvcGVydHkgaGFzIGJlZW4gZG9jdW1lbnRlZCBhcyB0aHJlZSBz
ZXBhcmF0ZSBlbnRyaWVzCnNvIGZhciwgZWFjaCB3aXRoIGEgZGlmZmVyZW50IHNldCBvZiB2YWx1
ZXMuCgpUaGUgZmlyc3Qgb25lIGlzIHByZXR0eSBtdWNoIHRoZSBnZW5lcmljIG9uZTogaXQncyB1
c2VkIGJ5IGk5MTUgYW5kIHZjNCwKYW5kIGlzIHRoZSBvbmUgdXNlZCBieSBhbGwgdGhlIGNvbXBv
c2l0b3JzLgoKVGhlIHNlY29uZCBvbmUgaXMgdXNlZCBieSB0aGUgZ21hNTAwIGRyaXZlciwgYW5k
IGlzIGEgc3Vic2V0IG9mIHRoZQpmaXJzdCBvbmU6IGl0IGNhbiBoYXZlIHRoZSB2YWx1ZXMgIkZ1
bGwiIG9yICJMaW1pdGVkIDE2OjIzNSIsIGJ1dCBsYWNrCnRoZSAiQXV0b21hdGljIiB2YWx1ZS4K
ClRoZSB0aGlyZCBvbmUgaG93ZXZlciBpc24ndCB1c2VkIGJ5IGFueSBkcml2ZXIgYW5kIGRvY3Vt
ZW50cyB0aGUgdmFsdWVzCiJvZmYiLCAiYXV0byIgYW5kICJvbiIuCgpJdCdzIHVuY2xlYXIgd2hl
cmUgdGhlIGxhc3Qgb25lIGNvbWVzIGZyb20uIEl0IHdhcyBmaXJzdCBkb2N1bWVudGVkIGluCmNv
bW1pdCA2YzZhMzk5NmYyYzUgKCJEb2N1bWVudGF0aW9uOiBkcm06IGRlc2NyaWJpbmcgZHJtIHBy
b3BlcnRpZXMKZXhwb3NlZCBieSB2YXJpb3VzIGRyaXZlcnMiKSB3aGljaCBhZGRzIGEgbnVtYmVy
IG9mIHByb3BlcnRpZXMgdXNlZCBieQpkcml2ZXJzLCBidXQgd2l0aG91dCBtZW50aW9uaW5nIHdo
aWNoIGRyaXZlciB3YXMgdXNpbmcgd2hhdCBwcm9wZXJ0eS4KCkdyZXBwaW5nIGF0IHRoZSA2YzZh
Mzk5NmYyYzUgY29tbWl0IGhvd2V2ZXIsIGl0IGxvb2tzIGxpa2Ugbm8gZHJpdmVyIGlzCmFjdHVh
bGx5IHVzaW5nIGl0LCBhbmQgYSBxdWljayBsb29rIGF0IHRoZSBlbnRpcmUga2VybmVsIGhpc3Rv
cnkgZG9lc24ndApzaG93IGFueSBtYXRjaCBlaXRoZXIuCgpBdCB0aGUgdGltZSB0aG91Z2gsIGdt
YTUwMCBoYWQgYW4gImF1ZGlvIiBwcm9wZXJ0eSB1c2VkIHJpZ2h0IG5leHQgdG8KQnJvYWRjYXN0
IFJHQiB0aGF0IGRpZCBoYXZlIHRoZSAib2ZmIiwgImF1dG8iIGFuZCAib24iIHZhbHVlcyBpbiB0
aGUKc2FtZSBvcmRlci4KCkFzIHN1Y2gsIGl0IHdhcyBwcm9iYWJseSBhIGNvcHkvcGFzdGUgb3Ig
c2NyaXB0aW5nIGVycm9yIGJhY2sgdGhlbiwgYW5kCnRoZXJlJ3MgbmV2ZXIgYmVlbiBzdWNoIHBy
b3BlcnR5IHVzZWQgaW4gdGhlIGtlcm5lbC4KCkVpdGhlciB3YXksIGl0IGNlcnRhaW5seSBoYXNu
J3QgYmVlbiB1c2VkIGluIGEgZGVjYWRlIG9yIHR3byBzbyB3ZSBjYW4KanVzdCBnZXQgcmlkIG9m
IGl0LgoKU3VnZ2VzdGVkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxp
bmFyby5vcmc+ClNpZ25lZC1vZmYtYnk6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9y
Zz4KLS0tCiBEb2N1bWVudGF0aW9uL2dwdS9rbXMtcHJvcGVydGllcy5jc3YgfCAxIC0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9ncHUv
a21zLXByb3BlcnRpZXMuY3N2IGIvRG9jdW1lbnRhdGlvbi9ncHUva21zLXByb3BlcnRpZXMuY3N2
CmluZGV4IDBmOTU5MDgzNDgyOS4uYzNjNTBhMjc3Y2M5IDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0
aW9uL2dwdS9rbXMtcHJvcGVydGllcy5jc3YKKysrIGIvRG9jdW1lbnRhdGlvbi9ncHUva21zLXBy
b3BlcnRpZXMuY3N2CkBAIC0zNiwxMSArMzYsMTAgQEAgaTkxNSxHZW5lcmljLCIiIkJyb2FkY2Fz
dCBSR0IiIiIsRU5VTSwieyAiIkF1dG9tYXRpYyIiLCAiIkZ1bGwiIiwgIiJMaW1pdGVkIDE2OjIK
ICws4oCcdHZfY2hyb21hX2ZpbHRlcuKAnSxSQU5HRSwiTWluPTAsIE1heD0gU0RWTyBkZXBlbmRl
bnQiLENvbm5lY3RvcixUQkQKICws4oCcdHZfbHVtYV9maWx0ZXLigJ0sUkFOR0UsIk1pbj0wLCBN
YXg9IFNEVk8gZGVwZW5kZW50IixDb25uZWN0b3IsVEJECiAsLOKAnGRvdF9jcmF3bOKAnSxSQU5H
RSwiTWluPTAsIE1heD0xIixDb25uZWN0b3IsVEJECiAsU0RWTy1UVi9MVkRTLOKAnGJyaWdodG5l
c3PigJ0sUkFOR0UsIk1pbj0wLCBNYXg9IFNEVk8gZGVwZW5kZW50IixDb25uZWN0b3IsVEJECiBD
RFYgZ21hLTUwMCxHZW5lcmljLCIiIkJyb2FkY2FzdCBSR0IiIiIsRU5VTSwieyDigJxGdWxs4oCd
LCDigJxMaW1pdGVkIDE2OjIzNeKAnSB9IixDb25uZWN0b3IsVEJECi0sLCIiIkJyb2FkY2FzdCBS
R0IiIiIsRU5VTSwieyDigJxvZmbigJ0sIOKAnGF1dG/igJ0sIOKAnG9u4oCdIH0iLENvbm5lY3Rv
cixUQkQKIFBvdWxzYm8sR2VuZXJpYyzigJxiYWNrbGlnaHTigJ0sUkFOR0UsIk1pbj0wLCBNYXg9
MTAwIixDb25uZWN0b3IsVEJECiAsU0RWTy1UVizigJxtb2Rl4oCdLEVOVU0sInsgIiJOVFNDX00i
IiwgIiJOVFNDX0oiIiwgIiJOVFNDXzQ0MyIiLCAiIlBBTF9CIiIgfSBldGMuIixDb25uZWN0b3Is
VEJECiAsLCIiImxlZnRfbWFyZ2luIiIiLFJBTkdFLCJNaW49MCwgTWF4PSBTRFZPIGRlcGVuZGVu
dCIsQ29ubmVjdG9yLFRCRAogLCwiIiJyaWdodF9tYXJnaW4iIiIsUkFOR0UsIk1pbj0wLCBNYXg9
IFNEVk8gZGVwZW5kZW50IixDb25uZWN0b3IsVEJECiAsLCIiInRvcF9tYXJnaW4iIiIsUkFOR0Us
Ik1pbj0wLCBNYXg9IFNEVk8gZGVwZW5kZW50IixDb25uZWN0b3IsVEJECgotLSAKMi40NS4wCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
