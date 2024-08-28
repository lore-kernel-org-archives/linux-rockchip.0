Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D864C54F32
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 12:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SajjNQhl+AtzyNXlWDojT9xE0rgo4CMdA6aVlrl9xds=; b=btqym0j4FihvXx
	6v8Casloaw3tSge8PNhCrg+bmuR/1xtcxWP/mZ86ARy/avn32eEmTkO05WDi+1eObNJ8JmT35m/F2
	4leTU1cRjaQ4PZVK1Eg7ACsP3lljtn6Twy2qmaLbH6TTnAJfiKcWjXS1oC18ZynQ0OOT+EiusRVtW
	2DfHHQ3n+lWquxgZNz/2rtR4q4OP9JcZdsjp29sVAt+LmpdM+Ce6G8zjf+bWV0TY+hHLDZ+Ja0KFE
	lh08fnPJSCBIrA/CkFsYcyLTbBoCu3/BYAmMeC3JkEn1RjB+t1TlRMVi7V5jFGAXj3riuEPfNEVvF
	Hi2dx2xDsvhhcYKPnC0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjI0h-0000000FMbK-1SL4;
	Wed, 28 Aug 2024 12:42:51 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjHyf-0000000FLxm-3y4J;
	Wed, 28 Aug 2024 12:40:47 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724848836; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Mr9vXI19AMRK+7sP300gtmXGiYFnNaRjoSgmu2avGnmrMV3sy7/bVG/0HnuD+cSuok7t/5xml0A7+isEAT1tJj3MA277D8cgJ3+R5jQ6joGTX38KE8GOLbzo3u24dO8ydfP/NWnwyHdelhCiuQmRPtf20JhwjRLagRijWs9PX38=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724848836; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hMhceDYSJT3sweNsBvB0D+Xx2msIrWuw/AOE4Zw1sKM=; 
	b=TagecXMhwN1/1gdeVIsVuQBtRZAOQEm9AddRI2HNh8fUIOcCMOWRFh1HjRFI3uI+bo8P7iZ+UtJ4wxpg6gKSnaV4EdXpKQD2JWsb+y1RzLrDuvOrp7xrT0CbPQS1IcvS3TRUT9CZTG0XwxHdJXOjlzm2luh6YneVhwxtaDI+Qpw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724848836;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=hMhceDYSJT3sweNsBvB0D+Xx2msIrWuw/AOE4Zw1sKM=;
	b=GBaYBiMKPFOr9IZts8uWExL/VeGTFa1f5sSYNSQokGegbQzNKORuAq3naw77tnvg
	aXoZnIzFAjgB8mspUhrArCtTuLQ5MOvtY58KXPB9B9t6eTLCmMw1p83lf+1+d4w0PGs
	1AfMhaEHzmQzzYTiZkGP2ItWFQ5m5uYiTboDm0rM=
Received: by mx.zohomail.com with SMTPS id 17248488348410.2640791504728668;
	Wed, 28 Aug 2024 05:40:34 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 0/2] Fix compatibles for RK3588 VO{0,1}_GRF
Date: Wed, 28 Aug 2024 15:40:07 +0300
Message-Id: <20240828-rk3588-vo-grf-compat-v2-0-4db2f791593f@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKcaz2YC/4WNQQ6CMBBFr0Jm7RhaS6iuvIdhMbQFGpGSKWk0p
 He3cgGX7+f/93eIjr2LcKt2YJd89GEpIE8VmImW0aG3hUHWUtVatsjPS6M1poAjD2jCa6UNlZV
 GK2taLXso05Xd4N+H9tEVnnzcAn+OlyR+6R9hElijVSQ0meHaCLqbMM/UB6ZzqUCXc/4CurrrA
 rwAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>
X-Mailer: b4 0.14.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_054046_067449_4B5F6CDF 
X-CRM114-Status: UNSURE (   6.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

As Conor noticed recently [1], RK3588 VO0 & VO1 GRFs incorrectly share
the compatible string, since they are not identical (though quite
similar in terms of layout).

Provide dedicated compatible strings, as a follow-up.

[1] https://lore.kernel.org/lkml/20240821-stretch-scam-09d7adc08a4c@spud/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v2:
- Deprecate the old compatible instead of removing it from the binding
  document (Krzysztof)
- Link to v1: https://lore.kernel.org/r/20240827-rk3588-vo-grf-compat-v1-0-d4a18acf951a@collabora.com

---
Cristian Ciocaltea (2):
      dt-bindings: soc: rockchip: Fix compatibles for RK3588 VO{0,1}_GRF
      arm64: dts: rockchip: Fix compatibles for RK3588 VO{0,1}_GRF

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 10 +++++++++-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi           |  6 +++---
 2 files changed, 12 insertions(+), 4 deletions(-)
---
base-commit: 8400291e289ee6b2bf9779ff1c83a291501f017b
change-id: 20240827-rk3588-vo-grf-compat-4d2c84dc782b


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
