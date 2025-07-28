Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9BFDC87FCB
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jul 2025 19:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfvcEM0Hx2aBuuIIbWtTN6hRIUPqYi9U4eOYXAk3Qxo=; b=Pqwa05nK3SUwAU
	7EYRMMjYgnDrsKhfKsu6IMuk/ksLJsmlgRk4yUlQHEB+QUQ7g7lc1OO7BuyIHaL8YZ/sEs+onnTYV
	pDWUPDDqO/uF5Oy19oqTTEvrA/S0jly2GiY7SgVYznf3bk2CZzJDRpBCYUp8RNLWtUeyBVqfhS3By
	P/8/gmqhPVesDHxnI7v2JetIW7zw2GiRsy24HCWp7JUffkPmMvrmY3wOIUXo1yZ7L25ZY2uLpkQP4
	jkxojnYshIGiXLljBcKIasGwDw601OUMId4412DwtPLtLLv8cQiOAbpdJZyv/Fj09ASLiegBXoUHU
	Pq5mX0R8qEB5eBaeh1Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugTj6-0000000FIgf-0nW8;
	Mon, 28 Jul 2025 19:41:36 +0000
Received: from ded1.1wt.eu ([163.172.96.212] helo=1wt.eu)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugTBN-0000000FGJc-1dVF;
	Mon, 28 Jul 2025 19:06:47 +0000
Received: (from willy@localhost)
	by pcw.home.local (8.15.2/8.15.2/Submit) id 56SJ6b6E024585;
	Mon, 28 Jul 2025 21:06:37 +0200
Date: Mon, 28 Jul 2025 21:06:37 +0200
From: Willy Tarreau <w@1wt.eu>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] nvmem: rockchip-otp: Handle internal word_size in main
 reg_read op
Message-ID: <20250728190637.GB24527@1wt.eu>
References: <20250316191900.1858944-1-jonas@kwiboo.se>
 <3635379.iIbC2pHGDl@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3635379.iIbC2pHGDl@diego>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_120646_256628_F1306936 
X-CRM114-Status: GOOD (  16.17  )
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

On Tue, Apr 22, 2025 at 11:37:06AM +0200, Heiko St=FCbner wrote:
> Am Sonntag, 16. M=E4rz 2025, 20:18:58 Mitteleurop=E4ische Sommerzeit schr=
ieb Jonas Karlman:
> > Rockchip SoCs RK3576 and RK3588 read data from the OTP using 32-bit
> > words instead of normal 8-bit bytes. Similar RK3506, RK3528, RK3562 and
> > RK3568 will read data from OTP using 16-bit words.
> > =

> > The nvmem core stride and word_size cannot fully be used as cells is not
> > always aligned. Continue to report a stride=3D1 and word_size=3D1 in
> > nvmem_config and instead handle use of SoC specific word_size internally
> > in the driver.
> > =

> > Move current SoC specific word_size handling from the RK3588 read_reg
> > operation to the main read_reg operation to help simplify the SoC
> > specific read_reg operation and allow code reuse in a future RK3568
> > reg_read operation.
> > =

> > Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> =

> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> =

> On both rk3576 and rk3588 compared nvmem content before and after
> the change, so
> =

> Tested-by: Heiko Stuebner <heiko@sntech.de>

My understanding is that it's part of the dependency chain needed to
get TSADC to work, and since I could get it to work on my E20C using
Jonas' extra patches, I guess it confirms that it works as well on
RK3528:

Tested-by: Willy Tarreau <w@1wt.eu>

Willy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
