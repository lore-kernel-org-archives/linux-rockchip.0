Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A986FC5AD4C
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Nov 2023 08:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ucPeUXjNvUmGp9Qv0KJ3V8rDyzlAG8q8eoE/MH+vvfw=; b=JjiRTn9uTGjfbj
	GZ0Jl63ThfZG0wMBUIY6ZUO8H4RqkyOQgfvmCsQGfdCPGxfZSdNxEj9wjoiBm2SWOjJJwF19U62SI
	Dr88ddaioU3PKHstxwNDplVcY7bVy2cektsPrPoT1T9N75mnZq+jV0nSnTc9x/MtDnyu8XTmIloxp
	ig6X5sq1Vv0O3HPU0EuZyBiWfBOJ+7ZhOandRvg2mAYNkP6+udhNPP5hRqNkg2sWX4sLUsD1Wrrgb
	3eUK+tDxIOImsfJchVICaY8tTcetLny1068RhHoFoY835mZw+uQT89qtkqdTabUv6aSns7rFr+AK1
	h582iMyO3JN7vEQh17wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r65Ad-0049p1-1X;
	Thu, 23 Nov 2023 08:34:47 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r65Aa-0049nb-0R;
	Thu, 23 Nov 2023 08:34:45 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-548d60a4d60so770246a12.2;
        Thu, 23 Nov 2023 00:34:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700728481; x=1701333281; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I+47/8CIqHGYdq/sfFIoPGjTRwH4Xn5HRY4OZWTE1ww=;
        b=LdasA+IubU1IMCeKjccfQIu993eJhBYg6euZ3SSd4w4hDAcl6H/cqTB8QB0F4PLBb9
         TjELFLbdAUGdXyftuB4/wUa2Pw98bcjX4JP8YEf9pUID9EsV6gzdlFj7zpwB2vsAfypI
         5I7+AYSczZMunNYvmmhkSzAu7rsl26KTeL70q4bdCrXiumSmCvF4rLj5wMKh6LGdLxeC
         3DpcTBrqeDGZCjB0UsCikiiZ9a5TZeVNVVZnNMQDYZL0q81R+skYQuFyo99UV+zTSd4Y
         n4hFwiWZWcfoEhNxJknh/oz33+WV/m0U4zw/criKIy8RmqL/5jz41mtG00Ynlv9XSkJ6
         pL8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700728481; x=1701333281;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I+47/8CIqHGYdq/sfFIoPGjTRwH4Xn5HRY4OZWTE1ww=;
        b=CU+HXPi0aPAswkE66JxLcIvWvblcKSXTkEbTqmR1eDw+cGiSE/sKRtN+l0pd3/n2Y+
         p0ojzL2wWV1WZkcWYKFjSnBsSKfOt9kT6Ds5xHQyp1QNDprBZmsc/tmdl9yaSnPmQ4Rh
         fWF28fIMB5iPjaNF0wfDzBKkHYAdQj14WFTQ4ze0f6/hBm2u57QBNrczYfc4XvK0Q8Xx
         U1a6E4jY5OIjYZaNfPcj7AFV6vBcWVEuDMrshdgyo/abPcBV/YEqHX6BejV8X8oiJ3dp
         dcjK3aN6+WVPuxZGOyG+BWsro6Nr/QNRSXPCf5HeFO1u/98QMjAQMeTCZWIAINdWyWkD
         OFJg==
X-Gm-Message-State: AOJu0Yy6tffAlcDDWY4Rrd9ULPkNcvi6/8ptq0gm5pbiBQl4TNYGj4U3
	BUYAMwdk2KCH3O+DR7fMgz4=
X-Google-Smtp-Source: AGHT+IFNYbN1XOm9KzA7Lq8aiS9svVmcYvh53558Azn026CoMOIdCl33Wf0B1a31MMVckvjtYn4DXA==
X-Received: by 2002:a17:906:c7c5:b0:9e2:bbc4:16cb with SMTP id dc5-20020a170906c7c500b009e2bbc416cbmr3489650ejb.49.1700728480582;
        Thu, 23 Nov 2023 00:34:40 -0800 (PST)
Received: from ?IPV6:2a01:c23:c0f2:3200:59ae:788f:5985:cbec? (dynamic-2a01-0c23-c0f2-3200-59ae-788f-5985-cbec.c23.pool.telefonica.de. [2a01:c23:c0f2:3200:59ae:788f:5985:cbec])
        by smtp.googlemail.com with ESMTPSA id gr19-20020a170906e2d300b009de11bcbbcasm479640ejb.175.2023.11.23.00.34.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Nov 2023 00:34:40 -0800 (PST)
Message-ID: <266d2141-4615-4fd8-b603-aabb0e6e6860@gmail.com>
Date: Thu, 23 Nov 2023 09:34:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/20] remove I2C_CLASS_DDC support
Content-Language: en-US
To: Thomas Zimmermann <tzimmermann@suse.de>, Wolfram Sang <wsa@kernel.org>,
 intel-gfx@lists.freedesktop.org
Cc: linux-i2c@vger.kernel.org, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-fbdev@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Jocelyn Falempe <jfalempe@redhat.com>, linux-sunxi@lists.linux.dev,
 linux-mediatek@lists.infradead.org, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Yongqin Liu
 <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>
References: <20231120214624.9378-1-hkallweit1@gmail.com>
 <4e0cc556-a7eb-48ce-8226-0f5281f3ef0a@suse.de>
 <aeb96878-7ce0-48a9-b8f2-fdc9a3c0fc83@gmail.com>
 <c4c0a79d-4e0a-41c1-89b9-8df71ae6335c@suse.de>
From: Heiner Kallweit <hkallweit1@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 xsFNBF/0ZFUBEAC0eZyktSE7ZNO1SFXL6cQ4i4g6Ah3mOUIXSB4pCY5kQ6OLKHh0FlOD5/5/
 sY7IoIouzOjyFdFPnz4Bl3927ClT567hUJJ+SNaFEiJ9vadI6vZm2gcY4ExdIevYHWe1msJF
 MVE4yNwdS+UsPeCF/6CQQTzHc+n7DomE7fjJD5J1hOJjqz2XWe71fTvYXzxCFLwXXbBiqDC9
 dNqOe5odPsa4TsWZ09T33g5n2nzTJs4Zw8fCy8rLqix/raVsqr8fw5qM66MVtdmEljFaJ9N8
 /W56qGCp+H8Igk/F7CjlbWXiOlKHA25mPTmbVp7VlFsvsmMokr/imQr+0nXtmvYVaKEUwY2g
 86IU6RAOuA8E0J5bD/BeyZdMyVEtX1kT404UJZekFytJZrDZetwxM/cAH+1fMx4z751WJmxQ
 J7mIXSPuDfeJhRDt9sGM6aRVfXbZt+wBogxyXepmnlv9K4A13z9DVLdKLrYUiu9/5QEl6fgI
 kPaXlAZmJsQfoKbmPqCHVRYj1lpQtDM/2/BO6gHASflWUHzwmBVZbS/XRs64uJO8CB3+V3fa
 cIivllReueGCMsHh6/8wgPAyopXOWOxbLsZ291fmZqIR0L5Y6b2HvdFN1Xhc+YrQ8TKK+Z4R
 mJRDh0wNQ8Gm89g92/YkHji4jIWlp2fwzCcx5+lZCQ1XdqAiHQARAQABzSZIZWluZXIgS2Fs
 bHdlaXQgPGhrYWxsd2VpdDFAZ21haWwuY29tPsLBjgQTAQgAOBYhBGxfqY/yOyXjyjJehXLe
 ig9U8DoMBQJf9GRVAhsDBQsJCAcCBhUKCQgLAgQWAgMBAh4BAheAAAoJEHLeig9U8DoMSycQ
 AJbfg8HZEK0ljV4M8nvdaiNixWAufrcZ+SD8zhbxl8GispK4F3Yo+20Y3UoZ7FcIidJWUUJL
 axAOkpI/70YNhlqAPMsuudlAieeYZKjIv1WV5ucNZ3VJ7dC+dlVqQdAr1iD869FZXvy91KhJ
 wYulyCf+s4T9YgmLC6jLMBZghKIf1uhSd0NzjyCqYWbk2ZxByZHgunEShOhHPHswu3Am0ftt
 ePaYIHgZs+Vzwfjs8I7EuW/5/f5G9w1vibXxtGY/GXwgGGHRDjFM7RSprGOv4F5eMGh+NFUJ
 TU9N96PQYMwXVxnQfRXl8O6ffSVmFx4H9rovxWPKobLmqQL0WKLLVvA/aOHCcMKgfyKRcLah
 57vGC50Ga8oT2K1g0AhKGkyJo7lGXkMu5yEs0m9O+btqAB261/E3DRxfI1P/tvDZpLJKtq35
 dXsj6sjvhgX7VxXhY1wE54uqLLHY3UZQlmH3QF5t80MS7/KhxB1pO1Cpcmkt9hgyzH8+5org
 +9wWxGUtJWNP7CppY+qvv3SZtKJMKsxqk5coBGwNkMms56z4qfJm2PUtJQGjA65XWdzQACib
 2iaDQoBqGZfXRdPT0tC1H5kUJuOX4ll1hI/HBMEFCcO8++Bl2wcrUsAxLzGvhINVJX2DAQaF
 aNetToazkCnzubKfBOyiTqFJ0b63c5dqziAgzsFNBF/0ZFUBEADF8UEZmKDl1w/UxvjeyAeX
 kghYkY3bkK6gcIYXdLRfJw12GbvMioSguvVzASVHG8h7NbNjk1yur6AONfbUpXKSNZ0skV8V
 fG+ppbaY+zQofsSMoj5gP0amwbwvPzVqZCYJai81VobefTX2MZM2Mg/ThBVtGyzV3NeCpnBa
 8AX3s9rrX2XUoCibYotbbxx9afZYUFyflOc7kEpc9uJXIdaxS2Z6MnYLHsyVjiU6tzKCiVOU
 KJevqvzPXJmy0xaOVf7mhFSNQyJTrZpLa+tvB1DQRS08CqYtIMxRrVtC0t0LFeQGly6bOngr
 ircurWJiJKbSXVstLHgWYiq3/GmCSx/82ObeLO3PftklpRj8d+kFbrvrqBgjWtMH4WtK5uN5
 1WJ71hWJfNchKRlaJ3GWy8KolCAoGsQMovn/ZEXxrGs1ndafu47yXOpuDAozoHTBGvuSXSZo
 ythk/0EAuz5IkwkhYBT1MGIAvNSn9ivE5aRnBazugy0rTRkVggHvt3/7flFHlGVGpBHxFUwb
 /a4UjJBPtIwa4tWR8B1Ma36S8Jk456k2n1id7M0LQ+eqstmp6Y+UB+pt9NX6t0Slw1NCdYTW
 gJezWTVKF7pmTdXszXGxlc9kTrVUz04PqPjnYbv5UWuDd2eyzGjrrFOsJEi8OK2d2j4FfF++
 AzOMdW09JVqejQARAQABwsF2BBgBCAAgFiEEbF+pj/I7JePKMl6Fct6KD1TwOgwFAl/0ZFUC
 GwwACgkQct6KD1TwOgxUfg//eAoYc0Vm4NrxymfcY30UjHVD0LgSvU8kUmXxil3qhFPS7KA+
 y7tgcKLHOkZkXMX5MLFcS9+SmrAjSBBV8omKoHNo+kfFx/dUAtz0lot8wNGmWb+NcHeKM1eb
 nwUMOEa1uDdfZeKef/U/2uHBceY7Gc6zPZPWgXghEyQMTH2UhLgeam8yglyO+A6RXCh+s6ak
 Wje7Vo1wGK4eYxp6pwMPJXLMsI0ii/2k3YPEJPv+yJf90MbYyQSbkTwZhrsokjQEaIfjrIk3
 rQRjTve/J62WIO28IbY/mENuGgWehRlTAbhC4BLTZ5uYS0YMQCR7v9UGMWdNWXFyrOB6PjSu
 Trn9MsPoUc8qI72mVpxEXQDLlrd2ijEWm7Nrf52YMD7hL6rXXuis7R6zY8WnnBhW0uCfhajx
 q+KuARXC0sDLztcjaS3ayXonpoCPZep2Bd5xqE4Ln8/COCslP7E92W1uf1EcdXXIrx1acg21
 H/0Z53okMykVs3a8tECPHIxnre2UxKdTbCEkjkR4V6JyplTS47oWMw3zyI7zkaadfzVFBxk2
 lo/Tny+FX1Azea3Ce7oOnRUEZtWSsUidtIjmL8YUQFZYm+JUIgfRmSpMFq8JP4VH43GXpB/S
 OCrl+/xujzvoUBFV/cHKjEQYBxo+MaiQa1U54ykM2W4DnHb1UiEf5xDkFd4=
In-Reply-To: <c4c0a79d-4e0a-41c1-89b9-8df71ae6335c@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_003444_181334_5F6F23B9 
X-CRM114-Status: GOOD (  15.25  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjMuMTEuMjAyMyAwOToxOSwgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4gSGkKPiAKPiBB
bSAyMy4xMS4yMyB1bSAwODoxNiBzY2hyaWViIEhlaW5lciBLYWxsd2VpdDoKPj4gT24gMjMuMTEu
MjAyMyAwNzo1NiwgVGhvbWFzIFppbW1lcm1hbm4gd3JvdGU6Cj4+PiBIaQo+Pj4KPj4+IEFtIDIw
LjExLjIzIHVtIDIyOjQ2IHNjaHJpZWIgSGVpbmVyIEthbGx3ZWl0Ogo+Pj4+IEFmdGVyIHJlbW92
YWwgb2YgdGhlIGxlZ2FjeSBFRVBST00gZHJpdmVyIGFuZCBJMkNfQ0xBU1NfRERDIHN1cHBvcnQg
aW4KPj4+PiBvbHBjX2Rjb24gdGhlcmUncyBubyBpMmMgY2xpZW50IGRyaXZlciBsZWZ0IHN1cHBv
cnRpbmcgSTJDX0NMQVNTX0REQy4KPj4+PiBDbGFzcy1iYXNlZCBkZXZpY2UgYXV0by1kZXRlY3Rp
b24gaXMgYSBsZWdhY3kgbWVjaGFuaXNtIGFuZCBzaG91bGRuJ3QKPj4+PiBiZSB1c2VkIGluIG5l
dyBjb2RlLiBTbyB3ZSBjYW4gcmVtb3ZlIHRoaXMgY2xhc3MgY29tcGxldGVseSBub3cuCj4+Pj4K
Pj4+PiBQcmVmZXJhYmx5IHRoaXMgc2VyaWVzIHNob3VsZCBiZSBhcHBsaWVkIHZpYSB0aGUgaTJj
IHRyZWUuCj4+Pj4KPj4+PiB2MjoKPj4+PiAtIGNoYW5nZSB0YWcgaW4gY29tbWl0IHN1YmplY3Qg
b2YgcGF0Y2ggMDMKPj4+PiAtIGFkZCBhY2sgdGFncwo+Pj4+IHYzOgo+Pj4+IC0gZml4IGEgY29t
cGlsZSBlcnJvciBpbiBwYXRjaCA1Cj4+Pj4gdjQ6Cj4+Pj4gLSBtb3JlIGFjayBhbmQgcmV2aWV3
IHRhZ3MKPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEhlaW5lciBLYWxsd2VpdCA8aGthbGx3ZWl0
MUBnbWFpbC5jb20+Cj4+Pgo+Pj4gQWNrZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVy
bWFubkBzdXNlLmRlPgo+Pj4KPj4+IGZvciB0aGUgcGF0Y2hlcyB0aGF0IGRvbid0IGFscmVhZHkg
aGF2ZSBteSByLWIuCj4+Pgo+PiBUaGlzIHJlZmVycyB0byB3aGljaCBwYXRjaGVzIG9mIHRoZSBz
ZXJpZXM/Cj4+IFBhdGNoZXMgOCwgMTYsIDE4IGFyZSB0aGUgcmVtYWluaW5nIG9uZXMgdy9vIEEt
YiBvciBSLWIuCj4gCj4gSSd2ZSBsb29rZWQgdGhyb3VnaCB0aGUgcGF0Y2hzZXQuIEZlZWwgZnJl
ZSB0byBhZGQgbXkgYS1iIHRvIHBhdGNoZXMgMSB0byAxOTsgZXhjZXB0IGZvciAyIGFuZCAxNywg
d2hpY2ggYWxyZWFkeSBoYXZlIG15IHItYi4KPiAKPiBCVFcgSSBvbmx5IHJlY2VpdmVkIDE5IHBh
dGNoZXMuIGlzIHRoZXJlIGEgcGF0Y2ggMjAvMjA/Cj4gClllcywgc2VlIGhlcmU6Cmh0dHBzOi8v
cGF0Y2h3b3JrLm96bGFicy5vcmcvcHJvamVjdC9saW51eC1pMmMvcGF0Y2gvMjAyMzExMjAyMTQ2
MjQuOTM3OC0yMS1oa2FsbHdlaXQxQGdtYWlsLmNvbS8KSWYgeW91J3JlIHN1YnNjcmliZWQgdG8g
bGludXgtaTJjIG9yIGxpbnV4LWtlcm5lbCBsaXN0IHlvdSBzaG91bGQgaGF2ZSByZWNlaXZlZCBp
dC4KCj4gQmVzdCByZWdhcmRzCj4gVGhvbWFzCj4gCj4+Cj4+PiBCZXN0IHJlZ2FyZHMKPj4+IFRo
b21hcwo+Pj4KPj4gVGhhbmtzLCBIZWluZXIKPj4KPj4+Pgo+Pj4+IC0tLQo+Pj4+Cj4+Pj4gwqDC
oCBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfaTJjLmPCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqDCoMKgIDEgLQo+Pj4+IMKgwqAgZHJpdmVycy9ncHUvZHJtL2FtZC9kaXNwbGF5L2Ft
ZGdwdV9kbS9hbWRncHVfZG0uYyB8wqDCoMKgIDEgLQo+Pj4+IMKgwqAgZHJpdmVycy9ncHUvZHJt
L2FzdC9hc3RfaTJjLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzC
oMKgwqAgMSAtCj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhk
bWkuY8KgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4+PiDCoMKgIGRyaXZlcnMvZ3B1L2Ry
bS9kaXNwbGF5L2RybV9kcF9oZWxwZXIuY8KgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAt
Cj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1fZHBfbXN0X3RvcG9sb2d5LmPC
oMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4+IMKgwqAgZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9jZHZf
aW50ZWxfZHAuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4+IMKgwqAg
ZHJpdmVycy9ncHUvZHJtL2dtYTUwMC9pbnRlbF9nbWJ1cy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfMKgwqDCoCAxIC0KPj4+PiDCoMKgIGRyaXZlcnMvZ3B1L2RybS9nbWE1MDAvb2FrdHJh
aWxfaGRtaV9pMmMuY8KgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+Pj4gwqDCoCBkcml2ZXJz
L2dwdS9kcm0vZ21hNTAwL3BzYl9pbnRlbF9zZHZvLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDC
oMKgIDEgLQo+Pj4+IMKgwqAgZHJpdmVycy9ncHUvZHJtL2hpc2lsaWNvbi9oaWJtYy9oaWJtY19k
cm1faTJjLmPCoMKgIHzCoMKgwqAgMSAtCj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2dtYnVzLmPCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4+IMKgwqAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZvLmPCoMKgwqDCoMKgwqDCoMKg
IHzCoMKgwqAgMSAtCj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vbG9vbmdzb24vbHNkY19pMmMu
Y8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4+PiDCoMKgIGRyaXZl
cnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaV9kZGMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgIHzC
oMKgwqAgMSAtCj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vbWdhZzIwMC9tZ2FnMjAwX2kyYy5j
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+Pj4gwqDCoCBkcml2ZXJzL2dw
dS9kcm0vbXNtL2hkbWkvaGRtaV9pMmMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
wqDCoCAxIC0KPj4+PiDCoMKgIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2kyYy5jwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4+IMKgwqAgZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL2lubm9faGRtaS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
wqDCoCAxIC0KPj4+PiDCoMKgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yazMwNjZfaGRtaS5j
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4+IMKgwqAgZHJpdmVycy9ncHUv
ZHJtL3N1bjRpL3N1bjRpX2hkbWlfaTJjLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAg
MSAtCj4+Pj4gwqDCoCBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJfZGRjLmPCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4+IMKgwqAgZHJpdmVycy92aWRl
by9mYmRldi9jeWJlcjIwMDBmYi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKg
wqDCoCAxIC0KPj4+PiDCoMKgIGRyaXZlcnMvdmlkZW8vZmJkZXYvaTc0MGZiLmPCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4+PiDCoMKgIGRy
aXZlcnMvdmlkZW8vZmJkZXYvaW50ZWxmYi9pbnRlbGZiX2kyYy5jwqDCoMKgwqDCoMKgwqDCoCB8
wqDCoCAxNSArKysrKy0tLS0tLS0tLS0KPj4+PiDCoMKgIGRyaXZlcnMvdmlkZW8vZmJkZXYvbWF0
cm94L2kyYy1tYXRyb3hmYi5jwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCAxMiArKysrLS0tLS0tLS0K
Pj4+PiDCoMKgIGRyaXZlcnMvdmlkZW8vZmJkZXYvczNmYi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4+IMKgwqAgZHJpdmVycy92
aWRlby9mYmRldi90ZGZ4ZmIuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCB8wqDCoMKgIDEgLQo+Pj4+IMKgwqAgZHJpdmVycy92aWRlby9mYmRldi90cmlkZW50ZmIu
Y8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+Pj4+IMKg
wqAgZHJpdmVycy92aWRlby9mYmRldi92aWEvdmlhX2kyYy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4+PiDCoMKgIGluY2x1ZGUvbGludXgvaTJjLmjCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgwqDCoCAxIC0KPj4+PiDCoMKgIDMxIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwg
NDcgZGVsZXRpb25zKC0pCj4+Pgo+Pgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
