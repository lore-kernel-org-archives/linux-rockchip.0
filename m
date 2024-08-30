Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E987BCA0FE8
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 19:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGtD/mQkktj0JwIZusuOkUlawFdHaxXKgBU8GYLCuvY=; b=uvv3hdw5nPx+ZC
	wM6xcQE+y/vyTED6F5mqX07+JAPIcFD/++TpCjBwz63JsZ3ZlUcxaDCpqXFG0VdgM9ERiVZlaElyc
	qVfNMrctlhFmHNhNZn0uE16NJGsMDSHRz6u9n0lsJz5VxJrDvP+wRaVEvsBc3YBbItSSGzFrJsod3
	P9y8hquvjwsfYFmjwvIdKj+OKYHL2ikusOSIeqoVxiUiyGWlyqEXIQY5efT/XU9ncuGu1JSY3pXin
	kK54sHmqTIJV0not8d++Cq+8+7oyoDVKjTvylWe3vbxLEDaS47BCDxGFeepfMVACaDoTqTjbERiZb
	tyIu0GDFcSP41PooefLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7g8-00000007XUu-3M9D;
	Fri, 30 Aug 2024 19:53:04 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk7f6-00000007XLb-3KHJ;
	Fri, 30 Aug 2024 19:52:02 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1725047493; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Fc5aKmQK2uAwBJfJnqtE5Q2Q+z+4uHVsRQC8QZAAQz3D7oe1q8ycADHvnuMlh5CbwAWHN8weyVTIJKI+NWtrlaSqfjnLkj9LxtNgOhTNDFbkIbxxaPfPNo7TNZCwc6/Iy5xjzAVVr6cL8Ymzqgv4vb2vW8YHbHQgw2CnASKJxXw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1725047493; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=lZgsVPL1zIUPPX6fL1AfRoli7CWC0FdmvjcrwEFwrMY=; 
	b=mPHFEHi72p36IknxA1gJVYdmIxG/VW/7t5atcKhAg1G+fPoB9chjlQW5EJB+X/Oyi+JTxa15w9cVgTRrKPRUn48QeqgkdDrtt5Dgr47iJcACScqdR/of0oaIc2OwEdNz9MnZf8I6Dk3VhedE/Cww6jV54jTm7sLBhWopSex4QOQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1725047493;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=lZgsVPL1zIUPPX6fL1AfRoli7CWC0FdmvjcrwEFwrMY=;
	b=ZpthUZPiBqmUHh7dkw1o9oxEFl1s1Tja+TkbYWkSHJJ4f1/tN6ZkTU7HKM76EuZr
	chDfno7rrtP3f4eYS1z9mO2nnSwsRPrBsLEnt2hOegOPVEO8OHaoSBzeuc0crX/iRmZ
	Lsyd3k/vlhb7qcn15ye3SsW3dJ//FrklIAWSrip0=
Received: by mx.zohomail.com with SMTPS id 17250474912431006.0237532313579;
	Fri, 30 Aug 2024 12:51:31 -0700 (PDT)
Message-ID: <440c8b2b-035b-4983-b078-78252a17725d@collabora.com>
Date: Fri, 30 Aug 2024 22:51:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5? 0/6] Tweaked basic Synopsys DW HDMI QP TX driver for
 Rockchip RK3588
To: Shimrra Shai <shimrrashai@gmail.com>
Cc: Laurent.pinchart@ideasonboard.com, aarnoud@me.com, airlied@gmail.com,
 algea.cao@rock-chips.com, andrzej.hajda@intel.com, andy.yan@rock-chips.com,
 conor+dt@kernel.org, daniel@ffwll.ch, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, heiko@sntech.de, hjc@rock-chips.com,
 jernej.skrabec@gmail.com, jonas@kwiboo.se, krzk+dt@kernel.org,
 ldearquer@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 maarten.lankhorst@linux.intel.com, markyao0591@gmail.com,
 mripard@kernel.org, neil.armstrong@linaro.org, rfoss@kernel.org,
 robh@kernel.org, s.hauer@pengutronix.de, tzimmermann@suse.de
References: <68e78629-5a2c-433b-8c83-50ffced04268@collabora.com>
 <20240830175440.2596-1-shimrrashai@gmail.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20240830175440.2596-1-shimrrashai@gmail.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_125200_918831_13631C59 
X-CRM114-Status: GOOD (  20.18  )
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

Hi Shimrra,

On 8/30/24 8:54 PM, Shimrra Shai wrote:
> Cristian Ciocaltea wrote:
>> Please stop doing this!
>>
>> I appreciate your intention to help, but this is not the proper way of
>> doing it.  This is a work-in-progress series and you should have asked
>> before taking over.  Please do not interfere with other people's work
>> without having a preliminary agreement with the author(s).
>>
>> Additionally, before submitting any other patches, you should get
>> familiar with the process - see [1] for a starting point.
>>
> 
> Hi Cristian,
> 
> Sorry, I did not know what the rules/norms/customs were around this
> kind of thing here as I figured it was an open contribution space. I
> did not know that I should have asked for agreement with you
> beforehand. So go ahead and ignore this patch series if it goes
> against the rules/customs. Even more if these points have already been
> addressed, as redundant work is obviously not helpful.

This is an open community and, obviously, anyone is free to contribute
without asking for permission.  However, taking over an ongoing work is
nothing but a source of confusion.  You may do this for work that is known
to be abandoned, e.g. the author(s) explicitly mentioned that in one of
their last posts, or when there is no sign of activity for long enough
time (usually months, for sure not days or weeks).  In the latter case, I
find it reasonable to still ask for a confirmation that the submitter has
no intention to continue or, at least, discuss the possibilities to join
forces and help moving further.

> That said, if there is some way to help along this project "the right
> way", I would like to for sure! Just tell me what you'd _really_ need
> help/assistance with to get this moved ahead and I'll see if I can
> give it.

Getting more testing on the series, reporting back the findings and/or
providing fixes, would be much appreciated, for sure!  The goal is to land
the basic functionality first, hence any new features should be submitted
afterwards.

Regards,
Cristian


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
