Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D178AC3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 14:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PpP4b6b9QCeBLzQQa3bREbrtlDphwUQZ68rIjiOpskY=; b=ajFNWRThxATk0UGTvfil7EMzji
	FlwDdzfwKuTU1x4F4vaXFIiI2Ps1dJV13WiOmDztPltZkS1r4ASwngUGESgl1hrvbHJ9SXRCwxDpW
	/icx4H8ysBuPiqRNE7sxpQhm7clKCl8ivx1Xo1L6+PTSco9Phmt9hLGIf2G2L+0LbMB6TWWW8VCnW
	BdPEtIe9daCYY/jT8qVOH1MOkCdaG7kLHYpXXGPhRoJHm1rAjeqPy5zNtNIw/WefuKcyVAHMfCbVi
	BDhwLyhpZvLVzmcqVN+ZcrD5yRjm0yxQvm4TQ42kofa0vjxjpo2/6rKYjPBfkpMJzTEhZ7dmOEDA7
	QPpkyskA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYDL-0000000Ao3h-2jOC;
	Wed, 10 Jul 2024 14:22:35 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYD4-0000000Ao1S-08nA;
	Wed, 10 Jul 2024 14:22:20 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720621333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=27V6jUOaNytzMrX8tcswA+zOR0z0lNMkdk4MlU12XKo=;
	b=Pln59aDHanugpPxhabXhnNgy/f3kk/SoEB6XuIRPRD+u2Iny9Y+3kxYXie6bSsQPbxTVqO
	+SUmN1TgAXAeZ+/jGDSwVcz0nyOzPCDx/CRAbvVY0A1QzLt97MSvw+PBcCPRbHJkAxKER7
	Z1RwnzuVc2SOKxAXTx4PblsbUH++I437k3+bJjw3Q/dlni6TTEzGjGczn62KlDDaZyXkSf
	LSYX0rLM6RHO4fgdUzoHQx0mlhHqpmqZ5v5mE76pxgUneoMxYPiW2l6aSsbTR1w3TnaOVW
	7C0pkf5V2/c+FaHTgiOTo/BOp2DZYdd3cl98sLZJ8+r/WPbQBkCAAmuI0QjyIw==
Date: Wed, 10 Jul 2024 16:22:12 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Andy Yan <andyshrk@163.com>, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, heiko@sntech.de, hjc@rock-chips.com,
 andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 javierm@redhat.com
Subject: Re: [PATCH] drm/rockchip: cdn-dp: Remove redundant workarounds for
 firmware loading
In-Reply-To: <20240710-smooth-hypnotic-raccoon-b91fba@houat>
References: <9b7a9e9b88ad8c7489ee1b4c70b8751eeb5cf6f9.1720049413.git.dsimic@manjaro.org>
 <109c6f19.2559.1907b817a99.Coremail.andyshrk@163.com>
 <0bf4701d98833609b917983718c610aa@manjaro.org>
 <2fd3aabd.785b.190914ec1a6.Coremail.andyshrk@163.com>
 <f0fb9feed2d9262bb4d7c8ade836af62@manjaro.org>
 <909d072.9028.19096c2429a.Coremail.andyshrk@163.com>
 <31062b80d3f9e11c339c400a70464f43@manjaro.org>
 <20240709-exuberant-tentacled-oxpecker-bd1ea0@houat>
 <b6d630447e6c69e913b76650d910f895@manjaro.org>
 <20240710-smooth-hypnotic-raccoon-b91fba@houat>
Message-ID: <a30067db11e586d8eb2c124abe32052a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_072218_558714_50B6692A 
X-CRM114-Status: GOOD (  18.55  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Maxime,

On 2024-07-10 09:13, Maxime Ripard wrote:
> On Tue, Jul 09, 2024 at 06:36:08PM GMT, Dragan Simic wrote:
>> > > > > As I already wrote earlier, and as the above-linked discussions
>> > > > > conclude, solving these issues doesn't belong to any specific driver.
>> > > > > It should be resolved within the kernel's firmware loading mechanism
>> > > > > instead, and no driver should be specific in that regard.
>> > > >
>> > > > IT would be good if it can be resolved within the kernel's  firmware
>> > > > loading mechanism.
>> > >
>> > > ... we'll need this as a systemic solution.
>> >
>> > The general policy has been to put drivers that need a firmware as a
>> > module, and just never build them statically.
>> 
>> I totally agree, but if Buildroot builds them statically and provides
>> no initial ramdisk, we need a better solution than having various 
>> drivers
>> attempt to implement their own workarounds.
> 
> Buildroot typically allows custom kernel configurations, so it's not
> really "enforcing" anything like another distro does.
> 
> It is definitely targetted towards very stripped down systems, so I
> guess building the drivers statically is a natural choice, but it works
> fine with modules too.

It all leads to a conclusion that we need better in-kernel support
for delayed firmware loading, instead of drivers implementing various
workarounds, for the layouts in which drivers are built statically
into the kernel image, but the required firmware blobs reside on the
root filesystem.

I'll start working on it, hopefully today. :)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
