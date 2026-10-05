Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 108C7CA5FF5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 22:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Acrpirnl+nsjd0kxO0Yo7PT0LaR3BSDQ7AtfYqSWpbY=; b=WoNpgqMssCSq7O
	Ox+akU4m0uAjA3/3ntfaP5Y6vh7w6DoCaYxFqWVsIkHHdYfhLVnahnYG34dLewIF+rUH3+dRf2DW2
	JZL+3Du4CRqijx2MJDjQ3yZnmcXZ6KpoHXH9816g6OE1GRuvHbTHq6SToZV8d2kwy49Pdm1pZWA21
	OeQp/Bfogtg9Am86B8QsaxgWGhlFVytEMDy6Jp/ZXsWZJtQUSoAv0rUnBZDbfdqPa68r41tJFQQ2X
	gY2Ko7zmlAQ+40b4CnCEFbXPe6zPdGQlYzLxO8CLBVyQPrvgmQgBxz+p76h2UVns3WPurn8GQDLsY
	kYkzdVTKOmqcCpiW9CjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqkm-0000000HE1Q-1nuP;
	Mon, 05 Oct 2026 22:01:48 +0000
Received: from mail-ej2-x06.google.com ([2a00:1450:4864:34::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqkk-0000000HE0a-0GNw
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:01:47 +0000
Received: by mail-ej2-x06.google.com with SMTP id a640c23a62f3a-c2e31c05606so67988166b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:01:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791237704; cv=none;
        d=google.com; s=arc-20260327;
        b=GMdD57VXXvopR410ek36PCh6pwtiFay1O2vYt0PaBk5800xu1bdFvUPlsfG1eL+1Y4
         kkEsj42lIfkePiwczfLMRxkPtRYoIaWwYL206fPvV/0G+bOE4Ps5LbkG1u2si4BtWOIE
         p2Zy1O0t7VWZ5XpTGY1vZKw1Sm44vmNUNQDiyL3dvTXqOuLBEfTfBDHBiTGADsS57MBz
         zkSs7tyhtfdhPCbJKAnYpuklH+aF4mnZ3LCByqNhzMPCJIf/pCEYQ94N0D0ZFGpczSDr
         d7SLhgVeDnMtquXCNTS+Vk+dccvuRYAABnAtGyVRmY6IPRawfqznJ7Wfq6r8YW8Zkrha
         FJyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=pU6N+LDOUo5/wsUPaDzc+C7fTsEvvOq2zd9vTznRek8=;
        fh=HXNE3fIXJSXrCzhVPQg+rk6UnFjXWHkfZoO0IsSQ7jk=;
        b=g+NIh6sx9AWQxvO6/FkZw4bwCim7CE//HXZADMUKd6gBP/kvLAGH8mBx2YnytVEQsE
         kWXg8jZWMBhYe0yb0HFA4p6v5hvH1nOk6E1NBYgsYfST6nPmE19ohi4O3fhipyrOiF65
         sAS7SahJ3oqBR2/3rdrWg6FaljApLctoji54ZC8EdMti3NwZrbZuUUkCg+5L9RDqVLXw
         IHajfom6T0D/0FbxyYY2mUCl3HvqY+lwRnteJFUm+m6WO0PrlBJYOcdglexIgHEgGBEO
         Z4RTPV0ILUvCvP6YzT/cu34J/mcizSAUgX6mBfFvJLEO6Tq4ZuDF3DtTGM52/YXPPWR4
         MK1g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791237704; x=1791842504; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=pU6N+LDOUo5/wsUPaDzc+C7fTsEvvOq2zd9vTznRek8=;
        b=PB3Nty8kztJr5gGuh74+34XwhLggVXKqURIb/jRVopZ0FKopPvzYQkoJxUVaaAo4ob
         bWxFJH1VqX9/esjr/IfjITMjBJj1ntSDJv2zRJ6BQZgAixcpgRu5RiwIw5mHzH2pOrfZ
         GI4HRaO+amTIRKdZQM6d66uEXRAurJXdy0aePYFwCnTFWVpH0x5Lto1AkFI/FSQEL7p0
         P9TGagJqa584cY3dLSntBu6YZH/yzxo2D7lSSHDZU3ciWZMxMeJq/W4OcUBviF1HXC5U
         u56hNQkDxE7UPCHaxiPd2YVmSc3cpdAMyan1m93WaFKIknvcI/7t9SvQYpkX1H4gfEDJ
         OtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791237704; x=1791842504;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pU6N+LDOUo5/wsUPaDzc+C7fTsEvvOq2zd9vTznRek8=;
        b=mFyLJyoXpdIS+AgV0c1+cGFguWy8ejDyrWcxSb3DBTUyV1iIUpVkeiuMFe6KkN443M
         KUay/VAPk6DEwJ41bopkfDujjy2/2yJGd2/4iEemFq2mpAv7p40m5sCTODxkX3zDi+aQ
         ivV7As8kx+auXnQfIhz03YamE3yzkKqTQa/RYFH5fyYmdR2F8vzbHjCXiNVSyYthnQ9r
         aGQzoMjCNKpiqkUvfwEj112D/ANm1PVDk2hNEUxaZTQMRIgC4QCG3WqO+AMZYtJVsDIE
         x2YCzIGc0hSW8RSlTLTY35RodcaDQfxKjgZwwvFLFYRUpyDPEX62gdJK5+le/Ym0lMYB
         oHBw==
X-Forwarded-Encrypted: i=1; AKwUvBy/oilocqonhqx2zn4mex8+4bes9GJYQd0hl0qHsEF6vgP7DmTDswQwcI0yz7dH5GuQjosqF5hSkNdZ/CX6Kg==@lists.infradead.org
X-Gm-Message-State: AFuF++m7mHj/RLK4U4FKCejXejxX0EgLHeYBK4F519XnNYFrMDKuiYxb
	6ktgdYjhWAdWWYyHqaEnMXF57JsZ7GY7I12wYa6xeIpzpCJvOQVmf4V+PjEEAe2UK7AZmz78/9B
	Ye3dpdaVKu2Fj+xlRPO1DSvTk5xD75DE=
X-Gm-Gg: AYBFou0eJbUih7x2hODwkwWG9LAmcGhKCksynS8zJXJReDXZTl5k6Zm3Be0pXKEoYdE
	rgQkyaIguFGq45aJ9IRFhvMsXUWHmFR0+wqa7N5uvpNf7H/zIhYiSJVrasSe3bR+I+mya8M0ItJ
	msPQI1hbRivXtrhzhkV8Fb6KGO30I1w50KeZ58B82j0nFApovB+anurgyBrXdZUuh7aXltOQ3pB
	cWzLG+F0d42JdOaXhsLNJAIUL/qzI+/YzLzhS4Fh46s5+CryhmGK4aUj7zL4Dh+DhsH7zm+aJlc
	r1chmDchUanXVW5C3iIzFaofI+vyiVRWAHDWJ4mcjwDFJ0yWZQMTHwizww==
X-Received: by 2002:a17:907:2d92:b0:c29:f5d5:5a92 with SMTP id
 a640c23a62f3a-c2e4b007c22mr1011878966b.28.1791237703713; Mon, 05 Oct 2026
 15:01:43 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20260922200336.2201212-4-coiaprant@gmail.com>
 <20261005135939.01ccde50@kernel.org> <CALj3r0h7j-4ZAiX67LmbgpmYCvK-Xmzd_qnYYgoBmniAW+eiWw@mail.gmail.com>
 <asQZ99CMsQF10-RZ@parshuram>
In-Reply-To: <asQZ99CMsQF10-RZ@parshuram>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 6 Oct 2026 06:01:31 +0800
X-Gm-Features: AclHuK-R2LsVgHnJjNmWI_vZ1n3RwcrYHA0O30u1dyI8VYXPn7GxP9tLow2x2eg
Message-ID: <CALj3r0i+sBhefWPqzt76OX+DxEZqzxg1JOz3d3te0sHzHQTV0A@mail.gmail.com>
Subject: Re: [PATCH net-next v10 03/11] phy: rockchip: naneng-combphy: add
 SGMII MAC selection for RK3568
To: Vinod Koul <vkoul@kernel.org>
Cc: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_150146_174070_9AC73906 
X-CRM114-Status: UNSURE (   8.35  )
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

Vmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6jCAw
NTo0M+WGmemBk++8mgo+Cj4gVHlwaWNhbCBvcmRlciBpcyB0aGF0IGJpbmRpbmcgYW5kIGRyaXZl
ciBnb2VzIHRocnUgc3Vic3lzdGVtIChpbiB0aGlzCj4gY2FzZSBwaHkgdHJlZSkgYW5kIGR0cyB0
aHJ1IHRoZSBzb2MgdHJlZS4KPgo+IEkgY2FuIHJldmlldyBhbmQgcGljayB0aGVzZSBpZiB5b3Ug
d291bGQgbGlrZQo+Cj4gLS0KPiB+Vmlub2QKCkhpIFZpbm9kLAoKVGhhbmtzLCBJJ2xsIHJlc2Vu
ZCB0aGUgUEhZIGJpbmRpbmcgYW5kIGRyaXZlciAoMDIrMDMpIGFzIGEgc2VwYXJhdGUKc2VyaWVz
IHRvIGxpbnV4LXBoeSByaWdodCBhd2F5LgoKVGhhbmtzLApDb2lhCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
