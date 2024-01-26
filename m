Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF9B1C47DDB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 19:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MNDAwktSIBYcPb7a9Ie4OEYH76YcYJjuUgmpH1X0gA=; b=WyjwKZmwVu8aRA
	drcCInEDL74E7yQH3S3lJ+5RdyXEYcTu1ndEPtqeswcJcMcc1IyW/2FRaHBx2aIq9/ibVBZUemkSp
	iYowk5wiM1EKVvL6BdTyJtNJ/ikFRG5PSUTKMt3oHTwKIUPXpfebAAOxX9clc8SmKw/UqZlqyromw
	FfXaj8L88J2/cMhEz7KhWx/Ec/xprUMbLA8FHxgpYBXXWSAQtYIFGB0U6osoIQbIsdOcs1k+DddRJ
	RA1vgjhuzPRUQSumwKUu01Y30xwdajT0PY0yrqivTMweUuXdpbMx7lQPt7/5RYFfSAWODd1mLrAUc
	wG5pYBN5XQJzwCHn2VHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTSM0-00000005Ieb-33vU;
	Fri, 26 Jan 2024 19:59:08 +0000
Received: from mout.gmx.net ([212.227.17.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTSLx-00000005Icp-2Sg9;
	Fri, 26 Jan 2024 19:59:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.de; s=s31663417;
	t=1706299131; x=1706903931; i=linosanfilippo@gmx.de;
	bh=cRzLRQLkoT/9QCSn+btL5/4YZw+PC8W1ychaTIgW3/Q=;
	h=X-UI-Sender-Class:Date:Subject:To:Cc:References:From:
	 In-Reply-To;
	b=qSh8rlp++h2UL10nO3ZC6Qhyxh9m8pn53Dt2WTcaUCG6k2bApgwssHd7NIk2TbJu
	 Zo+WfXtE43EucUy+yKr4BsJwqeUhv3wR5vBPogtcDFRli3mBozrnOjlCiC9AQEbxU
	 kZOaOHbQk2zzeWftCh+zfCUDsvU1vc0oBF2sz2ajn2p1gVqdOC3JMFGj0YJ491/1X
	 IewEf1Q86xDFWDbd73UKUmIxzeGVXY0vrerDckSb6CVGzVb5rX5kjIFQpuiuOetRr
	 xqKhgMmKn9aGI6p9So3ssYKk+pmgsU9oGGjMQJNQ+93AiQEQgqKTaj8VwYhYLk2VO
	 FqIqODPwHgvKNctyLQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.2.42] ([84.180.5.12]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1M1HZi-1rWCAb24XC-002rBK; Fri, 26
 Jan 2024 20:58:51 +0100
Message-ID: <098216ce-50b3-43e4-ad1a-42228c58b761@gmx.de>
Date: Fri, 26 Jan 2024 20:58:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/6] serial: 8250: Support separate rs485 rx-enable
 GPIO
Content-Language: en-US
To: Farouk Bouabid <farouk.bouabid@theobroma-systems.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 quentin.schulz@theobroma-systems.com,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240126-dev-rx-enable-v5-0-5d934eda05ca@theobroma-systems.com>
 <20240126-dev-rx-enable-v5-2-5d934eda05ca@theobroma-systems.com>
From: Lino Sanfilippo <LinoSanfilippo@gmx.de>
In-Reply-To: <20240126-dev-rx-enable-v5-2-5d934eda05ca@theobroma-systems.com>
X-Provags-ID: V03:K1:ZxMRSpxhrKQNxRQVUQyrIc8UZwPVseB5XxzkFHOXhcCiL9DaKQ+
 LoOnRpzN6nc+kk0LwXWXCb3q9omGjK4QqK46ZFM0pFBpjurJ/TMUaSzMcmatc0t9IbB9XOh
 m1ipbp6DGASgrgCICC1hkD/Y8kCDX4irts5qeyO66IAzHcPlYv6DS3ZjdhWxeD2n51USWjY
 8oC2bt2tH1AFA4e+qXYQA==
UI-OutboundReport: notjunk:1;M01:P0:gDeFAUjQu88=;LyErTh1wbmp4ZgUkN2hipgHtJip
 Doasra58RavpqzDzDkRpATvXg2UWTEIs8FY3wGifrBGjoG8OZ7XWkAWj7S7d/CqD8+XJozQgg
 GXbN1lSKKAMwvlFtJwrC+mFYX8f9AMByLl2inW33lRUHV9zt/ozkAczOIukrBYMdJzhUfK8bL
 EIGpYZwCLKi0NxwE8nq/9OkiEXlqk0+paRlr8cewb4fRcpOIan4Anozb6PqsnRgPM7QcZM1w5
 phyRqULFK7WdO06b0nSRXe8Z69HjxoqSFMIDRgm7ZqOg/KsAzJwjqvNSNTa8A4WjuHRUWZVKo
 c9TO5w3UiF/SWoftSN1wEIps/d5YTOJK5ouPrcGnKItZgekoSQO0Z5q2ZX9i7UoEClgtz9sMF
 M7KlxJ6CU7jSybRv7cdD+jrEFeYH4TnHVhHqOxpmEmyCw1K2h9QtRzGbZPIMxOGkjVI9avub4
 XPM72OdUCP/zGxht5V6HyqM5VnyXRG/FKVkLjgIMs5E934N0qA6sCIsR68mnHe59QVZSFLSBD
 y4JQlMFaKZXKTyK5oKXiwFZ3z21/pzKdYxP/bjUhhR8tZl2Iw1tiRXSmUShk3VGHgy/6a3Sqo
 RrvNboGzXBaKmIGtWy+0pFe/Vf6zw+DqHQ9DeMI/hKuUtUQzdeXJDkD2xoPe96RBFtsaFOKsf
 Yu1eHFHcKnaYFfZ8Mb1pEmUTA3pxvgARx+kYLJcV44D6tr+oVHzAc1D0QezjC+PLc+7yXAw+k
 G8JHOYNegYJQvUWoE+gaYbLp8iuUTJdGnbMza8NU1YRui2utEERA+ahnOvfgMNDHBL0vjhVVz
 B4Qls2sbQGt/NGT3zpmWbYlj7mVj+Bi6Xcil1giY1tGYTc4ZKebGHZYJPk5sApQEJRazuVwRw
 pwm/TpmUMJawXcDQ7pUOztJSnzRN4QDqO3ZRdvZ7D4al6Lh+479MaZHfTDUiC0zzObA4F5qDd
 SW2XOQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_115905_946429_E591BD32 
X-CRM114-Status: GOOD (  11.92  )
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


Hi,

On 26.01.24 18:27, Farouk Bouabid wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
>
> The RE signal is used to control the duplex mode of transmissions,
> aka receiving data while sending in full duplex mode, while stopping
> receiving data in half-duplex mode.
>
> On a number of boards the !RE signal is tied to ground so reception
> is always enabled except if the UART allows disabling the receiver.
> This can be taken advantage of to implement half-duplex mode - like
> done on 8250_bcm2835aux.
>
> Another solution is to tie !RE to RTS always forcing half-duplex mode.
>
> And finally there is the option to control the RE signal separately,
> like done here by introducing a new rs485-specific gpio that can be
> set depending on the RX_DURING_TX setting in the common em485 callbacks.
>

we just added the rx_during_tx_gpio to the serial core.
Why cant you use this GPIO for your purpose?

Regards,
Lino


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
