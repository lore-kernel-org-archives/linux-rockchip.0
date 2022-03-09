Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6B0DC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 20:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vthh5roSL1N2biTgRRRjmJ0NwoV9kJsTHA0axYEfQpk=; b=n/MVpfEE11Qua1
	fc9Yn3wfZYt4qNHi/7a11orhnb6R7A8ZCVGTkzZqW96fjTL50F/JVfe2PHxl7/jZF6PuWMUpqhIGp
	qyF6bDxlq/WX85mhAbxmeOIL7Pemn30aCHhlXXclMZDNa5P5bWMp/IYXcqZZ3nsuBnMHnW3D6uGEB
	JiXVtpIoQBEHHZxKw/kTHBB6idCAP+EimuvYNS+AxmtYPtSVUJms0pzNqimo2ovR8S/P5ADDgEcYB
	1cy2eYWK7w/6qituTvJuNlLwOkwCaMWhUiuXK3YikWq+ivCvieGH7TyBMujUw/8xK/8lGRGiCH0Ql
	gLrT4Kfm2N9gASj76mww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nS38S-00ASDB-FC; Wed, 09 Mar 2022 20:42:16 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nS38O-00ASBh-Da; Wed, 09 Mar 2022 20:42:14 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 i205-20020a1c3bd6000000b00389d0a5c511so100164wma.5; 
 Wed, 09 Mar 2022 12:42:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:content-language:to:cc
 :references:from:subject:in-reply-to:content-transfer-encoding;
 bh=aSOCxd0O0AlSABEw2+WmMslTuNXzOT8psYUKdCBZjow=;
 b=iDcQWsrBUQBbOYpkdV/CKJL8qJq5WWMmLaX1Qzg+fJOoD2jytPJDY7x1Az2iaD1WIP
 UOXtgCvsRC8f4nVQFEO6lUFkEWq2gsgVHQ5q9RSXlcJUNj8cxEVoXBKDLazyevhQYLZq
 ce/g6buwwH7nstsQOJkuU1tk3Zl7BaLGCIEovkxHTpISFK+W4DowavUXX6bqokYAykWu
 lEDwcAOkIn22scFP/WqhKCep3FLwxOW75H5aQHsWeKbFXSvYXbg0eBK4K2/sZYn4uwi5
 h10BTo9eBedCvGMAJE4YgRvhm2efV+HnZXG+gCXZEVHiYYG1USxmldmohtySVC+pX+1F
 yYqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent
 :content-language:to:cc:references:from:subject:in-reply-to
 :content-transfer-encoding;
 bh=aSOCxd0O0AlSABEw2+WmMslTuNXzOT8psYUKdCBZjow=;
 b=4JrveKwOlCx5QWiqb/fAEXkZ5RTQIjK5u3IUQgBc35EDwwl04d+jAcRawJpl/z97Az
 UQFowzBPRHtjQF98I2cdN8CxBB1CMkzfmHElZC+geDVF3kF+BbLHS1pE/GCfR+xpWUJy
 TKMC8CuYKUF7jPdA3ti3dfbojejN30507irTWzGgul2bxPQFJQTmRf9+xPxYDnx++tdX
 OJ2OfCs9NDuaqzMAuwpz7GY/afjCHEID8RpX88mFkYznQTkdNoDaoC7+4dovlb1qNOZA
 bNJjeb7TCSF23IqxxEsh/kzlL5HEu6469s5VYolZT++T+P0oHvbc2HQnnYiYtxQRqfIX
 H3ug==
X-Gm-Message-State: AOAM530nwELK01CdN1GTH7SMEL+OItrZPIIHiDbK29G8CVsvvzwwehu5
 RXsym6buMQNYsRzHTPsfboM=
X-Google-Smtp-Source: ABdhPJyOGhORUyM5EXeW2PmVMEuYS8h2EGD1SJyFy4GGHmjvmuDHXyH+wyKl36U7mJjN9GdoJ0W6CA==
X-Received: by 2002:a7b:c114:0:b0:381:f7ee:e263 with SMTP id
 w20-20020a7bc114000000b00381f7eee263mr9091536wmi.30.1646858530342; 
 Wed, 09 Mar 2022 12:42:10 -0800 (PST)
Received: from ?IPV6:2a01:c22:7793:600:9d6a:7788:3389:da6c?
 (dynamic-2a01-0c22-7793-0600-9d6a-7788-3389-da6c.c22.pool.telefonica.de.
 [2a01:c22:7793:600:9d6a:7788:3389:da6c])
 by smtp.googlemail.com with ESMTPSA id
 j15-20020a05600c410f00b00389d35f7624sm2351990wmi.0.2022.03.09.12.42.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Mar 2022 12:42:09 -0800 (PST)
Message-ID: <44006194-eab1-7ae2-3cc8-41c210efd0b1@gmail.com>
Date: Wed, 9 Mar 2022 21:42:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Jerome Brunet <jbrunet@baylibre.com>, Erico Nunes <nunes.erico@gmail.com>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-amlogic@lists.infradead.org,
 netdev@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-sunxi@lists.linux.dev
References: <CAK4VdL3-BEBzgVXTMejrAmDjOorvoGDBZ14UFrDrKxVEMD2Zjg@mail.gmail.com>
 <1jczjzt05k.fsf@starbuckisacylon.baylibre.com>
 <CAK4VdL2=1ibpzMRJ97m02AiGD7_sN++F3SCKn6MyKRZX_nhm=g@mail.gmail.com>
 <6b04d864-7642-3f0a-aac0-a3db84e541af@gmail.com>
 <CAK4VdL0gpz_55aYo6pt+8h14FHxaBmo5kNookzua9+0w+E4JcA@mail.gmail.com>
 <1e828df4-7c5d-01af-cc49-3ef9de2cf6de@gmail.com>
 <1j8rts76te.fsf@starbuckisacylon.baylibre.com>
 <a4d3fef1-d410-c029-cdff-4d90f578e2da@gmail.com>
 <CAK4VdL08sdZV7o7Bw=cutdmoCEi1NYB-yisstLqRuH7QcHOHvA@mail.gmail.com>
 <435b2a9d-c3c6-a162-331f-9f47f69be5ac@gmail.com>
 <CAK4VdL28nWstiS09MYq5nbtiL+aMbNc=Hzv5F0-VMuNKmX9R+Q@mail.gmail.com>
 <1j5yonnp1a.fsf@starbuckisacylon.baylibre.com>
From: Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: net: stmmac: dwmac-meson8b: interface sometimes does not come up
 at boot
In-Reply-To: <1j5yonnp1a.fsf@starbuckisacylon.baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_124212_511288_8F6F42C2 
X-CRM114-Status: GOOD (  27.53  )
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

On 09.03.2022 15:57, Jerome Brunet wrote:
> 
> On Wed 09 Mar 2022 at 15:45, Erico Nunes <nunes.erico@gmail.com> wrote:
> 
>> On Sun, Mar 6, 2022 at 1:56 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>> You could try the following (quick and dirty) test patch that fully mimics
>>> the vendor driver as found here:
>>> https://github.com/khadas/linux/blob/buildroot-aml-4.9/drivers/amlogic/ethernet/phy/amlogic.c
>>>
>>> First apply
>>> https://git.kernel.org/pub/scm/linux/kernel/git/netdev/net.git/commit/?id=a502a8f04097e038c3daa16c5202a9538116d563
>>> This patch is in the net tree currently and should show up in linux-next
>>> beginning of the week.
>>>
>>> On top please apply the following (it includes the test patch your working with).
>>
>> I triggered test jobs with this configuration (latest mainline +
>> a502a8f0409 + test patch for vendor driver behaviour), and the results
>> are pretty much the same as with the previous test patch from this
>> thread only.
>> That is, I never got the issue with non-functional link up anymore,
>> but I get the (rare) issue with link not going up.
>> The reproducibility is still extremely low, in the >1% range.
> 
> Low reproducibility means the problem is still there, or at least not
> understood completly.
> 
> I understand the benefit from the user standpoint.
> 
> Heiner if you are going to continue from the test patch you sent,
> I would welcome some explanation with each of the changes.
> 
The latest test patch was purely for checking whether we see any
difference in behavior between vendor driver and the mainlined
version. It's in no way meant to be applied to mainline.

> We know very little about this IP and I'm not very confortable with
> tweaking/aligning with AML sdk "blindly" on a driver that has otherwise
> been working well so far.
> 

This touches one thing I wanted to ask anyway: Supposedly Amlogic
didn't develop an own Ethernet PHY, and if they licensed an existing
IP then it should be similar to some other existing PHY (that may
have a driver in phylib).

Then what I'll do is submit the following small change that brought
the error rate significantly down according to Erico's tests.

-       phy_trigger_machine(phydev);
+       if (irq_status & INTSRC_ANEG_COMPLETE)
+               phy_queue_state_machine(phydev, msecs_to_jiffies(100));
+       else
+               phy_trigger_machine(phydev);


> Thx
> 
>>
>> So at this point, I'm not sure how much more effort to invest into
>> this. Given the rate is very low and the fallback is it will just
>> reset the link and proceed to work, I think the situation would
>> already be much better with the solution from that test patch being
>> merged. If you propose that as a patch separately, I'm happy to test
>> the final submitted patch again and provide feedback there. Or if
>> there is another solution to try, I can try with that too.
>>
>> Thanks
>>
>>
>> Erico
> 

Heiner

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
