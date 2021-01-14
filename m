Return-Path: <SRS0=rUAS=GR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3F06C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 03:39:16 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9822923787
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jan 2021 03:39:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9822923787
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kDAtojm6gGQnUFwK5a7eRZ6CHAoEnKm9Yfz4OHx45gg=; b=NCAXTiUVMX5ndKNgipUf3Rw+w
	MrHaCLkDR2FY0pf9wZZ0kxN+9i2Qo5ktr0ox1TiJh2DmObnDgyh6kxZ+jqHHpdddV2WKNLJe93P+2
	Kse2ZPqeh2bpgeo9OlxunTXQM4dtWks8skNNLzgoESzVxk1v1BKgPimR8LREbzafLL/RmFLKuIWEt
	ShDai9n7o4nwSivQBM6OGnvHyRrdr/xyEumxDsEOPSCBAUyav6CCir1Llwc/yyE86F+yyOeGDW+wy
	nglQHCy3uhJ1SrhNU2tZ1gPwUdGHVJooa7ZvtTQRin9yBiGMcZU1ItmrgQEl7maeeeA6L3d9lBCrx
	Y4sT/FD9g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kztTZ-0006gq-S5; Thu, 14 Jan 2021 03:39:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kztTU-0006fn-Px; Thu, 14 Jan 2021 03:39:05 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A793E23719;
 Thu, 14 Jan 2021 03:39:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610595543;
 bh=uZR4mGwmgbLda6MnfOZFuaM1lXpb5wXv+VHdTxpquRw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OzOWegX7KoHfUpfLjt5zRUuTHoHxSscpaPpz6fVZpJvZNN2e0JaqpHvQIyB3D1ILy
 A8RHCn5wQaEW0Ykb7MTKyRFkU8BDUrWzyFothqW8pzTn4LbojM+dr3gE1Ajjm1JqtF
 ycPTlxqtvQgI21CTTj5XRuAkU7zRJHR8HP2tZZZdZCOvynNZxidviXTgHmXw5w9Ctn
 V0O6d4Ak+drP856WxuHhvd7N2Qp5aEdViyssUcmdBa7JOD5XKu9x/2CkoEE5QXPiyJ
 gSKdBX9khfqLo2d1ecNEZ3DPzWItdXscKmjrwS+MiCMdw17VYChKzBc8g1Rwjc6elR
 /8aLVNW9rb92A==
Date: Wed, 13 Jan 2021 19:39:00 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v1 1/1] time64.h: Consolidated PSEC_PER_SEC definition
Message-ID: <20210113193900.69b69a7c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20210112153709.1074-1-andriy.shevchenko@linux.intel.com>
References: <20210112153709.1074-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210113_223904_925724_9B3C5399 
X-CRM114-Status: GOOD (  11.56  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Vinod Koul <vkoul@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-iio <linux-iio@vger.kernel.org>,
 Vladimir Oltean <vladimir.oltean@nxp.com>, Yangbo Lu <yangbo.lu@nxp.com>,
 linux-kernel@vger.kernel.org, UNGLinuxDriver@microchip.com,
 linux-rockchip@lists.infradead.org, Claudiu Manoil <claudiu.manoil@nxp.com>,
 Andy Lutomirski <luto@kernel.org>, netdev@vger.kernel.org,
 Gwendal Grignou <gwendal@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, "David S.
 Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 12 Jan 2021 17:37:09 +0200 Andy Shevchenko wrote:
> We have currently three users of the PSEC_PER_SEC each of them defining it
> individually. Instead, move it to time64.h to be available for everyone.
> 
> There is a new user coming with the same constant in use. It will also
> make its life easier.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Which tree will you send the new user to? I'm not sure who you're
expecting to take this patch :S

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
