Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4A48C19F2E
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 05:29:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRYG4japFs98/3oZMRcw2LXnxOuYZl2NRNoxqJ8DmQM=; b=O+GabIFIyE3v3y
	xU4Pxg8TPpB0Xe7ISuK6y8g5lPI9dnThxllavRJfEKuQVdFAdUBob2kw+z//l+HBxscaI8U3TckVk
	xs6PEsDXoDP9Xw78HH/5wd83/Cl6FhT2yMAr7HY/bpb66Ntbue5WppjXIlgI8bziALMLMHggQLTQi
	h3NQS/GJuKZuQG2LnPc0eMfdFY6e7vd/psar503OIRh7CwlHPI9XlXLBHQrZyzBT2wxDuypT9ErZw
	fPCj+gSOPKWd5MYyjGPwpOS1VCCq9xCqDZ0TT6i2wruyhpfxN7qgambYW6nsZjfAiS15EEcUN9e7P
	j0N1HdjCPigzUO7bBcCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnWS9-00000006NDz-1reh;
	Thu, 27 Feb 2025 05:28:57 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnWS7-00000006NDc-3b4x
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Feb 2025 05:28:57 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740634121; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=kGB5TYdGQHvNLua0/kmWtDME+WQqoe1SIhhD1BLc+g7QJGnfq6oxCqXKbzkZSB9u7unEbKEBp5TjEwQdwuvufo2F6vlyZ+2NNgvd37+L/V539zVaD8qwDC8VX8iqx/HYOfB8YiYLOOFb7p7WqjL2U3XENktPH+9l//vEtYnqCOQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740634121; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Sv5NOsfY30eBqvAAr70WQss2GxI0o1NVlCRr5lXEPb0=; 
	b=aA+xuVGDj1Pc5f4LEyN7NXsxtU4iPurKYzK79L0uKcXYaBXETcmfg43UDqzAIuATAXQyZifmjl+Ebh/lCzgne7PDUoydsD6vKjEE6B2yFekL5mcPklKow3zk8pJuQYVSxvNDszIYXZj593P7iikr0ho80OEjJ/0CHoUUEOohQ28=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740634121;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Sv5NOsfY30eBqvAAr70WQss2GxI0o1NVlCRr5lXEPb0=;
	b=OoBSQrhWdMjD4flBgsQDpGxHoyTxzyO1EP1O06t6ewmNWyNnYI9aJw0/6oS8ufb3
	0jOjy93lOfHvPeSUdL7+VPbRd/I1ET8TGmAim19BKDomEOfoR2eeqwEdjiR4ikkY9oY
	4T137HZffA7B6YgGMFhkMkXwNMThHX/p4FgG/KAY=
Received: by mx.zohomail.com with SMTPS id 1740634119692458.0582223925678;
	Wed, 26 Feb 2025 21:28:39 -0800 (PST)
Message-ID: <f0c3a16e-c4a2-4cd9-9afa-a21a975a45c9@collabora.com>
Date: Thu, 27 Feb 2025 08:28:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/6] media: platform: synopsys: Add support for HDMI
 input driver
To: Diederik de Haas <didi.debian@cknow.org>,
 Shreeya Patel <shreeya.patel@collabora.com>, Heiko Stuebner
 <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>
References: <20250225183058.607047-1-dmitry.osipenko@collabora.com>
 <20250225183058.607047-4-dmitry.osipenko@collabora.com>
 <D82H4F6J4V4V.2BLHVUVD3BVX9@cknow.org>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <D82H4F6J4V4V.2BLHVUVD3BVX9@cknow.org>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_212855_970300_07BAE03B 
X-CRM114-Status: GOOD (  15.39  )
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

On 2/26/25 18:14, Diederik de Haas wrote:
>> +config VIDEO_SYNOPSYS_HDMIRX_LOAD_DEFAULT_EDID
>> +	bool "Load default EDID"
>> +	depends on VIDEO_SYNOPSYS_HDMIRX
>> +	help
>> +	  Preload default EDID (Extended Display Identification Data).
> I see some value in making explicit what you mean by EDID ...
> 
>> +	  EDID contains information about the capabilities of the display,
>> +	  such as supported resolutions, refresh rates, and audio formats.
> ... I do not think a/this Kconfig needs to explain it.
> 
>> +
>> +	  Enabling this option is recommended for a non-production use-cases.
> My guess is that it could be useful for development/debugging/CI work
> which possibly do not have an actual device (monitor) which provides
> actual EDID data? Is CI work the reason why you (initially) enabled it
> in the defconfig?
> But when you have an actual monitor (=production use-case?), you
> (really) do not want it? Would it be harmless if 'still' enabled?

Disabling this option is only relevant if you're making a commercial
product using this driver. It's a quite widespread issue that HDMI
projectors utilize default EDID that comes from BSP driver they use,
while a rebrand EDID should be used. Keeping this option enabled is
harmless, but you don't want to do it in a product.

For all other use-cases you would want to enable this option, otherwise
driver won't be usable until you will load EDID from userspace.

Hans has strong opinion RE this option and wants to have it disabled by
default.

> Thus a more extensive description what this Kconfig item does and why
> and when I want to enable it or not, seems more useful to me.

Will update and expand the description with more clarification. Thanks
for suggestion.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
