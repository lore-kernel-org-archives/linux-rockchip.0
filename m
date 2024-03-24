Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C4EDC47DD9
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 11:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/oZPoC43G4w9ru6dCvGCQKZT8mlP+gasHP14/m9p9M=; b=qN3Fze+UXWQC1A
	8Gddj5ThK9rPlEoafwW3J5JEED/tBEcaByjbVqoQun8AjEG5Gfaq6ChRHrDU85XDsqdNkwGGgXhgm
	x6P2Z8o6c2febtYnK4J3InZoGKBZd9xNVtjvIdGr3g0NWUUqxMPjCtJZLHslchLdbnDmBBllZKpUk
	ijD0LIGuu41pGmzMVE5K1cA7003nU709HQlQnzMUVITifUKqS7npAgAN6U6pQcraW8u/32m6IlsmV
	VqIBz8P3nJ+qICM3pzt/imgyE1gMwn4EpPRitmboozKt/5+65B76CvBrYK1mR3ptnH9Y63GtU7vxx
	jTrqWofz++F+WsCxnRqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roLvN-0000000CRRD-0y9b;
	Sun, 24 Mar 2024 11:22:01 +0000
Received: from mail-4317.proton.ch ([185.70.43.17])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roLvJ-0000000CRPx-0Tbc
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Mar 2024 11:21:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thefossguy.com;
	s=protonmail; t=1711279308; x=1711538508;
	bh=CHiCwMJx97a7aFumYdhFFpr0BdNcgHlVnJDNYCZsuPM=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=eg84ZX3UbyCWGStzmB+0bD9GjZ4fgn606vz6QIfuD/mQdedzWjM1fPiCFs9FZGStY
	 XjL4X7RfBy10J554SUUVuqDECeCmSDw1lIVcGGnobLQw/38l+yS9ArM9a5Jfx0fSWo
	 f3V6zmmgDXQ2PRcz8GivkibgkC/Dr/ZSl+QBeh7zgRGfBFSRH5+jthYV6cw8LJtbIG
	 jpr1ZB8XX8yQRvxTna40ASXtf8+JD3DorFCB3EK1ogRJNOQM/J5KftxDxDHYO6tNau
	 UZMb0XZhw28aBJjTjILCDze3lF//FGIz1IjXaOoRRjh8CS5hBNRsgHV9pI+qTsMUnc
	 SRECmoe9eVr8Q==
Date: Sun, 24 Mar 2024 11:21:38 +0000
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
From: Pratham Patel <prathampatel@thefossguy.com>
Cc: robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: disable analog audio for rock-5b
Message-ID: <TbQeSy-AWAKVHo2Alb8hXUvplVNvohDJ2ztRM1x3Fo5PMmGLMsJxtHR-OIms9FlUshfUD9x45EghBCB9gVtcUPlxeMRUJQ_C95DVhu3AJrk=@thefossguy.com>
In-Reply-To: <0005257d-8022-4a66-a802-0c920d259ccd@linaro.org>
References: <20240324062816.145858-1-prathampatel@thefossguy.com> <0005257d-8022-4a66-a802-0c920d259ccd@linaro.org>
Feedback-ID: 104309535:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_042157_812688_35345105 
X-CRM114-Status: GOOD (  12.55  )
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

On Sunday, March 24th, 2024 at 16:15, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> 
> 
> On 24/03/2024 07:28, Pratham Patel wrote:
> 
> > The addition of `of: property: fw_devlink: Fix stupid bug in remote-endpoint parsing`
> 
> 
> Please refer to commits using commit sha () syntax, as mentioned in
> submitting patches.

Noticed that in the wiki but didn't do that since the commit hash for the commit
was different in each branch (of the stable tree). Maybe I should have copied the SHA
from Linus' tree. I will do that.

> > + /*
> > + *analog-sound {
> > + * compatible = "audio-graph-card";
> > + * label = "rk3588-es8316";
> 
> 
> Do not comment out code. Instead disable the nodes and provide
> appropriate comment describing reason.

I tried changing the status from okay to disabled. That didn't work. The SBC
still locked up during boot.

> Anyway, this does not look like correct solution. DTS is independent of
> OS, so bug in fwlink does not matter for DTS. Either DTS is a correct
> hardware representation or not.

I agree, it's not the correct solution. It is a temporary workaround for the regression
caused. I will send more patches once I receive a few more RK3588-based SBCs and investigate.

 -- Pratham Patel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
