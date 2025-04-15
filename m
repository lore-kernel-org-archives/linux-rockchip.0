Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0940DC369B9
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Apr 2025 05:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8XVQfffFL2jFrjU0siJXvbTWC30+EXBBta0FSbn2yk=; b=f+v3Cqe4uDjK90
	Os/kkAzEgyddzen42Jw/savw8+YoP+D/salBEyrjpwVIRtyKuf74lP4cHC3wrCGYUktDpC1U57Ojg
	YEzcQN3akuWneey78FBfQ2zwQVJfU5LgGnQIhRuhQ2KUVO+CTcHR7V536gX29ZaU8gTayCx5HAh5N
	oJDHezM5JmVdUDr+pBjda2kT7PJQGAJX8RGeuh2s0pJ2Ccmqt41Q8M/jdGnVZHsQxQNHBtNvFhxiM
	H1CTeglFQk7xMzJZsbuc+YYtuWYGN/3NwjjhW5H38taF+KXis02VVthEeW87M1ZtbDCsiU8y+D0Zt
	aznPNfZ22A4bkhKRUffQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4ZDn-00000004bMM-0xli;
	Tue, 15 Apr 2025 05:52:35 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4YzS-00000004ZdD-26ou
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Apr 2025 05:37:47 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-73712952e1cso4825484b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 14 Apr 2025 22:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744695465; x=1745300265; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=8flXeGMcN8DVz3lPVeuDpme2GWkR5Yqy7lgnki0syIw=;
        b=FLApKbN9hPaW2zerNFcYQTVCAYD8eRIZ6i0GgbmX0HVQuKjTo/oODQNgxc91QYfyP+
         /20+hlODWNI7dnQFiqfD9n7f91CpNMC5T24sgXwW+dUZpUu4gOrGmk0EkCF/1m79GIsK
         ctK80qdg18VbNbrtPBlFLvb0jcjuqORbhR/muwD7Fd+nDmxwxOGf9Vv5GJLikY+Fj0KT
         tfoVOAJkvFosPHrHHJgWwAJsOSRZwKKP1cbFw505NnBU/x0fdrF3rGq8rrvoGLgqG+QE
         aYKesnd2lb3qHjRq4j1l3T8iIdPPAIGa3tQCzfkCcbuxpZr1ds6TQddXXv8BLtkr+lTj
         iEwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744695465; x=1745300265;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8flXeGMcN8DVz3lPVeuDpme2GWkR5Yqy7lgnki0syIw=;
        b=YILE69HWGvLsPOovnZpb128bMd0+oYXgEQonSYOjgOX/4E0MHprudKS4sBWxNsB5rj
         /6H5cBefHia3dmDfdHTZVq2NWJK7T8AqDM7IF9njbUcPjsXeEjOYtHma3FuYLIf0Oxn1
         nJBa9ENJrebdT9bTtJ++m+pIeTxpf7fS+1RcAbvbTksv02Zdq7WzPwISRVdA3Y/JyJCP
         CxBUDUXfKcmHj0H0aOda0FMoBj9E2mQ89yAzCLyEqaQy/22XwmRGe6vDPPedTuQY6THN
         xabUdCHpDeNWHn1jQS/LFS3T5MxmP9HsvWIM6SHZlWO6y8CZTDXe9pQOmhrStXwzki4T
         hOPw==
X-Gm-Message-State: AOJu0YzgVuHEWCkK9qtCv9EiN8o7LkvsaxYn9RDnV0QN8xPiXiic2niN
	JoSW7nqkHhEZ6tWp/N5GJKO31Tl5qMEXbEF0d26WXT4+vlvmXydMoIyvBg==
X-Gm-Gg: ASbGnctoYLj8pZ9EDKFF6keo+jT2rjx5EXZATyt0naZDNNlRWDJwxUaMYt4MrHwOUcT
	mOboaLPHD1mjAaWILqAy3tYoYis5pNFv669+qKjUy0hrsOsffSAYceq2CNXsqUvz7Y/lFuQbde5
	4QK+PTU4lcUmGhfcXUSBpdr1ZCRP17HTxibUpRvl62vI96xwUHtDeSAPhI+1Lie4iDUxBQFhjQh
	tIQvrnKk4sU/7VSsCGS9P2XcjC9HkVPtbDrmjgA7ln8jZsxFbSLxpFXG7aPxfs8BK7SO/W4DNKz
	RKhnUyDkxZVS+gN4DD3GW/fcFgI26zZhiq7r2uA99yCV4DeyuLPrA6QqW+VhKHO4tCBuvfrxqxG
	hIG3C6mgjkc/Cm58ohEAXTWXv
X-Google-Smtp-Source: AGHT+IGij4jcp0JaBuCtT/GgQB93ABcvo0Rbgg4vLD44uasnLdON39Wb0zLiyoGB2w7OeD+4Alnwyg==
X-Received: by 2002:a05:6a20:4389:b0:1f5:5903:edd3 with SMTP id adf61e73a8af0-201797a3bccmr22389174637.11.1744695465415;
        Mon, 14 Apr 2025 22:37:45 -0700 (PDT)
Received: from ?IPV6:2600:1700:e321:62f0:da43:aeff:fecc:bfd5? ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b0a639a4ed3sm614426a12.55.2025.04.14.22.37.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 22:37:44 -0700 (PDT)
Message-ID: <be917c00-5de0-41ac-917e-6a787b5bfd96@roeck-us.net>
Date: Mon, 14 Apr 2025 22:37:43 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] dt-bindings: watchdog: Add rk3562 compatible
To: Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Jamie Iles <jamie@jamieiles.com>, linux-watchdog@vger.kernel.org,
 Wim Van Sebroeck <wim@linux-watchdog.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>
References: <20250415051855.59740-1-kever.yang@rock-chips.com>
 <20250415051855.59740-3-kever.yang@rock-chips.com>
Content-Language: en-US
From: Guenter Roeck <linux@roeck-us.net>
Autocrypt: addr=linux@roeck-us.net; keydata=
 xsFNBE6H1WcBEACu6jIcw5kZ5dGeJ7E7B2uweQR/4FGxH10/H1O1+ApmcQ9i87XdZQiB9cpN
 RYHA7RCEK2dh6dDccykQk3bC90xXMPg+O3R+C/SkwcnUak1UZaeK/SwQbq/t0tkMzYDRxfJ7
 nyFiKxUehbNF3r9qlJgPqONwX5vJy4/GvDHdddSCxV41P/ejsZ8PykxyJs98UWhF54tGRWFl
 7i1xvaDB9lN5WTLRKSO7wICuLiSz5WZHXMkyF4d+/O5ll7yz/o/JxK5vO/sduYDIlFTvBZDh
 gzaEtNf5tQjsjG4io8E0Yq0ViobLkS2RTNZT8ICq/Jmvl0SpbHRvYwa2DhNsK0YjHFQBB0FX
 IdhdUEzNefcNcYvqigJpdICoP2e4yJSyflHFO4dr0OrdnGLe1Zi/8Xo/2+M1dSSEt196rXaC
 kwu2KgIgmkRBb3cp2vIBBIIowU8W3qC1+w+RdMUrZxKGWJ3juwcgveJlzMpMZNyM1jobSXZ0
 VHGMNJ3MwXlrEFPXaYJgibcg6brM6wGfX/LBvc/haWw4yO24lT5eitm4UBdIy9pKkKmHHh7s
 jfZJkB5fWKVdoCv/omy6UyH6ykLOPFugl+hVL2Prf8xrXuZe1CMS7ID9Lc8FaL1ROIN/W8Vk
 BIsJMaWOhks//7d92Uf3EArDlDShwR2+D+AMon8NULuLBHiEUQARAQABzTJHdWVudGVyIFJv
 ZWNrIChMaW51eCBhY2NvdW50KSA8bGludXhAcm9lY2stdXMubmV0PsLBgQQTAQIAKwIbAwYL
 CQgHAwIGFQgCCQoLBBYCAwECHgECF4ACGQEFAlVcphcFCRmg06EACgkQyx8mb86fmYFg0RAA
 nzXJzuPkLJaOmSIzPAqqnutACchT/meCOgMEpS5oLf6xn5ySZkl23OxuhpMZTVX+49c9pvBx
 hpvl5bCWFu5qC1jC2eWRYU+aZZE4sxMaAGeWenQJsiG9lP8wkfCJP3ockNu0ZXXAXwIbY1O1
 c+l11zQkZw89zNgWgKobKzrDMBFOYtAh0pAInZ9TSn7oA4Ctejouo5wUugmk8MrDtUVXmEA9
 7f9fgKYSwl/H7dfKKsS1bDOpyJlqhEAH94BHJdK/b1tzwJCFAXFhMlmlbYEk8kWjcxQgDWMu
 GAthQzSuAyhqyZwFcOlMCNbAcTSQawSo3B9yM9mHJne5RrAbVz4TWLnEaX8gA5xK3uCNCeyI
 sqYuzA4OzcMwnnTASvzsGZoYHTFP3DQwf2nzxD6yBGCfwNGIYfS0i8YN8XcBgEcDFMWpOQhT
 Pu3HeztMnF3HXrc0t7e5rDW9zCh3k2PA6D2NV4fews9KDFhLlTfCVzf0PS1dRVVWM+4jVl6l
 HRIAgWp+2/f8dx5vPc4Ycp4IsZN0l1h9uT7qm1KTwz+sSl1zOqKD/BpfGNZfLRRxrXthvvY8
 BltcuZ4+PGFTcRkMytUbMDFMF9Cjd2W9dXD35PEtvj8wnEyzIos8bbgtLrGTv/SYhmPpahJA
 l8hPhYvmAvpOmusUUyB30StsHIU2LLccUPPOwU0ETofVZwEQALlLbQeBDTDbwQYrj0gbx3bq
 7kpKABxN2MqeuqGr02DpS9883d/t7ontxasXoEz2GTioevvRmllJlPQERVxM8gQoNg22twF7
 pB/zsrIjxkE9heE4wYfN1AyzT+AxgYN6f8hVQ7Nrc9XgZZe+8IkuW/Nf64KzNJXnSH4u6nJM
 J2+Dt274YoFcXR1nG76Q259mKwzbCukKbd6piL+VsT/qBrLhZe9Ivbjq5WMdkQKnP7gYKCAi
 pNVJC4enWfivZsYupMd9qn7Uv/oCZDYoBTdMSBUblaLMwlcjnPpOYK5rfHvC4opxl+P/Vzyz
 6WC2TLkPtKvYvXmdsI6rnEI4Uucg0Au/Ulg7aqqKhzGPIbVaL+U0Wk82nz6hz+WP2ggTrY1w
 ZlPlRt8WM9w6WfLf2j+PuGklj37m+KvaOEfLsF1v464dSpy1tQVHhhp8LFTxh/6RWkRIR2uF
 I4v3Xu/k5D0LhaZHpQ4C+xKsQxpTGuYh2tnRaRL14YMW1dlI3HfeB2gj7Yc8XdHh9vkpPyuT
 nY/ZsFbnvBtiw7GchKKri2gDhRb2QNNDyBnQn5mRFw7CyuFclAksOdV/sdpQnYlYcRQWOUGY
 HhQ5eqTRZjm9z+qQe/T0HQpmiPTqQcIaG/edgKVTUjITfA7AJMKLQHgp04Vylb+G6jocnQQX
 JqvvP09whbqrABEBAAHCwWUEGAECAA8CGwwFAlVcpi8FCRmg08MACgkQyx8mb86fmYHNRQ/+
 J0OZsBYP4leJvQF8lx9zif+v4ZY/6C9tTcUv/KNAE5leyrD4IKbnV4PnbrVhjq861it/zRQW
 cFpWQszZyWRwNPWUUz7ejmm9lAwPbr8xWT4qMSA43VKQ7ZCeTQJ4TC8kjqtcbw41SjkjrcTG
 wF52zFO4bOWyovVAPncvV9eGA/vtnd3xEZXQiSt91kBSqK28yjxAqK/c3G6i7IX2rg6pzgqh
 hiH3/1qM2M/LSuqAv0Rwrt/k+pZXE+B4Ud42hwmMr0TfhNxG+X7YKvjKC+SjPjqp0CaztQ0H
 nsDLSLElVROxCd9m8CAUuHplgmR3seYCOrT4jriMFBtKNPtj2EE4DNV4s7k0Zy+6iRQ8G8ng
 QjsSqYJx8iAR8JRB7Gm2rQOMv8lSRdjva++GT0VLXtHULdlzg8VjDnFZ3lfz5PWEOeIMk7Rj
 trjv82EZtrhLuLjHRCaG50OOm0hwPSk1J64R8O3HjSLdertmw7eyAYOo4RuWJguYMg5DRnBk
 WkRwrSuCn7UG+qVWZeKEsFKFOkynOs3pVbcbq1pxbhk3TRWCGRU5JolI4ohy/7JV1TVbjiDI
 HP/aVnm6NC8of26P40Pg8EdAhajZnHHjA7FrJXsy3cyIGqvg9os4rNkUWmrCfLLsZDHD8FnU
 mDW4+i+XlNFUPUYMrIKi9joBhu18ssf5i5Q=
In-Reply-To: <20250415051855.59740-3-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_223746_548846_F1FB80E9 
X-CRM114-Status: GOOD (  11.55  )
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

On 4/14/25 22:18, Kever Yang wrote:
> Add rockchip,rk3562-wdt for rk3562.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

> ---
> 
> Changes in v4:
> - Collect ack tag
> 
> Changes in v3:
> - Collect reveiw tag
> 
> Changes in v2: None
> 
>   Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index 1efefd741c06..ef088e0f6917 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -28,6 +28,7 @@ properties:
>                 - rockchip,rk3328-wdt
>                 - rockchip,rk3368-wdt
>                 - rockchip,rk3399-wdt
> +              - rockchip,rk3562-wdt
>                 - rockchip,rk3568-wdt
>                 - rockchip,rk3576-wdt
>                 - rockchip,rk3588-wdt


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
