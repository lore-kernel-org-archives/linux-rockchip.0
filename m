Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C384CF58DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Sep 2024 07:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TiKBhCOHgBYFO0cobLuNlzwCp45OtrfxnB1fo5JHH14=; b=VXBGSKlH1ao8RQYpk4kDrbJkGP
	kOUp6REZTxuPpTUqO1sI0YzRO0/f139cfmIZF7jkoJq1XJYF8bji0kjwKdhB3x1g+T2hNnUbT/FkY
	M4QTKQLSEtbMbPaZnb6nLcZVt0AT5rR4z3V597QSA9ig2tKh8aIvgv5e8NNh7nefhqXRnDp9WzmN2
	JuUAh7u/bGkJMj0+fE5N2SHLgi+rac14h55I8KkHaVycgP+kGAcr147q3s1G/8SK7QOg2Tzldx1M/
	FeMEXVxh2zKA2sPiIZ609MEL/nUVP5JstJIa7xjXWCW6E5ApXG9p7xoEYYQwspUfMnnC8yAAJykFv
	DtI10FTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srXgo-0000000BaaF-3M7r;
	Fri, 20 Sep 2024 07:04:26 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srXgm-0000000BaZc-1PLu
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Sep 2024 07:04:25 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-42cb9a0c300so14252435e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Sep 2024 00:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726815862; x=1727420662; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AEk9Erg33oAKF+NP+nw1TwEyfMvfxRqOWUUv41eeefs=;
        b=LfBjgCwiCzUC7wNYuWGk744RbBc4gELN8fgB2+3eMhmj4IR1vvkUaiZggTp3unoa7I
         +T5QwTAD4EwFZ3lk9P3C6xZupsWqZSQ4bTG+pk8BrOws9QvcCjv9m8O2s3lEffLBA9yL
         RMHm/jSSnPtcVMob5Gvvg/PSkuUQ/dFVjdloOH5S47o/89tTI3MZ7SHOhcrjLRUuVm5a
         zPyArEEyec983jFhcc0FTOCC88nXEt5ekEq9RW9HCLML+9DX5sfCNkPrP7v1OkvhrHo+
         tHthD8L9B+mXPKz2Q6q1s09o2HoBejEIJOwWf4jrPPmwHbuEf2nxtyPzfYblxUggncV6
         2Drw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726815862; x=1727420662;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AEk9Erg33oAKF+NP+nw1TwEyfMvfxRqOWUUv41eeefs=;
        b=Vu5tdELhonH35+NSAXJ8aFyCYS8Gciv/aDcO+Wgu+7Llx1QlvF+CT6RFh4Mg1QWz2R
         NT+M32m01gI5cqP9RjLbNoBiU8PgN9e7ZRk7BzpET2YgSZyPFEkoNe+aLyQvcZTx0Wc4
         mAR3d0JQ9hIRimfMoo4Qi+qpdYPyghajqGaN+0fL1NV8QB+mnusuS5cf8eQVpthJ+jJK
         IzLP/pyNZPgz2OlAf28xhC44wJfmhik/1fLBQN/DUGjNvWgJzyN2P2X5rioD7hCdGyZG
         zc7LqQ5j8470gAHtkqhv7+xyVPoNzoVl1CKDs+7vtWro1/6kkYR92btKRPFznstNLdkN
         0vKw==
X-Forwarded-Encrypted: i=1; AJvYcCW3LMBY8w/rctwLB1fw+O89Aa4GRt1O0SBpRg4aeH2wo/i9jGg/MV/TY4rEkXN2HGUfbQaAXFhu6SsmmDMK9g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxheQoRsHqsdk1oG2D3eREx13/AP82rpAYRb5jBKja4wmsSBzQF
	v1ajhM9+4glV3XIOBfHCeCFIvV4fULeFZuTGi/EHlAWvhxZgZzP2dH+4jmyS++I=
X-Google-Smtp-Source: AGHT+IGNO1dkgtnCZ5YKP/6A9L3EnlKsnH+ZENC9f0ny9GIW8vEezb6z+4c9DmLBMtGeBqMGf/ZOOA==
X-Received: by 2002:a05:600c:354a:b0:42c:c1f6:6ded with SMTP id 5b1f17b1804b1-42e7ad9afabmr11697595e9.29.1726815861834;
        Fri, 20 Sep 2024 00:04:21 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b3d5:235d:4ae1:4c0f? ([2a01:e0a:982:cbb0:b3d5:235d:4ae1:4c0f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e7aff08b1sm14316095e9.40.2024.09.20.00.04.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Sep 2024 00:04:21 -0700 (PDT)
Message-ID: <e865e42c-a528-45bb-bdf5-df1cd103e695@linaro.org>
Date: Fri, 20 Sep 2024 09:04:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 09/10] drm: bridge: dw_hdmi: Update EDID during hotplug
 processing
To: Jonas Karlman <jonas@kwiboo.se>, Maxime Ripard <mripard@kernel.org>
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
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <0dcb03be-dae1-4dcb-84d8-6ec204eab6ba@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240920_000424_419328_3131B7A2 
X-CRM114-Status: GOOD (  22.96  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 19/09/2024 22:34, Jonas Karlman wrote:
> Hi Neil,
> 
> On 2024-09-13 10:02, Neil Armstrong wrote:
>> On 08/09/2024 15:28, Jonas Karlman wrote:
>>> Update successfully read EDID during hotplug processing to ensure the
>>> connector diplay_info is always up-to-date.
>>>
>>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>>> ---
>>> v2: No change
>>> ---
>>>    drivers/gpu/drm/bridge/synopsys/dw-hdmi.c | 12 ++++++++++++
>>>    1 file changed, 12 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>> index c19307120909..7bd9f895f03f 100644
>>> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
>>> @@ -2457,6 +2457,18 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>>>    
>>>    	status = dw_hdmi_detect(hdmi);
>>>    
>>> +	/* Update EDID during hotplug processing (force=false) */
>>> +	if (status == connector_status_connected && !force) {
>>> +		const struct drm_edid *drm_edid;
>>> +
>>> +		drm_edid = dw_hdmi_edid_read(hdmi, connector);
>>> +		if (drm_edid)
>>> +			drm_edid_connector_update(connector, drm_edid);
>>> +		cec_notifier_set_phys_addr(hdmi->cec_notifier,
>>> +			connector->display_info.source_physical_address);
>>> +		drm_edid_free(drm_edid);
>>> +	}
>>> +
>>>    	if (status == connector_status_disconnected)
>>>    		cec_notifier_phys_addr_invalidate(hdmi->cec_notifier);
>>>    
>>
>> I wonder why we should read edid at each dw_hdmi_connector_detect() call,
>> AFAIK it should only be when we have HPD pulses
> 
> That is what this change intends to help do.
> 
> As stated in the short comment EDID is only updated at HPD processing,
> i.e. when force=false. To be on the safe side EDID is also only updated
> here when connected and EDID could be read.
> 
> drm_helper_probe_detect() is called with force=true in the
> fill_modes/get_modes call path that is triggered by userspace
> or the kernel kms client.
> 
> After a HPD interrupt the call to drm_helper_hpd_irq_event() will call
> check_connector_changed() that in turn calls drm_helper_probe_detect()
> with force=false to check/detect if connector status has changed. It is
> in this call chain the EDID may be read and updated in this detect ops.
> 
> Reading EDID here at HPD processing may not be fully needed, however it
> help kernel keep the internal EDID state in better sync with sink when
> userspace does not act on the HOTPLUG=1 uevent.


I understand but if somehow a dw-hdmi integration fails to have HDP working
properly, EDID will be read continuously which is really not what we want.

HDMI 1.4b specifies in Section 8.5 and Appendix A:
============><==========================================
An HDMI Sink shall not assert high voltage level on its Hot Plug Detect pin when the E-EDID
is not available for reading.
An HDMI Sink shall indicate any change to the contents of the E-EDID by driving a low
voltage level pulse on the Hot Plug Detect pin. This pulse shall be at least 100 msec.
============><==========================================

So this is OK with the first sentence, and should also work with the second one because
right after the pulse we will read the EDID again, but I think we should have a much
more robust way to detect those 100ms pulses, no ?

Maxime, do you have an opinion on this ?

Neil

> 
> Regards,
> Jonas
> 
>>
>> Neil
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
