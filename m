Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08C64C78829
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 11:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOHNzlMiWh5U75I0zi1PPzihpDwu5kTWeZvM1eAFJzg=; b=XmMBz54skDr/5c
	LluLPDvntaYm8eZTQTenRjxL4RIglyLgtn2Qkynr9CptjuJ3D60Uoil/jA79y08IFV0IV5vD84qSB
	QTSxIP4kX+YmTvEWy3DA5EfqVKLpj1gxGCepXq8wcMhn/4RY0YkQ7tLkAu2gG9PlsC/yqqvVqCVkt
	5p5ToyKB2g9ijiJrJfjaw9j8Q1AJ7dHGxTjVZKKzS7z231PU/huzhLKF6OOtpKopzIsZvSSRzvn7u
	lc2tDTYosDtjufKZuMclL5B2oMCcjQ1plPkQjtEzMcQtsfd0TmxIdcDTVlVKwxkgjXi7P8U8fg1Um
	kUQbS59jF/EZrPlwLxNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srcB4-0000000C7er-0mF2;
	Fri, 20 Sep 2024 11:51:58 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srcB1-0000000C7de-3PaS
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Sep 2024 11:51:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1726833086;
 bh=YPYl+tQZMmhVuW6En3H83eNOir+B/MTvUugkSsrwG3g=;
 b=yWephCPcdKbqZrgliyZJ2a8vG4GFOgXt4ac2rxzbR6w5qDyhlf7rtqRriTdZbn1t9l2MAxn4K
 is/6vT457mtJ2nqFWW1nZk7J0LGhhxOBAIjgc1rFOe5QEfkxRZxbA1oRNsqbv9NAfqLd3AhJrwM
 m6M9X31T4WgkqRe+kwHUS7ogUFF+v3wU8HnB/5v3FpLyfZEadTwE8603m8YWRY8Ss023PfNUuTK
 bgHLfLyvKHjwX3iq385GGpTXtwk06ID8jdc8yqpIg1VD9tonwGpSyQ3/f9HtMU9FHOFAvtHmSXx
 CFPY1CD4KMdb7U7VSN2D8wf8pniHu0/htXZ8vo8GqXIg==
Message-ID: <5cdd34d6-76e4-4ee1-aaff-93894857ec2a@kwiboo.se>
Date: Fri, 20 Sep 2024 13:51:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/10] drm: bridge: dw_hdmi: Update EDID during hotplug
 processing
To: neil.armstrong@linaro.org, Maxime Ripard <mripard@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240908132823.3308029-1-jonas@kwiboo.se>
 <20240908132823.3308029-10-jonas@kwiboo.se>
 <4bc6a5e6-f2cf-43ab-8555-4f8aaf9f2cd0@linaro.org>
 <0dcb03be-dae1-4dcb-84d8-6ec204eab6ba@kwiboo.se>
 <e865e42c-a528-45bb-bdf5-df1cd103e695@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <e865e42c-a528-45bb-bdf5-df1cd103e695@linaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 66ed61bd012156b78323792b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_045156_404956_04966601 
X-CRM114-Status: GOOD (  27.71  )
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

On 2024-09-20 09:04, neil.armstrong@linaro.org wrote:
> On 19/09/2024 22:34, Jonas Karlman wrote:
>> Hi Neil,
>>
>> On 2024-09-13 10:02, Neil Armstrong wrote:
>>> On 08/09/2024 15:28, Jonas Karlman wrote:
>>>> Update successfully read EDID during hotplug processing to ensure the
>>>> connector diplay_info is always up-to-date.
>>>>
>>>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>>>> ---
>>>> v2: No change
>>>> ---
>>>>    drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 12 ++++++++++++
>>>>    1 file changed, 12 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>>> index c19307120909..7bd9f895f03f 100644
>>>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>>> @@ -2457,6 +2457,18 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>>>>    
>>>>    	status = dw_hdmi_detect(hdmi);
>>>>    
>>>> +	/* Update EDID during hotplug processing (force=false) */
>>>> +	if (status == connector_status_connected && !force) {
>>>> +		const struct drm_edid *drm_edid;
>>>> +
>>>> +		drm_edid = dw_hdmi_edid_read(hdmi, connector);
>>>> +		if (drm_edid)
>>>> +			drm_edid_connector_update(connector, drm_edid);
>>>> +		cec_notifier_set_phys_addr(hdmi->cec_notifier,
>>>> +			connector->display_info.source_physical_address);
>>>> +		drm_edid_free(drm_edid);
>>>> +	}
>>>> +
>>>>    	if (status == connector_status_disconnected)
>>>>    		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
>>>>    
>>>
>>> I wonder why we should read edid at each dw_hdmi_connector_detect() call,
>>> AFAIK it should only be when we have HPD pulses
>>
>> That is what this change intends to help do.
>>
>> As stated in the short comment EDID is only updated at HPD processing,
>> i.e. when force=false. To be on the safe side EDID is also only updated
>> here when connected and EDID could be read.
>>
>> drm_helper_probe_detect() is called with force=true in the
>> fill_modes/get_modes call path that is triggered by userspace
>> or the kernel kms client.
>>
>> After a HPD interrupt the call to drm_helper_hpd_irq_event() will call
>> check_connector_changed() that in turn calls drm_helper_probe_detect()
>> with force=false to check/detect if connector status has changed. It is
>> in this call chain the EDID may be read and updated in this detect ops.
>>
>> Reading EDID here at HPD processing may not be fully needed, however it
>> help kernel keep the internal EDID state in better sync with sink when
>> userspace does not act on the HOTPLUG=1 uevent.
> 
> 
> I understand but if somehow a dw-hdmi integration fails to have HDP working
> properly, EDID will be read continuously which is really not what we want.

I do not fully understand when or how that could happen.

The dw_hdmi_detect() -> phy.ops->read_hpd() call chain only return
connected status when HPD is high, for what I can see from all current
integrations.

The default dw_hdmi_phy_read_hpd() used by all but meson should only
return connected status when the HPD is high:

	return hdmi_readb(hdmi, HDMI_PHY_STAT0) & HDMI_PHY_HPD ?
		connector_status_connected : connector_status_disconnected;

DRM_CONNECTOR_POLL_HPD is also used for all integrations so there should
not be any polling happening that would trigger multiple detect calls.

I guess this could/should be improved to also check for the polled type
to not cause multiple unnecessary EDID reads, in case a future
integration need to poll connector status.

> 
> HDMI 1.4b specifies in Section 8.5 and Appendix A:
> ============><==========================================
> An HDMI Sink shall not assert high voltage level on its Hot Plug Detect pin when the E-EDID
> is not available for reading.
> An HDMI Sink shall indicate any change to the contents of the E-EDID by driving a low
> voltage level pulse on the Hot Plug Detect pin. This pulse shall be at least 100 msec.
> ============><==========================================
> 
> So this is OK with the first sentence, and should also work with the second one because
> right after the pulse we will read the EDID again, but I think we should have a much
> more robust way to detect those 100ms pulses, no ?

Using a work queue to debounce reacting on HPD event for >100 ms when
HPD goes from high to low and a few ms when it goes from low to high
could probably further prevent unnecessary detect calls, and also help
avoid a possible unnecessary disable/enable cycle.

I have not seen anything other in core that handles the EDID refresh in
any special way, but I may have missed something?

Will try to use a debounce work queue to delay any calls to
helper_hpd_irq_event() and drm_bridge_hpd_notify() and see if that could
improve the HPD handling.

Regards,
Jonas

> 
> Maxime, do you have an opinion on this ?
> 
> Neil
> 
>>
>> Regards,
>> Jonas
>>
>>>
>>> Neil
>>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
