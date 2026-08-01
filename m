Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96F06C55173
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 19:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pBDGpf20Whv1uEdANUU6N0dVGiC2KxkEVbQvBg7Tsno=; b=4ERsZr2JmOan+v
	aT/0XfozX0IFZIk1rRDIiCbWHs0G0xaqbjG9rNDmTuu4NfhANIsHvjvXEOGxuYHBOVoZ14mHeL4uh
	V0QIn9VlERnuGAjyrUUb8FLrihDhcKvIzY+IqsXgVBMx6ocWxi/ZzBZd47I7VgWd9wHmRBbb0KCmS
	HV8o7fj7UkuSbEpMTCwDJoNwJGgkHWyNOnq1HCHQSwrkB5yoFCkHgM5CRQLhTqksoL8CIA+S/3c76
	FTYCuyl03Yz/gQk3ErXQiBS+z7tDzcOxkgeBXioEs68iSIhJBG8/5jVKAkc13vlQ4dAj7BJ6PjK5u
	/wtDwTviZGoJSDO+et2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqFFO-0000000Ezm3-0Stf;
	Sat, 01 Aug 2026 19:19:50 +0000
Received: from mail-ed2-x00.google.com ([2a00:1450:4864:33::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqFFK-0000000Ezks-33cR
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 19:19:48 +0000
Received: by mail-ed2-x00.google.com with SMTP id 4fb4d7f45d1cf-698447ea5aeso966563a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 12:19:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785611985; cv=none;
        d=google.com; s=arc-20260327;
        b=P8T6r8pEzYBXruCswA+Z+BVaBqf4hnwCXi52Q3xX/K21WA8FMv7WRtaSYiiqKxcEgK
         nlgX6gGNPSxocAlk7LiNlzP0zWDpSYRFnjHbSK2NvyYmOEiKj5iMHdUUF80VYE0NRqci
         5xz19HKk2Sn7yVpkmMvv1lrsmvz6HncsD85emo/F0B6dSfY4C2vsF0vY6kJ6EcbFH/Mc
         xG4XCVcHXK5n2QqJIHuPD/RKmPSQiKBBg3x+cSjKAeos1eK8oTEZl331XS5Qdam1WmQ8
         yUpmsUjbxfM6Znr03yNs6Eaanl5OSHKjF7C0FvP0/Zx+eRJIbpQOtUyuSX1vQU3cE4IM
         o61A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SCQm3Q/ph03r/XdeQCWy2Yw7OKUkw0PP1SQeQ3TZ+Pw=;
        fh=w7Hpoy6zpxfICh/hMKAB4/D77p8i/PuUAD7mqJEQHBw=;
        b=jMC7qbvtowGxDSXolpP2l334nfKSWixlJ5YPnz7kCr0VZblUf34MrGszrF2ZyCZpxJ
         hmMraGZAAOZDCi/w9mChuMpTYVxk8Gl4HXZDbzoQc7nbFklPDXocORr8P/1pYXutqvjV
         ntpnZY0R0yV597MBjDDqt5S6+fvQxW+yNNnD+DqyHW9d8RjKa9yXrEGsG/FNgva4rDmY
         GT4RIH2uipOrqugukgnATxWsydviuSMOxefMqcXf4PlabFvxI0PryRh9UuHWlfCXQQio
         ZVxf32tAJcPtbQMQmiDjzQf3ZGvJJHXIGMj85d3v/EAI8mOfISad1p9rN8tz9zpe8FT5
         rHiA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785611985; x=1786216785; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=SCQm3Q/ph03r/XdeQCWy2Yw7OKUkw0PP1SQeQ3TZ+Pw=;
        b=XMj92Rhr0HqHJ8atpvIpy5IToaXu1p8WVJTxR3+cJnQUb3WaPimiEgjOhzydNdE+dV
         yJu9gT2NDH0WEMig7EGjsBKdAVeIYsijh/r30hCQAQ8PleiagfTPiN1Vgrsl0uE8k1wh
         5JI0ZiFe+1cKydphez8smvNid/Za1fsQRAWn59KqhA9TsV6tR1ies6+NZb0iUhmsW4uO
         xs69j65GyTVMangMna1PQbvxPYS/1xTledZOg4mDU92gU825cWZwvWbM32OZQhdOMTRZ
         Q8ZHSLsNelFZle53E8mZ2Y2b0djgMsRaDK7b/xu323Im2MIjHaw8YH7Ri08upUn4/GNj
         U8IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785611985; x=1786216785;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SCQm3Q/ph03r/XdeQCWy2Yw7OKUkw0PP1SQeQ3TZ+Pw=;
        b=lTImco2IFGfpS/jP63Tr9NMrBkvlEL2hwo6sg0LAy9kJDL7oRoEaObxdcdSdQpUyQk
         1FBRBpL/3BUni3iwu/bS5gRUL6Npjx0+h5iazMjXHsOqmgoGN/jEBtIDCEmzV/+Mfqy/
         R4xl9ywALcRxLSDYz/loZTs9Hw/C88ac9iqVrsIaw26pmLFSV8fvTTuqGf2G2fabNNVp
         kgETRlfDKiTOznjnvBL+uwf+0dRhRNfqfPtCs13g+9XdPDI5XWEskC2EAUKC/RsYstEs
         giGPMGVhE/sw6dl+i4rlDBpTaDjDbqWARk02KwradPcuxKXdSuZv99jTgLEM+IizFDNo
         ncTw==
X-Forwarded-Encrypted: i=1; AHgh+RoFEpZP3BhrJknR/f3JOjpp467mFc1rWf7fMoGtRQc0uArMmgO+ZS4JBXYyAPXiot5iiWe2IrcKkSHE2p4c0w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbNfcHX0RyaAWVlPPYd5L54i5+GHRKPgO2ohbvNVUwKi4HdQ5J
	3ubz0hoGKASLLO1MKqT9Sn76GjVsILSyYuZWwg1uyewuB1onwnJ3F6HxoXB0w5pKQrO+WJTIyC2
	b52B5dTFCajbl6mWnV7yhLPlTaNijvGs=
X-Gm-Gg: AR+sD10U0DbQj7oOoN3qhRiAMpqVlAR2kZLXdSsSkj05Br76Bh5Q/9FWo8gl8i9IzoL
	QOVP/8JuR+gNVdAm/7I/D0qGXR6+SnxHElkE3WvXRf0lMVHaa/UXypM+gEKrbpFS4pqA8xZ+oQX
	cmP7J7G0iAAwIcP6rsEv8YodWLb7VuXZA4WmHkT7wwv0vZOn51ukKKhzXVyujXfZvGAd9eaXM7T
	IVb380bIWp9w6JBZOrTMZRNlQOb1Yl2NLkb/UoVxDfOdmuxlnlpf3W7grcOAesx0dONjCtGo1Vb
	zYnaCSZp4tQrn1Wno3icb4vOX6Fq66WqzQiuQ+Bz2ydCBIOdnjsWjw0NVsPq
X-Received: by 2002:a05:6402:440e:b0:697:f70f:8238 with SMTP id
 4fb4d7f45d1cf-6a0a7c6b76amr3103144a12.4.1785611984460; Sat, 01 Aug 2026
 12:19:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-7-coiaprant@gmail.com>
 <2847036.GUH7pLUipS@diego>
In-Reply-To: <2847036.GUH7pLUipS@diego>
From: Coia Prant <coiaprant@gmail.com>
Date: Sun, 2 Aug 2026 03:19:37 +0800
X-Gm-Features: AUfX_mxTVYa8KO_KHMFv70Oru7_6E2Erl1Ah7ifU-aGIuPNS6S04bHqAgUqfw5o
Message-ID: <CALj3r0gqvFZPb2SKRMPwf9chCx076rwCnXEoOMFch_V-fOKV6w@mail.gmail.com>
Subject: Re: [PATCH v2 05/10] arm64: dts: rockchip: rk3568: add XPCS and
 fixed-clock nodes
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_121946_832906_75D59A22 
X-CRM114-Status: GOOD (  27.34  )
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

SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4g5LqOMjAyNuW5tDjmnIgy5pel5ZGo5pel
IDAwOjI45YaZ6YGT77yaCj4KPiBBbSBTYW1zdGFnLCAxLiBBdWd1c3QgMjAyNiwgMTY6MjI6Mjkg
TWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBDb2lhIFByYW50Ogo+ID4gVGhl
IFJLMzU2OCBTb0MgaW50ZWdyYXRlcyBhIFN5bm9wc3lzIERlc2lnbldhcmUgWFBDUyB0aGF0IHBy
b3ZpZGVzCj4gPiB0aGUgUGh5c2ljYWwgQ29kaW5nIFN1YmxheWVyIGZvciAxMDAwQkFTRS1YLCBT
R01JSSwgYW5kIFFTR01JSQo+ID4gaW50ZXJmYWNlcyB2aWEgaXRzIGZvdXIgTUlJIHBvcnRzLiAg
QWRkIHRoZSBYUENTIGRldmljZSBub2RlIGFuZAo+ID4gaXRzIHBjcy1taWkgc3ViLW5vZGVzIHRv
IHRoZSBTb0MgZGV2aWNlIHRyZWUuCj4gPgo+ID4gVGhlIFhQQ1MgZGV2aWNlIGlzIGFjY2Vzc2Vk
IHZpYSB0aGUgQVBCMyBidXMgYXQgMHhmZGEwMDAwMCBhbmQKPiA+IHJlcXVpcmVzIHRoZSBDU1Ig
Y2xvY2sgKFBDTEtfWFBDUykgZm9yIHJlZ2lzdGVyIGFjY2VzcyBhbmQgdGhlIEVFRQo+ID4gY2xv
Y2sgKENMS19YUENTX0VFRSkgZm9yIEVuZXJneSBFZmZpY2llbnQgRXRoZXJuZXQgb3BlcmF0aW9u
LiAgVGhlCj4gPiBQRF9QSVBFIHBvd2VyIGRvbWFpbiBtdXN0IGJlIGVuYWJsZWQgYmVmb3JlIGFu
eSByZWdpc3RlciBhY2Nlc3MuCj4gPgo+ID4gQWxzbyBhZGQgdHdvIGZpeGVkLWNsb2NrIG5vZGVz
ICh4cGNzX2dtYWMwX2NsayBhbmQgeHBjc19nbWFjMV9jbGspCj4gPiBwcm92aWRpbmcgdGhlIDEy
NSBNSHogcmVmZXJlbmNlIGNsb2NrIGZvciB0aGUgR01BQ3Mgd2hlbiBvcGVyYXRpbmcKPiA+IHdp
dGggWFBDUy4gIFRoZXNlIGNsb2NrcyBhcmUgdXNlZCBhcyB0aGUgYXNzaWduZWQtY2xvY2stcGFy
ZW50cwo+ID4gZm9yIHRoZSByZXNwZWN0aXZlIEdNQUMgbm9kZXMgaW4gYm9hcmQtbGV2ZWwgZGV2
aWNlIHRyZWVzLgo+ID4KPiA+IFRoZSBYUENTIG5vZGUgYW5kIGl0cyBwY3MtbWlpIHN1Yi1ub2Rl
cyBhcmUgZGlzYWJsZWQgYnkgZGVmYXVsdCBhbmQKPiA+IG11c3QgYmUgZW5hYmxlZCBhdCB0aGUg
Ym9hcmQgbGV2ZWwgd2hlbiAxMDAwQkFTRS1YL1NHTUlJL1FTR01JSSBpcwo+ID4gaW4gdXNlLiAg
VGhlIGZpeGVkLWNsb2NrIG5vZGVzIGFyZSBhbHdheXMgcHJlc2VudCBhbmQgZG8gbm90IGhhdmUg
YQo+ID4gc3RhdHVzIHByb3BlcnR5LCBhcyB0aGV5IGFyZSBzdGF0aWMgY2xvY2sgc291cmNlcy4K
PiA+Cj4gPiBUaGUgWFBDUyBub2RlIGFsc28gcmVxdWlyZXMgYSByZWZlcmVuY2UgdG8gdGhlIGFw
cHJvcHJpYXRlIE5hbmVuZwo+ID4gQ29tYm8gUEhZIHZpYSB0aGUgcGh5cyBwcm9wZXJ0eSBhdCB0
aGUgYm9hcmQgbGV2ZWwuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ29pYSBQcmFudCA8Y29pYXBy
YW50QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTY4LmR0c2kgfCA0NSArKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICAxIGZpbGUgY2hh
bmdlZCwgNDUgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NjguZHRzaQo+ID4gaW5kZXggM2JjNjUzZjAyN2YxZi4uOTg5ZTE2NGMwZWIzOSAxMDA2
NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiA+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiA+IEBAIC0x
MTAsNiArMTEwLDUxIEBAIHNhdGEwOiBzYXRhQGZjMDAwMDAwIHsKPiA+ICAgICAgICAgICAgICAg
c3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICAgICAgIH07Cj4gPgo+ID4gKyAgICAgeHBjczogcGNz
QGZkYTAwMDAwIHsKPiA+ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1
NjgteHBjcyI7Cj4gPiArICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4gKyAg
ICAgICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKPiA+ICsgICAgICAgICAgICAgcmVnID0gPDB4
MCAweGZkYTAwMDAwIDB4MCAweDIwMDAwMD47Cj4gPiArICAgICAgICAgICAgIGNsb2NrcyA9IDwm
Y3J1IFBDTEtfWFBDUz4sIDwmY3J1IENMS19YUENTX0VFRT47Cj4gPiArICAgICAgICAgICAgIGNs
b2NrLW5hbWVzID0gImNzciIsICJlZWUiOwo+ID4gKyAgICAgICAgICAgICBwb3dlci1kb21haW5z
ID0gPCZwb3dlciBSSzM1NjhfUERfUElQRT47Cj4gPiArICAgICAgICAgICAgIHN0YXR1cyA9ICJk
aXNhYmxlZCI7Cj4gPiArCj4gPiArICAgICAgICAgICAgIHhwY3NfbWlpMDogcGNzLW1paUAwIHsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICByZWcgPSA8MD47Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsKPiA+
ICsgICAgICAgICAgICAgeHBjc19taWkxOiBwY3MtbWlpQDEgewo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgIHJlZyA9IDwxPjsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlz
YWJsZWQiOwo+ID4gKyAgICAgICAgICAgICB9Owo+ID4gKwo+ID4gKyAgICAgICAgICAgICB4cGNz
X21paTI6IHBjcy1taWlAMiB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDI+Owo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiArICAgICAg
ICAgICAgIH07Cj4gPiArCj4gPiArICAgICAgICAgICAgIHhwY3NfbWlpMzogcGNzLW1paUAzIHsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICByZWcgPSA8Mz47Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiA+ICsgICAgICAgICAgICAgfTsKPiA+ICsgICAg
IH07Cj4gPiArCj4gPiArICAgICB4cGNzX2dtYWMwX2NsazogeHBjcy1nbWFjMC1jbG9jayB7Cj4g
PiArICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOwo+ID4gKyAgICAgICAg
ICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTI1MDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgY2xv
Y2stb3V0cHV0LW5hbWVzID0gImNsa19nbWFjMF94cGNzX21paSI7Cj4gPiArICAgICAgICAgICAg
ICNjbG9jay1jZWxscyA9IDwwPjsKPiA+ICsgICAgIH07Cj4gPiArCj4gPiArICAgICB4cGNzX2dt
YWMxX2NsazogeHBjcy1nbWFjMS1jbG9jayB7Cj4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAiZml4ZWQtY2xvY2siOwo+ID4gKyAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTI1
MDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgY2xvY2stb3V0cHV0LW5hbWVzID0gImNsa19nbWFj
MV94cGNzX21paSI7Cj4gPiArICAgICAgICAgICAgICNjbG9jay1jZWxscyA9IDwwPjsKPiA+ICsg
ICAgIH07Cj4KPiBJIGRvbid0IGZ1bGx5IGJlbGlldmUgdGhvc2UgY2xvY2tzIGFyZSAianVzdCB0
aGVyZSIgaW5zaWRlIHRoZSBTb0MuCj4gSW5zdGVhZCBJIF9hc3N1bWVfIHRoZXkgYXJlIGdlbmVy
YXRlZCBieSBzb21lIG9zY2lsbGF0b3Igb24gdGhlCj4gaW5kaXZpZHVhbCBib2FyZHM/Cj4KPiBC
ZWNhdXNlIGFzIGRlc2NyaWJlZCB0aGVyZSwgdGhleSB3b3VsZCBiZSBqdXN0IG1hZ2ljYWxseSBi
ZSB0aGVyZS4KPgo+IFNvIHBsZWFzZSBhaW0gZm9yIGEgcmVhbCBjbG9jayBkZXNjcmlwdGlvbiAo
bGlrZWx5IG9uIGEgYm9hcmQtbGV2ZWwpCj4KPgo+IEhlaWtvCgpIaSBIZWlrbywKClRoYW5rcyBm
b3IgdGhlIHJldmlldy4KCkR1cmluZyBteSB0ZXN0cywgSSBmb3VuZCB0aGF0IHRoZSAxMjUgTUh6
IGNsb2NrcyAoYHhwY3NfZ21hYzBfY2xrYCAvCmB4cGNzX2dtYWMxX2Nsa2ApIGFyZSBhY3R1YWxs
eSBvdXRwdXRzIG9mIHRoZSBOYW5lbmcgQ29tYm8gUEhZCihTZXJEZXMpIHdoZW4gaXQncyBpbml0
aWFsaXplZCBmb3IgU0dNSUkvUVNHTUlJIG1vZGUsIHJhdGhlciB0aGFuCmluZGVwZW5kZW50IGJv
YXJkLWxldmVsIG9zY2lsbGF0b3JzLgoKU2luY2UgdGhlc2UgY2xvY2tzIGFyZSBwYXJ0IG9mIHRo
ZSBTb0MncyBpbnRlcm5hbCBkZXNpZ24gYW5kCmNvbnNpc3RlbnQgYWNyb3NzIGFsbCBSSzM1Njgg
Ym9hcmRzLCBJIHRoaW5rIGtlZXBpbmcgdGhlbSBpbiB0aGUgU29DCmR0c2kgbWFrZXMgc2Vuc2Ug
dG8gYXZvaWQgdW5uZWNlc3NhcnkgZHVwbGljYXRpb24uIEhvd2V2ZXIsIEkgYWxzbwp1bmRlcnN0
YW5kIHlvdXIgY29uY2VybiB0aGF0IHRoZXkgbWlnaHQgYXBwZWFyIHRvIGJlICJtYWdpY2FsbHkg
dGhlcmUiCndpdGhvdXQgYW55IGV4cGxpY2l0IGRlcGVuZGVuY3kuCgpUbyBhZGRyZXNzIHRoaXMs
IEknbSBjb25zaWRlcmluZyBhZGRpbmcgYHN0YXR1cyA9ICJkaXNhYmxlZCJgIHRvIGJvdGgKY2xv
Y2sgbm9kZXMgaW4gdGhlIGR0c2ksIHNvIGJvYXJkcyB0aGF0IGFjdHVhbGx5IHVzZSBTR01JSS9R
U0dNSUkgY2FuCmV4cGxpY2l0bHkgZW5hYmxlIHRoZW0gdG9nZXRoZXIgd2l0aCB0aGUgWFBDUyBu
b2RlIGFuZCB0aGUKY29ycmVzcG9uZGluZyBDb21ibyBQSFkgcmVmZXJlbmNlLiBUaGlzIHdvdWxk
IG1ha2UgdGhlIGRlcGVuZGVuY3kgYW5kCmFjdGl2YXRpb24gcmVxdWlyZW1lbnRzIGNsZWFyZXIu
CgpXaGF0J3MgeW91ciB0aG91Z2h0IG9uIHRoaXM/IFdvdWxkIHlvdSBwcmVmZXIgYWRkaW5nIGBz
dGF0dXMgPQoiZGlzYWJsZWQiYCB0byBjbGFyaWZ5IHRoZSBkZXBlbmRlbmN5LCBvciBkbyB5b3Ug
dGhpbmsgdGhlIG5vZGVzCnNob3VsZCBiZSBtb3ZlZCB0byBib2FyZC1sZXZlbCBkdHMgZW50aXJl
bHk/IEknbSBvcGVuIHRvIGVpdGhlcgpkaXJlY3Rpb24uCgpUaGFua3MsCkNvaWEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
