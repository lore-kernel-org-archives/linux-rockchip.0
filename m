Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2827DC54E71
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 10:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jtQX57p8K5SGoZtkSVjzZTmw8n8zPLciNWRv29NbJJ0=; b=sP7KFaxSt3oxPZ
	oFOUBr24jTuLsEbYgmzhqdNCkkGrxRELNRgp3+71zg4mnGMDm7umBlK1KJRenyohN1BYXBAeITUS4
	q14ZdYzSvoPEsVGP5duDhN9sjjyJJSu6O9URAUCd2km0oTdtETK4fQMPo2f3VmoZemnqOn+Bm0rlG
	vW9DPwG7CHuXdV+1CUSZDdVt45AFsEj0yNJQZYRqVe5/qYENjlWB6F0G2PEwCyVLjiamuSceRjU6k
	OlyFcT6mDr1WWQqlTR1KOmfa5LuSk1ppeUGAzupNCHFQk/gKoLm6TmMgF5V1TDLPpXd6lY6aRf03u
	6Hq78ftQbwRjEeyWg0hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFpv-0000000EvYN-22sl;
	Wed, 28 Aug 2024 10:23:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjFpr-0000000EvWF-3uZB;
	Wed, 28 Aug 2024 10:23:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=aFQK/ZLIDbeLUcGWGrZVvPLgm/ml3PTfZm4/e+yiKXc=; b=0FTAnkuq+zHry0MHA3HaPY0gHg
	jEqvz5OWzxRwj3v6Bpvrz99N2hOXjox1zDzA+fsuX30tst99rscyOChpM2vRkYIGhksA9fPbUfoX4
	5luES/5Ns6CW1i0Jy84FETYYSuDCsFuMlC9naAXZh2a4XwffugZa+mlRCZ/QjAarmXET0L9vT+0hP
	87JAr8GgjJ6y+vX6H8mULY4q/2eWV78eU3R2rHm45R8NovJ5p0qS+XoKgLi6A4pQuxZ7lMWMn7HnO
	sXtlJTCdbtJOPVAjvsd+B28qHqvkZzMyZvZnf4Co0u2Dbb7qqo/pq8eyZkrpWx0tqxN9DFCCAlupW
	RD06O70g==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjFpo-0004U0-GI; Wed, 28 Aug 2024 12:23:28 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-media@vger.kernel.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Subject: Re: (subset) [PATCH 0/3] Add VPU support for RK3128
Date: Wed, 28 Aug 2024 12:24:38 +0200
Message-ID: <14376251.lVVuGzaMjS@diego>
In-Reply-To: <8a5f1856-823b-4cf7-a9fa-1dc6b9b54cd2@gmail.com>
References: <20240523185633.71355-1-knaerzche@gmail.com>
 <171690893336.1899981.5081114224300578276.b4-ty@sntech.de>
 <8a5f1856-823b-4cf7-a9fa-1dc6b9b54cd2@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_032332_019308_4F2EE131 
X-CRM114-Status: GOOD (  18.39  )
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

Am Sonntag, 4. August 2024, 18:42:13 CEST schrieb Alex Bee:
> Hi Heiko
> 
> Am 28.05.24 um 17:09 schrieb Heiko Stuebner:
> > On Thu, 23 May 2024 20:56:30 +0200, Alex Bee wrote:
> >> Similar to most Rockchip SoCs RK312x have hantro G1 based decoder and a
> >> hantro H1 based encoder with attached iommu.
> >>
> >> The existing drivers can be used as-is.
> >>
> >> Fluster scores:
> >>    - FFmpeg:
> >>      - H.264: 127/135
> >>      - VP8:    59/61
> >>    - GStreamer:
> >>      - H.264: 129/135
> >>      - VP8:    59/61
> >>
> >> [...]
> > Applied, thanks!
> >
> > [2/3] soc: rockchip: grf: Set RK3128's vpu main clock
> >        commit: b465223129f951d110e633a305085bd8430d7df0
> I just noticed this patch didn't make it in 6.11-rc1. While it's not really
> important for this patch as the media mainainters didn't manage to apply
> the vpu bindings patch for 6.11 anyways, it looks like all commits of your
> v6.11-armsoc/drivers aren't merged. I still haven't fully understand how
> the SoC tree *really* works, but I couldn't find a PR for this branch [0].

That was me actually forgetting that branch :-( .

With the rk3128 vpu-binding getting merged today, I just moved that
onwards to 6.12 too. I guess this time I shouln't forget ;-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
