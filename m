Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09DADC4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 00:08:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qhd4A5Z/eQxPZF7KhcvqJxM//RKBgf+WVshMAXEgMc=; b=Vi0O8KCfPTwTKf
	LNUPFKLugvvg2MDrLcaxDENdyBjxZu827OdTfGKKRccX0pCnePyKTOGgKzzRdRbMH/Rf+dY7ZxRs9
	VQ9JuZPm3zxnqtscEri7/XcuRXzBe8OZVC18kR0JSje2uOE31PVWhuI8mJhv39DhJ/Xi3JIyfjS86
	epfdnFCb8HO5bd4kNPW42JsaogqN6OHUfR0BP7S5+I3zueFkSrt7h2Bwlx0jgkgMPqqu/Lq28jtUd
	5Gc3DwhcM9ijtx1Rutv3ittG1c42OEq3TJXVoZoi+7+HmHMbeQ875XuknvTjtYIfLre2lpjo2k8vQ
	rUycbP4IL7xDpuqpQbxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzQBR-00000001vaF-0mCT;
	Wed, 24 Apr 2024 00:08:21 +0000
Received: from fgw22-7.mail.saunalahti.fi ([62.142.5.83])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzQBN-00000001vX1-2Ji7
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Apr 2024 00:08:19 +0000
Received: from localhost (88-113-25-208.elisa-laajakaista.fi [88.113.25.208])
	by fgw21.mail.saunalahti.fi (Halon) with ESMTP
	id bedb557c-01ce-11ef-abf4-005056bdd08f;
	Wed, 24 Apr 2024 03:08:15 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 24 Apr 2024 03:08:14 +0300
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH 00/18] i2c: remove printout on handled timeouts
Message-ID: <ZihNbtiVDkxgUDGk@surfacebook.localdomain>
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240423_170817_773430_09B3F9B3 
X-CRM114-Status: UNSURE (   7.37  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Wed, Apr 10, 2024 at 01:24:14PM +0200, Wolfram Sang kirjoitti:
> While working on another cleanup series, I stumbled over the fact that
> some drivers print an error on I2C or SMBus related timeouts. This is
> wrong because it may be an expected state. The client driver on top
> knows this, so let's keep error handling on this level and remove the
> prinouts from controller drivers.
> =

> Looking forward to comments,

I do not see an equivalent change in I=B2C core.

IIRC in our case (DW or i801 or iSMT) we often have this message as the only
one that points to the issues (on non-debug level), it will be much harder =
to
debug for our customers with this going away.

-- =

With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
