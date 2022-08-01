Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45A75C19F2A
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Aug 2022 13:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E82YLrSB6ktnNulzavuSFaLiKylKnNIB2P+5M3M4CF4=; b=iYNB4Sis4+otIG
	TxM4Z6kiTqm2kcjYD6JBpGt6QujP5Y1PdMmffPMkzM9uF4tkxbPb2FkWU8ZN9BXgT4aLncvZ7QaOi
	lXc1h5glQLbsjEmItCtMKpWB1yTzkAtbnEllMd1PEPr9uiwu767eX5z18Rim90AZulJYjjJvAB3B3
	TKH50VAuy783dTBrCdGORzuPhrlgog6Ua50y7b4HkBDifW3C9Hs7SUTd8JWY7AHz0i10JGowrkdCB
	YzrpG4pTNZJSJUyAfQ/rH5cJkSJ1vuKBFkPxNKazQqRY/NC2aetJ9r64t2HTxWbCsdEZKvxZQRcwa
	Co9ob5jVLnW6X7+DMXAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIVMZ-006eFe-Le; Mon, 01 Aug 2022 13:21:39 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIVMU-006eAb-34; Mon, 01 Aug 2022 13:21:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=JchUgS3AND2KrD9SW33lCa9oqse37xDjVqhvYqPDv8w=; b=VZGS96FkiA2dFNNR5oRLReILXo
	3ka1SyuXsMVClvL+9taxoPbqFEpys8dLBljrXyVIyn8XBr6ASe2DgIoK7K88SSNxFUfOZIfX+LMxi
	3yesJW1SDXAKDjwbPzK6x4ECLR1uBMK/2zgHVxHjghXUA9RYBt2faH6uUKa9/MT7BR4w=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1oIVMN-00C9nm-M8; Mon, 01 Aug 2022 15:21:27 +0200
Date: Mon, 1 Aug 2022 15:21:27 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Da Xue <da@lessconfused.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
	"linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: Meson GXL and Rockchip PHY based on same IP?
Message-ID: <YufTV0osXcH+IPZ6@lunn.ch>
References: <ca9560eb-af9c-3cfa-c35e-388e7e71aab7@gmail.com>
 <CAFBinCCMinq1U2Pqn2LPjC9c+HqfHjvW81b1ENMxdoGmB6byEw@mail.gmail.com>
 <88d6ef05-f77a-57a2-f34a-e3998a8d70d4@gmail.com>
 <CACdvmAgSvsYj6zorYDrBaEUvZzPi_c0XpVzx3fz8nHp8+TXMuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACdvmAgSvsYj6zorYDrBaEUvZzPi_c0XpVzx3fz8nHp8+TXMuQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_062134_177658_4F372FAB 
X-CRM114-Status: UNSURE (   4.38  )
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

> Per Jerome, both are OmniPHY IP.

NXP bought OmniPHY in 2018. So we should keep an eye on NXP PHY
drivers.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
