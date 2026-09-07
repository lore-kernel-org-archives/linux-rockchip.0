Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 597E2C79FA1
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2026 15:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6QS1otkJCSday2Wa0/HzVidATaNfl+9bLsTtwo9W3Qg=; b=yvbDCogfPUjmkQ
	8d0aRxaVq3XpY4FzNhLiGfuN1Fhqcva576xEPTxYW+PUOc/NL9vvEHncYt9gzRARFqGB4AlRfQZw4
	kZMl+x1NOS84/jRETOGoq9dQfEBps6ki97pqMBrAUOaHJVQ27Au/irAQJ5b1mv6Qde6NHwOLFkmcq
	zBuwtZAhjWcZUFZr4aJ0B8BLcTrKM2LhGvJ0pJfWS7oy8Iou/x+rPc7rtYT5vwZJ4mHUm2vz3QQam
	JZWEWoVts33n/EHwZ/0vKAiJJiOb2koBB9uOxnPjRxJ7tvp3aQvPtk3smll+PqmsqOzlNURoJ62C7
	rR9b/lIvdNhew67qBk8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bIx-000000079kf-3JsC;
	Mon, 07 Sep 2026 15:30:43 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3bIu-000000079ip-34VV
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Sep 2026 15:30:42 +0000
Received: by mail-ej1-x643.google.com with SMTP id a640c23a62f3a-c169ae1cb26so809116266b.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Sep 2026 08:30:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788795038; cv=none;
        d=google.com; s=arc-20260327;
        b=bkP3121Td8I29V3iEtDD3tpG6CLJ5hHIzIR3F8cx+17ejREbGtefzqJkjwJT7WXy8y
         mRz3vvuH8HbFPA28/YQhC4PiuRzog2zXqBZSSmt+/lKXVylsF5h9wrQDrNmoa3wV/pjN
         7lMhuJ0l2Zao+QKzFBzC98IHlgOd8g62eTPEd3D+Z1rdW0g4cS1n/NLC7fD02RpgFJOK
         aqZD7wvzPHJI7GqRUG1lIUYxA4wbAOnmlc3eASnejjMxiDHIpFg0fJ6hKA6NsPDM1oRp
         stYh59DkYSbqG0nkcCbPpeTQokxvPIlEAM5/QsdcOxELqC4w8pC+cKJtZF2KaPyTNvCO
         AlLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=lkzdnHLNDNYqM7UpPRV6i14OmTu1unpa7gOTpfiF2qg=;
        fh=pb1QJfMe53xmoEs/BhAG3jeocIQVstWPts+q1nSRWSY=;
        b=EuQGGjWZYTSbltxc1uMfkBFt2tU41okDhmryfUgOjAXAUrnPCL8YWwUM01UjlIiJzW
         kO64lSTVz2JYpSOgbBJgMqslZFf2ESi6Jou+lnafQleWoypsNwfDCOGa6T7GLua7hB+8
         JvsECc/YDhRJibkPupt+2NLWv3kqXebGHurRL1QO61a/jKcXYlGy1hCWLyBrZHbsCNeM
         jnDFZJtOlsQgSNrZFT5r44MjveKMMEuNmW9LzYY2bSOz5a7ObgFk+Vm2EV3BltblUycy
         jMgrSF0UIvWmHkyx43azSulBv3uce/SAEVaXWbxk3oFC9NDDwt5hnswWySH2ztSsJLGG
         oBaA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788795038; x=1789399838; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=lkzdnHLNDNYqM7UpPRV6i14OmTu1unpa7gOTpfiF2qg=;
        b=eXXRnu6KzW4xTtxlEjCLbDCBuIGIvNWx3BXQoFsIZErVcKbTUAlK+BhKc0aK42I0jC
         4U/5Qp+paousPP1RGEBu2CGzhfLUu6ixfkcGCrFKFRhhCtNt8aXdHlUiBwWCsCrQ5Gnk
         Ck/xGRFyzXGJZMzAu8NVuDj3z0Acsd7Q/YAG8XbMZt5rxLnxBFFqjvZQvOmAXBdL9Jz4
         aBT7fymbQuDDYDQDbeMWEwyWbaYL/hs+ZaV1rTrAe/zV3boDt2HHZ8ljKbwTC98zv3Cs
         jQT6oYAT/p/kDbOvQj7fzagG3Z1tevqtq2dkgtobDo83ffp9a5Q/lFx5CsDeQkWQOicj
         Ij5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788795038; x=1789399838;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=lkzdnHLNDNYqM7UpPRV6i14OmTu1unpa7gOTpfiF2qg=;
        b=b0VBKMEOGKYpsQaxmkT9fDbFQMjDaSqIxDZcgnZ+wi/RT5DZqC0Gc0CPWLcvIvSb5j
         uUKOHGu9k17ttKcDWeC/uaLVUfICbAGp/OUB3Bf7zwLwvYgZEPMNPOMXFF3ZHq2orvsa
         Ab+iizQl0UO079sxxoRt2RBpQALmwi8qX5EJmuT35VGUXi5iJeHG2dU2VCiBQgS1QUWW
         P8HTshROL5+jUMlH5ywQHlovZ78e5Kv3jlQpVpgOqO+l7comthJ3x9YBlDaSqmnhhOsC
         LrM3po8eJLsX5SvMs1KcLxD08S7BcmpqlyBT0tjXEiS9stg9A1+DAYMB88VDce7aYWNK
         PDbQ==
X-Forwarded-Encrypted: i=1; AKwUvBw0i7unamCfeYgd1Ff43c2O67jKQfwGhBbY3cIqFhrLB/BF5a2vZUDF+d11zYGPYMZ8FoWQB0cpn1Qho4USEg==@lists.infradead.org
X-Gm-Message-State: AFuF++l6ErTQ5WgYSss6VxEYyXLtlpC8xvTucR1Ov3vhgp/ZLqk6RImz
	qhfQ3T40s1UuWPSItnnC/gOWUxYDXkKP3TNjH4b4N1t4kMYeBpwjg/J3dHioKBBzViqMDCtJGsh
	lY2jwWFviArI/wpcRlqPdzoml+x/N5YI=
X-Gm-Gg: AYBFou1UJ/grMKR9gek4dN4jSiUFgy7MX1cxctizpLw3vfN0p8yVPWrMDzPYeVzrOqR
	bA0iWkr3EYgSePXC0WbuGcpjsdE4nRT2sPIlCZgLZIdTUEYQIme/EAV3x1kz89bXJ4R/X9o4RX2
	gTmz0YXKWDkTdHv2BcsVqm/9Q/+kF/VK04mQTWNTFsVSQHgoUVdOAZPtsgFfXADrOcR9qMezC0H
	bpUe7BYhfTv0tcf6BzjXEFzFHg2NjzWaGEvb1KBt/s4GHgUKk+rUsnQyCG0cxSIIOc5+1V323XA
	6cMFg1SNSRPLoOKrSSvNLnxCOlWT5WaIYinsm3Gv0E+/FofrGQJYYsA3mA==
X-Received: by 2002:a17:907:ea8c:b0:c25:4d9e:bb28 with SMTP id
 a640c23a62f3a-c25efb68285mr1154227766b.3.1788795038010; Mon, 07 Sep 2026
 08:30:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260901150111.141037-1-coiaprant@gmail.com> <20260905130002.554a167a@kernel.org>
In-Reply-To: <20260905130002.554a167a@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Mon, 7 Sep 2026 23:30:26 +0800
X-Gm-Features: AcwNN1Vvl2lnQu7OUmDQrL2TMEu35axYNEauRYInB38b5Eog8jJzDQ2t3ClFiz0
Message-ID: <CALj3r0grty9-s5FoXN-SHOrLkVoWgW+Ot5nHs=1wYzxV3hbC-g@mail.gmail.com>
Subject: Re: [PATCH net-next v3 00/10] net: pcs: add basic support for RK3568 XPCS
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_083040_795271_5201839E 
X-CRM114-Status: GOOD (  11.07  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDnmnIg25pel5ZGo5pel
IDA0OjAw5YaZ6YGT77yaCj4KPiBPbiBUdWUsICAxIFNlcCAyMDI2IDIzOjAxOjAwICswODAwIENv
aWEgUHJhbnQgd3JvdGU6Cj4gPiBUaGlzIHNlcmllcyBhZGRzIHByb3BlciBTR01JSSBzdXBwb3J0
IGZvciB0aGUgUm9ja2NoaXAgUkszNTY4IFNvQwo+ID4gdXNpbmcgdGhlIGludGVncmF0ZWQgU3lu
b3BzeXMgRGVzaWduV2FyZSBYUENTLCBhbG9uZyB3aXRoIG5lY2Vzc2FyeQo+ID4gZml4ZXMgYW5k
IHJlZmFjdG9yaW5nIGluIHRoZSBzdG1tYWMgY29yZSBhbmQgWFBDUyBkcml2ZXIuCj4KPiBOb3Qg
c3VyZSBpZiB0aGlzIHdhcyBhbHJlYWR5IHJlcG9ydGVkIGJ1dCBGVFIgdGhpcyBzZXJpZXMKPiBi
cmVha3MgYWxsbW9kY29uZmlnIGJ1aWxkCj4gLS0KPiBwdy1ib3Q6IGNyCgpZZXMsIGl0IHdpbGwg
YmUgcmVzb2x2ZWQgaW4gdG9kYXkgdjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
