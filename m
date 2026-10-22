Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99D67606A319
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Oct 2026 16:58:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hxF84waY;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=EVo7b4Bz;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=DZ9qUTSe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cJ6pB+ZzR0W/DNBeFZTQq70ZzAcSiFhge+FPv55Hl14=; b=hxF84waYy9A+Um2NFkfZBTQD5G
	hwTC35xVeUn7TRoB0OymQJpjCLLcJoH9nTfRcUhoVb3V4F1Gs9MiftfehmdTbDzlKR3AszybHzipx
	MT+/Y2ljnNlZkgMMB41yVr7UZiUIx/YcgJUpa24Ijfdw0Tr1MVro4CVHQFmbQ34fyIeZvYG0qx+Tg
	EHomUjt4ufq1VOytDCVvex1tEArqWLjOYOyhcxIW3qZOzLttYIgi4R1bqGUamFKzbf8F2l7ZzjDqm
	4npATdcZBAJgtG9L6A4Hz59M2DcN6I6nS+gtnBaB46cYV5SkEXVuXBiM9MrOu54Yrv7AR5y0zzUuq
	MVTAhD7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJw7a-0000000EYH2-3QBp;
	Thu, 22 Oct 2026 16:58:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJw7Y-0000000EYGl-40sP;
	Thu, 22 Oct 2026 16:58:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=lW8Xt0YJtAlPG22lX4O67YHeXeu7KYiXU4EfIgJSL9o=; b=EVo7b4BzS92khx6er0YSKgy/Wd
	RhsghLfjTyGwBY2u9HlooR7RvQKo9f4V+E+p8sZEoFAghwyBczkeYv00xmvi4DkYVD0r6nqKvQmPN
	TY5QZiOlC6q1bXrkq9dI89yp/9JT3JOTL5O7vWTmmoPctArA0+gt7Bzm/YkefDNIkEfjRa3AgtRQt
	5CIariTUKfhk8u8CmUXbsvhJd66e8ZabKT3EOYO1BL7ov1zaR2Qk1Ql6sZkLeS+zvat3adj8DgAYd
	ZZsF4qZ2E2Us28E5LJpBJWBanF1nGBZSgFfy6laScHOHtWrx8JHRbi0+Tm++XSGinGA1sgy02kF4R
	tf32ueZQ==;
Received: from vps0.lunn.ch ([156.67.10.101])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJw7W-00000007Zju-0Rf7;
	Thu, 22 Oct 2026 16:58:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=lW8Xt0YJtAlPG22lX4O67YHeXeu7KYiXU4EfIgJSL9o=; b=DZ9qUTSeEEseQv/aDXthShbwS2
	DxN0zVjdwjrHbfGwSEJfQmo0ulGFDy4tea/8sHwWaYw5HssITuNYq8q9EcgbKc2eH4Fq/dFKXOtYz
	9QSp+ueNkHrySluyEuw2POGQuJpyOEjGv+jJH+yEL0XJtSKpigzet+6JJ4PGaTmdtghk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xJw7K-00CIVE-Az; Thu, 22 Oct 2026 18:58:14 +0200
Date: Thu, 22 Oct 2026 18:58:14 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 3/3] arm64: dts: rockchip: rk3568-photonicat: enable
 SGMII LAN port
Message-ID: <e7f68299-1c0d-4b0f-948b-4835086c0df8@lunn.ch>
References: <20261022025844.150320-1-coiaprant@gmail.com>
 <20261022025844.150320-4-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261022025844.150320-4-coiaprant@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_175826_262435_E8FE7701 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> +	sgmii_phy: ethernet-phy@3 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x3>;
> +		max-speed = <1000>;

Pointless. SGMII cannot do faster, so there is no need to limit it.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
