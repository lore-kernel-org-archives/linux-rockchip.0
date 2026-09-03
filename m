Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F246C624A4
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 08:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iiOjhx7gH93P1Q+uQU2t+Qlj0vKtrDY/4n9ST4yClYE=; b=uEiYO/ZvwvcgzZ
	udFaoWdKAO24zBkvz+6HHpPBqwHjrXhI5fWXyXGGqZ+nIve4F3O+AERTvO8NHiWT7Bic7ubpGadvF
	nvlt6jsnn8SMedgHPAKaaG+pKzm6HRnyB/z9sIaRlPT62gzMKqacr753yRiBfYF/p3VbGww1cEfMU
	8L3eo7MSIfDQmMnJ5hZzDidZDWk2rTIz3Wkb/QqlfvLEnazApVt9/hnhvXm+e5BiYHwRBxvhEu82T
	Sx8ua+TtTsfI/C3frz1aMARBp2vZHabvH9W35FnoKvvhfZ0N4/iQfpOUcnRd+63713VLJUQG3Q/c4
	0Gw1ON7qQ03rfA3vl1SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22xo-0000000Gogm-44WR;
	Thu, 03 Sep 2026 08:38:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22xm-0000000Gof5-40tI
	for linux-rockchip@bombadil.infradead.org;
	Thu, 03 Sep 2026 08:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=zLI/RWFajbdI/yeWFj7by+G0c5qK0/HsoOvw38Apr+w=; b=oiwq3QNHUkCrcDbE48bPeKSjCw
	qqP0YctVCrVrwg5L/Wcu54U0vrpy966+7d4AAOqwFXkZstAqOCL1HsoBMlvGC8p5IJfH4e8ZIe3FK
	lMmyOXegD2D7uBZJXxF/c797/VYDU00bP97jv9oQ6kKAzl8pfgL5ohi4A/JKzfCiKiswVn3ZrmqiG
	2Vqnu/ubWXJkSjB7PcYrjTLYsfkAsUWDaKdGnmqJRmx4TnScZZAQdwJKqBx+3GT3mz464vUH8RTvA
	JCd4Au56JN5nO/uOerISnvl6v6+8B/Ym2QUBOf0HsGK89MYTzxIFBydLkhiNPOGbk+JYQl4bFmDbi
	qQUh9cFw==;
Received: from mail-ej2-x07.google.com ([2a00:1450:4864:34::7])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x22xj-0000000CsCQ-3rkS
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 08:38:25 +0000
Received: by mail-ej2-x07.google.com with SMTP id a640c23a62f3a-c254d2a2f66so86518566b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 03 Sep 2026 01:38:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788424703; cv=none;
        d=google.com; s=arc-20260327;
        b=FL5J2vUCyLkDObWMWMn4KWNX/4EML3Ci8aGMe6DR77YenCwaTLu1m8QifWf4p3qUdp
         LL6/xvRUnBiyZtnylLwjLb7uFz6kgRvNs0RM9f81mi3yIBaxSWmFpJyyDRfLahcqSRGT
         0lZBD0mS6g8exPm2wswiglwRs5X5/h3gHF66ew7Z9Ym4zlE7oXUD8XpUGzzh5HzDISMu
         /1aE3TPQFLTL2RBKUS7oZAWzMpobKrhjpvinXP8BVSKoMWIrQ5s/Vhrm3RebS4oh+OvW
         YIC4xmKoUwfxqS4RSG2Kq8eC6n7gPM3nZ8p6Ezw2vG43Or/WYod5fD9V0HEJcf6BxXN2
         tYAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=zLI/RWFajbdI/yeWFj7by+G0c5qK0/HsoOvw38Apr+w=;
        fh=kb8MO8mJr0IdJo4Ea0wgmGJxw0RElL5aMkuJXhmOcEs=;
        b=X+QD/5uqC5CRYUHUiUXxXdBkVMqXrKjc21OKuALj3c6M9lR/eKon6EsRng5TXSwlzC
         yfoOs6tNekpezJgQcsBbwuwqnmg/c3gASyogyBXVH15UTcbfz1KizJBV9fXo7yrr3C4B
         p0S9w5TY3+zqkC1ZVk8BL4YK+Bn8jWbj7DTUfieZgs37o9aocOaDfgI7OBLZXPiYqEB7
         AqdTl9vtOoVsperhS2DYkMOTBHqgyvI1syzGpGfxBELEtmNAkWnbyxi5mpTXYB7SWtBJ
         eylDdaWqJoziro6PkTUVzcdZj47plmT2D5BhekqMT9/BDW/8EscKKf7RvC1IYIPdLhga
         kbTA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788424703; x=1789029503; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=zLI/RWFajbdI/yeWFj7by+G0c5qK0/HsoOvw38Apr+w=;
        b=kpSfQeSZsT+SFxt94zLQDAtI2GZFQRmcc0DBe6ztun5t5zTU/iyYBmk/84hNp2Gl0/
         ZdKYTtJL7RJuTOTMzjH8QfFuBGR+9Zke2Vsg0j/htNqjLDMGNGm3R7Tx54DwQqh1NOYa
         zGV48Y+9MrCZRv7RwE1K+gWyE36IoxjaPFUX9opEuciU8mWyF0VUe/20BmBolHCg39gz
         ZfM7i3IIZ+sd1l/pN8K9zkZvsNL09z6g0Jd0YMNv5+mOYpYrmlPf9WptkPxk1bD03Iw7
         FQVTZ9PWGVLyw1wj2WK/1pdDJtLOtNsc31cd8NFc138OIJzel/tzZuLEoqC6M8MPb01o
         dMDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788424703; x=1789029503;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zLI/RWFajbdI/yeWFj7by+G0c5qK0/HsoOvw38Apr+w=;
        b=XZsp90b5qxzJFP2GSupLsYjbqf154rCuPYC8Nt86Llwns3YKRvGTYJ6Dy/EH7Mr2hN
         lXgeR1yZQLijpMGZDUBYtYE6UvQfg6OZanaweMGpFZCngS9ua6HFMQzcB3yJcA+aXLri
         kid3RVWo7oX8Kllktlp5XNiRtZRQYH0+/UIs96hlQyXZj2VKL5UrWm/7+0Ua3NuXwzZw
         o0XkQiViSu2DmpSPXLPiBfXzQOYeEC7nIWYx8OegjkQ5ELLFw2M2u/Oc/Sj7555333XK
         5EMrPDYHT9wy28uNFy2CHNZk25Z2yPhKwDRApTJFowSCpA5qtB4KFW/GBWkAymDdiUHB
         T8JQ==
X-Forwarded-Encrypted: i=1; AKwUvBxKJzhidwd+nnt7ZZf2acdevYCM/BzaWNrAHldscrtUIFalBVBeWgMZFRWSkuYthssexvurAT97FEtX4yl6Ew==@lists.infradead.org
X-Gm-Message-State: AFuF++lNBxsZcfl05G56skWhugJ2DoLO5xrmfXsfKA6tWlh08wHiXQDP
	4UiGQtXCSQ66iFPDkzb1g63rKDY1T+T5t5ZPbJDNDV1DncNvXkzTVD/HxBY3eY7n0pAHYTKB50G
	poXoZ5MGMx+L7F5KrToXqxdihOqqi+7s=
X-Gm-Gg: AYBFou2aeC0REOKSveVN8ZwEXk1HgOTpG+6LVhGtXZzkj1lOmJY0TD7yN0oTXwJVYg0
	MfkHVBClJ2kdi7jhB109blfzGskCRuFgFQfPxI/3L3oo2KxyQ+/tC8VhEavAgKbf4+lKBZJJ5Hh
	mQ58DDLYiR9jLUfc6Ah6Y6+FncCOjEB9rZmG5K+iQVvEX8aNoguVkpA2nuPX329YwjjRG0VcIuW
	5rpxLWqIsezZisajdiPFz3S/8kORYgiOvwr1bohFdR9LFh9+i4Bj30ySz6/2y1aaHyV2El4P13r
	jWy6TTv7+KnDr/cyh6JZJ3sDhOaLDTtZwwu9ZRnuigTqCj9KIUxnuo72SOv8cQQ=
X-Received: by 2002:a17:907:c71b:b0:c20:af9d:4533 with SMTP id
 a640c23a62f3a-c25d560c603mr627292366b.19.1788424699559; Thu, 03 Sep 2026
 01:38:19 -0700 (PDT)
MIME-Version: 1.0
References: <20260901150111.141037-1-coiaprant@gmail.com> <20260901150111.141037-9-coiaprant@gmail.com>
 <f07c64b4-3018-4e9d-8aea-12454f132419@bootlin.com>
In-Reply-To: <f07c64b4-3018-4e9d-8aea-12454f132419@bootlin.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 3 Sep 2026 16:38:08 +0800
X-Gm-Features: AcwNN1VhuHjbmY1CA9bSBTxLCt2mOIIUXarfDkLXAsSy1buatA_CYmYfdE_lEPs
Message-ID: <CALj3r0hxSOrtRwOmAQ4Vw=nEkTfA+x93KzpAdG9m=xWFYbOuTw@mail.gmail.com>
Subject: Re: [PATCH net-next v3 08/10] net: stmmac: dwmac-rk: add SGMII
 support for RK3568
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
X-CRM114-CacheID: sfid-20260903_093824_082339_F2C93A91 
X-CRM114-Status: GOOD (  29.33  )
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
5bm0OeaciDPml6Xlkajlm5sgMTY6MzTlhpnpgZPvvJoKPgo+IEhpCj4KPiBPbiA5LzEvMjYgMTc6
MDEsIENvaWEgUHJhbnQgd3JvdGU6Cj4gPiBUaGUgUkszNTY4IFNvQyBpbnRlZ3JhdGVzIGEgU3lu
b3BzeXMgRGVzaWduV2FyZSBYUENTIHRoYXQgY2FuIGJlCj4gPiBjb25uZWN0ZWQgdG8gR01BQzAg
b3IgR01BQzEgaW4gU0dNSUkgbW9kZS4gIEFkZCB0aGUgbmVjZXNzYXJ5IGdsdWUKPiA+IGxvZ2lj
IHRvIHN1cHBvcnQgdGhpcyBjb25maWd1cmF0aW9uLgo+ID4KPiA+IFRoZSBjdXJyZW50IGR3bWFj
LXJrIGRyaXZlciBkb2VzIG5vdCBzdXBwb3J0IFNHTUlJIG1vZGUuICBTR01JSQo+ID4gcmVxdWly
ZXMgYSBQQ1MgdG8gaGFuZGxlIGF1dG8tbmVnb3RpYXRpb24gYW5kIGxpbmsgc3RhdGUgcmVwb3J0
aW5nLAo+ID4gYnV0IHRoZSBleGlzdGluZyBkcml2ZXIgb25seSBzdXBwb3J0cyBSR01JSSBhbmQg
Uk1JSS4KPiA+Cj4gPiBBZGQgYSBzZXRfdG9fc2dtaWkoKSBjYWxsYmFjayB0byBjb25maWd1cmUg
dGhlIEdNQUMgR1JGIHJlZ2lzdGVyIGZvcgo+ID4gU0dNSUkgbW9kZSAoYml0IDcgc2V0LCBpbnRl
cmZhY2Ugc2VsZWN0aW9uIGJpdHMgNDo2IGNsZWFyZWQpLiAgQWxzbwo+ID4gYWRkIGEgc3VwcG9y
dHNfc2dtaWkgZmxhZyB0byBpbmRpY2F0ZSBTR01JSSBjYXBhYmlsaXR5Lgo+ID4KPiA+IFByb3Zp
ZGUgcGNzX2luaXQvcGNzX2V4aXQgY2FsbGJhY2tzIHRvIGNyZWF0ZS9kZXN0cm95IHRoZSBYUENT
IHZpYQo+ID4geHBjc19ya19jcmVhdGUoKSBmcm9tIHRoZSBSb2NrY2hpcCBYUENTIHBsYXRmb3Jt
IGRyaXZlciwgYW5kIGEKPiA+IHNlbGVjdF9wY3MgY2FsbGJhY2sgdG8gcmV0dXJuIHRoZSBYUENT
IHRvIHBoeWxpbmsuCj4gPgo+ID4gV2hpbGUgYXQgaXQsIGZpeCB0aGUgY2xvY2sgZW5hYmxlIG9y
ZGVyaW5nIGluIHJrX2dtYWNfcG93ZXJ1cCgpOgo+ID4gZ21hY19jbGtfZW5hYmxlKCkgaXMgbm93
IGNhbGxlZCBiZWZvcmUgYW55IHJlZ2lzdGVyIGFjY2VzcywgaW5jbHVkaW5nCj4gPiB0aGUgU0dN
SUkgbW9kZSBzZXR1cCBwYXRoLiAgUHJldmlvdXNseSBTR01JSSBtb2RlIHdvdWxkIGJ5cGFzcyB0
aGUKPiA+IGNsb2NrIGVuYWJsZSB2aWEgYSBnb3RvLCB3aGljaCBjb3VsZCBjYXVzZSBzeW5jaHJv
bm91cyBleHRlcm5hbCBhYm9ydAo+ID4gd2hlbiBhY2Nlc3NpbmcgTUFDIHJlZ2lzdGVycyB3aXRo
IHRoZSBjbG9jayBkb21haW4gZGlzYWJsZWQuCj4gPgo+ID4gQWxzbyBjbGVhbiB1cCB0aGUgZXJy
b3IgaGFuZGxpbmcgaW4gcmtfZ21hY19wb3dlcnVwKCkgYnkgdXNpbmcgYQo+ID4gdW5pZmllZCBj
bGtfZGlzYWJsZSBsYWJlbCwgYW5kIGFkZCBlcnJvciBoYW5kbGluZyBmb3IgdGhlIGRlZmF1bHQK
PiA+ICh1bmhhbmRsZWQgaW50ZXJmYWNlKSBjYXNlLgo+ID4KPiA+IFNHTUlJIEluLWJhbmQgdnMg
T3V0LW9mLWJhbmQKPiA+ID09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiA+IE9uIFJLMzU2
OCwgdGhlIE1BQyBjbG9jayBpcyBmaXhlZCBhdCAxMjUgTUh6IGFuZCBjYW5ub3QgYmUgZHluYW1p
Y2FsbHkKPiA+IGNoYW5nZWQgYnkgdGhlIHN0bW1hYyBjb3JlJ3Mgc2V0X2Nsa190eF9yYXRlIGNh
bGxiYWNrLiAgSW4tYmFuZCBtb2RlCj4gPiB3b3JrcyBiZWNhdXNlIHRoZSBQQ1MgaGFuZGxlcyBy
YXRlIGFkYXB0YXRpb24gaW50ZXJuYWxseS4gIE91dC1vZi1iYW5kCj4gPiBtb2RlIGRvZXMgbm90
IHdvcmsgYmVjYXVzZSB0aGUgTUFDIHdvdWxkIG5lZWQgdG8gY2hhbmdlIHRoZSBjbG9jayByYXRl
Cj4gPiB0byAxMjUvMTIuNS8xLjI1IE1IeiBmb3IgMTAwMC8xMDAvMTAgTWJwcyByZXNwZWN0aXZl
bHksIGFuZCB0aGUgY2xvY2sKPiA+IGlzIGZpeGVkLgo+ID4KPiA+IEVuYWJsZSBkZWZhdWx0X2Fu
X2luYmFuZCBmb3IgU0dNSUkgYW5kIGRpc2FibGUgdGhlIGdlbmVyaWMgc3RtbWFjCj4gPiBzZXRf
Y2xrX3R4X3JhdGUgY2FsbGJhY2suICBUaGlzIGZvcmNlcyBwaHlsaW5rIHRvIHVzZSBpbi1iYW5k
IG1vZGUsCj4gPiB3aGVyZSB0aGUgUENTIGlzIHJlc3BvbnNpYmxlIGZvciBzcGVlZC9kdXBsZXgg
bmVnb3RpYXRpb24uICBXaXRob3V0Cj4gPiB0aGlzLCB0aGUgc3RtbWFjIGNvcmUgd291bGQgYXR0
ZW1wdCB0byBjaGFuZ2UgdGhlIGNsb2NrIHJhdGUgb24gc3BlZWQKPiA+IGNoYW5nZXMsIGNhdXNp
bmcgVFggdG8gd29yayBidXQgUlggdG8gZmFpbC4KPiA+Cj4gPiBMaW5rOiBodHRwczovL2RsLnJh
ZHhhLmNvbS9yb2NrMy9kb2NzL2h3L2RhdGFzaGVldC9Sb2NrY2hpcCUyMFJLMzU2OCUyMFRSTSUy
MFBhcnQxJTIwVjEuMS0yMDIxMDMwMS5wZGYgKFBhZ2UgMzg2KQo+ID4gU2lnbmVkLW9mZi1ieTog
Q29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4KPgo+IFsuLi5dCj4KPiA+ICtzdGF0aWMg
aW50IHJrX3Bjc19pbml0KHN0cnVjdCBzdG1tYWNfcHJpdiAqcHJpdikKPiA+ICt7Cj4gPiArICAg
ICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gcHJpdi0+ZGV2aWNlLT5vZl9ub2RlOwo+ID4gKyAg
ICAgc3RydWN0IGRldmljZV9ub2RlICpwY3Nfbm9kZTsKPiA+ICsgICAgIHN0cnVjdCBkd194cGNz
ICp4cGNzOwo+ID4gKwo+ID4gKyAgICAgcGNzX25vZGUgPSBvZl9wYXJzZV9waGFuZGxlKG5wLCAi
cGNzLWhhbmRsZSIsIDApOwo+ID4gKyAgICAgaWYgKCFwY3Nfbm9kZSkKPiA+ICsgICAgICAgICAg
ICAgcmV0dXJuIC1FTk9ERVY7Cj4KPiBIZXJlIGFzd2VsbCB5b3UgbWFrZSBpdCBtYW5kYXRvcnkg
dG8gaGF2ZSBhIFBDUywgYXMgdGhlIGdlbmVyaWMgcGNzIGxvZ2ljCj4gaW50cm9kdWNlZCBpbiBw
YXRjaCAxIGRvZXNuJ3QgaGFuZGxlIC1FTk9ERVYsIGl0IHRyZWF0cyBpdCBhcyBhbnkgb3RoZXIK
PiBlcnJvci4KPgo+IFNvLCBlaXRoZXIgeW91IHJldHVybiAwIHdoZW4gdGhlcmUncyBubyBQQ1Mg
KHNvIHRoYXQgd2UgZG9uJ3QgYnJlYWsgcGxhdGZvcm1zCj4gdGhhdCBkb24ndCBoYXZlIG9uZSks
IG9yIHlvdSBoYW5kbGUgLUVOT0RFViBncmFjZWZ1bGx5IGluIHBhdGNoIDEuCj4KPiBNYXhpbWUK
PgoKSGksCgpDdXJyZW50bHksIGBya19wY3NfaW5pdGAgaXMgY2FsbGVkIG9ubHkgZm9yIFNHTUlJ
LCB3aGljaCByZXF1aXJlcyBhIFBDUy4KCkFzIGl0IHN0YW5kcywgb25seSB0aGUgUkszNTY4IHN1
cHBvcnRzIFNHTUlJLCBzbyB3ZSB3b24ndCBicmVhayBhbnl0aGluZyBoZXJlLgoKQmVzdCwKQ29p
YQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
