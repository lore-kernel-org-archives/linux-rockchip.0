Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E565C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Apr 2022 20:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SZ5oJcMGMwPDxHvReZ/8GX9TvJnot0nCtQlscFgFCPY=; b=XNcbcF5q3hqcmS
	UTwcZnslo4quUKclA5YDLnMRTTh77R8m9Z/NWvzfgK0TymNcAoLZQKBNnBTgeBzS+GPx4FT/npiF/
	1R1HBg5IYd4keKd4t/8UsF+w7DentXC2b8/AxxmhruSfX3NoqAj3LKrKM+01PF0kbDmLlODzId0wj
	IxIWwKEBmVD5Qe8SdxkOC48vklIb7N+PzXVnknylRJ9CjSLM3tbXoeiJVZgJANC4ETNOEyIe2cToC
	H/+f5MNswKMeli9leK5vH65RkpxNIShS7GNhgSabUWlHHiHbCWC4X+Kd8H0V5iqsxs/vJAa83ePaL
	QR6o/WbxBWARtsMFzPJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nktZ5-00F28k-Fb; Sat, 30 Apr 2022 20:19:39 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nktZ2-00F28C-OX
 for linux-rockchip@lists.infradead.org; Sat, 30 Apr 2022 20:19:38 +0000
Received: by mail-ej1-x634.google.com with SMTP id n10so3861024ejk.5
 for <linux-rockchip@lists.infradead.org>; Sat, 30 Apr 2022 13:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:cc
 :references:from:subject:in-reply-to:content-transfer-encoding;
 bh=POF+6d8762FMOUGJIUlV1M6qmWu0Pr8vnEd2cruJn/Q=;
 b=GguguRy2ohBkyOzRgJXUL5P1WS54HQv7SPDnAuU7MEYfgc73wwidWcB5/eCDb/o6qN
 RK12GmeHg9/VmD61o9af2NbQ9uApw9HDDRPRLLjnHlku63WdF6wo5YZ3+nS8sUEbaKzp
 gwbn0LuvD7IrUoboyREiqHJxwTvSFuyqDWFxDM1AL3PILyrtXXKPOUANo9R48aPRwnfD
 LBnNNTm1vKERAJTVJJSxc4w1M5l/pom72Bzfb13uLsz/FA667wgnnI3N5RtPhuf6NTnk
 hsb7Mqfbonu6IQri7w05qGQFVDZxszD+9MgW7ANf4flb1fSFYbIEWB4IjQsoL4O65c7p
 Ov/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:references:from:subject:in-reply-to
 :content-transfer-encoding;
 bh=POF+6d8762FMOUGJIUlV1M6qmWu0Pr8vnEd2cruJn/Q=;
 b=AnUi3vzjbsJlStkD1joPUzh4eRHqDmeFsXWwqbuAKE5ePeTUSiUJ6/S1ARltCHvQje
 9uZQ7wlcmyfFQ6EXqhMpGadoDR/8N3t/YA5d2cz71wLSbTINOgjSeIaPEUi2+2tGl3zS
 wJcijtkaT9rKRfNrP1UJQwe+Lq6H1A4keaSmwrPX8HfyIQUwae4FAs38EIFIFmMEJieM
 vDzBmXU18JeQIGfgLPjHKffUye6uj9jP/Coh6eBcI0RaPMikve8PloN9GuKHzS8WYUux
 gN39rGsgbV633ppEIUi8YD3McNzRMkWl4d8oAqBeAnOTdayWsSvaPA7j/IKyQ+VPhEo6
 atng==
X-Gm-Message-State: AOAM533Bx1fS4Js5K1N3DBtN4RKpjpEQ4+27Uh6MAhKtXwIZzUIT3xgo
 eQ78P66RyHCje7nI7fQjMME0J6Lv1Ew=
X-Google-Smtp-Source: ABdhPJzvyvxchjnijiU3tXHOtd78aybClSnMqXpfP33YYcQnledJ3xLrAykgTzMo+dqTSywxOtIW9g==
X-Received: by 2002:a17:907:1b10:b0:6e4:bac5:f080 with SMTP id
 mp16-20020a1709071b1000b006e4bac5f080mr5052303ejc.24.1651349972319; 
 Sat, 30 Apr 2022 13:19:32 -0700 (PDT)
Received: from ?IPV6:2a01:c22:6f21:fd00:3167:a16c:5aa:91c3?
 (dynamic-2a01-0c22-6f21-fd00-3167-a16c-05aa-91c3.c22.pool.telefonica.de.
 [2a01:c22:6f21:fd00:3167:a16c:5aa:91c3])
 by smtp.googlemail.com with ESMTPSA id
 hg8-20020a1709072cc800b006f3ef214db1sm1904785ejc.23.2022.04.30.13.19.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 30 Apr 2022 13:19:31 -0700 (PDT)
Message-ID: <f68dfd23-ae83-e4d9-cb08-51a097bac06b@gmail.com>
Date: Sat, 30 Apr 2022 22:19:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, Andrew Lunn <andrew@lunn.ch>
Cc: "Russell King (Oracle)" <linux@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220228233057.1140817-1-pgwipeout@gmail.com>
 <Yh1lboz7VDiuYuZV@shell.armlinux.org.uk>
 <CAMdYzYrNvUUMom4W4uD9yf9LtFK1h5Xw+9GYc54hB5+iqVmJtw@mail.gmail.com>
 <CAMdYzYrFuMw4aj_9L698ZhL7Xqy8=NeXhy9HDz4ug-v3=f4fpw@mail.gmail.com>
 <Ym1bWHNj0p6L9lY8@lunn.ch>
 <CAMdYzYq41TndbJK-=ah31=vECisgRbPmtFYwOLQQ7yn4L=JVYw@mail.gmail.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [PATCH v1] net: phy: fix motorcomm module automatic loading
In-Reply-To: <CAMdYzYq41TndbJK-=ah31=vECisgRbPmtFYwOLQQ7yn4L=JVYw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_131936_868577_22772D92 
X-CRM114-Status: GOOD (  29.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 30.04.2022 18:31, Peter Geis wrote:
> On Sat, Apr 30, 2022 at 11:52 AM Andrew Lunn <andrew@lunn.ch> wrote:
>>
>>> Good Morning,
>>>
>>> After testing various configurations I found what is actually
>>> happening here. When libphy is built in but the phy drivers are
>>> modules and not available in the initrd, the generic phy driver binds
>>> here. This allows the phy to come up but it is not functional.
>>
>> What MAC are you using?
> 
> Specifically Motorcomm, but I've discovered it can happen with any of
> the phy drivers with the right kconfig.
> 
>>
>> Why is you interface being brought up by the initramfs? Are you using
>> NFS root from within the initramfs?
> 
> This was discovered with embedded programming. It's common to have a
> small initramfs, or forgo an initramfs altogether. Another cause is a
> mismatch in kernel config where phylib is built in because of a
> dependency, but the rest of the phy drivers are modular.
> The key is:
> - phylib is built in
> - ethernet driver is built in
> - the phy driver is a module
> - modules aren't available at probe time (for any reason).
> 
> In this case phylib assumes there is no driver, when the vast majority
> of phys now have device specific drivers.It seems this is an unsafe
> assumption as this means there is now an implicit dependency of the
> device specific phy drivers and phylib. It just so happens to work
> simply because both broadcom and realtek, some of the more common
> phys, have explicit dependencies elsewhere that cause them to be built
> in as well.
> 
Because you mention the realtek phy driver:
Users reported similar issues like you if r8169 MAC driver is built-in
(or r8169 module is in initramfs) but realtek phy driver is not.
There's no direct code dependency between r8169 and realtek phy driver,
therefore initramfs-creating tools sometimes missed to automatically
include the phy driver in initramfs. To mitigate this r8169 has the following:
MODULE_SOFTDEP("pre: realtek");
This isn't strictly needed but some initramfs-creating tools consider
such soft dependencies when checking what should be included in initramfs.
If some other MAC is used with a Realtek PHY, then you may still see the
described issue.
As Andrew wrote: Eventually it's a userspace responsibility to ensure that
all needed modules are included in initramfs.

>>>> What normally happens is that the kernel loads, maybe with the MAC
>> driver and phylib loading, as part of the initramfs. The other modules
>> in the initramfs allow the root filesystem to be found, mounted, and
>> pivoted into it. The MAC driver is then brought up by the initscripts,
>> which causes phylib to request the needed PHY driver modules, it loads
>> and all is good.
>>
>> If you are using NFS root, then the load of the PHY driver happens
>> earlier, inside the initramfs. If this is you situation, maybe the
>> correct fix is to teach the initramfs tools to include the PHY drivers
>> when NFS root is being used?
>>
>>      Andrew


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
