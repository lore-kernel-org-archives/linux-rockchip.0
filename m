Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BDCDEB64DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jul 2023 16:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=knIvaG/Ttz7EGeffuDnzIh59+9VqDF9moWOALAW2jO4=; b=ntHeG6cmMZ5WXD
	Xi0Y4GA3jmZzcOno/i+6OyEB93P5wF9TtxuoWIzI1HMIDN7cba8yhD8GJDXkHwFqtvjQcGZSri4mq
	XORyyd4xt8axycA40eyHnsxlQnrliPjam4v/688jAoTFjRMz7kzlYjA2Qq4662QRl/FHxYwfTXA5R
	ncjz6snoPt0ixVNrCCDQrcFGoIihya1SraZdkz1Uy7z3yWKV6V7hkfQNP87IgrOMkCacZpvkpySWD
	T03Lnwevzjc/raCe0OVLxtpBuSEdF+4qAJFCtgDr880rknWNHo9xp5CQmWPSTrklBY4RuAjPGFk7q
	4gdcHUsM6csrLhzSRW5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qMsoI-00EYaC-0k;
	Fri, 21 Jul 2023 16:16:54 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qMsoF-00EYYV-1J
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Jul 2023 16:16:52 +0000
Received: by mail-io1-xd33.google.com with SMTP id ca18e2360f4ac-783549ef058so91930539f.2
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Jul 2023 09:16:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689956208; x=1690561008;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RkGS0Aio2ruXQJzFNMuw71y4Q4sy6vm123ijO5QNmbQ=;
        b=C33YvWHyG8SAvKmoWo8GzkqXeJSwpkpeyWOJKIGf43PG1lLHa91EXKWJIQlow4MIU2
         /C+IKGzvkRfCQGURBhF/dhbHZg+/gRzLtNOvNf/oNrIEjPDCfk5q2EvhjkHzR9eex3qa
         opN2d+b7syed0gNIOKQRTC4xinE425LlTHUDqY54McGj7U3LjfsQjhVdu9RRygRx7SMI
         gPqGPKJv6fzMytGqRsj5/lB934739KM8HUf6gf/BounQ87L9vMayqvoEGwsyyfbkGj/S
         ij1CYjMMFIpDFKh4sYrIdV3RJKeEai/KWeaX86Jdnqv4auRNeT8p/KNXyGrOt0ZBdANz
         FCnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689956208; x=1690561008;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RkGS0Aio2ruXQJzFNMuw71y4Q4sy6vm123ijO5QNmbQ=;
        b=ZBqi0BqwznEqzfwO2YyWJfvLg2fnSo8Qk1XspJUDOgo3/MP8TYVttXjH+tyuA8hZgv
         wBNJvHqtYbOMYGVKzzzseQn2Zg1faScMMpe7FVLGU5lBQacevvyQQO/+MIqdpuPNgj/p
         UbT++pSprPANR7VCHS/fdXqaiklmyrRKUkSyth2izF/szAluYtMrAlXE9he1kXNWqvLo
         oNeiv555F2dRE750SWbTBb8LPlmDzwMiJPNspOxDXcOowz3CwtFx6GAmRxVlD19+NgWl
         zbdp3i0my4TqXdq4bFzmjbyLGkdMCOgnXeZ2L3/22TweDJfEjvGR9204mvrVAauwPSq8
         O0zA==
X-Gm-Message-State: ABy/qLZoiJP7aQszPsxKsRByYkQemkXLz0cHszboZiOx4z8L5R4v4Mg7
	EVZWbDhS20PXuEuyDHGBGR8=
X-Google-Smtp-Source: APBJJlEGBZEHrqyHJs8rsnrFMZjKXrMKYJ0uB+NZVasno9sqLRIVqTiKQsRYqZ1qCE3lDegYoij5KQ==
X-Received: by 2002:a05:6602:38a:b0:787:1990:d2e2 with SMTP id f10-20020a056602038a00b007871990d2e2mr507146iov.10.1689956207948;
        Fri, 21 Jul 2023 09:16:47 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id v10-20020a02cbaa000000b0042036f06b24sm1111818jap.163.2023.07.21.09.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 09:16:47 -0700 (PDT)
Date: Fri, 21 Jul 2023 09:16:46 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Mark Brown <broonie@kernel.org>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [RFC PATCH 2/2] regmap: Reject fast_io regmap configurations
 with RBTREE and MAPLE caches
Message-ID: <7e50d739-fffe-48e7-9da1-baa761419820@roeck-us.net>
References: <20230720032848.1306349-1-linux@roeck-us.net>
 <20230720032848.1306349-2-linux@roeck-us.net>
 <CGME20230721145342eucas1p12e658a54d36d985b2811e2c21f7810ee@eucas1p1.samsung.com>
 <c2bba4df-da1f-5666-89aa-28c6700575ca@samsung.com>
 <fe31bb86-40ec-4b77-9edd-eeaa61bb5e08@sirena.org.uk>
 <c9614ffb-7840-6a84-883d-ed4371d75c11@roeck-us.net>
 <205a83df-c67b-457f-a9bf-a9c6def4bb3e@sirena.org.uk>
 <1c90db79-4a1a-d3cb-5250-f30cf6b5a90c@roeck-us.net>
 <52f21f66-96e3-4ff9-b1bf-625bdc535b42@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52f21f66-96e3-4ff9-b1bf-625bdc535b42@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230721_091651_443414_7097FE00 
X-CRM114-Status: GOOD (  13.16  )
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

On Fri, Jul 21, 2023 at 05:14:42PM +0100, Mark Brown wrote:
> On Fri, Jul 21, 2023 at 09:01:03AM -0700, Guenter Roeck wrote:
> > On 7/21/23 08:13, Mark Brown wrote:
> 
> > > Yeah.  You *can* use the dynamically allocating caches safely if you
> > > ensure that no new cache nodes are allocated during I/O.  I'd not
> > > realised people were actually doing this.
> 
> > Ok.
> 
> > Dan, let me know if you don't have time to send a proper patch.
> > I have one based on your suggestion prepared that I could send out
> > if needed.
> 
> Dan sent the patch already, assuming my CI doesn't blow up unexpectedly
> it should be applied tonight.

Excellent.

Thanks,
Guenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
