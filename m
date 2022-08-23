Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2138C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 17:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXn99GBF5TRdgKnk9/SNKY0NNYcZA3bQyS+VsWrFvJA=; b=dqHUHWDFcldvDT
	7c2i4HTF9k8t5F7EJ80EUW/RGSu1IiFQzd1oBSHv0X7iMwMLF6HvH2oVvmdZxnOnVwdavN09gRN/8
	qEqtbabw6/zjzbCZJ8fuSGjfnDAaxWK5asfZX+bX3Drdakf/l7/MId5UmHbZXGHkVdsErJBaTPhn2
	HcSD0YmoQ+4yPx/23iPczPW29ZuRApfbpUzQS69DcfdPN8M1eVvqehc0Ax7Z1U9rww7qAbMbYYN1e
	h/NkP4ufc/CtHKnys/ljA55Ctt72kWYvL0UeJLeq1BidwXzUTcLb785OhbsWAb7QllLjKk7teJgnN
	Ipu/wxiTSUb6ChesCaGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQY8d-007tIF-8y; Tue, 23 Aug 2022 17:56:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQY8R-007t8k-Ui; Tue, 23 Aug 2022 17:56:21 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQY8L-0006Mb-Bi; Tue, 23 Aug 2022 19:56:13 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v3 09/19] clk: rockchip: Add dt-binding header for RV1126
Date: Tue, 23 Aug 2022 19:56:12 +0200
Message-ID: <3175969.jE0xQCEvom@diego>
In-Reply-To: <CA+VMnFwE8jBxXwQPVEzEUosxjuEVMNGB9NnBuHYDw_360qJztQ@mail.gmail.com>
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220822181009.GA80526-robh@kernel.org> <CA+VMnFwE8jBxXwQPVEzEUosxjuEVMNGB9NnBuHYDw_360qJztQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_105620_020204_E5B4B4DD 
X-CRM114-Status: GOOD (  27.85  )
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

Am Dienstag, 23. August 2022, 14:57:20 CEST schrieb Jagan Teki:
> On Mon, 22 Aug 2022 at 23:40, Rob Herring <robh@kernel.org> wrote:
> >
> > On Thu, Aug 18, 2022 at 06:11:22PM +0530, Jagan Teki wrote:
> > > Add the dt-bindings header for the Rockchip RV1126, that gets shared
> > > between the clock controller and the clock references in the dts.
> > >
> > > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > ---
> > > Changes for v3:
> > > - update the file name
> > > Changes for v2:
> > > - exclude from clk patch
> > >
> > >  .../dt-bindings/clock/rockchip,rv1126-cru.h   | 632 ++++++++++++++++++
> > >  1 file changed, 632 insertions(+)
> > >  create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h
> > >
> > > diff --git a/include/dt-bindings/clock/rockchip,rv1126-cru.h b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> > > new file mode 100644
> > > index 000000000000..cfba8226ded2
> > > --- /dev/null
> > > +++ b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> > > @@ -0,0 +1,632 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> >
> > Dual license please. Need an ack from Rockchip for that (and not just
> > on this one).
> 
> Heiko or Kever.
> 
> Can you comment on this?

I guess this is more a question for Kever,

@Kever can Rockchip allow that dual licensing for the dt-binding header
(MIT as second license I think - at least like all the other binding headers)
both in this patch and also in the other header-patches of this series?

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
