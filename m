Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F964C3ABA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 14:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExbOZhgyFDrSpjZxVTL6W6uheLN/q0bgDM8vpQP46b8=; b=JnKP1TzMJqQPNC
	Zz7+FNWqdQxqCS4T+9pr/OdtFbq9f3wOw0zvmcSTYPwF9rJvHd9ib3esBGzGPDXo4XAEu92zwcYTh
	GEPy49k0EfLPH+21kceSfEFXPZBhnPHe2Jqsia6jqvmjchbfWWiPgY+UwutLB9O2SZk0awJ7WPk8N
	Sv4iaugTI58MRfcKubnOJypHBGs/pHIO/9pIYzK99Cf1XMaIyz+9eNKYmATmiS/rkK0Jw7i0DrIzt
	re7vAPyrrsUCREj3LVmks5RUFlU4irrvKMux8LA+efVsh4++acE21pIgHD52VLBaypeLxiRodufXL
	scgcANfjsOA715TK+3Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqCoy-00000004EG3-3AfZ;
	Mon, 16 Sep 2024 14:35:20 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqCns-00000004E3b-1q17;
	Mon, 16 Sep 2024 14:34:14 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 60B061C0011;
	Mon, 16 Sep 2024 14:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1726497249;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=BdKDr+vXYYA/wATEJlbHZYT7+pvHpBt+R944tF/F0e4=;
	b=DNwbSC7ZqzEfhLNKVcASBnUIKBD8CqyrXlmVOKH0oyw2yofmmmy08dJ8IQvZP/gojRd0R5
	7BclSh4nQE/dh5U/ZWsXmTrn/cRJx67LBU2hpPqea7udDnt5d5MalLaQwQIaGLJT/gwK3t
	0qu7zB7AYIo02uKXRoGqW93KnpLt7CdoOuKNarvltglPOQJNwzReb0bdcQyDTLSg2pwwK0
	Gb7VSR6Hfw0fsXuGcrvujO9ESLnip68+TWLztfreQz1q46oc4OBD7WW8meulsFZ0gYo68R
	wd/l9IJtFygPqiBERJOsSKEuilF9FjGgW5/9brRNgDkRaz7aqrlg+CpvSj9lsg==
Date: Mon, 16 Sep 2024 16:34:07 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v3 3/6] dt-bindings: rtc: microcrystal,rv3028: add
 #clock-cells property
Message-ID: <20240916143407734d133c@mail.local>
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <20240912142451.2952633-4-karthikeyan@linumiz.com>
 <202409161237568b626ad7@mail.local>
 <2955009.e9J7NaK4W3@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2955009.e9J7NaK4W3@phil>
X-GND-Sasl: alexandre.belloni@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_073412_701123_5881EDB8 
X-CRM114-Status: GOOD (  11.90  )
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

On 16/09/2024 16:26:23+0200, Heiko Stuebner wrote:
> Hi Alexandre,
> 
> Am Montag, 16. September 2024, 14:37:56 CEST schrieb Alexandre Belloni:
> > On 12/09/2024 19:54:48+0530, Karthikeyan Krishnasamy wrote:
> > > RV3028 RTC has a clock out features, the clk out can be
> > > controlled using clkout register, to consume the clock out
> > > from rv3028 '#clock-cells' property is added.
> > > 
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> just for my understanding, does this mean that you expect this change
> to get applied together with the others?
> 
> No preference, just making sure I understand :-)

i was actually wondering how this was going to get applied. I guess that
if you are planning to take the rest, you can also apply this one.


-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
