Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 485B7C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Mar 2022 00:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/88phZbte2oPRhQDW/ottllXc4OmufByKzo2l+KWiY=; b=QYOEwtRdpA4poY
	rm30+jXQ3/spuUP1jsjp6z0AA54oK7jmZlw5ZRExqX+vxDnXIBnGfaqR0BBw38W1u1UyAYQEFSJap
	Iz6JxuwNK9viSybHsIwUV7nzCnIqtYszgFqCNs577ts0mV/wrj8YB1jQOn7ikKqz4RQ3UOeIjgTgS
	DGPB55x3LE23Ckj7JeokrNdXf65Nknw6NaPhv9fSy3Y7hZbnAbFJuis/ktTaWJ8GoHyiC85/SyeiO
	NadBXJbEivCix0+jmDzjfufuEWYki6GB2/69/8+nmFyzHd/8BMzq90r5LZMVLTbXDpoiGrCmodbL7
	lHFTdJdA1UKOMTGvOk3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOqAD-00ETSJ-2o; Tue, 01 Mar 2022 00:14:49 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOqAA-00ETRw-Rn
 for linux-rockchip@lists.infradead.org; Tue, 01 Mar 2022 00:14:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jHhhXdYvdwbERT2LG1xSfD5WhTW4Le242Y9B4XkNvMc=; b=xIYZtIP3LfKmvTwJ7lKDXdJQP+
 NYarX7erluU6lSzaEJcwjUB8EN7FPIof6PZMXiXJVMLFyhp0vAefyVs4PGTMrPdvdEfADEn8DUS0/
 H2/achkGrugQ5zEHuYtyHtOU2BirkHOeDeAb5/TiRlupuCZNqzCqWFTke/f5ThdxBvSY7Ft+cttGL
 WJvRt5U/IkfhtS2sYkiAbheh/I1IHI41vCWUtjSzMYHAqIsMSyKZXCDNxjEW4Y18myxSh6tuqvwJn
 13Wfi8YU6LSnM656UJ08SW2oW/VJyxI1bSOdx7Ccr5p64+etsBcJM3CGFJTYqmMmqI1fOKKIIrwzI
 rpHdhpLA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57568)
 by pandora.armlinux.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <linux@armlinux.org.uk>)
 id 1nOqA4-0000aE-Ev; Tue, 01 Mar 2022 00:14:40 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1nOqA2-0006cU-H3; Tue, 01 Mar 2022 00:14:38 +0000
Date: Tue, 1 Mar 2022 00:14:38 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 linux-rockchip@lists.infradead.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] net: phy: fix motorcomm module automatic loading
Message-ID: <Yh1lboz7VDiuYuZV@shell.armlinux.org.uk>
References: <20220228233057.1140817-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228233057.1140817-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_161446_925154_50206E37 
X-CRM114-Status: GOOD (  10.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Mon, Feb 28, 2022 at 06:30:57PM -0500, Peter Geis wrote:
> The sentinel compatible entry whitespace causes automatic module loading
> to fail with certain userspace utilities. Fix this by removing the
> whitespace and sentinel comment, which is unnecessary.

Umm. How does it fail?

>  static const struct mdio_device_id __maybe_unused motorcomm_tbl[] = {
>  	{ PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
> -	{ /* sentinal */ }
> +	{}

These two should be 100% identical in terms of the object code produced,
and thus should have no bearing on the ability for the module to be
loaded.

Have you investigated the differences in the produced object code?
If not, please do so, and describe what they were. Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
