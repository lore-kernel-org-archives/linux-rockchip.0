Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AED4103A9A7
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 10:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3B8TyVJnDy/ovIodFhSCP9RlDdI8ui0VesgdXMmUsGw=; b=KMbX7ASShxrDGS
	m/qLsxpJezXI/lXHtJEMCGWA0TghxR2XMXwxhqUt52juK3tnQLmy08Ary94dSnyaoUMg3pMWLn2LH
	nP06IQ7JnaCfFxJNuDiiejy4leDZZI6c+CFcaQhnT1GrKFoJ7lbl6FaRUPpn74ogT3O+XooixHrKd
	F57k6wF5gjCHJYmP2dRinrPQzavIywJjvXYPe0DOxpPfAHwBw1muAGtNboLFy4V0jkoA77qImlBdz
	g2elXmJ2ss2cTe75RtOHUJWiyMEys6EpPt3zlfBIGMRo+SoND9mkbiuD0/M5DxjPQ6Z3ETal/uBae
	t0j7NnBw98zRp0ALt7ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Lsp-00000003Boi-0WRY;
	Wed, 25 Mar 2026 10:54:43 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Lsm-00000003BoL-22yG
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Mar 2026 10:54:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1774436069; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=jGWxXoI4Fxqx9ftKhBp2mvazwVpUW0HDji9YuSV26ACBDCI+smoWI5oUdQsM6xlOZ+dEpGUqOwU152MGjeMqvujLR9kAD3tuFgAEMfZ1ytFzAyzM5lar6RjqUImkqh3CJpKswqjeKFiPhQevSFjQvlPQR/aVubUed69J/pn4tZ8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774436069; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=4R+g7a/6PRxwSQaBDvJIaVNLCDM/f6AmvMh/P5pv3zc=; 
	b=kqldyP0bOC9wgr/ms0zIgDRjFFkizSYbwz0qa5l2VXyJWJvJdU+qVZfpUqfG4aidvJSefDc1qNYkDl+4yuT25mdRBY0jPFHGk6FZwac0f+dp4Dz1xTHKwStlmWGoZEfBPFhVf0Pwlnns+ww1Wz4QaPJ/oLG+87VRO6AHNBqgJBw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774436069;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=4R+g7a/6PRxwSQaBDvJIaVNLCDM/f6AmvMh/P5pv3zc=;
	b=GRGdFnKwIcf6go3L5npFnz2a/Iz+cN8J/ed8ULL/XMc8XDOLzPjCzpjlsR+877AK
	/i0eIHBmUWVsDsvPUBxn96Nq8wYi3Lh7YjB4+QEKJON/yImImUaCFuKr68RDV51Lcet
	pK+uPm1sy13oak2metBV9dMXgiOgU2/kP1v9Kho4=
Received: by mx.zohomail.com with SMTPS id 1774436067747177.4963352124538;
	Wed, 25 Mar 2026 03:54:27 -0700 (PDT)
Message-ID: <d5939f86-d61c-42b1-a85a-e81b0a358240@collabora.com>
Date: Wed, 25 Mar 2026 13:54:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] media: hdmirx: snps, rk: Fix HPD hold time
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Ross Cawston <ross@r-sc.ca>,
 kernel@collabora.com, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20260318192619.3910060-1-dmitry.osipenko@collabora.com>
 <abxfd7SdlaMWag_-@venus>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <abxfd7SdlaMWag_-@venus>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_035440_603691_4F9085C1 
X-CRM114-Status: UNSURE (   8.93  )
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

On 3/19/26 23:45, Sebastian Reichel wrote:
> Hi,
> 
> On Wed, Mar 18, 2026 at 10:26:19PM +0300, Dmitry Osipenko wrote:
>> Increase time of holding HPD pin low by 50ms. This fixes EDID change not
>> detected by sink/display side.
>>
>> Fixes: 7b59b132ad43 ("media: platform: synopsys: Add support for HDMI input driver")
>> Reported-by: Ross Cawston <ross@r-sc.ca>
>> Closes: https://lore.kernel.org/linux-rockchip/20260209061654.54757-1-ross@r-sc.ca/
>> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
>> ---
> 
> The prefix in the patch subject should probably be
> 'media: platform: synopsys: hdmirx:' or 'media: synopsys: hdmirx:'.

Good catch

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
