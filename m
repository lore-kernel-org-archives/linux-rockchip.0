Return-Path: <SRS0=K/hu=FS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41638C4361B
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 12:06:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AFFAF23B3E
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 12:06:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AFFAF23B3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dDBG/YbpduX67SvdTzdJQMWT+fzddg0LFZmxkSyxjNY=; b=ohMP8bOo9PCSaKM5Vxiil1gs7
	UIxu+tBGu5J+m+4CmGMLZRDHtQkkHMrL4rv1YeDpnR+X11T/n9ZR3ENBPFqg7TUlRB0zQxUI6UeXc
	XZg/VZ+1iDTNlOT3ItdE/uO1YCUmCG6UsxHoSN/i3QvMLcU1c0Gq/uukaO8kdPga+5OnbPp2/yiXD
	B+Zi+wcePDz8mjnwGmKD/aha00STYbAQwYPpH5Z50bd4LcQygDbFz/wRhIhXVb7SXsCEpvGjAXCNY
	Rz85CvPgD4CGeng+RuAMijtufuctY2mJgEIee3QqmKgRPz/TFcuGKIUpm+wfLqTwpgvDda7i1h9bt
	tiRzkfbog==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1komcY-0005CN-GZ; Mon, 14 Dec 2020 12:06:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1komcW-0005Bn-Kx
 for linux-rockchip@lists.infradead.org; Mon, 14 Dec 2020 12:06:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9853630E;
 Mon, 14 Dec 2020 04:06:24 -0800 (PST)
Received: from [10.57.33.60] (unknown [10.57.33.60])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B4D6D3F66B;
 Mon, 14 Dec 2020 04:06:22 -0800 (PST)
Subject: Re: [PATCH v3] drm: rockchip: hdmi: enable higher resolutions than FHD
To: Vicente Bergas <vicencb@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Douglas Anderson <dianders@chromium.org>, crj <algea.cao@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
References: <20201201160613.1419-1-vicencb@gmail.com>
 <CAAMcf8B9HNkZie6nbkBugcteJOLUhWhHVhjKxkH1sPrTU4k+xw@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <b57e53c4-16f1-a4a7-ee29-eeb7dc37a8d2@arm.com>
Date: Mon, 14 Dec 2020 12:06:09 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <CAAMcf8B9HNkZie6nbkBugcteJOLUhWhHVhjKxkH1sPrTU4k+xw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201214_070628_756351_89A18FDC 
X-CRM114-Status: GOOD (  13.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 2020-12-14 11:03, Vicente Bergas wrote:
> On Tue, Dec 1, 2020 at 5:06 PM Vicente Bergas <vicencb@gmail.com> wrote:
>> This patch enables a QHD HDMI monitor to work at native resolution.
> 
> Please, anybody?

Has anyone been able to validate this on other SoCs? I guess that's 
still the main concern - empirically I've found that clock rates that 
work perfectly on RK3399 can be glitchy on RK3288 to the point of being 
barely usable, and can result in no display at all on chips not using 
the Synopsys phy, like RK3328, where the HDMI driver considers the mode 
valid but later the phy driver is unable to match it.

I don't have access to a QHD display to test this myself; I've only 
played around with weirder 4:3, 5:4 and 16:10 modes on PC monitors.

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
