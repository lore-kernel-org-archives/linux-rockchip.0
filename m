Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63734C61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 08:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D63sXoT+IA8xd0U7BV+KPCNurP0NorIpxeL+SkKdd1E=; b=sUy6tgcfkvpLf7
	OThg+j7YJhbSyUe5QldZpzI2zKPEP2dpxJO7+LqCkVvslsaevVCw21DX3dJPCCBJaCIOkKcnc+QoP
	wbB8UhbUqkL7VUuTM/E12QVvFXdVXv7gaWhPpMMJoY8fLX//Kv0eHQKZIcLTk2ahNiSPSjy7M7LKD
	lxMjH1XL5Xn9eucfcbcMN/doOza3UxpVnwoKNz3U6yt2SPTTBCsQTXrdDxXqyLuRVK4WFbbfBthp/
	QpZc5P/EInwxeXNj3pXKRWpQiqp1SkN38GFFnV46GmKgCitrX4jiDs26A8Ko77NTWOZT4+L3/c1+E
	pKOxcM1RBqsJ6e1ZstVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x23Ah-0000000GqoI-3pZe;
	Thu, 03 Sep 2026 08:51:47 +0000
Received: from mail-ed2-x08.google.com ([2a00:1450:4864:33::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x23Ag-0000000Gqm9-1YWE
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 08:51:47 +0000
Received: by mail-ed2-x08.google.com with SMTP id 4fb4d7f45d1cf-6a64841e8a5so1077429a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 03 Sep 2026 01:51:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788425504; cv=none;
        d=google.com; s=arc-20260327;
        b=jW4YJwig4Kood/VuCsQ+PeBqZdtIFMCNrorsRrqZV69kvGsUE/SPJBFiWXdMpbIYLa
         OWpY7voAbL5wGI6Ouhtnbewxgek3sC2RsXS3GFkHLhEERV2fOO+H0zD2t4TjS4UBmtUy
         Cu/VRaXTRBKgDDse0oNdUgMXEpWw69dVfgJO6bgCrSktr4pbvqBDZOnFHBkk/mJIUE1c
         D4zgBJh7OXJbtWldNEIHREoUAdf7ztJqNNAnfsXgpzCaoON3bfurq3e5WrGxhxGN1UjY
         2yzSO2fVVo5lKqOp0pqOvp551KOBZNz6Vyn3UUU+P2by9vJEA0GyNVSw5Dl3BjLipZUE
         uEHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=edjXy2PN+mcza+3kZSGSQQ3aYOZGZOPTwjWGFZXSb74=;
        fh=rfcVKaP4VV9Gb1La0Y9ak9KMUWoFGd2KUt0peW6APiw=;
        b=LVge5b8SRnZqjm4zss+/eUKWDkL0LlckGb2GbsOQ7XO8VoYxsHFeq2/bylfHf4OB0u
         vw4NX0P04LJsKPTe4OYAB0nVtkYzPMgIRhoaAjosOJtUwZajuaiBsDFg/Dhb/CVFPK2I
         2Npx9bXvDzlC+AgdQVhlgmVRQ3EVeSo+t8V0jBMnu1wcVbRiprmkme+vde1MMbBcGLQO
         53zvvyNO1cwLh4Wu/Rsq/UvatEc91nXwp18Vv3jWitrZvZlGQKSrAsaWDciS6GJCBPvI
         6NFSgZkmcXT9vxaFx2AeN5tNqcPPrTeEkY77dUqS+aECwLIV6Fr88TMo9MVYgJJcanig
         QZwQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788425504; x=1789030304; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=edjXy2PN+mcza+3kZSGSQQ3aYOZGZOPTwjWGFZXSb74=;
        b=QgF24gNPjgGB8rybzkCGGV0Ckk4IpikO0hgnT8N8TpjYoBRYRofc9kmC0qwlSe4IO+
         EHBvsJb9ENXWPeczhvZg2g459BQrjwyRsBgSf9hGBIcZ3bEwGhzmPLwTb6Ub71c2tvWy
         IFNwJTUd8jY8pLFMviCY4iosKlIk29X+H69VQnD8owLGY1SjZXr9CKT+afX/bPhoPSQv
         XwQDXHV+4mfyjYUt5wSCKZ1foQM0OYd6D58mr5sR5SgsVckLnJgjFM8oDdnmnQmhE0Mk
         cI26KwY6TXMt5Ut+UD+3+SyKJj9z0AbndwxVw7PpkWSVsev4ybZY8X5HGg9LTnicuUEg
         ioJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788425504; x=1789030304;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=edjXy2PN+mcza+3kZSGSQQ3aYOZGZOPTwjWGFZXSb74=;
        b=VIJde94iTTT+tO81QWGAh7ZMyX5SXtnUWYatQOmGZruGNa7LZgVddillrTG0qTkRhQ
         sdjFfBloKRmDA8CkwPNx7PljKDz8zsOugBU2wbFM7o4+frxTp38+C/Zgodh+D2dlVaxf
         ihCspWBtm3X4F61vnx0tpyh6CiMQFAXo97aFe/st24dWg6aNouwmPno9Nz7k+83DU62w
         zA0K8CITdVkvmMJcZZCc3b6kbTl6nkhl/YdqLe42tvuFHbd93T/clFL7M3Mmy1DJM4Yy
         M2X+F7pCMhIFqiS2vPKB1WU0b5QZzj1EpcYE99KVZoxGysfelKVECHJLNU2IR9JxiYNd
         kJvg==
X-Forwarded-Encrypted: i=1; AKwUvBzWmd4K5A6+98HV691+cu1c9x/QLRHKvz4Ov8CeeOZBEZA1EKjXxL5no/MVTglfYC4UdApIaFyIFKqmnP744g==@lists.infradead.org
X-Gm-Message-State: AFuF++mb+TTDgCqMtMkhqgpPZURC3dfDAW2Tsr9QLhJbOtuaiR/6WhzQ
	IMPBlfootoiC2jn+vuW2NpH7SMkRlC0k1oj8fxAEjaKqDStv/29+jurLApCIubwvcy8dukf9EAv
	ZgVdcHy7g08uHxt4erD3hUtSL+kUfko4=
X-Gm-Gg: AYBFou1zVTd9f7LkbygTbp73eFy2Zmmswbv1rdbTaj+4febmWwq9oOJDcdRkLE+giuM
	OFxqhFGC0sRjDQhbDsDONthoWCFZdDXMN1EjRa1msnnGmFnVv2XHUAMrKyfEjPwZJjR1QBB7f5C
	fytfL5997ymN1et5NMqJp9qjUd1DcJ2cmaWJ11tjwK57BSArY9LLOm0Yy/sdOuUqCZHH7oWFRB+
	3BA/k9b2N3HRZwG7GBlkvhVDYSybR2ipmzjBDz5R94zvQwo9GFpoBNPphDOBLVHF+B1XC3/DUpY
	hZBrgx/72EWmuzaP+4fHcNPHrkllAfWiB5iVPtSae6mPnanytF2RVHykX4s=
X-Received: by 2002:a05:6402:460c:b0:6a3:87b7:b516 with SMTP id
 4fb4d7f45d1cf-6a68313fb0cmr6808251a12.6.1788425504326; Thu, 03 Sep 2026
 01:51:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260901150111.141037-1-coiaprant@gmail.com> <20260901150111.141037-2-coiaprant@gmail.com>
 <0dec5462-f6d5-4ef9-9d02-5fdf7f3090a0@bootlin.com>
In-Reply-To: <0dec5462-f6d5-4ef9-9d02-5fdf7f3090a0@bootlin.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 3 Sep 2026 16:51:31 +0800
X-Gm-Features: AcwNN1VVEgAP8GgA8LdwjKHcWBmFmP5U9Mjud48d0pq7C7tHDzymcLYpjmHugJk
Message-ID: <CALj3r0i2msRXH-uqA2QX=cRkQwM_H2bFH9GiroEys2NfEbTtCQ@mail.gmail.com>
Subject: Re: [PATCH net-next v3 01/10] net: stmmac: move XPCS lifetime
 management to platform drivers
To: Maxime Chevallier <maxime.chevallier@bootlin.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
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
X-CRM114-CacheID: sfid-20260903_015146_429476_1DED9A8A 
X-CRM114-Status: GOOD (  14.41  )
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

TWF4aW1lIENoZXZhbGxpZXIgPG1heGltZS5jaGV2YWxsaWVyQGJvb3RsaW4uY29tPiDkuo4yMDI2
5bm0OeaciDPml6Xlkajlm5sgMTY6MzLlhpnpgZPvvJoKPgo+IEhpIGFnYWluLAo+Cj4gU29ycnkg
SSBoYWQgYSBzZWNvbmQgbG9vayBhdCB0aGF0IGFmdGVyIGEgZ29vZCBuaWdodCdzIHNsZWVwLCBh
bmQgYWN0dWFsbHkgaGVyZQo+IHdlIG1heSByZWdyZXNzLiBUaGUgb3JpZ2luYWwgbG9naWMgY2hl
Y2tlZCBmb3IgInBjcy1oYW5kbGUiIHByZXNlbmNlLCB0aGVuCj4gZm9yIHRoZSBwY3MgbWFzaywg
YnV0IGlmIG5vIFBDUyBpcyBmb3VuZCB3ZSBkaWRuJ3QgZXJyb3Igb3V0LCB3ZSByZXR1cm5lZCAw
Lgo+Cj4gVGhpcyBpcyBtYWtpbmcgaXQgbWFuZGF0b3J5IHRvIGhhdmUgYSBQQ1MuIFBsZWFzZSBo
YW5kbGUgZ3JhY2VmdWxseSB0aGUgInRoZXJlJ3Mgbm8KPiBQQ1MiIGNhc2UgOigKPgo+Cj4gTWF4
aW1lCgpIaSwKClRoaXMgY2hhbmdlIGNvdmVycyBhbGwgY2FsbGJhY2tzIHRoYXQgdXNlIGBzZWxl
Y3RfcGNzYC4gRHJpdmVycwp3aXRob3V0IGBzZWxlY3RfcGNzYCBjYWxsYmFja3Mgd2lsbCBub3Qg
aGF2ZSB0aGVpciBwY3MgdXNlZCBieQpQaHlsaW5rLgoKQ3VycmVudGx5LCBvbmx5IHRoZSBJbnRl
bCBtZ2JlIGRyaXZlciB1c2VzIHhwY3MsIGFuZCBJbnRlbCBoYXMgYWxzbwpzZXQgYSBtYXNrIGZv
ciBwY3MtaGFuZGxlIG5vdCBzZXQuCgpUaGlzIG1lYW5zIHRoYXQgb24gSW50ZWwgcGxhdGZvcm1z
LCB0aGUgcGFydHMgdGhhdCBpbXBsZW1lbnQKYHNlbGVjdF9wY3NgIGFsd2F5cyByZXF1aXJlIHhw
Y3MgdG8gZXhpc3QuCgpJIHRoaW5rIHRoZXJlIHNob3VsZG4ndCBiZSBhbnkgcHJvYmxlbXMgaGVy
ZSwgYnV0IEkgYWdyZWUgd2l0aCB5b3UsCnJlZ3Jlc3Npb24gaXNzdWVzIGNhbiBpbmRlZWQgZWFz
aWx5IG9jY3VyIGhlcmUuCgpCZXN0LApDb2lhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
