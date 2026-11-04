Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AAC606A31B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 02:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=M9l8lZYA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=is+bqKdL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=mBWgY41HOzEsJd7uXoQuJ45hdv83+rH8k9VmjGHYJTI=; b=M9l8lZYAFvYjj7pOu86J+5Nydx
	rvaI+OPkdblhvZuwrT/8/ouuwqOcRPub6qfjEkv0jIWgwRnKqyZ20DTfFkqm6XjCLj66+l+N1dowC
	9Iu8T/f0ASevBbpY0aU8LEGyuosNfHcDX1M6u7jAX+el01D4KRCi83PvQ5ao30doorSUXjUrvlmxY
	TBJge4elhICkmmNc9+NvtYbNYx+iEwIz006BtHs3BQVFt8J9d7NrRTozrNRBr2oBCoYXsLGGxXgVZ
	EY2zhGzt/wI9/AEZH4VKY6a9RlhC3pzJpjs/j0iwRYwDXOUIUBAICM5tExjy5x79cZw+wqLkyecof
	vVSjFAIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOQM1-000000047J3-0azK;
	Wed, 04 Nov 2026 02:03:57 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOQLx-000000047IF-3RAK
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Nov 2026 02:03:55 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-91c60e14328so74686d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 18:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793757832; x=1794362632; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=oQKfHxsoZ43jPXB8U56gZWLrwTl7ynffsjZhdvLk1nU=;
        b=is+bqKdLqmyMcQPf4tBmdubP9W1/6PuvX9kokTZRAtUtjeRCA0T9F8RpIY8H6lr0f0
         oW8XiLBDuSu/IcOlKSuHsjC2coDV16YR7vnyYXzGCcmyQHI4yVAfDNqsaWyoCdIRJSIB
         4ZJRh4KIxFILaVz71ryWKaFtAT8YmtUYalc7HLSa4NQ9xyeCAu9AVBVQl027PiWDuNIh
         L6P55CWGwsbXPlnxoqWW2HgZ5a9pjGZ57Re8JfNAptM0CaxBsr7DEprDBO70oXMOpPGs
         ljE+zY69EQLTTBhJGwcj6PLmta2HAvGTRmqFqBF1PrhJb3+BIZhhZdNIN5RLd0SdYIpl
         V60A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793757832; x=1794362632;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oQKfHxsoZ43jPXB8U56gZWLrwTl7ynffsjZhdvLk1nU=;
        b=x0P2WCAfTndlC575KzimIiedJjNoK5DMxaMN1Il8KByVz594+Spl3JATUgRUa7vpFp
         q6W6h/t6TSiD8e1CwZ2yjnkUb68vcHdm/T9COy5a3deQ4qc3h3NGT/iPIZ6gNQpSRUaz
         hu68QTSuo+AmiStdP4ONCM2kjD54X+WN1CTdgJuyS3z07JBoSIT+k0g6O73/+m4iz/cc
         Kr04TXnw8ZHz5P0G5G4+uoRmloPIFl+VLpkkfrDBRgWkFNqO/JREDQ9zaA4zx67Pvmfg
         zrRmEXy66Q3uwp30ngS+CzJihKQFBTS5QiwEZufCp6zWbtPj1knsn0aQrACmxqEPOEbl
         QPGg==
X-Forwarded-Encrypted: i=1; AKwUvBw/1ny/vtL+BTMZtgxV8TpijLZDyAeSDMhBG+8OYK9MPBSeNQr7IBiN5pT4Z5kfch0RpUkizn7tkficxEQDYQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+kderbekZTo31qmBw5YuxczDm5WK/mnXfC8aoorW51Q0WFwhx9
	qPu+3Snls7QgCCEqSf5fyFaROBfHcnZE/I8vuSb54GZ9qPICZIcrGOek
X-Gm-Gg: AYBFou0UPwMogvX1KNODR0olMCK6XoMrFXLQCKzuFfK50FiNQe13wr+v3PaLH2CGnsB
	sx+vAgNRXyFbxQngl5As2jJttGN5Xm3EOh8pe0Hcj7BAphFNlWAukhM/+DbMn1GoKzaqAztaqKT
	RL5HMglBMJ3hXMYyBZruBxI6xDik9THYJcBkRSe/Sy1x2AIZONw5vrIZh5ORBBenpv+OW0MRL3+
	MkjxAK1vxIN4RSPAKDkULSD4olJNVabUXeUfdcxcDcH0cs/ljHgI+w0TQTNhqMIFb71NoCwMse/
	aJrmglPERR2/7I4MiuB69g5ZclW93mn9mHuPDu9bhIuKlwLb9gU5i44qHlQichKFIB76C9e7+LB
	kLzUlw48FzNkhqGAiZfx68NoHjrYs308JCmZPLSHHb1LE8ki3ehqtzy0GUVHGmwuXQgbNnjz2MU
	nIQ0OfvXH9z+hJo55B2fGcEs/D34aj8ID+BG+SQzbcPIg+xpB7nauiHIPso0Hlf63XfgFkwHezA
	NCbyur4HIH38+orXNyCBIpBSvY1XIYZ2/bGL/hxhZfT4b8pOiiRgc8alXpJRW8IqXhgVNwxqObM
	byXRlfWkUAbs7qh1rCSWTnjyFkE5ODXAHRcPq26XDTNV7g7Ywe7nWaqyb145QdpAilKBuPr3
X-Received: by 2002:a05:6214:c6f:b0:91c:6ccb:4442 with SMTP id 6a1803df08f44-91ca4a4b1f1mr337650216d6.2.1793757831689;
        Tue, 03 Nov 2026 18:03:51 -0800 (PST)
Received: from ?IPV6:2600:4040:498b:e200:2d8:61ff:fe7c:5d59? ([2600:4040:498b:e200:2d8:61ff:fe7c:5d59])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91e7e0139ccsm6107716d6.28.2026.11.03.18.03.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Nov 2026 18:03:51 -0800 (PST)
Message-ID: <3a7e331e-ed41-5ca5-192a-f7d1a88c4339@gmail.com>
Date: Tue, 3 Nov 2026 21:03:50 -0500
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] usb: dwc3: fix abort on invalid ref clock rate from
 clk_get_rate()
Content-Language: en-US
To: Frank Wang <frank.wang@rock-chips.com>,
 Peter Robinson <pbrobinson@gmail.com>
Cc: marex@denx.de, trini@konsulko.com, mkorpershoek@kernel.org,
 balaji.selvanathan@oss.qualcomm.com, macromorgan@hotmail.com,
 heiko@sntech.de, u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
References: <20261103082732.18483-1-frank.wang@rock-chips.com>
 <CALeDE9PLaF7rB2RXn9G6ipWW+J5dentCtyNLgdwTUywgiTnooQ@mail.gmail.com>
 <95e91156-4ea3-4d1e-a0ed-ddd4de47be73@rock-chips.com>
From: Sean Anderson <seanga2@gmail.com>
In-Reply-To: <95e91156-4ea3-4d1e-a0ed-ddd4de47be73@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_180353_868799_E4BFFF77 
X-CRM114-Status: GOOD (  22.90  )
X-Spam-Score: -3.6 (---)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/3/26 20:53, Frank Wang wrote:
> Hi Peter,
> 
> On 2026/11/3 17:42, Peter Robinson wrote:
>> Hi Frank,
>>
>> There's a big rebase to sync with upstream Linux driver [1][2], I
>> think it's due to land shortly, does the issue still occur with that?
>>
>> It would be good to get the rockchips SoCs with the dwc3 controller
>> tested with that rebase.
>>
>> Peter
>>
>> [1] https://lists.u-boot-project.org/pipermail/u-boot/2026-October/637669.html
>> [2] https://lists.u-boot-project.org/pipermail/u-boot/2026-October/637734.html
> 
> I checked the usb_dwc3_sync_v10 branch referenced in your email, and found no code changes related to this issue.
> 
> In the Linux kernel driver, getting the dwc->ref_clk rate is mandatory, so this issue does not surface. In U-Boot,
> however, getting the clock rate is optional. Some platform vendor clock drivers do not implement clock rate retrieval
> for all clock IDs. Therefore, adding a check for the -ENOENT return value can improve code robustness.

It would probably be better to return 0, but alas that ship has sailed.

> Additionally, mainline U-Boot codes do not yet include support for Rockchip 32-bit SoCs with dwc3 controllers.
> 
> 
> Best regards,
> Frank
> 
>> On Tue, 3 Nov 2026 at 08:28, Frank Wang <frank.wang@rock-chips.com> wrote:
>>> On 32-bit platforms, "usb start" aborted with
>>> "### ERROR ### Please RESET the board ###". If the clock driver
>>> does not implement the "ref" clock, clk_get_rate() returns
>>> -ENOENT, which dwc3_ref_clk_period() treated as a valid rate.
>>> period became 0 and the fladj calculation divided by zero; the
>>> software 64-bit division on 32-bit ARM calls the
>>> division-by-zero handler __div0() and hangs (64-bit platforms
>>> survive silently since UDIV returns 0).
>>>
>>> Skip REFCLKPER/GFLADJ programming when clk_get_rate() returns an
>>> error code, as is already done for rate == 0.
>>>
>>> Fixes: 6bae0eb5b8bd ("usb: dwc3: Calculate REFCLKPER based on reference clock")
>>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>>> ---
>>>   drivers/usb/dwc3/core.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
>>> index be198041f08..9a84ec6a60e 100644
>>> --- a/drivers/usb/dwc3/core.c
>>> +++ b/drivers/usb/dwc3/core.c
>>> @@ -151,7 +151,7 @@ static void dwc3_ref_clk_period(struct dwc3 *dwc)
>>>
>>>          if (dwc->ref_clk) {
>>>                  rate = clk_get_rate(dwc->ref_clk);
>>> -               if (!rate)
>>> +               if (!rate || IS_ERR_VALUE(rate))
>>>                          return;
>>>                  period = NSEC_PER_SEC / rate;
>>>          } else {
>>> --
>>> 2.17.1
>>>
> 

Reviewed-by: Sean Anderson <seanga2@gmail.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
