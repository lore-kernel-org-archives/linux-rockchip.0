Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3514CCD5BCA
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 11:19:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bZKgnBJ/f/VfA0GVONKLrR/IISHTFQtMTTdlq+Qsp1A=; b=BUayZdWR8ILij4
	/2isA+Y3LTV5+KDXW5ck2LL8/lXMoWdeJHlZO+HZGRHl8JW7lpRl9Zy3X3FZY9GQKKZYLLivW/IFU
	8Byv1nNlfoBizacPRdATAdnKZhLCM7j+CJMibNSjLg8mJvotVDty8VPTVcqKmS62HqrixAjMKWUVw
	e7qYeNpUHZOaHJ3PmfdzrjaNTtKnDQeaW4HGsWV8Doh/Agt8T7BlWUKvyM6Gao1s+trS8PpeUFlxq
	iMoQPRmdmGbBlajxxey3uS7c2KVHGKDYvM6Eu3pVSBb0wzCDDkVZD5Xaze21kXcKnDYTheQCXIYoe
	nB7dYhQsnsmy4S2r8BOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJVLq-0000000ANQo-0NOB;
	Thu, 13 Nov 2025 11:18:54 +0000
Received: from out-187.mta1.migadu.com ([95.215.58.187])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJVLm-0000000ANPw-3wGH
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 11:18:52 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1763032718;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=C+r3eA7uqjYviG5Wbo7UxLrUTDN7ePU6jG8MMKZBMMA=;
	b=RJ40f5UZpL+AYew0HKB3Ry38U/jj0BY+uYJilws9y2DZDU9YIyC5HmOU8C8hRQ4YjgUhvf
	0wZ6+z/JUelK8f5JxA6G9Ed+Q+ptcnrvdz9NkqNzJEfDrFwKjsPHgF5ZuaByEYgqFyontT
	SaKpUYpQ9wXtNskzxYj3/+Bjm97+7+RfuxuO5oMCGDI04ns5jPrD4OLUXvsme6H5w4UykS
	1HL62VZP/mV0Ioyt1uDv/yVRsZ2u4i9Q2E4W1f9Wa6LcKf8A8dWf0PC8CxZ8bTqtX1nKco
	kzqeEaRzmGZP/OrF7kvUaHs38mlDYj9OC8c6mhADKRu5h/k5SobOqRT47hBpGw==
Date: Thu, 13 Nov 2025 12:18:17 +0100
Message-Id: <DE7IXK6SWV7J.3B9AOCCGWT4EH@cknow-tech.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Dang Huynh" <dang.huynh@mainlining.org>, "Andy Yan" <andyshrk@163.com>
Cc: <heiko@sntech.de>, <hjc@rock-chips.com>, <diederik@cknow-tech.com>,
 <dri-devel@lists.freedesktop.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <linux-rockchip@lists.infradead.org>, "Andy
 Yan" <andy.yan@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop2: Use OVL_LAYER_SEL configuration
 instead of use win_mask calculate used layers
References: <20251112085024.2480111-1-andyshrk@163.com>
 <hrg6geclph37olvqr3o5v4d4mifvl25kaemh7f2z3hwega7h2b@muf2gkfqzvvz>
In-Reply-To: <hrg6geclph37olvqr3o5v4d4mifvl25kaemh7f2z3hwega7h2b@muf2gkfqzvvz>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_031851_271904_1FFE5388 
X-CRM114-Status: GOOD (  22.60  )
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

On Thu Nov 13, 2025 at 9:11 AM CET, Dang Huynh wrote:
> Hi Andy,
>
> This fix works on my device. No more black box around the cursor.
>
> Tested-by: Dang Huynh <dang.huynh@mainlining.org>

Thanks for testing and your Tested-by tag :-D

FYI: Apparently something went wrong with delivery it as it only arrived
at LKML, but not dri-devel, linux-arm-kernel or linux-rockchip MLs.
No idea if that's problematic (for b4 f.e.) though.

'lore' has it here:
https://lore.kernel.org/all/hrg6geclph37olvqr3o5v4d4mifvl25kaemh7f2z3hwega7h2b@muf2gkfqzvvz/

Cheers,
 Diederik

> On Wed, Nov 12, 2025 at 04:50:23PM +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>> 
>> When there are multiple Video Ports, and only one of them is working
>> (for example, VP1 is working while VP0 is not), in this case, the
>> win_mask of VP0 is 0. However, we have already set the port mux for VP0
>> according to vp0->nlayers, and at the same time, in the OVL_LAYER_SEL
>> register, there are windows will also be assigned to layers which will
>> map to the inactive VPs. In this situation, vp0->win_mask is zero as it
>> now working, it is more reliable to calculate the used layers based on
>> the configuration of the OVL_LAYER_SEL register.
>> 
>> Note: as the configuration of OVL_LAYER_SEL is take effect when the
>> vsync is come, so we use the value backup in vop2->old_layer_sel instead
>> of read OVL_LAYER_SEL directly.
>> 
>> Fixes: 3e89a8c68354 ("drm/rockchip: vop2: Fix the update of LAYER/PORT select registers when there are multi display output on rk3588/rk3568")
>> Reported-by: Diederik de Haas <diederik@cknow-tech.com>
>> Closes: https://bugs.kde.org/show_bug.cgi?id=511274
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> ---
>> 
>>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 49 +++++++++++++++++---
>>  1 file changed, 42 insertions(+), 7 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>> index d22ce11a4235..f3950e8476a7 100644
>> --- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>> +++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
>> @@ -1369,6 +1369,25 @@ static const struct vop2_regs_dump rk3588_regs_dump[] = {
>>  	},
>>  };
>>  
>> +/*
>> + * phys_id is used to identify a main window(Cluster Win/Smart Win, not
>> + * include the sub win of a cluster or the multi area) that can do overlay
>> + * in main overlay stage.
>> + */
>> +static struct vop2_win *vop2_find_win_by_phys_id(struct vop2 *vop2, uint8_t phys_id)
>> +{
>> +	struct vop2_win *win;
>> +	int i;
>> +
>> +	for (i = 0; i < vop2->data->win_size; i++) {
>> +		win = &vop2->win[i];
>> +		if (win->data->phys_id == phys_id)
>> +			return win;
>> +	}
>> +
>> +	return NULL;
>> +}
>> +
>>  static unsigned long rk3568_set_intf_mux(struct vop2_video_port *vp, int id, u32 polflags)
>>  {
>>  	struct vop2 *vop2 = vp->vop2;
>> @@ -1842,15 +1861,31 @@ static void vop2_parse_alpha(struct vop2_alpha_config *alpha_config,
>>  	alpha->dst_alpha_ctrl.bits.factor_mode = ALPHA_SRC_INVERSE;
>>  }
>>  
>> -static int vop2_find_start_mixer_id_for_vp(struct vop2 *vop2, u8 port_id)
>> +static int vop2_find_start_mixer_id_for_vp(struct vop2_video_port *vp)
>>  {
>> -	struct vop2_video_port *vp;
>> -	int used_layer = 0;
>> +	struct vop2 *vop2 = vp->vop2;
>> +	struct vop2_win *win;
>> +	u32 layer_sel = vop2->old_layer_sel;
>> +	u32 used_layer = 0;
>> +	unsigned long win_mask = vp->win_mask;
>> +	unsigned long phys_id;
>> +	bool match;
>>  	int i;
>>  
>> -	for (i = 0; i < port_id; i++) {
>> -		vp = &vop2->vps[i];
>> -		used_layer += hweight32(vp->win_mask);
>> +	for (i = 0; i < 31; i += 4) {
>> +		match = false;
>> +		for_each_set_bit(phys_id, &win_mask, ROCKCHIP_VOP2_ESMART3) {
>> +			win = vop2_find_win_by_phys_id(vop2, phys_id);
>> +			if (win->data->layer_sel_id[vp->id] == ((layer_sel >> i) & 0xf)) {
>> +				match = true;
>> +				break;
>> +			}
>> +		}
>> +
>> +		if (!match)
>> +			used_layer += 1;
>> +		else
>> +			break;
>>  	}
>>  
>>  	return used_layer;
>> @@ -1935,7 +1970,7 @@ static void vop2_setup_alpha(struct vop2_video_port *vp)
>>  	u32 dst_global_alpha = DRM_BLEND_ALPHA_OPAQUE;
>>  
>>  	if (vop2->version <= VOP_VERSION_RK3588)
>> -		mixer_id = vop2_find_start_mixer_id_for_vp(vop2, vp->id);
>> +		mixer_id = vop2_find_start_mixer_id_for_vp(vp);
>>  	else
>>  		mixer_id = 0;
>>  
>> -- 
>> 2.43.0
>> 
>> base-commit: ded94ec6167e84195507237100f6278941e36fdd
>> branch: drm-misc-next-2025-1016
>> 
>> 
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
