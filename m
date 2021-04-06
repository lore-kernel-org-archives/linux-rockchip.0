Return-Path: <SRS0=2XDZ=JD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9DFC433B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 09:34:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 300146135D
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 09:34:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 300146135D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References:In-Reply-To:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SfxOM/CdgpGqDdaML/rKR8LxP7H0kUHgx7LyqbpiNqo=; b=quFzwVPyzcrGtVo9dB2WyIb1W
	Q3mxgK68umQhAjujWZPCEHrugQ0xwUc55QdwCmC8teM0OLkR5LSa1Uur64aq/JQXyYr2R/nQp1m5A
	+Knl0EXYRvXjD2QUMImlRMVRNulFJ0s6P14r6ZM/HGhdPUWGsA0oWeeW6lagPYI3G9ffCg9q/FV8S
	rhsTw1WLeQRpEG8OvFTsCjuP5yJHpMJ2AjH/tUY1PRsKP/W6WWO/EVpSuyi3BrGHhJ+t9YD6s2iYN
	01ZoymxEbMKYf7gS9a7NsYaVgNqt+5+uMJ6yVFmrlJNcb0RAJAITGMCjukXIB4cyfKK5hS8bbPTOy
	+WAMB4t4Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTi5r-0021X7-Om; Tue, 06 Apr 2021 09:33:55 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTi5f-0021Um-R6; Tue, 06 Apr 2021 09:33:46 +0000
IronPort-SDR: LsPRS1isskO0zdIHIgD/l6DBJpPkBzaww4wZFHaC6ZI7IT1mgIZXqAbHhNHlYaZso3WcH3U+y+
 xGHlf0qk/kmg==
X-IronPort-AV: E=McAfee;i="6000,8403,9945"; a="180158519"
X-IronPort-AV: E=Sophos;i="5.81,309,1610438400"; d="scan'208";a="180158519"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2021 02:33:35 -0700
IronPort-SDR: yNx+NRizR5mkR8GcZPzlI8J7Pj0MjByUv03J9PMpLpN8+8z9CtxNE4aHX/zeWYKFAFUMA0T4x4
 hC15JwVa90TA==
X-IronPort-AV: E=Sophos;i="5.81,309,1610438400"; d="scan'208";a="457817452"
Received: from oowomilo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.33.55])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2021 02:33:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Support Opensource <support.opensource@diasemi.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Nicolas Ferre
 <nicolas.ferre@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>, Ludovic Desroches
 <ludovic.desroches@microchip.com>, Claudiu Beznea
 <claudiu.beznea@microchip.com>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, NXP Linux
 Team <linux-imx@nxp.com>, Heiko Stuebner <heiko@sntech.de>, Fabrice
 Gasnier <fabrice.gasnier@st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@siol.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Daniel Thompson
 <daniel.thompson@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-pwm@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-fbdev@vger.kernel.org
Subject: Re: [PATCH] pwm: Rename pwm_get_state() to better reflect its semantic
In-Reply-To: <20210406073036.26857-1-u.kleine-koenig@pengutronix.de>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210406073036.26857-1-u.kleine-koenig@pengutronix.de>
Date: Tue, 06 Apr 2021 12:32:58 +0300
Message-ID: <87tuojlpv9.fsf@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_103344_229713_140F6A4D 
X-CRM114-Status: GOOD (  13.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gVHVlLCAwNiBBcHIgMjAyMSwgVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0Bw
ZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gR2l2ZW4gdGhhdCBsb3dsZXZlbCBkcml2ZXJzIHVzdWFs
bHkgY2Fubm90IGltcGxlbWVudCBleGFjdGx5IHdoYXQgYQo+IGNvbnN1bWVyIHJlcXVlc3RzIHdp
dGggcHdtX2FwcGx5X3N0YXRlKCkgdGhlcmUgaXMgc29tZSByb3VuZGluZyBpbnZvbHZlZC4KPgo+
IHB3bV9nZXRfc3RhdGUoKSB0cmFkaXRpb25hbGx5IHJldHVybmVkIHRoZSBzZXR0aW5nIHRoYXQg
d2FzIHJlcXVlc3RlZCBtb3N0Cj4gcmVjZW50bHkgYnkgdGhlIGNvbnN1bWVyIChvcHBvc2VkIHRv
IHdoYXQgd2FzIGFjdHVhbGx5IGltcGxlbWVudGVkIGluCj4gaGFyZHdhcmUgaW4gcmVwbHkgdG8g
dGhlIGxhc3QgcmVxdWVzdCkuIFRvIG1ha2UgdGhpcyBzZW1hbnRpYyBvYnZpb3VzCj4gcmVuYW1l
IHRoZSBmdW5jdGlvbi4KPgo+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCgo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3BhbmVsLmMgfCAgNCArLS0KCkFja2VkLWJ5OiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3Vy
Y2UgR3JhcGhpY3MgQ2VudGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
