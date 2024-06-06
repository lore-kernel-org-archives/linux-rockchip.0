Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 877A9C27C54
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 16:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S7xeavubhEF5lnBcsgcRq0CGFSxUr8zTFWc+uYHXm0c=; b=I4VXtAXL/lV8zLzZ5gF8RNomTN
	xBYYnFUS2Y8HtUiGjYTjaMevYXwrHrKziQzpIu/tnZx1VStx2s6SrgwftfQDY1rwhAZ2ZV9NPEAYg
	VTU5Ygcmp4L8uZHghFhwykQYcSYqb6wTwfkUFgPHoif+TFKiV+u/MEItG2vgh9qImvD3vohckIciM
	CD94lAyLgyxh3W7SApDw+gfD2G5SKV46OXXaEZu74SithHnn4OSKvMJ8c8kh6fn1pfLgEUK7Zgonq
	6kWmwfA0tViCc1yHryPKAdeBL7gO6xRDl7FSf3SoNEO1uCYFNldxZwrflMlDvQwm8RY4zQY2UgJaw
	k4zmDq2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFgM-0000000AQrM-44P4;
	Thu, 06 Jun 2024 16:09:42 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFFgJ-0000000AQqR-1iaA;
	Thu, 06 Jun 2024 16:09:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9CFF061D58;
	Thu,  6 Jun 2024 16:09:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6EA4C2BD10;
	Thu,  6 Jun 2024 16:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717690175;
	bh=Y1FSBBDktAab0PFUzo939Grq4Np65U4h7zGSymdlWNU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O7+WvXZ5MN6Afpj3/aCgcCbfucfC4eknHYJFO7H8w8+oHVCbRbuK2xt1OXm8ScUNE
	 8cqhN296vT0hXcwAmOJ7+APtaMgyo7tAdBWc74r/i7mZySygQKUDK6JzrM+aOv5mdl
	 zWVZGgHgcV9QByA3GFV7IZjr6INxXVForKcqxpRMvnOj75LlapxDQZ6O1NPYoXBAWX
	 1gJNiGQW+Xczch6ZSw8lg5wG+dlHBXRR9ZMI69+vE9w4CREiyV1F+lKSinnzADQN/7
	 TX5qZvHSnzrcfvyDJKdb7/pjryXYykXdKW4magflnPUPKpDcxm6rZP8ZYNyIcR/Skr
	 X9Ckn+sZx5neg==
Date: Thu, 6 Jun 2024 17:09:30 +0100
From: Conor Dooley <conor@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 2/5 RESEND] dt-bindings: clock: rk3128: Drop
 CLK_NR_CLKS
Message-ID: <20240606-dispersal-buffed-27a6e7540d4c@spud>
References: <20240605210049.232284-1-knaerzche@gmail.com>
 <20240605210049.232284-3-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240605210049.232284-3-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_090939_535361_2F634F2E 
X-CRM114-Status: GOOD (  10.35  )
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
Content-Type: multipart/mixed; boundary="===============0238279524148194131=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0238279524148194131==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FGgIfamJBCS86e7A"
Content-Disposition: inline


--FGgIfamJBCS86e7A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 05, 2024 at 11:00:46PM +0200, Alex Bee wrote:
> CLK_NR_CLKS should not be part of the binding. Let's drop it, since
> the kernel code no longer uses it either.

What about other operating systems etc, e.g. U-Boot or barebox?

--FGgIfamJBCS86e7A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZmHfOgAKCRB4tDGHoIJi
0qlIAQDozQlHl2khmv09nvKM+QpHUNjjvRIOFTm/lWr50Grs+wEAnAI+XEvELGi9
OJrYfVp3WYbfWtOMfAmKx5KoDCQ4lwI=
=1vL8
-----END PGP SIGNATURE-----

--FGgIfamJBCS86e7A--


--===============0238279524148194131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0238279524148194131==--

