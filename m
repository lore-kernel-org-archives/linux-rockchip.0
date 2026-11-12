Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0DCF606A31C
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 06:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gIo5MvER;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=g1SI4NYJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hK7ao1EVlQJZ9jJhPRsStJps0JkSCC6126OQqDUKvbQ=; b=gIo5MvERlRssqSiKq/IOO0K7gX
	IiggR8JQpyxkAIsnqbeiXLCpgTjLG7k5O8+tooJ0vg6/kGH5Sgza4GuQwtniNpoWnpKdK4faPhZdU
	S4TPcHIzuzVZfqfpo+SV007OFOiCW8IaEEcJJpzjBPGAfQD7DafZM7dPwCOK7//xoncX+eeWutvA4
	H/IReAMkcNlY8yampjvXmALdlIOPeGvEgL8hUahzIoEd+6nt89F01WpMg1s3GOf9vVTMP7u4GhTi3
	VyCbQPNIRAsQiyezOEpSt2M4mQ1c6z8OlWze+jsSNNtzJwNlgceA6yEF5Ny0BY2XNNUdqGsxWVsA0
	4Vkrq8Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xROBe-00000008oJl-1YPz;
	Thu, 12 Nov 2026 06:21:30 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xROAh-00000008oC8-2f44
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 06:20:52 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-8a5a5dda930so121218b3a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Nov 2026 22:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794464430; x=1795069230; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=6RXE7MpOiitHrkFdvkSuFI10OAvTxEYbjLQMQzqwPMU=;
        b=g1SI4NYJgo3j8DkLyq2WC0vZrBTWgke8nGIbqQsfMOLlqGEghJI1ayUb8n2rWilMAy
         PoiQm6SBqPh5IBLOckUnJRdcHG5q7Mpvi53q2PivklMpSYv/AKcUGjxy8Mv9wNOxzriw
         VFwYa/GE8aDYrv9/aBwh3FOnQVqKb1keOSq6HebfvpyVoniNwDjCG+aEGIRjb8l4u6SJ
         9T7makJ+o/OmxQg9pvaaiv6sq3bqwrR7zdRecAI0JHvhGBmQ0Y6vU6ozA6V31DdCAZmu
         WcswKT7L1Na+xFg+Gs4g9BDS17TiKY31mxfIflqDM8jLJyxmWIc/2adZN42/l+n06HDJ
         GjIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794464430; x=1795069230;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6RXE7MpOiitHrkFdvkSuFI10OAvTxEYbjLQMQzqwPMU=;
        b=zUakZZQeL0DKizEGomwxTktKCSCV787ZA+5RtdjATE8DzW7yaLeypVdNns57DZE18t
         i9cI6KF8jc/BiZQLNIcBvDmwOJEMdSZMW/7sOJ6igGYtnAdvp79lI5oVJRuM+XcAl4hp
         SnYKVnaiZA4a8WDubgwZKIYBG8VMhq/SF7cML7Jd2pjd1suBsY5OkXIzm8lxdI129CNx
         Xhq2rZc77dD341ePS5keBx3mGFpCxSKBHysV9ssLkP9qzAbT/Tf8ikCida+wlnB2tDCT
         81QyF0scah35STYyLSSjsAHi1prP9IxwzP1U8XxlWPvj5dCiJpqHYtDjqmStxhEgQAc4
         98jg==
X-Forwarded-Encrypted: i=1; AL+hErFWAo8d95WAa+v6A6BuZ6UvIz+jfQS7RUztfQBYC0H+/AXiTybppsYQWk4LXmzFmW3Lp64DGqIBOAvwbj1G/w==@lists.infradead.org
X-Gm-Message-State: APuU4Z8z++M1b26iKMGYb2aji0YjjgdJqODjNiW9G+/BuCyI9J0uh4md
	zlS4cVvLr8qNxNmOV9zBpSHZPliDP5CRILA5gwcE9x2l6x1OGYmA0VUV
X-Gm-Gg: AYBFou1MGaKX90X59HKIdnj3sq9IqqtVBBHDwmaeOrLKpX+0y5wIUPpdlwEnQicKe1b
	4nnwy4hv3A+lbT9kXutrwZqssJo0xqBC+U5/4kn0n9O9ssirHK7QUsBW9weoFt8iQ0vikvVrruB
	F7/UOgfWgxAje+UWCQFnpGpqpm6KCJVjzisEQqdN2hr/+y5kl+Ha5fHWaYH/LM7CcoqOaRlFMDU
	oHWFJyjahW8YsAOAis/RB/yLcIjVS4AOOvWZdyjU4c8tniEqe8a+FpRoY5IxXjymzcAs9Fc9ngu
	7UXh3UKy71MOr/7dpdYdJoD4bsCcIs2J9ntp1uaHvhpGfRbHCMhVpTfaBDenm7nM92cFPJd6GkT
	RbWyifawHElg9WB9E/DSiT5m+rOUPRFU+VFbINq7SYBIlpEafaPBljNvj5DhGTQKCyVhj8Hu8vr
	yhPRwTnjPvK8JTFH8CshahRGkfeWidnnngzQT7mnPZXx80TOjMdv5Ti7hs0Khbb1ccSSp4+DjHG
	V/e3jCzL1hcfrF9IQ9YFWweKyujwW/IVYQ+BfWXA/6n4d14mtuOrghrdId0wfsk498Zxs/hgJnA
	ip8MkG8w1HwYbQ+1iHatUDMSJ9tLXsoaDDoitr5xcOSJEoags9W8+Ax+oRc=
X-Received: by 2002:a17:902:ef4c:b0:2df:8ab7:fe3a with SMTP id d9443c01a7336-2edd78c45admr80762355ad.4.1794464430262;
        Wed, 11 Nov 2026 22:20:30 -0800 (PST)
Received: from FAIZEL-KB ([2001:569:52f5:4b00:3fec:b9ca:ef85:7998])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2edb6d7bf55sm28202185ad.30.2026.11.11.22.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2026 22:20:29 -0800 (PST)
Date: Wed, 11 Nov 2026 23:20:27 -0700
From: Faizel K B <faizel.kb@gmail.com>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Mehdi Djait <mehdi.djait@linux.intel.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, libcamera-devel@lists.libcamera.org, 
	Robert Mader <robert.mader@collabora.com>
Subject: Re: [PATCH 2/2] media: rockchip: rkcif: Honour the requested
 bytesperline on MIPI
Message-ID: <fxrwhxkzgihpiz52rbeuomtqkzz7izgdfcbux7osamqruc7w7u@qhvh3nkqypro>
References: <20261105232310.385463-1-faizel.kb@gmail.com>
 <20261105232310.385463-3-faizel.kb@gmail.com>
 <51b09428-9d10-4f36-a811-a681e479e45e@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51b09428-9d10-4f36-a811-a681e479e45e@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_222032_923848_681F87A4 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Michael,

On Wed, Nov 11, 2026 at 10:46:43AM +0100, Michael Riesch wrote:
>
>Come to think of it, TRM p. 2111 says for e.g. VICAP_MIPI0_VLW_ID0:
>"Virtual line width of even frame for ID0 path(must be aligned to double
>word)." which I would interpret as "it must be a multiple of four
>bytes". What do you think?
>

The VICAP register summary defines it.TRM part 1 (V1.0, page 2081)
"DW - Double WORD (64 bits) access". So 8 bytes.

>> +static void rkcif_stream_set_bytesperline(struct v4l2_pix_format_mplane *pix,
>> +					  u32 req_bpl)
>> +{
>> +	u32 min_bpl = ALIGN(pix->plane_fmt[0].bytesperline, 8);
>
>Please add support for the bytesperline field in all the plane_fmt
>entries here...
>
>>  	width = clamp_t(u32, pix->width, CIF_MIN_WIDTH, CIF_MAX_WIDTH);
>> +	req_bpl = pix->plane_fmt[0].bytesperline;
>
>... and here.
>
>>  	ret = v4l2_fill_pixfmt_mp(pix, fmt->fourcc, width, height);
>>  	if (ret)
>>  		return ret;
>>
>> +	if (stream->interface->type == RKCIF_IF_MIPI)
>> +		rkcif_stream_set_bytesperline(pix, req_bpl);
>
>Why is this restricted to the MIPI interfaces?
>

The MIPI formats all have a single plane, and the MIPI path already
programs the line width from bytesperline. The DVP path uses the width,
and I can't test it. But I agree it should not depend on the interface.

For v2 I would:

- take the requested bytesperline of all planes into account, and use
   the largest for all planes, as the DVP has one line width register
   for Y and UV
- compute the sizeimage of each plane from it
- limit it to the line width field (20 bits MIPI, 15 bits DVP)
- program RKCIF_DVP_VIR_LINE_WIDTH from bytesperline, with the current
   value as the minimum

Does that sound ok?

A question on the DVP: the PX30 TRM (Part 2, 5.3) says raw data is
stored as 16 bits per pixel, even from an 8-bit source. This matches
the width * 2 in the driver. But for V4L2_PIX_FMT_S*8 (e.g.
V4L2_PIX_FMT_SRGGB8) bytesperline is the width, so the buffer is half
the size the hardware writes. Am I missing something?

I can only test the MIPI path, on RK3588 (Radxa ROCK 5B+). Could you
test the DVP part on PX30 or RK3568?

Regards,
Faizel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
