Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5276BC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 09:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpGhoRLTk3d+mTiLe2dIDtJgQD+SPwEuDuz78XnhFG8=; b=38RhRUeZDHkvIz
	0dZdpMgM3tIQhibwSncfdVfiQ1DycJvVfJK9lzV91U2bSxclOACc5rTUhskiMFPVQq5HBjPrl4Zqh
	/Q0712BztiqO7hhbnZfmsSgKZaulb7a+5dsJPjqJpDDYmzLQX8C7tskGZw/VCgahVzqVMAZCSk47p
	1YNlqFgGC8bMQNvZEdcOlQKEawypzrg/cYs9pyWaob8+/rAaamkbw88wFjrbqPRPCN4hXwk7TKG27
	NNOPZQxM1Qr0sWrm70771cSqYw4NKUgmkpza0wMd1jUva0E3V5t4UD1QxmJusko9SDQlV9tVEn/6K
	rIx0YCUT8RH1f03DXUow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYMH4-0000000AdhI-33TD;
	Mon, 29 Jul 2024 09:02:34 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYMGd-0000000AdbH-3COn
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 09:02:09 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-6b78c980981so17230356d6.2
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2024 02:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722243725; x=1722848525; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=yW1OO+skBc1eCv7kSQixud2h2uSiGX+bRNa0JQW8fcc=;
        b=dbAVTHI+y0k62j/Cpb9Yjr56ThOt4YHDBuzYJolcUVH4oahOwune729xLN3rlKsqc2
         1nByifWzNOxhZy6TQpPwi7hGejj2jQgAiZCxCVkKgQJZuT06vb1oK4dYslQ2RK9luKix
         /vAC0wnX1FbXZOM9LdOAjG3MQWRWYsVHgpf0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722243725; x=1722848525;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yW1OO+skBc1eCv7kSQixud2h2uSiGX+bRNa0JQW8fcc=;
        b=lQq5ja5VZapzLq9mmkC/+4qgjatHVaD2ttOYZ4x6ESfG4rDGdpL6y6S18spvyIlXP8
         CEmnrD5vU9wmB3G9t0eolavP5plA8NN9cY9dIwBtQVfXBVK7ejoqyVQLS5Cvknj0fWu2
         o2vnUAekxcjmNGCY4PYdNZ486bo1KraByguK3dtBe16t8G+LJYXLGdXfXgaW3tLCHITx
         pPQEOIldOtkbm0k74VSVLm0SYfQq4wT+F5cwW5xzO3HdfjUL4QUDFg1chb6EMb2OzPz1
         OujKpU2Zb/ST4FYQA7265VPkYArqT1FDEDFbizEuxbXCcKK0gwkLDWB98ehez8Cf854z
         juPA==
X-Forwarded-Encrypted: i=1; AJvYcCVbq6IS4FvGI7rskcsEryBL9TMjLbVfefBJoU8rA80QwVwalf645pzoiFNK8kYS896WFb9k2Rq8eVY8u8WqTjj9cCwm9sDTEr/iFUxmWmpBin21
X-Gm-Message-State: AOJu0YwlB/rEyaNwM2U85WJBBvnt/WqABNNt9i0nFXF0kK3x56baLyg5
	z88FPo/ctfmE07+bZ5szkjGtyO22wmsk1F8qtM0OjgU9+lcLKf2mOXRMp8ZBkA==
X-Google-Smtp-Source: AGHT+IGfVpIWeoLiZdliqYD6w6MUHUy5e1ltf8zZbU1y1lynDYoJKE4YmHmc0uMuWNlwhLCGFfNsjg==
X-Received: by 2002:ad4:5be5:0:b0:6b0:9479:cdd7 with SMTP id 6a1803df08f44-6bb55acbe54mr103099816d6.54.1722243724747;
        Mon, 29 Jul 2024 02:02:04 -0700 (PDT)
Received: from [10.176.68.61] ([192.19.176.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6bb3f8d81e2sm49047726d6.25.2024.07.29.02.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jul 2024 02:02:04 -0700 (PDT)
Message-ID: <225279b3-882b-4d97-b7f4-08129c1f05a7@broadcom.com>
Date: Mon, 29 Jul 2024 11:01:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] dt-bindings: net: wireless: brcm4329-fmac: add
 clock description for AP6275P Wi-Fi device
To: Jacobe Zang <jacobe.zang@wesion.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "heiko@sntech.de"
 <heiko@sntech.de>, "kvalo@kernel.org" <kvalo@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>
Cc: "efectn@protonmail.com" <efectn@protonmail.com>,
 "dsimic@manjaro.org" <dsimic@manjaro.org>,
 "jagan@edgeble.ai" <jagan@edgeble.ai>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "arend@broadcom.com" <arend@broadcom.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "megi@xff.cz"
 <megi@xff.cz>, "duoming@zju.edu.cn" <duoming@zju.edu.cn>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "minipli@grsecurity.net" <minipli@grsecurity.net>,
 "brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>,
 "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
 Nick Xie <nick@khadas.com>
References: <20240729070102.3770318-1-jacobe.zang@wesion.com>
 <20240729070102.3770318-3-jacobe.zang@wesion.com>
 <1724f480-369d-4b4a-9384-1c6b33b00433@kernel.org>
 <TYZPR03MB7001247E93FB6473128FEB2480B72@TYZPR03MB7001.apcprd03.prod.outlook.com>
Content-Language: en-US
From: Arend van Spriel <arend.vanspriel@broadcom.com>
Autocrypt: addr=arend.vanspriel@broadcom.com; keydata=
 xsFNBGP96SABEACfErEjSRi7TA1ttHYaUM3GuirbgqrNvQ41UJs1ag1T0TeyINqG+s6aFuO8
 evRHRnyAqTjMQoo4tkfy21XQX/OsBlgvMeNzfs6jnVwlCVrhqPkX5g5GaXJnO3c4AvXHyWik
 SOd8nOIwt9MNfGn99tkRAmmsLaMiVLzYfg+n3kNDsqgylcSahbd+gVMq+32q8QA+L1B9tAkM
 UccmSXuhilER70gFMJeM9ZQwD/WPOQ2jHpd0hDVoQsTbBxZZnr2GSjSNr7r5ilGV7a3uaRUU
 HLWPOuGUngSktUTpjwgGYZ87Edp+BpxO62h0aKMyjzWNTkt6UVnMPOwvb70hNA2v58Pt4kHh
 8ApHky6IepI6SOCcMpUEHQuoKxTMw/pzmlb4A8PY//Xu/SJF8xpkpWPVcQxNTqkjbpazOUw3
 12u4EK1lzwH7wjnhM3Fs5aNBgyg+STS1VWIwoXJ7Q2Z51odh0XecsjL8EkHbp9qHdRvZQmMu
 Ns8lBPBkzpS7y2Q6Sp7DcRvDfQQxPrE2sKxKLZVGcRYAD90r7NANryRA/i+785MSPUNSTWK3
 MGZ3Xv3fY7phISvYAklVn/tYRh88Zthf6iDuq86m5mr+qOO8s1JnCz6uxd/SSWLVOWov9Gx3
 uClOYpVsUSu3utTta3XVcKVMWG/M+dWkbdt2KES2cv4P5twxyQARAQABzS9BcmVuZCB2YW4g
 U3ByaWVsIDxhcmVuZC52YW5zcHJpZWxAYnJvYWRjb20uY29tPsLBhwQTAQgAMRYhBLX1Z69w
 T4l/vfdb0pZ6NOIYA/1RBQJj/ek9AhsDBAsJCAcFFQgJCgsFFgIDAQAACgkQlno04hgD/VGw
 8A//VEoGTamfCks+a12yFtT1d/GjDdf3i9agKMk3esn08JwjJ96x9OFFl2vFaQCSiefeXITR
 K4T/yT+n/IXntVWT3pOBfb343cAPjpaZvBMh8p32z3CuV1H0Y+753HX7gdWTEojGWaWmKkZh
 w3nGoRZQEeAcwcF3gMNwsM5Gemj7aInIhRLUeoKh/0yV85lNE1D7JkyNheQ+v91DWVj5/a9X
 7kiL18fH1iC9kvP3lq5VE54okpGqUj5KE5pmHNFBp7HZO3EXFAd3Zxm9ol5ic9tggY0oET28
 ucARi1wXLD/oCf1R9sAoWfSTnvOcJjG+kUwK7T+ZHTF8YZ4GAT3k5EwZ2Mk3+Rt62R81gzRF
 A6+zsewqdymbpwgyPDKcJ8YUHbqvspMQnPTmXNk+7p7fXReVPOYFtzzfBGSCByIkh1bB45jO
 +TM5ZbMmhsUbqA0dFT5JMHjJIaGmcw21ocgBcLsJ730fbLP/L08udgWHywPoq7Ja7lj5W0io
 ZDLz5uQ6CEER6wzD07vZwSl/NokljVexnOrwbR3wIhdr6B0Hc/0Bh7T8gpeM+QcK6EwJBG7A
 xCHLEacOuKo4jinf94YQrOEMnOmvucuQRm9CIwZrQ69Mg6rLn32pA4cK4XWQN1N3wQXnRUnb
 MTymLAoxE4MInhDVsZCtIDFxMVvBUgZiZZszN33OwU0EY/3pIgEQAN35Ii1Hn90ghm/qlvz/
 L+wFi3PTQ90V6UKPv5Q5hq+1BtLA6aj2qmdFBO9lgO9AbzHo8Eizrgtxp41GkKTgHuYChijI
 kdhTVPm+Pv44N/3uHUeFhN3wQ3sTs1ZT/0HhwXt8JvjqbhvtNmoGosZvpUCTwiyM1VBF/ICT
 ltzFmXd5z7sEuDyZcz9Q1t1Bb2cmbhp3eIgLmVA4Lc9ZS3sK1UMgSDwaR4KYBhF0OKMC1OH8
 M5jfcPHR8OLTLIM/Thw0YIUiYfj6lWwWkb82qa4IQvIEmz0LwvHkaLU1TCXbehO0pLWB9HnK
 r3nofx5oMfhu+cMa5C6g3fBB8Z43mDi2m/xM6p5c3q/EybOxBzhujeKN7smBTlkvAdwQfvuD
 jKr9lvrC2oKIjcsO+MxSGY4zRU0WKr4KD720PV2DCn54ZcOxOkOGR624d5bhDbjw1l2r+89V
 WLRLirBZn7VmWHSdfq5Xl9CyHT1uY6X9FRr3sWde9kA/C7Z2tqy0MevXAz+MtavOJb9XDUlI
 7Bm0OPe5BTIuhtLvVZiW4ivT2LJOpkokLy2K852u32Z1QlOYjsbimf77avcrLBplvms0D7j6
 OaKOq503UKfcSZo3lF70J5UtJfXy64noI4oyVNl1b+egkV2iSXifTGGzOjt50/efgm1bKNkX
 iCVOYt9sGTrVhiX1ABEBAAHCwXYEGAEIACAWIQS19WevcE+Jf733W9KWejTiGAP9UQUCY/3p
 PgIbDAAKCRCWejTiGAP9UaC/EACZvViKrMkFooyACGaukqIo/s94sGuqxj308NbZ4g5jgy/T
 +lYBzlurnFmIbJESFOEq0MBZorozDGk+/p8pfAh4S868i1HFeLivVIujkcL6unG1UYEnnJI9
 uSwUbEqgA8vwdUPEGewYkPH6AaQoh1DdYGOleQqDq1Mo62xu+bKstYHpArzT2islvLdrBtjD
 MEzYThskDgDUk/aGPgtPlU9mB7IiBnQcqbS/V5f01ZicI1esy9ywnlWdZCHy36uTUfacshpz
 LsTCSKICXRotA0p6ZiCQloW7uRH28JFDBEbIOgAcuXGojqYx5vSM6o+03W9UjKkBGYFCqjIy
 Ku843p86Ky4JBs5dAXN7msLGLhAhtiVx8ymeoLGMoYoxqIoqVNaovvH9y1ZHGqS/IYXWf+jE
 H4MX7ucv4N8RcsoMGzXyi4UbBjxgljAhTYs+c5YOkbXfkRqXQeECOuQ4prsc6/zxGJf7MlPy
 NKowQLrlMBGXT4NnRNV0+yHmusXPOPIqQCKEtbWSx9s2slQxmXukPYvLnuRJqkPkvrTgjn5d
 eSE0Dkhni4292/Nn/TnZf5mxCNWH1p3dz/vrT6EIYk2GSJgCLoTkCcqaM6+5E4IwgYOq3UYu
 AAgeEbPV1QeTVAPrntrLb0t0U5vdwG7Xl40baV9OydTv7ghjYZU349w1d5mdxg==
In-Reply-To: <TYZPR03MB7001247E93FB6473128FEB2480B72@TYZPR03MB7001.apcprd03.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_020207_963980_F855284E 
X-CRM114-Status: GOOD (  10.24  )
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

On 7/29/2024 10:17 AM, Jacobe Zang wrote:
>>> Add clocks and clock-names for brcm4329-fmac.
>>
>> Why? Which devices have it? If only your newest addon, then squash the
>> patches and add appropriate allOf:if:then disallowing the clocks for
>> others. Or maybe all of them have it? Why commit msg does not explain
>> anything about the hardware?
> 
> Alright... Becuase of the datasheet said hardware has one LPO clock input. So
> I will add allOf:if:then for this specific hardware

Maybe this can help clarifying the commit message. All Broadcom wireless 
chips have this clock input, but often the chip end up on a wifi module 
that may or may not provide the clock. From chip perspective the clock 
input is always present, but it is optional as the chip can also use an 
internal clock.

As such I would not choose to make this specific to this AP6275P 
hardware (just my 2 cents).

Regards,
Arend

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
