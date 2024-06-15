Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57EE2C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 21:58:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XuUNqJsVITanWhmvK8SEUA5WcsoGdp/5ruFO0tzSnMA=; b=debmo/vtedTuKV
	h4HjbVqkcKib1VaEtSJGliZ+i5Mbq7cvY0vR5dg4tqdcRUpO02GXP7dNqO5Xlev/FcNYr4SC96onQ
	SPc7ym2mCexScgsTARvKgyhizchTrPIEttVIUb9stIq7+tp6NaB+eeH9ZlQETZDIAyyPlA5Omy8Uj
	3+clHF2PnNcg53fukRy/p/dOONEvXpPwFHrK+GgExQ32Sy+7DQ1puMQWdAy/IXHRZ5yP96oLe9ETH
	vlCVro46ffJperTnFd5G59W3VQ/H8SHH2TRkQGWgO/6Gq/6cQt66y4DwWo5hb6+0YPLOOS/nArGHp
	wMWhEAFJKCfHKXSu/fzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIbPg-00000006Avn-3zpw;
	Sat, 15 Jun 2024 21:58:20 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIbPd-00000006AuL-17dD
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 21:58:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1718488674;
 bh=CV/mgUWgMh4+uV6CKW6yanETiH58y91gnPr01uQkQ8k=;
 b=UVn4OWKjypaU+NM3VrcShJnaPz42ArY3uHbpDfMAjfG72ySTdUU4EwLn7Nwl6CvqsbpDTOTF9
 3di3dl/H60nAr7nF3epMiJHFdZnQbLfx0iktuRcvF+4IWiy5zB+ETUEV2sa9co4tPXKKc7qv8d6
 02vEGhoumsScvcvjHxCh6qwv1p62OpQ62vUAm/lq4fwlZ9j5xVCdBXa5wkezHBI/9IG8seUXm2R
 3Tci24wzeOJb3huCJhy6DnZVFPXY/A41L/P0BVjHXqZYZowLc6NPq34DVu8v/60siHgCAJze5eP
 6Zb9TAGw3V4c9YVtqD9Y/VpLGYTV5Qh+wo8eHLJpz8BQ==
Message-ID: <ff18a3dd-3e39-4dfd-8e0f-6401b3df531c@kwiboo.se>
Date: Sat, 15 Jun 2024 23:57:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/13] drm/rockchip: dw_hdmi: Add max_tmds_clock
 validation
To: Diederik de Haas <didi.debian@cknow.org>
Cc: dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>,
 "=?UTF-8?Q?Heiko_St=C3=BCbner?=" <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240615170417.3134517-1-jonas@kwiboo.se>
 <20240615170417.3134517-7-jonas@kwiboo.se> <2357044.LC0K3s5jzQ@bagend>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <2357044.LC0K3s5jzQ@bagend>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 666e0e5eb23880544d1f8be8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_145817_600186_ECDDAC4F 
X-CRM114-Status: UNSURE (   5.13  )
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

Hi Diederik,

On 2024-06-15 23:53, Diederik de Haas wrote:
> On Saturday, 15 June 2024 19:03:57 CEST Jonas Karlman wrote:
>> The rate limit for RK3288, RK3399 and RK3568 is based on current mpll
>> table. The rate limit for RK3228 and RK3228 is based on the
>> inno-hdmi-phy pre-pll table.
> 
> I see RK3228 mentioned twice; I guess the second should be RK3328?

You are correct, a copy/paste error, thanks and I will fix in v2.

Regards,
Jonas

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
