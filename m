Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE68606A327
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 15:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bRcaWNJ6;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256 header.s=20171124 header.b=II0cW/A5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=a3dsW9sBpz2pZZxBHCSVfFDW9oKLyT/bOySpaUcjsFY=; b=bRcaWNJ6WsM+omUUavk/NF86gW
	MOF10j8i22bjq35vbG2+I8kpq/Bq+0cRgzO9TTfzySDp1AYgm8RF7dovp9CrzrHHt5laOJyNuQIgE
	+HC5sLEwzxTnCcrlljSQO0fhm2/zfEKpsUhOQ23aAnTmpvj1IgYA3CyPyHHwSHNO+BfEd3lL33bOh
	HoKpnSEsYgVkqaXCH8pZKXwzF283+qsh474q6KFRQu+lY0coxDrUgdIewquS3dAw1i1zT4akTyJoW
	s6wTAcKY4ssgr/KJtOhLFzpDTEQP7fNIlnvTOUF3SndZcnY6JhSjMjUZkZ6MDNxQ2vW+Bv9aehHJX
	I9wZ383A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVVhJ-00000003v2B-2pzs;
	Mon, 23 Nov 2026 15:11:13 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVVhG-00000003v0Q-28Vy
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 15:11:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=4D/pNtTn3K7Pquh1FRZ6xItg3AzYP2AHx7ViO6lbqj4=; b=II0cW/A5ihPuXaD7WA7mipn6T/
	xYDcBLLJE+qyZIyyKdzZ10WL6PEM+MlE4xPnVdtqtmRw3ST3tVFi4ZT/2CK6vla5b1eGq+ulqNhai
	4dP7JCI7qmO8nLZv8eC1ZwdG1sKLsxGXn2ftK8CJZOKYafP4nYhlmIlxEYVqp9eUh84w=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xVVh6-000ofw-1z; Mon, 23 Nov 2026 16:11:00 +0100
Date: Mon, 23 Nov 2026 16:11:00 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Coia Prant <coiaprant@gmail.com>
Cc: netdev@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH net-next] net: pcs: xpcs-rk: use cleanup.h for
 platform_device reference
Message-ID: <814be8ca-6fe4-401a-af4e-206f1b67be74@lunn.ch>
References: <20261123123052.578956-2-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261123123052.578956-2-coiaprant@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_071110_555538_55EEAFFD 
X-CRM114-Status: UNSURE (   8.85  )
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, Nov 23, 2026 at 08:30:53PM +0800, Coia Prant wrote:
> Use the __free(platform_device_put) cleanup action to manage the
> platform_device reference obtained from of_find_device_by_node().
> 
> This removes the need for explicit put_device() calls on every failure
> path and at the end of the successful path, simplifying the function
> and reducing the chance of reference leaks or double puts.
> 
> Signed-off-by: Coia Prant <coiaprant@gmail.com>

https://www.kernel.org/doc/html/latest/process/maintainer-netdev.html

Low level cleanup constructs (such as __free()) can be used when
building APIs and helpers, especially scoped iterators. However,
direct use of __free() within networking core and drivers is
discouraged.

    Andrew

---
pw-bot: cr

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
