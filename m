Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A4D0C25B75
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 May 2024 08:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Cc:To
	:Subject:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AoK/jJqDGO1Qs9z3RLPZK2TPf7m8GVjni9AzH+LTRmU=; b=H19TtkR4jXHVxz4oQjaWPO0iTA
	TUm8taGv8WE1UGHNHw3D7++RQ89QNsxMwCAjykmjtTsiRYoLAgnBjuDDxCMRlaPjZb7MVEA9fJ1mk
	ZtOWlCBPdDIpdaQ2O8oes/bXPmbWy1XEft8VmjLGx73BkAMPAiVse0MTPn/h2+kcq0tY/dIhSSto4
	wHsEg4dtPnRYTN3JI1zR8PxI22HjmoSRXYgKa4jYU/Lsyz78+NHZNH3X4jCGcfQigdr7qaZ2N2XVU
	WF9dMSTPO9A5dx5DjM2rtMoq14el6Gy4N4mfRwyIFBeqsMRT68ZSDwIGVGB/MCxWDSDdsyiQ/Gv1i
	nWx/+Axg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8c4D-0000000BfWv-2lVU;
	Sun, 19 May 2024 08:38:53 +0000
Received: from out-188.mta1.migadu.com ([95.215.58.188])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s8c4A-0000000BfVs-0afJ
	for linux-rockchip@lists.infradead.org;
	Sun, 19 May 2024 08:38:52 +0000
X-Envelope-To: gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1716107925;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ALhTuFCl+xDBBgYqvj724VRdAi7vbLj/mUFJEgqiVPo=;
	b=hne29QXtJjrcxaLyWq1GR5KjdvtslyKJAfsNe/lY52p7fljYwGRk2yJQSvw2+4TJUjZuZC
	enLq5HCIP1mhgjZXZEqvNf5kw8YhiUeWvEt1s2Wyje0Qzf7qJ0SajsGqPgS5qHlKPI0VbU
	DIumx6DmLmU0Ij7OZ7j6zgTZpygCQLf1OeCda+Db3aLESnBvgbHO1iqYCVqKdltOx6XLR1
	hQC7AlulUSDLwynPy0+5rSDzm8mJT4fBFnGqA8pIAaXIzJjyB+gnafmbLaP9N+Rfn9WnYo
	uq99QKgWzqITqZ4l7euj2Y6otWcpvD+ri9wpNlbeL4PoZ8pRU3XXAOgomi+toA==
X-Envelope-To: stable@vger.kernel.org
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: heiko@sntech.de
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: maarten.lankhorst@linux.intel.com
X-Envelope-To: mripard@kernel.org
X-Envelope-To: tzimmermann@suse.de
X-Envelope-To: airlied@gmail.com
X-Envelope-To: daniel@ffwll.ch
X-Envelope-To: dri-devel@lists.freedesktop.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
Date: Sun, 19 May 2024 05:38:24 -0300
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Val Packett <val@packett.cool>
Subject: Re: [PATCH 1/2] drm/rockchip: vop: clear DMA stop bit on flush on
 RK3066
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stable@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?q?St=FCbner?= <heiko@sntech.de>, Andy Yan
	<andy.yan@rock-chips.com>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Message-Id: <0C5QDS.UDESKUXHKPET1@packett.cool>
In-Reply-To: <2024051936-cosmetics-seismic-9fea@gregkh>
References: <20240519074019.10424-1-val@packett.cool>
	<2024051936-cosmetics-seismic-9fea@gregkh>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240519_013850_782510_EEA9C163 
X-CRM114-Status: UNSURE (   7.68  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On Sun, May 19 2024 at 09:59:47 +02:00:00, Greg KH 
<gregkh@linuxfoundation.org> wrote:
> On Sun, May 19, 2024 at 04:31:31AM -0300, Val Packett wrote:
>>  On the RK3066, there is a bit that must be cleared on flush, 
>> otherwise
>>  we do not get display output (at least for RGB).
> 
> What commit id does this fix?

I guess: f4a6de855e "drm: rockchip: vop: add rk3066 vop definitions" ?

But similar changes like:
742203cd "drm: rockchip: add missing registers for RK3066"
8d544233 "drm/rockchip: vop: Add directly output rgb feature for px30"
did not have any "Fixes" reference.

~val



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
