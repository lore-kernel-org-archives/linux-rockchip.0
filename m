Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F233FC47DD9
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 11:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjM6/+mnobL/1Fl5z5uGkZTExX9iVbYirt9ZeIhlbKA=; b=vEiQOvdtVZ0uvI
	n/TUcbHgqgjyRewSO1PLQaJn0PrXxN5ZrhxJ1cuzcIMiFCs2GBuV76DgFk3DkjGnPFaM8ka6rQiC6
	n72OjK0ONfEtKjgEBxQWH+YYGcRrfNwShgUlx0tpDAzz7mUvZJV5MSEPA4ZhE6Sv6VNCkWHN9ShSM
	jEtDJFpJ2+y2OlM66bPHBcb4kqg6+CIJ0/2+3IMkNK5RC0bFbk2sxsm3mKB7AzrVGgeNJI0eFplnb
	iL+foiqdX0ZqH3MsP8DUenOGgmYIVlXn96166QkkZThh4N8k3iwuJgtk/dGmSFopSW1DYbHZFu6TS
	z3leppUecNa+bzTL/+Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roMGP-0000000CTLE-1qUk;
	Sun, 24 Mar 2024 11:43:45 +0000
Received: from mail-4317.proton.ch ([185.70.43.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roMGL-0000000CTJa-1lvr;
	Sun, 24 Mar 2024 11:43:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thefossguy.com;
	s=protonmail; t=1711280619; x=1711539819;
	bh=U56PTdG5kVIRjFB+Qp4FUEnuUZCtrRVmQdRXbMzwT3I=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=DV0x0Dd3iR7acnHcgt5Q1LTSbNqx8UfKkN/marhrakfZClTR90noGq9Xm9Lka4YKx
	 4r0WDV4P0nYS9Q4WjiOEOpGDyqE2BjUuv+ku9+J1f1iKnQOfZzkTin8Cq8yTUznP80
	 Pq1fuX+8JuQwZE7RrOO9pzNuCrArt/4gYL9e055bvp6SUH51zxW5KoKAl1mOwkza5q
	 BCW3P3gELQ79PrvsRZt7j0E5Kc1XtdtpqQhWNs5ymFCmRqO333190E+eacclP+V//n
	 zsmOWscdECvAgEIHUCMB50UPCreUMUTCHLjzPfpywgNrDQOUmZu0SuraSFQ9ELhrXh
	 eiq+x460ZS6TA==
Date: Sun, 24 Mar 2024 11:43:16 +0000
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
From: Pratham Patel <prathampatel@thefossguy.com>
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: disable analog audio for rock-5b
Message-ID: <XJ_dGL-0X07dJ8GOKvrXbRD2FAHN1A7keAtohcSaU41DEF0FbeWwswLEqkrYiwwulyXDwJ6SZHfWukhHO3t3tOWX7ZGM7ya9lwXfn8Xh1nU=@thefossguy.com>
In-Reply-To: <TbQeSy-AWAKVHo2Alb8hXUvplVNvohDJ2ztRM1x3Fo5PMmGLMsJxtHR-OIms9FlUshfUD9x45EghBCB9gVtcUPlxeMRUJQ_C95DVhu3AJrk=@thefossguy.com>
References: <20240324062816.145858-1-prathampatel@thefossguy.com> <0005257d-8022-4a66-a802-0c920d259ccd@linaro.org> <TbQeSy-AWAKVHo2Alb8hXUvplVNvohDJ2ztRM1x3Fo5PMmGLMsJxtHR-OIms9FlUshfUD9x45EghBCB9gVtcUPlxeMRUJQ_C95DVhu3AJrk=@thefossguy.com>
Feedback-ID: 104309535:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_044342_139708_9585DA5C 
X-CRM114-Status: UNSURE (   9.73  )
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

On Sunday, March 24th, 2024 at 16:51, Pratham Patel <prathampatel@thefossguy.com> wrote:

> On Sunday, March 24th, 2024 at 16:15, Krzysztof Kozlowski krzysztof.kozlowski@linaro.org wrote:
> 
> > > + /*
> > > + *analog-sound {
> > > + * compatible = "audio-graph-card";
> > > + * label = "rk3588-es8316";
> > 
> > Do not comment out code. Instead disable the nodes and provide
> > appropriate comment describing reason.
> 
> I tried changing the status from okay to disabled. That didn't work. The SBC
> still locked up during boot.

I think setting the status to fail should do the trick, instead of setting it to disabled.
Will try that and be back with a v2.

 -- Pratham Patel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
