Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8CE7FC35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 12:38:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opyhKcBoo10oOEjaCXQqSZ8mSgdyB1A8RpT2y2wxxmQ=; b=aiIWYACsnUJQbW
	xrMJJDH7+lyfUI6FK1siOKQq/SxiK+zUnZ4PuQ3UOlrDLeVyz3LbMixBacIeP4HQwESm4AdMU+jSx
	s7lomgjLHGhX9LNVElMJeYm6XA4rtT0yrp+1L7I70ois+a7VEjMZZMj+/nwuhYgZTQoRjU17XbArL
	2y1xhZTg1BVYUM0tVrcY1ggyldfBzZ6oCpsNloSqwIccwgbfG0qj47I3p1Tp3CTvWG/dOvXmbgxVS
	FYG2+QXkYjXbcD4JwqMa4O28wZqosec4N8vOKLWTbH5moDJPjLc8yrAMQXxUE1kErl3mTO6FdD2bL
	LtpmQoit/kwk1Ama7D5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCsd-00Ad2o-10;
	Mon, 18 Dec 2023 12:37:55 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCsZ-00Ad11-0x;
	Mon, 18 Dec 2023 12:37:52 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-55361b7f38eso770459a12.0;
        Mon, 18 Dec 2023 04:37:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702903069; x=1703507869; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4T70cxyfYBrIT00YJPhgzlaa8IjVEwywR+fjzgz6hnA=;
        b=iOraEYTXFN3D10Q5gttPgto3Iw0pFmdpfO1Sap735iLwFQPiTaObUq4KEnShuMxXFr
         xj0nMM2HMi8G1lt0bC3Jy8TsHrWGPdLYB5iuRfgm58yBcMM8sWDWtJQ1Lt6bkXkHUenG
         7DUc5yIHX2fnmUtOLTet+xsi6MOEGd3abDsTq7tqtdzSiNzKPH0TBCSoCgyW86YY9Ezc
         mVnFEOzj+3xj2f1TTjf6b7BSpAipAM+vYC0ICDSlY0EXkyNHo9ouQu+Dv1U22lU8gg9l
         JiKys0PBAmqTIp99eJURrK4I8ntezYseJMJyN9GPIVzU7dtoM7Dm9qip3NPX/JppQ2wO
         Aq0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702903069; x=1703507869;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4T70cxyfYBrIT00YJPhgzlaa8IjVEwywR+fjzgz6hnA=;
        b=D3WpLWdjxzgxdySH9YXOuq9IAk1tax9ryh7q0xdy5Cwcb8g9nRx4H+TSRC/n2EKYQ/
         3B4K8lm3yNPsM96DzW/5Me3tOXX2ZKUKtQVle6X6T/f8Tp2mKmie4zWThjz9cQh9KTK9
         6v/daShfsAzr06zBJyNSJPVvzC+DsqcPyAg3vKMAHr970ntDqu2tZkEgKQDRmXMjaYek
         CoYxGI1WkrwJ5d93uSupCduAkEgl8NPp7bJe3iRnqNhPqvSojW4vNdOqJSv5TMGoRnCR
         9RyTdNncsyi6Ly027R4plZxN3x3Xt6ImxnN8/DofsMDmyiS/A/K+RQSgxDCVPEDQSwZV
         mRfQ==
X-Gm-Message-State: AOJu0Yx/eCJ8eAvPUNMD3h+LEEfPoz/bQ+vq10Jh60YKw8hEKXwWpqiE
	Gz2Z1nPWLJ49cVG0OnATDw==
X-Google-Smtp-Source: AGHT+IEl9hnKaHmsyOpOJuG4izfnlVs83sWcBIPusYmmVQwjw+L77gL9w/VRBPAhCbzD46onZKa2pQ==
X-Received: by 2002:a50:c346:0:b0:553:7898:e6ac with SMTP id q6-20020a50c346000000b005537898e6acmr137799edb.126.1702903068671;
        Mon, 18 Dec 2023 04:37:48 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:4847:f8df:b40e:3aa8? ([2a02:810b:f40:4300:4847:f8df:b40e:3aa8])
        by smtp.gmail.com with ESMTPSA id dh6-20020a0564021d2600b0055338547cc1sm1409895edb.70.2023.12.18.04.37.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Dec 2023 04:37:48 -0800 (PST)
Message-ID: <c58b97ca-3faa-4bf2-8d7c-7ff34e0428ca@gmail.com>
Date: Mon, 18 Dec 2023 13:37:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 20/27] drm/rockchip: inno_hdmi: Correctly setup HDMI
 quantization range
Content-Language: en-US, de-DE
To: Maxime Ripard <mripard@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andyshrk@163.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20231216162639.125215-1-knaerzche@gmail.com>
 <20231216162639.125215-21-knaerzche@gmail.com>
 <rrtknir3vizvcyamp3kfy47r6uppn3wwevb6a5gln2k533t52z@otm6vum6pg43>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <rrtknir3vizvcyamp3kfy47r6uppn3wwevb6a5gln2k533t52z@otm6vum6pg43>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_043751_332194_D0F51918 
X-CRM114-Status: GOOD (  11.86  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Am 18.12.23 um 10:05 schrieb Maxime Ripard:
> On Sat, Dec 16, 2023 at 05:26:31PM +0100, Alex Bee wrote:
>> @@ -431,6 +452,9 @@ static int inno_hdmi_setup(struct inno_hdmi *hdmi,
>>   	else
>>   		inno_conn_state->colorimetry = HDMI_COLORIMETRY_ITU_709;
>>   
>> +	inno_conn_state->rgb_limited_range =
>> +		drm_default_rgb_quant_range(mode) == HDMI_QUANTIZATION_RANGE_LIMITED;
>> +
>>   	/* Mute video and audio output */
>>   	hdmi_modb(hdmi, HDMI_AV_MUTE, m_AUDIO_MUTE | m_VIDEO_BLACK,
>>   		  v_AUDIO_MUTE(1) | v_VIDEO_MUTE(1));
> This needs to be done at atomic_check time: the expectation is that by
> the time you commit the state, everything is prepared for it.
OK. I guess that also applies to the other members of
inno_hdmi_connector_state (former hdmi_data) and was wrong all the time.

Alex
> Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
