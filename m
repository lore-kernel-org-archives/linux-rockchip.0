Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E2B1C55174
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 12:38:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoQ+dWBpEAbjIfSAhWE1KvVLMmAU+yh9hubOyYrvStY=; b=qC+HsGJKcgXfD9
	hjBSmMICS7S32YTVP5sgXZihQSgs271MZ6AKBLy4HPKoRnqVEqXd1DT2Ow4eIpUr1M3hJJFKnj0Ph
	NSR+SeYpxFOSHabJ9XkGonHJfhPcxklsB2eGvp8eXSdWo1OhzRXqnNBkCNoEgevImR3W/XSJJRKDc
	RWMXz9aLmWheYtqUb/FR9B6HYH6+cgPih4cz99hlDranQBL/+90/9yRpoBMyxG6bnPZYuM2ieG+O6
	R9ZqawFLbOAtX9Tfu8TODBkBMLVghsPoqsne6tG8hjni3WcO6+k0OPprEiTUFRCZa2NKQSY77SAnN
	qPWQ2evIxWi+hV2oDCCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrasu-00000003vqi-1gBm;
	Wed, 05 Aug 2026 12:38:12 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrasr-00000003vqG-2A7j;
	Wed, 05 Aug 2026 12:38:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=MIMQJmkPDn3nvMi1GhZGX+SdavJhQT13XOPhF8HYz0c=; b=dYIAdTdWn8at/e23MJphOglQxR
	Kaf+LEAJsIG6pOqiS75PLVNwqDFgUsd37/X2bssbkk/nAfGOax3+pLUKc+aMYew6ncwYZPWNrcXOR
	5MSyce9+rMW3ZQOweIsjJ2TNvhUi7NscaybzmC44+mpHVzMZarvt5t8RmmiT0uTeeKwg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wrash-00GAPS-HF; Wed, 05 Aug 2026 14:37:59 +0200
Date: Wed, 5 Aug 2026 14:37:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: James Hilliard <james.hilliard1@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	mfd@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH net-next v2 8/8] net: phy: add X-Powers AC200/AC300 EPHY
 driver
Message-ID: <30bab755-3356-4d4a-a939-8488aa487874@lunn.ch>
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
 <20260804-submit-acx00-of-dynamic-v1-v2-8-3eef49ff1d8c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260804-submit-acx00-of-dynamic-v1-v2-8-3eef49ff1d8c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_053809_555035_2D1B5095 
X-CRM114-Status: GOOD (  10.73  )
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

> +static int acx00_ephy_disable_eee(struct phy_device *phydev)
> +{
> +	int ret;
> +
> +	ret = phy_modify_paged(phydev, ACX00_PAGE_1,
> +			       ACX00_PAGE1_INTELLIGENT_EEE_CONTROL_REG,
> +			       ACX00_PAGE1_INTELLIGENT_EEE_ENABLE, 0);
> +	if (ret)
> +		return ret;
> +
> +	return phy_clear_bits_mmd(phydev, MDIO_MMD_AN, MDIO_AN_EEE_ADV,
> +				  MDIO_EEE_100TX);
> +}


> +
> +	/* Set the hardware default before phylib reads its EEE advertisement. */
> +	ret = acx00_ephy_disable_eee(phydev);
> +	if (ret)
> +		return dev_err_probe(dev, ret,
> +				     "failed to disable EEE\n");

If the PHY is capable of doing MAC based EEE, that should be the
default.

Why clear MDIO_AN_EEE_ADV? This does not stop the user from
re-enabling EEE for this link mode. phy_disable_eee_mode().

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
