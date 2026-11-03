Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4E6606D82B
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 13:09:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yaDouR7m;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=v+/GviCh
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=dStaY4xOHk0Uz+ftmHOmVohar/UZx0pPLhl4IIcoKB8=; b=yaDouR7m/WPNxv2qbYyfpGIsku
	cBDlxDPQrTYwiEdUMsqCFptsm89Ky7khlcz+fiYz2YdgDsWhmB0uePhplJHzzP6sfkWBTeCMGjsMg
	1lNpzqAOtgcEhbSQva7vMuPQS5DKG8apHuOu7Ve54XveSX4lXGLQoSOIoo5yh2EAn5ZRpbTIllaza
	w85hiywdEcM8SiDyAzK9tD21m1O4JFRMIKbQhtzJprzFWbZ8SRzpiANK8+NrzUZFkyY4qEZSstqKz
	JGR7C2XeE8iqUp3XFytfqtDSQu7OS0EwC7A3MJIJMLJcQg1+kBMP6o6EoXMcustHMx9hfMvMqyLGK
	sJD37yZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOEGT-00000002Uxo-2IKk;
	Tue, 03 Nov 2026 13:09:25 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOEGQ-00000002UxF-3Mhi
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 13:09:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=yZpf1H/k4whOqY1BVAHAnVNVl1rw8m1xEANoC6I5NO8=; b=v+/GviChsC3nfnI/bGjE3OJRB/
	cuzwpZpEQEv8eCzynRfAm0aIjtEtxa+n8wb3qtQE6fnyXNjmXXQrwk5csDwQTTwAqBQ40X6dij1xY
	/Sq9uEWlvC65HITtW4gqx5E5fbCFKCyZwwXeP/Q3JV5bfasObqYNAgewI1HnGOOcq4Gs=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xOEGD-00E3QR-No; Tue, 03 Nov 2026 14:09:09 +0100
Date: Tue, 3 Nov 2026 14:09:09 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH net] net: pcs: xpcs-rk: limit advertised interfaces
Message-ID: <f554dcc0-14ea-4721-9517-dc0337c47426@lunn.ch>
References: <20261029094916.3127193-2-coiaprant@gmail.com>
 <c5fc86f9-3c43-4aee-8d88-92e8f88c6d5d@bootlin.com>
 <1B8D463D-1295-4BF0-972D-859C342E49F5@gmail.com>
 <48cb8a9d-622f-497c-a13e-bc679c764ce0@lunn.ch>
 <27E466B0-72FD-47BA-B952-68BF4A817A04@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27E466B0-72FD-47BA-B952-68BF4A817A04@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_050922_841888_4A660219 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
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

> >Are there any registers which describe how the PCS was configured at
> >syntheses time?
> >
> >	Andrew
> 
> Hi Andrew,
> 
> Yes, looking at the `xpcs_identity` code, the core does probe different
> MMDs to get the rough type: PMA/PMD MMD for C73 and VEND2 MMD for C37.
> 
> However, even if we determine it's a C37 or C73 block, that only gives
> us the rough family, not the exact feature set.

You might want to try reaching out to Synopsys. There are sometimes
feature bits in VEND1/2 which list the exact configuration
synthesised.  And since it is a core part of the licensed IP, it
should be safe to trust it, independent of the platform it has been
integrated into.

      Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
