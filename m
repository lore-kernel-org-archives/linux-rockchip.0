Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52201C35274
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 12:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfMgHCYmucVtRS0idokTW7ZYdgu9BYe2FEvjWLeG5zI=; b=DLsKTdtldUjVok
	0v+SIh/aqb0IfmZd8c779F/6/kQ5wBzwT/GQUGi8hEScdmEDy3aAJtqyXpU6n1MBB5KR/T437mUJR
	MDoF2nAj7hgGaj6mfAfpiRbmovBVfnX+sTs7sVppAB5GZ3uT73mpKEr8F4m7+cvgD7bDQ24rUt9KS
	HLtQc/cg0g6j2Dx6ZqVc2/d0aUsnprC5ZXTAOItREaj8up7NbZT+cNcBtyHYICAyNym0hghjT52tU
	FuPDtvqfsxnPaMjN4hpEf5njw5aVMGivWLDouOd4xd4UaRe1XGayJBf5Bapca/0fyRpWuQf0iToBk
	mitcUPSpMwwHJLchzy5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCnw-00AcH7-1Z;
	Mon, 18 Dec 2023 12:33:04 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFCnt-00AcFe-13;
	Mon, 18 Dec 2023 12:33:02 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40c6a71e88cso36139585e9.0;
        Mon, 18 Dec 2023 04:32:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702902778; x=1703507578; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QkzSpzeAL9RmFlL2/hJm5M0aNeQpUfSRQFTTR6+vjCo=;
        b=Aq2oEimtvodbOCJOJocrMJlagv8rjMINMuNERPlFUi/lO4OHUBkPP5PpIUoz0jq/X9
         xA5L3FY1gcafwNzp5/+JBKWcSfnspyTWFjnLOQ1XVHrLfUd/ZQjvVWaEERBOFyJCC2Sq
         wm0Rb7gqt1P7KjDkKLXZngJNJ9VHQW/naLHgBZgrI+CiFZnF0kIdOeQ2Y59iYQ+c0kAJ
         OWq7XaWVcX1fc6Kdb+oHni39vHJVxZSAM+DZKt8EJM2IVrjYEVvn9r+HXUQZb4Lhw6oH
         RiM4K9o4n7RJi6LK+p6+WP64154BcAhrIsa7t9qL4rKf3S2tbi3KNRUAP5+foo261S/Y
         fiKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702902778; x=1703507578;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QkzSpzeAL9RmFlL2/hJm5M0aNeQpUfSRQFTTR6+vjCo=;
        b=xCc7x6tBEgz3ZRzk1rrFrCbtgMlmwIc5fuBohm5xZupKjTZ8gSaPS/w8JSZDN1GAxc
         O+W5Xonnxsn3DGtghHjnHarIjSJw9/EwHPc0vAFUg8FA6BdPNUagzXrVZPnAgfhMEw9W
         LUUiKwEU2LE5goD4pwvfg6ekVqznfHL702OWk7jDa1OSQr7ldq4YCoIaKmmLNZgkDWzU
         0JuATXQvjDHu3rcUDMa8dqbbxRkwia2a02PdRgiYBrAKMAsVqIKPl2aCE+45elOg350A
         p4q6YsYv886K2l/diPlPZkej3TzGkJJAUK+Cumy4bycQ+JUqpNmbbKqCshAoWZ1aejx1
         L13A==
X-Gm-Message-State: AOJu0YyjF83zIe5ye3PVR+AB2Vdr9QAOA7B8MfVpds8nSxm0x7bPxb+L
	8WYm37PcRtuxOI4pAjandQ==
X-Google-Smtp-Source: AGHT+IHGy9/HNB1mQw8r6qIKH02yibbK9xlzNiJqGPLWfNBD7SdKCS8gkZ8DhddvOj23GmbysRaO8w==
X-Received: by 2002:a05:600c:4e87:b0:40d:129f:d5ab with SMTP id f7-20020a05600c4e8700b0040d129fd5abmr1778597wmq.73.1702902777907;
        Mon, 18 Dec 2023 04:32:57 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:4847:f8df:b40e:3aa8? ([2a02:810b:f40:4300:4847:f8df:b40e:3aa8])
        by smtp.gmail.com with ESMTPSA id fj17-20020a1709069c9100b00a1e4cae6b22sm14026777ejc.41.2023.12.18.04.32.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Dec 2023 04:32:57 -0800 (PST)
Message-ID: <2de65f47-6512-400d-82c9-ae2ba9fdaa12@gmail.com>
Date: Mon, 18 Dec 2023 13:32:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 18/27] drm/rockchip: inno_hdmi: Subclass connector
 state
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
 <20231216162639.125215-19-knaerzche@gmail.com>
 <rvovzl6rqkaa2hvml75if5bjasqnyh2r354jdjpa5gckfpcxv4@wlknpt7lhncq>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <rvovzl6rqkaa2hvml75if5bjasqnyh2r354jdjpa5gckfpcxv4@wlknpt7lhncq>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_043301_362985_1EDFE282 
X-CRM114-Status: GOOD (  12.80  )
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

Hi,

Am 18.12.23 um 10:02 schrieb Maxime Ripard:
> Hi,
>
> Thanks for working on that, it's much better now.
>
> On Sat, Dec 16, 2023 at 05:26:29PM +0100, Alex Bee wrote:
>> +static struct drm_connector_state *
>> +inno_hdmi_connector_duplicate_state(struct drm_connector *connector)
>> +{
>> +	struct inno_hdmi_connector_state *inno_conn_state;
>> +
>> +	if (WARN_ON(!connector->state))
>> +		return NULL;
>> +
>> +	inno_conn_state = kmemdup(to_inno_hdmi_conn_state(connector->state),
>> +				  sizeof(*inno_conn_state), GFP_KERNEL);
>> +
>> +	if (!inno_conn_state)
>> +		return NULL;
>> +
>> +	__drm_atomic_helper_connector_duplicate_state(connector,
>> +						      &inno_conn_state->base);
>> +
>> +	return &inno_conn_state->base;
>> +}
>> +
>>   static const struct drm_connector_funcs inno_hdmi_connector_funcs = {
>>   	.fill_modes = inno_hdmi_probe_single_connector_modes,
>>   	.detect = inno_hdmi_connector_detect,
>>   	.destroy = inno_hdmi_connector_destroy,
>>   	.reset = drm_atomic_helper_connector_reset,
>> -	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
>> +	.atomic_duplicate_state = inno_hdmi_connector_duplicate_state,
>>   	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>>   };
> You also need a custom reset and atomic_destroy_state implementations
Yea sure - thanks for the heads up.
I had this in multiple commits locally and thought I squashed them into
this one. Well, I obviously didn't :)

Alex
> Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
