Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39A7AC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 10:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=579ppcghwfXpsqTiW9/wlKe9zLqb5ISeAmBtLUMLfAM=; b=g9yBOnSGhMzd9/
	0XSy9FbPSQWpshNTC7hGygNBNG3Gq1FUNSmlnckGNqcCbqSRCB7jNCcHF5aw0PRUm6/dK7uUy3dJ1
	/NCJOw/borQFCIDuNswYr8V6R0bGNuZ0pfVWG2AZpch1/e1P/8PTz9kbZO/qn0Y/0/d8MPUoBuRc9
	bakoZTKuJ9Sgziho4hJPnY1Qi9gI9eMqByQ6bQtjglM2jyIOjXMQXNM/r4CMZ/tMw759xAyGyklIo
	JtP9mdIuV5fJfp/P7jUZ943F6IopOx2yw9mAG5nJyzkXnRrxni9PkERY291Ib8c2qVSJNTmDoS3MH
	SmzwV9dauTjWbyG/kj8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPMIG-002KMz-00; Wed, 02 Mar 2022 10:33:16 +0000
Received: from mail-yw1-x112f.google.com ([2607:f8b0:4864:20::112f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPMIC-002KLq-TQ; Wed, 02 Mar 2022 10:33:14 +0000
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-2dc242a79beso1489207b3.8; 
 Wed, 02 Mar 2022 02:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3UgdP2Dpp/ayPL7kDyX+opL+M19kkYSAxJLDHKMfOjo=;
 b=hgMHnafWoG7jhNO+4dBb8l3Xj0JRlTx7aC4SxY7F+BOKwgMy8u54J0jEjDFQ/zS9tr
 781mmzucZbg+phfSkFd9ySl7bdiWpmEK90ZMbm/HqtqGWlqPpaTtUDEfEcEPlBuR8wsK
 ZvdAp3O/Q0OeHND90mkw42O6HKMQblR7OzOhdcPGYQcFr1fdAl7vIG6NqgsNr+uJYoAA
 rHTsc52QEwB5qJD+5bu1FB0u7n5BSKP6H3gCNGE/L2eJjpqbxvk0HO0Cf3+ioNDf1XzG
 bATChf3BdOc3wtqWiZW9DuWAq/zDC9oJ/zj89BAYnou8MvFFARE+Vk5LghE3cvxrs0Qu
 TkJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3UgdP2Dpp/ayPL7kDyX+opL+M19kkYSAxJLDHKMfOjo=;
 b=U/IXiVvtJCc51V9szamuYnV3luXNGinZPED40K61T8ck1vnTHrZ5TDu/X1PJQ8Shfk
 beL4b/iGER7CV1l8a3R0+oQosqPiNhXFICVQaSQRJ0qsLjLsRkyCfOUqNMuCzJJ4o81C
 bDPH9mk6gcrKPl2rZhiTgZ5G4IlQQCV2aichC/6uzrDAuP4elWpJMVFTaDMmjS5U3jw5
 SssPMJUqUCm50Ph8qx9idG5jkOqP2eZeka97iJieLAx8Z4bzbsov4qiKuKnjHuu0sU9V
 x7T82BKmPyBZui+r0KJlRP2YxmyRtXoN0W75TtwkRL2x4zhr6kfzMYbkDGjLkt/jGvRa
 GrYw==
X-Gm-Message-State: AOAM532gwaM9BfBrNLF+mqHVhgLX9aoX6TrJNM9URG5O4towb1GHY0of
 IsHHQf4JX4nkr7vEvDNnYVxGfidLD6s2Qmw/rnE=
X-Google-Smtp-Source: ABdhPJw/fyplq0eveO/WZAJ9BKAE58Gzeab43u2IhFVd4Pz56JPXFmPNyZ6iFdCRjIel9aE29x2PRK0WUTlcWe1tgBY=
X-Received: by 2002:a81:4503:0:b0:2db:83ea:6914 with SMTP id
 s3-20020a814503000000b002db83ea6914mr13732773ywa.42.1646217191339; Wed, 02
 Mar 2022 02:33:11 -0800 (PST)
MIME-Version: 1.0
References: <CAK4VdL3-BEBzgVXTMejrAmDjOorvoGDBZ14UFrDrKxVEMD2Zjg@mail.gmail.com>
 <1jczjzt05k.fsf@starbuckisacylon.baylibre.com>
 <CAK4VdL2=1ibpzMRJ97m02AiGD7_sN++F3SCKn6MyKRZX_nhm=g@mail.gmail.com>
 <6b04d864-7642-3f0a-aac0-a3db84e541af@gmail.com>
In-Reply-To: <6b04d864-7642-3f0a-aac0-a3db84e541af@gmail.com>
From: Erico Nunes <nunes.erico@gmail.com>
Date: Wed, 2 Mar 2022 11:33:00 +0100
Message-ID: <CAK4VdL0gpz_55aYo6pt+8h14FHxaBmo5kNookzua9+0w+E4JcA@mail.gmail.com>
Subject: Re: net: stmmac: dwmac-meson8b: interface sometimes does not come up
 at boot
To: Heiner Kallweit <hkallweit1@gmail.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>,
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Neil Armstrong <narmstrong@baylibre.com>, linux-amlogic@lists.infradead.org, 
 netdev@vger.kernel.org, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-sunxi@lists.linux.dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_023312_970560_402024CC 
X-CRM114-Status: GOOD (  12.19  )
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

On Sat, Feb 26, 2022 at 2:53 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
> Just to rule out that the PHY may be involved:
> - Does the issue occur with internal and/or external PHY?

My target boards have the internal phy only. It is not possible for me
at the moment to test it with an external phy.

> - Issue still occurs in PHY polling mode? (disable PHY interrupt in dts)

Thanks for suggesting this. I did tests with this and it seems to be a
workaround.
With phy interrupt on recent kernels (around v5.17-rc3) I'm able to
reproduce the issue relatively easily over a batch of a hundred jobs.
With my tests with the phy in polling mode, I have not been able to
reproduce so far, even with several hundred jobs.

For completeness I also tested 46f69ded988d (from my initial analysis)
and setting the phy to polling mode there does not make a difference,
issue still reproduces. So it may have been a different bug. Though I
guess at this point we can disregard that and focus on the current
kernel.

I tried adding a few debugs and delays to the interrupt code path in
drivers/net/phy/meson-gxl.c but nothing gave me useful info so far.

Do you have more advice on how to proceed from here?

Thanks

Erico

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
