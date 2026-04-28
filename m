Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A277FF886D
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 18:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3K+nLgCgFaRcseE8OTSG1pwK+aS0McLl2BejBvIU3Js=; b=O5TErWwRkMwen9
	wIf2m1zizM2NIf3KqgOMS7u4C2PdzFPOGcbiEX7Itl3hHvcI5kUG3AjKppTlNIHrhiIki9Mtd1VzY
	L9eRYQTbE50Jv6xV3YneaavDyqkE9bw8JCY6d4xgu6r3/Z1FkaTFZKILMkYsVgXxUAzCFQz5UnqNN
	90ICFqHqcIMiCcb5/gDYyIjDVsz1Guk29Tx//jiiDSuOqUm3KAqxOeeSex3wdbSInQijOaRhHxhiO
	+/lvuKpJ8JcaOe22fT6pSvj0XeBZiU+5mUINnnDUaBEuvAoxnbFxwbUVLaOU5D98CausNANkg6+F7
	n4Nsp6gTVQj/C7mvrlYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHnes-0000000284O-2sa4;
	Tue, 28 Apr 2026 18:59:46 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHneq-0000000283z-0j2O
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 18:59:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1777402782;
 bh=VrnMB3tcOj8bZAULg2P4zrD7zgFL+si25Q7plTnnH7Y=;
 b=Wothmz9g1h3hB0ZIPNZIUbK/Hf8C++tAKBfWICHkzVPx6uUXvg3VORfoFQP34P0LuzucoRo2q
 rr5WTqelFquUucX73U7d9tBi/9cdkglX0clc3hE90nLKJf4aJMrKVgaeAYHr5+/yInZ1RPDQVh/
 IvV4pnulusBcx2IN+Ddpb3ESIdUcy6qXcaMrvmBPjygFODqCk6VrcUhv+F30FGVcTPIm7V5kWkE
 a0ecPzBZ9AUxZ8uJV6uQDEqW1EYkYhEa0FxOkI+rLmsziZk7UH5XVD/DsUcCSAqEqhe+gsiZL+Y
 Gb5WhbN0clEUGX4S1xmcqE4Ewt+E5MFxkovpnqpo7TxQ==
X-Forward-Email-ID: 69f1039ca2c58f47e2132447
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.7.7
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <c77eb179-37b6-4de8-9fb2-2b095f06d462@kwiboo.se>
Date: Tue, 28 Apr 2026 20:59:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/13] drm: bridge: dw_hdmi: Use
 drm_connector_helper_hpd_irq_event()
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20260403185303.80748-1-jonas@kwiboo.se>
 <20260403185303.80748-11-jonas@kwiboo.se>
 <6n44goy63rcd44r3l3qliqgybd7f7kn7p3ktosrjdtphuid5hj@lkigypdzbn3q>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <6n44goy63rcd44r3l3qliqgybd7f7kn7p3ktosrjdtphuid5hj@lkigypdzbn3q>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_115944_334162_E3D4E2A8 
X-CRM114-Status: GOOD (  17.73  )
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

Hi Dmitry,

On 4/28/2026 2:40 PM, Dmitry Baryshkov wrote:
> On Fri, Apr 03, 2026 at 06:52:56PM +0000, Jonas Karlman wrote:
>> Use drm_connector_helper_hpd_irq_event() or drm_helper_hpd_irq_event()
>> depending on if a dw-hdmi connector or bridge is used.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>> v3: New patch
>> ---
>>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 7 +++++--
>>  1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> index 4d079b689b3b..4a0498922476 100644
>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>> @@ -3054,10 +3054,13 @@ static void dw_hdmi_hpd_work(struct work_struct *work)
>>  {
>>  	struct dw_hdmi *hdmi = container_of(work, struct dw_hdmi, hpd_work.work);
>>  
>> -	if (hdmi->bridge.dev) {
>> +	if (hdmi->connector.dev)
>> +		drm_connector_helper_hpd_irq_event(&hdmi->connector);
>> +	else if (hdmi->bridge.dev)
>>  		drm_helper_hpd_irq_event(hdmi->bridge.dev);
> 
> Okay, following the comment to the previous patch it should rather
> become:
> 
> 	if (hdmi->bridge.dev)
> 		drm_bridge_hpd_notify(&hdmi->bridge, hdmi->last_connector_result);
> 	else if (hdmi->connector.dev)
> 		drm_connector_helper_hpd_irq_event(&hdmi->connector);

I will likely just drop this patch in a v4, as current ongoing work to
convert dw-hdmi to use a bridge connector and become a hdmi bridge fully
reverts the change introduced in this patch. See [1] for current
work-in-progress snapshot of such ongoing work.

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20260427-rk-hdmi-v2/

Regards,
Jonas

> 
>> +
>> +	if (hdmi->bridge.dev)
>>  		drm_bridge_hpd_notify(&hdmi->bridge, hdmi->last_connector_result);
>> -	}
>>  }
>>  
>>  static irqreturn_t dw_hdmi_irq(int irq, void *dev_id)
>> -- 
>> 2.53.0
>>
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
