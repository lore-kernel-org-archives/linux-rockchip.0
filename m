Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8517AC77B72
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Apr 2023 13:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJKvQvUBoqigZe8g2hX13JtpzStBHgTlTR7uM/zyzf0=; b=sKZQ5C18kD518q
	Bz/O0Drz7c6SwuzPYJPw+fiMiUkuiJXec98vKfM9HAtlpWtGyAwu+K0PS8eQ69Rdm9BFOaMheOJJQ
	01SBQi8fbRRVP5aA8vgBpKeQlT7j15x2vHN5OiCgxr4axEQPyT6Geln+/Z88qxZClyMRjRVVWd2pE
	nX9Njn2hJcqcP9YlFg0l5CfAermArp5KDxXlrv1pSBXRwPoe8GFrHdV+vOxWImAR9PYLQjx8mi4nB
	iIT3xthQYbfvt2e8EX1y5VvhJO96HOwG1YhUPbdj0LETVcVVObB5CZPoBc5cPYp67PylnnnrtRsI/
	RwLVhJTJMHU/PbzY4smg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppUev-008EhT-0t;
	Thu, 20 Apr 2023 13:49:13 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppUer-008Egl-25
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Apr 2023 13:49:11 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-51f597c97c5so783775a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Apr 2023 06:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681998547; x=1684590547;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wnjUcH5y1Pb8R4/f3gZ/CX/Eqa1ZM5qT0lnDQJSddVI=;
        b=ppBsWpCXOkPI9VqP8f0CZnLVdZL6ouH7XsmTPYI2heigN9JKfbVzxPgw5dA17iUhDA
         8g1djWzw5GXkFikwzYddWzDRYS9hDRMhWXqly6PRWF4z3cfzFTmpUFUm9aeQ1pRKAX0H
         JRH/zWEA0R9MPsBUCdF0fGRZe4uRkQG0AIdoD1TfB7x4ufQ/sM0+TplNeWvfCBLdkcPy
         TEvJfY3x8aHbyB4VEdJaCGy5p5PDua+7O0Psq/TmbZxgd0cuJs9fV0Ev42zNLYlzwz0Y
         OqlkUjGi6YmUq9ily1EzjFuYrHYxusN8+X732ZCMRpQP3xE1QoJGSqN87RzJrgeAUYqM
         PBCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681998547; x=1684590547;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wnjUcH5y1Pb8R4/f3gZ/CX/Eqa1ZM5qT0lnDQJSddVI=;
        b=B2z5sX6NsAH807wlg8w2IQPu1LNetZ8rv1VynH0W9TsGuWtpEeeeKtqnTfwlLi4YyV
         YanoEnwaFG2XhVW/8P/J9MvzZhzeNGGIxEOIdJ0hNEgB1YF+7BRzuxa+ucXsn1kMTorz
         Mn1pOS1DVoXraSFz/SkMQypprVDDpix/qlLLbD8aOTYYmySyXQIcDitMU9m9G1QrW4dr
         sopK1KGag2c+JxW4zh8seaN9bhR97fdv0ezH8scYjxNy5eqIaCQZqlYa+EZUm9FVTNdG
         quzYtKBS7i8ECOC1xzaqHDw0uuqpjtrz+d4QOL6u8VQeYMwnVnr8ekcp5ixsZyTn8ob0
         dGvw==
X-Gm-Message-State: AAQBX9cw9qkGFZdFZIACNxXPt0JvpiJqcWwM80YB6DGYDMqbX7VnUyXm
	nCOdfaIznLEpdoGi3OrUvSA=
X-Google-Smtp-Source: AKy350b4gVTrT0jdEJyTAOLAle1O9HpAQ2FZJ2O2eMbVOAtJVpzK7840rFjgpPtYWntiYEt7eg6fFg==
X-Received: by 2002:a17:90b:3904:b0:246:ee10:cb5d with SMTP id ob4-20020a17090b390400b00246ee10cb5dmr1795004pjb.14.1681998547069;
        Thu, 20 Apr 2023 06:49:07 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:329c:23ff:fee3:9d7c? ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id l5-20020a17090a598500b00247a2498075sm1188313pji.48.2023.04.20.06.49.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Apr 2023 06:49:06 -0700 (PDT)
Message-ID: <dff23f7b-86a4-6984-5ce0-70aa6dbfad8e@roeck-us.net>
Date: Thu, 20 Apr 2023 06:49:03 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v2] usb: typec: tcpm: fix multiple times discover svids
 error
To: Greg KH <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, huangtao@rock-chips.com,
 william.wu@rock-chips.com, jianwei.zheng@rock-chips.com,
 yubing.zhang@rock-chips.com, wmc@rock-chips.com
References: <20230316081149.24519-1-frank.wang@rock-chips.com>
 <ZBROkdOFAP4GPPU6@kuha.fi.intel.com> <ZEDzGydXbbpekeaB@kroah.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
In-Reply-To: <ZEDzGydXbbpekeaB@kroah.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230420_064909_682051_C6E31E14 
X-CRM114-Status: GOOD (  16.76  )
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

On 4/20/23 01:08, Greg KH wrote:
> On Fri, Mar 17, 2023 at 01:27:13PM +0200, Heikki Krogerus wrote:
>> On Thu, Mar 16, 2023 at 04:11:49PM +0800, Frank Wang wrote:
>>> PD3.0 Spec 6.4.4.3.2 say that only Responder supports 12 or more SVIDs,
>>> the Discover SVIDs Command Shall be executed multiple times until a
>>> Discover SVIDs VDO is returned ending either with a SVID value of
>>> 0x0000 in the last part of the last VDO or with a VDO containing two
>>> SVIDs with values of 0x0000.
>>>
>>> In the current implementation, if the last VDO does not find that the
>>> Discover SVIDs Command would be executed multiple times even if the
>>> Responder SVIDs are less than 12, and we found some odd dockers just
>>> meet this case. So fix it.
>>>
>>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>>> ---
>>>   drivers/usb/typec/tcpm/tcpm.c | 16 +++++++++++++++-
>>>   1 file changed, 15 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
>>> index 66de02a56f512..a3ae2c79f3540 100644
>>> --- a/drivers/usb/typec/tcpm/tcpm.c
>>> +++ b/drivers/usb/typec/tcpm/tcpm.c
>>> @@ -1515,7 +1515,21 @@ static bool svdm_consume_svids(struct tcpm_port *port, const u32 *p, int cnt)
>>>   		pmdata->svids[pmdata->nsvids++] = svid;
>>>   		tcpm_log(port, "SVID %d: 0x%x", pmdata->nsvids, svid);
>>>   	}
>>> -	return true;
>>> +
>>> +	/*
>>> +	 * PD3.0 Spec 6.4.4.3.2: The SVIDs are returned 2 per VDO (see Table
>>> +	 * 6-43), and can be returned maximum 6 VDOs per response (see Figure
>>> +	 * 6-19). If the Respondersupports 12 or more SVID then the Discover
>>> +	 * SVIDs Command Shall be executed multiple times until a Discover
>>> +	 * SVIDs VDO is returned ending either with a SVID value of 0x0000 in
>>> +	 * the last part of the last VDO or with a VDO containing two SVIDs
>>> +	 * with values of 0x0000.
>>> +	 *
>>> +	 * However, some odd dockers support SVIDs less than 12 but without
>>> +	 * 0x0000 in the last VDO, so we need to break the Discover SVIDs
>>> +	 * request and return false here.
>>> +	 */
>>> +	return cnt == 7;
>>>   abort:
>>>   	tcpm_log(port, "SVID_DISCOVERY_MAX(%d) too low!", SVID_DISCOVERY_MAX);
>>>   	return false;
>>
>> This is OK by men, but let's wait for Guenter.
> 
> What ever happened to this patch?
> 

It got lost in space.

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

Guenter


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
