Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E19D5C021A9
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Feb 2025 18:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lPNcBGjpP+dkUjAs7SUm2JWCpWm6YxRwVvNSputSrhk=; b=IDV5Wh8N2Wzm6p
	UdjcD6mgRy/wP7A+ONiekPTQHwl/2J/jv1WAaIDX+7liQx3pqvNb4579cvmP1RcE1Id8mMD2hO+2U
	rjUkVpTsyJlNaZgABmrNoRBWOCANwn4upKNAZqM4Mj4Jd2t7xL7Scsdqtsz+8e5ynsDv5ZLOZxVMd
	I84AlEYCoKbPSJSxrYe5cjrtfubPq5SjZghwxqxXhvU7XSNIsLjPGxqpI2J3pWAkr3PCwQi2GMRct
	fXbCF4nz8I4JatHTv1btW+ass/PEEn4qE2wZ1OKPSEkj9f/JjxkE4260KkNBoMjeKoblUF474aD6G
	zgJeIiVtlhrwYPDw6niA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5lR-00000005ajc-1qUs;
	Mon, 17 Feb 2025 18:22:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5fY-00000005a1P-19sO
	for linux-rockchip@bombadil.infradead.org;
	Mon, 17 Feb 2025 18:16:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=dW0tidsgp/Ub4s++qsOhA6oRQ1/t0kgWfjgFSGuKGjs=; b=YghUxx9B3yzGs5DQdm2xkiQjLK
	q84wDeDOL0I6snJTUELmP1t+dIrLa2QsC9BT8gK/Fq2YDXTPtn7Hqe0ieUSqzdKcHUGJ9dsjQ+6uZ
	dPkfrsTW67lGxhSSLnKONVk+/XklVt6bNbW9OxKN9VmSRpN/ah6gwjh5uICrs7W2am8+tPJkXvub3
	MBtgypRRk1d2lN4qGzjrsYIWsZkqS0C7XaJDVQF9wYRCpyOJqIq8TIUUKcrEceSIvWjktVBWhrFd+
	bjuYJSonWctZXQw9PWml/ey9ON4YQl8UOhaIfp1OCll+YXSpRQYHtu0tZgZKo7dYiNYT7SjjuCIrS
	+5Gvd5og==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5fV-00000001rtM-0Vjz
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Feb 2025 18:16:35 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739816173; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ijxtj4U8Q8R7wF2cKrBvAlztwsF7BHKE9ppJN+H5P+dWjGidAuFnAINvHWu1ugpr1KKFjNOgD/BL58cpHHg++bIB3cgTGtd+138I0XmM/pVkAuBePh6asJxzZZMGGMoyhMupfIuxXSd/uLFYhu5zZvFe8thfq19iLR86rB7HSy4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739816173; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=dW0tidsgp/Ub4s++qsOhA6oRQ1/t0kgWfjgFSGuKGjs=; 
	b=VWX3H4OTkoH1XaxjU+7vO6RIlxGvOjomnJz7kotKI1KEc0niNqCmLO+6ZU3/FRYcWsEPh1MFGezrCeZCWkkI0kHDH8Ri/Dd39HFKoKhZDdiT9/iFRNqKihl3JLRPEOdW3P4yIC2RNb4XD9pLIy6+810nBWMZQZicB/G9SR0mRQQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739816173;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=dW0tidsgp/Ub4s++qsOhA6oRQ1/t0kgWfjgFSGuKGjs=;
	b=gbWOKyv05QL9Uq1RX9ObrSEFjSLUUYqJL4UkEvlwp9CkWJ0/PcKYAAYsm3/0jTeq
	QCuyxQNT+HnCsGpH5M8FTziAhyx0CZ9H4Skf6c8CzlGWVneXBUkOCtOgEHE+KW8ITKN
	vhrnDpCyr+AuRER+kPYRZehu6lb+gDzTSWXIDSmA=
Received: by mx.zohomail.com with SMTPS id 1739816172379218.1983866353495;
	Mon, 17 Feb 2025 10:16:12 -0800 (PST)
Message-ID: <6638b286-2e5e-4861-bb85-2e29556b0b02@collabora.com>
Date: Mon, 17 Feb 2025 21:16:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/6] Add Synopsys DesignWare HDMI RX Controller
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, jose.abreu@synopsys.com,
 nelson.costa@synopsys.com, shawn.wen@rock-chips.com,
 nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>
References: <20250215210417.60074-1-dmitry.osipenko@collabora.com>
 <0218c59c-ed97-4315-9306-041636462293@xs4all.nl>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <0218c59c-ed97-4315-9306-041636462293@xs4all.nl>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_181633_639547_D6F039DA 
X-CRM114-Status: GOOD (  19.58  )
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

On 2/17/25 11:34, Hans Verkuil wrote:
> Hi Dmitry,
> 
> On 15/02/2025 22:04, Dmitry Osipenko wrote:
>> This series implements support for the Synopsys DesignWare
>> HDMI RX Controller, being compliant with standard HDMI 1.4b
>> and HDMI 2.0.
>>
>> Features that are currently supported by the HDMI RX driver
>> have been tested on rock5b board using a HDMI to micro-HDMI cable.
>> It is recommended to use a good quality cable as there were
>> multiple issues seen during testing the driver.
>>
>> Please note the below information :-
>> * HDMIRX driver now only works with the opensource TF-A.
>> * We have tested the working of OBS studio with HDMIRX driver and
>> there were no issues seen.
>> * We tested and verified the support for interlaced video.
>> * We tested capturing of YUV formats.
>>
>> To test the HDMI RX Controller driver, following example commands can be used :-
>>
>> root@debian-rockchip-rock5b-rk3588:~# v4l2-ctl --verbose -d /dev/video0 \
>> --set-fmt-video=width=1920,height=1080,pixelformat='BGR3' --stream-mmap=4 \
>> --stream-skip=3 --stream-count=100 --stream-to=/home/hdmiin4k.raw --stream-poll
> 
> This looks a bit odd. This commandline should work just as well:
> 
> v4l2-ctl --stream-mmap --stream-count=100 --stream-to=/home/hdmiin4k.raw
> 
> v4l2-ctl will call QUERY_DV_TIMINGS, then (if a valid signal is found) S_DV_TIMINGS.
> That in turn updates the v4l2_format. So there is no need to set the video format,
> it should happen automatically.

Your cmdline works fine, setting format isn't necessary.

> Also, why skip the first three frames? And why select --stream-poll?
> 
> It could be that these are just left-overs from previous attempts, but it's
> weird.

It's indeed the left-overs, will edit the cover letter in v7.

> I also commented on the debugfs InfoFrame code in patch 4/6, that's not
> correct.

Thanks for the thorough review! :)

Additional note: I'm going to finish upstreaming of the driver because
Shreeya is currently busy. She will be maintaining driver afterwards.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
