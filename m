Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4BBEFF886C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 21:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZC8Sly8y8vDhbAcfb8yErtwZtMhZabsfdZBzSggpy+k=; b=m/b2Yk28RjI92k
	Vlzp3i6ShxZuYba3canbF6JJ/BI5m0t2wLJNGCr38QpL+QkZtbYJfW+lL48WVXL6vu3+zDNJZBm6/
	OKG20d3ccIdgcXxclrGWOuwyAB0U0OgEd/idN/hEIokha7NDeVTU08kyCWHfQ2/5RNycNpidBME7I
	tXd1Nfu2gppQ/q1O+Hfhk9r2Uk16acT2/fpF//v4SjSyBANNn7rwtf8hsz+/Ix+iI75XrvTRz7How
	U3RELyHtykJpE4ChGrUgOI5URX/nE+qgepV6rPPmbgHo+xCUdyfjFbOL/I3VRQenMljRvvqH9dt16
	/BSzV00d/I0df5RSvloQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHqHX-00000002XQV-2MI0;
	Tue, 28 Apr 2026 21:47:51 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHqHU-00000002XQA-36mD
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 21:47:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1777412867;
 bh=pxCJ+++bBE0yWxaWf/E/QQhHNdpiwlyziZIU2sxikek=;
 b=VXRp2J7O6QV82KqPhNEXaNm8bhh7GcKs8A36DXTGT/KvWImimbViMUlfVtIPBrsf25Lw1k3Bu
 ibiLXLlhaNdW7AZjmuVYitHsvWn6rUQV9om9IVxMbYQn+xIp81diME6clBWMVXqSn4P42qQDoEK
 hbHwJ1o1J7Gnp4YZVLV4Lb9Iq4W1vQi3Ao1h19DTl4mtGachHoySSCQ6gl1ZfJUHsn6kMMX5Hzm
 AWdGGvsuoNmZ3U3x7YgdXlnLRXKziMHQaU4z0DsnmGz8y1QJ7Z1K3iI9qHDkx4hmYRg/AgIIeij
 SL05ylEEY1qAiQkxflM8kLuiEY7yww3Q6RgPFUB2ISWg==
X-Forward-Email-ID: 69f12b0027b77de10e4211a1
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.7.7
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <4f69e6f2-fb26-4b41-b1a7-d6f16f0191bc@kwiboo.se>
Date: Tue, 28 Apr 2026 23:47:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 12/13] drm: bridge: dw_hdmi: Use
 dw_hdmi_connector_status_update()
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260403185303.80748-1-jonas@kwiboo.se>
 <20260403185303.80748-13-jonas@kwiboo.se>
 <PBiPnzTQRjaAl3CkZ0Zsjw@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <PBiPnzTQRjaAl3CkZ0Zsjw@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_144749_198382_1068B13E 
X-CRM114-Status: GOOD (  20.85  )
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

Hi Nicolas,

On 4/28/2026 1:53 PM, Nicolas Frattaroli wrote:
> On Friday, 3 April 2026 20:52:58 Central European Summer Time Jonas Karlman wrote:
>> Update connector EDID and CEC phys addr from detect and force funcs to
>> ensure that userspace always have access to latest read EDID after a
>> sink use a HPD low voltage pulse to indicate that EDID has changed.
>>
>> With EDID being updated in detect and force funcs, there should no
>> longer be a need to re-read EDID in get_modes funcs, so drop it.
>>
>> This change make the dw-hdmi connector work more closely like the bridge
>> connector does with a hdmi bridge.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>> v3: Reworked 'Update EDID during hotplug processing' patch
>> ---
>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 24 +++++++++++++----------
>>  1 file changed, 14 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> index 0d42fdf9a386..5b5654ef6015 100644
>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> @@ -2474,33 +2474,36 @@ dw_hdmi_connector_status_update(struct drm_connector *connector,
>>  	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
>>  	const struct drm_edid *drm_edid;
>>  
>> +	if (status == connector_status_disconnected) {
>> +		drm_edid_connector_update(connector, NULL);
>> +		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
>> +		return;
>> +	}
>> +
>>  	drm_edid = dw_hdmi_edid_read(hdmi, connector);
>>  	drm_edid_connector_update(connector, drm_edid);
>>  	drm_edid_free(drm_edid);
>>  
>> -	cec_notifier_set_phys_addr(hdmi->cec_notifier,
>> -				   connector->display_info.source_physical_address);
>> +	if (status == connector_status_connected)
>> +		cec_notifier_set_phys_addr(hdmi->cec_notifier,
>> +				connector->display_info.source_physical_address);
>>  }
>>  
>>  static enum drm_connector_status
>>  dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>>  {
>> -	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
>> -					     connector);
>> +	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
>>  	enum drm_connector_status status;
>>  
>>  	status = dw_hdmi_detect(hdmi);
>>  
>> -	if (status == connector_status_disconnected)
>> -		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
>> +	dw_hdmi_connector_status_update(connector, status);
>>  
>>  	return status;
>>  }
>>  
>>  static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
>>  {
>> -	dw_hdmi_connector_status_update(connector, connector->status);
>> -
>>  	return drm_edid_connector_add_modes(connector);
>>  }
> 
> Are we absolutely sure status_update is called before this, so that the
> EDID doesn't need to be re-read? E.g. drm_connector_helper_get_modes
> does do an EDID read beforehand.

With the change to re-read EDID at .detect() we should not need to
re-read EDID at .get_modes(). This also closely match how the bridge
connector handle EDID update at .detect() and not .get_modes() for hdmi
bridges.

At least following call paths should ensure EDID have been re-read:

drm_helper_probe_single_connector_modes():
 -> connector->funcs->force()
    -> dw_hdmi_connector_force()
       -> dw_hdmi_connector_status_update()
          -> drm_edid_connector_update()             <<-- here
 -> drm_helper_probe_detect()
    -> detect_connector_status()
       -> connector->funcs->detect();
          -> dw_hdmi_connector_detect()
             -> dw_hdmi_connector_status_update()
                -> drm_edid_connector_update()       <<-- or here
 -> drm_helper_probe_get_modes()
    -> connector_funcs->get_modes()
       -> dw_hdmi_connector_get_modes()              <<-- now updated

drm_helper_hpd_irq_event():
 -> detect_connector_status()
    -> connector->funcs->detect();
       -> dw_hdmi_connector_detect()
          -> dw_hdmi_connector_status_update()
             -> drm_edid_connector_update()          <<-- also after HPD

> Speaking of which: if we had connector->ddc set, we could just use
> drm_connector_helper_get_modes for this callback. But maybe it's not
> worth spending the time refactoring the resource handling around
> hdmi->ddc when the eventual goal is to refactor this all into using
> a bridge connector anyway.

Correct, hopefully all connector related functions can be dropped from
dw-hdmi in a near future when dw-hdmi is converted to a hdmi bridge.

I currently have a work-in-progress snapshot at [1] where dw-hdmi have
been converted to a hdmi bridge and a bridge connector is used instead.

The changes in this series only aim to align dw-hdmi to the hdmi bridge
where possible to reduce any functional change in such future series.

I will likely keep this as-is in a v4 unless there is some objections.

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20260427-rk-hdmi-v2/

Regards,
Jonas

>>  
>> @@ -2530,14 +2533,15 @@ static int dw_hdmi_connector_atomic_check(struct drm_connector *connector,
>>  
>>  static void dw_hdmi_connector_force(struct drm_connector *connector)
>>  {
>> -	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
>> -					     connector);
>> +	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi, connector);
>>  
>>  	mutex_lock(&hdmi->mutex);
>>  	hdmi->force = connector->force;
>>  	hdmi->last_connector_result = connector->status;
>>  	dw_hdmi_update_phy_mask(hdmi);
>>  	mutex_unlock(&hdmi->mutex);
>> +
>> +	dw_hdmi_connector_status_update(connector, connector->status);
>>  }
>>  
>>  static const struct drm_connector_funcs dw_hdmi_connector_funcs = {
>>
> 
> 
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
