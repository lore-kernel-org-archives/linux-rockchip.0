Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D330C36016
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Mar 2025 20:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLnVh4TSl+LC4fVezQblTPCIPiA5YIy9JyqViXk/MOU=; b=g0om7rOyZai3qS
	sW22APBZlpbMgKtVGFI6Vb4nzyieskbi8CmkHlJm/lMxlsfzfapNeN3vcx3UNkdTXintz9onefZa8
	XzZP/R7mj1LnC9QpS+avdszJG/FY4G9FE+Hlnc1oYPbc5aVo6ZGE5+shNrN9ksG3D0OAO0JdolbXb
	uwkZzqTnJikjQzUaptDhktq/hJEevIX7p7ProERg9Hk8JLPR2b+MjzfOXjDXLj/cwDu+FjN7I6osx
	8m3kslDyO4E4OJPo8EGa2qAm9RLUQGjJXCVkJCaNr2q+5Zv9Dc2fdppV+ev0vLzVNSzJxngKZiDz0
	j8AkmmHvLfCp6yKPZ9Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzLq8-00000001Kgy-2fTO;
	Mon, 31 Mar 2025 20:34:36 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzLmw-00000001K9X-0FDT;
	Mon, 31 Mar 2025 20:31:19 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1743453045; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MSLaKXxjKKtON9fuDG4zOsSKcnNFNMLGsBM6kco91FZVNCF5lGm2icBtJly6AmJhGrKhCTjgeEqnxhG5waGIQWbyKN+4pzsoKprd0uyzz6z3EoseE7x6YGC256XuLQDJxg7tmrr1XoQ2yCmiUV/HjYvw9QXpLE00dnJL4G76lnU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1743453045; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=9XcWWOjwTWx+dFyKcS/Axtzqwu1aqI3lz+g6+tOHQQc=; 
	b=jGpKKAJbYyFAL/iAA4hTHo2pGHLOwjrfgzQ6Z46OuvuMjYP4aSQOsAuy5ts12VUrG21SvK/NTSkD34ZYpFJUshBvPn77xz+P2x/I3rWonNSLg7xhZp2eiDlOdbyL1+CW/75ZuJ2NPCl+URI7ccnFhxKwAaOmE0BJT4RIid5KYb0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743453045;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=9XcWWOjwTWx+dFyKcS/Axtzqwu1aqI3lz+g6+tOHQQc=;
	b=gXVfDhV9eQ12VNtE6AYu4yUqt8nB7Yz+Exsfo5OlQ4wDwkiVkFuzeEb4tpb6cM/w
	5VzV+h/6HJmKPGq6M3/t1eP2CsnWNutxoN5VRu7xmAGXvbAaj2cJN8et5Q+Lz7Aiucy
	dMoVKOMHgf10oH+zto4TAfbrCBo983FhxBp/omx4=
Received: by mx.zohomail.com with SMTPS id 1743453043292322.9326378894983;
	Mon, 31 Mar 2025 13:30:43 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id EBBC4180D0E; Mon, 31 Mar 2025 22:30:36 +0200 (CEST)
Date: Mon, 31 Mar 2025 22:30:36 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Enable HDMI1 on rock-5b
Message-ID: <jmb6f6beax3rmyutbkyl2hthlzzaguh2qlfdeibrbjdu44y6ea@rbuf6yjoo4v4>
References: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com>
 <20241211-rk3588-hdmi1-v2-4-02cdca22ff68@collabora.com>
 <6d168284-01c7-4da4-8fc9-1b12e38b554f@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6d168284-01c7-4da4-8fc9-1b12e38b554f@sirena.org.uk>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_133118_168916_DEF2C1A9 
X-CRM114-Status: GOOD (  18.22  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, devicetree@vger.kernel.org, Alexandre ARNOUD <aarnoud@me.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org, Aishwarya.TCV@arm.com, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Mon, Mar 31, 2025 at 08:01:34PM +0100, Mark Brown wrote:
> On Wed, Dec 11, 2024 at 01:06:17AM +0200, Cristian Ciocaltea wrote:
> > Add the necessary DT changes to enable the second HDMI output port on
> > Radxa ROCK 5B.
> > 
> > While at it, switch the position of &vop_mmu and @vop to maintain the
> > alphabetical order.
> 
> We're seeing failures in the Arm lab the IGT tests on this board in
> Linus' tree which bisect to 77cea7ca1368 which is this patch.
> core_getversion fails:
>
>[...]
>
> The board is running fine in -next so hopefully there's a fix already
> there which will make it's way to Linus' tree during the merge window.
> We're also seeing something broken with the HDMI audio devices, but I
> didn't look into that.

I guess the root cause for the problem is, that the pull request for
the PHY subsystem [0] has not yet been merged. It contains [1]
("phy: phy-rockchip-samsung-hdptx: Don't use dt aliases to determine phy-id"),
a fix for properly handling the second RK3588 HDMI PHY instance.

[0] https://lore.kernel.org/all/Z+pFou7KOQZJ1iy4@vaman/
[1] https://web.git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/?h=next&id=f08d1c08563846f9be79a4859e912c8795d690fd

Greetings,

-- Sebastian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
