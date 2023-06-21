Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62518EB64D7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 15:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K4JVEYDx6u+rnm9tgeRVzlQQ8za/BV86LCwg4QD4htk=; b=Kw8Kk0+sCjra1I
	ufTcJ0NR6JACYb12Rlft2sYFqEJ2JBP9511p36YOFmL69hovjSusjVkzAMZ5M/BbdVKwhsEaOv+w2
	sB1KMg6gmNvcAKr5YOgrsOcEn/YE4x2BpD4Bc8DIfgGhZpqU7pbfzsCOHor9DOlzqsMcSbcCai+rI
	Nk9oX3x3gnliYxr29ZlNeNguaLmFOLvdffMWwy9cxRxbyWFyriMLrcyxKWjZeP3cOuSSFK/PHauIO
	EGiwTfo/F00yi3DjNcQTLPlImB7Wu8/0SHBFzDoKRWrfjD4BW5BDrEqcfGsnTDzlnQGNaoYufJCtI
	qrzuVZYo68OHGLw3XLKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzy0-00Ez4n-15;
	Wed, 21 Jun 2023 15:41:56 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBzxy-00Ez3K-0e
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 15:41:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=8+jSZYNVSR48321s/oSCWt0Vx0TuZhHVNXzSvj6Jubw=;
	b=ZMJbFTe/D3Y3fpJsgbD+xG8inBdcqgJJm4S+6tintXoPTGXQ7Y2APOwTQPySoEH+AEvV
	lnahvLL3hgEmCak2r7ltJIJvut9FCvRUr3rgV4bYtQKbAJiYR3BAphQ7077tyUaYdlyPUB
	caU5+aRl66KAgrYL1AUlXXnXjdcIFWJGZXgVs+ZdROmPzZd3X7MDiv0PPYHa19a0MVj1Un
	CM1gKbzCGYVWqei89WIEzlBE1x0wM/2yV66HHD1cKsTcwfZtKTxRmAj+oL4oX6S8pq+LDp
	syffKEZiJiNM9h1K06nMqnOTRvCXYcz3m9vMmagvRPqygV1hjResjDCdLVodnWPg==
Received: by filterdrecv-77869f68cc-4lhvt with SMTP id filterdrecv-77869f68cc-4lhvt-1-64931A39-63
        2023-06-21 15:41:45.772147988 +0000 UTC m=+3600334.020172255
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-5 (SG) with ESMTP
	id 1CQkqm0ERMy9gnj9PBUTmw
	Wed, 21 Jun 2023 15:41:45.457 +0000 (UTC)
Message-ID: <1f20a832-6339-0feb-3647-cea7598e60be@kwiboo.se>
Date: Wed, 21 Jun 2023 15:41:46 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 4/4] drm/rockchip: vop2: Add missing call to crtc reset
 helper
References: <20230620064732.1525594-1-jonas@kwiboo.se>
 <20230620064732.1525594-5-jonas@kwiboo.se>
 <20230621081151.GY18491@pengutronix.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20230621081151.GY18491@pengutronix.de>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h7SRAqrjZghh+BUwH?=
 =?us-ascii?Q?PaDHTn0zfJUkykOFCOQaqgs9WhKZwljx1UFMUli?=
 =?us-ascii?Q?64cy78z0MEgFsiULaIXkYPjkvJPN0lLnPLDNXRx?=
 =?us-ascii?Q?6cf=2FgmqtPD8OJNteYQHNDlrOJW50T=2FL0SHQuw+D?=
 =?us-ascii?Q?r7R=2FBefOvIAZfheYh1s9t0e2D4TWM5=2Fq5IAYFq+?=
 =?us-ascii?Q?LxKTkD6u9gEWcvveknHfw=3D=3D?=
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>, Andy Yan <andy.yan@rock-chips.com>, Mark Yao
	<markyao0591@gmail.com>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_084154_336922_01BD1924 
X-CRM114-Status: GOOD (  14.82  )
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

On 2023-06-21 10:11, Sascha Hauer wrote:
> On Tue, Jun 20, 2023 at 06:47:39AM +0000, Jonas Karlman wrote:
>> Add missing call to crtc reset helper to properly vblank reset.
>>
>> Also move vop2_crtc_reset and call vop2_crtc_destroy_state to simplify
>> and remove duplicated code.
>>
>> Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 28 ++++++++------------
>>  1 file changed, 11 insertions(+), 17 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> index f725487d02ef..1be84fe0208f 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
>> @@ -2080,23 +2080,6 @@ static const struct drm_crtc_helper_funcs vop2_crtc_helper_funcs = {
>>  	.atomic_disable = vop2_crtc_atomic_disable,
>>  };
>>  
>> -static void vop2_crtc_reset(struct drm_crtc *crtc)
>> -{
>> -	struct rockchip_crtc_state *vcstate = to_rockchip_crtc_state(crtc->state);
>> -
>> -	if (crtc->state) {
>> -		__drm_atomic_helper_crtc_destroy_state(crtc->state);
>> -		kfree(vcstate);
>> -	}
>> -
>> -	vcstate = kzalloc(sizeof(*vcstate), GFP_KERNEL);
>> -	if (!vcstate)
>> -		return;
>> -
>> -	crtc->state = &vcstate->base;
>> -	crtc->state->crtc = crtc;
>> -}
>> -
>>  static struct drm_crtc_state *vop2_crtc_duplicate_state(struct drm_crtc *crtc)
>>  {
>>  	struct rockchip_crtc_state *vcstate;
>> @@ -2123,6 +2106,17 @@ static void vop2_crtc_destroy_state(struct drm_crtc *crtc,
>>  	kfree(vcstate);
>>  }
>>  
>> +static void vop2_crtc_reset(struct drm_crtc *crtc)
>> +{
>> +	struct rockchip_crtc_state *vcstate =
>> +		kzalloc(sizeof(*vcstate), GFP_KERNEL);
>> +
>> +	if (crtc->state)
>> +		vop2_crtc_destroy_state(crtc, crtc->state);
>> +
>> +	__drm_atomic_helper_crtc_reset(crtc, &vcstate->base);
>> +}
> 
> You missed to check for allocation failures before using vcstate.

Good catch, I will fix for both vop and vop2 driver in v2.

Regards,
Jonas

> 
> Sascha
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
