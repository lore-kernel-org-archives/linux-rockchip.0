Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56B4DFD88D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 01:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qi4VTm0wy9Hf0y8Gh/oU9YzNhcEebAMGxTwCF2iFMvg=; b=ljm4JLZf0dgKB+
	rhpv+6qlWirlqCXNErp4Pk6z8gcCvy57D+Tm/hIc08RN2ZUos0TrjiWCIRQaDXtWCa7r6xqtnVEDw
	lk2hUj6/4BSBfZmCk4VLd2mTkXteOK3bPOEGX+euY2HmW1h68O+Q2bBqKuj8ysny9p0FRvwsE5jh7
	tsvkD1TXNQGjR04s1HZao+PfwsDe7gNPFYZLkYgXq++VC23uMC0E7+h/EwTok0l2qDmw7SR6idZHg
	YfU1ORICuNtSvaa6yGgWuEhKTtCthPPXOfxnIAdrKYpVQUjd6seVgTmRf/Cv+S19qIvJd9txduENE
	f2q2UyrD50VUuzjQO7lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w08Od-0000000AV4P-2Eo4;
	Wed, 11 Mar 2026 01:29:59 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w08Oa-0000000AV3c-3LsW
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 01:29:58 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-89a61cb72b4so11497186d6.3
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 18:29:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773192595; cv=none;
        d=google.com; s=arc-20240605;
        b=TBtKKIPrgGQqWUSo8/GNUoBJ9cCqFL64JssvlU6eOQrwtKq1UhDe2Qj6z0c88FqdI4
         pICjFoe9ji0Q2GKUmUXD6zFDz4fTh/60L4f4BxmS/O9VV8qCPrGDWt9m4xXweiiS1d1k
         0XXPts2KZ+IRGhliB5gC6AFGZIO5icXP8czUuu1QHLh2etrIF0UQakmxyYbF9caMhtVT
         6yXuE6nbaYbvxanZEqaA0qesaWE1Q0EcYcExEmxp+TXiDaBKU810i3PE9D98c9M4nb5D
         ZSl78vN0w7uGbZgWz5KVZjm2jmmy/PNgw54enQgOtG6umKqs9QY7g0qRWO+Aqz/hSVfY
         jmOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=sWZp1dAqVPQSaHrep/yDn/qvo1iogNLvOQo/Z4cwLac=;
        fh=A+iq1kijNNnb1tWD6zw5o5Wc9+AG/UIhbxbKnzPHcqk=;
        b=bSvieMAo46pbP0bO1nb+JncBFfadrw7E2oFkEtwhNPJGleidfziB6oTUTuVXUa/1Z8
         /KlIISy/i0637KkW8v4WKDBe/2auO8hrxj6f9/7Q1fAHav0Xx9CRKo9B/K45IlDW9D/W
         gkCKmNEyGoZCHYRQ/kxdIvDrLjXGGMoCN+5DieT7WeZsHuE1l+EHMZGDDd3VlCJ04s1S
         w2zL802E9EEJluiMGhks8oJ/RoLiS4vKHtkZQWqDAqLX7qmGCYObhY8UNEWizzKw+/o6
         Jnqa+re+qZfSrsLaLPWahxpZsSfuKeEvWhGJ5nF7tV4r4oN+6LuBK1MIvDrxm9pIYsPN
         EpqQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1773192595; x=1773797395; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sWZp1dAqVPQSaHrep/yDn/qvo1iogNLvOQo/Z4cwLac=;
        b=f+jGzcSqatXkHPQcQBmtNfyjQROZMBxzH5zdAc77nEFxlC6X1/lTWgqCUgTfd5w2Ax
         nWxqmD8Emaqxx33IJbSPQOLuXgrNKrYfx89RoOBFAvkFYJbVkUFiFMUTqQ1dZ6k9OLts
         d+qwDNEatvqsdbrvxpG+aYP1sbLm2CGGsRwMQ2j1gBBPSW5SVEOI2y3xJ4qF+Sae1V4Y
         TVTkv5lHhJldWRdpGGFbY1Feoxo0Kwd9HgXoJIdZuN2Kfv8WFrPG6jtGL88RuGdGcPtV
         UJ0hLHAYE91Oq/BkLnJuGS64dc6nEBIHj37xbm6UOQhMfDg4tJxSRojrSVt+UysSIZHc
         dcBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773192595; x=1773797395;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sWZp1dAqVPQSaHrep/yDn/qvo1iogNLvOQo/Z4cwLac=;
        b=YfZ9aUCuqJrEm/oNKwg4gdoQkNHfiPMq3zmsZ678Uo3nz8mBU4/xkM0BciCdyZVRMJ
         IigPcr38IfhW4YxTJOklYfKk7t+muCUUpsG1wVdxipm0So5LSEl6UEhgwQGuA3uUEBZy
         AO1KX/qCv+h0XPO3XJGdccLeR7hymIf3lIz8fR1bQrIpUI6tnxbrtzysma2RFSbyxjgZ
         /bo+/rB3oX5BBl38OQ2sikU0Farru5BX3XZfFeA5SGMfm8Azl275kuLzURJFrl1SsyHI
         g+qS3mDqOe/2UAIqP6cAdoOm3cbMvHztWK/hV8XQ/15OAh43YBDnzc7R1BVpBSUTE52t
         MPpg==
X-Forwarded-Encrypted: i=1; AJvYcCVVz0rzTgksEoavGFTDVjurvzIU9Ghwc0keiCWQkNx0W2D/iW9vC0/0S8UxsvKSkEfw0H5IYRP4v9PUjTjX0A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzzAg+1WSAJUaql9psdiQRhoW1pQnbib1fusWrKby2V1FOBrm08
	zyg4+22tEgsA/VPIM2W/h5xTN9ktXWezWa/5YyUnI0CsHmKgZzigrz8hJGm6subTXBFdZxaiQfk
	fQduVB2CPceW2htFyrjQwqrGapn0nBfVG2lIaRr/6KA==
X-Gm-Gg: ATEYQzwWpmEaMcuiUUpsQqnqg9pvH/JXVc4BQBPrjNG4ovqBF8eCq9K8vkCuGn/GruS
	3rxd5scSBrge7s1DK6OW72ZKTQ3BBKJIzk3nQgzn0SMrUI3ww2rkX83LqTlFdXzGy/0V3Zc7efm
	PclzULwwkwClYwmmgIAuKZWtiaaOQqfAHlYexsOLc7lyK+LtqKAqvni6dHs0C4CItMdzaZkMz7H
	yZ5pr18aviM37R+OR/KfDEcWcm2BPVltrl2oE2zDovsx5mAf0GIX7hpyUvzIV3JQypCRjr/8gi+
	pYVbr+4s5G4jC+BXKNP/Kz+5e0VNCHPpF+LusFNYSJlwfDVU64FCeg7ltvNRXVx4aUKWE4mKCy2
	zG7eiUQ==
X-Received: by 2002:a05:622a:1351:b0:508:faa5:451a with SMTP id
 d75a77b69052e-50939f5295dmr9948661cf.13.1773192594678; Tue, 10 Mar 2026
 18:29:54 -0700 (PDT)
MIME-Version: 1.0
References: <20260310031002.3921234-1-dennis@ausil.us> <20260310031002.3921234-4-dennis@ausil.us>
 <CALWfF7KD1=U-gC4wC9M49kEYD3ijcfr+XSmMeh_-zAvjO2JVoQ@mail.gmail.com>
In-Reply-To: <CALWfF7KD1=U-gC4wC9M49kEYD3ijcfr+XSmMeh_-zAvjO2JVoQ@mail.gmail.com>
From: Dennis Gilmore <dennis@ausil.us>
Date: Tue, 10 Mar 2026 20:29:43 -0500
X-Gm-Features: AaiRm50D0OtMAsh0hit8iP6ZIxcfOA-A_ofh3hQyy_97B35SnBk_C_vdM7fTNJU
Message-ID: <CAABkxwtz7KjVJpSzYhUWGyEym5k4d3NJq65OS_E3NCnrNUBTZw@mail.gmail.com>
Subject: Re: [PATCH v4 3/3] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Alexey Charkov <alchark@gmail.com>, 
	Peter Robinson <pbrobinson@gmail.com>, Michael Riesch <michael.riesch@collabora.com>, 
	Mykola Kvach <xakep.amatop@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_182956_863221_0B941101 
X-CRM114-Status: GOOD (  10.89  )
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

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgNzoyMOKAr1BNIEppbW15IEhvbiA8aG9ueXVlbmt3dW5A
Z21haWwuY29tPiB3cm90ZToKPgo+IDxzbmlwPgo+ID4gKwo+ID4gKyAgICAgICB2Y2M1djBfb3Rn
OiByZWd1bGF0b3ItdmNjNXYwLW90ZyB7Cj4gPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9
ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gKyAgICAgICAgICAgICAgIGVuYWJsZS1hY3RpdmUtaGln
aDsKPiA+ICsgICAgICAgICAgICAgICBncGlvcyA9IDwmZ3BpbzAgUktfUEM0IEdQSU9fQUNUSVZF
X0hJR0g+Owo+ID4gKyAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4g
PiArICAgICAgICAgICAgICAgcGluY3RybC0wID0gPCZ2Y2M1djBfb3RnX2VuPjsKPiA+ICsgICAg
ICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ID4gKyAgICAgICAgICAgICAgIHJlZ3Vs
YXRvci1ib290LW9uOwo+IHJlZ3VsYXRvci1hbHdheXMtb24gYW5kIHJlZ3VsYXRvci1ib290LW9u
IGRvZXMgbm90IHNlZW0gcmlnaHQuCj4KPiBXaHkgd2VyZSB0aGVzZSBhZGRlZD8gVGhlIHZlbmRv
ciBkaWQgbm90IGhhdmUgdGhlbS4KPiBodHRwczovL2dpdGh1Yi5jb20vb3JhbmdlcGkteHVubG9u
Zy9saW51eC1vcmFuZ2VwaS9ibG9iLzIzMmVkNGI5N2I2NWRhMmI3YjY0N2M0ZTNjNDk2Zjg1OTRi
OWYzZjEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW9yYW5nZXBpLTUtcHJv
LmR0cyNMMjE2LUwyMjYKPgo+IFdhcyB0aGlzIG1pc3Rha2VubHkgdGFrZW4gZnJvbSB0aGUgcmVn
dWxhdG9yIHVzYiAyMCB3aGljaCBpcyBwb3dlcmluZwo+IHRoZSBvbmJvYXJkIHVzYjIuMCBodWI/
Cj4gaHR0cHM6Ly9naXRodWIuY29tL29yYW5nZXBpLXh1bmxvbmcvbGludXgtb3JhbmdlcGkvYmxv
Yi8yMzJlZDRiOTdiNjVkYTJiN2I2NDdjNGUzYzQ5NmY4NTk0YjlmM2YxL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4cy1vcmFuZ2VwaS01LXByby5kdHMjTDExMS1MMTE5CgpJdCBt
YXkgaGF2ZSBiZWVuIGEgbWlzc3JlYWRpbmcgb2YgdGhlIHNjaGVtYXRpYywgYnV0IGl0IHdhcyBh
ZGRlZCB0bwpnZXQgcG93ZXIgdG8gdGhlIFVTQjMgcG9ydC4gYmVmb3JlIEkgYWRkZWQgaXQgZGV2
aWNlcyBwbHVnZ2VkIGludG8gdGhlClVTQiAzIHBvcnQgd291bGQgbm90IHBvd2VyIG9uCgpEZW5u
aXMKPiA+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDw1MDAwMDAw
PjsKPiA+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw1MDAwMDAw
PjsKPiA+ICsgICAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2M1djBfb3RnIjsKPiA+
ICsgICAgICAgICAgICAgICB2aW4tc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiA+ICsgICAgICAg
fTsKPgo+IDxzbmlwPgo+Cj4KPiBKaW1teQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
