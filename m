Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62B92C4450E
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 16:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fY9tiGigucVq/IMYZw0HaZXfO6l/KJKfhC/KeS6a7mg=; b=OHONGsIlJBBRoO
	b+BrcBv7EjaTSyviAaYians8JmKxvZ8nVPSykggnwsfR/II1/P3e343HhIeEXZpIdJSGrzBADvghB
	14LK/jO+Kor+9QGsW8hIvp+QQEr6fhptiDB7nUQpm1xqrXnOQWYqW/tWzkVxpPI2Cp+x2/EW10Zua
	wfAn4KGEx+93akF60cwjZ91dXk0MWQ+QuNwjbCGEo0ezGu9eJK6pcb714aLDclOYnqZywBPXTzgYY
	J010R8mS4NLiUIJR6xVc42Dlnj3DgXQIQvSuJIC1AZMwxa/P03rDrqubbfr6I2+ewFtxQPghpCXju
	5YjfmXRyeZoAx9Ge02zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk2Ad-0000000FPff-1Hq5;
	Wed, 15 Jul 2026 16:09:15 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk2Ab-0000000FPe3-15Q2;
	Wed, 15 Jul 2026 16:09:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=T7qi0wjqw+T24Xr8wpK4TVGLaBhYNi0U20FSDe/v/ig=; b=vO3cm7v27gbIX2NkA8hpCjAP7e
	pxKwIkxWJO9cj6JatLoo1VS7q/2JBz1/WHrKVzJKM9BK5dq5AEXP+HU8LtDLpoYVX1Mq9jI6xuN4u
	G3JlaHoEkW71eb6GTZwh6/2Tr5gUXXo5ahYVWeE7ls2PwtkGzGKnArVqtVo+XRlyxEyw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wk2AQ-00CNlk-VJ; Wed, 15 Jul 2026 18:09:02 +0200
Date: Wed, 15 Jul 2026 18:09:02 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, kuba@kernel.org,
	davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
	andrew+netdev@lunn.ch, robh@kernel.org, krzk+dt@kernel.org,
	heiko@sntech.de, netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	Christian Marangi <ansuelsmth@gmail.com>
Subject: Re: [RFC PATCH 01/10] net: stmmac: move XPCS lifetime management to
 platform drivers
Message-ID: <685d91a3-be6f-42c6-9e23-07629e21bcee@lunn.ch>
References: <20260714191341.690906-1-coiaprant@gmail.com>
 <20260714191341.690906-2-coiaprant@gmail.com>
 <dc21b2fc-ae11-4fde-a5b9-09e2c6bee5c9@bootlin.com>
 <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALj3r0gWyfHHp0S4=71M1-TjgHKcgGax4Lr0DzPi37Q69-iCwA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_090913_310881_B0DEE08F 
X-CRM114-Status: UNSURE (   6.16  )
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

> I actually spent all night debugging call traces caused by the current
> stmmac PCS lifetime management, and it was not a pleasant experience.
> The code feels like accumulated technical debt that should be cleaned
> up.

Russell King will strongly agree with you, if he was around. The
phylink integration into stmmac causes a lot of pain, and he wanted to
rip it all out and start again. But doing that without breaking stuff
is going to be interesting.

If you feel up to it, have a go. But take a good look around first,
make sure you understand the different variant, internal vs external
PCS.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
