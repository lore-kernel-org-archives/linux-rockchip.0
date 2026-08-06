Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B42EC55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 14:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V59vgahsuO9t+hKpr9LHNHnKBEWHDyPAt1ToSofBMZk=; b=3CsdVux4e/X17E
	R74sXOoJjF2IYP7bwP/+LtWLMhDNGjeVXsI5HjLHQjcXeHQv0n91PZ2eoNd2Z6lF+WDuIzxBNXR5b
	6H9Q46KyYHgAgVbSrMdbPBFcS5Uf7fhht+p/qASvVLD3xdN39dMGNb7rTHC2DkfiWLlnA7jKn27Hi
	5cgR6h8PCbMDjp4TO3aykMU97TILGfZipYWmwNpmDlOaloXdATkBF/TONJ/ArXgcyy4+44UDedByH
	Za3A+580SlHjVCxUCQbprFzB/Rmy9Em2/wA+b9xa0AJAVGs6p/0ExbdElzQlVQ0LzH1F+ropBpLNy
	Bmha+Sa3AcSkPmpRNtpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzFI-00000005zVm-1Upu;
	Thu, 06 Aug 2026 14:38:56 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzFG-00000005zTu-2Mre;
	Thu, 06 Aug 2026 14:38:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2CFD943B8C;
	Thu,  6 Aug 2026 14:38:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC4851F00AC4;
	Thu,  6 Aug 2026 14:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786027134;
	bh=Di5dM6CoWILnpEDRZeuaoG1A/ywiy77fhMHVIfXM/Bk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iGrpx9jLVKXNIDPNtXRVfxQlGa9iVrzaMmjwF8RePh75nsZ1BtdoanRh82mZ0Hg4G
	 Kr7R6WjKXVUsVUOzP0iEkXpn8W4B9i+JsqjIuzFzJNVpExliuF5B5YCX4NFM9XrnEW
	 Ipw33C65IEzHjXL7CXx0X1vG9mB9mMFNtg0cFGFjrKhbS1L83M9K4vcsr3oxiTreHS
	 10TiYag+N6SbyIBb8cdJPiHOHbzNtatrfs6XPhW8d0FgkMucToAszk/uEiTS92FKqz
	 nKGp7W3/85uAsequcVvD8SPy+k66E/7HmUTVe8pm0bPJaELlPcYoH24xGoak5kMYnZ
	 pVEu+D8v+9KJg==
Date: Thu, 6 Aug 2026 15:38:49 +0100
From: Lee Jones <lee@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Samuel Holland <samuel@sholland.org>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
	Pavel Machek <pavel@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH 2/4] dt-bindings: vendor-prefixes: Add techvision
Message-ID: <20260806143849.GP2869284@google.com>
References: <20260711192842.845048-3-samuel@sholland.org>
 <178419851981.1265391.16595891427832466278.b4-ty@b4>
 <1954916.R1toDxpfAE@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1954916.R1toDxpfAE@diego>
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

On Wed, 29 Jul 2026, Heiko St=FCbner wrote:

> Hi Lee,
> =

> Am Donnerstag, 16. Juli 2026, 12:41:59 Mitteleurop=E4ische Sommerzeit sch=
rieb Lee Jones:
> > On Sat, 11 Jul 2026 14:28:26 -0500, Samuel Holland wrote:
> > > Techvision Intelligent Technology Co., Ltd[1] aka Shenzhen Huiwei
> > > Intelligent Technology Co., Ltd[2] is a manufacturer of single-board
> > > computers.
> > =

> > Applied, thanks!
> > =

> > [2/4] dt-bindings: vendor-prefixes: Add techvision
> >       commit: f0e0417373ca55d07cba596e8afe081c078843ad
> =

> I can't find neither patch1 nor patch2 in neither the LEDs git nor
> linux-next. Is there a git push missing somewhere?

I pushed this a while ago.  Let me know if you still can't find it.

-- =

Lee Jones

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
